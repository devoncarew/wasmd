// Generated from test/spec/float_literals/float_literals.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatLiterals0Module implements Module {
  FloatLiterals0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_all_ones_nan() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_dec_max_finite() {
    final frame = Frame(this);
    frame.f32_const(3.4028234663852886e+38);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_dec_max_subnormal() {
    final frame = Frame(this);
    frame.f32_const(1.1754942106924411e-38);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_dec_min_normal() {
    final frame = Frame(this);
    frame.f32_const(1.1754943508222875e-38);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_dec_min_positive() {
    final frame = Frame(this);
    frame.f32_const(1.401298464324817e-45);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_dec_misc() {
    final frame = Frame(this);
    frame.f32_const(6.2831854820251465);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_dec_negative_zero() {
    final frame = Frame(this);
    frame.f32_const(-0.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_dec_positive_zero() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_dec_root_beer_float() {
    final frame = Frame(this);
    frame.f32_const(1.0000001192092896);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  f32 f32_dec_sep1() {
    final frame = Frame(this);
    frame.f32_const(1000000.0);
    return frame.pop();
  }

  f32 f32_dec_sep2() {
    final frame = Frame(this);
    frame.f32_const(1000.0);
    return frame.pop();
  }

  f32 f32_dec_sep3() {
    final frame = Frame(this);
    frame.f32_const(1003.1416015625);
    return frame.pop();
  }

  f32 f32_dec_sep4() {
    final frame = Frame(this);
    frame.f32_const(990000028057600.0);
    return frame.pop();
  }

  f32 f32_dec_sep5() {
    final frame = Frame(this);
    frame.f32_const(1.2200011857269034e+28);
    return frame.pop();
  }

  i32 f32_dec_trailing_dot() {
    final frame = Frame(this);
    frame.f32_const(10000000000.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_dec_zero() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  f32 f32_hex_sep1() {
    final frame = Frame(this);
    frame.f32_const(168755360.0);
    return frame.pop();
  }

  f32 f32_hex_sep2() {
    final frame = Frame(this);
    frame.f32_const(109071.0);
    return frame.pop();
  }

  f32 f32_hex_sep3() {
    final frame = Frame(this);
    frame.f32_const(41215.94140625);
    return frame.pop();
  }

  f32 f32_hex_sep4() {
    final frame = Frame(this);
    frame.f32_const(1966080.0);
    return frame.pop();
  }

  f32 f32_hex_sep5() {
    final frame = Frame(this);
    frame.f32_const(23605224144896.0);
    return frame.pop();
  }

  i32 f32_infinity() {
    final frame = Frame(this);
    frame.f32_const(double.infinity);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_informally_known_as_plain_snan() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_max_finite() {
    final frame = Frame(this);
    frame.f32_const(3.4028234663852886e+38);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_max_subnormal() {
    final frame = Frame(this);
    frame.f32_const(1.1754942106924411e-38);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_min_normal() {
    final frame = Frame(this);
    frame.f32_const(1.1754943508222875e-38);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_min_positive() {
    final frame = Frame(this);
    frame.f32_const(1.401298464324817e-45);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_misc() {
    final frame = Frame(this);
    frame.f32_const(6.2831854820251465);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_misc_nan() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_misc_negative_nan() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_misc_positive_nan() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_nan() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_negative_infinity() {
    final frame = Frame(this);
    frame.f32_const(double.negativeInfinity);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_negative_nan() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_negative_zero() {
    final frame = Frame(this);
    frame.f32_const(-0.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_plain_nan() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_positive_infinity() {
    final frame = Frame(this);
    frame.f32_const(double.infinity);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_positive_nan() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_positive_zero() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_trailing_dot() {
    final frame = Frame(this);
    frame.f32_const(1024.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 f32_zero() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i64 f64_all_ones_nan() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_dec_max_finite() {
    final frame = Frame(this);
    frame.f64_const(1.7976931348623157e+308);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_dec_max_subnormal() {
    final frame = Frame(this);
    frame.f64_const(2.225073858507201e-308);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_dec_min_normal() {
    final frame = Frame(this);
    frame.f64_const(2.2250738585072014e-308);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_dec_min_positive() {
    final frame = Frame(this);
    frame.f64_const(5e-324);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_dec_misc() {
    final frame = Frame(this);
    frame.f64_const(6.283185307179586);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_dec_negative_zero() {
    final frame = Frame(this);
    frame.f64_const(-0.0);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_dec_positive_zero() {
    final frame = Frame(this);
    frame.f64_const(0.0);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_dec_root_beer_float() {
    final frame = Frame(this);
    frame.f64_const(1.000000119);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  f64 f64_dec_sep1() {
    final frame = Frame(this);
    frame.f64_const(1000000.0);
    return frame.pop();
  }

  f64 f64_dec_sep2() {
    final frame = Frame(this);
    frame.f64_const(1000.0);
    return frame.pop();
  }

  f64 f64_dec_sep3() {
    final frame = Frame(this);
    frame.f64_const(1003.141592);
    return frame.pop();
  }

  f64 f64_dec_sep4() {
    final frame = Frame(this);
    frame.f64_const(9.9e-122);
    return frame.pop();
  }

  f64 f64_dec_sep5() {
    final frame = Frame(this);
    frame.f64_const(1.2200011354e+28);
    return frame.pop();
  }

  i64 f64_dec_trailing_dot() {
    final frame = Frame(this);
    frame.f64_const(1e+100);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_dec_zero() {
    final frame = Frame(this);
    frame.f64_const(0.0);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  f64 f64_hex_sep1() {
    final frame = Frame(this);
    frame.f64_const(3078696982321561.0);
    return frame.pop();
  }

  f64 f64_hex_sep2() {
    final frame = Frame(this);
    frame.f64_const(109071.0);
    return frame.pop();
  }

  f64 f64_hex_sep3() {
    final frame = Frame(this);
    frame.f64_const(41215.94240794191);
    return frame.pop();
  }

  f64 f64_hex_sep4() {
    final frame = Frame(this);
    frame.f64_const(1966080.0);
    return frame.pop();
  }

  f64 f64_hex_sep5() {
    final frame = Frame(this);
    frame.f64_const(23605225168752.0);
    return frame.pop();
  }

  i64 f64_infinity() {
    final frame = Frame(this);
    frame.f64_const(double.infinity);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_informally_known_as_plain_snan() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_max_finite() {
    final frame = Frame(this);
    frame.f64_const(1.7976931348623157e+308);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_max_subnormal() {
    final frame = Frame(this);
    frame.f64_const(2.225073858507201e-308);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_min_normal() {
    final frame = Frame(this);
    frame.f64_const(2.2250738585072014e-308);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_min_positive() {
    final frame = Frame(this);
    frame.f64_const(5e-324);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_misc() {
    final frame = Frame(this);
    frame.f64_const(6.283185307179586);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_misc_nan() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_misc_negative_nan() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_misc_positive_nan() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_nan() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_negative_infinity() {
    final frame = Frame(this);
    frame.f64_const(double.negativeInfinity);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_negative_nan() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_negative_zero() {
    final frame = Frame(this);
    frame.f64_const(-0.0);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_plain_nan() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_positive_infinity() {
    final frame = Frame(this);
    frame.f64_const(double.infinity);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_positive_nan() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_positive_zero() {
    final frame = Frame(this);
    frame.f64_const(0.0);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_trailing_dot() {
    final frame = Frame(this);
    frame.f64_const(1.2676506002282294e+30);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 f64_zero() {
    final frame = Frame(this);
    frame.f64_const(0.0);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i64 Function();
typedef FunctionType2 = f32 Function();
typedef FunctionType3 = f64 Function();
