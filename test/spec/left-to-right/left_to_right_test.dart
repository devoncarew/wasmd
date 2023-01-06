// Generated from spec/test/core/left-to-right.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'left_to_right.0.dart' as left_to_right_0;

void main() {
  group('left_to_right', () {
    // module left_to_right.0.dart (line 1)
    var m0 = left_to_right_0.LeftToRight0Module();

    returns('i32_add_0', () => m0.i32_add(), 0x102);
    returns('i64_add_0', () => m0.i64_add(), 0x102);
    returns('i32_sub_0', () => m0.i32_sub(), 0x102);
    returns('i64_sub_0', () => m0.i64_sub(), 0x102);
    returns('i32_mul_0', () => m0.i32_mul(), 0x102);
    returns('i64_mul_0', () => m0.i64_mul(), 0x102);
    returns('i32_div_s_0', () => m0.i32_div_s(), 0x102);
    returns('i64_div_s_0', () => m0.i64_div_s(), 0x102);
    returns('i32_div_u_0', () => m0.i32_div_u(), 0x102);
    returns('i64_div_u_0', () => m0.i64_div_u(), 0x102);
    returns('i32_rem_s_0', () => m0.i32_rem_s(), 0x102);
    returns('i64_rem_s_0', () => m0.i64_rem_s(), 0x102);
    returns('i32_rem_u_0', () => m0.i32_rem_u(), 0x102);
    returns('i64_rem_u_0', () => m0.i64_rem_u(), 0x102);
    returns('i32_and_0', () => m0.i32_and(), 0x102);
    returns('i64_and_0', () => m0.i64_and(), 0x102);
    returns('i32_or_0', () => m0.i32_or(), 0x102);
    returns('i64_or_0', () => m0.i64_or(), 0x102);
    returns('i32_xor_0', () => m0.i32_xor(), 0x102);
    returns('i64_xor_0', () => m0.i64_xor(), 0x102);
    returns('i32_shl_0', () => m0.i32_shl(), 0x102);
    returns('i64_shl_0', () => m0.i64_shl(), 0x102);
    returns('i32_shr_u_0', () => m0.i32_shr_u(), 0x102);
    returns('i64_shr_u_0', () => m0.i64_shr_u(), 0x102);
    returns('i32_shr_s_0', () => m0.i32_shr_s(), 0x102);
    returns('i64_shr_s_0', () => m0.i64_shr_s(), 0x102);
    returns('i32_eq_0', () => m0.i32_eq(), 0x102);
    returns('i64_eq_0', () => m0.i64_eq(), 0x102);
    returns('i32_ne_0', () => m0.i32_ne(), 0x102);
    returns('i64_ne_0', () => m0.i64_ne(), 0x102);
    returns('i32_lt_s_0', () => m0.i32_lt_s(), 0x102);
    returns('i64_lt_s_0', () => m0.i64_lt_s(), 0x102);
    returns('i32_le_s_0', () => m0.i32_le_s(), 0x102);
    returns('i64_le_s_0', () => m0.i64_le_s(), 0x102);
    returns('i32_lt_u_0', () => m0.i32_lt_u(), 0x102);
    returns('i64_lt_u_0', () => m0.i64_lt_u(), 0x102);
    returns('i32_le_u_0', () => m0.i32_le_u(), 0x102);
    returns('i64_le_u_0', () => m0.i64_le_u(), 0x102);
    returns('i32_gt_s_0', () => m0.i32_gt_s(), 0x102);
    returns('i64_gt_s_0', () => m0.i64_gt_s(), 0x102);
    returns('i32_ge_s_0', () => m0.i32_ge_s(), 0x102);
    returns('i64_ge_s_0', () => m0.i64_ge_s(), 0x102);
    returns('i32_gt_u_0', () => m0.i32_gt_u(), 0x102);
    returns('i64_gt_u_0', () => m0.i64_gt_u(), 0x102);
    returns('i32_ge_u_0', () => m0.i32_ge_u(), 0x102);
    returns('i64_ge_u_0', () => m0.i64_ge_u(), 0x102);
    returns('i32_store_0', () => m0.i32_store(), 0x102);
    returns('i64_store_0', () => m0.i64_store(), 0x102);
    returns('i32_store8_0', () => m0.i32_store8(), 0x102);
    returns('i64_store8_0', () => m0.i64_store8(), 0x102);
    returns('i32_store16_0', () => m0.i32_store16(), 0x102);
    returns('i64_store16_0', () => m0.i64_store16(), 0x102);
    returns('i64_store32_0', () => m0.i64_store32(), 0x102);
    returns('i32_call_0', () => m0.i32_call(), 0x102);
    returns('i64_call_0', () => m0.i64_call(), 0x102);
    returns('i32_call_indirect_0', () => m0.i32_call_indirect(), 0x10204);
    returns('i64_call_indirect_0', () => m0.i64_call_indirect(), 0x10204);
    returns('i32_select_0', () => m0.i32_select(), 0x10205);
    returns('i64_select_0', () => m0.i64_select(), 0x10205);
    returns('f32_add_0', () => m0.f32_add(), 0x102);
    returns('f64_add_0', () => m0.f64_add(), 0x102);
    returns('f32_sub_0', () => m0.f32_sub(), 0x102);
    returns('f64_sub_0', () => m0.f64_sub(), 0x102);
    returns('f32_mul_0', () => m0.f32_mul(), 0x102);
    returns('f64_mul_0', () => m0.f64_mul(), 0x102);
    returns('f32_div_0', () => m0.f32_div(), 0x102);
    returns('f64_div_0', () => m0.f64_div(), 0x102);
    returns('f32_copysign_0', () => m0.f32_copysign(), 0x102);
    returns('f64_copysign_0', () => m0.f64_copysign(), 0x102);
    returns('f32_eq_0', () => m0.f32_eq(), 0x102);
    returns('f64_eq_0', () => m0.f64_eq(), 0x102);
    returns('f32_ne_0', () => m0.f32_ne(), 0x102);
    returns('f64_ne_0', () => m0.f64_ne(), 0x102);
    returns('f32_lt_0', () => m0.f32_lt(), 0x102);
    returns('f64_lt_0', () => m0.f64_lt(), 0x102);
    returns('f32_le_0', () => m0.f32_le(), 0x102);
    returns('f64_le_0', () => m0.f64_le(), 0x102);
    returns('f32_gt_0', () => m0.f32_gt(), 0x102);
    returns('f64_gt_0', () => m0.f64_gt(), 0x102);
    returns('f32_ge_0', () => m0.f32_ge(), 0x102);
    returns('f64_ge_0', () => m0.f64_ge(), 0x102);
    returns('f32_min_0', () => m0.f32_min(), 0x102);
    returns('f64_min_0', () => m0.f64_min(), 0x102);
    returns('f32_max_0', () => m0.f32_max(), 0x102);
    returns('f64_max_0', () => m0.f64_max(), 0x102);
    returns('f32_store_0', () => m0.f32_store(), 0x102);
    returns('f64_store_0', () => m0.f64_store(), 0x102);
    returns('f32_call_0', () => m0.f32_call(), 0x102);
    returns('f64_call_0', () => m0.f64_call(), 0x102);
    returns('f32_call_indirect_0', () => m0.f32_call_indirect(), 0x10204);
    returns('f64_call_indirect_0', () => m0.f64_call_indirect(), 0x10204);
    returns('f32_select_0', () => m0.f32_select(), 0x10205);
    returns('f64_select_0', () => m0.f64_select(), 0x10205);
    returns('br_if_0', () => m0.br_if(), 0x102);
    returns('br_table_0', () => m0.br_table(), 0x102);
  });
}
