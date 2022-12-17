// Generated from test/wasm/i64.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

void main() {
  group('i64', () {
    late Module module;

    setUp(() {
      module = Module();
    });

    test('test_add_0', () {
      expect(module.test_add_0(), module.expect_add_0);
    });

    test('test_add_1', () {
      expect(module.test_add_1(), module.expect_add_1);
    });

    test('test_add_2', () {
      expect(module.test_add_2(), module.expect_add_2);
    });

    test('test_add_3', () {
      expect(module.test_add_3(), module.expect_add_3);
    });

    test('test_add_4', () {
      expect(module.test_add_4(), module.expect_add_4);
    });

    test('test_add_5', () {
      expect(module.test_add_5(), module.expect_add_5);
    });

    test('test_add_6', () {
      expect(module.test_add_6(), module.expect_add_6);
    });

    test('test_add_7', () {
      expect(module.test_add_7(), module.expect_add_7);
    });

    test('test_sub_0', () {
      expect(module.test_sub_0(), module.expect_sub_0);
    });

    test('test_sub_1', () {
      expect(module.test_sub_1(), module.expect_sub_1);
    });

    test('test_sub_2', () {
      expect(module.test_sub_2(), module.expect_sub_2);
    });

    test('test_sub_3', () {
      expect(module.test_sub_3(), module.expect_sub_3);
    });

    test('test_sub_4', () {
      expect(module.test_sub_4(), module.expect_sub_4);
    });

    test('test_sub_5', () {
      expect(module.test_sub_5(), module.expect_sub_5);
    });

    test('test_sub_6', () {
      expect(module.test_sub_6(), module.expect_sub_6);
    });

    test('test_mul_0', () {
      expect(module.test_mul_0(), module.expect_mul_0);
    });

    test('test_mul_1', () {
      expect(module.test_mul_1(), module.expect_mul_1);
    });

    test('test_mul_2', () {
      expect(module.test_mul_2(), module.expect_mul_2);
    });

    test('test_mul_3', () {
      expect(module.test_mul_3(), module.expect_mul_3);
    });

    test('test_mul_4', () {
      expect(module.test_mul_4(), module.expect_mul_4);
    });

    test('test_mul_5', () {
      expect(module.test_mul_5(), module.expect_mul_5);
    });

    test('test_mul_6', () {
      expect(module.test_mul_6(), module.expect_mul_6);
    });

    test('test_mul_7', () {
      expect(module.test_mul_7(), module.expect_mul_7);
    });

    test('test_mul_8', () {
      expect(module.test_mul_8(), module.expect_mul_8);
    });

    test('test_div_s_4', () {
      expect(module.test_div_s_4(), module.expect_div_s_4);
    });

    test('test_div_s_5', () {
      expect(module.test_div_s_5(), module.expect_div_s_5);
    });

    test('test_div_s_6', () {
      expect(module.test_div_s_6(), module.expect_div_s_6);
    });

    test('test_div_s_7', () {
      expect(module.test_div_s_7(), module.expect_div_s_7);
    });

    test('test_div_s_8', () {
      expect(module.test_div_s_8(), module.expect_div_s_8);
    });

    test('test_div_s_9', () {
      expect(module.test_div_s_9(), module.expect_div_s_9);
    });

    test('test_div_s_10', () {
      expect(module.test_div_s_10(), module.expect_div_s_10);
    });

    test('test_div_s_11', () {
      expect(module.test_div_s_11(), module.expect_div_s_11);
    });

    test('test_div_s_12', () {
      expect(module.test_div_s_12(), module.expect_div_s_12);
    });

    test('test_div_s_13', () {
      expect(module.test_div_s_13(), module.expect_div_s_13);
    });

    test('test_div_s_14', () {
      expect(module.test_div_s_14(), module.expect_div_s_14);
    });

    test('test_div_s_15', () {
      expect(module.test_div_s_15(), module.expect_div_s_15);
    });

    test('test_div_s_16', () {
      expect(module.test_div_s_16(), module.expect_div_s_16);
    });

    test('test_div_s_17', () {
      expect(module.test_div_s_17(), module.expect_div_s_17);
    });

    test('test_div_s_18', () {
      expect(module.test_div_s_18(), module.expect_div_s_18);
    });

    test('test_div_s_19', () {
      expect(module.test_div_s_19(), module.expect_div_s_19);
    });

    test('test_div_u_2', () {
      expect(module.test_div_u_2(), module.expect_div_u_2);
    });

    test('test_div_u_3', () {
      expect(module.test_div_u_3(), module.expect_div_u_3);
    });

    test('test_div_u_4', () {
      expect(module.test_div_u_4(), module.expect_div_u_4);
    });

    test('test_div_u_5', () {
      expect(module.test_div_u_5(), module.expect_div_u_5);
    });

    test('test_div_u_6', () {
      expect(module.test_div_u_6(), module.expect_div_u_6);
    });

    test('test_div_u_7', () {
      expect(module.test_div_u_7(), module.expect_div_u_7);
    });

    test('test_div_u_8', () {
      expect(module.test_div_u_8(), module.expect_div_u_8);
    });

    test('test_div_u_9', () {
      expect(module.test_div_u_9(), module.expect_div_u_9);
    });

    test('test_div_u_10', () {
      expect(module.test_div_u_10(), module.expect_div_u_10);
    });

    test('test_div_u_11', () {
      expect(module.test_div_u_11(), module.expect_div_u_11);
    });

    test('test_div_u_12', () {
      expect(module.test_div_u_12(), module.expect_div_u_12);
    });

    test('test_div_u_13', () {
      expect(module.test_div_u_13(), module.expect_div_u_13);
    });

    test('test_div_u_14', () {
      expect(module.test_div_u_14(), module.expect_div_u_14);
    });

    test('test_div_u_15', () {
      expect(module.test_div_u_15(), module.expect_div_u_15);
    });

    test('test_rem_s_2', () {
      expect(module.test_rem_s_2(), module.expect_rem_s_2);
    });

    test('test_rem_s_3', () {
      expect(module.test_rem_s_3(), module.expect_rem_s_3);
    });

    test('test_rem_s_4', () {
      expect(module.test_rem_s_4(), module.expect_rem_s_4);
    });

    test('test_rem_s_5', () {
      expect(module.test_rem_s_5(), module.expect_rem_s_5);
    });

    test('test_rem_s_6', () {
      expect(module.test_rem_s_6(), module.expect_rem_s_6);
    });

    test('test_rem_s_7', () {
      expect(module.test_rem_s_7(), module.expect_rem_s_7);
    });

    test('test_rem_s_8', () {
      expect(module.test_rem_s_8(), module.expect_rem_s_8);
    });

    test('test_rem_s_9', () {
      expect(module.test_rem_s_9(), module.expect_rem_s_9);
    });

    test('test_rem_s_10', () {
      expect(module.test_rem_s_10(), module.expect_rem_s_10);
    });

    test('test_rem_s_11', () {
      expect(module.test_rem_s_11(), module.expect_rem_s_11);
    });

    test('test_rem_s_12', () {
      expect(module.test_rem_s_12(), module.expect_rem_s_12);
    });

    test('test_rem_s_13', () {
      expect(module.test_rem_s_13(), module.expect_rem_s_13);
    });

    test('test_rem_s_14', () {
      expect(module.test_rem_s_14(), module.expect_rem_s_14);
    });

    test('test_rem_s_15', () {
      expect(module.test_rem_s_15(), module.expect_rem_s_15);
    });

    test('test_rem_s_16', () {
      expect(module.test_rem_s_16(), module.expect_rem_s_16);
    });

    test('test_rem_s_17', () {
      expect(module.test_rem_s_17(), module.expect_rem_s_17);
    });

    test('test_rem_s_18', () {
      expect(module.test_rem_s_18(), module.expect_rem_s_18);
    });

    test('test_rem_s_19', () {
      expect(module.test_rem_s_19(), module.expect_rem_s_19);
    });

    test('test_rem_u_2', () {
      expect(module.test_rem_u_2(), module.expect_rem_u_2);
    });

    test('test_rem_u_3', () {
      expect(module.test_rem_u_3(), module.expect_rem_u_3);
    });

    test('test_rem_u_4', () {
      expect(module.test_rem_u_4(), module.expect_rem_u_4);
    });

    test('test_rem_u_5', () {
      expect(module.test_rem_u_5(), module.expect_rem_u_5);
    });

    test('test_rem_u_6', () {
      expect(module.test_rem_u_6(), module.expect_rem_u_6);
    });

    test('test_rem_u_7', () {
      expect(module.test_rem_u_7(), module.expect_rem_u_7);
    });

    test('test_rem_u_8', () {
      expect(module.test_rem_u_8(), module.expect_rem_u_8);
    });

    test('test_rem_u_9', () {
      expect(module.test_rem_u_9(), module.expect_rem_u_9);
    });

    test('test_rem_u_10', () {
      expect(module.test_rem_u_10(), module.expect_rem_u_10);
    });

    test('test_rem_u_11', () {
      expect(module.test_rem_u_11(), module.expect_rem_u_11);
    });

    test('test_rem_u_12', () {
      expect(module.test_rem_u_12(), module.expect_rem_u_12);
    });

    test('test_rem_u_13', () {
      expect(module.test_rem_u_13(), module.expect_rem_u_13);
    });

    test('test_rem_u_14', () {
      expect(module.test_rem_u_14(), module.expect_rem_u_14);
    });

    test('test_rem_u_15', () {
      expect(module.test_rem_u_15(), module.expect_rem_u_15);
    });

    test('test_and_0', () {
      expect(module.test_and_0(), module.expect_and_0);
    });

    test('test_and_1', () {
      expect(module.test_and_1(), module.expect_and_1);
    });

    test('test_and_2', () {
      expect(module.test_and_2(), module.expect_and_2);
    });

    test('test_and_3', () {
      expect(module.test_and_3(), module.expect_and_3);
    });

    test('test_and_4', () {
      expect(module.test_and_4(), module.expect_and_4);
    });

    test('test_and_5', () {
      expect(module.test_and_5(), module.expect_and_5);
    });

    test('test_and_6', () {
      expect(module.test_and_6(), module.expect_and_6);
    });

    test('test_and_7', () {
      expect(module.test_and_7(), module.expect_and_7);
    });

    test('test_or_0', () {
      expect(module.test_or_0(), module.expect_or_0);
    });

    test('test_or_1', () {
      expect(module.test_or_1(), module.expect_or_1);
    });

    test('test_or_2', () {
      expect(module.test_or_2(), module.expect_or_2);
    });

    test('test_or_3', () {
      expect(module.test_or_3(), module.expect_or_3);
    });

    test('test_or_4', () {
      expect(module.test_or_4(), module.expect_or_4);
    });

    test('test_or_5', () {
      expect(module.test_or_5(), module.expect_or_5);
    });

    test('test_or_6', () {
      expect(module.test_or_6(), module.expect_or_6);
    });

    test('test_or_7', () {
      expect(module.test_or_7(), module.expect_or_7);
    });

    test('test_xor_0', () {
      expect(module.test_xor_0(), module.expect_xor_0);
    });

    test('test_xor_1', () {
      expect(module.test_xor_1(), module.expect_xor_1);
    });

    test('test_xor_2', () {
      expect(module.test_xor_2(), module.expect_xor_2);
    });

    test('test_xor_3', () {
      expect(module.test_xor_3(), module.expect_xor_3);
    });

    test('test_xor_4', () {
      expect(module.test_xor_4(), module.expect_xor_4);
    });

    test('test_xor_5', () {
      expect(module.test_xor_5(), module.expect_xor_5);
    });

    test('test_xor_6', () {
      expect(module.test_xor_6(), module.expect_xor_6);
    });

    test('test_xor_7', () {
      expect(module.test_xor_7(), module.expect_xor_7);
    });

    test('test_xor_8', () {
      expect(module.test_xor_8(), module.expect_xor_8);
    });

    test('test_xor_9', () {
      expect(module.test_xor_9(), module.expect_xor_9);
    });

    test('test_shl_0', () {
      expect(module.test_shl_0(), module.expect_shl_0);
    });

    test('test_shl_1', () {
      expect(module.test_shl_1(), module.expect_shl_1);
    });

    test('test_shl_2', () {
      expect(module.test_shl_2(), module.expect_shl_2);
    });

    test('test_shl_3', () {
      expect(module.test_shl_3(), module.expect_shl_3);
    });

    test('test_shl_4', () {
      expect(module.test_shl_4(), module.expect_shl_4);
    });

    test('test_shl_5', () {
      expect(module.test_shl_5(), module.expect_shl_5);
    });

    test('test_shl_6', () {
      expect(module.test_shl_6(), module.expect_shl_6);
    });

    test('test_shl_7', () {
      expect(module.test_shl_7(), module.expect_shl_7);
    });

    test('test_shl_8', () {
      expect(module.test_shl_8(), module.expect_shl_8);
    });

    test('test_shl_9', () {
      expect(module.test_shl_9(), module.expect_shl_9);
    });

    test('test_shl_10', () {
      expect(module.test_shl_10(), module.expect_shl_10);
    });

    test('test_shr_s_0', () {
      expect(module.test_shr_s_0(), module.expect_shr_s_0);
    });

    test('test_shr_s_1', () {
      expect(module.test_shr_s_1(), module.expect_shr_s_1);
    });

    test('test_shr_s_2', () {
      expect(module.test_shr_s_2(), module.expect_shr_s_2);
    });

    test('test_shr_s_3', () {
      expect(module.test_shr_s_3(), module.expect_shr_s_3);
    });

    test('test_shr_s_4', () {
      expect(module.test_shr_s_4(), module.expect_shr_s_4);
    });

    test('test_shr_s_5', () {
      expect(module.test_shr_s_5(), module.expect_shr_s_5);
    });

    test('test_shr_s_6', () {
      expect(module.test_shr_s_6(), module.expect_shr_s_6);
    });

    test('test_shr_s_7', () {
      expect(module.test_shr_s_7(), module.expect_shr_s_7);
    });

    test('test_shr_s_8', () {
      expect(module.test_shr_s_8(), module.expect_shr_s_8);
    });

    test('test_shr_s_9', () {
      expect(module.test_shr_s_9(), module.expect_shr_s_9);
    });

    test('test_shr_s_10', () {
      expect(module.test_shr_s_10(), module.expect_shr_s_10);
    });

    test('test_shr_s_11', () {
      expect(module.test_shr_s_11(), module.expect_shr_s_11);
    });

    test('test_shr_s_12', () {
      expect(module.test_shr_s_12(), module.expect_shr_s_12);
    });

    test('test_shr_s_13', () {
      expect(module.test_shr_s_13(), module.expect_shr_s_13);
    });

    test('test_shr_s_14', () {
      expect(module.test_shr_s_14(), module.expect_shr_s_14);
    });

    test('test_shr_s_15', () {
      expect(module.test_shr_s_15(), module.expect_shr_s_15);
    });

    test('test_shr_s_16', () {
      expect(module.test_shr_s_16(), module.expect_shr_s_16);
    });

    test('test_shr_u_0', () {
      expect(module.test_shr_u_0(), module.expect_shr_u_0);
    });

    test('test_shr_u_1', () {
      expect(module.test_shr_u_1(), module.expect_shr_u_1);
    });

    test('test_shr_u_2', () {
      expect(module.test_shr_u_2(), module.expect_shr_u_2);
    });

    test('test_shr_u_3', () {
      expect(module.test_shr_u_3(), module.expect_shr_u_3);
    });

    test('test_shr_u_4', () {
      expect(module.test_shr_u_4(), module.expect_shr_u_4);
    });

    test('test_shr_u_5', () {
      expect(module.test_shr_u_5(), module.expect_shr_u_5);
    });

    test('test_shr_u_6', () {
      expect(module.test_shr_u_6(), module.expect_shr_u_6);
    });

    test('test_shr_u_7', () {
      expect(module.test_shr_u_7(), module.expect_shr_u_7);
    });

    test('test_shr_u_8', () {
      expect(module.test_shr_u_8(), module.expect_shr_u_8);
    });

    test('test_shr_u_9', () {
      expect(module.test_shr_u_9(), module.expect_shr_u_9);
    });

    test('test_shr_u_10', () {
      expect(module.test_shr_u_10(), module.expect_shr_u_10);
    });

    test('test_shr_u_11', () {
      expect(module.test_shr_u_11(), module.expect_shr_u_11);
    });

    test('test_shr_u_12', () {
      expect(module.test_shr_u_12(), module.expect_shr_u_12);
    });

    test('test_shr_u_13', () {
      expect(module.test_shr_u_13(), module.expect_shr_u_13);
    });

    test('test_shr_u_14', () {
      expect(module.test_shr_u_14(), module.expect_shr_u_14);
    });

    test('test_shr_u_15', () {
      expect(module.test_shr_u_15(), module.expect_shr_u_15);
    });

    test('test_shr_u_16', () {
      expect(module.test_shr_u_16(), module.expect_shr_u_16);
    });

    test('test_rotl_0', () {
      expect(module.test_rotl_0(), module.expect_rotl_0);
    });

    test('test_rotl_1', () {
      expect(module.test_rotl_1(), module.expect_rotl_1);
    });

    test('test_rotl_2', () {
      expect(module.test_rotl_2(), module.expect_rotl_2);
    });

    test('test_rotl_3', () {
      expect(module.test_rotl_3(), module.expect_rotl_3);
    });

    test('test_rotl_4', () {
      expect(module.test_rotl_4(), module.expect_rotl_4);
    });

    test('test_rotl_5', () {
      expect(module.test_rotl_5(), module.expect_rotl_5);
    });

    test('test_rotl_6', () {
      expect(module.test_rotl_6(), module.expect_rotl_6);
    });

    test('test_rotl_7', () {
      expect(module.test_rotl_7(), module.expect_rotl_7);
    });

    test('test_rotl_8', () {
      expect(module.test_rotl_8(), module.expect_rotl_8);
    });

    test('test_rotl_9', () {
      expect(module.test_rotl_9(), module.expect_rotl_9);
    });

    test('test_rotl_10', () {
      expect(module.test_rotl_10(), module.expect_rotl_10);
    });

    test('test_rotl_11', () {
      expect(module.test_rotl_11(), module.expect_rotl_11);
    });

    test('test_rotl_12', () {
      expect(module.test_rotl_12(), module.expect_rotl_12);
    });

    test('test_rotr_0', () {
      expect(module.test_rotr_0(), module.expect_rotr_0);
    });

    test('test_rotr_1', () {
      expect(module.test_rotr_1(), module.expect_rotr_1);
    });

    test('test_rotr_2', () {
      expect(module.test_rotr_2(), module.expect_rotr_2);
    });

    test('test_rotr_3', () {
      expect(module.test_rotr_3(), module.expect_rotr_3);
    });

    test('test_rotr_4', () {
      expect(module.test_rotr_4(), module.expect_rotr_4);
    });

    test('test_rotr_5', () {
      expect(module.test_rotr_5(), module.expect_rotr_5);
    });

    test('test_rotr_6', () {
      expect(module.test_rotr_6(), module.expect_rotr_6);
    });

    test('test_rotr_7', () {
      expect(module.test_rotr_7(), module.expect_rotr_7);
    });

    test('test_rotr_8', () {
      expect(module.test_rotr_8(), module.expect_rotr_8);
    });

    test('test_rotr_9', () {
      expect(module.test_rotr_9(), module.expect_rotr_9);
    });

    test('test_rotr_10', () {
      expect(module.test_rotr_10(), module.expect_rotr_10);
    });

    test('test_rotr_11', () {
      expect(module.test_rotr_11(), module.expect_rotr_11);
    });

    test('test_rotr_12', () {
      expect(module.test_rotr_12(), module.expect_rotr_12);
    });

    test('test_clz_0', () {
      expect(module.test_clz_0(), module.expect_clz_0);
    });

    test('test_clz_1', () {
      expect(module.test_clz_1(), module.expect_clz_1);
    });

    test('test_clz_2', () {
      expect(module.test_clz_2(), module.expect_clz_2);
    });

    test('test_clz_3', () {
      expect(module.test_clz_3(), module.expect_clz_3);
    });

    test('test_clz_4', () {
      expect(module.test_clz_4(), module.expect_clz_4);
    });

    test('test_clz_5', () {
      expect(module.test_clz_5(), module.expect_clz_5);
    });

    test('test_clz_6', () {
      expect(module.test_clz_6(), module.expect_clz_6);
    });

    test('test_clz_7', () {
      expect(module.test_clz_7(), module.expect_clz_7);
    });

    test('test_ctz_0', () {
      expect(module.test_ctz_0(), module.expect_ctz_0);
    });

    test('test_ctz_1', () {
      expect(module.test_ctz_1(), module.expect_ctz_1);
    });

    test('test_ctz_2', () {
      expect(module.test_ctz_2(), module.expect_ctz_2);
    });

    test('test_ctz_3', () {
      expect(module.test_ctz_3(), module.expect_ctz_3);
    });

    test('test_ctz_4', () {
      expect(module.test_ctz_4(), module.expect_ctz_4);
    });

    test('test_ctz_5', () {
      expect(module.test_ctz_5(), module.expect_ctz_5);
    });

    test('test_popcnt_0', () {
      expect(module.test_popcnt_0(), module.expect_popcnt_0);
    });

    test('test_popcnt_1', () {
      expect(module.test_popcnt_1(), module.expect_popcnt_1);
    });

    test('test_popcnt_2', () {
      expect(module.test_popcnt_2(), module.expect_popcnt_2);
    });

    test('test_popcnt_3', () {
      expect(module.test_popcnt_3(), module.expect_popcnt_3);
    });

    test('test_popcnt_4', () {
      expect(module.test_popcnt_4(), module.expect_popcnt_4);
    });

    test('test_popcnt_5', () {
      expect(module.test_popcnt_5(), module.expect_popcnt_5);
    });

    test('test_popcnt_6', () {
      expect(module.test_popcnt_6(), module.expect_popcnt_6);
    });

    test('test_popcnt_7', () {
      expect(module.test_popcnt_7(), module.expect_popcnt_7);
    });

    test('test_extend8_s_0', () {
      expect(module.test_extend8_s_0(), module.expect_extend8_s_0);
    });

    test('test_extend8_s_1', () {
      expect(module.test_extend8_s_1(), module.expect_extend8_s_1);
    });

    test('test_extend8_s_2', () {
      expect(module.test_extend8_s_2(), module.expect_extend8_s_2);
    });

    test('test_extend8_s_3', () {
      expect(module.test_extend8_s_3(), module.expect_extend8_s_3);
    });

    test('test_extend8_s_4', () {
      expect(module.test_extend8_s_4(), module.expect_extend8_s_4);
    });

    test('test_extend8_s_5', () {
      expect(module.test_extend8_s_5(), module.expect_extend8_s_5);
    });

    test('test_extend8_s_6', () {
      expect(module.test_extend8_s_6(), module.expect_extend8_s_6);
    });

    test('test_extend16_s_0', () {
      expect(module.test_extend16_s_0(), module.expect_extend16_s_0);
    });

    test('test_extend16_s_1', () {
      expect(module.test_extend16_s_1(), module.expect_extend16_s_1);
    });

    test('test_extend16_s_2', () {
      expect(module.test_extend16_s_2(), module.expect_extend16_s_2);
    });

    test('test_extend16_s_3', () {
      expect(module.test_extend16_s_3(), module.expect_extend16_s_3);
    });

    test('test_extend16_s_4', () {
      expect(module.test_extend16_s_4(), module.expect_extend16_s_4);
    });

    test('test_extend16_s_5', () {
      expect(module.test_extend16_s_5(), module.expect_extend16_s_5);
    });

    test('test_extend16_s_6', () {
      expect(module.test_extend16_s_6(), module.expect_extend16_s_6);
    });

    test('test_extend32_s_0', () {
      expect(module.test_extend32_s_0(), module.expect_extend32_s_0);
    });

    test('test_extend32_s_1', () {
      expect(module.test_extend32_s_1(), module.expect_extend32_s_1);
    });

    test('test_extend32_s_2', () {
      expect(module.test_extend32_s_2(), module.expect_extend32_s_2);
    });

    test('test_extend32_s_3', () {
      expect(module.test_extend32_s_3(), module.expect_extend32_s_3);
    });

    test('test_extend32_s_4', () {
      expect(module.test_extend32_s_4(), module.expect_extend32_s_4);
    });

    test('test_extend32_s_5', () {
      expect(module.test_extend32_s_5(), module.expect_extend32_s_5);
    });

    test('test_extend32_s_6', () {
      expect(module.test_extend32_s_6(), module.expect_extend32_s_6);
    });

    test('test_extend32_s_7', () {
      expect(module.test_extend32_s_7(), module.expect_extend32_s_7);
    });

    test('test_extend32_s_8', () {
      expect(module.test_extend32_s_8(), module.expect_extend32_s_8);
    });

    test('test_extend32_s_9', () {
      expect(module.test_extend32_s_9(), module.expect_extend32_s_9);
    });

    test('test_eqz_0', () {
      expect(module.test_eqz_0(), module.expect_eqz_0);
    });

    test('test_eqz_1', () {
      expect(module.test_eqz_1(), module.expect_eqz_1);
    });

    test('test_eqz_2', () {
      expect(module.test_eqz_2(), module.expect_eqz_2);
    });

    test('test_eqz_3', () {
      expect(module.test_eqz_3(), module.expect_eqz_3);
    });

    test('test_eqz_4', () {
      expect(module.test_eqz_4(), module.expect_eqz_4);
    });

    test('test_eq_0', () {
      expect(module.test_eq_0(), module.expect_eq_0);
    });

    test('test_eq_1', () {
      expect(module.test_eq_1(), module.expect_eq_1);
    });

    test('test_eq_2', () {
      expect(module.test_eq_2(), module.expect_eq_2);
    });

    test('test_eq_3', () {
      expect(module.test_eq_3(), module.expect_eq_3);
    });

    test('test_eq_4', () {
      expect(module.test_eq_4(), module.expect_eq_4);
    });

    test('test_eq_5', () {
      expect(module.test_eq_5(), module.expect_eq_5);
    });

    test('test_eq_6', () {
      expect(module.test_eq_6(), module.expect_eq_6);
    });

    test('test_eq_7', () {
      expect(module.test_eq_7(), module.expect_eq_7);
    });

    test('test_eq_8', () {
      expect(module.test_eq_8(), module.expect_eq_8);
    });

    test('test_eq_9', () {
      expect(module.test_eq_9(), module.expect_eq_9);
    });

    test('test_eq_10', () {
      expect(module.test_eq_10(), module.expect_eq_10);
    });

    test('test_eq_11', () {
      expect(module.test_eq_11(), module.expect_eq_11);
    });

    test('test_eq_12', () {
      expect(module.test_eq_12(), module.expect_eq_12);
    });

    test('test_eq_13', () {
      expect(module.test_eq_13(), module.expect_eq_13);
    });

    test('test_ne_0', () {
      expect(module.test_ne_0(), module.expect_ne_0);
    });

    test('test_ne_1', () {
      expect(module.test_ne_1(), module.expect_ne_1);
    });

    test('test_ne_2', () {
      expect(module.test_ne_2(), module.expect_ne_2);
    });

    test('test_ne_3', () {
      expect(module.test_ne_3(), module.expect_ne_3);
    });

    test('test_ne_4', () {
      expect(module.test_ne_4(), module.expect_ne_4);
    });

    test('test_ne_5', () {
      expect(module.test_ne_5(), module.expect_ne_5);
    });

    test('test_ne_6', () {
      expect(module.test_ne_6(), module.expect_ne_6);
    });

    test('test_ne_7', () {
      expect(module.test_ne_7(), module.expect_ne_7);
    });

    test('test_ne_8', () {
      expect(module.test_ne_8(), module.expect_ne_8);
    });

    test('test_ne_9', () {
      expect(module.test_ne_9(), module.expect_ne_9);
    });

    test('test_ne_10', () {
      expect(module.test_ne_10(), module.expect_ne_10);
    });

    test('test_ne_11', () {
      expect(module.test_ne_11(), module.expect_ne_11);
    });

    test('test_ne_12', () {
      expect(module.test_ne_12(), module.expect_ne_12);
    });

    test('test_ne_13', () {
      expect(module.test_ne_13(), module.expect_ne_13);
    });

    test('test_lt_s_0', () {
      expect(module.test_lt_s_0(), module.expect_lt_s_0);
    });

    test('test_lt_s_1', () {
      expect(module.test_lt_s_1(), module.expect_lt_s_1);
    });

    test('test_lt_s_2', () {
      expect(module.test_lt_s_2(), module.expect_lt_s_2);
    });

    test('test_lt_s_3', () {
      expect(module.test_lt_s_3(), module.expect_lt_s_3);
    });

    test('test_lt_s_4', () {
      expect(module.test_lt_s_4(), module.expect_lt_s_4);
    });

    test('test_lt_s_5', () {
      expect(module.test_lt_s_5(), module.expect_lt_s_5);
    });

    test('test_lt_s_6', () {
      expect(module.test_lt_s_6(), module.expect_lt_s_6);
    });

    test('test_lt_s_7', () {
      expect(module.test_lt_s_7(), module.expect_lt_s_7);
    });

    test('test_lt_s_8', () {
      expect(module.test_lt_s_8(), module.expect_lt_s_8);
    });

    test('test_lt_s_9', () {
      expect(module.test_lt_s_9(), module.expect_lt_s_9);
    });

    test('test_lt_s_10', () {
      expect(module.test_lt_s_10(), module.expect_lt_s_10);
    });

    test('test_lt_s_11', () {
      expect(module.test_lt_s_11(), module.expect_lt_s_11);
    });

    test('test_lt_s_12', () {
      expect(module.test_lt_s_12(), module.expect_lt_s_12);
    });

    test('test_lt_s_13', () {
      expect(module.test_lt_s_13(), module.expect_lt_s_13);
    });

    test('test_lt_u_0', () {
      expect(module.test_lt_u_0(), module.expect_lt_u_0);
    });

    test('test_lt_u_1', () {
      expect(module.test_lt_u_1(), module.expect_lt_u_1);
    });

    test('test_lt_u_2', () {
      expect(module.test_lt_u_2(), module.expect_lt_u_2);
    });

    test('test_lt_u_3', () {
      expect(module.test_lt_u_3(), module.expect_lt_u_3);
    });

    test('test_lt_u_4', () {
      expect(module.test_lt_u_4(), module.expect_lt_u_4);
    });

    test('test_lt_u_5', () {
      expect(module.test_lt_u_5(), module.expect_lt_u_5);
    });

    test('test_lt_u_6', () {
      expect(module.test_lt_u_6(), module.expect_lt_u_6);
    });

    test('test_lt_u_7', () {
      expect(module.test_lt_u_7(), module.expect_lt_u_7);
    });

    test('test_lt_u_8', () {
      expect(module.test_lt_u_8(), module.expect_lt_u_8);
    });

    test('test_lt_u_9', () {
      expect(module.test_lt_u_9(), module.expect_lt_u_9);
    });

    test('test_lt_u_10', () {
      expect(module.test_lt_u_10(), module.expect_lt_u_10);
    });

    test('test_lt_u_11', () {
      expect(module.test_lt_u_11(), module.expect_lt_u_11);
    });

    test('test_lt_u_12', () {
      expect(module.test_lt_u_12(), module.expect_lt_u_12);
    });

    test('test_lt_u_13', () {
      expect(module.test_lt_u_13(), module.expect_lt_u_13);
    });

    test('test_le_s_0', () {
      expect(module.test_le_s_0(), module.expect_le_s_0);
    });

    test('test_le_s_1', () {
      expect(module.test_le_s_1(), module.expect_le_s_1);
    });

    test('test_le_s_2', () {
      expect(module.test_le_s_2(), module.expect_le_s_2);
    });

    test('test_le_s_3', () {
      expect(module.test_le_s_3(), module.expect_le_s_3);
    });

    test('test_le_s_4', () {
      expect(module.test_le_s_4(), module.expect_le_s_4);
    });

    test('test_le_s_5', () {
      expect(module.test_le_s_5(), module.expect_le_s_5);
    });

    test('test_le_s_6', () {
      expect(module.test_le_s_6(), module.expect_le_s_6);
    });

    test('test_le_s_7', () {
      expect(module.test_le_s_7(), module.expect_le_s_7);
    });

    test('test_le_s_8', () {
      expect(module.test_le_s_8(), module.expect_le_s_8);
    });

    test('test_le_s_9', () {
      expect(module.test_le_s_9(), module.expect_le_s_9);
    });

    test('test_le_s_10', () {
      expect(module.test_le_s_10(), module.expect_le_s_10);
    });

    test('test_le_s_11', () {
      expect(module.test_le_s_11(), module.expect_le_s_11);
    });

    test('test_le_s_12', () {
      expect(module.test_le_s_12(), module.expect_le_s_12);
    });

    test('test_le_s_13', () {
      expect(module.test_le_s_13(), module.expect_le_s_13);
    });

    test('test_le_u_0', () {
      expect(module.test_le_u_0(), module.expect_le_u_0);
    });

    test('test_le_u_1', () {
      expect(module.test_le_u_1(), module.expect_le_u_1);
    });

    test('test_le_u_2', () {
      expect(module.test_le_u_2(), module.expect_le_u_2);
    });

    test('test_le_u_3', () {
      expect(module.test_le_u_3(), module.expect_le_u_3);
    });

    test('test_le_u_4', () {
      expect(module.test_le_u_4(), module.expect_le_u_4);
    });

    test('test_le_u_5', () {
      expect(module.test_le_u_5(), module.expect_le_u_5);
    });

    test('test_le_u_6', () {
      expect(module.test_le_u_6(), module.expect_le_u_6);
    });

    test('test_le_u_7', () {
      expect(module.test_le_u_7(), module.expect_le_u_7);
    });

    test('test_le_u_8', () {
      expect(module.test_le_u_8(), module.expect_le_u_8);
    });

    test('test_le_u_9', () {
      expect(module.test_le_u_9(), module.expect_le_u_9);
    });

    test('test_le_u_10', () {
      expect(module.test_le_u_10(), module.expect_le_u_10);
    });

    test('test_le_u_11', () {
      expect(module.test_le_u_11(), module.expect_le_u_11);
    });

    test('test_le_u_12', () {
      expect(module.test_le_u_12(), module.expect_le_u_12);
    });

    test('test_le_u_13', () {
      expect(module.test_le_u_13(), module.expect_le_u_13);
    });

    test('test_gt_s_0', () {
      expect(module.test_gt_s_0(), module.expect_gt_s_0);
    });

    test('test_gt_s_1', () {
      expect(module.test_gt_s_1(), module.expect_gt_s_1);
    });

    test('test_gt_s_2', () {
      expect(module.test_gt_s_2(), module.expect_gt_s_2);
    });

    test('test_gt_s_3', () {
      expect(module.test_gt_s_3(), module.expect_gt_s_3);
    });

    test('test_gt_s_4', () {
      expect(module.test_gt_s_4(), module.expect_gt_s_4);
    });

    test('test_gt_s_5', () {
      expect(module.test_gt_s_5(), module.expect_gt_s_5);
    });

    test('test_gt_s_6', () {
      expect(module.test_gt_s_6(), module.expect_gt_s_6);
    });

    test('test_gt_s_7', () {
      expect(module.test_gt_s_7(), module.expect_gt_s_7);
    });

    test('test_gt_s_8', () {
      expect(module.test_gt_s_8(), module.expect_gt_s_8);
    });

    test('test_gt_s_9', () {
      expect(module.test_gt_s_9(), module.expect_gt_s_9);
    });

    test('test_gt_s_10', () {
      expect(module.test_gt_s_10(), module.expect_gt_s_10);
    });

    test('test_gt_s_11', () {
      expect(module.test_gt_s_11(), module.expect_gt_s_11);
    });

    test('test_gt_s_12', () {
      expect(module.test_gt_s_12(), module.expect_gt_s_12);
    });

    test('test_gt_s_13', () {
      expect(module.test_gt_s_13(), module.expect_gt_s_13);
    });

    test('test_gt_u_0', () {
      expect(module.test_gt_u_0(), module.expect_gt_u_0);
    });

    test('test_gt_u_1', () {
      expect(module.test_gt_u_1(), module.expect_gt_u_1);
    });

    test('test_gt_u_2', () {
      expect(module.test_gt_u_2(), module.expect_gt_u_2);
    });

    test('test_gt_u_3', () {
      expect(module.test_gt_u_3(), module.expect_gt_u_3);
    });

    test('test_gt_u_4', () {
      expect(module.test_gt_u_4(), module.expect_gt_u_4);
    });

    test('test_gt_u_5', () {
      expect(module.test_gt_u_5(), module.expect_gt_u_5);
    });

    test('test_gt_u_6', () {
      expect(module.test_gt_u_6(), module.expect_gt_u_6);
    });

    test('test_gt_u_7', () {
      expect(module.test_gt_u_7(), module.expect_gt_u_7);
    });

    test('test_gt_u_8', () {
      expect(module.test_gt_u_8(), module.expect_gt_u_8);
    });

    test('test_gt_u_9', () {
      expect(module.test_gt_u_9(), module.expect_gt_u_9);
    });

    test('test_gt_u_10', () {
      expect(module.test_gt_u_10(), module.expect_gt_u_10);
    });

    test('test_gt_u_11', () {
      expect(module.test_gt_u_11(), module.expect_gt_u_11);
    });

    test('test_gt_u_12', () {
      expect(module.test_gt_u_12(), module.expect_gt_u_12);
    });

    test('test_gt_u_13', () {
      expect(module.test_gt_u_13(), module.expect_gt_u_13);
    });

    test('test_ge_s_0', () {
      expect(module.test_ge_s_0(), module.expect_ge_s_0);
    });

    test('test_ge_s_1', () {
      expect(module.test_ge_s_1(), module.expect_ge_s_1);
    });

    test('test_ge_s_2', () {
      expect(module.test_ge_s_2(), module.expect_ge_s_2);
    });

    test('test_ge_s_3', () {
      expect(module.test_ge_s_3(), module.expect_ge_s_3);
    });

    test('test_ge_s_4', () {
      expect(module.test_ge_s_4(), module.expect_ge_s_4);
    });

    test('test_ge_s_5', () {
      expect(module.test_ge_s_5(), module.expect_ge_s_5);
    });

    test('test_ge_s_6', () {
      expect(module.test_ge_s_6(), module.expect_ge_s_6);
    });

    test('test_ge_s_7', () {
      expect(module.test_ge_s_7(), module.expect_ge_s_7);
    });

    test('test_ge_s_8', () {
      expect(module.test_ge_s_8(), module.expect_ge_s_8);
    });

    test('test_ge_s_9', () {
      expect(module.test_ge_s_9(), module.expect_ge_s_9);
    });

    test('test_ge_s_10', () {
      expect(module.test_ge_s_10(), module.expect_ge_s_10);
    });

    test('test_ge_s_11', () {
      expect(module.test_ge_s_11(), module.expect_ge_s_11);
    });

    test('test_ge_s_12', () {
      expect(module.test_ge_s_12(), module.expect_ge_s_12);
    });

    test('test_ge_s_13', () {
      expect(module.test_ge_s_13(), module.expect_ge_s_13);
    });

    test('test_ge_u_0', () {
      expect(module.test_ge_u_0(), module.expect_ge_u_0);
    });

    test('test_ge_u_1', () {
      expect(module.test_ge_u_1(), module.expect_ge_u_1);
    });

    test('test_ge_u_2', () {
      expect(module.test_ge_u_2(), module.expect_ge_u_2);
    });

    test('test_ge_u_3', () {
      expect(module.test_ge_u_3(), module.expect_ge_u_3);
    });

    test('test_ge_u_4', () {
      expect(module.test_ge_u_4(), module.expect_ge_u_4);
    });

    test('test_ge_u_5', () {
      expect(module.test_ge_u_5(), module.expect_ge_u_5);
    });

    test('test_ge_u_6', () {
      expect(module.test_ge_u_6(), module.expect_ge_u_6);
    });

    test('test_ge_u_7', () {
      expect(module.test_ge_u_7(), module.expect_ge_u_7);
    });

    test('test_ge_u_8', () {
      expect(module.test_ge_u_8(), module.expect_ge_u_8);
    });

    test('test_ge_u_9', () {
      expect(module.test_ge_u_9(), module.expect_ge_u_9);
    });

    test('test_ge_u_10', () {
      expect(module.test_ge_u_10(), module.expect_ge_u_10);
    });

    test('test_ge_u_11', () {
      expect(module.test_ge_u_11(), module.expect_ge_u_11);
    });

    test('test_ge_u_12', () {
      expect(module.test_ge_u_12(), module.expect_ge_u_12);
    });

    test('test_ge_u_13', () {
      expect(module.test_ge_u_13(), module.expect_ge_u_13);
    });
  });
}

class Module {
  Module();

  final Memory memory = Memory(0);
  final Globals globals = Globals();

  i64 get expect_add_0 => globals.global0;
  i64 get expect_add_1 => globals.global1;
  i64 get expect_add_2 => globals.global2;
  i64 get expect_add_3 => globals.global3;
  i64 get expect_add_4 => globals.global4;
  i64 get expect_add_5 => globals.global5;
  i64 get expect_add_6 => globals.global6;
  i64 get expect_add_7 => globals.global7;
  i64 get expect_sub_0 => globals.global8;
  i64 get expect_sub_1 => globals.global9;
  i64 get expect_sub_2 => globals.global10;
  i64 get expect_sub_3 => globals.global11;
  i64 get expect_sub_4 => globals.global12;
  i64 get expect_sub_5 => globals.global13;
  i64 get expect_sub_6 => globals.global14;
  i64 get expect_mul_0 => globals.global15;
  i64 get expect_mul_1 => globals.global16;
  i64 get expect_mul_2 => globals.global17;
  i64 get expect_mul_3 => globals.global18;
  i64 get expect_mul_4 => globals.global19;
  i64 get expect_mul_5 => globals.global20;
  i64 get expect_mul_6 => globals.global21;
  i64 get expect_mul_7 => globals.global22;
  i64 get expect_mul_8 => globals.global23;
  i64 get expect_div_s_4 => globals.global24;
  i64 get expect_div_s_5 => globals.global25;
  i64 get expect_div_s_6 => globals.global26;
  i64 get expect_div_s_7 => globals.global27;
  i64 get expect_div_s_8 => globals.global28;
  i64 get expect_div_s_9 => globals.global29;
  i64 get expect_div_s_10 => globals.global30;
  i64 get expect_div_s_11 => globals.global31;
  i64 get expect_div_s_12 => globals.global32;
  i64 get expect_div_s_13 => globals.global33;
  i64 get expect_div_s_14 => globals.global34;
  i64 get expect_div_s_15 => globals.global35;
  i64 get expect_div_s_16 => globals.global36;
  i64 get expect_div_s_17 => globals.global37;
  i64 get expect_div_s_18 => globals.global38;
  i64 get expect_div_s_19 => globals.global39;
  i64 get expect_div_u_2 => globals.global40;
  i64 get expect_div_u_3 => globals.global41;
  i64 get expect_div_u_4 => globals.global42;
  i64 get expect_div_u_5 => globals.global43;
  i64 get expect_div_u_6 => globals.global44;
  i64 get expect_div_u_7 => globals.global45;
  i64 get expect_div_u_8 => globals.global46;
  i64 get expect_div_u_9 => globals.global47;
  i64 get expect_div_u_10 => globals.global48;
  i64 get expect_div_u_11 => globals.global49;
  i64 get expect_div_u_12 => globals.global50;
  i64 get expect_div_u_13 => globals.global51;
  i64 get expect_div_u_14 => globals.global52;
  i64 get expect_div_u_15 => globals.global53;
  i64 get expect_rem_s_2 => globals.global54;
  i64 get expect_rem_s_3 => globals.global55;
  i64 get expect_rem_s_4 => globals.global56;
  i64 get expect_rem_s_5 => globals.global57;
  i64 get expect_rem_s_6 => globals.global58;
  i64 get expect_rem_s_7 => globals.global59;
  i64 get expect_rem_s_8 => globals.global60;
  i64 get expect_rem_s_9 => globals.global61;
  i64 get expect_rem_s_10 => globals.global62;
  i64 get expect_rem_s_11 => globals.global63;
  i64 get expect_rem_s_12 => globals.global64;
  i64 get expect_rem_s_13 => globals.global65;
  i64 get expect_rem_s_14 => globals.global66;
  i64 get expect_rem_s_15 => globals.global67;
  i64 get expect_rem_s_16 => globals.global68;
  i64 get expect_rem_s_17 => globals.global69;
  i64 get expect_rem_s_18 => globals.global70;
  i64 get expect_rem_s_19 => globals.global71;
  i64 get expect_rem_u_2 => globals.global72;
  i64 get expect_rem_u_3 => globals.global73;
  i64 get expect_rem_u_4 => globals.global74;
  i64 get expect_rem_u_5 => globals.global75;
  i64 get expect_rem_u_6 => globals.global76;
  i64 get expect_rem_u_7 => globals.global77;
  i64 get expect_rem_u_8 => globals.global78;
  i64 get expect_rem_u_9 => globals.global79;
  i64 get expect_rem_u_10 => globals.global80;
  i64 get expect_rem_u_11 => globals.global81;
  i64 get expect_rem_u_12 => globals.global82;
  i64 get expect_rem_u_13 => globals.global83;
  i64 get expect_rem_u_14 => globals.global84;
  i64 get expect_rem_u_15 => globals.global85;
  i64 get expect_and_0 => globals.global86;
  i64 get expect_and_1 => globals.global87;
  i64 get expect_and_2 => globals.global88;
  i64 get expect_and_3 => globals.global89;
  i64 get expect_and_4 => globals.global90;
  i64 get expect_and_5 => globals.global91;
  i64 get expect_and_6 => globals.global92;
  i64 get expect_and_7 => globals.global93;
  i64 get expect_or_0 => globals.global94;
  i64 get expect_or_1 => globals.global95;
  i64 get expect_or_2 => globals.global96;
  i64 get expect_or_3 => globals.global97;
  i64 get expect_or_4 => globals.global98;
  i64 get expect_or_5 => globals.global99;
  i64 get expect_or_6 => globals.global100;
  i64 get expect_or_7 => globals.global101;
  i64 get expect_xor_0 => globals.global102;
  i64 get expect_xor_1 => globals.global103;
  i64 get expect_xor_2 => globals.global104;
  i64 get expect_xor_3 => globals.global105;
  i64 get expect_xor_4 => globals.global106;
  i64 get expect_xor_5 => globals.global107;
  i64 get expect_xor_6 => globals.global108;
  i64 get expect_xor_7 => globals.global109;
  i64 get expect_xor_8 => globals.global110;
  i64 get expect_xor_9 => globals.global111;
  i64 get expect_shl_0 => globals.global112;
  i64 get expect_shl_1 => globals.global113;
  i64 get expect_shl_2 => globals.global114;
  i64 get expect_shl_3 => globals.global115;
  i64 get expect_shl_4 => globals.global116;
  i64 get expect_shl_5 => globals.global117;
  i64 get expect_shl_6 => globals.global118;
  i64 get expect_shl_7 => globals.global119;
  i64 get expect_shl_8 => globals.global120;
  i64 get expect_shl_9 => globals.global121;
  i64 get expect_shl_10 => globals.global122;
  i64 get expect_shr_s_0 => globals.global123;
  i64 get expect_shr_s_1 => globals.global124;
  i64 get expect_shr_s_2 => globals.global125;
  i64 get expect_shr_s_3 => globals.global126;
  i64 get expect_shr_s_4 => globals.global127;
  i64 get expect_shr_s_5 => globals.global128;
  i64 get expect_shr_s_6 => globals.global129;
  i64 get expect_shr_s_7 => globals.global130;
  i64 get expect_shr_s_8 => globals.global131;
  i64 get expect_shr_s_9 => globals.global132;
  i64 get expect_shr_s_10 => globals.global133;
  i64 get expect_shr_s_11 => globals.global134;
  i64 get expect_shr_s_12 => globals.global135;
  i64 get expect_shr_s_13 => globals.global136;
  i64 get expect_shr_s_14 => globals.global137;
  i64 get expect_shr_s_15 => globals.global138;
  i64 get expect_shr_s_16 => globals.global139;
  i64 get expect_shr_u_0 => globals.global140;
  i64 get expect_shr_u_1 => globals.global141;
  i64 get expect_shr_u_2 => globals.global142;
  i64 get expect_shr_u_3 => globals.global143;
  i64 get expect_shr_u_4 => globals.global144;
  i64 get expect_shr_u_5 => globals.global145;
  i64 get expect_shr_u_6 => globals.global146;
  i64 get expect_shr_u_7 => globals.global147;
  i64 get expect_shr_u_8 => globals.global148;
  i64 get expect_shr_u_9 => globals.global149;
  i64 get expect_shr_u_10 => globals.global150;
  i64 get expect_shr_u_11 => globals.global151;
  i64 get expect_shr_u_12 => globals.global152;
  i64 get expect_shr_u_13 => globals.global153;
  i64 get expect_shr_u_14 => globals.global154;
  i64 get expect_shr_u_15 => globals.global155;
  i64 get expect_shr_u_16 => globals.global156;
  i64 get expect_rotl_0 => globals.global157;
  i64 get expect_rotl_1 => globals.global158;
  i64 get expect_rotl_2 => globals.global159;
  i64 get expect_rotl_3 => globals.global160;
  i64 get expect_rotl_4 => globals.global161;
  i64 get expect_rotl_5 => globals.global162;
  i64 get expect_rotl_6 => globals.global163;
  i64 get expect_rotl_7 => globals.global164;
  i64 get expect_rotl_8 => globals.global165;
  i64 get expect_rotl_9 => globals.global166;
  i64 get expect_rotl_10 => globals.global167;
  i64 get expect_rotl_11 => globals.global168;
  i64 get expect_rotl_12 => globals.global169;
  i64 get expect_rotr_0 => globals.global170;
  i64 get expect_rotr_1 => globals.global171;
  i64 get expect_rotr_2 => globals.global172;
  i64 get expect_rotr_3 => globals.global173;
  i64 get expect_rotr_4 => globals.global174;
  i64 get expect_rotr_5 => globals.global175;
  i64 get expect_rotr_6 => globals.global176;
  i64 get expect_rotr_7 => globals.global177;
  i64 get expect_rotr_8 => globals.global178;
  i64 get expect_rotr_9 => globals.global179;
  i64 get expect_rotr_10 => globals.global180;
  i64 get expect_rotr_11 => globals.global181;
  i64 get expect_rotr_12 => globals.global182;
  i64 get expect_clz_0 => globals.global183;
  i64 get expect_clz_1 => globals.global184;
  i64 get expect_clz_2 => globals.global185;
  i64 get expect_clz_3 => globals.global186;
  i64 get expect_clz_4 => globals.global187;
  i64 get expect_clz_5 => globals.global188;
  i64 get expect_clz_6 => globals.global189;
  i64 get expect_clz_7 => globals.global190;
  i64 get expect_ctz_0 => globals.global191;
  i64 get expect_ctz_1 => globals.global192;
  i64 get expect_ctz_2 => globals.global193;
  i64 get expect_ctz_3 => globals.global194;
  i64 get expect_ctz_4 => globals.global195;
  i64 get expect_ctz_5 => globals.global196;
  i64 get expect_popcnt_0 => globals.global197;
  i64 get expect_popcnt_1 => globals.global198;
  i64 get expect_popcnt_2 => globals.global199;
  i64 get expect_popcnt_3 => globals.global200;
  i64 get expect_popcnt_4 => globals.global201;
  i64 get expect_popcnt_5 => globals.global202;
  i64 get expect_popcnt_6 => globals.global203;
  i64 get expect_popcnt_7 => globals.global204;
  i64 get expect_extend8_s_0 => globals.global205;
  i64 get expect_extend8_s_1 => globals.global206;
  i64 get expect_extend8_s_2 => globals.global207;
  i64 get expect_extend8_s_3 => globals.global208;
  i64 get expect_extend8_s_4 => globals.global209;
  i64 get expect_extend8_s_5 => globals.global210;
  i64 get expect_extend8_s_6 => globals.global211;
  i64 get expect_extend16_s_0 => globals.global212;
  i64 get expect_extend16_s_1 => globals.global213;
  i64 get expect_extend16_s_2 => globals.global214;
  i64 get expect_extend16_s_3 => globals.global215;
  i64 get expect_extend16_s_4 => globals.global216;
  i64 get expect_extend16_s_5 => globals.global217;
  i64 get expect_extend16_s_6 => globals.global218;
  i64 get expect_extend32_s_0 => globals.global219;
  i64 get expect_extend32_s_1 => globals.global220;
  i64 get expect_extend32_s_2 => globals.global221;
  i64 get expect_extend32_s_3 => globals.global222;
  i64 get expect_extend32_s_4 => globals.global223;
  i64 get expect_extend32_s_5 => globals.global224;
  i64 get expect_extend32_s_6 => globals.global225;
  i64 get expect_extend32_s_7 => globals.global226;
  i64 get expect_extend32_s_8 => globals.global227;
  i64 get expect_extend32_s_9 => globals.global228;
  i32 get expect_eqz_0 => globals.global229;
  i32 get expect_eqz_1 => globals.global230;
  i32 get expect_eqz_2 => globals.global231;
  i32 get expect_eqz_3 => globals.global232;
  i32 get expect_eqz_4 => globals.global233;
  i32 get expect_eq_0 => globals.global234;
  i32 get expect_eq_1 => globals.global235;
  i32 get expect_eq_2 => globals.global236;
  i32 get expect_eq_3 => globals.global237;
  i32 get expect_eq_4 => globals.global238;
  i32 get expect_eq_5 => globals.global239;
  i32 get expect_eq_6 => globals.global240;
  i32 get expect_eq_7 => globals.global241;
  i32 get expect_eq_8 => globals.global242;
  i32 get expect_eq_9 => globals.global243;
  i32 get expect_eq_10 => globals.global244;
  i32 get expect_eq_11 => globals.global245;
  i32 get expect_eq_12 => globals.global246;
  i32 get expect_eq_13 => globals.global247;
  i32 get expect_ne_0 => globals.global248;
  i32 get expect_ne_1 => globals.global249;
  i32 get expect_ne_2 => globals.global250;
  i32 get expect_ne_3 => globals.global251;
  i32 get expect_ne_4 => globals.global252;
  i32 get expect_ne_5 => globals.global253;
  i32 get expect_ne_6 => globals.global254;
  i32 get expect_ne_7 => globals.global255;
  i32 get expect_ne_8 => globals.global256;
  i32 get expect_ne_9 => globals.global257;
  i32 get expect_ne_10 => globals.global258;
  i32 get expect_ne_11 => globals.global259;
  i32 get expect_ne_12 => globals.global260;
  i32 get expect_ne_13 => globals.global261;
  i32 get expect_lt_s_0 => globals.global262;
  i32 get expect_lt_s_1 => globals.global263;
  i32 get expect_lt_s_2 => globals.global264;
  i32 get expect_lt_s_3 => globals.global265;
  i32 get expect_lt_s_4 => globals.global266;
  i32 get expect_lt_s_5 => globals.global267;
  i32 get expect_lt_s_6 => globals.global268;
  i32 get expect_lt_s_7 => globals.global269;
  i32 get expect_lt_s_8 => globals.global270;
  i32 get expect_lt_s_9 => globals.global271;
  i32 get expect_lt_s_10 => globals.global272;
  i32 get expect_lt_s_11 => globals.global273;
  i32 get expect_lt_s_12 => globals.global274;
  i32 get expect_lt_s_13 => globals.global275;
  i32 get expect_lt_u_0 => globals.global276;
  i32 get expect_lt_u_1 => globals.global277;
  i32 get expect_lt_u_2 => globals.global278;
  i32 get expect_lt_u_3 => globals.global279;
  i32 get expect_lt_u_4 => globals.global280;
  i32 get expect_lt_u_5 => globals.global281;
  i32 get expect_lt_u_6 => globals.global282;
  i32 get expect_lt_u_7 => globals.global283;
  i32 get expect_lt_u_8 => globals.global284;
  i32 get expect_lt_u_9 => globals.global285;
  i32 get expect_lt_u_10 => globals.global286;
  i32 get expect_lt_u_11 => globals.global287;
  i32 get expect_lt_u_12 => globals.global288;
  i32 get expect_lt_u_13 => globals.global289;
  i32 get expect_le_s_0 => globals.global290;
  i32 get expect_le_s_1 => globals.global291;
  i32 get expect_le_s_2 => globals.global292;
  i32 get expect_le_s_3 => globals.global293;
  i32 get expect_le_s_4 => globals.global294;
  i32 get expect_le_s_5 => globals.global295;
  i32 get expect_le_s_6 => globals.global296;
  i32 get expect_le_s_7 => globals.global297;
  i32 get expect_le_s_8 => globals.global298;
  i32 get expect_le_s_9 => globals.global299;
  i32 get expect_le_s_10 => globals.global300;
  i32 get expect_le_s_11 => globals.global301;
  i32 get expect_le_s_12 => globals.global302;
  i32 get expect_le_s_13 => globals.global303;
  i32 get expect_le_u_0 => globals.global304;
  i32 get expect_le_u_1 => globals.global305;
  i32 get expect_le_u_2 => globals.global306;
  i32 get expect_le_u_3 => globals.global307;
  i32 get expect_le_u_4 => globals.global308;
  i32 get expect_le_u_5 => globals.global309;
  i32 get expect_le_u_6 => globals.global310;
  i32 get expect_le_u_7 => globals.global311;
  i32 get expect_le_u_8 => globals.global312;
  i32 get expect_le_u_9 => globals.global313;
  i32 get expect_le_u_10 => globals.global314;
  i32 get expect_le_u_11 => globals.global315;
  i32 get expect_le_u_12 => globals.global316;
  i32 get expect_le_u_13 => globals.global317;
  i32 get expect_gt_s_0 => globals.global318;
  i32 get expect_gt_s_1 => globals.global319;
  i32 get expect_gt_s_2 => globals.global320;
  i32 get expect_gt_s_3 => globals.global321;
  i32 get expect_gt_s_4 => globals.global322;
  i32 get expect_gt_s_5 => globals.global323;
  i32 get expect_gt_s_6 => globals.global324;
  i32 get expect_gt_s_7 => globals.global325;
  i32 get expect_gt_s_8 => globals.global326;
  i32 get expect_gt_s_9 => globals.global327;
  i32 get expect_gt_s_10 => globals.global328;
  i32 get expect_gt_s_11 => globals.global329;
  i32 get expect_gt_s_12 => globals.global330;
  i32 get expect_gt_s_13 => globals.global331;
  i32 get expect_gt_u_0 => globals.global332;
  i32 get expect_gt_u_1 => globals.global333;
  i32 get expect_gt_u_2 => globals.global334;
  i32 get expect_gt_u_3 => globals.global335;
  i32 get expect_gt_u_4 => globals.global336;
  i32 get expect_gt_u_5 => globals.global337;
  i32 get expect_gt_u_6 => globals.global338;
  i32 get expect_gt_u_7 => globals.global339;
  i32 get expect_gt_u_8 => globals.global340;
  i32 get expect_gt_u_9 => globals.global341;
  i32 get expect_gt_u_10 => globals.global342;
  i32 get expect_gt_u_11 => globals.global343;
  i32 get expect_gt_u_12 => globals.global344;
  i32 get expect_gt_u_13 => globals.global345;
  i32 get expect_ge_s_0 => globals.global346;
  i32 get expect_ge_s_1 => globals.global347;
  i32 get expect_ge_s_2 => globals.global348;
  i32 get expect_ge_s_3 => globals.global349;
  i32 get expect_ge_s_4 => globals.global350;
  i32 get expect_ge_s_5 => globals.global351;
  i32 get expect_ge_s_6 => globals.global352;
  i32 get expect_ge_s_7 => globals.global353;
  i32 get expect_ge_s_8 => globals.global354;
  i32 get expect_ge_s_9 => globals.global355;
  i32 get expect_ge_s_10 => globals.global356;
  i32 get expect_ge_s_11 => globals.global357;
  i32 get expect_ge_s_12 => globals.global358;
  i32 get expect_ge_s_13 => globals.global359;
  i32 get expect_ge_u_0 => globals.global360;
  i32 get expect_ge_u_1 => globals.global361;
  i32 get expect_ge_u_2 => globals.global362;
  i32 get expect_ge_u_3 => globals.global363;
  i32 get expect_ge_u_4 => globals.global364;
  i32 get expect_ge_u_5 => globals.global365;
  i32 get expect_ge_u_6 => globals.global366;
  i32 get expect_ge_u_7 => globals.global367;
  i32 get expect_ge_u_8 => globals.global368;
  i32 get expect_ge_u_9 => globals.global369;
  i32 get expect_ge_u_10 => globals.global370;
  i32 get expect_ge_u_11 => globals.global371;
  i32 get expect_ge_u_12 => globals.global372;
  i32 get expect_ge_u_13 => globals.global373;
  i64 add(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_add();
    return frame.pop();
  }

  i64 sub(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_sub();
    return frame.pop();
  }

  i64 mul(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_mul();
    return frame.pop();
  }

  i64 div_s(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_div_s();
    return frame.pop();
  }

  i64 div_u(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_div_u();
    return frame.pop();
  }

  i64 rem_s(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    throw 'unreachable (0x81)';
  }

  i64 rem_u(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    throw 'unreachable (0x82)';
  }

  i64 and(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_and();
    return frame.pop();
  }

  i64 or(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_or();
    return frame.pop();
  }

  i64 xor(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_xor();
    return frame.pop();
  }

  i64 shl(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_shl();
    return frame.pop();
  }

  i64 shr_s(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    throw 'unreachable (0x87)';
  }

  i64 shr_u(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_shr_u();
    return frame.pop();
  }

  i64 rotl(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_rotl();
    return frame.pop();
  }

  i64 rotr(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_rotr();
    return frame.pop();
  }

  i64 clz(i64 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    throw 'unreachable (0x79)';
  }

  i64 ctz(i64 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    throw 'unreachable (0x7A)';
  }

  i64 popcnt(i64 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    throw 'unreachable (0x7B)';
  }

  i64 extend8_s(i64 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    throw 'unreachable (0xC2)';
  }

  i64 extend16_s(i64 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    throw 'unreachable (0xC3)';
  }

  i64 extend32_s(i64 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    throw 'unreachable (0xC4)';
  }

  i32 eqz(i64 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.i64_eqz();
    return frame.pop();
  }

  i32 eq(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_eq();
    return frame.pop();
  }

  i32 ne(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_ne();
    return frame.pop();
  }

  i32 lt_s(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_lt_s();
    return frame.pop();
  }

  i32 lt_u(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_lt_u();
    return frame.pop();
  }

  i32 le_s(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_le_s();
    return frame.pop();
  }

  i32 le_u(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_le_u();
    return frame.pop();
  }

  i32 gt_s(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_gt_s();
    return frame.pop();
  }

  i32 gt_u(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_gt_u();
    return frame.pop();
  }

  i32 ge_s(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_ge_s();
    return frame.pop();
  }

  i32 ge_u(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_ge_u();
    return frame.pop();
  }

  i64 test_add_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i64 test_add_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i64 test_add_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i64 test_add_3() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i64 test_add_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i64 test_add_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i64 test_add_6() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i64 test_add_7() {
    final frame = Frame(memory);
    frame.i64_const(0x3fffffff);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(add(t0, t1));
    }
    return frame.pop();
  }

  i64 test_sub_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i64 test_sub_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i64 test_sub_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i64 test_sub_3() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i64 test_sub_4() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i64 test_sub_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i64 test_sub_6() {
    final frame = Frame(memory);
    frame.i64_const(0x3fffffff);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(sub(t0, t1));
    }
    return frame.pop();
  }

  i64 test_mul_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i64 test_mul_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i64 test_mul_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i64 test_mul_3() {
    final frame = Frame(memory);
    frame.i64_const(0x1000000000000000);
    frame.i64_const(0x1000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i64 test_mul_4() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i64 test_mul_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i64 test_mul_6() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i64 test_mul_7() {
    final frame = Frame(memory);
    frame.i64_const(0x123456789abcdef);
    frame.i64_const(-0x123456789abcdf0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i64 test_mul_8() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(mul(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_4() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_5() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_6() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_7() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_9() {
    final frame = Frame(memory);
    frame.i64_const(-0x7fffffffffffffff);
    frame.i64_const(1000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_10() {
    final frame = Frame(memory);
    frame.i64_const(5);
    frame.i64_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_11() {
    final frame = Frame(memory);
    frame.i64_const(-5);
    frame.i64_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_12() {
    final frame = Frame(memory);
    frame.i64_const(5);
    frame.i64_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_13() {
    final frame = Frame(memory);
    frame.i64_const(-5);
    frame.i64_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_14() {
    final frame = Frame(memory);
    frame.i64_const(7);
    frame.i64_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_15() {
    final frame = Frame(memory);
    frame.i64_const(-7);
    frame.i64_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_16() {
    final frame = Frame(memory);
    frame.i64_const(7);
    frame.i64_const(-3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_17() {
    final frame = Frame(memory);
    frame.i64_const(-7);
    frame.i64_const(-3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_18() {
    final frame = Frame(memory);
    frame.i64_const(11);
    frame.i64_const(5);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_s_19() {
    final frame = Frame(memory);
    frame.i64_const(17);
    frame.i64_const(7);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_2() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_3() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_4() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_6() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_7() {
    final frame = Frame(memory);
    frame.i64_const(-0x700ff00ff00ff010);
    frame.i64_const(0x100000001);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x7fffffffffffffff);
    frame.i64_const(1000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_9() {
    final frame = Frame(memory);
    frame.i64_const(5);
    frame.i64_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_10() {
    final frame = Frame(memory);
    frame.i64_const(-5);
    frame.i64_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_11() {
    final frame = Frame(memory);
    frame.i64_const(5);
    frame.i64_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_12() {
    final frame = Frame(memory);
    frame.i64_const(-5);
    frame.i64_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_13() {
    final frame = Frame(memory);
    frame.i64_const(7);
    frame.i64_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_14() {
    final frame = Frame(memory);
    frame.i64_const(11);
    frame.i64_const(5);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_div_u_15() {
    final frame = Frame(memory);
    frame.i64_const(17);
    frame.i64_const(7);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_2() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_3() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_4() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_5() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_6() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_7() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_9() {
    final frame = Frame(memory);
    frame.i64_const(-0x7fffffffffffffff);
    frame.i64_const(1000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_10() {
    final frame = Frame(memory);
    frame.i64_const(5);
    frame.i64_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_11() {
    final frame = Frame(memory);
    frame.i64_const(-5);
    frame.i64_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_12() {
    final frame = Frame(memory);
    frame.i64_const(5);
    frame.i64_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_13() {
    final frame = Frame(memory);
    frame.i64_const(-5);
    frame.i64_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_14() {
    final frame = Frame(memory);
    frame.i64_const(7);
    frame.i64_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_15() {
    final frame = Frame(memory);
    frame.i64_const(-7);
    frame.i64_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_16() {
    final frame = Frame(memory);
    frame.i64_const(7);
    frame.i64_const(-3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_17() {
    final frame = Frame(memory);
    frame.i64_const(-7);
    frame.i64_const(-3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_18() {
    final frame = Frame(memory);
    frame.i64_const(11);
    frame.i64_const(5);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_s_19() {
    final frame = Frame(memory);
    frame.i64_const(17);
    frame.i64_const(7);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_2() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_3() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_4() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_6() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_7() {
    final frame = Frame(memory);
    frame.i64_const(-0x700ff00ff00ff010);
    frame.i64_const(0x100000001);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x7fffffffffffffff);
    frame.i64_const(1000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_9() {
    final frame = Frame(memory);
    frame.i64_const(5);
    frame.i64_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_10() {
    final frame = Frame(memory);
    frame.i64_const(-5);
    frame.i64_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_11() {
    final frame = Frame(memory);
    frame.i64_const(5);
    frame.i64_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_12() {
    final frame = Frame(memory);
    frame.i64_const(-5);
    frame.i64_const(-2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_13() {
    final frame = Frame(memory);
    frame.i64_const(7);
    frame.i64_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_14() {
    final frame = Frame(memory);
    frame.i64_const(11);
    frame.i64_const(5);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rem_u_15() {
    final frame = Frame(memory);
    frame.i64_const(17);
    frame.i64_const(7);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_and_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i64 test_and_1() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i64 test_and_2() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i64 test_and_3() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i64 test_and_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i64 test_and_5() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i64 test_and_6() {
    final frame = Frame(memory);
    frame.i64_const(0xf0f0ffff);
    frame.i64_const(0xfffff0f0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i64 test_and_7() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(and(t0, t1));
    }
    return frame.pop();
  }

  i64 test_or_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i64 test_or_1() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i64 test_or_2() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i64 test_or_3() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i64 test_or_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i64 test_or_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i64 test_or_6() {
    final frame = Frame(memory);
    frame.i64_const(0xf0f0ffff);
    frame.i64_const(0xfffff0f0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i64 test_or_7() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(or(t0, t1));
    }
    return frame.pop();
  }

  i64 test_xor_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i64 test_xor_1() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i64 test_xor_2() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i64 test_xor_3() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i64 test_xor_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i64 test_xor_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i64 test_xor_6() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i64 test_xor_7() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i64 test_xor_8() {
    final frame = Frame(memory);
    frame.i64_const(0xf0f0ffff);
    frame.i64_const(0xfffff0f0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i64 test_xor_9() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(xor(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shl_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shl_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shl_2() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shl_3() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shl_4() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shl_5() {
    final frame = Frame(memory);
    frame.i64_const(0x4000000000000000);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shl_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(63);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shl_7() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(64);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shl_8() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(65);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shl_9() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shl_10() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_3() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_4() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_5() {
    final frame = Frame(memory);
    frame.i64_const(0x4000000000000000);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(64);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_7() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(65);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_8() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_9() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_10() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_11() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(63);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_12() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(64);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_13() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(65);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_14() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_15() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_s_16() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_s(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_3() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_4() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_5() {
    final frame = Frame(memory);
    frame.i64_const(0x4000000000000000);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(64);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_7() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(65);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_8() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_9() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_10() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_11() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(63);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_12() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(64);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_13() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(65);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_14() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_15() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_shr_u_16() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(shr_u(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_3() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(64);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_4() {
    final frame = Frame(memory);
    frame.i64_const(-0x54326789fdb97532);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x1ffffff24000000);
    frame.i64_const(4);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_6() {
    final frame = Frame(memory);
    frame.i64_const(-0x5432edcb10a987f7);
    frame.i64_const(53);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_7() {
    final frame = Frame(memory);
    frame.i64_const(-0x542edcb10a987f64);
    frame.i64_const(63);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x5432edcb10a987f7);
    frame.i64_const(245);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_9() {
    final frame = Frame(memory);
    frame.i64_const(-0x54328d6b10a987f7);
    frame.i64_const(-19);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x542edcb10a987f64);
    frame.i64_const(-0x7fffffffffffffc1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_11() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(63);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotl_12() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotl(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_3() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(64);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_4() {
    final frame = Frame(memory);
    frame.i64_const(-0x54326789fdb97532);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x1ffffff24000000);
    frame.i64_const(4);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_6() {
    final frame = Frame(memory);
    frame.i64_const(-0x5432edcb10a987f7);
    frame.i64_const(53);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_7() {
    final frame = Frame(memory);
    frame.i64_const(-0x542edcb10a987f64);
    frame.i64_const(63);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x5432edcb10a987f7);
    frame.i64_const(245);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_9() {
    final frame = Frame(memory);
    frame.i64_const(-0x54328d6b10a987f7);
    frame.i64_const(-19);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x542edcb10a987f64);
    frame.i64_const(-0x7fffffffffffffc1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_11() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(63);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_rotr_12() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(63);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rotr(t0, t1));
    }
    return frame.pop();
  }

  i64 test_clz_0() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i64 test_clz_1() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i64 test_clz_2() {
    final frame = Frame(memory);
    frame.i64_const(0x8000);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i64 test_clz_3() {
    final frame = Frame(memory);
    frame.i64_const(255);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i64 test_clz_4() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i64 test_clz_5() {
    final frame = Frame(memory);
    frame.i64_const(1);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i64 test_clz_6() {
    final frame = Frame(memory);
    frame.i64_const(2);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i64 test_clz_7() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t0 = frame.pop();
      frame.push(clz(t0));
    }
    return frame.pop();
  }

  i64 test_ctz_0() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(ctz(t0));
    }
    return frame.pop();
  }

  i64 test_ctz_1() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(ctz(t0));
    }
    return frame.pop();
  }

  i64 test_ctz_2() {
    final frame = Frame(memory);
    frame.i64_const(0x8000);
    {
      var t0 = frame.pop();
      frame.push(ctz(t0));
    }
    return frame.pop();
  }

  i64 test_ctz_3() {
    final frame = Frame(memory);
    frame.i64_const(0x10000);
    {
      var t0 = frame.pop();
      frame.push(ctz(t0));
    }
    return frame.pop();
  }

  i64 test_ctz_4() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    {
      var t0 = frame.pop();
      frame.push(ctz(t0));
    }
    return frame.pop();
  }

  i64 test_ctz_5() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t0 = frame.pop();
      frame.push(ctz(t0));
    }
    return frame.pop();
  }

  i64 test_popcnt_0() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i64 test_popcnt_1() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i64 test_popcnt_2() {
    final frame = Frame(memory);
    frame.i64_const(0x8000);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i64 test_popcnt_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x7fff7fff7fff8000);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i64 test_popcnt_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i64 test_popcnt_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x55555555aaaaaaab);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i64 test_popcnt_6() {
    final frame = Frame(memory);
    frame.i64_const(-0x6666666655555556);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i64 test_popcnt_7() {
    final frame = Frame(memory);
    frame.i64_const(-0x2152411021524111);
    {
      var t0 = frame.pop();
      frame.push(popcnt(t0));
    }
    return frame.pop();
  }

  i64 test_extend8_s_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend8_s_1() {
    final frame = Frame(memory);
    frame.i64_const(127);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend8_s_2() {
    final frame = Frame(memory);
    frame.i64_const(128);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend8_s_3() {
    final frame = Frame(memory);
    frame.i64_const(255);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend8_s_4() {
    final frame = Frame(memory);
    frame.i64_const(0x123456789abcd00);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend8_s_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x123456789abcd80);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend8_s_6() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(extend8_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend16_s_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend16_s_1() {
    final frame = Frame(memory);
    frame.i64_const(0x7fff);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend16_s_2() {
    final frame = Frame(memory);
    frame.i64_const(0x8000);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend16_s_3() {
    final frame = Frame(memory);
    frame.i64_const(0xffff);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend16_s_4() {
    final frame = Frame(memory);
    frame.i64_const(0x123456789abc0000);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend16_s_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x123456789ab8000);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend16_s_6() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(extend16_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend32_s_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(extend32_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend32_s_1() {
    final frame = Frame(memory);
    frame.i64_const(0x7fff);
    {
      var t0 = frame.pop();
      frame.push(extend32_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend32_s_2() {
    final frame = Frame(memory);
    frame.i64_const(0x8000);
    {
      var t0 = frame.pop();
      frame.push(extend32_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend32_s_3() {
    final frame = Frame(memory);
    frame.i64_const(0xffff);
    {
      var t0 = frame.pop();
      frame.push(extend32_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend32_s_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffff);
    {
      var t0 = frame.pop();
      frame.push(extend32_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend32_s_5() {
    final frame = Frame(memory);
    frame.i64_const(0x80000000);
    {
      var t0 = frame.pop();
      frame.push(extend32_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend32_s_6() {
    final frame = Frame(memory);
    frame.i64_const(0xffffffff);
    {
      var t0 = frame.pop();
      frame.push(extend32_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend32_s_7() {
    final frame = Frame(memory);
    frame.i64_const(0x123456700000000);
    {
      var t0 = frame.pop();
      frame.push(extend32_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend32_s_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x123456780000000);
    {
      var t0 = frame.pop();
      frame.push(extend32_s(t0));
    }
    return frame.pop();
  }

  i64 test_extend32_s_9() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(extend32_s(t0));
    }
    return frame.pop();
  }

  i32 test_eqz_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(eqz(t0));
    }
    return frame.pop();
  }

  i32 test_eqz_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    {
      var t0 = frame.pop();
      frame.push(eqz(t0));
    }
    return frame.pop();
  }

  i32 test_eqz_2() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    {
      var t0 = frame.pop();
      frame.push(eqz(t0));
    }
    return frame.pop();
  }

  i32 test_eqz_3() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t0 = frame.pop();
      frame.push(eqz(t0));
    }
    return frame.pop();
  }

  i32 test_eqz_4() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(eqz(t0));
    }
    return frame.pop();
  }

  i32 test_eq_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_5() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_7() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_9() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_11() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_12() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_eq_13() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(eq(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_5() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_7() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_9() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_11() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_12() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ne_13() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ne(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_5() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_7() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_9() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_11() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_12() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_s_13() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_5() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_7() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_9() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_11() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_12() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_lt_u_13() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(lt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_5() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_7() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_9() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_11() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_12() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_s_13() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_5() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_7() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_9() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_11() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_12() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_le_u_13() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(le_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_5() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_7() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_9() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_11() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_12() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_s_13() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_5() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_7() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_9() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_11() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_12() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_gt_u_13() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(gt_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_5() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_7() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_9() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_11() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_12() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_s_13() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_4() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_5() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_6() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_7() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_8() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_9() {
    final frame = Frame(memory);
    frame.i64_const(0);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_11() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_12() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_ge_u_13() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_const(-0x8000000000000000);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(ge_u(t0, t1));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i64 Function(i64, i64);
typedef FunctionType1 = i64 Function(i64);
typedef FunctionType2 = i32 Function(i64);
typedef FunctionType3 = i32 Function(i64, i64);
typedef FunctionType4 = i64 Function();
typedef FunctionType5 = i32 Function();

class Globals {
  final i64 global0 = 2;
  final i64 global1 = 1;
  final i64 global2 = -2;
  final i64 global3 = 0;
  final i64 global4 = -0x8000000000000000;
  final i64 global5 = 0x7fffffffffffffff;
  final i64 global6 = 0;
  final i64 global7 = 0x40000000;
  final i64 global8 = 0;
  final i64 global9 = 1;
  final i64 global10 = 0;
  final i64 global11 = -0x8000000000000000;
  final i64 global12 = 0x7fffffffffffffff;
  final i64 global13 = 0;
  final i64 global14 = 0x40000000;
  final i64 global15 = 1;
  final i64 global16 = 0;
  final i64 global17 = 1;
  final i64 global18 = 0;
  final i64 global19 = 0;
  final i64 global20 = -0x8000000000000000;
  final i64 global21 = -0x7fffffffffffffff;
  final i64 global22 = 0x2236d88fe5618cf0;
  final i64 global23 = 1;
  final i64 global24 = 1;
  final i64 global25 = 0;
  final i64 global26 = 0;
  final i64 global27 = 1;
  final i64 global28 = -0x4000000000000000;
  final i64 global29 = -0x20c49ba5e353f7;
  final i64 global30 = 2;
  final i64 global31 = -2;
  final i64 global32 = -2;
  final i64 global33 = 2;
  final i64 global34 = 2;
  final i64 global35 = -2;
  final i64 global36 = -2;
  final i64 global37 = 2;
  final i64 global38 = 2;
  final i64 global39 = 2;
  final i64 global40 = 1;
  final i64 global41 = 0;
  final i64 global42 = 1;
  final i64 global43 = 0;
  final i64 global44 = 0x4000000000000000;
  final i64 global45 = 0x8ff00fef;
  final i64 global46 = 0x20c49ba5e353f7;
  final i64 global47 = 2;
  final i64 global48 = 0x7ffffffffffffffd;
  final i64 global49 = 0;
  final i64 global50 = 0;
  final i64 global51 = 2;
  final i64 global52 = 2;
  final i64 global53 = 2;
  final i64 global54 = 0;
  final i64 global55 = 0;
  final i64 global56 = 0;
  final i64 global57 = 0;
  final i64 global58 = 0;
  final i64 global59 = 0;
  final i64 global60 = 0;
  final i64 global61 = -807;
  final i64 global62 = 1;
  final i64 global63 = -1;
  final i64 global64 = 1;
  final i64 global65 = -1;
  final i64 global66 = 1;
  final i64 global67 = -1;
  final i64 global68 = 1;
  final i64 global69 = -1;
  final i64 global70 = 1;
  final i64 global71 = 3;
  final i64 global72 = 0;
  final i64 global73 = 0;
  final i64 global74 = 0;
  final i64 global75 = -0x8000000000000000;
  final i64 global76 = 0;
  final i64 global77 = 0x80000001;
  final i64 global78 = 809;
  final i64 global79 = 1;
  final i64 global80 = 1;
  final i64 global81 = 5;
  final i64 global82 = -5;
  final i64 global83 = 1;
  final i64 global84 = 1;
  final i64 global85 = 3;
  final i64 global86 = 0;
  final i64 global87 = 0;
  final i64 global88 = 1;
  final i64 global89 = 0;
  final i64 global90 = 0;
  final i64 global91 = 0x7fffffffffffffff;
  final i64 global92 = 0xf0f0f0f0;
  final i64 global93 = -1;
  final i64 global94 = 1;
  final i64 global95 = 1;
  final i64 global96 = 1;
  final i64 global97 = 0;
  final i64 global98 = -1;
  final i64 global99 = -0x8000000000000000;
  final i64 global100 = 0xffffffff;
  final i64 global101 = -1;
  final i64 global102 = 1;
  final i64 global103 = 1;
  final i64 global104 = 0;
  final i64 global105 = 0;
  final i64 global106 = -1;
  final i64 global107 = -0x8000000000000000;
  final i64 global108 = 0x7fffffffffffffff;
  final i64 global109 = -0x8000000000000000;
  final i64 global110 = 0xf0f0f0f;
  final i64 global111 = 0;
  final i64 global112 = 2;
  final i64 global113 = 1;
  final i64 global114 = -2;
  final i64 global115 = -2;
  final i64 global116 = 0;
  final i64 global117 = -0x8000000000000000;
  final i64 global118 = -0x8000000000000000;
  final i64 global119 = 1;
  final i64 global120 = 2;
  final i64 global121 = -0x8000000000000000;
  final i64 global122 = -0x8000000000000000;
  final i64 global123 = 0;
  final i64 global124 = 1;
  final i64 global125 = -1;
  final i64 global126 = 0x3fffffffffffffff;
  final i64 global127 = -0x4000000000000000;
  final i64 global128 = 0x2000000000000000;
  final i64 global129 = 1;
  final i64 global130 = 0;
  final i64 global131 = 0;
  final i64 global132 = 0;
  final i64 global133 = 1;
  final i64 global134 = -1;
  final i64 global135 = -1;
  final i64 global136 = -1;
  final i64 global137 = -1;
  final i64 global138 = -1;
  final i64 global139 = -1;
  final i64 global140 = 0;
  final i64 global141 = 1;
  final i64 global142 = 0x7fffffffffffffff;
  final i64 global143 = 0x3fffffffffffffff;
  final i64 global144 = 0x4000000000000000;
  final i64 global145 = 0x2000000000000000;
  final i64 global146 = 1;
  final i64 global147 = 0;
  final i64 global148 = 0;
  final i64 global149 = 0;
  final i64 global150 = 1;
  final i64 global151 = 1;
  final i64 global152 = -1;
  final i64 global153 = 0x7fffffffffffffff;
  final i64 global154 = 1;
  final i64 global155 = 1;
  final i64 global156 = -1;
  final i64 global157 = 2;
  final i64 global158 = 1;
  final i64 global159 = -1;
  final i64 global160 = 1;
  final i64 global161 = 0x579b30ec048d159d;
  final i64 global162 = -0x1ffffff23ffffff1;
  final i64 global163 = 0x13579a2469deacf;
  final i64 global164 = 0x55e891a77ab3c04e;
  final i64 global165 = 0x13579a2469deacf;
  final i64 global166 = -0x30feca8651ad6216;
  final i64 global167 = 0x55e891a77ab3c04e;
  final i64 global168 = -0x8000000000000000;
  final i64 global169 = 1;
  final i64 global170 = -0x8000000000000000;
  final i64 global171 = 1;
  final i64 global172 = -1;
  final i64 global173 = 1;
  final i64 global174 = 0x55e6cc3b01234567;
  final i64 global175 = 0xfe000000dc00000;
  final i64 global176 = 0x6891a77ab3c04d5e;
  final i64 global177 = 0x57a2469deacf0139;
  final i64 global178 = 0x6891a77ab3c04d5e;
  final i64 global179 = -0x6b58854c3fb2a195;
  final i64 global180 = 0x57a2469deacf0139;
  final i64 global181 = 2;
  final i64 global182 = 1;
  final i64 global183 = 0;
  final i64 global184 = 64;
  final i64 global185 = 48;
  final i64 global186 = 56;
  final i64 global187 = 0;
  final i64 global188 = 63;
  final i64 global189 = 62;
  final i64 global190 = 1;
  final i64 global191 = 0;
  final i64 global192 = 64;
  final i64 global193 = 15;
  final i64 global194 = 16;
  final i64 global195 = 63;
  final i64 global196 = 0;
  final i64 global197 = 64;
  final i64 global198 = 0;
  final i64 global199 = 1;
  final i64 global200 = 4;
  final i64 global201 = 63;
  final i64 global202 = 32;
  final i64 global203 = 32;
  final i64 global204 = 48;
  final i64 global205 = 0;
  final i64 global206 = 127;
  final i64 global207 = -128;
  final i64 global208 = -1;
  final i64 global209 = 0;
  final i64 global210 = -128;
  final i64 global211 = -1;
  final i64 global212 = 0;
  final i64 global213 = 0x7fff;
  final i64 global214 = -0x8000;
  final i64 global215 = -1;
  final i64 global216 = 0;
  final i64 global217 = -0x8000;
  final i64 global218 = -1;
  final i64 global219 = 0;
  final i64 global220 = 0x7fff;
  final i64 global221 = 0x8000;
  final i64 global222 = 0xffff;
  final i64 global223 = 0x7fffffff;
  final i64 global224 = -0x80000000;
  final i64 global225 = -1;
  final i64 global226 = 0;
  final i64 global227 = -0x80000000;
  final i64 global228 = -1;
  final i32 global229 = 1;
  final i32 global230 = 0;
  final i32 global231 = 0;
  final i32 global232 = 0;
  final i32 global233 = 0;
  final i32 global234 = 1;
  final i32 global235 = 1;
  final i32 global236 = 0;
  final i32 global237 = 1;
  final i32 global238 = 1;
  final i32 global239 = 1;
  final i32 global240 = 0;
  final i32 global241 = 0;
  final i32 global242 = 0;
  final i32 global243 = 0;
  final i32 global244 = 0;
  final i32 global245 = 0;
  final i32 global246 = 0;
  final i32 global247 = 0;
  final i32 global248 = 0;
  final i32 global249 = 0;
  final i32 global250 = 1;
  final i32 global251 = 0;
  final i32 global252 = 0;
  final i32 global253 = 0;
  final i32 global254 = 1;
  final i32 global255 = 1;
  final i32 global256 = 1;
  final i32 global257 = 1;
  final i32 global258 = 1;
  final i32 global259 = 1;
  final i32 global260 = 1;
  final i32 global261 = 1;
  final i32 global262 = 0;
  final i32 global263 = 0;
  final i32 global264 = 1;
  final i32 global265 = 0;
  final i32 global266 = 0;
  final i32 global267 = 0;
  final i32 global268 = 0;
  final i32 global269 = 1;
  final i32 global270 = 1;
  final i32 global271 = 0;
  final i32 global272 = 1;
  final i32 global273 = 0;
  final i32 global274 = 1;
  final i32 global275 = 0;
  final i32 global276 = 0;
  final i32 global277 = 0;
  final i32 global278 = 0;
  final i32 global279 = 0;
  final i32 global280 = 0;
  final i32 global281 = 0;
  final i32 global282 = 0;
  final i32 global283 = 1;
  final i32 global284 = 0;
  final i32 global285 = 1;
  final i32 global286 = 1;
  final i32 global287 = 0;
  final i32 global288 = 0;
  final i32 global289 = 1;
  final i32 global290 = 1;
  final i32 global291 = 1;
  final i32 global292 = 1;
  final i32 global293 = 1;
  final i32 global294 = 1;
  final i32 global295 = 1;
  final i32 global296 = 0;
  final i32 global297 = 1;
  final i32 global298 = 1;
  final i32 global299 = 0;
  final i32 global300 = 1;
  final i32 global301 = 0;
  final i32 global302 = 1;
  final i32 global303 = 0;
  final i32 global304 = 1;
  final i32 global305 = 1;
  final i32 global306 = 0;
  final i32 global307 = 1;
  final i32 global308 = 1;
  final i32 global309 = 1;
  final i32 global310 = 0;
  final i32 global311 = 1;
  final i32 global312 = 0;
  final i32 global313 = 1;
  final i32 global314 = 1;
  final i32 global315 = 0;
  final i32 global316 = 0;
  final i32 global317 = 1;
  final i32 global318 = 0;
  final i32 global319 = 0;
  final i32 global320 = 0;
  final i32 global321 = 0;
  final i32 global322 = 0;
  final i32 global323 = 0;
  final i32 global324 = 1;
  final i32 global325 = 0;
  final i32 global326 = 0;
  final i32 global327 = 1;
  final i32 global328 = 0;
  final i32 global329 = 1;
  final i32 global330 = 0;
  final i32 global331 = 1;
  final i32 global332 = 0;
  final i32 global333 = 0;
  final i32 global334 = 1;
  final i32 global335 = 0;
  final i32 global336 = 0;
  final i32 global337 = 0;
  final i32 global338 = 1;
  final i32 global339 = 0;
  final i32 global340 = 1;
  final i32 global341 = 0;
  final i32 global342 = 0;
  final i32 global343 = 1;
  final i32 global344 = 1;
  final i32 global345 = 0;
  final i32 global346 = 1;
  final i32 global347 = 1;
  final i32 global348 = 0;
  final i32 global349 = 1;
  final i32 global350 = 1;
  final i32 global351 = 1;
  final i32 global352 = 1;
  final i32 global353 = 0;
  final i32 global354 = 0;
  final i32 global355 = 1;
  final i32 global356 = 0;
  final i32 global357 = 1;
  final i32 global358 = 0;
  final i32 global359 = 1;
  final i32 global360 = 1;
  final i32 global361 = 1;
  final i32 global362 = 1;
  final i32 global363 = 1;
  final i32 global364 = 1;
  final i32 global365 = 1;
  final i32 global366 = 1;
  final i32 global367 = 0;
  final i32 global368 = 1;
  final i32 global369 = 0;
  final i32 global370 = 0;
  final i32 global371 = 1;
  final i32 global372 = 1;
  final i32 global373 = 0;
}
