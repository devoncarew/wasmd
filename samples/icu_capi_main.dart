// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

import 'icu_capi.dart';

// Some example API usage at:
// - https://github.com/unicode-org/icu4x/blob/main/ffi/diplomat/js/include/ICU4XLocale.js.
// - https://github.com/unicode-org/icu4x/blob/main/ffi/tinywasm/tiny.mjs.

void main(List<String> args) {
  var imports = EnvImportsImpl();
  var icu = IcuCapiModule(envImports: imports);
  imports.memory = icu.memory;

  var timer = Stopwatch()..start();

  icu.icu4x_init();

  icu.diplomat_init();

  var receiveBuf = DiplomatReceiveBuffer(icu);
  var str = DiplomatString(icu, 'bn'); // bn, en_US

  print('ICU4XLocale_create_from_string:');
  icu.ICU4XLocale_create_from_string(receiveBuf.ptr, str.ptr, str.length);
  if (!receiveBuf.resultOk) {
    throw 'error from ICU4XLocale_create_from_string';
  }
  var locale = receiveBuf.resultPtr;
  print('  locale: ${hex(locale)}');

  var dataFile = File('samples/icu4x_data.postcard');

  print('ICU4XDataProvider_create_from_byte_slice:');
  var dataLength = dataFile.lengthSync();
  var dataBuffer = icu.diplomat_alloc(dataLength, 4);
  _copyBytes(icu, dataFile.readAsBytesSync(), dataBuffer);
  icu.ICU4XDataProvider_create_from_byte_slice(
      receiveBuf.ptr, dataBuffer, dataLength);
  if (!receiveBuf.resultOk) throw receiveBuf.errorMessage;
  var dataProvider = receiveBuf.resultPtr;
  print('  dataProvider: ${hex(dataProvider)}');

  var writeable = DiplomatWriteable(icu);

  print('ICU4XLocale_basename:');
  icu.ICU4XLocale_basename(receiveBuf.ptr, locale, writeable.ptr);
  if (!receiveBuf.resultOk) throw receiveBuf.errorMessage;

  var result = writeable.str;
  print('  ${string(result)}');
  writeable.dispose();

  print('ICU4XFixedDecimalFormatter_create_with_grouping_strategy:');
  icu.ICU4XFixedDecimalFormatter_create_with_grouping_strategy(
      receiveBuf.ptr, dataProvider, locale, 0);
  if (!receiveBuf.resultOk) throw receiveBuf.errorMessage;
  var formatter = receiveBuf.resultPtr;
  print('  formatter: ${hex(formatter)}');

  print('ICU4XFixedDecimal_create_from_i32:');
  var decimalPtr = icu.ICU4XFixedDecimal_create_from_i32(1000007);
  print('  decimalPtr: ${hex(decimalPtr)}');
  icu.ICU4XFixedDecimal_multiply_pow10(decimalPtr, -2);

  print('ICU4XFixedDecimalFormatter_format:');
  writeable = DiplomatWriteable(icu);
  icu.ICU4XFixedDecimalFormatter_format(
      receiveBuf.ptr, formatter, decimalPtr, writeable.ptr);
  if (!receiveBuf.resultOk) throw receiveBuf.errorMessage;

  print('  ${string(writeable.str)}"');
  writeable.dispose();

  icu.ICU4XFixedDecimalFormatter_destroy(formatter);

  icu.ICU4XLocale_destroy(locale);

  receiveBuf.dispose();

  print('');
  print('(${timer.elapsedMilliseconds}ms)');
}

class EnvImportsImpl implements EnvImports {
  late final Memory memory;

  @override
  void log_js(i32 ptr, i32 len) {
    var str = memory.getUtf8(ptr, len);
    print(str);
  }

  @override
  void warn_js(i32 ptr, i32 len) {
    var str = memory.getUtf8(ptr, len);
    print('warn: $str');
  }
}

int stringPtr(IcuCapiModule icu, String str) {
  var bytes = utf8.encode(str);
  var ptr = icu.diplomat_alloc(bytes.length + 1, 4);
  for (int i = 0; i < bytes.length; i++) {
    icu.memory.data.setUint8(ptr + i, bytes[i]);
  }
  icu.memory.data.setUint8(ptr + bytes.length, 0);
  return ptr;
}

class DiplomatString {
  final IcuCapiModule icu;

  late final int ptr;
  late final int length;

  DiplomatString(this.icu, String str) {
    var bytes = utf8.encode(str);
    length = bytes.length;

    ptr = icu.diplomat_alloc(bytes.length + 1, 4);
    for (int i = 0; i < length; i++) {
      icu.memory.data.setUint8(ptr + i, bytes[i]);
    }
    icu.memory.data.setUint8(ptr + length, 0);
  }

  void dispose() {
    icu.diplomat_free(ptr, length + 1, 4);
  }
}

void _copyBytes(IcuCapiModule icu, Uint8List bytes, i32 ptr) {
  icu.memory.copyFrom(bytes, 0, ptr, bytes.length);
}

class DiplomatReceiveBuffer {
  static const int _allocSize = 5;

  final IcuCapiModule icu;

  late final int ptr;

  DiplomatReceiveBuffer(this.icu) {
    // diplomat_alloc(size, align)
    ptr = icu.diplomat_alloc(_allocSize, 4);
  }

  bool get resultOk => resultFlag == 1;

  /// Get the flag of a result type.
  int get resultFlag => icu.memory.data.getInt8(ptr + 4);

  /// Get the pointer returned by an FFI function.
  int get resultPtr => icu.memory.data.getUint32(ptr, Endian.little);

  /// often an error code
  int get enumDiscriminant => icu.memory.data.getUint32(ptr, Endian.little);

  String get errorMessage {
    var val = enumDiscriminant;
    var result = ICU4XError_rust_to_message[enumDiscriminant];
    return result != null ? '$result ($val)' : 'unknown error ($val)';
  }

  void dispose() {
    // diplomat_free(ptr, size, align)
    icu.diplomat_free(ptr, _allocSize, 4);
  }
}

class DiplomatWriteable {
  final IcuCapiModule icu;

  late final int ptr;

  DiplomatWriteable(this.icu) {
    ptr = icu.diplomat_buffer_writeable_create(0);
  }

  String get str {
    var strPtr = icu.diplomat_buffer_writeable_get_bytes(ptr);
    var strLen = icu.diplomat_buffer_writeable_len(ptr);
    return icu.memory.getUtf8(strPtr, strLen);
  }

  void dispose() {
    icu.diplomat_buffer_writeable_destroy(ptr);
  }
}

String hex(int val) => '0x${val.toRadixString(16)}';
String string(String val) => '"$val"';

const Map<int, String> ICU4XError_rust_to_message = {
  0: 'UnknownError',
  1: 'WriteableError',
  2: 'OutOfBoundsError',
  256: 'DataMissingDataKeyError',
  257: 'DataMissingVariantError',
  258: 'DataMissingLocaleError',
  259: 'DataNeedsVariantError',
  260: 'DataNeedsLocaleError',
  261: 'DataExtraneousLocaleError',
  262: 'DataFilteredResourceError',
  263: 'DataMismatchedTypeError',
  264: 'DataMissingPayloadError',
  265: 'DataInvalidStateError',
  266: 'DataCustomError',
  267: 'DataIoError',
  268: 'DataUnavailableBufferFormatError',
  269: 'DataMismatchedAnyBufferError',
  512: 'LocaleUndefinedSubtagError',
  513: 'LocaleParserLanguageError',
  514: 'LocaleParserSubtagError',
  515: 'LocaleParserExtensionError',
  768: 'DataStructValidityError',
  1024: 'PropertyUnknownScriptIdError',
  1025: 'PropertyUnknownGeneralCategoryGroupError',
  1280: 'FixedDecimalLimitError',
  1281: 'FixedDecimalSyntaxError',
  1536: 'PluralsParserError',
  1792: 'CalendarParseError',
  1793: 'CalendarOverflowError',
  1794: 'CalendarUnderflowError',
  1795: 'CalendarOutOfRangeError',
  1796: 'CalendarUnknownEraError',
  1797: 'CalendarUnknownMonthCodeError',
  1798: 'CalendarMissingInputError',
  1799: 'CalendarUnknownKindError',
  1800: 'CalendarMissingError',
  2048: 'DateTimePatternError',
  2049: 'DateTimeMissingInputFieldError',
  2050: 'DateTimeSkeletonError',
  2051: 'DateTimeUnsupportedFieldError',
  2052: 'DateTimeUnsupportedOptionsError',
  2053: 'DateTimeMissingWeekdaySymbolError',
  2054: 'DateTimeMissingMonthSymbolError',
  2055: 'DateTimeFixedDecimalError',
  2056: 'DateTimeMismatchedCalendarError',
  2304: 'TinyStrTooLargeError',
  2305: 'TinyStrContainsNullError',
  2306: 'TinyStrNonAsciiError',
  2560: 'TimeZoneOffsetOutOfBoundsError',
  2561: 'TimeZoneInvalidOffsetError',
  2562: 'TimeZoneMissingInputError',
  2816: 'NormalizerFutureExtensionError',
  2817: 'NormalizerValidationError',
};
