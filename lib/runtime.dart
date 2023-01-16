// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'dart:typed_data';

export 'runtime_frame.dart' show Frame;

// typedefs

typedef i32 = int;
typedef i64 = int;
typedef u32 = int;
typedef u64 = int;
typedef f32 = double;
typedef f64 = double;

typedef FuncRef = Function;
typedef ExternRef = Function;
typedef RefType = Function;

// runtime support

const int _mask32 = 0xFFFFFFFF;

class Memory {
  static const defaultMaxSize = 64 * 1024;
  static const pageSize = 64 * 1024;

  final int initialPageSize;
  final int? maxPageSize;

  ByteData data;

  // TODO: guard against large initial page sizes

  Memory(this.initialPageSize, [this.maxPageSize])
      : data = ByteData(initialPageSize * pageSize);

  // Utility methods.

  Uint8List getBytes(int offset, int length) {
    return data.buffer.asUint8List(offset, length);
  }

  String getUtf8(int offset, int length) {
    var bytes = data.buffer.asUint8List(offset, length);
    return utf8.decode(bytes);
  }

  /// Return the current size of the memory, in pages.
  int get size => data.buffer.lengthInBytes ~/ pageSize;

  int grow(int growPages) {
    var oldSize = size;

    // TODO: guard against large values for maxPageSize

    if (oldSize + growPages > (maxPageSize ?? defaultMaxSize)) {
      return -1;
    }

    // TODO: find a faster way to do this
    var newData = ByteData((oldSize + growPages) * pageSize);
    int len = data.buffer.lengthInBytes;
    for (int i = 0; i < len; i++) {
      newData.setUint8(i, data.getUint8(i));
    }
    data = newData;

    return oldSize;
  }

  void copyFrom(Uint8List bytes, int sourceOffset, int destOffset, int length) {
    if (sourceOffset < 0 || sourceOffset + length > bytes.length) {
      throw Trap('out of bounds memory access');
    }

    if (destOffset < 0 || destOffset + length > data.lengthInBytes) {
      throw Trap('out of bounds memory access');
    }

    if (length < 0) {
      throw Trap('out of bounds memory access');
    }

    for (int i = 0; i < length; i++) {
      data.setUint8(destOffset + i, bytes[sourceOffset + i]);
    }
  }

  void copy(i32 count, i32 sourceOffset, i32 destOffset) {
    var len = data.lengthInBytes;
    if (sourceOffset + count > len || destOffset + count > len) {
      throw Trap('out of bounds memory access');
    }

    if (sourceOffset > destOffset) {
      for (int i = 0; i < count; i++) {
        data.setUint8(destOffset + i, data.getUint8(sourceOffset + i));
      }
    } else {
      for (int i = count - 1; i >= 0; i--) {
        data.setUint8(destOffset + i, data.getUint8(sourceOffset + i));
      }
    }
  }

  void fill(i32 value, i32 offset, i32 count) {
    if (offset < 0 || count < 0 || offset + count > data.lengthInBytes) {
      throw Trap('out of bounds memory access');
    }

    for (int i = 0; i < count; i++) {
      data.setUint8(i + offset, value);
    }
  }
}

class Trap implements Exception {
  final String message;

  Trap(this.message);

  @override
  String toString() => message;
}

T assertCallable<T>(Function? func) {
  if (func == null) throw Trap('uninitialized element');
  if (func is! T) throw Trap('indirect call type mismatch');
  return func as T;
}

class Table {
  final int minSize;
  final int? maxSize;

  List<Function?> funcRefs = [];

  Table(this.minSize, [this.maxSize])
      : funcRefs = List.filled(minSize, null, growable: true);

  int get size => funcRefs.length;

  Function? operator [](int index) {
    try {
      return funcRefs[index];
    } on RangeError {
      throw Trap('out of bounds table access');
    }
  }

  void operator []=(int index, Function? value) {
    try {
      funcRefs[index] = value;
    } on RangeError {
      throw Trap('out of bounds table access');
    }
  }

  void copyFrom(List<Function> funcIndexes, int offset, int count) {
    if (count > funcIndexes.length || offset + count > funcRefs.length) {
      throw Trap('out of bounds table access');
    }

    for (int i = 0; i < count; i++) {
      funcRefs[offset + i] = funcIndexes[i];
    }
  }

  void copyTo(Table dest, int sourceOffset, int destOffset, int count) {
    if (sourceOffset < 0 || destOffset < 0 || count < 0) {
      throw Trap('out of bounds table access');
    }

    if (sourceOffset + count > funcRefs.length ||
        destOffset + count > dest.funcRefs.length) {
      throw Trap('out of bounds table access');
    }

    if (sourceOffset > destOffset) {
      for (int i = 0; i < count; i++) {
        dest.funcRefs[destOffset + i] = funcRefs[sourceOffset + i];
      }
    } else {
      for (int i = count - 1; i >= 0; i--) {
        dest.funcRefs[destOffset + i] = funcRefs[sourceOffset + i];
      }
    }
  }

  void fill(Function? val, i32 offset, i32 count) {
    if (offset < 0 || (offset + count > funcRefs.length)) {
      throw Trap('out of bounds table access');
    }

    for (int i = 0; i < count; i++) {
      funcRefs[offset + i] = val;
    }
  }

  bool grow(int growBy, Function? fillRef) {
    var newSize = funcRefs.length + growBy;
    if (growBy < 0 || newSize > (maxSize ?? _mask32)) {
      return false;
    }

    funcRefs.length = newSize;
    for (int i = 0; i < growBy; i++) {
      funcRefs[newSize - i - 1] = fillRef;
    }

    return true;
  }
}

abstract class Module {
  Memory get memory;
  List<Table> get tables;
  AbstractDataSegments get dataSegments => _EmptyDataSegments();
  AbstractElementSegments get elementSegments => _EmptyElementSegments();
}

abstract class AbstractElementSegments {
  List<Function> get functionTable;

  List<List<int>?> get segments;

  void copyTo(
    Table table,
    int sourceOffset,
    int destOffset,
    int count,
    List<int> functionIndexes,
  ) {
    try {
      functionIndexes =
          functionIndexes.sublist(sourceOffset, sourceOffset + count);
    } on RangeError {
      throw Trap('out of bounds table access');
    }
    var functions = functionIndexes.map((i) => functionTable[i]).toList();
    table.copyFrom(functions, destOffset, count);
  }
}

class _EmptyElementSegments extends AbstractElementSegments {
  @override
  final List<Function> functionTable = [];

  @override
  final List<List<int>?> segments = [];
}

abstract class AbstractDataSegments {
  List<Uint8List> get data;
}

class _EmptyDataSegments extends AbstractDataSegments {
  @override
  final List<Uint8List> data = [];
}

// TODO: convert this over to use patterns

class Tuple2<T0, T1> {
  final T0 t0;
  final T1 t1;

  Tuple2(this.t0, this.t1);

  factory Tuple2.from(List<Object?> stack) {
    var t1 = stack.removeLast() as T1;
    var t0 = stack.removeLast() as T0;
    return Tuple2(t0, t1);
  }

  void pushTo(List<Object?> stack) {
    stack.add(t0);
    stack.add(t1);
  }

  @override
  bool operator ==(Object other) {
    if (other is! Tuple2) return false;

    return t0 == other.t0 && t1 == other.t1;
  }

  @override
  int get hashCode => Object.hash(t0, t1);

  @override
  String toString() => 'Tuple2($t0, $t1)';
}

class Tuple3<T0, T1, T2> {
  final T0 t0;
  final T1 t1;
  final T2 t2;

  Tuple3(this.t0, this.t1, this.t2);

  factory Tuple3.from(List<Object?> stack) {
    var t2 = stack.removeLast() as T2;
    var t1 = stack.removeLast() as T1;
    var t0 = stack.removeLast() as T0;
    return Tuple3(t0, t1, t2);
  }

  void pushTo(List<Object?> stack) {
    stack.add(t0);
    stack.add(t1);
    stack.add(t2);
  }

  @override
  bool operator ==(Object other) {
    if (other is! Tuple3) return false;

    return t0 == other.t0 && t1 == other.t1 && t2 == other.t2;
  }

  @override
  int get hashCode => Object.hash(t0, t1, t2);

  @override
  String toString() => 'Tuple3($t0, $t1, $t2)';
}

class Tuple4<T0, T1, T2, T3> {
  final T0 t0;
  final T1 t1;
  final T2 t2;
  final T3 t3;

  Tuple4(this.t0, this.t1, this.t2, this.t3);

  factory Tuple4.from(List<Object?> stack) {
    var t3 = stack.removeLast() as T3;
    var t2 = stack.removeLast() as T2;
    var t1 = stack.removeLast() as T1;
    var t0 = stack.removeLast() as T0;
    return Tuple4(t0, t1, t2, t3);
  }

  void pushTo(List<Object?> stack) {
    stack.add(t0);
    stack.add(t1);
    stack.add(t2);
    stack.add(t3);
  }

  @override
  bool operator ==(Object other) {
    if (other is! Tuple4) return false;

    return t0 == other.t0 && t1 == other.t1 && t2 == other.t2 && t3 == other.t3;
  }

  @override
  int get hashCode => Object.hash(t0, t1, t2, t3);

  @override
  String toString() => 'Tuple4($t0, $t1, $t2, $t3)';
}

class Tuple5<T0, T1, T2, T3, T4> {
  final T0 t0;
  final T1 t1;
  final T2 t2;
  final T3 t3;
  final T4 t4;

  Tuple5(this.t0, this.t1, this.t2, this.t3, this.t4);

  factory Tuple5.from(List<Object?> stack) {
    var t4 = stack.removeLast() as T4;
    var t3 = stack.removeLast() as T3;
    var t2 = stack.removeLast() as T2;
    var t1 = stack.removeLast() as T1;
    var t0 = stack.removeLast() as T0;
    return Tuple5(t0, t1, t2, t3, t4);
  }

  void pushTo(List<Object?> stack) {
    stack.add(t0);
    stack.add(t1);
    stack.add(t2);
    stack.add(t3);
    stack.add(t4);
  }

  @override
  bool operator ==(Object other) {
    if (other is! Tuple5) return false;

    return t0 == other.t0 &&
        t1 == other.t1 &&
        t2 == other.t2 &&
        t3 == other.t3 &&
        t4 == other.t4;
  }

  @override
  int get hashCode => Object.hash(t0, t1, t2, t3, t4);

  @override
  String toString() => 'Tuple5($t0, $t1, $t2, $t3, $t4)';
}

// TODO: Remove our use of a stub module.
final Module stubModule = _StubModule();

class _StubModule implements Module {
  @override
  final Memory memory = Memory(0);

  @override
  final List<Table> tables = [];

  @override
  final AbstractDataSegments dataSegments = _EmptyDataSegments();

  @override
  final AbstractElementSegments elementSegments = _EmptyElementSegments();
}

Uint8List decodeDataLiteral(String value) {
  return Uint8List.fromList(value.codeUnits);
}

const List<int> popcntTable = <int>[
  0, 1, 1, 2, // 00000000, 00000001, 00000010, 00000011
  1, 2, 2, 3, // 00000100, 00000101, 00000110, 00000111
  1, 2, 2, 3, // 00001000, 00001001, 00001010, 00001011
  2, 3, 3, 4, // 00001100, 00001101, 00001110, 00001111
  1, 2, 2, 3, // 00010000, 00010001, 00010010, 00010011
  2, 3, 3, 4, // 00010100, 00010101, 00010110, 00010111
  2, 3, 3, 4, // 00011000, 00011001, 00011010, 00011011
  3, 4, 4, 5, // 00011100, 00011101, 00011110, 00011111
  1, 2, 2, 3, // 00100000, 00100001, 00100010, 00100011
  2, 3, 3, 4, // 00100100, 00100101, 00100110, 00100111
  2, 3, 3, 4, // 00101000, 00101001, 00101010, 00101011
  3, 4, 4, 5, // 00101100, 00101101, 00101110, 00101111
  2, 3, 3, 4, // 00110000, 00110001, 00110010, 00110011
  3, 4, 4, 5, // 00110100, 00110101, 00110110, 00110111
  3, 4, 4, 5, // 00111000, 00111001, 00111010, 00111011
  4, 5, 5, 6, // 00111100, 00111101, 00111110, 00111111
  1, 2, 2, 3, // 01000000, 01000001, 01000010, 01000011
  2, 3, 3, 4, // 01000100, 01000101, 01000110, 01000111
  2, 3, 3, 4, // 01001000, 01001001, 01001010, 01001011
  3, 4, 4, 5, // 01001100, 01001101, 01001110, 01001111
  2, 3, 3, 4, // 01010000, 01010001, 01010010, 01010011
  3, 4, 4, 5, // 01010100, 01010101, 01010110, 01010111
  3, 4, 4, 5, // 01011000, 01011001, 01011010, 01011011
  4, 5, 5, 6, // 01011100, 01011101, 01011110, 01011111
  2, 3, 3, 4, // 01100000, 01100001, 01100010, 01100011
  3, 4, 4, 5, // 01100100, 01100101, 01100110, 01100111
  3, 4, 4, 5, // 01101000, 01101001, 01101010, 01101011
  4, 5, 5, 6, // 01101100, 01101101, 01101110, 01101111
  3, 4, 4, 5, // 01110000, 01110001, 01110010, 01110011
  4, 5, 5, 6, // 01110100, 01110101, 01110110, 01110111
  4, 5, 5, 6, // 01111000, 01111001, 01111010, 01111011
  5, 6, 6, 7, // 01111100, 01111101, 01111110, 01111111
  1, 2, 2, 3, // 10000000, 10000001, 10000010, 10000011
  2, 3, 3, 4, // 10000100, 10000101, 10000110, 10000111
  2, 3, 3, 4, // 10001000, 10001001, 10001010, 10001011
  3, 4, 4, 5, // 10001100, 10001101, 10001110, 10001111
  2, 3, 3, 4, // 10010000, 10010001, 10010010, 10010011
  3, 4, 4, 5, // 10010100, 10010101, 10010110, 10010111
  3, 4, 4, 5, // 10011000, 10011001, 10011010, 10011011
  4, 5, 5, 6, // 10011100, 10011101, 10011110, 10011111
  2, 3, 3, 4, // 10100000, 10100001, 10100010, 10100011
  3, 4, 4, 5, // 10100100, 10100101, 10100110, 10100111
  3, 4, 4, 5, // 10101000, 10101001, 10101010, 10101011
  4, 5, 5, 6, // 10101100, 10101101, 10101110, 10101111
  3, 4, 4, 5, // 10110000, 10110001, 10110010, 10110011
  4, 5, 5, 6, // 10110100, 10110101, 10110110, 10110111
  4, 5, 5, 6, // 10111000, 10111001, 10111010, 10111011
  5, 6, 6, 7, // 10111100, 10111101, 10111110, 10111111
  2, 3, 3, 4, // 11000000, 11000001, 11000010, 11000011
  3, 4, 4, 5, // 11000100, 11000101, 11000110, 11000111
  3, 4, 4, 5, // 11001000, 11001001, 11001010, 11001011
  4, 5, 5, 6, // 11001100, 11001101, 11001110, 11001111
  3, 4, 4, 5, // 11010000, 11010001, 11010010, 11010011
  4, 5, 5, 6, // 11010100, 11010101, 11010110, 11010111
  4, 5, 5, 6, // 11011000, 11011001, 11011010, 11011011
  5, 6, 6, 7, // 11011100, 11011101, 11011110, 11011111
  3, 4, 4, 5, // 11100000, 11100001, 11100010, 11100011
  4, 5, 5, 6, // 11100100, 11100101, 11100110, 11100111
  4, 5, 5, 6, // 11101000, 11101001, 11101010, 11101011
  5, 6, 6, 7, // 11101100, 11101101, 11101110, 11101111
  4, 5, 5, 6, // 11110000, 11110001, 11110010, 11110011
  5, 6, 6, 7, // 11110100, 11110101, 11110110, 11110111
  5, 6, 6, 7, // 11111000, 11111001, 11111010, 11111011
  6, 7, 7, 8, // 11111100, 11111101, 11111110, 11111111
];
