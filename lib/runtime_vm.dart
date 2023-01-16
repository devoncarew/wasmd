// ignore_for_file: non_constant_identifier_names

import 'dart:math';
import 'dart:typed_data';

import 'runtime.dart';

const int _mask32 = 0xFFFFFFFF;
const int _bit31 = 0x80000000;
const int _maskTop32 = 0xFFFFFFFF00000000;

class VM {
  final Memory memory;
  final List<Table> tables;
  final AbstractDataSegments dataSegments;
  final AbstractElementSegments elementSegments;

  VM(Module module)
      : memory = module.memory,
        tables = module.tables,
        dataSegments = module.dataSegments,
        elementSegments = module.elementSegments;

  void unreachable([String? message]) {
    throw Trap(message == null ? 'unreachable' : 'unreachable: $message');
  }

  void nop() {}

  // void block(i32 immediate0) { }
  // void loop(i32 immediate0) { }
  // void if(i32 immediate0, i32 arg0) { }
  // void else() { }
  // void end() { }
  // void br(u32 immediate0) { }
  // void br_if(u32 immediate0) { }
  // void br_table(u32 immediate0, i32 arg0) { }
  // void return() { }
  // void call(u32 immediate0) { }
  // void call_indirect(u32 immediate0, u32 immediate1) { }
  // void drop(any arg0) { }

  T select<T>(T val1, T val2, i32 c) {
    return c != 0 ? val1 : val2;
  }

  // todo:
  // any select_t(u32 immediate0, u32 immediate1, any arg0, any arg1, i32 arg2) { }

  // any local_get(u32 immediate0) { }
  // void local_set(u32 immediate0, any arg0) { }
  // any local_tee(u32 immediate0, any arg0) { }
  // any global_get(u32 immediate0) { }
  // void global_set(u32 immediate0, any arg0) { }
  // any table_get(u32 immediate0, i32 arg0) { }
  // any table_set(u32 immediate0, i32 arg0) { }

  i32 i32_load(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getInt32(index + offset, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  i64 i64_load(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getInt64(index + offset, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  f32 f32_load(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getFloat32(index + offset, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  f64 f64_load(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getFloat64(index + offset, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  i32 i32_load8_s(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getInt8(index + offset);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  i32 i32_load8_u(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getUint8(index + offset);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  i32 i32_load16_s(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getInt16(index + offset, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  i32 i32_load16_u(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getUint16(index + offset, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  i64 i64_load8_s(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getInt8(index + offset);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  i64 i64_load8_u(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getUint8(index + offset);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  i64 i64_load16_s(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getInt16(index + offset, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  i64 i64_load16_u(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getUint16(index + offset, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  i64 i64_load32_s(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getInt32(index + offset, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  i64 i64_load32_u(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getUint32(index + offset, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i32_store(u32 align, u32 offset, i32 index, i32 value) {
    try {
      memory.data.setInt32(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_store(u32 align, u32 offset, i32 index, i32 value) {
    try {
      memory.data.setInt64(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void f32_store(u32 align, u32 offset, i32 index, f32 value) {
    try {
      memory.data.setFloat32(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void f64_store(u32 align, u32 offset, i32 index, f64 value) {
    try {
      memory.data.setFloat64(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i32_store8(u32 align, u32 offset, i32 index, i32 value) {
    try {
      memory.data.setInt8(index + offset, value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i32_store16(u32 align, u32 offset, i32 index, i32 value) {
    try {
      memory.data.setInt16(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_store8(u32 align, u32 offset, i32 index, i32 value) {
    try {
      memory.data.setInt8(index + offset, value);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_store16(u32 align, u32 offset, i32 index, i32 value) {
    try {
      memory.data.setInt16(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  void i64_store32(u32 align, u32 offset, i32 index, i32 value) {
    try {
      memory.data.setInt32(index + offset, value, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  i32 memory_size(u32 immediate0) {
    return memory.size;
  }

  i32 memory_grow(u32 immediate0, i32 inc) {
    return memory.grow(inc);
  }

  // i32 i32_const(i32 immediate0) { }
  // i64 i64_const(i64 immediate0) { }
  // f32 f32_const(f32 immediate0) { }
  // f64 f64_const(f64 immediate0) { }

  // TODO: encode this such that the result can be used directly in an if
  // statement.
  i32 i32_eqz(i32 arg0) => arg0 == 0 ? 1 : 0;
  i32 i32_eq(i32 arg0, i32 arg1) => arg0 == arg1 ? 1 : 0;
  i32 i32_ne(i32 arg0, i32 arg1) => arg0 != arg1 ? 1 : 0;

  i32 i32_lt_s(i32 arg0, i32 arg1) => arg0 < arg1 ? 1 : 0;
  i32 i32_lt_u(i32 arg0, i32 arg1) {
    arg0 &= _mask32;
    arg1 &= _mask32;
    return arg0 < arg1 ? 1 : 0;
  }

  i32 i32_gt_s(i32 arg0, i32 arg1) => arg0 > arg1 ? 1 : 0;
  i32 i32_gt_u(i32 arg0, i32 arg1) {
    arg0 &= _mask32;
    arg1 &= _mask32;
    return arg0 > arg1 ? 1 : 0;
  }

  i32 i32_le_s(i32 arg0, i32 arg1) => arg0 <= arg1 ? 1 : 0;
  i32 i32_le_u(i32 arg0, i32 arg1) {
    arg0 &= _mask32;
    arg1 &= _mask32;
    return arg0 <= arg1 ? 1 : 0;
  }

  i32 i32_ge_s(i32 arg0, i32 arg1) => arg0 >= arg1 ? 1 : 0;
  i32 i32_ge_u(i32 arg0, i32 arg1) {
    arg0 &= _mask32;
    arg1 &= _mask32;
    return arg0 >= arg1 ? 1 : 0;
  }

  i32 i64_eqz(i64 arg0) => arg0 == 0 ? 1 : 0;
  i32 i64_eq(i64 arg0, i64 arg1) => arg0 == arg1 ? 1 : 0;
  i32 i64_ne(i64 arg0, i64 arg1) => arg0 != arg1 ? 1 : 0;
  i32 i64_lt_s(i64 arg0, i64 arg1) => arg0 < arg1 ? 1 : 0;
  i32 i64_lt_u(i64 arg0, i64 arg1) => arg0 < arg1 ? 1 : 0;
  i32 i64_gt_s(i64 arg0, i64 arg1) => arg0 > arg1 ? 1 : 0;
  i32 i64_gt_u(i64 arg0, i64 arg1) => arg0 > arg1 ? 1 : 0;
  i32 i64_le_s(i64 arg0, i64 arg1) => arg0 <= arg1 ? 1 : 0;
  i32 i64_le_u(i64 arg0, i64 arg1) => arg0 <= arg1 ? 1 : 0;
  i32 i64_ge_s(i64 arg0, i64 arg1) => arg0 >= arg1 ? 1 : 0;
  i32 i64_ge_u(i64 arg0, i64 arg1) => arg0 >= arg1 ? 1 : 0;
  i32 f32_eq(f32 arg0, f32 arg1) => arg0 == arg1 ? 1 : 0;
  i32 f32_ne(f32 arg0, f32 arg1) => arg0 != arg1 ? 1 : 0;
  i32 f32_lt(f32 arg0, f32 arg1) => arg0 < arg1 ? 1 : 0;
  i32 f32_gt(f32 arg0, f32 arg1) => arg0 > arg1 ? 1 : 0;
  i32 f32_le(f32 arg0, f32 arg1) => arg0 <= arg1 ? 1 : 0;
  i32 f32_ge(f32 arg0, f32 arg1) => arg0 >= arg1 ? 1 : 0;
  i32 f64_eq(f64 arg0, f64 arg1) => arg0 == arg1 ? 1 : 0;
  i32 f64_ne(f64 arg0, f64 arg1) => arg0 != arg1 ? 1 : 0;
  i32 f64_lt(f64 arg0, f64 arg1) => arg0 < arg1 ? 1 : 0;
  i32 f64_gt(f64 arg0, f64 arg1) => arg0 > arg1 ? 1 : 0;
  i32 f64_le(f64 arg0, f64 arg1) => arg0 <= arg1 ? 1 : 0;
  i32 f64_ge(f64 arg0, f64 arg1) => arg0 >= arg1 ? 1 : 0;

  i32 i32_clz(i32 arg0) {
    // "Return the count of leading zero bits in i; all bits are considered
    // leading zeros if i is 0."
    arg0 &= _mask32;
    return 32 - arg0.bitLength;
  }

  i32 i32_ctz(i32 arg0) {
    // "Return the count of trailing zero bits in i; all bits are considered
    // trailing zeros if i is 0."

    if (arg0 == 0) {
      return 32;
    } else {
      arg0 |= 0xFFFFFFFF00000000;
      arg0 &= -arg0;
      int clz;
      if (arg0 & 0x8000000000000000 != 0) {
        clz = 0;
      } else {
        clz = 32 - arg0.bitLength;
      }
      return 32 - (clz + 1);
    }
  }

  i32 i32_popcnt(i32 arg0) {
    // "Return the count of non-zero bits in i."
    var result = popcntTable[arg0 & 0xFF];
    result += popcntTable[(arg0 >> 8) & 0xFF];
    result += popcntTable[(arg0 >> 16) & 0xFF];
    result += popcntTable[(arg0 >> 24) & 0xFF];
    return result;
  }

  i32 i32_add(i32 arg0, i32 arg1) {
    var result = arg0 + arg1;
    return (result & _bit31) != 0 ? result | _maskTop32 : result & _mask32;
  }

  i32 i32_sub(i32 arg0, i32 arg1) {
    var result = arg0 - arg1;
    return (result & _bit31) != 0 ? result | _maskTop32 : result & _mask32;
  }

  i32 i32_mul(i32 arg0, i32 arg1) {
    var result = arg0 * arg1;
    return (result & _bit31) != 0 ? result | _maskTop32 : result & _mask32;
  }

  i32 i32_div_s(i32 arg0, i32 arg1) {
    try {
      return arg0 ~/ arg1;
    } on UnsupportedError {
      throw Trap('integer divide by zero');
    }
  }

  i32 i32_div_u(i32 arg0, i32 arg1) {
    arg0 &= _mask32;
    arg1 &= _mask32;
    try {
      return arg0 ~/ arg1;
    } on UnsupportedError {
      throw Trap('integer divide by zero');
    }
  }

  i32 i32_rem_s(i32 arg0, i32 arg1) {
    try {
      return arg0.remainder(arg1);
    } on UnsupportedError {
      throw Trap('integer divide by zero');
    }
  }

  u32 i32_rem_u(u32 arg0, u32 arg1) {
    try {
      var result = (arg0 & _mask32).remainder(arg1 & _mask32);
      // sign extend result
      return (result & _bit31) != 0 ? (result | _maskTop32) : result;
    } on UnsupportedError {
      throw Trap('integer divide by zero');
    }
  }

  i32 i32_and(i32 arg0, i32 arg1) => arg0 & arg1;
  i32 i32_or(i32 arg0, i32 arg1) => arg0 | arg1;
  i32 i32_xor(i32 arg0, i32 arg1) => arg0 ^ arg1;
  i32 i32_shl(i32 arg0, i32 arg1) {
    arg1 = arg1 & 0x1F; // shift left by arg1 bits modulo 32
    var result = arg0 << arg1;
    return (result & _bit31) != 0 ? result | _maskTop32 : result & _mask32;
  }

  i32 i32_shr_s(i32 arg0, i32 arg1) {
    arg1 = arg1 & 0x1F; // shift right by arg1 bits modulo 32
    return arg0 >> arg1;
  }

  i32 i32_shr_u(i32 arg0, i32 arg1) {
    arg0 &= _mask32;
    arg1 = arg1 & 0x1F; // shift right by arg1 bits modulo 32
    var result = arg0 >>> arg1;
    // sign extend result
    if ((result & _bit31) != 0) result |= _maskTop32;
    return result;
  }

  i32 i32_rotl(i32 value, i32 count) {
    const bitCount = 32;

    value &= _mask32;

    count = count & 0x1F; // modulo 32

    var result = (value << count) | (value >>> (bitCount - count));
    if ((result & _bit31) != 0) {
      // sign extend result
      result |= _maskTop32;
    } else {
      // remove anything shifted into the 64 bit portion
      result &= _mask32;
    }
    return result;
  }

  i32 i32_rotr(i32 value, i32 count) {
    const bitCount = 32;

    value &= _mask32;

    count = count & 0x1F; //  modulo 32

    i32 result = (value << (bitCount - count)) | (value >>> count);
    if ((result & _bit31) != 0) {
      // sign extend result
      result |= _maskTop32;
    } else {
      // remove anything shifted into the 64 bit portion
      result &= _mask32;
    }
    return result;
  }

  i64 i64_clz(i64 arg0) {
    // "Return the count of leading zero bits in i; all bits are considered
    // leading zeros if i is 0."
    if (arg0 & 0x8000000000000000 != 0) {
      return 0;
    } else {
      return 64 - arg0.bitLength;
    }
  }

  i64 i64_ctz(i64 arg0) {
    // "Return the count of trailing zero bits in i; all bits are considered
    // trailing zeros if i is 0."
    if (arg0 == 0) {
      return 64;
    } else {
      arg0 &= -arg0;
      int clz;
      if (arg0 & 0x8000000000000000 != 0) {
        clz = 0;
      } else {
        clz = 64 - arg0.bitLength;
      }
      return 64 - (clz + 1);
    }
  }

  i64 i64_popcnt(i64 arg0) {
    // "Return the count of non-zero bits in i."
    var result = popcntTable[arg0 & 0xFF];
    result += popcntTable[(arg0 >> 8) & 0xFF];
    result += popcntTable[(arg0 >> 16) & 0xFF];
    result += popcntTable[(arg0 >> 24) & 0xFF];
    result += popcntTable[(arg0 >> 32) & 0xFF];
    result += popcntTable[(arg0 >> 40) & 0xFF];
    result += popcntTable[(arg0 >> 48) & 0xFF];
    result += popcntTable[(arg0 >> 56) & 0xFF];
    return result;
  }

  i64 i64_add(i64 arg0, i64 arg1) => arg0 + arg1;
  i64 i64_sub(i64 arg0, i64 arg1) => arg0 - arg1;
  i64 i64_mul(i64 arg0, i64 arg1) => arg0 * arg1;
  i64 i64_div_s(i64 arg0, i64 arg1) {
    try {
      return arg0 ~/ arg1;
    } on UnsupportedError {
      throw Trap('integer divide by zero');
    }
  }

  i64 i64_div_u(i64 arg0, i64 arg1) {
    try {
      return arg0 ~/ arg1;
    } on UnsupportedError {
      throw Trap('integer divide by zero');
    }
  }

  i64 i64_rem_s(i64 arg0, i64 arg1) {
    try {
      return arg0.remainder(arg1);
    } on UnsupportedError {
      throw Trap('integer divide by zero');
    }
  }

  i64 i64_rem_u(i64 arg0, i64 arg1) {
    try {
      return arg0.remainder(arg1);
    } on UnsupportedError {
      throw Trap('integer divide by zero');
    }
  }

  i64 i64_and(i64 arg0, i64 arg1) => arg0 & arg1;
  i64 i64_or(i64 arg0, i64 arg1) => arg0 | arg1;
  i64 i64_xor(i64 arg0, i64 arg1) => arg0 ^ arg1;
  i64 i64_shl(i64 arg0, i64 arg1) {
    arg1 = arg1 & 0x3F; // shift left by arg1 bits modulo 64
    return arg0 << arg1;
  }

  i64 i64_shr_s(i64 arg0, i64 arg1) {
    arg1 = arg1 & 0x3F; // shift right by arg1 bits modulo 64
    return arg0 >> arg1;
  }

  i64 i64_shr_u(i64 arg0, i64 arg1) {
    arg1 = arg1 & 0x3F; // shift right by arg1 bits modulo 64
    return arg0 >>> arg1;
  }

  i64 i64_rotl(i64 value, i64 count) {
    const bitCount = 64;

    count = count & 0x3F; // count bits modulo 64

    return count == 0
        ? value
        : (value << count) | (value >>> (bitCount - count));
  }

  i64 i64_rotr(i64 value, i64 count) {
    const bitCount = 64;

    count = count & 0x3F; // count bits modulo 64

    return count == 0
        ? value
        : (value << (bitCount - count)) | (value >>> count);
  }

  f32 f32_abs(f32 arg0) => arg0.abs();
  f32 f32_neg(f32 arg0) => -arg0;
  f32 f32_ceil(f32 arg0) => arg0.ceilToDouble();
  f32 f32_floor(f32 arg0) => arg0.floorToDouble();
  f32 f32_trunc(f32 arg0) => arg0.truncateToDouble();
  f32 f32_nearest(f32 arg0) => arg0.roundToDouble();
  f32 f32_sqrt(f32 arg0) => sqrt(arg0);
  f32 f32_add(f32 arg0, f32 arg1) => arg0 + arg1;
  f32 f32_sub(f32 arg0, f32 arg1) => arg0 - arg1;
  f32 f32_mul(f32 arg0, f32 arg1) => arg0 * arg1;
  f32 f32_div(f32 arg0, f32 arg1) => arg0 / arg1;
  f32 f32_min(f32 arg0, f32 arg1) => min(arg0, arg1);
  f32 f32_max(f32 arg0, f32 arg1) => max(arg0, arg1);
  f32 f32_copysign(f32 arg0, f32 arg1) {
    return arg0.isNegative == arg1.isNegative ? arg0 : -arg0;
  }

  f64 f64_abs(f64 arg0) => arg0.abs();
  f64 f64_neg(f64 arg0) => -arg0;
  f64 f64_ceil(f64 arg0) => arg0.ceilToDouble();
  f64 f64_foor(f64 arg0) => arg0.floorToDouble();
  f64 f64_trunc(f64 arg0) => arg0.truncateToDouble();
  f64 f64_nearest(f64 arg0) => arg0.roundToDouble();
  f64 f64_sqrt(f64 arg0) => sqrt(arg0);
  f64 f64_add(f64 arg0, f64 arg1) => arg0 + arg1;
  f64 f64_sub(f64 arg0, f64 arg1) => arg0 - arg1;
  f64 f64_mul(f64 arg0, f64 arg1) => arg0 * arg1;
  f64 f64_div(f64 arg0, f64 arg1) => arg0 / arg1;
  f64 f64_min(f64 arg0, f64 arg1) => min(arg0, arg1);
  f64 f64_max(f64 arg0, f64 arg1) => max(arg0, arg1);
  f64 f64_copysign(f64 arg0, f64 arg1) {
    return arg0.isNegative == arg1.isNegative ? arg0 : -arg0;
  }

  i32 i32_wrap_i64(i64 arg0) {
    i32 result = arg0 & _mask32;
    // sign extend
    return (result & _bit31) != 0 ? result | _maskTop32 : result;
  }

  i32 i32_trunc_f32_s(f32 arg0) {
    try {
      return arg0.truncate();
    } on UnsupportedError {
      _handleTruncateError(arg0);
    }
  }

  i32 i32_trunc_f32_u(f32 arg0) {
    try {
      return arg0.truncate();
    } on UnsupportedError {
      _handleTruncateError(arg0);
    }
  }

  i32 i32_trunc_f64_s(f64 arg0) {
    try {
      return arg0.truncate();
    } on UnsupportedError {
      _handleTruncateError(arg0);
    }
  }

  i32 i32_trunc_f64_u(f64 arg0) {
    try {
      return arg0.truncate();
    } on UnsupportedError {
      _handleTruncateError(arg0);
    }
  }

  i64 i64_extend_i32_s(i32 arg0) => arg0;
  i64 i64_extend_i32_u(i32 arg0) => arg0 & _mask32;

  i64 i64_trunc_f32_s(f32 arg0) {
    try {
      return arg0.truncate();
    } on UnsupportedError {
      _handleTruncateError(arg0);
    }
  }

  i64 i64_trunc_f32_u(f32 arg0) {
    try {
      return arg0.truncate();
    } on UnsupportedError {
      _handleTruncateError(arg0);
    }
  }

  i64 i64_trunc_f64_s(f64 arg0) {
    try {
      return arg0.truncate();
    } on UnsupportedError {
      _handleTruncateError(arg0);
    }
  }

  i64 i64_trunc_f64_u(f64 arg0) {
    try {
      return arg0.truncate();
    } on UnsupportedError {
      _handleTruncateError(arg0);
    }
  }

  f32 f32_convert_i32_s(i32 arg) => arg.toDouble();
  f32 f32_convert_i32_u(i32 arg0) {
    return (arg0 & _mask32).toDouble();
  }

  f32 f32_convert_i64_s(i64 arg0) => arg0.toDouble();
  f32 f32_convert_i64_u(i64 arg0) => arg0.toDouble();
  f32 f32_demote_f64(f64 arg0) {
    // TODO: verify this implementation
    return arg0.clamp(
      -3.4028234663852885981170418348451692544e+38,
      3.4028235e38,
    );
  }

  f64 f64_convert_i32_s(i32 arg0) => arg0.toDouble();
  f64 f64_convert_i32_u(i32 arg0) {
    arg0 &= _mask32;
    return arg0.toDouble();
  }

  f64 f64_convert_i64_s(i64 arg0) => arg0.toDouble();
  f64 f64_convert_i64_u(i64 arg0) => arg0.toDouble();

  f64 f64_promote_f32(f32 arg0) => arg0;

  final ByteData _reinterpretData = ByteData(8);

  i32 i32_reinterpret_f32(f32 arg0) {
    _reinterpretData.setFloat32(0, arg0, Endian.little);
    return _reinterpretData.getUint32(0, Endian.little);
  }

  i64 i64_reinterpret_f64(f64 arg0) {
    _reinterpretData.setFloat64(0, arg0, Endian.little);
    return _reinterpretData.getUint64(0, Endian.little);
  }

  f32 f32_reinterpret_i32(i32 arg0) {
    _reinterpretData.setUint32(0, arg0, Endian.little);
    return _reinterpretData.getFloat32(0, Endian.little);
  }

  f64 f64_reinterpret_i64(i64 arg0) {
    _reinterpretData.setUint64(0, arg0, Endian.little);
    return _reinterpretData.getFloat64(0, Endian.little);
  }

  i32 i32_extend8_s(i32 arg0) {
    return (arg0 & 0x80) != 0 ? 0xFFFFFFFFFFFFFF00 | arg0 : arg0 & 0xFF;
  }

  i32 i32_extend16_s(i32 arg0) {
    return (arg0 & 0x8000) != 0 ? 0xFFFFFFFFFFFF0000 | arg0 : arg0 & 0xFFFF;
  }

  i64 i64_extend8_s(i64 arg0) {
    if ((arg0 & 0x80) != 0) {
      return 0xFFFFFFFFFFFFFF00 | arg0;
    } else {
      return 0x00000000000000FF & arg0;
    }
  }

  i64 i64_extend16_s(i64 arg0) {
    if ((arg0 & 0x8000) != 0) {
      return 0xFFFFFFFFFFFF0000 | arg0;
    } else {
      return 0x000000000000FFFF & arg0;
    }
  }

  i64 i64_extend32_s(i64 arg0) {
    if ((arg0 & 0x80000000) != 0) {
      return 0xFFFFFFFF00000000 | arg0;
    } else {
      return 0x00000000FFFFFFFF & arg0;
    }
  }

  // reftype ref_null(u32 immediate0) { }

  i32 ref_is_null(RefType? arg0) => arg0 == null ? 1 : 0;

  // funcref ref_func(u32 immediate0) { }

  i32 i32_trunc_sat_f32_s(f32 arg0) {
    // f32 => i32
    // TODO: verify this logic
    return arg0.toInt() & _mask32;
  }

  i32 i32_trunc_sat_f32_u(f32 arg0) {
    // f32 => i32
    // TODO: verify this logic
    return arg0.toInt() & _mask32;
  }

  i32 i32_trunc_sat_f64_s(f64 arg0) {
    // f64 => i32
    // TODO: verify this logic
    return arg0.toInt() & _mask32;
  }

  i32 i32_trunc_sat_f64_u(f64 arg0) {
    // f64 => i32
    // TODO: verify this logic
    return arg0.toInt() & _mask32;
  }

  i64 i64_trunc_sat_f32_s(f32 arg0) {
    // f32 => i64
    // TODO: verify this logic
    return arg0.toInt();
  }

  i64 i64_trunc_sat_f32_u(f32 arg0) {
    // f32 => i64
    // TODO: verify this logic
    return arg0.toInt();
  }

  i64 i64_trunc_sat_f64_s(f64 arg0) {
    // f64 => i64
    // TODO: verify this logic
    return arg0.toInt();
  }

  i64 i64_trunc_sat_f64_u(f64 arg0) {
    // f64 => i64
    // TODO: verify this logic
    return arg0.toInt();
  }

  void memory_init(u32 segmentIndex, u32 memoryIndex, i32 destOffset,
      i32 sourceOffset, i32 count) {
    memory.copyFrom(
        dataSegments.data[segmentIndex], sourceOffset, destOffset, count);
  }

  void data_drop(u32 index) {
    // nothing to do (optionally drop data segment 'index')
  }

  void memory_copy(u32 destMemoryIndex, u32 srcMemoryIndex, i32 destOffset,
      i32 sourceOffset, i32 count) {
    memory.copy(count, sourceOffset, destOffset);
  }

  void memory_fill(u32 immediate0, i32 offset, i32 value, i32 count) {
    memory.fill(value, offset, count);
  }

  void table_init(u32 segmentIndex, u32 tableIndex, i32 destOffset,
      i32 sourceOffset, i32 count) {
    elementSegments.copyTo(tables[tableIndex], sourceOffset, destOffset, count,
        elementSegments.segments[segmentIndex]!);
  }

  void elem_drop(u32 segment) {
    // nothing to do (optionally, drop the given element segment)
  }

  void table_copy(u32 destTable, u32 srcTable, i32 destOffset, i32 sourceOffset,
      i32 count) {
    tables[srcTable].copyTo(tables[destTable], sourceOffset, destOffset, count);
  }

  i32 table_grow(u32 index, RefType? ref, i32 growBy) {
    var table = tables[index];
    var oldSize = table.size;
    if (table.grow(growBy, ref)) {
      return oldSize;
    } else {
      return -1;
    }
  }

  i32 table_size(u32 index) {
    return tables[index].size;
  }

  void table_fill(u32 index, i32 offset, RefType? val, i32 n) {
    var table = tables[index];
    table.fill(val, offset, n);
  }
}

Never _handleTruncateError(double arg0) {
  if (arg0.isInfinite) {
    throw Trap('integer overflow');
  } else {
    throw Trap('invalid conversion to integer');
  }
}
