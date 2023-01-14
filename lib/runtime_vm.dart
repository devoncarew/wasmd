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

  VM(Module module)
      : memory = module.memory,
        tables = module.tables;

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

  // f32 f32_load(u32 align, u32 offset, i32 index) { }
  // f64 f64_load(u32 align, u32 offset, i32 index) { }

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

  // i32 i32_load16_s(u32 align, u32 offset, i32 index) { }

  i32 i32_load16_u(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getUint16(index + offset, Endian.little);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  // i64 i64_load8_s(u32 align, u32 offset, i32 index) { }

  i64 i64_load8_u(u32 align, u32 offset, i32 index) {
    if (index < 0) throw Trap('out of bounds memory access');
    try {
      return memory.data.getUint8(index + offset);
    } on RangeError {
      throw Trap('out of bounds memory access');
    }
  }

  // i64 i64_load16_s(u32 align, u32 offset, i32 index) { }
  // i64 i64_load16_u(u32 align, u32 offset, i32 index) { }
  // i64 i64_load32_s(u32 align, u32 offset, i32 index) { }
  // i64 i64_load32_u(u32 align, u32 offset, i32 index) { }

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

  // void f32_store(u32 align, u32 offset, i32 index, i32 value) { }
  // void f64_store(u32 align, u32 offset, i32 index, i32 value) { }

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

  // void i64_store16(u32 align, u32 offset, i32 index, i32 value) { }
  // void i64_store32(u32 align, u32 offset, i32 index, i32 value) { }

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

  i32 i32_eqz(i32 arg0) => arg0 == 0 ? 1 : 0;

  // TODO: encode this such that the result can be used directly in an if
  // statement.
  i32 i32_eq(i32 arg0, i32 arg1) => arg0 == arg1 ? 1 : 0;

  i32 i32_ne(i32 arg0, i32 arg1) => arg0 != arg1 ? 1 : 0;

  i32 i32_lt_s(i32 arg0, i32 arg1) => arg0 < arg1 ? 1 : 0;

  i32 i32_lt_u(i32 arg0, i32 arg1) => arg0 < arg1 ? 1 : 0;

  i32 i32_gt_s(i32 arg0, i32 arg1) => arg0 > arg1 ? 1 : 0;

  i32 i32_gt_u(i32 arg0, i32 arg1) => arg0 > arg1 ? 1 : 0;

  i32 i32_le_s(i32 arg0, i32 arg1) => arg0 <= arg1 ? 1 : 0;

  i32 i32_le_u(i32 arg0, i32 arg1) => arg0 <= arg1 ? 1 : 0;

  i32 i32_ge_s(i32 arg0, i32 arg1) => arg0 >= arg1 ? 1 : 0;

  i32 i32_ge_u(i32 arg0, i32 arg1) => arg0 >= arg1 ? 1 : 0;

  // i32 i64_eqz(i64 arg0) { }
  // i32 i64_eq(i64 arg0, i64 arg1) { }
  // i32 i64_ne(i64 arg0, i64 arg1) { }
  // i32 i64_lt_s(i64 arg0, i64 arg1) { }
  // i32 i64_lt_u(i64 arg0, i64 arg1) { }
  // i32 i64_gt_s(i64 arg0, i64 arg1) { }
  // i32 i64_gt_u(i64 arg0, i64 arg1) { }
  // i32 i64_le_s(i64 arg0, i64 arg1) { }
  // i32 i64_le_u(i64 arg0, i64 arg1) { }
  // i32 i64_ge_s(i64 arg0, i64 arg1) { }
  // i32 i64_ge_u(i64 arg0, i64 arg1) { }
  // i32 f32_eq(f32 arg0, f32 arg1) { }
  // i32 f32_ne(f32 arg0, f32 arg1) { }
  // i32 f32_lt(f32 arg0, f32 arg1) { }
  // i32 f32_gt(f32 arg0, f32 arg1) { }
  // i32 f32_le(f32 arg0, f32 arg1) { }
  // i32 f32_ge(f32 arg0, f32 arg1) { }
  // i32 f64_eq(f64 arg0, f64 arg1) { }
  // i32 f64_ne(f64 arg0, f64 arg1) { }
  // i32 f64_lt(f64 arg0, f64 arg1) { }

  i32 f64_gt(f64 arg0, f64 arg1) => arg0 > arg1 ? 1 : 0;

  i32 f64_le(f64 arg0, f64 arg1) => arg0 <= arg1 ? 1 : 0;

  // i32 f64_ge(f64 arg0, f64 arg1) { }
  // i32 i32_clz(i32 arg0) { }
  // i32 i32_ctz(i32 arg0) { }
  // i32 i32_popcnt(i32 arg0) { }

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

  // i32 i32_rem_s(i32 arg0, i32 arg1) { }

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

  // i32 i32_shr_s(i32 arg0, i32 arg1) { }

  i32 i32_shr_u(i32 arg0, i32 arg1) {
    arg0 &= _mask32;
    arg1 = arg1 & 0x1F; // shift right by arg1 bits modulo 32
    var result = arg0 >>> arg1;
    // sign extend result
    if ((result & _bit31) != 0) result |= _maskTop32;
    return result;
  }

  // i32 i32_rotl(i32 arg0, i32 arg1) { }
  // i32 i32_rotr(i32 arg0, i32 arg1) { }
  // i64 i64_clz(i64 arg0) { }
  // i64 i64_ctz(i64 arg0) { }
  // i64 i64_popcnt(i64 arg0) { }
  // i64 i64_add(i64 arg0, i64 arg1) { }
  // i64 i64_sub(i64 arg0, i64 arg1) { }
  // i64 i64_mul(i64 arg0, i64 arg1) { }
  // i64 i64_div_s(i64 arg0, i64 arg1) { }
  // i64 i64_div_u(i64 arg0, i64 arg1) { }
  // i64 i64_rem_s(i64 arg0, i64 arg1) { }
  // i64 i64_rem_u(i64 arg0, i64 arg1) { }

  i64 i64_and(i64 arg0, i64 arg1) => arg0 & arg1;

  i64 i64_or(i64 arg0, i64 arg1) => arg0 | arg1;

  i64 i64_xor(i64 arg0, i64 arg1) => arg0 ^ arg1;

  // i64 i64_shl(i64 arg0, i64 arg1) { }
  // i64 i64_shr_s(i64 arg0, i64 arg1) { }
  // i64 i64_shr_u(i64 arg0, i64 arg1) { }

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

  // f32 f32_abs(f32 arg0) { }
  // f32 f32_neg(f32 arg0) { }
  // f32 f32_ceil(f32 arg0) { }

  f32 f32_floor(f32 arg0) => arg0.floorToDouble();

  // f32 f32_trunc(f32 arg0) { }
  // f32 f32_nearest(f32 arg0) { }

  f32 f32_sqrt(f32 arg0) => sqrt(arg0);

  // f32 f32_add(f32 arg0, f32 arg1) { }
  // f32 f32_sub(f32 arg0, f32 arg1) { }
  // f32 f32_mul(f32 arg0, f32 arg1) { }
  // f32 f32_div(f32 arg0, f32 arg1) { }
  // f32 f32_min(f32 arg0, f32 arg1) { }
  // f32 f32_max(f32 arg0, f32 arg1) { }
  // f32 f32_copysign(f32 arg0, f32 arg1) { }
  // f64 f64_abs(f64 arg0) { }
  // f64 f64_neg(f64 arg0) { }
  // f64 f64_ceil(f64 arg0) { }
  // f64 f64_foor(f64 arg0) { }
  // f64 f64_trunc(f64 arg0) { }
  // f64 f64_nearest(f64 arg0) { }
  // f64 f64_sqrt(f64 arg0) { }

  f64 f64_add(f64 arg0, f64 arg1) => arg0 + arg1;

  f64 f64_sub(f64 arg0, f64 arg1) => arg0 - arg1;

  f64 f64_mul(f64 arg0, f64 arg1) => arg0 * arg1;

  f64 f64_div(f64 arg0, f64 arg1) => arg0 / arg1;

  f64 f64_min(f64 arg0, f64 arg1) => min(arg0, arg1);
  f64 f64_max(f64 arg0, f64 arg1) => max(arg0, arg1);

  // f64 f64_copysign(f64 arg0, f64 arg1) { }
  // i32 i32_wrap_i64(i64 arg0) { }
  // i32 i32_trunc_f32_s(f32 arg0) { }
  // i32 i32_trunc_f32_u(f32 arg0) { }
  // i32 i32_trunc_f64_s(f64 arg0) { }
  // i32 i32_trunc_f64_u(f64 arg0) { }
  // i64 i64_extend_i32_s(i32 arg0) { }
  // i64 i64_extend_i32_u(i32 arg0) { }
  // i64 i64_trunc_f32_s(f32 arg0) { }
  // i64 i64_trunc_f32_u(f32 arg0) { }
  // i64 i64_trunc_f64_s(f64 arg0) { }
  // i64 i64_trunc_f64_u(f64 arg0) { }

  f32 f32_convert_i32_s(i32 arg) => arg.toDouble();

  // f32 f32_convert_i32_u(i32 arg0) { }
  // f32 f32_convert_i64_s(i64 arg0) { }
  // f32 f32_convert_i64_u(i64 arg0) { }
  // f32 f32_demote_f64(f64 arg0) { }

  f64 f64_convert_i32_s(i32 arg0) => arg0.toDouble();

  f64 f64_convert_i32_u(i32 arg0) {
    arg0 &= _mask32;
    return arg0.toDouble();
  }

  // f64 f64_convert_i64_s(i64 arg0) { }
  // f64 f64_convert_i64_u(i64 arg0) { }
  // f64 f64_promote_f32(f32 arg0) { }
  // i32 i32_reinterpret_f32(f32 arg0) { }
  // i64 i64_reinterpret_f64(f64 arg0) { }
  // f32 f32_reinterpret_i32(i32 arg0) { }
  // f64 f64_reinterpret_i64(i64 arg0) { }

  i32 i32_extend8_s(i32 arg0) {
    return (arg0 & 0x80) != 0 ? 0xFFFFFFFFFFFFFF00 | arg0 : arg0 & 0xFF;
  }

  // i32 i32_extend16_s(i32 arg0) { }
  // i64 i64_extend8_s(i64 arg0) { }
  // i64 i64_extend16_s(i64 arg0) { }
  // i64 i64_extend32_s(i64 arg0) { }
  // reftype ref_null(u32 immediate0) { }
  // i32 ref_is_null(reftype arg0) { }
  // funcref ref_func(u32 immediate0) { }
  // i32 i32_trunc_sat_f32_s(f32 arg0) { }

  i32 i32_trunc_sat_f32_u(f32 arg0) {
    // f32 => i32
    // TODO: verify this logic
    return arg0.toInt() & _mask32;
  }

  // i32 i32_trunc_sat_f64_s(f64 arg0) { }

  i32 i32_trunc_sat_f64_u(f64 arg0) {
    // f64 => i32
    // TODO: verify this logic
    return arg0.toInt() & _mask32;
  }

  // i64 i64_trunc_sat_f32_s(f32 arg0) { }
  // i64 i64_trunc_sat_f32_u(f32 arg0) { }
  // i64 i64_trunc_sat_f64_s(f64 arg0) { }
  // i64 i64_trunc_sat_f64_u(f64 arg0) { }
  // void memory_init(u32 immediate0, u32 immediate1, i32 arg0, i32 arg1, i32 arg2) { }
  // void data_drop(u32 immediate0) { }
  // void memory_copy(u32 immediate0, u32 immediate1, i32 arg0, i32 arg1, i32 arg2) { }

  void memory_fill(u32 immediate0, i32 offset, i32 value, i32 count) {
    memory.fill(value, offset, count);
  }

  // void table_init(u32 immediate0, u32 immediate1, i32 arg0, i32 arg1, i32 arg2) { }
  // void elem_drop(u32 immediate0) { }
  // void table_copy(u32 immediate0, u32 immediate1, i32 arg0, i32 arg1, i32 arg2) { }
  // i32 table_grow(u32 immediate0, reftype arg0, i32 arg1) { }
  // i32 table_size(u32 immediate0) { }
  // void table_fill(u32 immediate0, i32 arg0, reftype arg1, i32 arg2) { }
}
