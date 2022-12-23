// Generated from test/wasm/i32.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('i32', () {
    final Module m = Module();

    returns('add_0', m.test_add_0, 2);
    returns('add_1', m.test_add_1, 1);
    returns('add_2', m.test_add_2, -2);
    returns('add_3', m.test_add_3, 0);
    returns('add_4', m.test_add_4, -0x80000000);
    returns('add_5', m.test_add_5, 0x7fffffff);
    returns('add_6', m.test_add_6, 0);
    returns('add_7', m.test_add_7, 0x40000000);
    returns('sub_0', m.test_sub_0, 0);
    returns('sub_1', m.test_sub_1, 1);
    returns('sub_2', m.test_sub_2, 0);
    returns('sub_3', m.test_sub_3, -0x80000000);
    returns('sub_4', m.test_sub_4, 0x7fffffff);
    returns('sub_5', m.test_sub_5, 0);
    returns('sub_6', m.test_sub_6, 0x40000000);
    returns('mul_0', m.test_mul_0, 1);
    returns('mul_1', m.test_mul_1, 0);
    returns('mul_2', m.test_mul_2, 1);
    returns('mul_3', m.test_mul_3, 0);
    returns('mul_4', m.test_mul_4, 0);
    returns('mul_5', m.test_mul_5, -0x80000000);
    returns('mul_6', m.test_mul_6, -0x7fffffff);
    returns('mul_7', m.test_mul_7, 0x358e7470);
    returns('mul_8', m.test_mul_8, 1);
    traps('div_s_0', m.test_div_s_0, "integer divide by zero");
    traps('div_s_1', m.test_div_s_1, "integer divide by zero");
    traps('div_s_2', m.test_div_s_2, "integer overflow");
    traps('div_s_3', m.test_div_s_3, "integer divide by zero");
    returns('div_s_4', m.test_div_s_4, 1);
    returns('div_s_5', m.test_div_s_5, 0);
    returns('div_s_6', m.test_div_s_6, 0);
    returns('div_s_7', m.test_div_s_7, 1);
    returns('div_s_8', m.test_div_s_8, -0x40000000);
    returns('div_s_9', m.test_div_s_9, -0x20c49b);
    returns('div_s_10', m.test_div_s_10, 2);
    returns('div_s_11', m.test_div_s_11, -2);
    returns('div_s_12', m.test_div_s_12, -2);
    returns('div_s_13', m.test_div_s_13, 2);
    returns('div_s_14', m.test_div_s_14, 2);
    returns('div_s_15', m.test_div_s_15, -2);
    returns('div_s_16', m.test_div_s_16, -2);
    returns('div_s_17', m.test_div_s_17, 2);
    returns('div_s_18', m.test_div_s_18, 2);
    returns('div_s_19', m.test_div_s_19, 2);
    traps('div_u_0', m.test_div_u_0, "integer divide by zero");
    traps('div_u_1', m.test_div_u_1, "integer divide by zero");
    returns('div_u_2', m.test_div_u_2, 1);
    returns('div_u_3', m.test_div_u_3, 0);
    returns('div_u_4', m.test_div_u_4, 1);
    returns('div_u_5', m.test_div_u_5, 0);
    returns('div_u_6', m.test_div_u_6, 0x40000000);
    returns('div_u_7', m.test_div_u_7, 0x8fef);
    returns('div_u_8', m.test_div_u_8, 0x20c49b);
    returns('div_u_9', m.test_div_u_9, 2);
    returns('div_u_10', m.test_div_u_10, 0x7ffffffd);
    returns('div_u_11', m.test_div_u_11, 0);
    returns('div_u_12', m.test_div_u_12, 0);
    returns('div_u_13', m.test_div_u_13, 2);
    returns('div_u_14', m.test_div_u_14, 2);
    returns('div_u_15', m.test_div_u_15, 2);
    traps('rem_s_0', m.test_rem_s_0, "integer divide by zero");
    traps('rem_s_1', m.test_rem_s_1, "integer divide by zero");
    returns('rem_s_2', m.test_rem_s_2, 0);
    returns('rem_s_3', m.test_rem_s_3, 0);
    returns('rem_s_4', m.test_rem_s_4, 0);
    returns('rem_s_5', m.test_rem_s_5, 0);
    returns('rem_s_6', m.test_rem_s_6, 0);
    returns('rem_s_7', m.test_rem_s_7, 0);
    returns('rem_s_8', m.test_rem_s_8, 0);
    returns('rem_s_9', m.test_rem_s_9, -647);
    returns('rem_s_10', m.test_rem_s_10, 1);
    returns('rem_s_11', m.test_rem_s_11, -1);
    returns('rem_s_12', m.test_rem_s_12, 1);
    returns('rem_s_13', m.test_rem_s_13, -1);
    returns('rem_s_14', m.test_rem_s_14, 1);
    returns('rem_s_15', m.test_rem_s_15, -1);
    returns('rem_s_16', m.test_rem_s_16, 1);
    returns('rem_s_17', m.test_rem_s_17, -1);
    returns('rem_s_18', m.test_rem_s_18, 1);
    returns('rem_s_19', m.test_rem_s_19, 3);
    traps('rem_u_0', m.test_rem_u_0, "integer divide by zero");
    traps('rem_u_1', m.test_rem_u_1, "integer divide by zero");
    returns('rem_u_2', m.test_rem_u_2, 0);
    returns('rem_u_3', m.test_rem_u_3, 0);
    returns('rem_u_4', m.test_rem_u_4, 0);
    returns('rem_u_5', m.test_rem_u_5, -0x80000000);
    returns('rem_u_6', m.test_rem_u_6, 0);
    returns('rem_u_7', m.test_rem_u_7, 0x8001);
    returns('rem_u_8', m.test_rem_u_8, 649);
    returns('rem_u_9', m.test_rem_u_9, 1);
    returns('rem_u_10', m.test_rem_u_10, 1);
    returns('rem_u_11', m.test_rem_u_11, 5);
    returns('rem_u_12', m.test_rem_u_12, -5);
    returns('rem_u_13', m.test_rem_u_13, 1);
    returns('rem_u_14', m.test_rem_u_14, 1);
    returns('rem_u_15', m.test_rem_u_15, 3);
    returns('and_0', m.test_and_0, 0);
    returns('and_1', m.test_and_1, 0);
    returns('and_2', m.test_and_2, 1);
    returns('and_3', m.test_and_3, 0);
    returns('and_4', m.test_and_4, 0);
    returns('and_5', m.test_and_5, 0x7fffffff);
    returns('and_6', m.test_and_6, -0xf0f0f10);
    returns('and_7', m.test_and_7, -1);
    returns('or_0', m.test_or_0, 1);
    returns('or_1', m.test_or_1, 1);
    returns('or_2', m.test_or_2, 1);
    returns('or_3', m.test_or_3, 0);
    returns('or_4', m.test_or_4, -1);
    returns('or_5', m.test_or_5, -0x80000000);
    returns('or_6', m.test_or_6, -1);
    returns('or_7', m.test_or_7, -1);
    returns('xor_0', m.test_xor_0, 1);
    returns('xor_1', m.test_xor_1, 1);
    returns('xor_2', m.test_xor_2, 0);
    returns('xor_3', m.test_xor_3, 0);
    returns('xor_4', m.test_xor_4, -1);
    returns('xor_5', m.test_xor_5, -0x80000000);
    returns('xor_6', m.test_xor_6, 0x7fffffff);
    returns('xor_7', m.test_xor_7, -0x80000000);
    returns('xor_8', m.test_xor_8, 0xf0f0f0f);
    returns('xor_9', m.test_xor_9, 0);
    returns('shl_0', m.test_shl_0, 2);
    returns('shl_1', m.test_shl_1, 1);
    returns('shl_2', m.test_shl_2, -2);
    returns('shl_3', m.test_shl_3, -2);
    returns('shl_4', m.test_shl_4, 0);
    returns('shl_5', m.test_shl_5, -0x80000000);
    returns('shl_6', m.test_shl_6, -0x80000000);
    returns('shl_7', m.test_shl_7, 1);
    returns('shl_8', m.test_shl_8, 2);
    returns('shl_9', m.test_shl_9, -0x80000000);
    returns('shl_10', m.test_shl_10, -0x80000000);
    returns('shr_s_0', m.test_shr_s_0, 0);
    returns('shr_s_1', m.test_shr_s_1, 1);
    returns('shr_s_2', m.test_shr_s_2, -1);
    returns('shr_s_3', m.test_shr_s_3, 0x3fffffff);
    returns('shr_s_4', m.test_shr_s_4, -0x40000000);
    returns('shr_s_5', m.test_shr_s_5, 0x20000000);
    returns('shr_s_6', m.test_shr_s_6, 1);
    returns('shr_s_7', m.test_shr_s_7, 0);
    returns('shr_s_8', m.test_shr_s_8, 0);
    returns('shr_s_9', m.test_shr_s_9, 0);
    returns('shr_s_10', m.test_shr_s_10, 1);
    returns('shr_s_11', m.test_shr_s_11, -1);
    returns('shr_s_12', m.test_shr_s_12, -1);
    returns('shr_s_13', m.test_shr_s_13, -1);
    returns('shr_s_14', m.test_shr_s_14, -1);
    returns('shr_s_15', m.test_shr_s_15, -1);
    returns('shr_s_16', m.test_shr_s_16, -1);
    returns('shr_u_0', m.test_shr_u_0, 0);
    returns('shr_u_1', m.test_shr_u_1, 1);
    returns('shr_u_2', m.test_shr_u_2, 0x7fffffff);
    returns('shr_u_3', m.test_shr_u_3, 0x3fffffff);
    returns('shr_u_4', m.test_shr_u_4, 0x40000000);
    returns('shr_u_5', m.test_shr_u_5, 0x20000000);
    returns('shr_u_6', m.test_shr_u_6, 1);
    returns('shr_u_7', m.test_shr_u_7, 0);
    returns('shr_u_8', m.test_shr_u_8, 0);
    returns('shr_u_9', m.test_shr_u_9, 0);
    returns('shr_u_10', m.test_shr_u_10, 1);
    returns('shr_u_11', m.test_shr_u_11, 1);
    returns('shr_u_12', m.test_shr_u_12, -1);
    returns('shr_u_13', m.test_shr_u_13, 0x7fffffff);
    returns('shr_u_14', m.test_shr_u_14, 1);
    returns('shr_u_15', m.test_shr_u_15, 1);
    returns('shr_u_16', m.test_shr_u_16, -1);
    returns('rotl_0', m.test_rotl_0, 2);
    returns('rotl_1', m.test_rotl_1, 1);
    returns('rotl_2', m.test_rotl_2, -1);
    returns('rotl_3', m.test_rotl_3, 1);
    returns('rotl_4', m.test_rotl_4, 0x579b30ed);
    returns('rotl_5', m.test_rotl_5, -0x1ff23ff1);
    returns('rotl_6', m.test_rotl_6, 0x183a5c76);
    returns('rotl_7', m.test_rotl_7, 0x100000);
    returns('rotl_8', m.test_rotl_8, 0x183a5c76);
    returns('rotl_9', m.test_rotl_9, 0x579beed3);
    returns('rotl_10', m.test_rotl_10, 0x579beed3);
    returns('rotl_11', m.test_rotl_11, -0x80000000);
    returns('rotl_12', m.test_rotl_12, 1);
    returns('rotr_0', m.test_rotr_0, -0x80000000);
    returns('rotr_1', m.test_rotr_1, 1);
    returns('rotr_2', m.test_rotr_2, -1);
    returns('rotr_3', m.test_rotr_3, 1);
    returns('rotr_4', m.test_rotr_4, 0x7f806600);
    returns('rotr_5', m.test_rotr_5, 0x8000);
    returns('rotr_6', m.test_rotr_6, 0x1d860e97);
    returns('rotr_7', m.test_rotr_7, 0x400);
    returns('rotr_8', m.test_rotr_8, 0x1d860e97);
    returns('rotr_9', m.test_rotr_9, -0x19044b2b);
    returns('rotr_10', m.test_rotr_10, -0x19044b2b);
    returns('rotr_11', m.test_rotr_11, 2);
    returns('rotr_12', m.test_rotr_12, 1);
    returns('clz_0', m.test_clz_0, 0);
    returns('clz_1', m.test_clz_1, 32);
    returns('clz_2', m.test_clz_2, 16);
    returns('clz_3', m.test_clz_3, 24);
    returns('clz_4', m.test_clz_4, 0);
    returns('clz_5', m.test_clz_5, 31);
    returns('clz_6', m.test_clz_6, 30);
    returns('clz_7', m.test_clz_7, 1);
    returns('ctz_0', m.test_ctz_0, 0);
    returns('ctz_1', m.test_ctz_1, 32);
    returns('ctz_2', m.test_ctz_2, 15);
    returns('ctz_3', m.test_ctz_3, 16);
    returns('ctz_4', m.test_ctz_4, 31);
    returns('ctz_5', m.test_ctz_5, 0);
    returns('popcnt_0', m.test_popcnt_0, 32);
    returns('popcnt_1', m.test_popcnt_1, 0);
    returns('popcnt_2', m.test_popcnt_2, 1);
    returns('popcnt_3', m.test_popcnt_3, 2);
    returns('popcnt_4', m.test_popcnt_4, 31);
    returns('popcnt_5', m.test_popcnt_5, 16);
    returns('popcnt_6', m.test_popcnt_6, 16);
    returns('popcnt_7', m.test_popcnt_7, 24);
    returns('extend8_s_0', m.test_extend8_s_0, 0);
    returns('extend8_s_1', m.test_extend8_s_1, 127);
    returns('extend8_s_2', m.test_extend8_s_2, -128);
    returns('extend8_s_3', m.test_extend8_s_3, -1);
    returns('extend8_s_4', m.test_extend8_s_4, 0);
    returns('extend8_s_5', m.test_extend8_s_5, -128);
    returns('extend8_s_6', m.test_extend8_s_6, -1);
    returns('extend16_s_0', m.test_extend16_s_0, 0);
    returns('extend16_s_1', m.test_extend16_s_1, 0x7fff);
    returns('extend16_s_2', m.test_extend16_s_2, -0x8000);
    returns('extend16_s_3', m.test_extend16_s_3, -1);
    returns('extend16_s_4', m.test_extend16_s_4, 0);
    returns('extend16_s_5', m.test_extend16_s_5, -0x8000);
    returns('extend16_s_6', m.test_extend16_s_6, -1);
    returns('eqz_0', m.test_eqz_0, 1);
    returns('eqz_1', m.test_eqz_1, 0);
    returns('eqz_2', m.test_eqz_2, 0);
    returns('eqz_3', m.test_eqz_3, 0);
    returns('eqz_4', m.test_eqz_4, 0);
    returns('eq_0', m.test_eq_0, 1);
    returns('eq_1', m.test_eq_1, 1);
    returns('eq_2', m.test_eq_2, 0);
    returns('eq_3', m.test_eq_3, 1);
    returns('eq_4', m.test_eq_4, 1);
    returns('eq_5', m.test_eq_5, 1);
    returns('eq_6', m.test_eq_6, 0);
    returns('eq_7', m.test_eq_7, 0);
    returns('eq_8', m.test_eq_8, 0);
    returns('eq_9', m.test_eq_9, 0);
    returns('eq_10', m.test_eq_10, 0);
    returns('eq_11', m.test_eq_11, 0);
    returns('eq_12', m.test_eq_12, 0);
    returns('eq_13', m.test_eq_13, 0);
    returns('ne_0', m.test_ne_0, 0);
    returns('ne_1', m.test_ne_1, 0);
    returns('ne_2', m.test_ne_2, 1);
    returns('ne_3', m.test_ne_3, 0);
    returns('ne_4', m.test_ne_4, 0);
    returns('ne_5', m.test_ne_5, 0);
    returns('ne_6', m.test_ne_6, 1);
    returns('ne_7', m.test_ne_7, 1);
    returns('ne_8', m.test_ne_8, 1);
    returns('ne_9', m.test_ne_9, 1);
    returns('ne_10', m.test_ne_10, 1);
    returns('ne_11', m.test_ne_11, 1);
    returns('ne_12', m.test_ne_12, 1);
    returns('ne_13', m.test_ne_13, 1);
    returns('lt_s_0', m.test_lt_s_0, 0);
    returns('lt_s_1', m.test_lt_s_1, 0);
    returns('lt_s_2', m.test_lt_s_2, 1);
    returns('lt_s_3', m.test_lt_s_3, 0);
    returns('lt_s_4', m.test_lt_s_4, 0);
    returns('lt_s_5', m.test_lt_s_5, 0);
    returns('lt_s_6', m.test_lt_s_6, 0);
    returns('lt_s_7', m.test_lt_s_7, 1);
    returns('lt_s_8', m.test_lt_s_8, 1);
    returns('lt_s_9', m.test_lt_s_9, 0);
    returns('lt_s_10', m.test_lt_s_10, 1);
    returns('lt_s_11', m.test_lt_s_11, 0);
    returns('lt_s_12', m.test_lt_s_12, 1);
    returns('lt_s_13', m.test_lt_s_13, 0);
    returns('lt_u_0', m.test_lt_u_0, 0);
    returns('lt_u_1', m.test_lt_u_1, 0);
    returns('lt_u_2', m.test_lt_u_2, 0);
    returns('lt_u_3', m.test_lt_u_3, 0);
    returns('lt_u_4', m.test_lt_u_4, 0);
    returns('lt_u_5', m.test_lt_u_5, 0);
    returns('lt_u_6', m.test_lt_u_6, 0);
    returns('lt_u_7', m.test_lt_u_7, 1);
    returns('lt_u_8', m.test_lt_u_8, 0);
    returns('lt_u_9', m.test_lt_u_9, 1);
    returns('lt_u_10', m.test_lt_u_10, 1);
    returns('lt_u_11', m.test_lt_u_11, 0);
    returns('lt_u_12', m.test_lt_u_12, 0);
    returns('lt_u_13', m.test_lt_u_13, 1);
    returns('le_s_0', m.test_le_s_0, 1);
    returns('le_s_1', m.test_le_s_1, 1);
    returns('le_s_2', m.test_le_s_2, 1);
    returns('le_s_3', m.test_le_s_3, 1);
    returns('le_s_4', m.test_le_s_4, 1);
    returns('le_s_5', m.test_le_s_5, 1);
    returns('le_s_6', m.test_le_s_6, 0);
    returns('le_s_7', m.test_le_s_7, 1);
    returns('le_s_8', m.test_le_s_8, 1);
    returns('le_s_9', m.test_le_s_9, 0);
    returns('le_s_10', m.test_le_s_10, 1);
    returns('le_s_11', m.test_le_s_11, 0);
    returns('le_s_12', m.test_le_s_12, 1);
    returns('le_s_13', m.test_le_s_13, 0);
    returns('le_u_0', m.test_le_u_0, 1);
    returns('le_u_1', m.test_le_u_1, 1);
    returns('le_u_2', m.test_le_u_2, 0);
    returns('le_u_3', m.test_le_u_3, 1);
    returns('le_u_4', m.test_le_u_4, 1);
    returns('le_u_5', m.test_le_u_5, 1);
    returns('le_u_6', m.test_le_u_6, 0);
    returns('le_u_7', m.test_le_u_7, 1);
    returns('le_u_8', m.test_le_u_8, 0);
    returns('le_u_9', m.test_le_u_9, 1);
    returns('le_u_10', m.test_le_u_10, 1);
    returns('le_u_11', m.test_le_u_11, 0);
    returns('le_u_12', m.test_le_u_12, 0);
    returns('le_u_13', m.test_le_u_13, 1);
    returns('gt_s_0', m.test_gt_s_0, 0);
    returns('gt_s_1', m.test_gt_s_1, 0);
    returns('gt_s_2', m.test_gt_s_2, 0);
    returns('gt_s_3', m.test_gt_s_3, 0);
    returns('gt_s_4', m.test_gt_s_4, 0);
    returns('gt_s_5', m.test_gt_s_5, 0);
    returns('gt_s_6', m.test_gt_s_6, 1);
    returns('gt_s_7', m.test_gt_s_7, 0);
    returns('gt_s_8', m.test_gt_s_8, 0);
    returns('gt_s_9', m.test_gt_s_9, 1);
    returns('gt_s_10', m.test_gt_s_10, 0);
    returns('gt_s_11', m.test_gt_s_11, 1);
    returns('gt_s_12', m.test_gt_s_12, 0);
    returns('gt_s_13', m.test_gt_s_13, 1);
    returns('gt_u_0', m.test_gt_u_0, 0);
    returns('gt_u_1', m.test_gt_u_1, 0);
    returns('gt_u_2', m.test_gt_u_2, 1);
    returns('gt_u_3', m.test_gt_u_3, 0);
    returns('gt_u_4', m.test_gt_u_4, 0);
    returns('gt_u_5', m.test_gt_u_5, 0);
    returns('gt_u_6', m.test_gt_u_6, 1);
    returns('gt_u_7', m.test_gt_u_7, 0);
    returns('gt_u_8', m.test_gt_u_8, 1);
    returns('gt_u_9', m.test_gt_u_9, 0);
    returns('gt_u_10', m.test_gt_u_10, 0);
    returns('gt_u_11', m.test_gt_u_11, 1);
    returns('gt_u_12', m.test_gt_u_12, 1);
    returns('gt_u_13', m.test_gt_u_13, 0);
    returns('ge_s_0', m.test_ge_s_0, 1);
    returns('ge_s_1', m.test_ge_s_1, 1);
    returns('ge_s_2', m.test_ge_s_2, 0);
    returns('ge_s_3', m.test_ge_s_3, 1);
    returns('ge_s_4', m.test_ge_s_4, 1);
    returns('ge_s_5', m.test_ge_s_5, 1);
    returns('ge_s_6', m.test_ge_s_6, 1);
    returns('ge_s_7', m.test_ge_s_7, 0);
    returns('ge_s_8', m.test_ge_s_8, 0);
    returns('ge_s_9', m.test_ge_s_9, 1);
    returns('ge_s_10', m.test_ge_s_10, 0);
    returns('ge_s_11', m.test_ge_s_11, 1);
    returns('ge_s_12', m.test_ge_s_12, 0);
    returns('ge_s_13', m.test_ge_s_13, 1);
    returns('ge_u_0', m.test_ge_u_0, 1);
    returns('ge_u_1', m.test_ge_u_1, 1);
    returns('ge_u_2', m.test_ge_u_2, 1);
    returns('ge_u_3', m.test_ge_u_3, 1);
    returns('ge_u_4', m.test_ge_u_4, 1);
    returns('ge_u_5', m.test_ge_u_5, 1);
    returns('ge_u_6', m.test_ge_u_6, 1);
    returns('ge_u_7', m.test_ge_u_7, 0);
    returns('ge_u_8', m.test_ge_u_8, 1);
    returns('ge_u_9', m.test_ge_u_9, 0);
    returns('ge_u_10', m.test_ge_u_10, 0);
    returns('ge_u_11', m.test_ge_u_11, 1);
    returns('ge_u_12', m.test_ge_u_12, 1);
    returns('ge_u_13', m.test_ge_u_13, 0);
  });
}

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(0);

  final DataSegments dataSegments = DataSegments();

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
    frame.i32_rotr();
    return frame.pop();
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

  i32 test_div_s_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_2() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(-1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_s_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_s(t0, t1));
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

  i32 test_div_u_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_div_u_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(div_u(t0, t1));
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

  i32 test_rem_s_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_s_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_s(t0, t1));
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

  i32 test_rem_u_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
    }
    return frame.pop();
  }

  i32 test_rem_u_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(rem_u(t0, t1));
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

class DataSegments {
  Uint8List trap_div_s_0 = decodeDataLiteral(_hex0);

  Uint8List trap_div_s_1 = decodeDataLiteral(_hex1);

  Uint8List trap_div_s_2 = decodeDataLiteral(_hex2);

  Uint8List trap_div_s_3 = decodeDataLiteral(_hex3);

  Uint8List trap_div_u_0 = decodeDataLiteral(_hex4);

  Uint8List trap_div_u_1 = decodeDataLiteral(_hex5);

  Uint8List trap_rem_s_0 = decodeDataLiteral(_hex6);

  Uint8List trap_rem_s_1 = decodeDataLiteral(_hex7);

  Uint8List trap_rem_u_0 = decodeDataLiteral(_hex8);

  Uint8List trap_rem_u_1 = decodeDataLiteral(_hex9);

  static const String _hex0 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x64\x69\x76\x69\x64\x65\x20\x62\x79\x20'
      '\x7A\x65\x72\x6F';

  static const String _hex1 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x64\x69\x76\x69\x64\x65\x20\x62\x79\x20'
      '\x7A\x65\x72\x6F';

  static const String _hex2 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex3 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x64\x69\x76\x69\x64\x65\x20\x62\x79\x20'
      '\x7A\x65\x72\x6F';

  static const String _hex4 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x64\x69\x76\x69\x64\x65\x20\x62\x79\x20'
      '\x7A\x65\x72\x6F';

  static const String _hex5 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x64\x69\x76\x69\x64\x65\x20\x62\x79\x20'
      '\x7A\x65\x72\x6F';

  static const String _hex6 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x64\x69\x76\x69\x64\x65\x20\x62\x79\x20'
      '\x7A\x65\x72\x6F';

  static const String _hex7 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x64\x69\x76\x69\x64\x65\x20\x62\x79\x20'
      '\x7A\x65\x72\x6F';

  static const String _hex8 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x64\x69\x76\x69\x64\x65\x20\x62\x79\x20'
      '\x7A\x65\x72\x6F';

  static const String _hex9 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x64\x69\x76\x69\x64\x65\x20\x62\x79\x20'
      '\x7A\x65\x72\x6F';

  void init(Memory memory) {}
}
