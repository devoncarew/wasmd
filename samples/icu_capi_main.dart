// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:wasmd/runtime.dart';

import 'icu_capi.dart';

const _diplomatSize = 100;

// Some example API usage at
// https://github.com/unicode-org/icu4x/blob/main/ffi/diplomat/js/include/ICU4XLocale.js.

// Or, //ffi/tinywasm/tiny.mjs.

void main(List<String> args) {
  var imports = EnvImportsImpl();
  var icu = IcuCapiModule(envImports: imports);
  imports.memory = icu.memory;

  var timer = Stopwatch()..start();

  // init
  icu.icu4x_init();

  // todo: call more methods
  icu.diplomat_init();

  // diplomat_alloc(size, align)

  var en_usStr = stringPtr(icu, 'en_US');
  print('en_us str ptr: $en_usStr');

  var receivePtr = icu.diplomat_alloc(_diplomatSize, 4);
  print('receive ptr  : $receivePtr');

  // ICU4XLocale_create_from_string(receiveBuffer, namePtr, nameLen);
  icu.ICU4XLocale_create_from_string(receivePtr, en_usStr, 'en_US'.length);

  // void ICU4XLocale_destroy(i32 arg0) {

  // diplomat_free(ptr, size, align)
  icu.diplomat_free(receivePtr, _diplomatSize, 4);

  print('${timer.elapsedMilliseconds}ms');
}

// DiplomatWriteable diplomat_simple_writeable(char* buf, size_t buf_size);

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
