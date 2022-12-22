// Generated from test/wasm/conversions.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('conversions', () {
    final Module m = Module();

    returns('test_i64_extend_i32_s_0', m.test_i64_extend_i32_s_0, 0);
    returns('test_i64_extend_i32_s_1', m.test_i64_extend_i32_s_1, 0x2710);
    returns('test_i64_extend_i32_s_2', m.test_i64_extend_i32_s_2, -0x2710);
    returns('test_i64_extend_i32_s_3', m.test_i64_extend_i32_s_3, -1);
    returns('test_i64_extend_i32_s_4', m.test_i64_extend_i32_s_4, 0x7fffffff);
    returns('test_i64_extend_i32_s_5', m.test_i64_extend_i32_s_5, -0x80000000);
    returns('test_i64_extend_i32_u_0', m.test_i64_extend_i32_u_0, 0);
    returns('test_i64_extend_i32_u_1', m.test_i64_extend_i32_u_1, 0x2710);
    returns('test_i64_extend_i32_u_2', m.test_i64_extend_i32_u_2, 0xffffd8f0);
    returns('test_i64_extend_i32_u_3', m.test_i64_extend_i32_u_3, 0xffffffff);
    returns('test_i64_extend_i32_u_4', m.test_i64_extend_i32_u_4, 0x7fffffff);
    returns('test_i64_extend_i32_u_5', m.test_i64_extend_i32_u_5, 0x80000000);
    returns('test_i32_wrap_i64_0', m.test_i32_wrap_i64_0, -1);
    returns('test_i32_wrap_i64_1', m.test_i32_wrap_i64_1, -0x186a0);
    returns('test_i32_wrap_i64_2', m.test_i32_wrap_i64_2, -0x80000000);
    returns('test_i32_wrap_i64_3', m.test_i32_wrap_i64_3, 0x7fffffff);
    returns('test_i32_wrap_i64_4', m.test_i32_wrap_i64_4, 0);
    returns('test_i32_wrap_i64_5', m.test_i32_wrap_i64_5, -1);
    returns('test_i32_wrap_i64_6', m.test_i32_wrap_i64_6, 1);
    returns('test_i32_wrap_i64_7', m.test_i32_wrap_i64_7, 0);
    returns('test_i32_wrap_i64_8', m.test_i32_wrap_i64_8, -0x65432110);
    returns('test_i32_wrap_i64_9', m.test_i32_wrap_i64_9, -1);
    returns('test_i32_wrap_i64_10', m.test_i32_wrap_i64_10, 0);
    returns('test_i32_wrap_i64_11', m.test_i32_wrap_i64_11, 1);
    returns('test_i32_trunc_f32_s_0', m.test_i32_trunc_f32_s_0, 0);
    returns('test_i32_trunc_f32_s_1', m.test_i32_trunc_f32_s_1, 0);
    returns('test_i32_trunc_f32_s_2', m.test_i32_trunc_f32_s_2, 0);
    returns('test_i32_trunc_f32_s_3', m.test_i32_trunc_f32_s_3, 0);
    returns('test_i32_trunc_f32_s_4', m.test_i32_trunc_f32_s_4, 1);
    returns('test_i32_trunc_f32_s_5', m.test_i32_trunc_f32_s_5, 1);
    returns('test_i32_trunc_f32_s_6', m.test_i32_trunc_f32_s_6, 1);
    returns('test_i32_trunc_f32_s_7', m.test_i32_trunc_f32_s_7, -1);
    returns('test_i32_trunc_f32_s_8', m.test_i32_trunc_f32_s_8, -1);
    returns('test_i32_trunc_f32_s_9', m.test_i32_trunc_f32_s_9, -1);
    returns('test_i32_trunc_f32_s_10', m.test_i32_trunc_f32_s_10, -1);
    returns('test_i32_trunc_f32_s_11', m.test_i32_trunc_f32_s_11, -2);
    returns('test_i32_trunc_f32_s_12', m.test_i32_trunc_f32_s_12, 0x7fffff80);
    returns('test_i32_trunc_f32_s_13', m.test_i32_trunc_f32_s_13, -0x80000000);
    traps('test_i32_trunc_f32_s_14', m.test_i32_trunc_f32_s_14,
        "integer overflow");
    traps('test_i32_trunc_f32_s_15', m.test_i32_trunc_f32_s_15,
        "integer overflow");
    traps('test_i32_trunc_f32_s_16', m.test_i32_trunc_f32_s_16,
        "integer overflow");
    traps('test_i32_trunc_f32_s_17', m.test_i32_trunc_f32_s_17,
        "integer overflow");
    traps('test_i32_trunc_f32_s_18', m.test_i32_trunc_f32_s_18,
        "invalid conversion to integer");
    traps('test_i32_trunc_f32_s_19', m.test_i32_trunc_f32_s_19,
        "invalid conversion to integer");
    traps('test_i32_trunc_f32_s_20', m.test_i32_trunc_f32_s_20,
        "invalid conversion to integer");
    traps('test_i32_trunc_f32_s_21', m.test_i32_trunc_f32_s_21,
        "invalid conversion to integer");
    returns('test_i32_trunc_f32_u_0', m.test_i32_trunc_f32_u_0, 0);
    returns('test_i32_trunc_f32_u_1', m.test_i32_trunc_f32_u_1, 0);
    returns('test_i32_trunc_f32_u_2', m.test_i32_trunc_f32_u_2, 0);
    returns('test_i32_trunc_f32_u_3', m.test_i32_trunc_f32_u_3, 0);
    returns('test_i32_trunc_f32_u_4', m.test_i32_trunc_f32_u_4, 1);
    returns('test_i32_trunc_f32_u_5', m.test_i32_trunc_f32_u_5, 1);
    returns('test_i32_trunc_f32_u_6', m.test_i32_trunc_f32_u_6, 1);
    returns('test_i32_trunc_f32_u_7', m.test_i32_trunc_f32_u_7, 1);
    returns('test_i32_trunc_f32_u_8', m.test_i32_trunc_f32_u_8, 2);
    returns('test_i32_trunc_f32_u_9', m.test_i32_trunc_f32_u_9, -0x80000000);
    returns('test_i32_trunc_f32_u_10', m.test_i32_trunc_f32_u_10, -256);
    returns('test_i32_trunc_f32_u_11', m.test_i32_trunc_f32_u_11, 0);
    returns('test_i32_trunc_f32_u_12', m.test_i32_trunc_f32_u_12, 0);
    traps('test_i32_trunc_f32_u_13', m.test_i32_trunc_f32_u_13,
        "integer overflow");
    traps('test_i32_trunc_f32_u_14', m.test_i32_trunc_f32_u_14,
        "integer overflow");
    traps('test_i32_trunc_f32_u_15', m.test_i32_trunc_f32_u_15,
        "integer overflow");
    traps('test_i32_trunc_f32_u_16', m.test_i32_trunc_f32_u_16,
        "integer overflow");
    traps('test_i32_trunc_f32_u_17', m.test_i32_trunc_f32_u_17,
        "invalid conversion to integer");
    traps('test_i32_trunc_f32_u_18', m.test_i32_trunc_f32_u_18,
        "invalid conversion to integer");
    traps('test_i32_trunc_f32_u_19', m.test_i32_trunc_f32_u_19,
        "invalid conversion to integer");
    traps('test_i32_trunc_f32_u_20', m.test_i32_trunc_f32_u_20,
        "invalid conversion to integer");
    returns('test_i32_trunc_f64_s_0', m.test_i32_trunc_f64_s_0, 0);
    returns('test_i32_trunc_f64_s_1', m.test_i32_trunc_f64_s_1, 0);
    returns('test_i32_trunc_f64_s_2', m.test_i32_trunc_f64_s_2, 0);
    returns('test_i32_trunc_f64_s_3', m.test_i32_trunc_f64_s_3, 0);
    returns('test_i32_trunc_f64_s_4', m.test_i32_trunc_f64_s_4, 1);
    returns('test_i32_trunc_f64_s_5', m.test_i32_trunc_f64_s_5, 1);
    returns('test_i32_trunc_f64_s_6', m.test_i32_trunc_f64_s_6, 1);
    returns('test_i32_trunc_f64_s_7', m.test_i32_trunc_f64_s_7, -1);
    returns('test_i32_trunc_f64_s_8', m.test_i32_trunc_f64_s_8, -1);
    returns('test_i32_trunc_f64_s_9', m.test_i32_trunc_f64_s_9, -1);
    returns('test_i32_trunc_f64_s_10', m.test_i32_trunc_f64_s_10, -1);
    returns('test_i32_trunc_f64_s_11', m.test_i32_trunc_f64_s_11, -2);
    returns('test_i32_trunc_f64_s_12', m.test_i32_trunc_f64_s_12, 0x7fffffff);
    returns('test_i32_trunc_f64_s_13', m.test_i32_trunc_f64_s_13, -0x80000000);
    returns('test_i32_trunc_f64_s_14', m.test_i32_trunc_f64_s_14, -0x80000000);
    returns('test_i32_trunc_f64_s_15', m.test_i32_trunc_f64_s_15, 0x7fffffff);
    traps('test_i32_trunc_f64_s_16', m.test_i32_trunc_f64_s_16,
        "integer overflow");
    traps('test_i32_trunc_f64_s_17', m.test_i32_trunc_f64_s_17,
        "integer overflow");
    traps('test_i32_trunc_f64_s_18', m.test_i32_trunc_f64_s_18,
        "integer overflow");
    traps('test_i32_trunc_f64_s_19', m.test_i32_trunc_f64_s_19,
        "integer overflow");
    traps('test_i32_trunc_f64_s_20', m.test_i32_trunc_f64_s_20,
        "invalid conversion to integer");
    traps('test_i32_trunc_f64_s_21', m.test_i32_trunc_f64_s_21,
        "invalid conversion to integer");
    traps('test_i32_trunc_f64_s_22', m.test_i32_trunc_f64_s_22,
        "invalid conversion to integer");
    traps('test_i32_trunc_f64_s_23', m.test_i32_trunc_f64_s_23,
        "invalid conversion to integer");
    returns('test_i32_trunc_f64_u_0', m.test_i32_trunc_f64_u_0, 0);
    returns('test_i32_trunc_f64_u_1', m.test_i32_trunc_f64_u_1, 0);
    returns('test_i32_trunc_f64_u_2', m.test_i32_trunc_f64_u_2, 0);
    returns('test_i32_trunc_f64_u_3', m.test_i32_trunc_f64_u_3, 0);
    returns('test_i32_trunc_f64_u_4', m.test_i32_trunc_f64_u_4, 1);
    returns('test_i32_trunc_f64_u_5', m.test_i32_trunc_f64_u_5, 1);
    returns('test_i32_trunc_f64_u_6', m.test_i32_trunc_f64_u_6, 1);
    returns('test_i32_trunc_f64_u_7', m.test_i32_trunc_f64_u_7, 1);
    returns('test_i32_trunc_f64_u_8', m.test_i32_trunc_f64_u_8, 2);
    returns('test_i32_trunc_f64_u_9', m.test_i32_trunc_f64_u_9, -0x80000000);
    returns('test_i32_trunc_f64_u_10', m.test_i32_trunc_f64_u_10, -1);
    returns('test_i32_trunc_f64_u_11', m.test_i32_trunc_f64_u_11, 0);
    returns('test_i32_trunc_f64_u_12', m.test_i32_trunc_f64_u_12, 0);
    returns('test_i32_trunc_f64_u_13', m.test_i32_trunc_f64_u_13, 0x5f5e100);
    returns('test_i32_trunc_f64_u_14', m.test_i32_trunc_f64_u_14, 0);
    returns('test_i32_trunc_f64_u_15', m.test_i32_trunc_f64_u_15, -1);
    traps('test_i32_trunc_f64_u_16', m.test_i32_trunc_f64_u_16,
        "integer overflow");
    traps('test_i32_trunc_f64_u_17', m.test_i32_trunc_f64_u_17,
        "integer overflow");
    traps('test_i32_trunc_f64_u_18', m.test_i32_trunc_f64_u_18,
        "integer overflow");
    traps('test_i32_trunc_f64_u_19', m.test_i32_trunc_f64_u_19,
        "integer overflow");
    traps('test_i32_trunc_f64_u_20', m.test_i32_trunc_f64_u_20,
        "integer overflow");
    traps('test_i32_trunc_f64_u_21', m.test_i32_trunc_f64_u_21,
        "integer overflow");
    traps('test_i32_trunc_f64_u_22', m.test_i32_trunc_f64_u_22,
        "integer overflow");
    traps('test_i32_trunc_f64_u_23', m.test_i32_trunc_f64_u_23,
        "invalid conversion to integer");
    traps('test_i32_trunc_f64_u_24', m.test_i32_trunc_f64_u_24,
        "invalid conversion to integer");
    traps('test_i32_trunc_f64_u_25', m.test_i32_trunc_f64_u_25,
        "invalid conversion to integer");
    traps('test_i32_trunc_f64_u_26', m.test_i32_trunc_f64_u_26,
        "invalid conversion to integer");
    returns('test_i64_trunc_f32_s_0', m.test_i64_trunc_f32_s_0, 0);
    returns('test_i64_trunc_f32_s_1', m.test_i64_trunc_f32_s_1, 0);
    returns('test_i64_trunc_f32_s_2', m.test_i64_trunc_f32_s_2, 0);
    returns('test_i64_trunc_f32_s_3', m.test_i64_trunc_f32_s_3, 0);
    returns('test_i64_trunc_f32_s_4', m.test_i64_trunc_f32_s_4, 1);
    returns('test_i64_trunc_f32_s_5', m.test_i64_trunc_f32_s_5, 1);
    returns('test_i64_trunc_f32_s_6', m.test_i64_trunc_f32_s_6, 1);
    returns('test_i64_trunc_f32_s_7', m.test_i64_trunc_f32_s_7, -1);
    returns('test_i64_trunc_f32_s_8', m.test_i64_trunc_f32_s_8, -1);
    returns('test_i64_trunc_f32_s_9', m.test_i64_trunc_f32_s_9, -1);
    returns('test_i64_trunc_f32_s_10', m.test_i64_trunc_f32_s_10, -1);
    returns('test_i64_trunc_f32_s_11', m.test_i64_trunc_f32_s_11, -2);
    returns('test_i64_trunc_f32_s_12', m.test_i64_trunc_f32_s_12, 0x100000000);
    returns('test_i64_trunc_f32_s_13', m.test_i64_trunc_f32_s_13, -0x100000000);
    returns('test_i64_trunc_f32_s_14', m.test_i64_trunc_f32_s_14,
        0x7fffff8000000000);
    returns('test_i64_trunc_f32_s_15', m.test_i64_trunc_f32_s_15,
        -0x8000000000000000);
    traps('test_i64_trunc_f32_s_16', m.test_i64_trunc_f32_s_16,
        "integer overflow");
    traps('test_i64_trunc_f32_s_17', m.test_i64_trunc_f32_s_17,
        "integer overflow");
    traps('test_i64_trunc_f32_s_18', m.test_i64_trunc_f32_s_18,
        "integer overflow");
    traps('test_i64_trunc_f32_s_19', m.test_i64_trunc_f32_s_19,
        "integer overflow");
    traps('test_i64_trunc_f32_s_20', m.test_i64_trunc_f32_s_20,
        "invalid conversion to integer");
    traps('test_i64_trunc_f32_s_21', m.test_i64_trunc_f32_s_21,
        "invalid conversion to integer");
    traps('test_i64_trunc_f32_s_22', m.test_i64_trunc_f32_s_22,
        "invalid conversion to integer");
    traps('test_i64_trunc_f32_s_23', m.test_i64_trunc_f32_s_23,
        "invalid conversion to integer");
    returns('test_i64_trunc_f32_u_0', m.test_i64_trunc_f32_u_0, 0);
    returns('test_i64_trunc_f32_u_1', m.test_i64_trunc_f32_u_1, 0);
    returns('test_i64_trunc_f32_u_2', m.test_i64_trunc_f32_u_2, 0);
    returns('test_i64_trunc_f32_u_3', m.test_i64_trunc_f32_u_3, 0);
    returns('test_i64_trunc_f32_u_4', m.test_i64_trunc_f32_u_4, 1);
    returns('test_i64_trunc_f32_u_5', m.test_i64_trunc_f32_u_5, 1);
    returns('test_i64_trunc_f32_u_6', m.test_i64_trunc_f32_u_6, 1);
    returns('test_i64_trunc_f32_u_7', m.test_i64_trunc_f32_u_7, 0x100000000);
    returns('test_i64_trunc_f32_u_8', m.test_i64_trunc_f32_u_8, -0x10000000000);
    returns('test_i64_trunc_f32_u_9', m.test_i64_trunc_f32_u_9, 0);
    returns('test_i64_trunc_f32_u_10', m.test_i64_trunc_f32_u_10, 0);
    traps('test_i64_trunc_f32_u_11', m.test_i64_trunc_f32_u_11,
        "integer overflow");
    traps('test_i64_trunc_f32_u_12', m.test_i64_trunc_f32_u_12,
        "integer overflow");
    traps('test_i64_trunc_f32_u_13', m.test_i64_trunc_f32_u_13,
        "integer overflow");
    traps('test_i64_trunc_f32_u_14', m.test_i64_trunc_f32_u_14,
        "integer overflow");
    traps('test_i64_trunc_f32_u_15', m.test_i64_trunc_f32_u_15,
        "invalid conversion to integer");
    traps('test_i64_trunc_f32_u_16', m.test_i64_trunc_f32_u_16,
        "invalid conversion to integer");
    traps('test_i64_trunc_f32_u_17', m.test_i64_trunc_f32_u_17,
        "invalid conversion to integer");
    traps('test_i64_trunc_f32_u_18', m.test_i64_trunc_f32_u_18,
        "invalid conversion to integer");
    returns('test_i64_trunc_f64_s_0', m.test_i64_trunc_f64_s_0, 0);
    returns('test_i64_trunc_f64_s_1', m.test_i64_trunc_f64_s_1, 0);
    returns('test_i64_trunc_f64_s_2', m.test_i64_trunc_f64_s_2, 0);
    returns('test_i64_trunc_f64_s_3', m.test_i64_trunc_f64_s_3, 0);
    returns('test_i64_trunc_f64_s_4', m.test_i64_trunc_f64_s_4, 1);
    returns('test_i64_trunc_f64_s_5', m.test_i64_trunc_f64_s_5, 1);
    returns('test_i64_trunc_f64_s_6', m.test_i64_trunc_f64_s_6, 1);
    returns('test_i64_trunc_f64_s_7', m.test_i64_trunc_f64_s_7, -1);
    returns('test_i64_trunc_f64_s_8', m.test_i64_trunc_f64_s_8, -1);
    returns('test_i64_trunc_f64_s_9', m.test_i64_trunc_f64_s_9, -1);
    returns('test_i64_trunc_f64_s_10', m.test_i64_trunc_f64_s_10, -1);
    returns('test_i64_trunc_f64_s_11', m.test_i64_trunc_f64_s_11, -2);
    returns('test_i64_trunc_f64_s_12', m.test_i64_trunc_f64_s_12, 0x100000000);
    returns('test_i64_trunc_f64_s_13', m.test_i64_trunc_f64_s_13, -0x100000000);
    returns('test_i64_trunc_f64_s_14', m.test_i64_trunc_f64_s_14,
        0x7ffffffffffffc00);
    returns('test_i64_trunc_f64_s_15', m.test_i64_trunc_f64_s_15,
        -0x8000000000000000);
    traps('test_i64_trunc_f64_s_16', m.test_i64_trunc_f64_s_16,
        "integer overflow");
    traps('test_i64_trunc_f64_s_17', m.test_i64_trunc_f64_s_17,
        "integer overflow");
    traps('test_i64_trunc_f64_s_18', m.test_i64_trunc_f64_s_18,
        "integer overflow");
    traps('test_i64_trunc_f64_s_19', m.test_i64_trunc_f64_s_19,
        "integer overflow");
    traps('test_i64_trunc_f64_s_20', m.test_i64_trunc_f64_s_20,
        "invalid conversion to integer");
    traps('test_i64_trunc_f64_s_21', m.test_i64_trunc_f64_s_21,
        "invalid conversion to integer");
    traps('test_i64_trunc_f64_s_22', m.test_i64_trunc_f64_s_22,
        "invalid conversion to integer");
    traps('test_i64_trunc_f64_s_23', m.test_i64_trunc_f64_s_23,
        "invalid conversion to integer");
    returns('test_i64_trunc_f64_u_0', m.test_i64_trunc_f64_u_0, 0);
    returns('test_i64_trunc_f64_u_1', m.test_i64_trunc_f64_u_1, 0);
    returns('test_i64_trunc_f64_u_2', m.test_i64_trunc_f64_u_2, 0);
    returns('test_i64_trunc_f64_u_3', m.test_i64_trunc_f64_u_3, 0);
    returns('test_i64_trunc_f64_u_4', m.test_i64_trunc_f64_u_4, 1);
    returns('test_i64_trunc_f64_u_5', m.test_i64_trunc_f64_u_5, 1);
    returns('test_i64_trunc_f64_u_6', m.test_i64_trunc_f64_u_6, 1);
    returns('test_i64_trunc_f64_u_7', m.test_i64_trunc_f64_u_7, 0xffffffff);
    returns('test_i64_trunc_f64_u_8', m.test_i64_trunc_f64_u_8, 0x100000000);
    returns('test_i64_trunc_f64_u_9', m.test_i64_trunc_f64_u_9, -0x800);
    returns('test_i64_trunc_f64_u_10', m.test_i64_trunc_f64_u_10, 0);
    returns('test_i64_trunc_f64_u_11', m.test_i64_trunc_f64_u_11, 0);
    returns('test_i64_trunc_f64_u_12', m.test_i64_trunc_f64_u_12, 0x5f5e100);
    returns(
        'test_i64_trunc_f64_u_13', m.test_i64_trunc_f64_u_13, 0x2386f26fc10000);
    returns('test_i64_trunc_f64_u_14', m.test_i64_trunc_f64_u_14,
        -0x8000000000000000);
    traps('test_i64_trunc_f64_u_15', m.test_i64_trunc_f64_u_15,
        "integer overflow");
    traps('test_i64_trunc_f64_u_16', m.test_i64_trunc_f64_u_16,
        "integer overflow");
    traps('test_i64_trunc_f64_u_17', m.test_i64_trunc_f64_u_17,
        "integer overflow");
    traps('test_i64_trunc_f64_u_18', m.test_i64_trunc_f64_u_18,
        "integer overflow");
    traps('test_i64_trunc_f64_u_19', m.test_i64_trunc_f64_u_19,
        "invalid conversion to integer");
    traps('test_i64_trunc_f64_u_20', m.test_i64_trunc_f64_u_20,
        "invalid conversion to integer");
    traps('test_i64_trunc_f64_u_21', m.test_i64_trunc_f64_u_21,
        "invalid conversion to integer");
    traps('test_i64_trunc_f64_u_22', m.test_i64_trunc_f64_u_22,
        "invalid conversion to integer");
    returns('test_f32_convert_i32_s_0', m.test_f32_convert_i32_s_0, 1.0);
    returns('test_f32_convert_i32_s_1', m.test_f32_convert_i32_s_1, -1.0);
    returns('test_f32_convert_i32_s_2', m.test_f32_convert_i32_s_2, 0.0);
    returns(
        'test_f32_convert_i32_s_3', m.test_f32_convert_i32_s_3, 2147483648.0);
    returns(
        'test_f32_convert_i32_s_4', m.test_f32_convert_i32_s_4, -2147483648.0);
    returns(
        'test_f32_convert_i32_s_5', m.test_f32_convert_i32_s_5, 1234567936.0);
    returns('test_i32_trunc_sat_f32_s_0', m.test_i32_trunc_sat_f32_s_0, 0);
    returns('test_i32_trunc_sat_f32_s_1', m.test_i32_trunc_sat_f32_s_1, 0);
    returns('test_i32_trunc_sat_f32_s_2', m.test_i32_trunc_sat_f32_s_2, 0);
    returns('test_i32_trunc_sat_f32_s_3', m.test_i32_trunc_sat_f32_s_3, 0);
    returns('test_i32_trunc_sat_f32_s_4', m.test_i32_trunc_sat_f32_s_4, 1);
    returns('test_i32_trunc_sat_f32_s_5', m.test_i32_trunc_sat_f32_s_5, 1);
    returns('test_i32_trunc_sat_f32_s_6', m.test_i32_trunc_sat_f32_s_6, 1);
    returns('test_i32_trunc_sat_f32_s_7', m.test_i32_trunc_sat_f32_s_7, -1);
    returns('test_i32_trunc_sat_f32_s_8', m.test_i32_trunc_sat_f32_s_8, -1);
    returns('test_i32_trunc_sat_f32_s_9', m.test_i32_trunc_sat_f32_s_9, -1);
    returns('test_i32_trunc_sat_f32_s_10', m.test_i32_trunc_sat_f32_s_10, -1);
    returns('test_i32_trunc_sat_f32_s_11', m.test_i32_trunc_sat_f32_s_11, -2);
    returns('test_i32_trunc_sat_f32_s_12', m.test_i32_trunc_sat_f32_s_12,
        0x7fffff80);
    returns('test_i32_trunc_sat_f32_s_13', m.test_i32_trunc_sat_f32_s_13,
        -0x80000000);
    returns('test_i32_trunc_sat_f32_s_14', m.test_i32_trunc_sat_f32_s_14,
        0x7fffffff);
    returns('test_i32_trunc_sat_f32_s_15', m.test_i32_trunc_sat_f32_s_15,
        -0x80000000);
    returns('test_i32_trunc_sat_f32_s_16', m.test_i32_trunc_sat_f32_s_16,
        0x7fffffff);
    returns('test_i32_trunc_sat_f32_s_17', m.test_i32_trunc_sat_f32_s_17,
        -0x80000000);
    returns('test_i32_trunc_sat_f32_s_18', m.test_i32_trunc_sat_f32_s_18, 0);
    returns('test_i32_trunc_sat_f32_s_19', m.test_i32_trunc_sat_f32_s_19, 0);
    returns('test_i32_trunc_sat_f32_s_20', m.test_i32_trunc_sat_f32_s_20, 0);
    returns('test_i32_trunc_sat_f32_s_21', m.test_i32_trunc_sat_f32_s_21, 0);
    returns('test_i32_trunc_sat_f32_u_0', m.test_i32_trunc_sat_f32_u_0, 0);
    returns('test_i32_trunc_sat_f32_u_1', m.test_i32_trunc_sat_f32_u_1, 0);
    returns('test_i32_trunc_sat_f32_u_2', m.test_i32_trunc_sat_f32_u_2, 0);
    returns('test_i32_trunc_sat_f32_u_3', m.test_i32_trunc_sat_f32_u_3, 0);
    returns('test_i32_trunc_sat_f32_u_4', m.test_i32_trunc_sat_f32_u_4, 1);
    returns('test_i32_trunc_sat_f32_u_5', m.test_i32_trunc_sat_f32_u_5, 1);
    returns('test_i32_trunc_sat_f32_u_6', m.test_i32_trunc_sat_f32_u_6, 1);
    returns('test_i32_trunc_sat_f32_u_7', m.test_i32_trunc_sat_f32_u_7, 1);
    returns('test_i32_trunc_sat_f32_u_8', m.test_i32_trunc_sat_f32_u_8, 2);
    returns('test_i32_trunc_sat_f32_u_9', m.test_i32_trunc_sat_f32_u_9,
        -0x80000000);
    returns('test_i32_trunc_sat_f32_u_10', m.test_i32_trunc_sat_f32_u_10, -256);
    returns('test_i32_trunc_sat_f32_u_11', m.test_i32_trunc_sat_f32_u_11, 0);
    returns('test_i32_trunc_sat_f32_u_12', m.test_i32_trunc_sat_f32_u_12, 0);
    returns('test_i32_trunc_sat_f32_u_13', m.test_i32_trunc_sat_f32_u_13, -1);
    returns('test_i32_trunc_sat_f32_u_14', m.test_i32_trunc_sat_f32_u_14, 0);
    returns('test_i32_trunc_sat_f32_u_15', m.test_i32_trunc_sat_f32_u_15, -1);
    returns('test_i32_trunc_sat_f32_u_16', m.test_i32_trunc_sat_f32_u_16, 0);
    returns('test_i32_trunc_sat_f32_u_17', m.test_i32_trunc_sat_f32_u_17, 0);
    returns('test_i32_trunc_sat_f32_u_18', m.test_i32_trunc_sat_f32_u_18, 0);
    returns('test_i32_trunc_sat_f32_u_19', m.test_i32_trunc_sat_f32_u_19, 0);
    returns('test_i32_trunc_sat_f32_u_20', m.test_i32_trunc_sat_f32_u_20, 0);
    returns('test_i32_trunc_sat_f64_s_0', m.test_i32_trunc_sat_f64_s_0, 0);
    returns('test_i32_trunc_sat_f64_s_1', m.test_i32_trunc_sat_f64_s_1, 0);
    returns('test_i32_trunc_sat_f64_s_2', m.test_i32_trunc_sat_f64_s_2, 0);
    returns('test_i32_trunc_sat_f64_s_3', m.test_i32_trunc_sat_f64_s_3, 0);
    returns('test_i32_trunc_sat_f64_s_4', m.test_i32_trunc_sat_f64_s_4, 1);
    returns('test_i32_trunc_sat_f64_s_5', m.test_i32_trunc_sat_f64_s_5, 1);
    returns('test_i32_trunc_sat_f64_s_6', m.test_i32_trunc_sat_f64_s_6, 1);
    returns('test_i32_trunc_sat_f64_s_7', m.test_i32_trunc_sat_f64_s_7, -1);
    returns('test_i32_trunc_sat_f64_s_8', m.test_i32_trunc_sat_f64_s_8, -1);
    returns('test_i32_trunc_sat_f64_s_9', m.test_i32_trunc_sat_f64_s_9, -1);
    returns('test_i32_trunc_sat_f64_s_10', m.test_i32_trunc_sat_f64_s_10, -1);
    returns('test_i32_trunc_sat_f64_s_11', m.test_i32_trunc_sat_f64_s_11, -2);
    returns('test_i32_trunc_sat_f64_s_12', m.test_i32_trunc_sat_f64_s_12,
        0x7fffffff);
    returns('test_i32_trunc_sat_f64_s_13', m.test_i32_trunc_sat_f64_s_13,
        -0x80000000);
    returns('test_i32_trunc_sat_f64_s_14', m.test_i32_trunc_sat_f64_s_14,
        0x7fffffff);
    returns('test_i32_trunc_sat_f64_s_15', m.test_i32_trunc_sat_f64_s_15,
        -0x80000000);
    returns('test_i32_trunc_sat_f64_s_16', m.test_i32_trunc_sat_f64_s_16,
        0x7fffffff);
    returns('test_i32_trunc_sat_f64_s_17', m.test_i32_trunc_sat_f64_s_17,
        -0x80000000);
    returns('test_i32_trunc_sat_f64_s_18', m.test_i32_trunc_sat_f64_s_18, 0);
    returns('test_i32_trunc_sat_f64_s_19', m.test_i32_trunc_sat_f64_s_19, 0);
    returns('test_i32_trunc_sat_f64_s_20', m.test_i32_trunc_sat_f64_s_20, 0);
    returns('test_i32_trunc_sat_f64_s_21', m.test_i32_trunc_sat_f64_s_21, 0);
    returns('test_i32_trunc_sat_f64_u_0', m.test_i32_trunc_sat_f64_u_0, 0);
    returns('test_i32_trunc_sat_f64_u_1', m.test_i32_trunc_sat_f64_u_1, 0);
    returns('test_i32_trunc_sat_f64_u_2', m.test_i32_trunc_sat_f64_u_2, 0);
    returns('test_i32_trunc_sat_f64_u_3', m.test_i32_trunc_sat_f64_u_3, 0);
    returns('test_i32_trunc_sat_f64_u_4', m.test_i32_trunc_sat_f64_u_4, 1);
    returns('test_i32_trunc_sat_f64_u_5', m.test_i32_trunc_sat_f64_u_5, 1);
    returns('test_i32_trunc_sat_f64_u_6', m.test_i32_trunc_sat_f64_u_6, 1);
    returns('test_i32_trunc_sat_f64_u_7', m.test_i32_trunc_sat_f64_u_7, 1);
    returns('test_i32_trunc_sat_f64_u_8', m.test_i32_trunc_sat_f64_u_8, 2);
    returns('test_i32_trunc_sat_f64_u_9', m.test_i32_trunc_sat_f64_u_9,
        -0x80000000);
    returns('test_i32_trunc_sat_f64_u_10', m.test_i32_trunc_sat_f64_u_10, -1);
    returns('test_i32_trunc_sat_f64_u_11', m.test_i32_trunc_sat_f64_u_11, 0);
    returns('test_i32_trunc_sat_f64_u_12', m.test_i32_trunc_sat_f64_u_12, 0);
    returns('test_i32_trunc_sat_f64_u_13', m.test_i32_trunc_sat_f64_u_13,
        0x5f5e100);
    returns('test_i32_trunc_sat_f64_u_14', m.test_i32_trunc_sat_f64_u_14, -1);
    returns('test_i32_trunc_sat_f64_u_15', m.test_i32_trunc_sat_f64_u_15, 0);
    returns('test_i32_trunc_sat_f64_u_16', m.test_i32_trunc_sat_f64_u_16, -1);
    returns('test_i32_trunc_sat_f64_u_17', m.test_i32_trunc_sat_f64_u_17, -1);
    returns('test_i32_trunc_sat_f64_u_18', m.test_i32_trunc_sat_f64_u_18, -1);
    returns('test_i32_trunc_sat_f64_u_19', m.test_i32_trunc_sat_f64_u_19, -1);
    returns('test_i32_trunc_sat_f64_u_20', m.test_i32_trunc_sat_f64_u_20, 0);
    returns('test_i32_trunc_sat_f64_u_21', m.test_i32_trunc_sat_f64_u_21, 0);
    returns('test_i32_trunc_sat_f64_u_22', m.test_i32_trunc_sat_f64_u_22, 0);
    returns('test_i32_trunc_sat_f64_u_23', m.test_i32_trunc_sat_f64_u_23, 0);
    returns('test_i32_trunc_sat_f64_u_24', m.test_i32_trunc_sat_f64_u_24, 0);
    returns('test_i64_trunc_sat_f32_s_0', m.test_i64_trunc_sat_f32_s_0, 0);
    returns('test_i64_trunc_sat_f32_s_1', m.test_i64_trunc_sat_f32_s_1, 0);
    returns('test_i64_trunc_sat_f32_s_2', m.test_i64_trunc_sat_f32_s_2, 0);
    returns('test_i64_trunc_sat_f32_s_3', m.test_i64_trunc_sat_f32_s_3, 0);
    returns('test_i64_trunc_sat_f32_s_4', m.test_i64_trunc_sat_f32_s_4, 1);
    returns('test_i64_trunc_sat_f32_s_5', m.test_i64_trunc_sat_f32_s_5, 1);
    returns('test_i64_trunc_sat_f32_s_6', m.test_i64_trunc_sat_f32_s_6, 1);
    returns('test_i64_trunc_sat_f32_s_7', m.test_i64_trunc_sat_f32_s_7, -1);
    returns('test_i64_trunc_sat_f32_s_8', m.test_i64_trunc_sat_f32_s_8, -1);
    returns('test_i64_trunc_sat_f32_s_9', m.test_i64_trunc_sat_f32_s_9, -1);
    returns('test_i64_trunc_sat_f32_s_10', m.test_i64_trunc_sat_f32_s_10, -1);
    returns('test_i64_trunc_sat_f32_s_11', m.test_i64_trunc_sat_f32_s_11, -2);
    returns('test_i64_trunc_sat_f32_s_12', m.test_i64_trunc_sat_f32_s_12,
        0x100000000);
    returns('test_i64_trunc_sat_f32_s_13', m.test_i64_trunc_sat_f32_s_13,
        -0x100000000);
    returns('test_i64_trunc_sat_f32_s_14', m.test_i64_trunc_sat_f32_s_14,
        0x7fffff8000000000);
    returns('test_i64_trunc_sat_f32_s_15', m.test_i64_trunc_sat_f32_s_15,
        -0x8000000000000000);
    returns('test_i64_trunc_sat_f32_s_16', m.test_i64_trunc_sat_f32_s_16,
        0x7fffffffffffffff);
    returns('test_i64_trunc_sat_f32_s_17', m.test_i64_trunc_sat_f32_s_17,
        -0x8000000000000000);
    returns('test_i64_trunc_sat_f32_s_18', m.test_i64_trunc_sat_f32_s_18,
        0x7fffffffffffffff);
    returns('test_i64_trunc_sat_f32_s_19', m.test_i64_trunc_sat_f32_s_19,
        -0x8000000000000000);
    returns('test_i64_trunc_sat_f32_s_20', m.test_i64_trunc_sat_f32_s_20, 0);
    returns('test_i64_trunc_sat_f32_s_21', m.test_i64_trunc_sat_f32_s_21, 0);
    returns('test_i64_trunc_sat_f32_s_22', m.test_i64_trunc_sat_f32_s_22, 0);
    returns('test_i64_trunc_sat_f32_s_23', m.test_i64_trunc_sat_f32_s_23, 0);
    returns('test_i64_trunc_sat_f32_u_0', m.test_i64_trunc_sat_f32_u_0, 0);
    returns('test_i64_trunc_sat_f32_u_1', m.test_i64_trunc_sat_f32_u_1, 0);
    returns('test_i64_trunc_sat_f32_u_2', m.test_i64_trunc_sat_f32_u_2, 0);
    returns('test_i64_trunc_sat_f32_u_3', m.test_i64_trunc_sat_f32_u_3, 0);
    returns('test_i64_trunc_sat_f32_u_4', m.test_i64_trunc_sat_f32_u_4, 1);
    returns('test_i64_trunc_sat_f32_u_5', m.test_i64_trunc_sat_f32_u_5, 1);
    returns('test_i64_trunc_sat_f32_u_6', m.test_i64_trunc_sat_f32_u_6, 1);
    returns('test_i64_trunc_sat_f32_u_7', m.test_i64_trunc_sat_f32_u_7,
        0x100000000);
    returns('test_i64_trunc_sat_f32_u_8', m.test_i64_trunc_sat_f32_u_8,
        -0x10000000000);
    returns('test_i64_trunc_sat_f32_u_9', m.test_i64_trunc_sat_f32_u_9, 0);
    returns('test_i64_trunc_sat_f32_u_10', m.test_i64_trunc_sat_f32_u_10, 0);
    returns('test_i64_trunc_sat_f32_u_11', m.test_i64_trunc_sat_f32_u_11, -1);
    returns('test_i64_trunc_sat_f32_u_12', m.test_i64_trunc_sat_f32_u_12, 0);
    returns('test_i64_trunc_sat_f32_u_13', m.test_i64_trunc_sat_f32_u_13, -1);
    returns('test_i64_trunc_sat_f32_u_14', m.test_i64_trunc_sat_f32_u_14, 0);
    returns('test_i64_trunc_sat_f32_u_15', m.test_i64_trunc_sat_f32_u_15, 0);
    returns('test_i64_trunc_sat_f32_u_16', m.test_i64_trunc_sat_f32_u_16, 0);
    returns('test_i64_trunc_sat_f32_u_17', m.test_i64_trunc_sat_f32_u_17, 0);
    returns('test_i64_trunc_sat_f32_u_18', m.test_i64_trunc_sat_f32_u_18, 0);
    returns('test_i64_trunc_sat_f64_s_0', m.test_i64_trunc_sat_f64_s_0, 0);
    returns('test_i64_trunc_sat_f64_s_1', m.test_i64_trunc_sat_f64_s_1, 0);
    returns('test_i64_trunc_sat_f64_s_2', m.test_i64_trunc_sat_f64_s_2, 0);
    returns('test_i64_trunc_sat_f64_s_3', m.test_i64_trunc_sat_f64_s_3, 0);
    returns('test_i64_trunc_sat_f64_s_4', m.test_i64_trunc_sat_f64_s_4, 1);
    returns('test_i64_trunc_sat_f64_s_5', m.test_i64_trunc_sat_f64_s_5, 1);
    returns('test_i64_trunc_sat_f64_s_6', m.test_i64_trunc_sat_f64_s_6, 1);
    returns('test_i64_trunc_sat_f64_s_7', m.test_i64_trunc_sat_f64_s_7, -1);
    returns('test_i64_trunc_sat_f64_s_8', m.test_i64_trunc_sat_f64_s_8, -1);
    returns('test_i64_trunc_sat_f64_s_9', m.test_i64_trunc_sat_f64_s_9, -1);
    returns('test_i64_trunc_sat_f64_s_10', m.test_i64_trunc_sat_f64_s_10, -1);
    returns('test_i64_trunc_sat_f64_s_11', m.test_i64_trunc_sat_f64_s_11, -2);
    returns('test_i64_trunc_sat_f64_s_12', m.test_i64_trunc_sat_f64_s_12,
        0x100000000);
    returns('test_i64_trunc_sat_f64_s_13', m.test_i64_trunc_sat_f64_s_13,
        -0x100000000);
    returns('test_i64_trunc_sat_f64_s_14', m.test_i64_trunc_sat_f64_s_14,
        0x7ffffffffffffc00);
    returns('test_i64_trunc_sat_f64_s_15', m.test_i64_trunc_sat_f64_s_15,
        -0x8000000000000000);
    returns('test_i64_trunc_sat_f64_s_16', m.test_i64_trunc_sat_f64_s_16,
        0x7fffffffffffffff);
    returns('test_i64_trunc_sat_f64_s_17', m.test_i64_trunc_sat_f64_s_17,
        -0x8000000000000000);
    returns('test_i64_trunc_sat_f64_s_18', m.test_i64_trunc_sat_f64_s_18,
        0x7fffffffffffffff);
    returns('test_i64_trunc_sat_f64_s_19', m.test_i64_trunc_sat_f64_s_19,
        -0x8000000000000000);
    returns('test_i64_trunc_sat_f64_s_20', m.test_i64_trunc_sat_f64_s_20, 0);
    returns('test_i64_trunc_sat_f64_s_21', m.test_i64_trunc_sat_f64_s_21, 0);
    returns('test_i64_trunc_sat_f64_s_22', m.test_i64_trunc_sat_f64_s_22, 0);
    returns('test_i64_trunc_sat_f64_s_23', m.test_i64_trunc_sat_f64_s_23, 0);
    returns('test_i64_trunc_sat_f64_u_0', m.test_i64_trunc_sat_f64_u_0, 0);
    returns('test_i64_trunc_sat_f64_u_1', m.test_i64_trunc_sat_f64_u_1, 0);
    returns('test_i64_trunc_sat_f64_u_2', m.test_i64_trunc_sat_f64_u_2, 0);
    returns('test_i64_trunc_sat_f64_u_3', m.test_i64_trunc_sat_f64_u_3, 0);
    returns('test_i64_trunc_sat_f64_u_4', m.test_i64_trunc_sat_f64_u_4, 1);
    returns('test_i64_trunc_sat_f64_u_5', m.test_i64_trunc_sat_f64_u_5, 1);
    returns('test_i64_trunc_sat_f64_u_6', m.test_i64_trunc_sat_f64_u_6, 1);
    returns(
        'test_i64_trunc_sat_f64_u_7', m.test_i64_trunc_sat_f64_u_7, 0xffffffff);
    returns('test_i64_trunc_sat_f64_u_8', m.test_i64_trunc_sat_f64_u_8,
        0x100000000);
    returns('test_i64_trunc_sat_f64_u_9', m.test_i64_trunc_sat_f64_u_9, -0x800);
    returns('test_i64_trunc_sat_f64_u_10', m.test_i64_trunc_sat_f64_u_10, 0);
    returns('test_i64_trunc_sat_f64_u_11', m.test_i64_trunc_sat_f64_u_11, 0);
    returns('test_i64_trunc_sat_f64_u_12', m.test_i64_trunc_sat_f64_u_12,
        0x5f5e100);
    returns('test_i64_trunc_sat_f64_u_13', m.test_i64_trunc_sat_f64_u_13,
        0x2386f26fc10000);
    returns('test_i64_trunc_sat_f64_u_14', m.test_i64_trunc_sat_f64_u_14,
        -0x8000000000000000);
    returns('test_i64_trunc_sat_f64_u_15', m.test_i64_trunc_sat_f64_u_15, -1);
    returns('test_i64_trunc_sat_f64_u_16', m.test_i64_trunc_sat_f64_u_16, 0);
    returns('test_i64_trunc_sat_f64_u_17', m.test_i64_trunc_sat_f64_u_17, -1);
    returns('test_i64_trunc_sat_f64_u_18', m.test_i64_trunc_sat_f64_u_18, 0);
    returns('test_i64_trunc_sat_f64_u_19', m.test_i64_trunc_sat_f64_u_19, 0);
    returns('test_i64_trunc_sat_f64_u_20', m.test_i64_trunc_sat_f64_u_20, 0);
    returns('test_i64_trunc_sat_f64_u_21', m.test_i64_trunc_sat_f64_u_21, 0);
    returns('test_i64_trunc_sat_f64_u_22', m.test_i64_trunc_sat_f64_u_22, 0);
    returns('test_f32_convert_i32_s_6', m.test_f32_convert_i32_s_6, 16777216.0);
    returns(
        'test_f32_convert_i32_s_7', m.test_f32_convert_i32_s_7, -16777216.0);
    returns('test_f32_convert_i32_s_8', m.test_f32_convert_i32_s_8, 16777220.0);
    returns(
        'test_f32_convert_i32_s_9', m.test_f32_convert_i32_s_9, -16777220.0);
    returns('test_f32_convert_i64_s_0', m.test_f32_convert_i64_s_0, 1.0);
    returns('test_f32_convert_i64_s_1', m.test_f32_convert_i64_s_1, -1.0);
    returns('test_f32_convert_i64_s_2', m.test_f32_convert_i64_s_2, 0.0);
    returns('test_f32_convert_i64_s_3', m.test_f32_convert_i64_s_3,
        9223372036854776000.0);
    returns('test_f32_convert_i64_s_4', m.test_f32_convert_i64_s_4,
        -9223372036854776000.0);
    returns('test_f32_convert_i64_s_5', m.test_f32_convert_i64_s_5,
        314159275180032.0);
    returns('test_f32_convert_i64_s_6', m.test_f32_convert_i64_s_6, 16777216.0);
    returns(
        'test_f32_convert_i64_s_7', m.test_f32_convert_i64_s_7, -16777216.0);
    returns('test_f32_convert_i64_s_8', m.test_f32_convert_i64_s_8, 16777220.0);
    returns(
        'test_f32_convert_i64_s_9', m.test_f32_convert_i64_s_9, -16777220.0);
    returns('test_f32_convert_i64_s_10', m.test_f32_convert_i64_s_10,
        9223371487098962000.0);
    returns('test_f32_convert_i64_s_11', m.test_f32_convert_i64_s_11,
        -9223371487098962000.0);
    returns('test_f32_convert_i64_s_12', m.test_f32_convert_i64_s_12,
        9007200328482816.0);
    returns('test_f32_convert_i64_s_13', m.test_f32_convert_i64_s_13,
        -9007200328482816.0);
    returns('test_f64_convert_i32_s_0', m.test_f64_convert_i32_s_0, 1.0);
    returns('test_f64_convert_i32_s_1', m.test_f64_convert_i32_s_1, -1.0);
    returns('test_f64_convert_i32_s_2', m.test_f64_convert_i32_s_2, 0.0);
    returns(
        'test_f64_convert_i32_s_3', m.test_f64_convert_i32_s_3, 2147483647.0);
    returns(
        'test_f64_convert_i32_s_4', m.test_f64_convert_i32_s_4, -2147483648.0);
    returns(
        'test_f64_convert_i32_s_5', m.test_f64_convert_i32_s_5, 987654321.0);
    returns('test_f64_convert_i64_s_0', m.test_f64_convert_i64_s_0, 1.0);
    returns('test_f64_convert_i64_s_1', m.test_f64_convert_i64_s_1, -1.0);
    returns('test_f64_convert_i64_s_2', m.test_f64_convert_i64_s_2, 0.0);
    returns('test_f64_convert_i64_s_3', m.test_f64_convert_i64_s_3,
        9223372036854776000.0);
    returns('test_f64_convert_i64_s_4', m.test_f64_convert_i64_s_4,
        -9223372036854776000.0);
    returns('test_f64_convert_i64_s_5', m.test_f64_convert_i64_s_5,
        4669201609102990.0);
    returns('test_f64_convert_i64_s_6', m.test_f64_convert_i64_s_6,
        9007199254740992.0);
    returns('test_f64_convert_i64_s_7', m.test_f64_convert_i64_s_7,
        -9007199254740992.0);
    returns('test_f64_convert_i64_s_8', m.test_f64_convert_i64_s_8,
        9007199254740996.0);
    returns('test_f64_convert_i64_s_9', m.test_f64_convert_i64_s_9,
        -9007199254740996.0);
    returns('test_f32_convert_i32_u_0', m.test_f32_convert_i32_u_0, 1.0);
    returns('test_f32_convert_i32_u_1', m.test_f32_convert_i32_u_1, 0.0);
    returns(
        'test_f32_convert_i32_u_2', m.test_f32_convert_i32_u_2, 2147483648.0);
    returns(
        'test_f32_convert_i32_u_3', m.test_f32_convert_i32_u_3, 2147483648.0);
    returns(
        'test_f32_convert_i32_u_4', m.test_f32_convert_i32_u_4, 305419904.0);
    returns(
        'test_f32_convert_i32_u_5', m.test_f32_convert_i32_u_5, 4294967296.0);
    returns(
        'test_f32_convert_i32_u_6', m.test_f32_convert_i32_u_6, 2147483648.0);
    returns(
        'test_f32_convert_i32_u_7', m.test_f32_convert_i32_u_7, 2147483904.0);
    returns(
        'test_f32_convert_i32_u_8', m.test_f32_convert_i32_u_8, 2147483904.0);
    returns(
        'test_f32_convert_i32_u_9', m.test_f32_convert_i32_u_9, 4294966784.0);
    returns(
        'test_f32_convert_i32_u_10', m.test_f32_convert_i32_u_10, 4294967040.0);
    returns(
        'test_f32_convert_i32_u_11', m.test_f32_convert_i32_u_11, 4294967040.0);
    returns(
        'test_f32_convert_i32_u_12', m.test_f32_convert_i32_u_12, 16777216.0);
    returns(
        'test_f32_convert_i32_u_13', m.test_f32_convert_i32_u_13, 16777220.0);
    returns('test_f32_convert_i64_u_0', m.test_f32_convert_i64_u_0, 1.0);
    returns('test_f32_convert_i64_u_1', m.test_f32_convert_i64_u_1, 0.0);
    returns('test_f32_convert_i64_u_2', m.test_f32_convert_i64_u_2,
        9223372036854776000.0);
    returns('test_f32_convert_i64_u_3', m.test_f32_convert_i64_u_3,
        9223372036854776000.0);
    returns('test_f32_convert_i64_u_4', m.test_f32_convert_i64_u_4,
        18446744073709552000.0);
    returns('test_f32_convert_i64_u_5', m.test_f32_convert_i64_u_5, 16777216.0);
    returns('test_f32_convert_i64_u_6', m.test_f32_convert_i64_u_6, 16777220.0);
    returns('test_f32_convert_i64_u_7', m.test_f32_convert_i64_u_7,
        9007200328482816.0);
    returns('test_f32_convert_i64_u_8', m.test_f32_convert_i64_u_8,
        9223371487098962000.0);
    returns('test_f32_convert_i64_u_9', m.test_f32_convert_i64_u_9,
        9223373136366404000.0);
    returns('test_f32_convert_i64_u_10', m.test_f32_convert_i64_u_10,
        18446742974197924000.0);
    returns('test_f64_convert_i32_u_0', m.test_f64_convert_i32_u_0, 1.0);
    returns('test_f64_convert_i32_u_1', m.test_f64_convert_i32_u_1, 0.0);
    returns(
        'test_f64_convert_i32_u_2', m.test_f64_convert_i32_u_2, 2147483647.0);
    returns(
        'test_f64_convert_i32_u_3', m.test_f64_convert_i32_u_3, 2147483648.0);
    returns(
        'test_f64_convert_i32_u_4', m.test_f64_convert_i32_u_4, 4294967295.0);
    returns('test_f64_convert_i64_u_0', m.test_f64_convert_i64_u_0, 1.0);
    returns('test_f64_convert_i64_u_1', m.test_f64_convert_i64_u_1, 0.0);
    returns('test_f64_convert_i64_u_2', m.test_f64_convert_i64_u_2,
        9223372036854776000.0);
    returns('test_f64_convert_i64_u_3', m.test_f64_convert_i64_u_3,
        9223372036854776000.0);
    returns('test_f64_convert_i64_u_4', m.test_f64_convert_i64_u_4,
        18446744073709552000.0);
    returns('test_f64_convert_i64_u_5', m.test_f64_convert_i64_u_5,
        9223372036854776000.0);
    returns('test_f64_convert_i64_u_6', m.test_f64_convert_i64_u_6,
        9223372036854778000.0);
    returns('test_f64_convert_i64_u_7', m.test_f64_convert_i64_u_7,
        9223372036854778000.0);
    returns('test_f64_convert_i64_u_8', m.test_f64_convert_i64_u_8,
        18446744073709548000.0);
    returns('test_f64_convert_i64_u_9', m.test_f64_convert_i64_u_9,
        18446744073709550000.0);
    returns('test_f64_convert_i64_u_10', m.test_f64_convert_i64_u_10,
        18446744073709550000.0);
    returns('test_f64_convert_i64_u_11', m.test_f64_convert_i64_u_11,
        9007199254740992.0);
    returns('test_f64_convert_i64_u_12', m.test_f64_convert_i64_u_12,
        9007199254740996.0);
    returns('test_f64_promote_f32_0', m.test_f64_promote_f32_0, 0.0);
    returns('test_f64_promote_f32_1', m.test_f64_promote_f32_1, -0.0);
    returns('test_f64_promote_f32_2', m.test_f64_promote_f32_2,
        1.401298464324817e-45);
    returns('test_f64_promote_f32_3', m.test_f64_promote_f32_3,
        -1.401298464324817e-45);
    returns('test_f64_promote_f32_4', m.test_f64_promote_f32_4, 1.0);
    returns('test_f64_promote_f32_5', m.test_f64_promote_f32_5, -1.0);
    returns('test_f64_promote_f32_6', m.test_f64_promote_f32_6,
        -3.4028234663852886e+38);
    returns('test_f64_promote_f32_7', m.test_f64_promote_f32_7,
        3.4028234663852886e+38);
    returns('test_f64_promote_f32_8', m.test_f64_promote_f32_8,
        1.504632769052528e-36);
    returns('test_f64_promote_f32_9', m.test_f64_promote_f32_9,
        6.6382536710104395e+37);
    returns(
        'test_f64_promote_f32_10', m.test_f64_promote_f32_10, double.infinity);
    returns('test_f64_promote_f32_11', m.test_f64_promote_f32_11,
        double.negativeInfinity);
    returns('test_f64_promote_f32_12', m.test_f64_promote_f32_12, double.nan);
    returns('test_f64_promote_f32_13', m.test_f64_promote_f32_13, double.nan);
    returns('test_f64_promote_f32_14', m.test_f64_promote_f32_14, double.nan);
    returns('test_f64_promote_f32_15', m.test_f64_promote_f32_15, double.nan);
    returns('test_f32_demote_f64_0', m.test_f32_demote_f64_0, 0.0);
    returns('test_f32_demote_f64_1', m.test_f32_demote_f64_1, -0.0);
    returns('test_f32_demote_f64_2', m.test_f32_demote_f64_2, 0.0);
    returns('test_f32_demote_f64_3', m.test_f32_demote_f64_3, -0.0);
    returns('test_f32_demote_f64_4', m.test_f32_demote_f64_4, 1.0);
    returns('test_f32_demote_f64_5', m.test_f32_demote_f64_5, -1.0);
    returns('test_f32_demote_f64_6', m.test_f32_demote_f64_6,
        1.1754943508222875e-38);
    returns('test_f32_demote_f64_7', m.test_f32_demote_f64_7,
        -1.1754943508222875e-38);
    returns('test_f32_demote_f64_8', m.test_f32_demote_f64_8,
        1.1754942106924411e-38);
    returns('test_f32_demote_f64_9', m.test_f32_demote_f64_9,
        -1.1754942106924411e-38);
    returns('test_f32_demote_f64_10', m.test_f32_demote_f64_10,
        1.401298464324817e-45);
    returns('test_f32_demote_f64_11', m.test_f32_demote_f64_11,
        -1.401298464324817e-45);
    returns('test_f32_demote_f64_12', m.test_f32_demote_f64_12,
        3.4028232635611926e+38);
    returns('test_f32_demote_f64_13', m.test_f32_demote_f64_13,
        -3.4028232635611926e+38);
    returns('test_f32_demote_f64_14', m.test_f32_demote_f64_14,
        3.4028234663852886e+38);
    returns('test_f32_demote_f64_15', m.test_f32_demote_f64_15,
        -3.4028234663852886e+38);
    returns('test_f32_demote_f64_16', m.test_f32_demote_f64_16,
        3.4028234663852886e+38);
    returns('test_f32_demote_f64_17', m.test_f32_demote_f64_17,
        -3.4028234663852886e+38);
    returns('test_f32_demote_f64_18', m.test_f32_demote_f64_18,
        3.4028234663852886e+38);
    returns('test_f32_demote_f64_19', m.test_f32_demote_f64_19,
        -3.4028234663852886e+38);
    returns(
        'test_f32_demote_f64_20', m.test_f32_demote_f64_20, double.infinity);
    returns('test_f32_demote_f64_21', m.test_f32_demote_f64_21,
        double.negativeInfinity);
    returns('test_f32_demote_f64_22', m.test_f32_demote_f64_22,
        1.504632769052528e-36);
    returns('test_f32_demote_f64_23', m.test_f32_demote_f64_23,
        6.6382536710104395e+37);
    returns(
        'test_f32_demote_f64_24', m.test_f32_demote_f64_24, double.infinity);
    returns('test_f32_demote_f64_25', m.test_f32_demote_f64_25,
        double.negativeInfinity);
    returns('test_f32_demote_f64_26', m.test_f32_demote_f64_26, 1.0);
    returns('test_f32_demote_f64_27', m.test_f32_demote_f64_27, 1.0);
    returns('test_f32_demote_f64_28', m.test_f32_demote_f64_28, 1.0);
    returns(
        'test_f32_demote_f64_29', m.test_f32_demote_f64_29, 1.0000001192092896);
    returns(
        'test_f32_demote_f64_30', m.test_f32_demote_f64_30, 1.0000001192092896);
    returns(
        'test_f32_demote_f64_31', m.test_f32_demote_f64_31, 1.000000238418579);
    returns(
        'test_f32_demote_f64_32', m.test_f32_demote_f64_32, 1.000000238418579);
    returns('test_f32_demote_f64_33', m.test_f32_demote_f64_33, 16777216.0);
    returns('test_f32_demote_f64_34', m.test_f32_demote_f64_34, 16777218.0);
    returns('test_f32_demote_f64_35', m.test_f32_demote_f64_35, 16777218.0);
    returns('test_f32_demote_f64_36', m.test_f32_demote_f64_36, 16777220.0);
    returns('test_f32_demote_f64_37', m.test_f32_demote_f64_37,
        4.2425845416862035e+32);
    returns('test_f32_demote_f64_38', m.test_f32_demote_f64_38,
        1.5692621142680845e-34);
    returns('test_f32_demote_f64_39', m.test_f32_demote_f64_39,
        1.055177323247048e-38);
    returns(
        'test_f32_demote_f64_40', m.test_f32_demote_f64_40, -2.823812961578369);
    returns('test_f32_demote_f64_41', m.test_f32_demote_f64_41,
        -9.063376213401508e+33);
    returns('test_f32_demote_f64_42', m.test_f32_demote_f64_42, double.nan);
    returns('test_f32_demote_f64_43', m.test_f32_demote_f64_43, double.nan);
    returns('test_f32_demote_f64_44', m.test_f32_demote_f64_44, double.nan);
    returns('test_f32_demote_f64_45', m.test_f32_demote_f64_45, double.nan);
    returns('test_f32_demote_f64_46', m.test_f32_demote_f64_46, 0.0);
    returns('test_f32_demote_f64_47', m.test_f32_demote_f64_47, -0.0);
    returns('test_f32_demote_f64_48', m.test_f32_demote_f64_48, 0.0);
    returns('test_f32_demote_f64_49', m.test_f32_demote_f64_49, -0.0);
    returns('test_f32_demote_f64_50', m.test_f32_demote_f64_50,
        1.401298464324817e-45);
    returns('test_f32_demote_f64_51', m.test_f32_demote_f64_51,
        -1.401298464324817e-45);
    returns('test_f32_reinterpret_i32_0', m.test_f32_reinterpret_i32_0, 0.0);
    returns('test_f32_reinterpret_i32_1', m.test_f32_reinterpret_i32_1, -0.0);
    returns('test_f32_reinterpret_i32_2', m.test_f32_reinterpret_i32_2,
        1.401298464324817e-45);
    returns(
        'test_f32_reinterpret_i32_3', m.test_f32_reinterpret_i32_3, double.nan);
    returns('test_f32_reinterpret_i32_4', m.test_f32_reinterpret_i32_4,
        1.6535997013422565e-34);
    returns('test_f32_reinterpret_i32_5', m.test_f32_reinterpret_i32_5,
        -1.401298464324817e-45);
    returns('test_f32_reinterpret_i32_6', m.test_f32_reinterpret_i32_6,
        double.infinity);
    returns('test_f32_reinterpret_i32_7', m.test_f32_reinterpret_i32_7,
        double.negativeInfinity);
    returns(
        'test_f32_reinterpret_i32_8', m.test_f32_reinterpret_i32_8, double.nan);
    returns(
        'test_f32_reinterpret_i32_9', m.test_f32_reinterpret_i32_9, double.nan);
    returns('test_f32_reinterpret_i32_10', m.test_f32_reinterpret_i32_10,
        double.nan);
    returns('test_f32_reinterpret_i32_11', m.test_f32_reinterpret_i32_11,
        double.nan);
    returns('test_f64_reinterpret_i64_0', m.test_f64_reinterpret_i64_0, 0.0);
    returns('test_f64_reinterpret_i64_1', m.test_f64_reinterpret_i64_1, 5e-324);
    returns(
        'test_f64_reinterpret_i64_2', m.test_f64_reinterpret_i64_2, double.nan);
    returns('test_f64_reinterpret_i64_3', m.test_f64_reinterpret_i64_3, -0.0);
    returns('test_f64_reinterpret_i64_4', m.test_f64_reinterpret_i64_4,
        6.09957582e-315);
    returns(
        'test_f64_reinterpret_i64_5', m.test_f64_reinterpret_i64_5, -5e-324);
    returns('test_f64_reinterpret_i64_6', m.test_f64_reinterpret_i64_6,
        double.infinity);
    returns('test_f64_reinterpret_i64_7', m.test_f64_reinterpret_i64_7,
        double.negativeInfinity);
    returns(
        'test_f64_reinterpret_i64_8', m.test_f64_reinterpret_i64_8, double.nan);
    returns(
        'test_f64_reinterpret_i64_9', m.test_f64_reinterpret_i64_9, double.nan);
    returns('test_f64_reinterpret_i64_10', m.test_f64_reinterpret_i64_10,
        double.nan);
    returns('test_f64_reinterpret_i64_11', m.test_f64_reinterpret_i64_11,
        double.nan);
    returns('test_i32_reinterpret_f32_0', m.test_i32_reinterpret_f32_0, 0);
    returns('test_i32_reinterpret_f32_1', m.test_i32_reinterpret_f32_1,
        -0x80000000);
    returns('test_i32_reinterpret_f32_2', m.test_i32_reinterpret_f32_2, 1);
    returns('test_i32_reinterpret_f32_3', m.test_i32_reinterpret_f32_3, -1);
    returns('test_i32_reinterpret_f32_4', m.test_i32_reinterpret_f32_4,
        -0x7fffffff);
    returns(
        'test_i32_reinterpret_f32_5', m.test_i32_reinterpret_f32_5, 0x3f800000);
    returns(
        'test_i32_reinterpret_f32_6', m.test_i32_reinterpret_f32_6, 0x40490fda);
    returns(
        'test_i32_reinterpret_f32_7', m.test_i32_reinterpret_f32_7, 0x7f7fffff);
    returns(
        'test_i32_reinterpret_f32_8', m.test_i32_reinterpret_f32_8, -0x800001);
    returns(
        'test_i32_reinterpret_f32_9', m.test_i32_reinterpret_f32_9, 0x7f800000);
    returns('test_i32_reinterpret_f32_10', m.test_i32_reinterpret_f32_10,
        -0x800000);
    returns('test_i32_reinterpret_f32_11', m.test_i32_reinterpret_f32_11,
        0x7fc00000);
    returns('test_i32_reinterpret_f32_12', m.test_i32_reinterpret_f32_12,
        -0x400000);
    returns('test_i32_reinterpret_f32_13', m.test_i32_reinterpret_f32_13,
        0x7fa00000);
    returns('test_i32_reinterpret_f32_14', m.test_i32_reinterpret_f32_14,
        -0x600000);
    returns('test_i64_reinterpret_f64_0', m.test_i64_reinterpret_f64_0, 0);
    returns('test_i64_reinterpret_f64_1', m.test_i64_reinterpret_f64_1,
        -0x8000000000000000);
    returns('test_i64_reinterpret_f64_2', m.test_i64_reinterpret_f64_2, 1);
    returns('test_i64_reinterpret_f64_3', m.test_i64_reinterpret_f64_3, -1);
    returns('test_i64_reinterpret_f64_4', m.test_i64_reinterpret_f64_4,
        -0x7fffffffffffffff);
    returns('test_i64_reinterpret_f64_5', m.test_i64_reinterpret_f64_5,
        0x3ff0000000000000);
    returns('test_i64_reinterpret_f64_6', m.test_i64_reinterpret_f64_6,
        0x400921fb54442d11);
    returns('test_i64_reinterpret_f64_7', m.test_i64_reinterpret_f64_7,
        0x7fefffffffffffff);
    returns('test_i64_reinterpret_f64_8', m.test_i64_reinterpret_f64_8,
        -0x10000000000001);
    returns('test_i64_reinterpret_f64_9', m.test_i64_reinterpret_f64_9,
        0x7ff0000000000000);
    returns('test_i64_reinterpret_f64_10', m.test_i64_reinterpret_f64_10,
        -0x10000000000000);
    returns('test_i64_reinterpret_f64_11', m.test_i64_reinterpret_f64_11,
        0x7ff8000000000000);
    returns('test_i64_reinterpret_f64_12', m.test_i64_reinterpret_f64_12,
        -0x8000000000000);
    returns('test_i64_reinterpret_f64_13', m.test_i64_reinterpret_f64_13,
        0x7ff4000000000000);
    returns('test_i64_reinterpret_f64_14', m.test_i64_reinterpret_f64_14,
        -0xc000000000000);
  });
}

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(0);

  final DataSegments dataSegments = DataSegments();

  i64 i64_extend_i32_s(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_extend_i32_s();
    return frame.pop();
  }

  i64 i64_extend_i32_u(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_extend_i32_u();
    return frame.pop();
  }

  i32 i32_wrap_i64(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_wrap_i64();
    return frame.pop();
  }

  i32 i32_trunc_f32_s(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_trunc_f32_s();
    return frame.pop();
  }

  i32 i32_trunc_f32_u(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_trunc_f32_u();
    return frame.pop();
  }

  i32 i32_trunc_f64_s(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_trunc_f64_s();
    return frame.pop();
  }

  i32 i32_trunc_f64_u(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_trunc_f64_u();
    return frame.pop();
  }

  i64 i64_trunc_f32_s(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_trunc_f32_s();
    return frame.pop();
  }

  i64 i64_trunc_f32_u(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_trunc_f32_u();
    return frame.pop();
  }

  i64 i64_trunc_f64_s(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_trunc_f64_s();
    return frame.pop();
  }

  i64 i64_trunc_f64_u(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_trunc_f64_u();
    return frame.pop();
  }

  i32 i32_trunc_sat_f32_s(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC)';
  }

  i32 i32_trunc_sat_f32_u(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC)';
  }

  i32 i32_trunc_sat_f64_s(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC)';
  }

  i32 i32_trunc_sat_f64_u(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_trunc_sat_f64_u();
    return frame.pop();
  }

  i64 i64_trunc_sat_f32_s(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC)';
  }

  i64 i64_trunc_sat_f32_u(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC)';
  }

  i64 i64_trunc_sat_f64_s(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC)';
  }

  i64 i64_trunc_sat_f64_u(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC)';
  }

  f32 f32_convert_i32_s(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f32_convert_i32_s();
    return frame.pop();
  }

  f32 f32_convert_i64_s(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f32_convert_i64_s();
    return frame.pop();
  }

  f64 f64_convert_i32_s(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f64_convert_i32_s();
    return frame.pop();
  }

  f64 f64_convert_i64_s(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f64_convert_i64_s();
    return frame.pop();
  }

  f32 f32_convert_i32_u(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f32_convert_i32_u();
    return frame.pop();
  }

  f32 f32_convert_i64_u(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f32_convert_i64_u();
    return frame.pop();
  }

  f64 f64_convert_i32_u(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f64_convert_i32_u();
    return frame.pop();
  }

  f64 f64_convert_i64_u(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f64_convert_i64_u();
    return frame.pop();
  }

  f64 f64_promote_f32(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f64_promote_f32();
    return frame.pop();
  }

  f32 f32_demote_f64(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xB6)';
  }

  f32 f32_reinterpret_i32(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f32_reinterpret_i32();
    return frame.pop();
  }

  f64 f64_reinterpret_i64(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f64_reinterpret_i64();
    return frame.pop();
  }

  i32 i32_reinterpret_f32(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i64 i64_reinterpret_f64(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 test_i64_extend_i32_s_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(i64_extend_i32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_extend_i32_s_1() {
    final frame = Frame(memory);
    frame.i32_const(0x2710);
    {
      var t0 = frame.pop();
      frame.push(i64_extend_i32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_extend_i32_s_2() {
    final frame = Frame(memory);
    frame.i32_const(-0x2710);
    {
      var t0 = frame.pop();
      frame.push(i64_extend_i32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_extend_i32_s_3() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(i64_extend_i32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_extend_i32_s_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    {
      var t0 = frame.pop();
      frame.push(i64_extend_i32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_extend_i32_s_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    {
      var t0 = frame.pop();
      frame.push(i64_extend_i32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_extend_i32_u_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(i64_extend_i32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_extend_i32_u_1() {
    final frame = Frame(memory);
    frame.i32_const(0x2710);
    {
      var t0 = frame.pop();
      frame.push(i64_extend_i32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_extend_i32_u_2() {
    final frame = Frame(memory);
    frame.i32_const(-0x2710);
    {
      var t0 = frame.pop();
      frame.push(i64_extend_i32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_extend_i32_u_3() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(i64_extend_i32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_extend_i32_u_4() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    {
      var t0 = frame.pop();
      frame.push(i64_extend_i32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_extend_i32_u_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    {
      var t0 = frame.pop();
      frame.push(i64_extend_i32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_wrap_i64_0() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(i32_wrap_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_wrap_i64_1() {
    final frame = Frame(memory);
    frame.i64_const(-0x186a0);
    {
      var t0 = frame.pop();
      frame.push(i32_wrap_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_wrap_i64_2() {
    final frame = Frame(memory);
    frame.i64_const(0x80000000);
    {
      var t0 = frame.pop();
      frame.push(i32_wrap_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_wrap_i64_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x80000001);
    {
      var t0 = frame.pop();
      frame.push(i32_wrap_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_wrap_i64_4() {
    final frame = Frame(memory);
    frame.i64_const(-0x100000000);
    {
      var t0 = frame.pop();
      frame.push(i32_wrap_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_wrap_i64_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x100000001);
    {
      var t0 = frame.pop();
      frame.push(i32_wrap_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_wrap_i64_6() {
    final frame = Frame(memory);
    frame.i64_const(-0xffffffff);
    {
      var t0 = frame.pop();
      frame.push(i32_wrap_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_wrap_i64_7() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(i32_wrap_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_wrap_i64_8() {
    final frame = Frame(memory);
    frame.i64_const(0x123456789abcdef0);
    {
      var t0 = frame.pop();
      frame.push(i32_wrap_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_wrap_i64_9() {
    final frame = Frame(memory);
    frame.i64_const(0xffffffff);
    {
      var t0 = frame.pop();
      frame.push(i32_wrap_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_wrap_i64_10() {
    final frame = Frame(memory);
    frame.i64_const(0x100000000);
    {
      var t0 = frame.pop();
      frame.push(i32_wrap_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_wrap_i64_11() {
    final frame = Frame(memory);
    frame.i64_const(0x100000001);
    {
      var t0 = frame.pop();
      frame.push(i32_wrap_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_1() {
    final frame = Frame(memory);
    frame.f32_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_2() {
    final frame = Frame(memory);
    frame.f32_const(1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_3() {
    final frame = Frame(memory);
    frame.f32_const(-1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_4() {
    final frame = Frame(memory);
    frame.f32_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_5() {
    final frame = Frame(memory);
    frame.f32_const(1.100000023841858);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_6() {
    final frame = Frame(memory);
    frame.f32_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_7() {
    final frame = Frame(memory);
    frame.f32_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_8() {
    final frame = Frame(memory);
    frame.f32_const(-1.100000023841858);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_9() {
    final frame = Frame(memory);
    frame.f32_const(-1.5);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_10() {
    final frame = Frame(memory);
    frame.f32_const(-1.899999976158142);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_11() {
    final frame = Frame(memory);
    frame.f32_const(-2.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_12() {
    final frame = Frame(memory);
    frame.f32_const(2147483520.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_13() {
    final frame = Frame(memory);
    frame.f32_const(-2147483648.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_14() {
    final frame = Frame(memory);
    frame.f32_const(2147483648.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_15() {
    final frame = Frame(memory);
    frame.f32_const(-2147483904.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_16() {
    final frame = Frame(memory);
    frame.f32_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_17() {
    final frame = Frame(memory);
    frame.f32_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_18() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_19() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_20() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_s_21() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_1() {
    final frame = Frame(memory);
    frame.f32_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_2() {
    final frame = Frame(memory);
    frame.f32_const(1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_3() {
    final frame = Frame(memory);
    frame.f32_const(-1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_4() {
    final frame = Frame(memory);
    frame.f32_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_5() {
    final frame = Frame(memory);
    frame.f32_const(1.100000023841858);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_6() {
    final frame = Frame(memory);
    frame.f32_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_7() {
    final frame = Frame(memory);
    frame.f32_const(1.899999976158142);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_8() {
    final frame = Frame(memory);
    frame.f32_const(2.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_9() {
    final frame = Frame(memory);
    frame.f32_const(2147483648.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_10() {
    final frame = Frame(memory);
    frame.f32_const(4294967040.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_11() {
    final frame = Frame(memory);
    frame.f32_const(-0.8999999761581421);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_12() {
    final frame = Frame(memory);
    frame.f32_const(-0.9999999403953552);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_13() {
    final frame = Frame(memory);
    frame.f32_const(4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_14() {
    final frame = Frame(memory);
    frame.f32_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_15() {
    final frame = Frame(memory);
    frame.f32_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_16() {
    final frame = Frame(memory);
    frame.f32_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_17() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_18() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_19() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f32_u_20() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_1() {
    final frame = Frame(memory);
    frame.f64_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_2() {
    final frame = Frame(memory);
    frame.f64_const(5e-324);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_3() {
    final frame = Frame(memory);
    frame.f64_const(-5e-324);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_4() {
    final frame = Frame(memory);
    frame.f64_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_5() {
    final frame = Frame(memory);
    frame.f64_const(1.1);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_6() {
    final frame = Frame(memory);
    frame.f64_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_7() {
    final frame = Frame(memory);
    frame.f64_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_8() {
    final frame = Frame(memory);
    frame.f64_const(-1.1);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_9() {
    final frame = Frame(memory);
    frame.f64_const(-1.5);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_10() {
    final frame = Frame(memory);
    frame.f64_const(-1.9);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_11() {
    final frame = Frame(memory);
    frame.f64_const(-2.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_12() {
    final frame = Frame(memory);
    frame.f64_const(2147483647.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_13() {
    final frame = Frame(memory);
    frame.f64_const(-2147483648.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_14() {
    final frame = Frame(memory);
    frame.f64_const(-2147483648.9);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_15() {
    final frame = Frame(memory);
    frame.f64_const(2147483647.9);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_16() {
    final frame = Frame(memory);
    frame.f64_const(2147483648.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_17() {
    final frame = Frame(memory);
    frame.f64_const(-2147483649.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_18() {
    final frame = Frame(memory);
    frame.f64_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_19() {
    final frame = Frame(memory);
    frame.f64_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_20() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_21() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_22() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_s_23() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_1() {
    final frame = Frame(memory);
    frame.f64_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_2() {
    final frame = Frame(memory);
    frame.f64_const(5e-324);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_3() {
    final frame = Frame(memory);
    frame.f64_const(-5e-324);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_4() {
    final frame = Frame(memory);
    frame.f64_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_5() {
    final frame = Frame(memory);
    frame.f64_const(1.1);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_6() {
    final frame = Frame(memory);
    frame.f64_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_7() {
    final frame = Frame(memory);
    frame.f64_const(1.9);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_8() {
    final frame = Frame(memory);
    frame.f64_const(2.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_9() {
    final frame = Frame(memory);
    frame.f64_const(2147483648.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_10() {
    final frame = Frame(memory);
    frame.f64_const(4294967295.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_11() {
    final frame = Frame(memory);
    frame.f64_const(-0.9);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_12() {
    final frame = Frame(memory);
    frame.f64_const(-0.9999999999999999);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_13() {
    final frame = Frame(memory);
    frame.f64_const(100000000.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_14() {
    final frame = Frame(memory);
    frame.f64_const(-0.9);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_15() {
    final frame = Frame(memory);
    frame.f64_const(4294967295.9);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_16() {
    final frame = Frame(memory);
    frame.f64_const(4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_17() {
    final frame = Frame(memory);
    frame.f64_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_18() {
    final frame = Frame(memory);
    frame.f64_const(10000000000000000.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_19() {
    final frame = Frame(memory);
    frame.f64_const(1e+30);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_20() {
    final frame = Frame(memory);
    frame.f64_const(9223372036854776000.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_21() {
    final frame = Frame(memory);
    frame.f64_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_22() {
    final frame = Frame(memory);
    frame.f64_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_23() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_24() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_25() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_f64_u_26() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_1() {
    final frame = Frame(memory);
    frame.f32_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_2() {
    final frame = Frame(memory);
    frame.f32_const(1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_3() {
    final frame = Frame(memory);
    frame.f32_const(-1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_4() {
    final frame = Frame(memory);
    frame.f32_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_5() {
    final frame = Frame(memory);
    frame.f32_const(1.100000023841858);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_6() {
    final frame = Frame(memory);
    frame.f32_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_7() {
    final frame = Frame(memory);
    frame.f32_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_8() {
    final frame = Frame(memory);
    frame.f32_const(-1.100000023841858);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_9() {
    final frame = Frame(memory);
    frame.f32_const(-1.5);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_10() {
    final frame = Frame(memory);
    frame.f32_const(-1.899999976158142);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_11() {
    final frame = Frame(memory);
    frame.f32_const(-2.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_12() {
    final frame = Frame(memory);
    frame.f32_const(4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_13() {
    final frame = Frame(memory);
    frame.f32_const(-4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_14() {
    final frame = Frame(memory);
    frame.f32_const(9223371487098962000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_15() {
    final frame = Frame(memory);
    frame.f32_const(-9223372036854776000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_16() {
    final frame = Frame(memory);
    frame.f32_const(9223372036854776000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_17() {
    final frame = Frame(memory);
    frame.f32_const(-9223373136366404000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_18() {
    final frame = Frame(memory);
    frame.f32_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_19() {
    final frame = Frame(memory);
    frame.f32_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_20() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_21() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_22() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_s_23() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_1() {
    final frame = Frame(memory);
    frame.f32_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_2() {
    final frame = Frame(memory);
    frame.f32_const(1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_3() {
    final frame = Frame(memory);
    frame.f32_const(-1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_4() {
    final frame = Frame(memory);
    frame.f32_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_5() {
    final frame = Frame(memory);
    frame.f32_const(1.100000023841858);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_6() {
    final frame = Frame(memory);
    frame.f32_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_7() {
    final frame = Frame(memory);
    frame.f32_const(4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_8() {
    final frame = Frame(memory);
    frame.f32_const(18446742974197924000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_9() {
    final frame = Frame(memory);
    frame.f32_const(-0.8999999761581421);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_10() {
    final frame = Frame(memory);
    frame.f32_const(-0.9999999403953552);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_11() {
    final frame = Frame(memory);
    frame.f32_const(18446744073709552000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_12() {
    final frame = Frame(memory);
    frame.f32_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_13() {
    final frame = Frame(memory);
    frame.f32_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_14() {
    final frame = Frame(memory);
    frame.f32_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_15() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_16() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_17() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f32_u_18() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_1() {
    final frame = Frame(memory);
    frame.f64_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_2() {
    final frame = Frame(memory);
    frame.f64_const(5e-324);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_3() {
    final frame = Frame(memory);
    frame.f64_const(-5e-324);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_4() {
    final frame = Frame(memory);
    frame.f64_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_5() {
    final frame = Frame(memory);
    frame.f64_const(1.1);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_6() {
    final frame = Frame(memory);
    frame.f64_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_7() {
    final frame = Frame(memory);
    frame.f64_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_8() {
    final frame = Frame(memory);
    frame.f64_const(-1.1);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_9() {
    final frame = Frame(memory);
    frame.f64_const(-1.5);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_10() {
    final frame = Frame(memory);
    frame.f64_const(-1.9);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_11() {
    final frame = Frame(memory);
    frame.f64_const(-2.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_12() {
    final frame = Frame(memory);
    frame.f64_const(4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_13() {
    final frame = Frame(memory);
    frame.f64_const(-4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_14() {
    final frame = Frame(memory);
    frame.f64_const(9223372036854775000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_15() {
    final frame = Frame(memory);
    frame.f64_const(-9223372036854776000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_16() {
    final frame = Frame(memory);
    frame.f64_const(9223372036854776000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_17() {
    final frame = Frame(memory);
    frame.f64_const(-9223372036854778000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_18() {
    final frame = Frame(memory);
    frame.f64_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_19() {
    final frame = Frame(memory);
    frame.f64_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_20() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_21() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_22() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_s_23() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_1() {
    final frame = Frame(memory);
    frame.f64_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_2() {
    final frame = Frame(memory);
    frame.f64_const(5e-324);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_3() {
    final frame = Frame(memory);
    frame.f64_const(-5e-324);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_4() {
    final frame = Frame(memory);
    frame.f64_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_5() {
    final frame = Frame(memory);
    frame.f64_const(1.1);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_6() {
    final frame = Frame(memory);
    frame.f64_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_7() {
    final frame = Frame(memory);
    frame.f64_const(4294967295.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_8() {
    final frame = Frame(memory);
    frame.f64_const(4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_9() {
    final frame = Frame(memory);
    frame.f64_const(18446744073709550000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_10() {
    final frame = Frame(memory);
    frame.f64_const(-0.9);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_11() {
    final frame = Frame(memory);
    frame.f64_const(-0.9999999999999999);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_12() {
    final frame = Frame(memory);
    frame.f64_const(100000000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_13() {
    final frame = Frame(memory);
    frame.f64_const(10000000000000000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_14() {
    final frame = Frame(memory);
    frame.f64_const(9223372036854776000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_15() {
    final frame = Frame(memory);
    frame.f64_const(18446744073709552000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_16() {
    final frame = Frame(memory);
    frame.f64_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_17() {
    final frame = Frame(memory);
    frame.f64_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_18() {
    final frame = Frame(memory);
    frame.f64_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_19() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_20() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_21() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_f64_u_22() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_f64_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_s_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_s_1() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_s_2() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_s_3() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_s_4() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_s_5() {
    final frame = Frame(memory);
    frame.i32_const(0x499602d2);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_1() {
    final frame = Frame(memory);
    frame.f32_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_2() {
    final frame = Frame(memory);
    frame.f32_const(1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_3() {
    final frame = Frame(memory);
    frame.f32_const(-1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_4() {
    final frame = Frame(memory);
    frame.f32_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_5() {
    final frame = Frame(memory);
    frame.f32_const(1.100000023841858);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_6() {
    final frame = Frame(memory);
    frame.f32_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_7() {
    final frame = Frame(memory);
    frame.f32_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_8() {
    final frame = Frame(memory);
    frame.f32_const(-1.100000023841858);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_9() {
    final frame = Frame(memory);
    frame.f32_const(-1.5);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_10() {
    final frame = Frame(memory);
    frame.f32_const(-1.899999976158142);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_11() {
    final frame = Frame(memory);
    frame.f32_const(-2.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_12() {
    final frame = Frame(memory);
    frame.f32_const(2147483520.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_13() {
    final frame = Frame(memory);
    frame.f32_const(-2147483648.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_14() {
    final frame = Frame(memory);
    frame.f32_const(2147483648.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_15() {
    final frame = Frame(memory);
    frame.f32_const(-2147483904.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_16() {
    final frame = Frame(memory);
    frame.f32_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_17() {
    final frame = Frame(memory);
    frame.f32_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_18() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_19() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_20() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_s_21() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_1() {
    final frame = Frame(memory);
    frame.f32_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_2() {
    final frame = Frame(memory);
    frame.f32_const(1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_3() {
    final frame = Frame(memory);
    frame.f32_const(-1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_4() {
    final frame = Frame(memory);
    frame.f32_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_5() {
    final frame = Frame(memory);
    frame.f32_const(1.100000023841858);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_6() {
    final frame = Frame(memory);
    frame.f32_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_7() {
    final frame = Frame(memory);
    frame.f32_const(1.899999976158142);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_8() {
    final frame = Frame(memory);
    frame.f32_const(2.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_9() {
    final frame = Frame(memory);
    frame.f32_const(2147483648.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_10() {
    final frame = Frame(memory);
    frame.f32_const(4294967040.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_11() {
    final frame = Frame(memory);
    frame.f32_const(-0.8999999761581421);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_12() {
    final frame = Frame(memory);
    frame.f32_const(-0.9999999403953552);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_13() {
    final frame = Frame(memory);
    frame.f32_const(4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_14() {
    final frame = Frame(memory);
    frame.f32_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_15() {
    final frame = Frame(memory);
    frame.f32_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_16() {
    final frame = Frame(memory);
    frame.f32_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_17() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_18() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_19() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f32_u_20() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_1() {
    final frame = Frame(memory);
    frame.f64_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_2() {
    final frame = Frame(memory);
    frame.f64_const(5e-324);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_3() {
    final frame = Frame(memory);
    frame.f64_const(-5e-324);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_4() {
    final frame = Frame(memory);
    frame.f64_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_5() {
    final frame = Frame(memory);
    frame.f64_const(1.1);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_6() {
    final frame = Frame(memory);
    frame.f64_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_7() {
    final frame = Frame(memory);
    frame.f64_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_8() {
    final frame = Frame(memory);
    frame.f64_const(-1.1);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_9() {
    final frame = Frame(memory);
    frame.f64_const(-1.5);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_10() {
    final frame = Frame(memory);
    frame.f64_const(-1.9);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_11() {
    final frame = Frame(memory);
    frame.f64_const(-2.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_12() {
    final frame = Frame(memory);
    frame.f64_const(2147483647.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_13() {
    final frame = Frame(memory);
    frame.f64_const(-2147483648.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_14() {
    final frame = Frame(memory);
    frame.f64_const(2147483648.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_15() {
    final frame = Frame(memory);
    frame.f64_const(-2147483649.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_16() {
    final frame = Frame(memory);
    frame.f64_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_17() {
    final frame = Frame(memory);
    frame.f64_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_18() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_19() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_20() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_s_21() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_1() {
    final frame = Frame(memory);
    frame.f64_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_2() {
    final frame = Frame(memory);
    frame.f64_const(5e-324);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_3() {
    final frame = Frame(memory);
    frame.f64_const(-5e-324);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_4() {
    final frame = Frame(memory);
    frame.f64_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_5() {
    final frame = Frame(memory);
    frame.f64_const(1.1);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_6() {
    final frame = Frame(memory);
    frame.f64_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_7() {
    final frame = Frame(memory);
    frame.f64_const(1.9);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_8() {
    final frame = Frame(memory);
    frame.f64_const(2.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_9() {
    final frame = Frame(memory);
    frame.f64_const(2147483648.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_10() {
    final frame = Frame(memory);
    frame.f64_const(4294967295.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_11() {
    final frame = Frame(memory);
    frame.f64_const(-0.9);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_12() {
    final frame = Frame(memory);
    frame.f64_const(-0.9999999999999999);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_13() {
    final frame = Frame(memory);
    frame.f64_const(100000000.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_14() {
    final frame = Frame(memory);
    frame.f64_const(4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_15() {
    final frame = Frame(memory);
    frame.f64_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_16() {
    final frame = Frame(memory);
    frame.f64_const(10000000000000000.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_17() {
    final frame = Frame(memory);
    frame.f64_const(1e+30);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_18() {
    final frame = Frame(memory);
    frame.f64_const(9223372036854776000.0);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_19() {
    final frame = Frame(memory);
    frame.f64_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_20() {
    final frame = Frame(memory);
    frame.f64_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_21() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_22() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_23() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i32 test_i32_trunc_sat_f64_u_24() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_1() {
    final frame = Frame(memory);
    frame.f32_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_2() {
    final frame = Frame(memory);
    frame.f32_const(1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_3() {
    final frame = Frame(memory);
    frame.f32_const(-1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_4() {
    final frame = Frame(memory);
    frame.f32_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_5() {
    final frame = Frame(memory);
    frame.f32_const(1.100000023841858);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_6() {
    final frame = Frame(memory);
    frame.f32_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_7() {
    final frame = Frame(memory);
    frame.f32_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_8() {
    final frame = Frame(memory);
    frame.f32_const(-1.100000023841858);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_9() {
    final frame = Frame(memory);
    frame.f32_const(-1.5);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_10() {
    final frame = Frame(memory);
    frame.f32_const(-1.899999976158142);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_11() {
    final frame = Frame(memory);
    frame.f32_const(-2.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_12() {
    final frame = Frame(memory);
    frame.f32_const(4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_13() {
    final frame = Frame(memory);
    frame.f32_const(-4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_14() {
    final frame = Frame(memory);
    frame.f32_const(9223371487098962000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_15() {
    final frame = Frame(memory);
    frame.f32_const(-9223372036854776000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_16() {
    final frame = Frame(memory);
    frame.f32_const(9223372036854776000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_17() {
    final frame = Frame(memory);
    frame.f32_const(-9223373136366404000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_18() {
    final frame = Frame(memory);
    frame.f32_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_19() {
    final frame = Frame(memory);
    frame.f32_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_20() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_21() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_22() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_s_23() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_1() {
    final frame = Frame(memory);
    frame.f32_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_2() {
    final frame = Frame(memory);
    frame.f32_const(1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_3() {
    final frame = Frame(memory);
    frame.f32_const(-1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_4() {
    final frame = Frame(memory);
    frame.f32_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_5() {
    final frame = Frame(memory);
    frame.f32_const(1.100000023841858);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_6() {
    final frame = Frame(memory);
    frame.f32_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_7() {
    final frame = Frame(memory);
    frame.f32_const(4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_8() {
    final frame = Frame(memory);
    frame.f32_const(18446742974197924000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_9() {
    final frame = Frame(memory);
    frame.f32_const(-0.8999999761581421);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_10() {
    final frame = Frame(memory);
    frame.f32_const(-0.9999999403953552);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_11() {
    final frame = Frame(memory);
    frame.f32_const(18446744073709552000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_12() {
    final frame = Frame(memory);
    frame.f32_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_13() {
    final frame = Frame(memory);
    frame.f32_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_14() {
    final frame = Frame(memory);
    frame.f32_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_15() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_16() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_17() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f32_u_18() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f32_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_1() {
    final frame = Frame(memory);
    frame.f64_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_2() {
    final frame = Frame(memory);
    frame.f64_const(5e-324);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_3() {
    final frame = Frame(memory);
    frame.f64_const(-5e-324);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_4() {
    final frame = Frame(memory);
    frame.f64_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_5() {
    final frame = Frame(memory);
    frame.f64_const(1.1);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_6() {
    final frame = Frame(memory);
    frame.f64_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_7() {
    final frame = Frame(memory);
    frame.f64_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_8() {
    final frame = Frame(memory);
    frame.f64_const(-1.1);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_9() {
    final frame = Frame(memory);
    frame.f64_const(-1.5);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_10() {
    final frame = Frame(memory);
    frame.f64_const(-1.9);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_11() {
    final frame = Frame(memory);
    frame.f64_const(-2.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_12() {
    final frame = Frame(memory);
    frame.f64_const(4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_13() {
    final frame = Frame(memory);
    frame.f64_const(-4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_14() {
    final frame = Frame(memory);
    frame.f64_const(9223372036854775000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_15() {
    final frame = Frame(memory);
    frame.f64_const(-9223372036854776000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_16() {
    final frame = Frame(memory);
    frame.f64_const(9223372036854776000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_17() {
    final frame = Frame(memory);
    frame.f64_const(-9223372036854778000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_18() {
    final frame = Frame(memory);
    frame.f64_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_19() {
    final frame = Frame(memory);
    frame.f64_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_20() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_21() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_22() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_s_23() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_s(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_1() {
    final frame = Frame(memory);
    frame.f64_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_2() {
    final frame = Frame(memory);
    frame.f64_const(5e-324);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_3() {
    final frame = Frame(memory);
    frame.f64_const(-5e-324);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_4() {
    final frame = Frame(memory);
    frame.f64_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_5() {
    final frame = Frame(memory);
    frame.f64_const(1.1);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_6() {
    final frame = Frame(memory);
    frame.f64_const(1.5);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_7() {
    final frame = Frame(memory);
    frame.f64_const(4294967295.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_8() {
    final frame = Frame(memory);
    frame.f64_const(4294967296.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_9() {
    final frame = Frame(memory);
    frame.f64_const(18446744073709550000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_10() {
    final frame = Frame(memory);
    frame.f64_const(-0.9);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_11() {
    final frame = Frame(memory);
    frame.f64_const(-0.9999999999999999);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_12() {
    final frame = Frame(memory);
    frame.f64_const(100000000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_13() {
    final frame = Frame(memory);
    frame.f64_const(10000000000000000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_14() {
    final frame = Frame(memory);
    frame.f64_const(9223372036854776000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_15() {
    final frame = Frame(memory);
    frame.f64_const(18446744073709552000.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_16() {
    final frame = Frame(memory);
    frame.f64_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_17() {
    final frame = Frame(memory);
    frame.f64_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_18() {
    final frame = Frame(memory);
    frame.f64_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_19() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_20() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_21() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  i64 test_i64_trunc_sat_f64_u_22() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_trunc_sat_f64_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_s_6() {
    final frame = Frame(memory);
    frame.i32_const(0x1000001);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_s_7() {
    final frame = Frame(memory);
    frame.i32_const(-0x1000001);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_s_8() {
    final frame = Frame(memory);
    frame.i32_const(0x1000003);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_s_9() {
    final frame = Frame(memory);
    frame.i32_const(-0x1000003);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_1() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_2() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_3() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_4() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_5() {
    final frame = Frame(memory);
    frame.i64_const(0x11db9e76a2483);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_6() {
    final frame = Frame(memory);
    frame.i64_const(0x1000001);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_7() {
    final frame = Frame(memory);
    frame.i64_const(-0x1000001);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_8() {
    final frame = Frame(memory);
    frame.i64_const(0x1000003);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_9() {
    final frame = Frame(memory);
    frame.i64_const(-0x1000003);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_10() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffff4000000001);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_11() {
    final frame = Frame(memory);
    frame.i64_const(-0x7fffffbfffffffff);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_12() {
    final frame = Frame(memory);
    frame.i64_const(0x20000020000001);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_s_13() {
    final frame = Frame(memory);
    frame.i64_const(-0x20000020000001);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i32_s_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i32_s_1() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i32_s_2() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i32_s_3() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i32_s_4() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i32_s_5() {
    final frame = Frame(memory);
    frame.i32_const(0x3ade68b1);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i32_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_s_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_s_1() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_s_2() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_s_3() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_s_4() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_s_5() {
    final frame = Frame(memory);
    frame.i64_const(0x10969d374b968e);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_s_6() {
    final frame = Frame(memory);
    frame.i64_const(0x20000000000001);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_s_7() {
    final frame = Frame(memory);
    frame.i64_const(-0x20000000000001);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_s_8() {
    final frame = Frame(memory);
    frame.i64_const(0x20000000000003);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_s_9() {
    final frame = Frame(memory);
    frame.i64_const(-0x20000000000003);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_s(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_2() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_4() {
    final frame = Frame(memory);
    frame.i32_const(0x12345678);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_5() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_6() {
    final frame = Frame(memory);
    frame.i32_const(-0x7fffff80);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_7() {
    final frame = Frame(memory);
    frame.i32_const(-0x7fffff7f);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_8() {
    final frame = Frame(memory);
    frame.i32_const(-0x7fffff7e);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_9() {
    final frame = Frame(memory);
    frame.i32_const(-384);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_10() {
    final frame = Frame(memory);
    frame.i32_const(-383);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_11() {
    final frame = Frame(memory);
    frame.i32_const(-382);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_12() {
    final frame = Frame(memory);
    frame.i32_const(0x1000001);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i32_u_13() {
    final frame = Frame(memory);
    frame.i32_const(0x1000003);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_u_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_u_1() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_u_2() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_u_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_u_4() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_u_5() {
    final frame = Frame(memory);
    frame.i64_const(0x1000001);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_u_6() {
    final frame = Frame(memory);
    frame.i64_const(0x1000003);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_u_7() {
    final frame = Frame(memory);
    frame.i64_const(0x20000020000001);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_u_8() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffbfffffffff);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_u_9() {
    final frame = Frame(memory);
    frame.i64_const(-0x7fffff7fffffffff);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f32 test_f32_convert_i64_u_10() {
    final frame = Frame(memory);
    frame.i64_const(-0x17fffffffff);
    {
      var t0 = frame.pop();
      frame.push(f32_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i32_u_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i32_u_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i32_u_2() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i32_u_3() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i32_u_4() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i32_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_1() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_2() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_4() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x7ffffffffffffc00);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_6() {
    final frame = Frame(memory);
    frame.i64_const(-0x7ffffffffffffbff);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_7() {
    final frame = Frame(memory);
    frame.i64_const(-0x7ffffffffffffbfe);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_8() {
    final frame = Frame(memory);
    frame.i64_const(-0xc00);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_9() {
    final frame = Frame(memory);
    frame.i64_const(-0xbff);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_10() {
    final frame = Frame(memory);
    frame.i64_const(-0xbfe);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_11() {
    final frame = Frame(memory);
    frame.i64_const(0x20000000000001);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_convert_i64_u_12() {
    final frame = Frame(memory);
    frame.i64_const(0x20000000000003);
    {
      var t0 = frame.pop();
      frame.push(f64_convert_i64_u(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_1() {
    final frame = Frame(memory);
    frame.f32_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_2() {
    final frame = Frame(memory);
    frame.f32_const(1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_3() {
    final frame = Frame(memory);
    frame.f32_const(-1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_4() {
    final frame = Frame(memory);
    frame.f32_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_5() {
    final frame = Frame(memory);
    frame.f32_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_6() {
    final frame = Frame(memory);
    frame.f32_const(-3.4028234663852886e+38);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_7() {
    final frame = Frame(memory);
    frame.f32_const(3.4028234663852886e+38);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_8() {
    final frame = Frame(memory);
    frame.f32_const(1.504632769052528e-36);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_9() {
    final frame = Frame(memory);
    frame.f32_const(6.6382536710104395e+37);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_10() {
    final frame = Frame(memory);
    frame.f32_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_11() {
    final frame = Frame(memory);
    frame.f32_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_12() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_13() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_14() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_promote_f32_15() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(f64_promote_f32(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_1() {
    final frame = Frame(memory);
    frame.f64_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_2() {
    final frame = Frame(memory);
    frame.f64_const(5e-324);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_3() {
    final frame = Frame(memory);
    frame.f64_const(-5e-324);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_4() {
    final frame = Frame(memory);
    frame.f64_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_5() {
    final frame = Frame(memory);
    frame.f64_const(-1.0);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_6() {
    final frame = Frame(memory);
    frame.f64_const(1.1754942807573643e-38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_7() {
    final frame = Frame(memory);
    frame.f64_const(-1.1754942807573643e-38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_8() {
    final frame = Frame(memory);
    frame.f64_const(1.1754942807573642e-38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_9() {
    final frame = Frame(memory);
    frame.f64_const(-1.1754942807573642e-38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_10() {
    final frame = Frame(memory);
    frame.f64_const(1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_11() {
    final frame = Frame(memory);
    frame.f64_const(-1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_12() {
    final frame = Frame(memory);
    frame.f64_const(3.4028233649732406e+38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_13() {
    final frame = Frame(memory);
    frame.f64_const(-3.4028233649732406e+38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_14() {
    final frame = Frame(memory);
    frame.f64_const(3.402823364973241e+38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_15() {
    final frame = Frame(memory);
    frame.f64_const(-3.402823364973241e+38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_16() {
    final frame = Frame(memory);
    frame.f64_const(3.4028234663852886e+38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_17() {
    final frame = Frame(memory);
    frame.f64_const(-3.4028234663852886e+38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_18() {
    final frame = Frame(memory);
    frame.f64_const(3.4028235677973362e+38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_19() {
    final frame = Frame(memory);
    frame.f64_const(-3.4028235677973362e+38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_20() {
    final frame = Frame(memory);
    frame.f64_const(3.4028235677973366e+38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_21() {
    final frame = Frame(memory);
    frame.f64_const(-3.4028235677973366e+38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_22() {
    final frame = Frame(memory);
    frame.f64_const(1.504632769052528e-36);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_23() {
    final frame = Frame(memory);
    frame.f64_const(6.6382536710104395e+37);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_24() {
    final frame = Frame(memory);
    frame.f64_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_25() {
    final frame = Frame(memory);
    frame.f64_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_26() {
    final frame = Frame(memory);
    frame.f64_const(1.0000000000000002);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_27() {
    final frame = Frame(memory);
    frame.f64_const(0.9999999999999999);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_28() {
    final frame = Frame(memory);
    frame.f64_const(1.0000000596046448);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_29() {
    final frame = Frame(memory);
    frame.f64_const(1.000000059604645);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_30() {
    final frame = Frame(memory);
    frame.f64_const(1.000000178813934);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_31() {
    final frame = Frame(memory);
    frame.f64_const(1.0000001788139343);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_32() {
    final frame = Frame(memory);
    frame.f64_const(1.0000002980232239);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_33() {
    final frame = Frame(memory);
    frame.f64_const(16777217.0);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_34() {
    final frame = Frame(memory);
    frame.f64_const(16777217.000000004);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_35() {
    final frame = Frame(memory);
    frame.f64_const(16777218.999999996);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_36() {
    final frame = Frame(memory);
    frame.f64_const(16777219.0);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_37() {
    final frame = Frame(memory);
    frame.f64_const(4.242584432991427e+32);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_38() {
    final frame = Frame(memory);
    frame.f64_const(1.569262107843488e-34);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_39() {
    final frame = Frame(memory);
    frame.f64_const(1.0551773688605172e-38);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_40() {
    final frame = Frame(memory);
    frame.f64_const(-2.8238128484141933);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_41() {
    final frame = Frame(memory);
    frame.f64_const(-9.063376370095757e+33);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_42() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_43() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_44() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_45() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_46() {
    final frame = Frame(memory);
    frame.f64_const(2.2250738585072014e-308);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_47() {
    final frame = Frame(memory);
    frame.f64_const(-2.2250738585072014e-308);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_48() {
    final frame = Frame(memory);
    frame.f64_const(7.006492321624085e-46);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_49() {
    final frame = Frame(memory);
    frame.f64_const(-7.006492321624085e-46);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_50() {
    final frame = Frame(memory);
    frame.f64_const(7.006492321624087e-46);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_demote_f64_51() {
    final frame = Frame(memory);
    frame.f64_const(-7.006492321624087e-46);
    {
      var t0 = frame.pop();
      frame.push(f32_demote_f64(t0));
    }
    return frame.pop();
  }

  f32 test_f32_reinterpret_i32_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(f32_reinterpret_i32(t0));
    }
    return frame.pop();
  }

  f32 test_f32_reinterpret_i32_1() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    {
      var t0 = frame.pop();
      frame.push(f32_reinterpret_i32(t0));
    }
    return frame.pop();
  }

  f32 test_f32_reinterpret_i32_2() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(f32_reinterpret_i32(t0));
    }
    return frame.pop();
  }

  f32 test_f32_reinterpret_i32_3() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push(f32_reinterpret_i32(t0));
    }
    return frame.pop();
  }

  f32 test_f32_reinterpret_i32_4() {
    final frame = Frame(memory);
    frame.i32_const(0x75bcd15);
    {
      var t0 = frame.pop();
      frame.push(f32_reinterpret_i32(t0));
    }
    return frame.pop();
  }

  f32 test_f32_reinterpret_i32_5() {
    final frame = Frame(memory);
    frame.i32_const(-0x7fffffff);
    {
      var t0 = frame.pop();
      frame.push(f32_reinterpret_i32(t0));
    }
    return frame.pop();
  }

  f32 test_f32_reinterpret_i32_6() {
    final frame = Frame(memory);
    frame.i32_const(0x7f800000);
    {
      var t0 = frame.pop();
      frame.push(f32_reinterpret_i32(t0));
    }
    return frame.pop();
  }

  f32 test_f32_reinterpret_i32_7() {
    final frame = Frame(memory);
    frame.i32_const(-0x800000);
    {
      var t0 = frame.pop();
      frame.push(f32_reinterpret_i32(t0));
    }
    return frame.pop();
  }

  f32 test_f32_reinterpret_i32_8() {
    final frame = Frame(memory);
    frame.i32_const(0x7fc00000);
    {
      var t0 = frame.pop();
      frame.push(f32_reinterpret_i32(t0));
    }
    return frame.pop();
  }

  f32 test_f32_reinterpret_i32_9() {
    final frame = Frame(memory);
    frame.i32_const(-0x400000);
    {
      var t0 = frame.pop();
      frame.push(f32_reinterpret_i32(t0));
    }
    return frame.pop();
  }

  f32 test_f32_reinterpret_i32_10() {
    final frame = Frame(memory);
    frame.i32_const(0x7fa00000);
    {
      var t0 = frame.pop();
      frame.push(f32_reinterpret_i32(t0));
    }
    return frame.pop();
  }

  f32 test_f32_reinterpret_i32_11() {
    final frame = Frame(memory);
    frame.i32_const(-0x600000);
    {
      var t0 = frame.pop();
      frame.push(f32_reinterpret_i32(t0));
    }
    return frame.pop();
  }

  f64 test_f64_reinterpret_i64_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(f64_reinterpret_i64(t0));
    }
    return frame.pop();
  }

  f64 test_f64_reinterpret_i64_1() {
    final frame = Frame(memory);
    frame.i64_const(1);
    {
      var t0 = frame.pop();
      frame.push(f64_reinterpret_i64(t0));
    }
    return frame.pop();
  }

  f64 test_f64_reinterpret_i64_2() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    {
      var t0 = frame.pop();
      frame.push(f64_reinterpret_i64(t0));
    }
    return frame.pop();
  }

  f64 test_f64_reinterpret_i64_3() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    {
      var t0 = frame.pop();
      frame.push(f64_reinterpret_i64(t0));
    }
    return frame.pop();
  }

  f64 test_f64_reinterpret_i64_4() {
    final frame = Frame(memory);
    frame.i64_const(0x499602d2);
    {
      var t0 = frame.pop();
      frame.push(f64_reinterpret_i64(t0));
    }
    return frame.pop();
  }

  f64 test_f64_reinterpret_i64_5() {
    final frame = Frame(memory);
    frame.i64_const(-0x7fffffffffffffff);
    {
      var t0 = frame.pop();
      frame.push(f64_reinterpret_i64(t0));
    }
    return frame.pop();
  }

  f64 test_f64_reinterpret_i64_6() {
    final frame = Frame(memory);
    frame.i64_const(0x7ff0000000000000);
    {
      var t0 = frame.pop();
      frame.push(f64_reinterpret_i64(t0));
    }
    return frame.pop();
  }

  f64 test_f64_reinterpret_i64_7() {
    final frame = Frame(memory);
    frame.i64_const(-0x10000000000000);
    {
      var t0 = frame.pop();
      frame.push(f64_reinterpret_i64(t0));
    }
    return frame.pop();
  }

  f64 test_f64_reinterpret_i64_8() {
    final frame = Frame(memory);
    frame.i64_const(0x7ff8000000000000);
    {
      var t0 = frame.pop();
      frame.push(f64_reinterpret_i64(t0));
    }
    return frame.pop();
  }

  f64 test_f64_reinterpret_i64_9() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000);
    {
      var t0 = frame.pop();
      frame.push(f64_reinterpret_i64(t0));
    }
    return frame.pop();
  }

  f64 test_f64_reinterpret_i64_10() {
    final frame = Frame(memory);
    frame.i64_const(0x7ff4000000000000);
    {
      var t0 = frame.pop();
      frame.push(f64_reinterpret_i64(t0));
    }
    return frame.pop();
  }

  f64 test_f64_reinterpret_i64_11() {
    final frame = Frame(memory);
    frame.i64_const(-0xc000000000000);
    {
      var t0 = frame.pop();
      frame.push(f64_reinterpret_i64(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_1() {
    final frame = Frame(memory);
    frame.f32_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_2() {
    final frame = Frame(memory);
    frame.f32_const(1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_3() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_4() {
    final frame = Frame(memory);
    frame.f32_const(-1.401298464324817e-45);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_5() {
    final frame = Frame(memory);
    frame.f32_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_6() {
    final frame = Frame(memory);
    frame.f32_const(3.141592502593994);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_7() {
    final frame = Frame(memory);
    frame.f32_const(3.4028234663852886e+38);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_8() {
    final frame = Frame(memory);
    frame.f32_const(-3.4028234663852886e+38);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_9() {
    final frame = Frame(memory);
    frame.f32_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_10() {
    final frame = Frame(memory);
    frame.f32_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_11() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_12() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_13() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i32 test_i32_reinterpret_f32_14() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i32_reinterpret_f32(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_1() {
    final frame = Frame(memory);
    frame.f64_const(-0.0);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_2() {
    final frame = Frame(memory);
    frame.f64_const(5e-324);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_3() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_4() {
    final frame = Frame(memory);
    frame.f64_const(-5e-324);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_5() {
    final frame = Frame(memory);
    frame.f64_const(1.0);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_6() {
    final frame = Frame(memory);
    frame.f64_const(3.14159265358979);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_7() {
    final frame = Frame(memory);
    frame.f64_const(1.7976931348623157e+308);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_8() {
    final frame = Frame(memory);
    frame.f64_const(-1.7976931348623157e+308);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_9() {
    final frame = Frame(memory);
    frame.f64_const(double.infinity);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_10() {
    final frame = Frame(memory);
    frame.f64_const(double.negativeInfinity);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_11() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_12() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_13() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }

  i64 test_i64_reinterpret_f64_14() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    {
      var t0 = frame.pop();
      frame.push(i64_reinterpret_f64(t0));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i64 Function(i32);
typedef FunctionType1 = i32 Function(i64);
typedef FunctionType2 = i32 Function(f32);
typedef FunctionType3 = i32 Function(f64);
typedef FunctionType4 = i64 Function(f32);
typedef FunctionType5 = i64 Function(f64);
typedef FunctionType6 = f32 Function(i32);
typedef FunctionType7 = f32 Function(i64);
typedef FunctionType8 = f64 Function(i32);
typedef FunctionType9 = f64 Function(i64);
typedef FunctionType10 = f64 Function(f32);
typedef FunctionType11 = f32 Function(f64);
typedef FunctionType12 = i64 Function();
typedef FunctionType13 = i32 Function();
typedef FunctionType14 = f32 Function();
typedef FunctionType15 = f64 Function();

class DataSegments {
  Uint8List trap_i32_trunc_f32_s_14 = decodeDataLiteral(_hex0);

  Uint8List trap_i32_trunc_f32_s_15 = decodeDataLiteral(_hex1);

  Uint8List trap_i32_trunc_f32_s_16 = decodeDataLiteral(_hex2);

  Uint8List trap_i32_trunc_f32_s_17 = decodeDataLiteral(_hex3);

  Uint8List trap_i32_trunc_f32_s_18 = decodeDataLiteral(_hex4);

  Uint8List trap_i32_trunc_f32_s_19 = decodeDataLiteral(_hex5);

  Uint8List trap_i32_trunc_f32_s_20 = decodeDataLiteral(_hex6);

  Uint8List trap_i32_trunc_f32_s_21 = decodeDataLiteral(_hex7);

  Uint8List trap_i32_trunc_f32_u_13 = decodeDataLiteral(_hex8);

  Uint8List trap_i32_trunc_f32_u_14 = decodeDataLiteral(_hex9);

  Uint8List trap_i32_trunc_f32_u_15 = decodeDataLiteral(_hex10);

  Uint8List trap_i32_trunc_f32_u_16 = decodeDataLiteral(_hex11);

  Uint8List trap_i32_trunc_f32_u_17 = decodeDataLiteral(_hex12);

  Uint8List trap_i32_trunc_f32_u_18 = decodeDataLiteral(_hex13);

  Uint8List trap_i32_trunc_f32_u_19 = decodeDataLiteral(_hex14);

  Uint8List trap_i32_trunc_f32_u_20 = decodeDataLiteral(_hex15);

  Uint8List trap_i32_trunc_f64_s_16 = decodeDataLiteral(_hex16);

  Uint8List trap_i32_trunc_f64_s_17 = decodeDataLiteral(_hex17);

  Uint8List trap_i32_trunc_f64_s_18 = decodeDataLiteral(_hex18);

  Uint8List trap_i32_trunc_f64_s_19 = decodeDataLiteral(_hex19);

  Uint8List trap_i32_trunc_f64_s_20 = decodeDataLiteral(_hex20);

  Uint8List trap_i32_trunc_f64_s_21 = decodeDataLiteral(_hex21);

  Uint8List trap_i32_trunc_f64_s_22 = decodeDataLiteral(_hex22);

  Uint8List trap_i32_trunc_f64_s_23 = decodeDataLiteral(_hex23);

  Uint8List trap_i32_trunc_f64_u_16 = decodeDataLiteral(_hex24);

  Uint8List trap_i32_trunc_f64_u_17 = decodeDataLiteral(_hex25);

  Uint8List trap_i32_trunc_f64_u_18 = decodeDataLiteral(_hex26);

  Uint8List trap_i32_trunc_f64_u_19 = decodeDataLiteral(_hex27);

  Uint8List trap_i32_trunc_f64_u_20 = decodeDataLiteral(_hex28);

  Uint8List trap_i32_trunc_f64_u_21 = decodeDataLiteral(_hex29);

  Uint8List trap_i32_trunc_f64_u_22 = decodeDataLiteral(_hex30);

  Uint8List trap_i32_trunc_f64_u_23 = decodeDataLiteral(_hex31);

  Uint8List trap_i32_trunc_f64_u_24 = decodeDataLiteral(_hex32);

  Uint8List trap_i32_trunc_f64_u_25 = decodeDataLiteral(_hex33);

  Uint8List trap_i32_trunc_f64_u_26 = decodeDataLiteral(_hex34);

  Uint8List trap_i64_trunc_f32_s_16 = decodeDataLiteral(_hex35);

  Uint8List trap_i64_trunc_f32_s_17 = decodeDataLiteral(_hex36);

  Uint8List trap_i64_trunc_f32_s_18 = decodeDataLiteral(_hex37);

  Uint8List trap_i64_trunc_f32_s_19 = decodeDataLiteral(_hex38);

  Uint8List trap_i64_trunc_f32_s_20 = decodeDataLiteral(_hex39);

  Uint8List trap_i64_trunc_f32_s_21 = decodeDataLiteral(_hex40);

  Uint8List trap_i64_trunc_f32_s_22 = decodeDataLiteral(_hex41);

  Uint8List trap_i64_trunc_f32_s_23 = decodeDataLiteral(_hex42);

  Uint8List trap_i64_trunc_f32_u_11 = decodeDataLiteral(_hex43);

  Uint8List trap_i64_trunc_f32_u_12 = decodeDataLiteral(_hex44);

  Uint8List trap_i64_trunc_f32_u_13 = decodeDataLiteral(_hex45);

  Uint8List trap_i64_trunc_f32_u_14 = decodeDataLiteral(_hex46);

  Uint8List trap_i64_trunc_f32_u_15 = decodeDataLiteral(_hex47);

  Uint8List trap_i64_trunc_f32_u_16 = decodeDataLiteral(_hex48);

  Uint8List trap_i64_trunc_f32_u_17 = decodeDataLiteral(_hex49);

  Uint8List trap_i64_trunc_f32_u_18 = decodeDataLiteral(_hex50);

  Uint8List trap_i64_trunc_f64_s_16 = decodeDataLiteral(_hex51);

  Uint8List trap_i64_trunc_f64_s_17 = decodeDataLiteral(_hex52);

  Uint8List trap_i64_trunc_f64_s_18 = decodeDataLiteral(_hex53);

  Uint8List trap_i64_trunc_f64_s_19 = decodeDataLiteral(_hex54);

  Uint8List trap_i64_trunc_f64_s_20 = decodeDataLiteral(_hex55);

  Uint8List trap_i64_trunc_f64_s_21 = decodeDataLiteral(_hex56);

  Uint8List trap_i64_trunc_f64_s_22 = decodeDataLiteral(_hex57);

  Uint8List trap_i64_trunc_f64_s_23 = decodeDataLiteral(_hex58);

  Uint8List trap_i64_trunc_f64_u_15 = decodeDataLiteral(_hex59);

  Uint8List trap_i64_trunc_f64_u_16 = decodeDataLiteral(_hex60);

  Uint8List trap_i64_trunc_f64_u_17 = decodeDataLiteral(_hex61);

  Uint8List trap_i64_trunc_f64_u_18 = decodeDataLiteral(_hex62);

  Uint8List trap_i64_trunc_f64_u_19 = decodeDataLiteral(_hex63);

  Uint8List trap_i64_trunc_f64_u_20 = decodeDataLiteral(_hex64);

  Uint8List trap_i64_trunc_f64_u_21 = decodeDataLiteral(_hex65);

  Uint8List trap_i64_trunc_f64_u_22 = decodeDataLiteral(_hex66);

  static const String _hex0 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex1 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex2 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex3 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex4 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex5 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex6 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex7 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex8 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex9 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex10 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex11 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex12 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex13 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex14 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex15 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex16 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex17 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex18 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex19 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex20 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex21 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex22 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex23 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex24 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex25 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex26 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex27 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex28 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex29 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex30 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex31 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex32 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex33 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex34 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex35 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex36 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex37 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex38 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex39 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex40 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex41 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex42 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex43 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex44 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex45 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex46 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex47 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex48 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex49 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex50 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex51 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex52 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex53 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex54 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex55 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex56 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex57 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex58 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex59 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex60 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex61 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex62 =
      '\x69\x6E\x74\x65\x67\x65\x72\x20\x6F\x76\x65\x72\x66\x6C\x6F\x77';

  static const String _hex63 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex64 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex65 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  static const String _hex66 =
      '\x69\x6E\x76\x61\x6C\x69\x64\x20\x63\x6F\x6E\x76\x65\x72\x73\x69\x6F\x6E'
      '\x20\x74\x6F\x20\x69\x6E\x74\x65\x67\x65\x72';

  void init(Memory memory) {}
}
