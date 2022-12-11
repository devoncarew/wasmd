// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unused_element

import 'dart:math';
import 'dart:typed_data';

// typedefs

typedef i32 = int;
typedef i64 = int;
typedef u32 = int;
typedef u64 = int;
typedef f64 = double;

// runtime support

class Memory {
  static const pageSize = 64 * 1024;

  final int initialPageSize;
  final int? maxPageSize;

  ByteData data;

  Memory(this.initialPageSize, [this.maxPageSize])
      : data = ByteData(initialPageSize * pageSize);

  void copyTo(Uint8List bytes, int offset) {
    final len = bytes.length;

    // TODO: find a faster copy method
    for (int i = 0; i < len; i++) {
      data.setUint8(i + offset, bytes[i]);
    }
  }
}

class Frame {
  final Memory memory;

  List<Object?> stack = [];

  Frame(this.memory);

  void push<T>(T item) {
    stack.add(item);
  }

  T pop<T>() {
    return stack.removeLast() as T;
  }

  T peek<T>() {
    return stack.last as T;
  }

  void select() {
    i32 c = pop();
    i32 val2 = pop();
    i32 val1 = pop();
    stack.add(c != 0 ? val1 : val2);
  }

  void i32_load(u32 align, u32 offset) {
    i32 index = pop();
    i32 value = memory.data.getInt32(index + offset, Endian.little);
    stack.add(value);
  }

  void i64_load(u32 align, u32 offset) {
    i32 index = pop();
    i64 value = memory.data.getInt64(index + offset, Endian.little);
    stack.add(value);
  }

  void i32_load8_u(u32 align, u32 offset) {
    i32 index = pop();
    i32 value = memory.data.getUint8(index + offset);
    stack.add(value);
  }

  void i64_load8_u(u32 align, u32 offset) {
    i32 index = pop();
    i64 value = memory.data.getUint8(index + offset);
    stack.add(value);
  }

  void i32_store(u32 align, u32 offset) {
    i32 value = pop();
    i32 index = pop();
    memory.data.setInt32(index + offset, value, Endian.little);
  }

  void i64_store(u32 align, u32 offset) {
    i64 value = pop();
    i32 index = pop();
    memory.data.setInt64(index + offset, value, Endian.little);
  }

  void i32_store8(u32 align, u32 offset) {
    i32 value = pop();
    i32 index = pop();
    memory.data.setInt8(index + offset, value);
  }

  void i32_store16(u32 align, u32 offset) {
    i32 value = pop();
    i32 index = pop();
    memory.data.setInt16(index + offset, value, Endian.little);
  }

  void i64_store8(u32 align, u32 offset) {
    i64 value = pop();
    i32 index = pop();
    memory.data.setInt8(index + offset, value);
  }

  void i64_store16(u32 align, u32 offset) {
    i64 value = pop();
    i32 index = pop();
    memory.data.setInt16(index + offset, value, Endian.little);
  }

  void i64_store32(u32 align, u32 offset) {
    i64 value = pop();
    i32 index = pop();
    memory.data.setInt32(index + offset, value, Endian.little);
  }

  void i32_const(i32 value) {
    stack.add(value);
  }

  void i64_const(i64 value) {
    stack.add(value);
  }

  void f64_const(f64 value) {
    f64 result = value.toDouble();
    stack.add(result);
  }

  void i32_eq() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 == arg1 ? 1 : 0;
    stack.add(result);
  }

  void i32_lt_s() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 < arg1 ? 1 : 0;
    stack.add(result);
  }

  void i32_lt_u() {
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = stack.removeLast() as u32;
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
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = stack.removeLast() as u32;
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
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = stack.removeLast() as u32;
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
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = stack.removeLast() as u32;
    var result = arg0 >= arg1 ? 1 : 0;
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

  void i32_add() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 + arg1;
    stack.add(result);
  }

  void i32_sub() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 - arg1;
    stack.add(result);
  }

  void i32_mul() {
    i32 arg1 = stack.removeLast() as i32;
    i32 arg0 = stack.removeLast() as i32;
    var result = arg0 * arg1;
    stack.add(result);
  }

  void i32_div_u() {
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = stack.removeLast() as u32;
    var result = arg0 ~/ arg1;
    stack.add(result);
  }

  void i32_rem_u() {
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = stack.removeLast() as u32;
    var result = arg0 % arg1;
    stack.add(result);
  }

  void i32_and() {
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = stack.removeLast() as u32;
    var result = arg0 & arg1;
    stack.add(result);
  }

  void i32_shl() {
    u32 arg1 = stack.removeLast() as u32;
    u32 arg0 = stack.removeLast() as u32;
    var result = (arg0 << arg1) & 0xFFFFFFFF;
    stack.add(result);
  }

  // todo: signed vs. unsigned
  void i64_div_s() {
    i64 arg1 = stack.removeLast() as i64;
    i64 arg0 = stack.removeLast() as i64;
    var result = arg0 ~/ arg1;
    stack.add(result);
  }

  // todo: signed vs. unsigned
  void i64_div_u() {
    u64 arg1 = stack.removeLast() as u64;
    u64 arg0 = stack.removeLast() as u64;
    var result = arg0 ~/ arg1;
    stack.add(result);
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

  void i64_shr_u() {
    u64 arg1 = stack.removeLast() as u64;
    u64 arg0 = stack.removeLast() as u64;
    var result = arg0 >>> arg1;
    stack.add(result);
  }

  void i64_rotl() {
    const bitCount = 64;

    u64 count = stack.removeLast() as u64;
    i64 value = stack.removeLast() as i64;

    assert(count >= 0 && count < bitCount);

    i64 result =
        count == 0 ? value : (value << count) | (value >>> (bitCount - count));
    stack.add(result);
  }

  void i64_rotr() {
    const bitCount = 64;

    u64 count = stack.removeLast() as u64;
    i64 value = stack.removeLast() as i64;

    assert(count >= 0 && count < bitCount);

    i64 result =
        count == 0 ? value : (value << (bitCount - count)) | (value >>> count);

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

  void f64_convert_i32_s() {
    i32 arg1 = stack.removeLast() as i32;
    f64 result = arg1.toDouble();
    stack.add(result);
  }

  void f64_convert_i32_u() {
    u32 arg1 = stack.removeLast() as u32;
    f64 result = arg1.toDouble();
    stack.add(result);
  }
}

Uint8List hexDecode(String value) {
  var chars = value.codeUnits;
  var len = chars.length ~/ 2;
  var result = Uint8List(len);

  for (int i = 0; i < len; i++) {
    result[i] = int.parse(value.substring(i * 2, i * 2 + 2), radix: 16);
  }

  return result;
}

int _hex(int char) {
  const zero = 48;
  const nine = 57;
  const uppera = 65;
  const upperf = 70;
  const lowera = 97;
  const lowerf = 102;

  if (char >= zero && char <= nine) {
    return char - zero;
  } else if (char >= uppera && char <= upperf) {
    return char - uppera;
  } else if (char >= lowera && char <= lowerf) {
    return char - lowera;
  } else {
    return 0;
  }
}
