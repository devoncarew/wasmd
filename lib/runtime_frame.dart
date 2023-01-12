// todo:

// ignore_for_file: non_constant_identifier_names, deprecated_member_use

import 'dart:math';
import 'dart:typed_data';

import 'runtime.dart';

const int _mask32 = 0xFFFFFFFF;
const int _bit31 = 0x80000000;
const int _maskTop32 = 0xFFFFFFFF00000000;

class Frame {
  final Memory memory;
  final List<Table> tables;
  final List<Object?> stack = [];

  Frame(Module module)
      : memory = module.memory,
        tables = module.tables;

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
    var result = arg0 * arg1;
    if ((result & _bit31) != 0) {
      result |= _maskTop32;
    } else {
      result &= _mask32;
    }
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

    tables[srcTable].copyTo(tables[destTable], sourceOffset, destOffset, count);
  }

  void table_grow(u32 index) {
    var table = tables[index];
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
    stack.add(tables[index].size);
  }

  void table_fill(u32 index) {
    i32 n = stack.removeLast() as i32;
    Function? val = stack.removeLast() as Function?;
    i32 offset = stack.removeLast() as i32;

    var table = tables[index];
    table.fill(val, offset, n);
  }
}
