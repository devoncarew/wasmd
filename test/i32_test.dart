// Generated from test/wasm/i32.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('i32', () {
    final Module m = Module();
    final Globals g = m.globals;

    returns('test_add_0', g.expect_add_0, m.test_add_0);
    returns('test_add_1', g.expect_add_1, m.test_add_1);
    returns('test_add_2', g.expect_add_2, m.test_add_2);
    returns('test_add_3', g.expect_add_3, m.test_add_3);
    returns('test_add_4', g.expect_add_4, m.test_add_4);
    returns('test_add_5', g.expect_add_5, m.test_add_5);
    returns('test_add_6', g.expect_add_6, m.test_add_6);
    returns('test_add_7', g.expect_add_7, m.test_add_7);
    returns('test_sub_0', g.expect_sub_0, m.test_sub_0);
    returns('test_sub_1', g.expect_sub_1, m.test_sub_1);
    returns('test_sub_2', g.expect_sub_2, m.test_sub_2);
    returns('test_sub_3', g.expect_sub_3, m.test_sub_3);
    returns('test_sub_4', g.expect_sub_4, m.test_sub_4);
    returns('test_sub_5', g.expect_sub_5, m.test_sub_5);
    returns('test_sub_6', g.expect_sub_6, m.test_sub_6);
    returns('test_mul_0', g.expect_mul_0, m.test_mul_0);
    returns('test_mul_1', g.expect_mul_1, m.test_mul_1);
    returns('test_mul_2', g.expect_mul_2, m.test_mul_2);
    returns('test_mul_3', g.expect_mul_3, m.test_mul_3);
    returns('test_mul_4', g.expect_mul_4, m.test_mul_4);
    returns('test_mul_5', g.expect_mul_5, m.test_mul_5);
    returns('test_mul_6', g.expect_mul_6, m.test_mul_6);
    returns('test_mul_7', g.expect_mul_7, m.test_mul_7);
    returns('test_mul_8', g.expect_mul_8, m.test_mul_8);
    returns('test_div_s_4', g.expect_div_s_4, m.test_div_s_4);
    returns('test_div_s_5', g.expect_div_s_5, m.test_div_s_5);
    returns('test_div_s_6', g.expect_div_s_6, m.test_div_s_6);
    returns('test_div_s_7', g.expect_div_s_7, m.test_div_s_7);
    returns('test_div_s_8', g.expect_div_s_8, m.test_div_s_8);
    returns('test_div_s_9', g.expect_div_s_9, m.test_div_s_9);
    returns('test_div_s_10', g.expect_div_s_10, m.test_div_s_10);
    returns('test_div_s_11', g.expect_div_s_11, m.test_div_s_11);
    returns('test_div_s_12', g.expect_div_s_12, m.test_div_s_12);
    returns('test_div_s_13', g.expect_div_s_13, m.test_div_s_13);
    returns('test_div_s_14', g.expect_div_s_14, m.test_div_s_14);
    returns('test_div_s_15', g.expect_div_s_15, m.test_div_s_15);
    returns('test_div_s_16', g.expect_div_s_16, m.test_div_s_16);
    returns('test_div_s_17', g.expect_div_s_17, m.test_div_s_17);
    returns('test_div_s_18', g.expect_div_s_18, m.test_div_s_18);
    returns('test_div_s_19', g.expect_div_s_19, m.test_div_s_19);
    returns('test_div_u_2', g.expect_div_u_2, m.test_div_u_2);
    returns('test_div_u_3', g.expect_div_u_3, m.test_div_u_3);
    returns('test_div_u_4', g.expect_div_u_4, m.test_div_u_4);
    returns('test_div_u_5', g.expect_div_u_5, m.test_div_u_5);
    returns('test_div_u_6', g.expect_div_u_6, m.test_div_u_6);
    returns('test_div_u_7', g.expect_div_u_7, m.test_div_u_7);
    returns('test_div_u_8', g.expect_div_u_8, m.test_div_u_8);
    returns('test_div_u_9', g.expect_div_u_9, m.test_div_u_9);
    returns('test_div_u_10', g.expect_div_u_10, m.test_div_u_10);
    returns('test_div_u_11', g.expect_div_u_11, m.test_div_u_11);
    returns('test_div_u_12', g.expect_div_u_12, m.test_div_u_12);
    returns('test_div_u_13', g.expect_div_u_13, m.test_div_u_13);
    returns('test_div_u_14', g.expect_div_u_14, m.test_div_u_14);
    returns('test_div_u_15', g.expect_div_u_15, m.test_div_u_15);
    returns('test_rem_s_2', g.expect_rem_s_2, m.test_rem_s_2);
    returns('test_rem_s_3', g.expect_rem_s_3, m.test_rem_s_3);
    returns('test_rem_s_4', g.expect_rem_s_4, m.test_rem_s_4);
    returns('test_rem_s_5', g.expect_rem_s_5, m.test_rem_s_5);
    returns('test_rem_s_6', g.expect_rem_s_6, m.test_rem_s_6);
    returns('test_rem_s_7', g.expect_rem_s_7, m.test_rem_s_7);
    returns('test_rem_s_8', g.expect_rem_s_8, m.test_rem_s_8);
    returns('test_rem_s_9', g.expect_rem_s_9, m.test_rem_s_9);
    returns('test_rem_s_10', g.expect_rem_s_10, m.test_rem_s_10);
    returns('test_rem_s_11', g.expect_rem_s_11, m.test_rem_s_11);
    returns('test_rem_s_12', g.expect_rem_s_12, m.test_rem_s_12);
    returns('test_rem_s_13', g.expect_rem_s_13, m.test_rem_s_13);
    returns('test_rem_s_14', g.expect_rem_s_14, m.test_rem_s_14);
    returns('test_rem_s_15', g.expect_rem_s_15, m.test_rem_s_15);
    returns('test_rem_s_16', g.expect_rem_s_16, m.test_rem_s_16);
    returns('test_rem_s_17', g.expect_rem_s_17, m.test_rem_s_17);
    returns('test_rem_s_18', g.expect_rem_s_18, m.test_rem_s_18);
    returns('test_rem_s_19', g.expect_rem_s_19, m.test_rem_s_19);
    returns('test_rem_u_2', g.expect_rem_u_2, m.test_rem_u_2);
    returns('test_rem_u_3', g.expect_rem_u_3, m.test_rem_u_3);
    returns('test_rem_u_4', g.expect_rem_u_4, m.test_rem_u_4);
    returns('test_rem_u_5', g.expect_rem_u_5, m.test_rem_u_5);
    returns('test_rem_u_6', g.expect_rem_u_6, m.test_rem_u_6);
    returns('test_rem_u_7', g.expect_rem_u_7, m.test_rem_u_7);
    returns('test_rem_u_8', g.expect_rem_u_8, m.test_rem_u_8);
    returns('test_rem_u_9', g.expect_rem_u_9, m.test_rem_u_9);
    returns('test_rem_u_10', g.expect_rem_u_10, m.test_rem_u_10);
    returns('test_rem_u_11', g.expect_rem_u_11, m.test_rem_u_11);
    returns('test_rem_u_12', g.expect_rem_u_12, m.test_rem_u_12);
    returns('test_rem_u_13', g.expect_rem_u_13, m.test_rem_u_13);
    returns('test_rem_u_14', g.expect_rem_u_14, m.test_rem_u_14);
    returns('test_rem_u_15', g.expect_rem_u_15, m.test_rem_u_15);
    returns('test_and_0', g.expect_and_0, m.test_and_0);
    returns('test_and_1', g.expect_and_1, m.test_and_1);
    returns('test_and_2', g.expect_and_2, m.test_and_2);
    returns('test_and_3', g.expect_and_3, m.test_and_3);
    returns('test_and_4', g.expect_and_4, m.test_and_4);
    returns('test_and_5', g.expect_and_5, m.test_and_5);
    returns('test_and_6', g.expect_and_6, m.test_and_6);
    returns('test_and_7', g.expect_and_7, m.test_and_7);
    returns('test_or_0', g.expect_or_0, m.test_or_0);
    returns('test_or_1', g.expect_or_1, m.test_or_1);
    returns('test_or_2', g.expect_or_2, m.test_or_2);
    returns('test_or_3', g.expect_or_3, m.test_or_3);
    returns('test_or_4', g.expect_or_4, m.test_or_4);
    returns('test_or_5', g.expect_or_5, m.test_or_5);
    returns('test_or_6', g.expect_or_6, m.test_or_6);
    returns('test_or_7', g.expect_or_7, m.test_or_7);
    returns('test_xor_0', g.expect_xor_0, m.test_xor_0);
    returns('test_xor_1', g.expect_xor_1, m.test_xor_1);
    returns('test_xor_2', g.expect_xor_2, m.test_xor_2);
    returns('test_xor_3', g.expect_xor_3, m.test_xor_3);
    returns('test_xor_4', g.expect_xor_4, m.test_xor_4);
    returns('test_xor_5', g.expect_xor_5, m.test_xor_5);
    returns('test_xor_6', g.expect_xor_6, m.test_xor_6);
    returns('test_xor_7', g.expect_xor_7, m.test_xor_7);
    returns('test_xor_8', g.expect_xor_8, m.test_xor_8);
    returns('test_xor_9', g.expect_xor_9, m.test_xor_9);
    returns('test_shl_0', g.expect_shl_0, m.test_shl_0);
    returns('test_shl_1', g.expect_shl_1, m.test_shl_1);
    returns('test_shl_2', g.expect_shl_2, m.test_shl_2);
    returns('test_shl_3', g.expect_shl_3, m.test_shl_3);
    returns('test_shl_4', g.expect_shl_4, m.test_shl_4);
    returns('test_shl_5', g.expect_shl_5, m.test_shl_5);
    returns('test_shl_6', g.expect_shl_6, m.test_shl_6);
    returns('test_shl_7', g.expect_shl_7, m.test_shl_7);
    returns('test_shl_8', g.expect_shl_8, m.test_shl_8);
    returns('test_shl_9', g.expect_shl_9, m.test_shl_9);
    returns('test_shl_10', g.expect_shl_10, m.test_shl_10);
    returns('test_shr_s_0', g.expect_shr_s_0, m.test_shr_s_0);
    returns('test_shr_s_1', g.expect_shr_s_1, m.test_shr_s_1);
    returns('test_shr_s_2', g.expect_shr_s_2, m.test_shr_s_2);
    returns('test_shr_s_3', g.expect_shr_s_3, m.test_shr_s_3);
    returns('test_shr_s_4', g.expect_shr_s_4, m.test_shr_s_4);
    returns('test_shr_s_5', g.expect_shr_s_5, m.test_shr_s_5);
    returns('test_shr_s_6', g.expect_shr_s_6, m.test_shr_s_6);
    returns('test_shr_s_7', g.expect_shr_s_7, m.test_shr_s_7);
    returns('test_shr_s_8', g.expect_shr_s_8, m.test_shr_s_8);
    returns('test_shr_s_9', g.expect_shr_s_9, m.test_shr_s_9);
    returns('test_shr_s_10', g.expect_shr_s_10, m.test_shr_s_10);
    returns('test_shr_s_11', g.expect_shr_s_11, m.test_shr_s_11);
    returns('test_shr_s_12', g.expect_shr_s_12, m.test_shr_s_12);
    returns('test_shr_s_13', g.expect_shr_s_13, m.test_shr_s_13);
    returns('test_shr_s_14', g.expect_shr_s_14, m.test_shr_s_14);
    returns('test_shr_s_15', g.expect_shr_s_15, m.test_shr_s_15);
    returns('test_shr_s_16', g.expect_shr_s_16, m.test_shr_s_16);
    returns('test_shr_u_0', g.expect_shr_u_0, m.test_shr_u_0);
    returns('test_shr_u_1', g.expect_shr_u_1, m.test_shr_u_1);
    returns('test_shr_u_2', g.expect_shr_u_2, m.test_shr_u_2);
    returns('test_shr_u_3', g.expect_shr_u_3, m.test_shr_u_3);
    returns('test_shr_u_4', g.expect_shr_u_4, m.test_shr_u_4);
    returns('test_shr_u_5', g.expect_shr_u_5, m.test_shr_u_5);
    returns('test_shr_u_6', g.expect_shr_u_6, m.test_shr_u_6);
    returns('test_shr_u_7', g.expect_shr_u_7, m.test_shr_u_7);
    returns('test_shr_u_8', g.expect_shr_u_8, m.test_shr_u_8);
    returns('test_shr_u_9', g.expect_shr_u_9, m.test_shr_u_9);
    returns('test_shr_u_10', g.expect_shr_u_10, m.test_shr_u_10);
    returns('test_shr_u_11', g.expect_shr_u_11, m.test_shr_u_11);
    returns('test_shr_u_12', g.expect_shr_u_12, m.test_shr_u_12);
    returns('test_shr_u_13', g.expect_shr_u_13, m.test_shr_u_13);
    returns('test_shr_u_14', g.expect_shr_u_14, m.test_shr_u_14);
    returns('test_shr_u_15', g.expect_shr_u_15, m.test_shr_u_15);
    returns('test_shr_u_16', g.expect_shr_u_16, m.test_shr_u_16);
    returns('test_rotl_0', g.expect_rotl_0, m.test_rotl_0);
    returns('test_rotl_1', g.expect_rotl_1, m.test_rotl_1);
    returns('test_rotl_2', g.expect_rotl_2, m.test_rotl_2);
    returns('test_rotl_3', g.expect_rotl_3, m.test_rotl_3);
    returns('test_rotl_4', g.expect_rotl_4, m.test_rotl_4);
    returns('test_rotl_5', g.expect_rotl_5, m.test_rotl_5);
    returns('test_rotl_6', g.expect_rotl_6, m.test_rotl_6);
    returns('test_rotl_7', g.expect_rotl_7, m.test_rotl_7);
    returns('test_rotl_8', g.expect_rotl_8, m.test_rotl_8);
    returns('test_rotl_9', g.expect_rotl_9, m.test_rotl_9);
    returns('test_rotl_10', g.expect_rotl_10, m.test_rotl_10);
    returns('test_rotl_11', g.expect_rotl_11, m.test_rotl_11);
    returns('test_rotl_12', g.expect_rotl_12, m.test_rotl_12);
    returns('test_rotr_0', g.expect_rotr_0, m.test_rotr_0);
    returns('test_rotr_1', g.expect_rotr_1, m.test_rotr_1);
    returns('test_rotr_2', g.expect_rotr_2, m.test_rotr_2);
    returns('test_rotr_3', g.expect_rotr_3, m.test_rotr_3);
    returns('test_rotr_4', g.expect_rotr_4, m.test_rotr_4);
    returns('test_rotr_5', g.expect_rotr_5, m.test_rotr_5);
    returns('test_rotr_6', g.expect_rotr_6, m.test_rotr_6);
    returns('test_rotr_7', g.expect_rotr_7, m.test_rotr_7);
    returns('test_rotr_8', g.expect_rotr_8, m.test_rotr_8);
    returns('test_rotr_9', g.expect_rotr_9, m.test_rotr_9);
    returns('test_rotr_10', g.expect_rotr_10, m.test_rotr_10);
    returns('test_rotr_11', g.expect_rotr_11, m.test_rotr_11);
    returns('test_rotr_12', g.expect_rotr_12, m.test_rotr_12);
    returns('test_clz_0', g.expect_clz_0, m.test_clz_0);
    returns('test_clz_1', g.expect_clz_1, m.test_clz_1);
    returns('test_clz_2', g.expect_clz_2, m.test_clz_2);
    returns('test_clz_3', g.expect_clz_3, m.test_clz_3);
    returns('test_clz_4', g.expect_clz_4, m.test_clz_4);
    returns('test_clz_5', g.expect_clz_5, m.test_clz_5);
    returns('test_clz_6', g.expect_clz_6, m.test_clz_6);
    returns('test_clz_7', g.expect_clz_7, m.test_clz_7);
    returns('test_ctz_0', g.expect_ctz_0, m.test_ctz_0);
    returns('test_ctz_1', g.expect_ctz_1, m.test_ctz_1);
    returns('test_ctz_2', g.expect_ctz_2, m.test_ctz_2);
    returns('test_ctz_3', g.expect_ctz_3, m.test_ctz_3);
    returns('test_ctz_4', g.expect_ctz_4, m.test_ctz_4);
    returns('test_ctz_5', g.expect_ctz_5, m.test_ctz_5);
    returns('test_popcnt_0', g.expect_popcnt_0, m.test_popcnt_0);
    returns('test_popcnt_1', g.expect_popcnt_1, m.test_popcnt_1);
    returns('test_popcnt_2', g.expect_popcnt_2, m.test_popcnt_2);
    returns('test_popcnt_3', g.expect_popcnt_3, m.test_popcnt_3);
    returns('test_popcnt_4', g.expect_popcnt_4, m.test_popcnt_4);
    returns('test_popcnt_5', g.expect_popcnt_5, m.test_popcnt_5);
    returns('test_popcnt_6', g.expect_popcnt_6, m.test_popcnt_6);
    returns('test_popcnt_7', g.expect_popcnt_7, m.test_popcnt_7);
    returns('test_extend8_s_0', g.expect_extend8_s_0, m.test_extend8_s_0);
    returns('test_extend8_s_1', g.expect_extend8_s_1, m.test_extend8_s_1);
    returns('test_extend8_s_2', g.expect_extend8_s_2, m.test_extend8_s_2);
    returns('test_extend8_s_3', g.expect_extend8_s_3, m.test_extend8_s_3);
    returns('test_extend8_s_4', g.expect_extend8_s_4, m.test_extend8_s_4);
    returns('test_extend8_s_5', g.expect_extend8_s_5, m.test_extend8_s_5);
    returns('test_extend8_s_6', g.expect_extend8_s_6, m.test_extend8_s_6);
    returns('test_extend16_s_0', g.expect_extend16_s_0, m.test_extend16_s_0);
    returns('test_extend16_s_1', g.expect_extend16_s_1, m.test_extend16_s_1);
    returns('test_extend16_s_2', g.expect_extend16_s_2, m.test_extend16_s_2);
    returns('test_extend16_s_3', g.expect_extend16_s_3, m.test_extend16_s_3);
    returns('test_extend16_s_4', g.expect_extend16_s_4, m.test_extend16_s_4);
    returns('test_extend16_s_5', g.expect_extend16_s_5, m.test_extend16_s_5);
    returns('test_extend16_s_6', g.expect_extend16_s_6, m.test_extend16_s_6);
    returns('test_eqz_0', g.expect_eqz_0, m.test_eqz_0);
    returns('test_eqz_1', g.expect_eqz_1, m.test_eqz_1);
    returns('test_eqz_2', g.expect_eqz_2, m.test_eqz_2);
    returns('test_eqz_3', g.expect_eqz_3, m.test_eqz_3);
    returns('test_eqz_4', g.expect_eqz_4, m.test_eqz_4);
    returns('test_eq_0', g.expect_eq_0, m.test_eq_0);
    returns('test_eq_1', g.expect_eq_1, m.test_eq_1);
    returns('test_eq_2', g.expect_eq_2, m.test_eq_2);
    returns('test_eq_3', g.expect_eq_3, m.test_eq_3);
    returns('test_eq_4', g.expect_eq_4, m.test_eq_4);
    returns('test_eq_5', g.expect_eq_5, m.test_eq_5);
    returns('test_eq_6', g.expect_eq_6, m.test_eq_6);
    returns('test_eq_7', g.expect_eq_7, m.test_eq_7);
    returns('test_eq_8', g.expect_eq_8, m.test_eq_8);
    returns('test_eq_9', g.expect_eq_9, m.test_eq_9);
    returns('test_eq_10', g.expect_eq_10, m.test_eq_10);
    returns('test_eq_11', g.expect_eq_11, m.test_eq_11);
    returns('test_eq_12', g.expect_eq_12, m.test_eq_12);
    returns('test_eq_13', g.expect_eq_13, m.test_eq_13);
    returns('test_ne_0', g.expect_ne_0, m.test_ne_0);
    returns('test_ne_1', g.expect_ne_1, m.test_ne_1);
    returns('test_ne_2', g.expect_ne_2, m.test_ne_2);
    returns('test_ne_3', g.expect_ne_3, m.test_ne_3);
    returns('test_ne_4', g.expect_ne_4, m.test_ne_4);
    returns('test_ne_5', g.expect_ne_5, m.test_ne_5);
    returns('test_ne_6', g.expect_ne_6, m.test_ne_6);
    returns('test_ne_7', g.expect_ne_7, m.test_ne_7);
    returns('test_ne_8', g.expect_ne_8, m.test_ne_8);
    returns('test_ne_9', g.expect_ne_9, m.test_ne_9);
    returns('test_ne_10', g.expect_ne_10, m.test_ne_10);
    returns('test_ne_11', g.expect_ne_11, m.test_ne_11);
    returns('test_ne_12', g.expect_ne_12, m.test_ne_12);
    returns('test_ne_13', g.expect_ne_13, m.test_ne_13);
    returns('test_lt_s_0', g.expect_lt_s_0, m.test_lt_s_0);
    returns('test_lt_s_1', g.expect_lt_s_1, m.test_lt_s_1);
    returns('test_lt_s_2', g.expect_lt_s_2, m.test_lt_s_2);
    returns('test_lt_s_3', g.expect_lt_s_3, m.test_lt_s_3);
    returns('test_lt_s_4', g.expect_lt_s_4, m.test_lt_s_4);
    returns('test_lt_s_5', g.expect_lt_s_5, m.test_lt_s_5);
    returns('test_lt_s_6', g.expect_lt_s_6, m.test_lt_s_6);
    returns('test_lt_s_7', g.expect_lt_s_7, m.test_lt_s_7);
    returns('test_lt_s_8', g.expect_lt_s_8, m.test_lt_s_8);
    returns('test_lt_s_9', g.expect_lt_s_9, m.test_lt_s_9);
    returns('test_lt_s_10', g.expect_lt_s_10, m.test_lt_s_10);
    returns('test_lt_s_11', g.expect_lt_s_11, m.test_lt_s_11);
    returns('test_lt_s_12', g.expect_lt_s_12, m.test_lt_s_12);
    returns('test_lt_s_13', g.expect_lt_s_13, m.test_lt_s_13);
    returns('test_lt_u_0', g.expect_lt_u_0, m.test_lt_u_0);
    returns('test_lt_u_1', g.expect_lt_u_1, m.test_lt_u_1);
    returns('test_lt_u_2', g.expect_lt_u_2, m.test_lt_u_2);
    returns('test_lt_u_3', g.expect_lt_u_3, m.test_lt_u_3);
    returns('test_lt_u_4', g.expect_lt_u_4, m.test_lt_u_4);
    returns('test_lt_u_5', g.expect_lt_u_5, m.test_lt_u_5);
    returns('test_lt_u_6', g.expect_lt_u_6, m.test_lt_u_6);
    returns('test_lt_u_7', g.expect_lt_u_7, m.test_lt_u_7);
    returns('test_lt_u_8', g.expect_lt_u_8, m.test_lt_u_8);
    returns('test_lt_u_9', g.expect_lt_u_9, m.test_lt_u_9);
    returns('test_lt_u_10', g.expect_lt_u_10, m.test_lt_u_10);
    returns('test_lt_u_11', g.expect_lt_u_11, m.test_lt_u_11);
    returns('test_lt_u_12', g.expect_lt_u_12, m.test_lt_u_12);
    returns('test_lt_u_13', g.expect_lt_u_13, m.test_lt_u_13);
    returns('test_le_s_0', g.expect_le_s_0, m.test_le_s_0);
    returns('test_le_s_1', g.expect_le_s_1, m.test_le_s_1);
    returns('test_le_s_2', g.expect_le_s_2, m.test_le_s_2);
    returns('test_le_s_3', g.expect_le_s_3, m.test_le_s_3);
    returns('test_le_s_4', g.expect_le_s_4, m.test_le_s_4);
    returns('test_le_s_5', g.expect_le_s_5, m.test_le_s_5);
    returns('test_le_s_6', g.expect_le_s_6, m.test_le_s_6);
    returns('test_le_s_7', g.expect_le_s_7, m.test_le_s_7);
    returns('test_le_s_8', g.expect_le_s_8, m.test_le_s_8);
    returns('test_le_s_9', g.expect_le_s_9, m.test_le_s_9);
    returns('test_le_s_10', g.expect_le_s_10, m.test_le_s_10);
    returns('test_le_s_11', g.expect_le_s_11, m.test_le_s_11);
    returns('test_le_s_12', g.expect_le_s_12, m.test_le_s_12);
    returns('test_le_s_13', g.expect_le_s_13, m.test_le_s_13);
    returns('test_le_u_0', g.expect_le_u_0, m.test_le_u_0);
    returns('test_le_u_1', g.expect_le_u_1, m.test_le_u_1);
    returns('test_le_u_2', g.expect_le_u_2, m.test_le_u_2);
    returns('test_le_u_3', g.expect_le_u_3, m.test_le_u_3);
    returns('test_le_u_4', g.expect_le_u_4, m.test_le_u_4);
    returns('test_le_u_5', g.expect_le_u_5, m.test_le_u_5);
    returns('test_le_u_6', g.expect_le_u_6, m.test_le_u_6);
    returns('test_le_u_7', g.expect_le_u_7, m.test_le_u_7);
    returns('test_le_u_8', g.expect_le_u_8, m.test_le_u_8);
    returns('test_le_u_9', g.expect_le_u_9, m.test_le_u_9);
    returns('test_le_u_10', g.expect_le_u_10, m.test_le_u_10);
    returns('test_le_u_11', g.expect_le_u_11, m.test_le_u_11);
    returns('test_le_u_12', g.expect_le_u_12, m.test_le_u_12);
    returns('test_le_u_13', g.expect_le_u_13, m.test_le_u_13);
    returns('test_gt_s_0', g.expect_gt_s_0, m.test_gt_s_0);
    returns('test_gt_s_1', g.expect_gt_s_1, m.test_gt_s_1);
    returns('test_gt_s_2', g.expect_gt_s_2, m.test_gt_s_2);
    returns('test_gt_s_3', g.expect_gt_s_3, m.test_gt_s_3);
    returns('test_gt_s_4', g.expect_gt_s_4, m.test_gt_s_4);
    returns('test_gt_s_5', g.expect_gt_s_5, m.test_gt_s_5);
    returns('test_gt_s_6', g.expect_gt_s_6, m.test_gt_s_6);
    returns('test_gt_s_7', g.expect_gt_s_7, m.test_gt_s_7);
    returns('test_gt_s_8', g.expect_gt_s_8, m.test_gt_s_8);
    returns('test_gt_s_9', g.expect_gt_s_9, m.test_gt_s_9);
    returns('test_gt_s_10', g.expect_gt_s_10, m.test_gt_s_10);
    returns('test_gt_s_11', g.expect_gt_s_11, m.test_gt_s_11);
    returns('test_gt_s_12', g.expect_gt_s_12, m.test_gt_s_12);
    returns('test_gt_s_13', g.expect_gt_s_13, m.test_gt_s_13);
    returns('test_gt_u_0', g.expect_gt_u_0, m.test_gt_u_0);
    returns('test_gt_u_1', g.expect_gt_u_1, m.test_gt_u_1);
    returns('test_gt_u_2', g.expect_gt_u_2, m.test_gt_u_2);
    returns('test_gt_u_3', g.expect_gt_u_3, m.test_gt_u_3);
    returns('test_gt_u_4', g.expect_gt_u_4, m.test_gt_u_4);
    returns('test_gt_u_5', g.expect_gt_u_5, m.test_gt_u_5);
    returns('test_gt_u_6', g.expect_gt_u_6, m.test_gt_u_6);
    returns('test_gt_u_7', g.expect_gt_u_7, m.test_gt_u_7);
    returns('test_gt_u_8', g.expect_gt_u_8, m.test_gt_u_8);
    returns('test_gt_u_9', g.expect_gt_u_9, m.test_gt_u_9);
    returns('test_gt_u_10', g.expect_gt_u_10, m.test_gt_u_10);
    returns('test_gt_u_11', g.expect_gt_u_11, m.test_gt_u_11);
    returns('test_gt_u_12', g.expect_gt_u_12, m.test_gt_u_12);
    returns('test_gt_u_13', g.expect_gt_u_13, m.test_gt_u_13);
    returns('test_ge_s_0', g.expect_ge_s_0, m.test_ge_s_0);
    returns('test_ge_s_1', g.expect_ge_s_1, m.test_ge_s_1);
    returns('test_ge_s_2', g.expect_ge_s_2, m.test_ge_s_2);
    returns('test_ge_s_3', g.expect_ge_s_3, m.test_ge_s_3);
    returns('test_ge_s_4', g.expect_ge_s_4, m.test_ge_s_4);
    returns('test_ge_s_5', g.expect_ge_s_5, m.test_ge_s_5);
    returns('test_ge_s_6', g.expect_ge_s_6, m.test_ge_s_6);
    returns('test_ge_s_7', g.expect_ge_s_7, m.test_ge_s_7);
    returns('test_ge_s_8', g.expect_ge_s_8, m.test_ge_s_8);
    returns('test_ge_s_9', g.expect_ge_s_9, m.test_ge_s_9);
    returns('test_ge_s_10', g.expect_ge_s_10, m.test_ge_s_10);
    returns('test_ge_s_11', g.expect_ge_s_11, m.test_ge_s_11);
    returns('test_ge_s_12', g.expect_ge_s_12, m.test_ge_s_12);
    returns('test_ge_s_13', g.expect_ge_s_13, m.test_ge_s_13);
    returns('test_ge_u_0', g.expect_ge_u_0, m.test_ge_u_0);
    returns('test_ge_u_1', g.expect_ge_u_1, m.test_ge_u_1);
    returns('test_ge_u_2', g.expect_ge_u_2, m.test_ge_u_2);
    returns('test_ge_u_3', g.expect_ge_u_3, m.test_ge_u_3);
    returns('test_ge_u_4', g.expect_ge_u_4, m.test_ge_u_4);
    returns('test_ge_u_5', g.expect_ge_u_5, m.test_ge_u_5);
    returns('test_ge_u_6', g.expect_ge_u_6, m.test_ge_u_6);
    returns('test_ge_u_7', g.expect_ge_u_7, m.test_ge_u_7);
    returns('test_ge_u_8', g.expect_ge_u_8, m.test_ge_u_8);
    returns('test_ge_u_9', g.expect_ge_u_9, m.test_ge_u_9);
    returns('test_ge_u_10', g.expect_ge_u_10, m.test_ge_u_10);
    returns('test_ge_u_11', g.expect_ge_u_11, m.test_ge_u_11);
    returns('test_ge_u_12', g.expect_ge_u_12, m.test_ge_u_12);
    returns('test_ge_u_13', g.expect_ge_u_13, m.test_ge_u_13);
  });
}

class Module {
  Module();

  final Memory memory = Memory(0);

  final Globals globals = Globals();

  i32 add(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_add();
    return frame.pop();
  }

  i32 sub(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_sub();
    return frame.pop();
  }

  i32 mul(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_mul();
    return frame.pop();
  }

  i32 div_s(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_div_s();
    return frame.pop();
  }

  i32 div_u(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_div_u();
    return frame.pop();
  }

  i32 rem_s(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_rem_s();
    return frame.pop();
  }

  i32 rem_u(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_rem_u();
    return frame.pop();
  }

  i32 and(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_and();
    return frame.pop();
  }

  i32 or(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_or();
    return frame.pop();
  }

  i32 xor(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_xor();
    return frame.pop();
  }

  i32 shl(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_shl();
    return frame.pop();
  }

  i32 shr_s(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_shr_s();
    return frame.pop();
  }

  i32 shr_u(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_shr_u();
    return frame.pop();
  }

  i32 rotl(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_rotl();
    return frame.pop();
  }

  i32 rotr(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    throw 'unreachable (0x78)';
  }

  i32 clz(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_clz();
    return frame.pop();
  }

  i32 ctz(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_ctz();
    return frame.pop();
  }

  i32 popcnt(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_popcnt();
    return frame.pop();
  }

  i32 extend8_s(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_extend8_s();
    return frame.pop();
  }

  i32 extend16_s(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_extend16_s();
    return frame.pop();
  }

  i32 eqz(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_eqz();
    return frame.pop();
  }

  i32 eq(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_eq();
    return frame.pop();
  }

  i32 ne(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_ne();
    return frame.pop();
  }

  i32 lt_s(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_lt_s();
    return frame.pop();
  }

  i32 lt_u(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_lt_u();
    return frame.pop();
  }

  i32 le_s(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_le_s();
    return frame.pop();
  }

  i32 le_u(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_le_u();
    return frame.pop();
  }

  i32 gt_s(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_gt_s();
    return frame.pop();
  }

  i32 gt_u(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_gt_u();
    return frame.pop();
  }

  i32 ge_s(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_ge_s();
    return frame.pop();
  }

  i32 ge_u(i32 x, i32 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i32_ge_u();
    return frame.pop();
  }

  i32 test_add_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i32 test_add_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i32 test_add_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i32 test_add_3() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i32 test_add_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i32 test_add_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i32 test_add_6() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i32 test_add_7() {
    final frame = Frame(memory);
    frame.i32_const(0x3fffffff);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i32 test_sub_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i32 test_sub_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i32 test_sub_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i32 test_sub_3() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i32 test_sub_4() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i32 test_sub_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i32 test_sub_6() {
    final frame = Frame(memory);
    frame.i32_const(0x3fffffff);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i32 test_mul_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i32 test_mul_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i32 test_mul_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i32 test_mul_3() {
    final frame = Frame(memory);
    frame.i32_const(0x10000000);
    frame.i32_const(0x1000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i32 test_mul_4() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i32 test_mul_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i32 test_mul_6() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i32 test_mul_7() {
    final frame = Frame(memory);
    frame.i32_const(0x1234567);
    frame.i32_const(0x76543210);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i32 test_mul_8() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_4() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_5() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_6() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_7() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_9() {
    final frame = Frame(memory);
    frame.i32_const(-0x7fffffff);
    frame.i32_const(1000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_10() {
    final frame = Frame(memory);
    frame.i32_const(5);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_11() {
    final frame = Frame(memory);
    frame.i32_const(-5);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_12() {
    final frame = Frame(memory);
    frame.i32_const(5);
    frame.i32_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_13() {
    final frame = Frame(memory);
    frame.i32_const(-5);
    frame.i32_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_14() {
    final frame = Frame(memory);
    frame.i32_const(7);
    frame.i32_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_15() {
    final frame = Frame(memory);
    frame.i32_const(-7);
    frame.i32_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_16() {
    final frame = Frame(memory);
    frame.i32_const(7);
    frame.i32_const(-3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_17() {
    final frame = Frame(memory);
    frame.i32_const(-7);
    frame.i32_const(-3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_18() {
    final frame = Frame(memory);
    frame.i32_const(11);
    frame.i32_const(5);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_19() {
    final frame = Frame(memory);
    frame.i32_const(17);
    frame.i32_const(7);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_2() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_3() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_4() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_6() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_7() {
    final frame = Frame(memory);
    frame.i32_const(-0x700ff010);
    frame.i32_const(0x10001);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x7fffffff);
    frame.i32_const(1000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_9() {
    final frame = Frame(memory);
    frame.i32_const(5);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_10() {
    final frame = Frame(memory);
    frame.i32_const(-5);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_11() {
    final frame = Frame(memory);
    frame.i32_const(5);
    frame.i32_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_12() {
    final frame = Frame(memory);
    frame.i32_const(-5);
    frame.i32_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_13() {
    final frame = Frame(memory);
    frame.i32_const(7);
    frame.i32_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_14() {
    final frame = Frame(memory);
    frame.i32_const(11);
    frame.i32_const(5);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_15() {
    final frame = Frame(memory);
    frame.i32_const(17);
    frame.i32_const(7);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_2() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_3() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_4() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_5() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_6() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_7() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_9() {
    final frame = Frame(memory);
    frame.i32_const(-0x7fffffff);
    frame.i32_const(1000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_10() {
    final frame = Frame(memory);
    frame.i32_const(5);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_11() {
    final frame = Frame(memory);
    frame.i32_const(-5);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_12() {
    final frame = Frame(memory);
    frame.i32_const(5);
    frame.i32_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_13() {
    final frame = Frame(memory);
    frame.i32_const(-5);
    frame.i32_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_14() {
    final frame = Frame(memory);
    frame.i32_const(7);
    frame.i32_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_15() {
    final frame = Frame(memory);
    frame.i32_const(-7);
    frame.i32_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_16() {
    final frame = Frame(memory);
    frame.i32_const(7);
    frame.i32_const(-3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_17() {
    final frame = Frame(memory);
    frame.i32_const(-7);
    frame.i32_const(-3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_18() {
    final frame = Frame(memory);
    frame.i32_const(11);
    frame.i32_const(5);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_19() {
    final frame = Frame(memory);
    frame.i32_const(17);
    frame.i32_const(7);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_2() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_3() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_4() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_6() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_7() {
    final frame = Frame(memory);
    frame.i32_const(-0x700ff010);
    frame.i32_const(0x10001);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x7fffffff);
    frame.i32_const(1000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_9() {
    final frame = Frame(memory);
    frame.i32_const(5);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_10() {
    final frame = Frame(memory);
    frame.i32_const(-5);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_11() {
    final frame = Frame(memory);
    frame.i32_const(5);
    frame.i32_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_12() {
    final frame = Frame(memory);
    frame.i32_const(-5);
    frame.i32_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_13() {
    final frame = Frame(memory);
    frame.i32_const(7);
    frame.i32_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_14() {
    final frame = Frame(memory);
    frame.i32_const(11);
    frame.i32_const(5);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_15() {
    final frame = Frame(memory);
    frame.i32_const(17);
    frame.i32_const(7);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_and_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i32 test_and_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i32 test_and_2() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i32 test_and_3() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i32 test_and_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i32 test_and_5() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i32 test_and_6() {
    final frame = Frame(memory);
    frame.i32_const(-0xf0f0001);
    frame.i32_const(-0xf10);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i32 test_and_7() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i32 test_or_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i32 test_or_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i32 test_or_2() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i32 test_or_3() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i32 test_or_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i32 test_or_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i32 test_or_6() {
    final frame = Frame(memory);
    frame.i32_const(-0xf0f0001);
    frame.i32_const(-0xf10);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i32 test_or_7() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i32 test_xor_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i32 test_xor_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i32 test_xor_2() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i32 test_xor_3() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i32 test_xor_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i32 test_xor_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i32 test_xor_6() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i32 test_xor_7() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i32 test_xor_8() {
    final frame = Frame(memory);
    frame.i32_const(-0xf0f0001);
    frame.i32_const(-0xf10);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i32 test_xor_9() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shl_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shl_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shl_2() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shl_3() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shl_4() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shl_5() {
    final frame = Frame(memory);
    frame.i32_const(0x40000000);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shl_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(31);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shl_7() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(32);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shl_8() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(33);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shl_9() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shl_10() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_3() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_4() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_5() {
    final frame = Frame(memory);
    frame.i32_const(0x40000000);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(32);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_7() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(33);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_8() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_9() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_10() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_11() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(31);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_12() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(32);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_13() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(33);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_14() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_15() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_s_16() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_3() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_4() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_5() {
    final frame = Frame(memory);
    frame.i32_const(0x40000000);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(32);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_7() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(33);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_8() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_9() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_10() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_11() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(31);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_12() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(32);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_13() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(33);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_14() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_15() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_shr_u_16() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_3() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(32);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_4() {
    final frame = Frame(memory);
    frame.i32_const(-0x5432678a);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x1ff2400);
    frame.i32_const(4);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_6() {
    final frame = Frame(memory);
    frame.i32_const(-0x4f3e2d1d);
    frame.i32_const(5);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_7() {
    final frame = Frame(memory);
    frame.i32_const(0x8000);
    frame.i32_const(37);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x4f3e2d1d);
    frame.i32_const(0xff05);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_9() {
    final frame = Frame(memory);
    frame.i32_const(0x769abcdf);
    frame.i32_const(-19);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_10() {
    final frame = Frame(memory);
    frame.i32_const(0x769abcdf);
    frame.i32_const(-0x7ffffff3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_11() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(31);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotl_12() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_3() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(32);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_4() {
    final frame = Frame(memory);
    frame.i32_const(-0xff3400);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_5() {
    final frame = Frame(memory);
    frame.i32_const(0x80000);
    frame.i32_const(4);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_6() {
    final frame = Frame(memory);
    frame.i32_const(-0x4f3e2d1d);
    frame.i32_const(5);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_7() {
    final frame = Frame(memory);
    frame.i32_const(0x8000);
    frame.i32_const(37);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x4f3e2d1d);
    frame.i32_const(0xff05);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_9() {
    final frame = Frame(memory);
    frame.i32_const(0x769abcdf);
    frame.i32_const(-19);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_10() {
    final frame = Frame(memory);
    frame.i32_const(0x769abcdf);
    frame.i32_const(-0x7ffffff3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_11() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(31);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rotr_12() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(31);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i32 test_clz_0() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i32 test_clz_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i32 test_clz_2() {
    final frame = Frame(memory);
    frame.i32_const(0x8000);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i32 test_clz_3() {
    final frame = Frame(memory);
    frame.i32_const(255);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i32 test_clz_4() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i32 test_clz_5() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i32 test_clz_6() {
    final frame = Frame(memory);
    frame.i32_const(2);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i32 test_clz_7() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i32 test_ctz_0() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(ctz(t0));
    }
    return frame.pop();
  }

  i32 test_ctz_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(ctz(t0));
    }
    return frame.pop();
  }

  i32 test_ctz_2() {
    final frame = Frame(memory);
    frame.i32_const(0x8000);
    {
      var t0 = frame.pop();
      frame.push(ctz(t0));
    }
    return frame.pop();
  }

  i32 test_ctz_3() {
    final frame = Frame(memory);
    frame.i32_const(0x10000);
    {
      var t0 = frame.pop();
      frame.push(ctz(t0));
    }
    return frame.pop();
  }

  i32 test_ctz_4() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    {
      var t0 = frame.pop();
      frame.push(ctz(t0));
    }
    return frame.pop();
  }

  i32 test_ctz_5() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    {
      var t0 = frame.pop();
      frame.push(ctz(t0));
    }
    return frame.pop();
  }

  i32 test_popcnt_0() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i32 test_popcnt_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i32 test_popcnt_2() {
    final frame = Frame(memory);
    frame.i32_const(0x8000);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i32 test_popcnt_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x7fff8000);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i32 test_popcnt_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i32 test_popcnt_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x55555556);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i32 test_popcnt_6() {
    final frame = Frame(memory);
    frame.i32_const(0x55555555);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i32 test_popcnt_7() {
    final frame = Frame(memory);
    frame.i32_const(-0x21524111);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i32 test_extend8_s_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend8_s_1() {
    final frame = Frame(memory);
    frame.i32_const(127);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend8_s_2() {
    final frame = Frame(memory);
    frame.i32_const(128);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend8_s_3() {
    final frame = Frame(memory);
    frame.i32_const(255);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend8_s_4() {
    final frame = Frame(memory);
    frame.i32_const(0x1234500);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend8_s_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x1234580);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend8_s_6() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend16_s_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend16_s_1() {
    final frame = Frame(memory);
    frame.i32_const(0x7fff);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend16_s_2() {
    final frame = Frame(memory);
    frame.i32_const(0x8000);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend16_s_3() {
    final frame = Frame(memory);
    frame.i32_const(0xffff);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend16_s_4() {
    final frame = Frame(memory);
    frame.i32_const(0x1230000);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend16_s_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x1238000);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i32 test_extend16_s_6() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i32 test_eqz_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(eqz(t0));
    }
    return frame.pop();
  }

  i32 test_eqz_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(eqz(t0));
    }
    return frame.pop();
  }

  i32 test_eqz_2() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    {
      var t0 = frame.pop();
      frame.push(eqz(t0));
    }
    return frame.pop();
  }

  i32 test_eqz_3() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    {
      var t0 = frame.pop();
      frame.push(eqz(t0));
    }
    return frame.pop();
  }

  i32 test_eqz_4() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(eqz(t0));
    }
    return frame.pop();
  }

  i32 test_eq_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_5() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_7() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_9() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_10() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_11() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_12() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_13() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_5() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_7() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_9() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_10() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_11() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_12() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_13() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_5() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_7() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_9() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_10() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_11() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_12() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_13() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_5() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_7() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_9() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_10() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_11() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_12() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_13() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_5() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_7() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_9() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_10() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_11() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_12() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_13() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_5() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_7() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_9() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_10() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_11() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_12() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_13() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_5() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_7() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_9() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_10() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_11() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_12() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_13() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_5() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_7() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_9() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_10() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_11() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_12() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_13() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_5() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_7() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_9() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_10() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_11() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_12() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_13() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_2() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_5() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_7() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_9() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_10() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_11() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_12() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0x7fffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_13() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    frame.i32_const(-0x80000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = i32 Function(i32);
typedef FunctionType2 = i32 Function();

class Globals {
  final i32 expect_add_0 = 2;

  final i32 expect_add_1 = 1;

  final i32 expect_add_2 = -2;

  final i32 expect_add_3 = 0;

  final i32 expect_add_4 = -0x80000000;

  final i32 expect_add_5 = 0x7fffffff;

  final i32 expect_add_6 = 0;

  final i32 expect_add_7 = 0x40000000;

  final i32 expect_sub_0 = 0;

  final i32 expect_sub_1 = 1;

  final i32 expect_sub_2 = 0;

  final i32 expect_sub_3 = -0x80000000;

  final i32 expect_sub_4 = 0x7fffffff;

  final i32 expect_sub_5 = 0;

  final i32 expect_sub_6 = 0x40000000;

  final i32 expect_mul_0 = 1;

  final i32 expect_mul_1 = 0;

  final i32 expect_mul_2 = 1;

  final i32 expect_mul_3 = 0;

  final i32 expect_mul_4 = 0;

  final i32 expect_mul_5 = -0x80000000;

  final i32 expect_mul_6 = -0x7fffffff;

  final i32 expect_mul_7 = 0x358e7470;

  final i32 expect_mul_8 = 1;

  final i32 expect_div_s_4 = 1;

  final i32 expect_div_s_5 = 0;

  final i32 expect_div_s_6 = 0;

  final i32 expect_div_s_7 = 1;

  final i32 expect_div_s_8 = -0x40000000;

  final i32 expect_div_s_9 = -0x20c49b;

  final i32 expect_div_s_10 = 2;

  final i32 expect_div_s_11 = -2;

  final i32 expect_div_s_12 = -2;

  final i32 expect_div_s_13 = 2;

  final i32 expect_div_s_14 = 2;

  final i32 expect_div_s_15 = -2;

  final i32 expect_div_s_16 = -2;

  final i32 expect_div_s_17 = 2;

  final i32 expect_div_s_18 = 2;

  final i32 expect_div_s_19 = 2;

  final i32 expect_div_u_2 = 1;

  final i32 expect_div_u_3 = 0;

  final i32 expect_div_u_4 = 1;

  final i32 expect_div_u_5 = 0;

  final i32 expect_div_u_6 = 0x40000000;

  final i32 expect_div_u_7 = 0x8fef;

  final i32 expect_div_u_8 = 0x20c49b;

  final i32 expect_div_u_9 = 2;

  final i32 expect_div_u_10 = 0x7ffffffd;

  final i32 expect_div_u_11 = 0;

  final i32 expect_div_u_12 = 0;

  final i32 expect_div_u_13 = 2;

  final i32 expect_div_u_14 = 2;

  final i32 expect_div_u_15 = 2;

  final i32 expect_rem_s_2 = 0;

  final i32 expect_rem_s_3 = 0;

  final i32 expect_rem_s_4 = 0;

  final i32 expect_rem_s_5 = 0;

  final i32 expect_rem_s_6 = 0;

  final i32 expect_rem_s_7 = 0;

  final i32 expect_rem_s_8 = 0;

  final i32 expect_rem_s_9 = -647;

  final i32 expect_rem_s_10 = 1;

  final i32 expect_rem_s_11 = -1;

  final i32 expect_rem_s_12 = 1;

  final i32 expect_rem_s_13 = -1;

  final i32 expect_rem_s_14 = 1;

  final i32 expect_rem_s_15 = -1;

  final i32 expect_rem_s_16 = 1;

  final i32 expect_rem_s_17 = -1;

  final i32 expect_rem_s_18 = 1;

  final i32 expect_rem_s_19 = 3;

  final i32 expect_rem_u_2 = 0;

  final i32 expect_rem_u_3 = 0;

  final i32 expect_rem_u_4 = 0;

  final i32 expect_rem_u_5 = -0x80000000;

  final i32 expect_rem_u_6 = 0;

  final i32 expect_rem_u_7 = 0x8001;

  final i32 expect_rem_u_8 = 649;

  final i32 expect_rem_u_9 = 1;

  final i32 expect_rem_u_10 = 1;

  final i32 expect_rem_u_11 = 5;

  final i32 expect_rem_u_12 = -5;

  final i32 expect_rem_u_13 = 1;

  final i32 expect_rem_u_14 = 1;

  final i32 expect_rem_u_15 = 3;

  final i32 expect_and_0 = 0;

  final i32 expect_and_1 = 0;

  final i32 expect_and_2 = 1;

  final i32 expect_and_3 = 0;

  final i32 expect_and_4 = 0;

  final i32 expect_and_5 = 0x7fffffff;

  final i32 expect_and_6 = -0xf0f0f10;

  final i32 expect_and_7 = -1;

  final i32 expect_or_0 = 1;

  final i32 expect_or_1 = 1;

  final i32 expect_or_2 = 1;

  final i32 expect_or_3 = 0;

  final i32 expect_or_4 = -1;

  final i32 expect_or_5 = -0x80000000;

  final i32 expect_or_6 = -1;

  final i32 expect_or_7 = -1;

  final i32 expect_xor_0 = 1;

  final i32 expect_xor_1 = 1;

  final i32 expect_xor_2 = 0;

  final i32 expect_xor_3 = 0;

  final i32 expect_xor_4 = -1;

  final i32 expect_xor_5 = -0x80000000;

  final i32 expect_xor_6 = 0x7fffffff;

  final i32 expect_xor_7 = -0x80000000;

  final i32 expect_xor_8 = 0xf0f0f0f;

  final i32 expect_xor_9 = 0;

  final i32 expect_shl_0 = 2;

  final i32 expect_shl_1 = 1;

  final i32 expect_shl_2 = -2;

  final i32 expect_shl_3 = -2;

  final i32 expect_shl_4 = 0;

  final i32 expect_shl_5 = -0x80000000;

  final i32 expect_shl_6 = -0x80000000;

  final i32 expect_shl_7 = 1;

  final i32 expect_shl_8 = 2;

  final i32 expect_shl_9 = -0x80000000;

  final i32 expect_shl_10 = -0x80000000;

  final i32 expect_shr_s_0 = 0;

  final i32 expect_shr_s_1 = 1;

  final i32 expect_shr_s_2 = -1;

  final i32 expect_shr_s_3 = 0x3fffffff;

  final i32 expect_shr_s_4 = -0x40000000;

  final i32 expect_shr_s_5 = 0x20000000;

  final i32 expect_shr_s_6 = 1;

  final i32 expect_shr_s_7 = 0;

  final i32 expect_shr_s_8 = 0;

  final i32 expect_shr_s_9 = 0;

  final i32 expect_shr_s_10 = 1;

  final i32 expect_shr_s_11 = -1;

  final i32 expect_shr_s_12 = -1;

  final i32 expect_shr_s_13 = -1;

  final i32 expect_shr_s_14 = -1;

  final i32 expect_shr_s_15 = -1;

  final i32 expect_shr_s_16 = -1;

  final i32 expect_shr_u_0 = 0;

  final i32 expect_shr_u_1 = 1;

  final i32 expect_shr_u_2 = 0x7fffffff;

  final i32 expect_shr_u_3 = 0x3fffffff;

  final i32 expect_shr_u_4 = 0x40000000;

  final i32 expect_shr_u_5 = 0x20000000;

  final i32 expect_shr_u_6 = 1;

  final i32 expect_shr_u_7 = 0;

  final i32 expect_shr_u_8 = 0;

  final i32 expect_shr_u_9 = 0;

  final i32 expect_shr_u_10 = 1;

  final i32 expect_shr_u_11 = 1;

  final i32 expect_shr_u_12 = -1;

  final i32 expect_shr_u_13 = 0x7fffffff;

  final i32 expect_shr_u_14 = 1;

  final i32 expect_shr_u_15 = 1;

  final i32 expect_shr_u_16 = -1;

  final i32 expect_rotl_0 = 2;

  final i32 expect_rotl_1 = 1;

  final i32 expect_rotl_2 = -1;

  final i32 expect_rotl_3 = 1;

  final i32 expect_rotl_4 = 0x579b30ed;

  final i32 expect_rotl_5 = -0x1ff23ff1;

  final i32 expect_rotl_6 = 0x183a5c76;

  final i32 expect_rotl_7 = 0x100000;

  final i32 expect_rotl_8 = 0x183a5c76;

  final i32 expect_rotl_9 = 0x579beed3;

  final i32 expect_rotl_10 = 0x579beed3;

  final i32 expect_rotl_11 = -0x80000000;

  final i32 expect_rotl_12 = 1;

  final i32 expect_rotr_0 = -0x80000000;

  final i32 expect_rotr_1 = 1;

  final i32 expect_rotr_2 = -1;

  final i32 expect_rotr_3 = 1;

  final i32 expect_rotr_4 = 0x7f806600;

  final i32 expect_rotr_5 = 0x8000;

  final i32 expect_rotr_6 = 0x1d860e97;

  final i32 expect_rotr_7 = 0x400;

  final i32 expect_rotr_8 = 0x1d860e97;

  final i32 expect_rotr_9 = -0x19044b2b;

  final i32 expect_rotr_10 = -0x19044b2b;

  final i32 expect_rotr_11 = 2;

  final i32 expect_rotr_12 = 1;

  final i32 expect_clz_0 = 0;

  final i32 expect_clz_1 = 32;

  final i32 expect_clz_2 = 16;

  final i32 expect_clz_3 = 24;

  final i32 expect_clz_4 = 0;

  final i32 expect_clz_5 = 31;

  final i32 expect_clz_6 = 30;

  final i32 expect_clz_7 = 1;

  final i32 expect_ctz_0 = 0;

  final i32 expect_ctz_1 = 32;

  final i32 expect_ctz_2 = 15;

  final i32 expect_ctz_3 = 16;

  final i32 expect_ctz_4 = 31;

  final i32 expect_ctz_5 = 0;

  final i32 expect_popcnt_0 = 32;

  final i32 expect_popcnt_1 = 0;

  final i32 expect_popcnt_2 = 1;

  final i32 expect_popcnt_3 = 2;

  final i32 expect_popcnt_4 = 31;

  final i32 expect_popcnt_5 = 16;

  final i32 expect_popcnt_6 = 16;

  final i32 expect_popcnt_7 = 24;

  final i32 expect_extend8_s_0 = 0;

  final i32 expect_extend8_s_1 = 127;

  final i32 expect_extend8_s_2 = -128;

  final i32 expect_extend8_s_3 = -1;

  final i32 expect_extend8_s_4 = 0;

  final i32 expect_extend8_s_5 = -128;

  final i32 expect_extend8_s_6 = -1;

  final i32 expect_extend16_s_0 = 0;

  final i32 expect_extend16_s_1 = 0x7fff;

  final i32 expect_extend16_s_2 = -0x8000;

  final i32 expect_extend16_s_3 = -1;

  final i32 expect_extend16_s_4 = 0;

  final i32 expect_extend16_s_5 = -0x8000;

  final i32 expect_extend16_s_6 = -1;

  final i32 expect_eqz_0 = 1;

  final i32 expect_eqz_1 = 0;

  final i32 expect_eqz_2 = 0;

  final i32 expect_eqz_3 = 0;

  final i32 expect_eqz_4 = 0;

  final i32 expect_eq_0 = 1;

  final i32 expect_eq_1 = 1;

  final i32 expect_eq_2 = 0;

  final i32 expect_eq_3 = 1;

  final i32 expect_eq_4 = 1;

  final i32 expect_eq_5 = 1;

  final i32 expect_eq_6 = 0;

  final i32 expect_eq_7 = 0;

  final i32 expect_eq_8 = 0;

  final i32 expect_eq_9 = 0;

  final i32 expect_eq_10 = 0;

  final i32 expect_eq_11 = 0;

  final i32 expect_eq_12 = 0;

  final i32 expect_eq_13 = 0;

  final i32 expect_ne_0 = 0;

  final i32 expect_ne_1 = 0;

  final i32 expect_ne_2 = 1;

  final i32 expect_ne_3 = 0;

  final i32 expect_ne_4 = 0;

  final i32 expect_ne_5 = 0;

  final i32 expect_ne_6 = 1;

  final i32 expect_ne_7 = 1;

  final i32 expect_ne_8 = 1;

  final i32 expect_ne_9 = 1;

  final i32 expect_ne_10 = 1;

  final i32 expect_ne_11 = 1;

  final i32 expect_ne_12 = 1;

  final i32 expect_ne_13 = 1;

  final i32 expect_lt_s_0 = 0;

  final i32 expect_lt_s_1 = 0;

  final i32 expect_lt_s_2 = 1;

  final i32 expect_lt_s_3 = 0;

  final i32 expect_lt_s_4 = 0;

  final i32 expect_lt_s_5 = 0;

  final i32 expect_lt_s_6 = 0;

  final i32 expect_lt_s_7 = 1;

  final i32 expect_lt_s_8 = 1;

  final i32 expect_lt_s_9 = 0;

  final i32 expect_lt_s_10 = 1;

  final i32 expect_lt_s_11 = 0;

  final i32 expect_lt_s_12 = 1;

  final i32 expect_lt_s_13 = 0;

  final i32 expect_lt_u_0 = 0;

  final i32 expect_lt_u_1 = 0;

  final i32 expect_lt_u_2 = 0;

  final i32 expect_lt_u_3 = 0;

  final i32 expect_lt_u_4 = 0;

  final i32 expect_lt_u_5 = 0;

  final i32 expect_lt_u_6 = 0;

  final i32 expect_lt_u_7 = 1;

  final i32 expect_lt_u_8 = 0;

  final i32 expect_lt_u_9 = 1;

  final i32 expect_lt_u_10 = 1;

  final i32 expect_lt_u_11 = 0;

  final i32 expect_lt_u_12 = 0;

  final i32 expect_lt_u_13 = 1;

  final i32 expect_le_s_0 = 1;

  final i32 expect_le_s_1 = 1;

  final i32 expect_le_s_2 = 1;

  final i32 expect_le_s_3 = 1;

  final i32 expect_le_s_4 = 1;

  final i32 expect_le_s_5 = 1;

  final i32 expect_le_s_6 = 0;

  final i32 expect_le_s_7 = 1;

  final i32 expect_le_s_8 = 1;

  final i32 expect_le_s_9 = 0;

  final i32 expect_le_s_10 = 1;

  final i32 expect_le_s_11 = 0;

  final i32 expect_le_s_12 = 1;

  final i32 expect_le_s_13 = 0;

  final i32 expect_le_u_0 = 1;

  final i32 expect_le_u_1 = 1;

  final i32 expect_le_u_2 = 0;

  final i32 expect_le_u_3 = 1;

  final i32 expect_le_u_4 = 1;

  final i32 expect_le_u_5 = 1;

  final i32 expect_le_u_6 = 0;

  final i32 expect_le_u_7 = 1;

  final i32 expect_le_u_8 = 0;

  final i32 expect_le_u_9 = 1;

  final i32 expect_le_u_10 = 1;

  final i32 expect_le_u_11 = 0;

  final i32 expect_le_u_12 = 0;

  final i32 expect_le_u_13 = 1;

  final i32 expect_gt_s_0 = 0;

  final i32 expect_gt_s_1 = 0;

  final i32 expect_gt_s_2 = 0;

  final i32 expect_gt_s_3 = 0;

  final i32 expect_gt_s_4 = 0;

  final i32 expect_gt_s_5 = 0;

  final i32 expect_gt_s_6 = 1;

  final i32 expect_gt_s_7 = 0;

  final i32 expect_gt_s_8 = 0;

  final i32 expect_gt_s_9 = 1;

  final i32 expect_gt_s_10 = 0;

  final i32 expect_gt_s_11 = 1;

  final i32 expect_gt_s_12 = 0;

  final i32 expect_gt_s_13 = 1;

  final i32 expect_gt_u_0 = 0;

  final i32 expect_gt_u_1 = 0;

  final i32 expect_gt_u_2 = 1;

  final i32 expect_gt_u_3 = 0;

  final i32 expect_gt_u_4 = 0;

  final i32 expect_gt_u_5 = 0;

  final i32 expect_gt_u_6 = 1;

  final i32 expect_gt_u_7 = 0;

  final i32 expect_gt_u_8 = 1;

  final i32 expect_gt_u_9 = 0;

  final i32 expect_gt_u_10 = 0;

  final i32 expect_gt_u_11 = 1;

  final i32 expect_gt_u_12 = 1;

  final i32 expect_gt_u_13 = 0;

  final i32 expect_ge_s_0 = 1;

  final i32 expect_ge_s_1 = 1;

  final i32 expect_ge_s_2 = 0;

  final i32 expect_ge_s_3 = 1;

  final i32 expect_ge_s_4 = 1;

  final i32 expect_ge_s_5 = 1;

  final i32 expect_ge_s_6 = 1;

  final i32 expect_ge_s_7 = 0;

  final i32 expect_ge_s_8 = 0;

  final i32 expect_ge_s_9 = 1;

  final i32 expect_ge_s_10 = 0;

  final i32 expect_ge_s_11 = 1;

  final i32 expect_ge_s_12 = 0;

  final i32 expect_ge_s_13 = 1;

  final i32 expect_ge_u_0 = 1;

  final i32 expect_ge_u_1 = 1;

  final i32 expect_ge_u_2 = 1;

  final i32 expect_ge_u_3 = 1;

  final i32 expect_ge_u_4 = 1;

  final i32 expect_ge_u_5 = 1;

  final i32 expect_ge_u_6 = 1;

  final i32 expect_ge_u_7 = 0;

  final i32 expect_ge_u_8 = 1;

  final i32 expect_ge_u_9 = 0;

  final i32 expect_ge_u_10 = 0;

  final i32 expect_ge_u_11 = 1;

  final i32 expect_ge_u_12 = 1;

  final i32 expect_ge_u_13 = 0;
}
