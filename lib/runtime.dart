// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

// typedefs

typedef i32 = int;
typedef i64 = int;
typedef u32 = int;
typedef u64 = int;
typedef f32 = double;
typedef f64 = double;

typedef FuncRef = Function;
typedef ExternRef = Function;

// runtime support

const int _mask32 = 0xFFFFFFFF;
const int _bit31 = 0x80000000;
const int _maskTop32 = 0xFFFFFFFF00000000;

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
}

abstract class AbstractElementSegments {
  List<Function> get functionTable;

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

class Frame {
  final Module module;

  List<Object?> stack = [];

  Frame(this.module);

  Memory get memory => module.memory;

  void push<T>(T item) {
    stack.add(item);
  }

  T pop<T>() {
    return stack.removeLast() as T;
  }

  T peek<T>() {
    return stack.last as T;
  }

  /// Remove all but the oldest [depth] stack entries, but keep the top
  /// [paramCount] stack items.
  void unwindTo(int depth, int paramCount) {
    if (stack.length == depth + paramCount) {
      return;
    }

    // Keep [0, start), [length-paramCount, length)
    stack.removeRange(depth, stack.length - paramCount);
  }

  void drop() {
    stack.removeLast();
  }

  void select() {
    i32 c = stack.removeLast() as i32;
    var val2 = stack.removeLast();
    var val1 = stack.removeLast();
    stack.add(c != 0 ? val1 : val2);
  }

  void select_t(u32 valType) {
    i32 c = stack.removeLast() as i32;
    var val2 = stack.removeLast();
    var val1 = stack.removeLast();
    stack.add(c != 0 ? val1 : val2);
  }

  void i32_load(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      i32 value = memory.data.getInt32(index + offset, Endian.little);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_load(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      i64 value = memory.data.getInt64(index + offset, Endian.little);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void f32_load(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      f32 value = memory.data.getFloat32(index + offset, Endian.little);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void f64_load(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      f64 value = memory.data.getFloat64(index + offset, Endian.little);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i32_load8_s(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      i32 value = memory.data.getInt8(index + offset);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i32_load8_u(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      u32 value = memory.data.getUint8(index + offset);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i32_load16_s(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      i32 value = memory.data.getInt16(index + offset, Endian.little);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i32_load16_u(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      u32 value = memory.data.getUint16(index + offset, Endian.little);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_load8_s(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      i32 value = memory.data.getInt8(index + offset);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_load8_u(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      u32 value = memory.data.getUint8(index + offset);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_load16_s(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      i32 value = memory.data.getInt16(index + offset, Endian.little);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_load16_u(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      u32 value = memory.data.getUint16(index + offset, Endian.little);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_load32_s(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      i32 value = memory.data.getInt32(index + offset, Endian.little);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_load32_u(u32 align, u32 offset) {
    i32 index = stack.removeLast() as i32;
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      u32 value = memory.data.getUint32(index + offset, Endian.little);
      stack.add(value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i32_store(u32 align, u32 offset) {
    i32 value = stack.removeLast() as i32;
    i32 index = stack.removeLast() as i32;
    try {
      memory.data.setInt32(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_store(u32 align, u32 offset) {
    i64 value = stack.removeLast() as i64;
    i32 index = stack.removeLast() as i32;
    try {
      memory.data.setInt64(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void f32_store(u32 align, u32 offset) {
    f32 value = stack.removeLast() as f32;
    i32 index = stack.removeLast() as i32;
    try {
      memory.data.setFloat32(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void f64_store(u32 align, u32 offset) {
    f64 value = stack.removeLast() as f64;
    i32 index = stack.removeLast() as i32;
    try {
      memory.data.setFloat64(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i32_store8(u32 align, u32 offset) {
    i32 value = stack.removeLast() as i32;
    i32 index = stack.removeLast() as i32;
    try {
      memory.data.setInt8(index + offset, value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i32_store16(u32 align, u32 offset) {
    i32 value = stack.removeLast() as i32;
    i32 index = stack.removeLast() as i32;
    try {
      memory.data.setInt16(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_store8(u32 align, u32 offset) {
    i64 value = stack.removeLast() as i64;
    i32 index = stack.removeLast() as i32;
    try {
      memory.data.setInt8(index + offset, value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_store16(u32 align, u32 offset) {
    i64 value = stack.removeLast() as i64;
    i32 index = stack.removeLast() as i32;
    try {
      memory.data.setInt16(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_store32(u32 align, u32 offset) {
    i64 value = stack.removeLast() as i64;
    i32 index = stack.removeLast() as i32;
    try {
      memory.data.setInt32(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void memory_size(u32 memoryIndex) {
    i32 result = memory.size;
    stack.add(result);
  }

  void memory_grow(u32 memoryIndex) {
    i32 inc = stack.removeLast() as i32;
    stack.add(memory.grow(inc));
  }

  void i32_const(i32 value) {
    stack.add(value);
  }

  void i64_const(i64 value) {
    stack.add(value);
  }

  void f32_const(f32 value) {
    stack.add(value);
  }

  void f64_const(f64 value) {
    stack.add(value);
  }

  void i32_eqz() {
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 == 0 ? 1 : 0;
    stack.add(result);
  }

  void i32_eq() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 == arg1 ? 1 : 0;
    stack.add(result);
  }

  void i32_ne() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 != arg1 ? 1 : 0;
    stack.add(result);
  }

  void i32_lt_s() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 < arg1 ? 1 : 0;
    stack.add(result);
  }

  void i32_lt_u() {
    u32 arg1 = (stack.removeLast() as u32) & _mask32;
    u32 arg0 = (stack.removeLast() as u32) & _mask32;
    var result = arg0 < arg1 ? 1 : 0;
    stack.add(result);
  }

  void i32_gt_s() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 > arg1 ? 1 : 0;
    stack.add(result);
  }

  void i32_gt_u() {
    u32 arg1 = (stack.removeLast() as u32) & _mask32;
    u32 arg0 = (stack.removeLast() as u32) & _mask32;
    var result = arg0 > arg1 ? 1 : 0;
    stack.add(result);
  }

  void i32_le_s() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 <= arg1 ? 1 : 0;
    stack.add(result);
  }

  void i32_le_u() {
    u32 arg1 = (stack.removeLast() as u32) & _mask32;
    u32 arg0 = (stack.removeLast() as u32) & _mask32;
    var result = arg0 <= arg1 ? 1 : 0;
    stack.add(result);
  }

  void i32_ge_s() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 >= arg1 ? 1 : 0;
    stack.add(result);
  }

  void i32_ge_u() {
    u32 arg1 = (stack.removeLast() as u32) & _mask32;
    u32 arg0 = (stack.removeLast() as u32) & _mask32;
    var result = arg0 >= arg1 ? 1 : 0;
    stack.add(result);
  }

  void i64_eqz() {
    u64 arg = stack.removeLast() as u64;
    var result = arg == 0 ? 1 : 0;
    stack.add(result);
  }

  void i64_eq() {
    u64 arg1 = stack.removeLast() as u64;
    u64 arg0 = stack.removeLast() as u64;
    var result = arg0 == arg1 ? 1 : 0;
    stack.add(result);
  }

  void i64_ne() {
    u64 arg1 = stack.removeLast() as u64;
    u64 arg0 = stack.removeLast() as u64;
    var result = arg0 != arg1 ? 1 : 0;
    stack.add(result);
  }

  void i64_lt_s() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    var result = arg0 < arg1 ? 1 : 0;
    stack.add(result);
  }

  void i64_lt_u() {
    u64 arg1 = stack.removeLast() as u64;
    u64 arg0 = stack.removeLast() as u64;
    var result = arg0 < arg1 ? 1 : 0;
    stack.add(result);
  }

  void i64_gt_s() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    var result = arg0 > arg1 ? 1 : 0;
    stack.add(result);
  }

  void i64_gt_u() {
    u64 arg1 = stack.removeLast() as u64;
    u64 arg0 = stack.removeLast() as u64;
    var result = arg0 > arg1 ? 1 : 0;
    stack.add(result);
  }

  void i64_le_s() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    var result = arg0 <= arg1 ? 1 : 0;
    stack.add(result);
  }

  void i64_le_u() {
    u64 arg1 = stack.removeLast() as u64;
    u64 arg0 = stack.removeLast() as u64;
    var result = arg0 <= arg1 ? 1 : 0;
    stack.add(result);
  }

  void i64_ge_s() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    var result = arg0 >= arg1 ? 1 : 0;
    stack.add(result);
  }

  void i64_ge_u() {
    u64 arg1 = stack.removeLast() as u64;
    u64 arg0 = stack.removeLast() as u64;
    var result = arg0 >= arg1 ? 1 : 0;
    stack.add(result);
  }

  void f32_eq() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = arg0 == arg1 ? 1 : 0;
    stack.add(result);
  }

  void f32_ne() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = arg0 != arg1 ? 1 : 0;
    stack.add(result);
  }

  void f32_lt() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = arg0 < arg1 ? 1 : 0;
    stack.add(result);
  }

  void f32_gt() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = arg0 > arg1 ? 1 : 0;
    stack.add(result);
  }

  void f32_le() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = arg0 <= arg1 ? 1 : 0;
    stack.add(result);
  }

  void f32_ge() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = arg0 >= arg1 ? 1 : 0;
    stack.add(result);
  }

  void f64_eq() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = arg0 == arg1 ? 1 : 0;
    stack.add(result);
  }

  void f64_ne() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = arg0 != arg1 ? 1 : 0;
    stack.add(result);
  }

  void f64_lt() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = arg0 < arg1 ? 1 : 0;
    stack.add(result);
  }

  void f64_gt() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = arg0 > arg1 ? 1 : 0;
    stack.add(result);
  }

  void f64_le() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = arg0 <= arg1 ? 1 : 0;
    stack.add(result);
  }

  void f64_ge() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = arg0 >= arg1 ? 1 : 0;
    stack.add(result);
  }

  void i32_clz() {
    // "Return the count of leading zero bits in i; all bits are considered
    // leading zeros if i is 0."
    u32 arg0 = (stack.removeLast() as u32) & _mask32;
    stack.add(32 - arg0.bitLength);
  }

  void i32_ctz() {
    // "Return the count of trailing zero bits in i; all bits are considered
    // trailing zeros if i is 0."
    u32 arg0 = stack.removeLast() as u32;

    if (arg0 == 0) {
      stack.add(32);
    } else {
      arg0 |= 0xFFFFFFFF00000000;
      arg0 &= -arg0;
      int clz;
      if (arg0 & 0x8000000000000000 != 0) {
        clz = 0;
      } else {
        clz = 32 - arg0.bitLength;
      }
      // function ctz4 (x)
      //   x &= -x
      //   return w - (clz(x) + 1)
      stack.add(32 - (clz + 1));
    }
  }

  void i32_popcnt() {
    // "Return the count of non-zero bits in i."
    u32 arg = stack.removeLast() as u32;
    var result = popcntTable[arg & 0xFF];
    result += popcntTable[(arg >> 8) & 0xFF];
    result += popcntTable[(arg >> 16) & 0xFF];
    result += popcntTable[(arg >> 24) & 0xFF];
    stack.add(result);
  }

  void i32_add() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 + arg1;
    if ((result & _bit31) != 0) {
      result |= _maskTop32;
    } else {
      result &= _mask32;
    }
    stack.add(result);
  }

  void i32_sub() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 - arg1;
    if ((result & _bit31) != 0) {
      result |= _maskTop32;
    } else {
      result &= _mask32;
    }
    stack.add(result);
  }

  void i32_mul() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = (arg0 * arg1) & _mask32;
    stack.add(result);
  }

  void i32_div_s() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    try {
      var result = arg0 ~/ arg1;
      stack.add(result);
    } on IntegerDivisionByZeroException {
      throw Trap('integer divide by zero');
    }
  }

  void i32_div_u() {
    u32 arg1 = (stack.removeLast() as u32) & _mask32;
    u32 arg0 = (stack.removeLast() as u32) & _mask32;
    try {
      var result = arg0 ~/ arg1;
      stack.add(result);
    } on IntegerDivisionByZeroException {
      throw Trap('integer divide by zero');
    }
  }

  void i32_rem_s() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    try {
      var result = arg0.remainder(arg1);
      stack.add(result);
    } on IntegerDivisionByZeroException {
      throw Trap('integer divide by zero');
    }
  }

  void i32_rem_u() {
    u32 arg1 = (stack.removeLast() as u32) & _mask32;
    u32 arg0 = (stack.removeLast() as u32) & _mask32;
    try {
      var result = arg0.remainder(arg1);
      // sign extend result
      if ((result & _bit31) != 0) result |= _maskTop32;
      stack.add(result);
    } on IntegerDivisionByZeroException {
      throw Trap('integer divide by zero');
    }
  }

  void i32_and() {
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = stack.removeLast() as u32;
    var result = arg0 & arg1;
    stack.add(result);
  }

  void i32_or() {
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = stack.removeLast() as u32;
    var result = arg0 | arg1;
    stack.add(result);
  }

  void i32_xor() {
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = stack.removeLast() as u32;
    var result = arg0 ^ arg1;
    stack.add(result);
  }

  void i32_shl() {
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = stack.removeLast() as u32;
    arg1 = arg1 & 0x1F; // shift left by arg1 bits modulo 32
    var result = arg0 << arg1;
    if ((result & _bit31) != 0) {
      // sign extend result
      result |= _maskTop32;
    } else {
      // remove anything shifted into the 64 bit portion
      result &= _mask32;
    }
    stack.add(result);
  }

  void i32_shr_s() {
    i32 arg1 = stack.removeLast() as i32;
    u32 arg0 = stack.removeLast() as u32;
    arg1 = arg1 & 0x1F; // shift right by arg1 bits modulo 32
    var result = arg0 >> arg1;
    stack.add(result);
  }

  void i32_shr_u() {
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = (stack.removeLast() as u32) & _mask32;
    arg1 = arg1 & 0x1F; // shift right by arg1 bits modulo 32
    var result = arg0 >>> arg1;
    // sign extend result
    if ((result & _bit31) != 0) result |= _maskTop32;
    stack.add(result);
  }

  void i32_rotl() {
    const bitCount = 32;

    u32 count = stack.removeLast() as i32;
    i32 value = (stack.removeLast() as i32) & _mask32;

    count = count & 0x1F; // modulo 32

    var result = (value << count) | (value >>> (bitCount - count));
    if ((result & _bit31) != 0) {
      // sign extend result
      result |= _maskTop32;
    } else {
      // remove anything shifted into the 64 bit portion
      result &= _mask32;
    }
    stack.add(result);
  }

  void i32_rotr() {
    const bitCount = 32;

    u32 count = stack.removeLast() as u32;
    i32 value = (stack.removeLast() as i32) & _mask32;

    count = count & 0x1F; //  modulo 32

    i32 result = (value << (bitCount - count)) | (value >>> count);
    if ((result & _bit31) != 0) {
      // sign extend result
      result |= _maskTop32;
    } else {
      // remove anything shifted into the 64 bit portion
      result &= _mask32;
    }
    stack.add(result);
  }

  void f64_abs() {
    f64 arg = stack.removeLast() as f64;
    var result = arg.abs();
    stack.add(result);
  }

  void f64_neg() {
    f64 arg = stack.removeLast() as f64;
    var result = -arg;
    stack.add(result);
  }

  void f64_ceil() {
    f64 arg = stack.removeLast() as f64;
    var result = arg.ceilToDouble();
    stack.add(result);
  }

  void f64_foor() {
    f64 arg = stack.removeLast() as f64;
    var result = arg.floorToDouble();
    stack.add(result);
  }

  void f64_trunc() {
    f64 arg = stack.removeLast() as f64;
    var result = arg.truncateToDouble();
    stack.add(result);
  }

  void f64_nearest() {
    f64 arg = stack.removeLast() as f64;
    var result = arg.roundToDouble();
    stack.add(result);
  }

  void f64_sqrt() {
    f64 arg = stack.removeLast() as f64;
    var result = sqrt(arg);
    stack.add(result);
  }

  void i64_clz() {
    // "Return the count of leading zero bits in i; all bits are considered
    // leading zeros if i is 0."
    i64 arg0 = stack.removeLast() as i64;
    if (arg0 & 0x8000000000000000 != 0) {
      stack.add(0);
    } else {
      stack.add(64 - arg0.bitLength);
    }
  }

  void i64_ctz() {
    // "Return the count of trailing zero bits in i; all bits are considered
    // trailing zeros if i is 0."
    i64 arg0 = stack.removeLast() as i64;
    if (arg0 == 0) {
      stack.add(64);
    } else {
      arg0 &= -arg0;
      int clz;
      if (arg0 & 0x8000000000000000 != 0) {
        clz = 0;
      } else {
        clz = 64 - arg0.bitLength;
      }
      // function ctz4 (x)
      //   x &= -x
      //   return w - (clz(x) + 1)
      stack.add(64 - (clz + 1));
    }
  }

  void i64_popcnt() {
    // "Return the count of non-zero bits in i."
    i64 arg = stack.removeLast() as i64;
    var result = popcntTable[arg & 0xFF];
    result += popcntTable[(arg >> 8) & 0xFF];
    result += popcntTable[(arg >> 16) & 0xFF];
    result += popcntTable[(arg >> 24) & 0xFF];
    result += popcntTable[(arg >> 32) & 0xFF];
    result += popcntTable[(arg >> 40) & 0xFF];
    result += popcntTable[(arg >> 48) & 0xFF];
    result += popcntTable[(arg >> 56) & 0xFF];
    stack.add(result);
  }

  void i64_add() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    var result = arg0 + arg1;
    stack.add(result);
  }

  void i64_sub() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    var result = arg0 - arg1;
    stack.add(result);
  }

  void i64_mul() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    var result = arg0 * arg1;
    stack.add(result);
  }

  void i64_div_s() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    try {
      var result = arg0 ~/ arg1;
      stack.add(result);
    } on IntegerDivisionByZeroException {
      throw Trap('integer divide by zero');
    }
  }

  void i64_div_u() {
    u64 arg1 = stack.removeLast() as u64;
    u64 arg0 = stack.removeLast() as u64;
    try {
      var result = arg0 ~/ arg1;
      stack.add(result);
    } on IntegerDivisionByZeroException {
      throw Trap('integer divide by zero');
    }
  }

  void i64_rem_s() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    try {
      var result = arg0.remainder(arg1);
      stack.add(result);
    } on IntegerDivisionByZeroException {
      throw Trap('integer divide by zero');
    }
  }

  void i64_rem_u() {
    u64 arg1 = stack.removeLast() as u64;
    u64 arg0 = stack.removeLast() as u64;
    try {
      var result = arg0.remainder(arg1);
      stack.add(result);
    } on IntegerDivisionByZeroException {
      throw Trap('integer divide by zero');
    }
  }

  void i64_and() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    var result = arg0 & arg1;
    stack.add(result);
  }

  void i64_or() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    var result = arg0 | arg1;
    stack.add(result);
  }

  void i64_xor() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    var result = arg0 ^ arg1;
    stack.add(result);
  }

  void i64_shl() {
    u64 arg1 = stack.removeLast() as u64;
    u64 arg0 = stack.removeLast() as u64;
    arg1 = arg1 & 0x3F; // shift left by arg1 bits modulo 64
    var result = arg0 << arg1;
    stack.add(result);
  }

  void i64_shr_s() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    arg1 = arg1 & 0x3F; // shift right by arg1 bits modulo 64
    var result = arg0 >> arg1;
    stack.add(result);
  }

  void i64_shr_u() {
    u64 arg1 = stack.removeLast() as u64;
    u64 arg0 = stack.removeLast() as u64;
    arg1 = arg1 & 0x3F; // shift right by arg1 bits modulo 64
    var result = arg0 >>> arg1;
    stack.add(result);
  }

  void i64_rotl() {
    const bitCount = 64;

    u64 count = stack.removeLast() as u64;
    i64 value = stack.removeLast() as i64;

    count = count & 0x3F; // count bits modulo 64

    i64 result =
        count == 0 ? value : (value << count) | (value >>> (bitCount - count));
    stack.add(result);
  }

  void i64_rotr() {
    const bitCount = 64;

    u64 count = stack.removeLast() as u64;
    i64 value = stack.removeLast() as i64;

    count = count & 0x3F; // count bits modulo 64

    i64 result =
        count == 0 ? value : (value << (bitCount - count)) | (value >>> count);

    stack.add(result);
  }

  void f32_abs() {
    f32 arg = stack.removeLast() as f32;
    var result = arg.abs();
    stack.add(result);
  }

  void f32_neg() {
    f32 arg = stack.removeLast() as f32;
    var result = -arg;
    stack.add(result);
  }

  void f32_ceil() {
    f32 arg = stack.removeLast() as f32;
    var result = arg.ceilToDouble();
    stack.add(result);
  }

  void f32_floor() {
    f32 arg = stack.removeLast() as f32;
    var result = arg.floorToDouble();
    stack.add(result);
  }

  void f32_trunc() {
    f32 arg = stack.removeLast() as f32;
    var result = arg.truncateToDouble();
    stack.add(result);
  }

  void f32_nearest() {
    f32 arg = stack.removeLast() as f32;
    var result = arg.roundToDouble();
    stack.add(result);
  }

  void f32_sqrt() {
    f32 arg = stack.removeLast() as f32;
    var result = sqrt(arg);
    stack.add(result);
  }

  void f32_add() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = arg0 + arg1;
    stack.add(result);
  }

  void f32_sub() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = arg0 - arg1;
    stack.add(result);
  }

  void f32_mul() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = arg0 * arg1;
    stack.add(result);
  }

  void f32_div() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = arg0 / arg1;
    stack.add(result);
  }

  void f32_min() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = min(arg0, arg1);
    stack.add(result);
  }

  void f32_max() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = max(arg0, arg1);
    stack.add(result);
  }

  void f32_copysign() {
    f32 arg1 = stack.removeLast() as f32;
    f32 arg0 = stack.removeLast() as f32;
    var result = arg0.isNegative == arg1.isNegative ? arg0 : -arg0;
    stack.add(result);
  }

  void f64_sub() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = arg0 - arg1;
    stack.add(result);
  }

  void f64_add() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = arg0 + arg1;
    stack.add(result);
  }

  void f64_mul() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = arg0 * arg1;
    stack.add(result);
  }

  void f64_div() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = arg0 / arg1;
    stack.add(result);
  }

  void f64_min() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = min(arg0, arg1);
    stack.add(result);
  }

  void f64_max() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = max(arg0, arg1);
    stack.add(result);
  }

  void f64_copysign() {
    f64 arg1 = stack.removeLast() as f64;
    f64 arg0 = stack.removeLast() as f64;
    var result = arg0.isNegative == arg1.isNegative ? arg0 : -arg0;
    stack.add(result);
  }

  void i32_wrap_i64() {
    i64 arg1 = stack.removeLast() as i64;
    i32 result = arg1 & _mask32;
    // sign extend
    if ((result & _bit31) != 0) result |= _maskTop32;
    stack.add(result);
  }

  void i32_trunc_f32_s() {
    f32 arg = stack.removeLast() as f32;
    try {
      i32 result = arg.truncate();
      stack.add(result);
    } on UnsupportedError {
      if (arg.isInfinite) {
        throw Trap('integer overflow');
      } else {
        throw Trap('invalid conversion to integer');
      }
    }
  }

  void i32_trunc_f32_u() {
    f32 arg = stack.removeLast() as f32;
    try {
      u32 result = arg.truncate();
      stack.add(result);
    } on UnsupportedError {
      if (arg.isInfinite) {
        throw Trap('integer overflow');
      } else {
        throw Trap('invalid conversion to integer');
      }
    }
  }

  void i32_trunc_f64_s() {
    f64 arg = stack.removeLast() as f64;
    try {
      i32 result = arg.truncate();
      stack.add(result);
    } on UnsupportedError {
      if (arg.isInfinite) {
        throw Trap('integer overflow');
      } else {
        throw Trap('invalid conversion to integer');
      }
    }
  }

  void i32_trunc_f64_u() {
    f64 arg = stack.removeLast() as f64;
    try {
      u32 result = arg.truncate();
      stack.add(result);
    } on UnsupportedError {
      if (arg.isInfinite) {
        throw Trap('integer overflow');
      } else {
        throw Trap('invalid conversion to integer');
      }
    }
  }

  void i64_extend_i32_s() {
    i32 arg = stack.removeLast() as i32;
    i64 result = arg;
    stack.add(result);
  }

  void i64_extend_i32_u() {
    u32 arg = (stack.removeLast() as u32) & _mask32;
    u64 result = arg;
    stack.add(result);
  }

  void i64_trunc_f32_s() {
    f32 arg = stack.removeLast() as f32;
    try {
      i64 result = arg.truncate();
      stack.add(result);
    } on UnsupportedError {
      if (arg.isInfinite) {
        throw Trap('integer overflow');
      } else {
        throw Trap('invalid conversion to integer');
      }
    }
  }

  void i64_trunc_f32_u() {
    f32 arg = stack.removeLast() as f32;
    try {
      u64 result = arg.truncate();
      stack.add(result);
    } on UnsupportedError {
      if (arg.isInfinite) {
        throw Trap('integer overflow');
      } else {
        throw Trap('invalid conversion to integer');
      }
    }
  }

  void i64_trunc_f64_s() {
    f64 arg = stack.removeLast() as f64;
    try {
      i64 result = arg.truncate();
      stack.add(result);
    } on UnsupportedError {
      if (arg.isInfinite) {
        throw Trap('integer overflow');
      } else {
        throw Trap('invalid conversion to integer');
      }
    }
  }

  void i64_trunc_f64_u() {
    f64 arg = stack.removeLast() as f64;
    try {
      u64 result = arg.truncate();
      stack.add(result);
    } on UnsupportedError {
      if (arg.isInfinite) {
        throw Trap('integer overflow');
      } else {
        throw Trap('invalid conversion to integer');
      }
    }
  }

  void f32_convert_i32_s() {
    i32 arg = stack.removeLast() as i32;
    f32 result = arg.toDouble();
    stack.add(result);
  }

  void f32_convert_i32_u() {
    u32 arg = (stack.removeLast() as u32) & _mask32;
    f32 result = arg.toDouble();
    stack.add(result);
  }

  void f32_convert_i64_s() {
    i64 arg = stack.removeLast() as i64;
    f32 result = arg.toDouble();
    stack.add(result);
  }

  void f32_convert_i64_u() {
    u64 arg = stack.removeLast() as u64;
    f32 result = arg.toDouble();
    stack.add(result);
  }

  void f32_demote_f64() {
    // TODO: verify this implementation
    f64 arg = stack.removeLast() as f64;
    f32 result = arg.clamp(
      -3.4028234663852885981170418348451692544e+38,
      3.4028235e38,
    );
    stack.add(result);
  }

  void f64_convert_i32_s() {
    i32 arg = stack.removeLast() as i32;
    f64 result = arg.toDouble();
    stack.add(result);
  }

  void f64_convert_i32_u() {
    u32 arg = (stack.removeLast() as u32) & _mask32;
    f64 result = arg.toDouble();
    stack.add(result);
  }

  void f64_convert_i64_s() {
    i64 arg = stack.removeLast() as i64;
    f64 result = arg.toDouble();
    stack.add(result);
  }

  void f64_convert_i64_u() {
    u64 arg = stack.removeLast() as u64;
    f64 result = arg.toDouble();
    stack.add(result);
  }

  void f64_promote_f32() {
    f32 arg = stack.removeLast() as f32;
    f64 result = arg;
    stack.add(result);
  }

  final ByteData _reinterpretData = ByteData(8);

  void i32_reinterpret_f32() {
    f32 arg = stack.removeLast() as f32;
    _reinterpretData.setFloat32(0, arg, Endian.little);
    i32 result = _reinterpretData.getUint32(0, Endian.little);
    stack.add(result);
  }

  void i64_reinterpret_f64() {
    f64 arg = stack.removeLast() as f64;
    _reinterpretData.setFloat64(0, arg, Endian.little);
    i64 result = _reinterpretData.getUint64(0, Endian.little);
    stack.add(result);
  }

  void f32_reinterpret_i32() {
    i32 arg = stack.removeLast() as i32;
    _reinterpretData.setUint32(0, arg, Endian.little);
    f32 result = _reinterpretData.getFloat32(0, Endian.little);
    stack.add(result);
  }

  void f64_reinterpret_i64() {
    i64 arg = stack.removeLast() as i64;
    _reinterpretData.setUint64(0, arg, Endian.little);
    f64 result = _reinterpretData.getFloat64(0, Endian.little);
    stack.add(result);
  }

  void i32_extend8_s() {
    i32 arg = stack.removeLast() as i32;
    if ((arg & 0x80) != 0) {
      i64 result = 0xFFFFFFFFFFFFFF00 | arg;
      stack.add(result);
    } else {
      stack.add(arg & 0xFF);
    }
  }

  void i32_extend16_s() {
    i32 arg = stack.removeLast() as i32;
    if ((arg & 0x8000) != 0) {
      i64 result = 0xFFFFFFFFFFFF0000 | arg;
      stack.add(result);
    } else {
      stack.add(arg & 0xFFFF);
    }
  }

  void i64_extend8_s() {
    i64 arg = stack.removeLast() as i64;
    if ((arg & 0x80) != 0) {
      i64 result = 0xFFFFFFFFFFFFFF00 | arg;
      stack.add(result);
    } else {
      i64 result = 0x00000000000000FF & arg;
      stack.add(result);
    }
  }

  void i64_extend16_s() {
    i64 arg = stack.removeLast() as i64;
    if ((arg & 0x8000) != 0) {
      i64 result = 0xFFFFFFFFFFFF0000 | arg;
      stack.add(result);
    } else {
      i64 result = 0x000000000000FFFF & arg;
      stack.add(result);
    }
  }

  void i64_extend32_s() {
    i64 arg = stack.removeLast() as i64;
    if ((arg & 0x80000000) != 0) {
      i64 result = 0xFFFFFFFF00000000 | arg;
      stack.add(result);
    } else {
      i64 result = 0x00000000FFFFFFFF & arg;
      stack.add(result);
    }
  }

  void ref_null(u32 refType) {
    stack.add(null);
  }

  void ref_is_null() {
    var ref = stack.removeLast();
    stack.add(ref == null ? 1 : 0);
  }

  void i32_trunc_sat_f32_s() {
    // f32 => i32
    // TODO: verify this logic
    f32 arg0 = stack.removeLast() as f32;
    i32 result = arg0.toInt() & _mask32;
    stack.add(result);
  }

  void i32_trunc_sat_f32_u() {
    // f32 => i32
    // TODO: verify this logic
    f32 arg0 = stack.removeLast() as f32;
    i32 result = arg0.toInt() & _mask32;
    stack.add(result);
  }

  void i32_trunc_sat_f64_s() {
    // f64 => i32
    // TODO: verify this logic
    f64 arg0 = stack.removeLast() as f64;
    i32 result = arg0.toInt() & _mask32;
    stack.add(result);
  }

  void i32_trunc_sat_f64_u() {
    // f64 => i32
    // TODO: verify this logic
    f64 arg0 = stack.removeLast() as f64;
    i32 result = arg0.toInt() & _mask32;
    stack.add(result);
  }

  void i64_trunc_sat_f32_s() {
    // f32 => i64
    // TODO: verify this logic
    f32 arg0 = stack.removeLast() as f32;
    i64 result = arg0.toInt();
    stack.add(result);
  }

  void i64_trunc_sat_f32_u() {
    // f32 => i64
    // TODO: verify this logic
    f32 arg0 = stack.removeLast() as f32;
    i64 result = arg0.toInt();
    stack.add(result);
  }

  void i64_trunc_sat_f64_s() {
    // f64 => i64
    // TODO: verify this logic
    f64 arg0 = stack.removeLast() as f64;
    i64 result = arg0.toInt();
    stack.add(result);
  }

  void i64_trunc_sat_f64_u() {
    // f64 => i64
    // TODO: verify this logic
    f64 arg0 = stack.removeLast() as f64;
    i64 result = arg0.toInt();
    stack.add(result);
  }

  void data_drop(u32 index) {
    // nothing to do (optionally drop data segment 'index')
  }

  void memory_copy(u32 destMemoryIndex, u32 srcMemoryIndex) {
    i32 count = stack.removeLast() as i32;
    i32 sourceOffset = stack.removeLast() as i32;
    i32 destOffset = stack.removeLast() as i32;
    memory.copy(count, sourceOffset, destOffset);
  }

  void memory_fill(u32 memoryIndex) {
    i32 count = stack.removeLast() as i32;
    i32 value = stack.removeLast() as i32;
    i32 offset = stack.removeLast() as i32;
    memory.fill(value, offset, count);
  }

  void elem_drop(u32 segment) {
    // nothing to do (optionally, drop the given element segment)
  }

  void table_copy(u32 destTable, u32 srcTable) {
    i32 count = pop<i32>();
    i32 sourceOffset = pop<i32>();
    i32 destOffset = pop<i32>();

    module.tables[srcTable]
        .copyTo(module.tables[destTable], sourceOffset, destOffset, count);
  }

  void table_grow(u32 index) {
    var table = module.tables[index];
    var oldSize = table.size;
    var growBy = pop() as int;
    var ref = pop() as Function?;
    if (table.grow(growBy, ref)) {
      push(oldSize);
    } else {
      push(-1);
    }
  }

  void table_size(u32 index) {
    stack.add(module.tables[index].size);
  }

  void table_fill(u32 index) {
    i32 n = stack.removeLast() as i32;
    Function? val = stack.removeLast() as Function?;
    i32 offset = stack.removeLast() as i32;

    var table = module.tables[index];
    table.fill(val, offset, n);
  }
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
