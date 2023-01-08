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

  i32 f32_nan() => _func00();
  i32 f32_positive_nan() => _func01();
  i32 f32_negative_nan() => _func02();
  i32 f32_plain_nan() => _func03();
  i32 f32_informally_known_as_plain_snan() => _func04();
  i32 f32_all_ones_nan() => _func05();
  i32 f32_misc_nan() => _func06();
  i32 f32_misc_positive_nan() => _func07();
  i32 f32_misc_negative_nan() => _func08();
  i32 f32_infinity() => _func09();
  i32 f32_positive_infinity() => _func10();
  i32 f32_negative_infinity() => _func11();
  i32 f32_zero() => _func12();
  i32 f32_positive_zero() => _func13();
  i32 f32_negative_zero() => _func14();
  i32 f32_misc() => _func15();
  i32 f32_min_positive() => _func16();
  i32 f32_min_normal() => _func17();
  i32 f32_max_finite() => _func18();
  i32 f32_max_subnormal() => _func19();
  i32 f32_trailing_dot() => _func20();
  i32 f32_dec_zero() => _func21();
  i32 f32_dec_positive_zero() => _func22();
  i32 f32_dec_negative_zero() => _func23();
  i32 f32_dec_misc() => _func24();
  i32 f32_dec_min_positive() => _func25();
  i32 f32_dec_min_normal() => _func26();
  i32 f32_dec_max_subnormal() => _func27();
  i32 f32_dec_max_finite() => _func28();
  i32 f32_dec_trailing_dot() => _func29();
  i32 f32_dec_root_beer_float() => _func30();
  i64 f64_nan() => _func31();
  i64 f64_positive_nan() => _func32();
  i64 f64_negative_nan() => _func33();
  i64 f64_plain_nan() => _func34();
  i64 f64_informally_known_as_plain_snan() => _func35();
  i64 f64_all_ones_nan() => _func36();
  i64 f64_misc_nan() => _func37();
  i64 f64_misc_positive_nan() => _func38();
  i64 f64_misc_negative_nan() => _func39();
  i64 f64_infinity() => _func40();
  i64 f64_positive_infinity() => _func41();
  i64 f64_negative_infinity() => _func42();
  i64 f64_zero() => _func43();
  i64 f64_positive_zero() => _func44();
  i64 f64_negative_zero() => _func45();
  i64 f64_misc() => _func46();
  i64 f64_min_positive() => _func47();
  i64 f64_min_normal() => _func48();
  i64 f64_max_subnormal() => _func49();
  i64 f64_max_finite() => _func50();
  i64 f64_trailing_dot() => _func51();
  i64 f64_dec_zero() => _func52();
  i64 f64_dec_positive_zero() => _func53();
  i64 f64_dec_negative_zero() => _func54();
  i64 f64_dec_misc() => _func55();
  i64 f64_dec_min_positive() => _func56();
  i64 f64_dec_min_normal() => _func57();
  i64 f64_dec_max_subnormal() => _func58();
  i64 f64_dec_max_finite() => _func59();
  i64 f64_dec_trailing_dot() => _func60();
  i64 f64_dec_root_beer_float() => _func61();
  f32 f32_dec_sep1() => _func62();
  f32 f32_dec_sep2() => _func63();
  f32 f32_dec_sep3() => _func64();
  f32 f32_dec_sep4() => _func65();
  f32 f32_dec_sep5() => _func66();
  f32 f32_hex_sep1() => _func67();
  f32 f32_hex_sep2() => _func68();
  f32 f32_hex_sep3() => _func69();
  f32 f32_hex_sep4() => _func70();
  f32 f32_hex_sep5() => _func71();
  f64 f64_dec_sep1() => _func72();
  f64 f64_dec_sep2() => _func73();
  f64 f64_dec_sep3() => _func74();
  f64 f64_dec_sep4() => _func75();
  f64 f64_dec_sep5() => _func76();
  f64 f64_hex_sep1() => _func77();
  f64 f64_hex_sep2() => _func78();
  f64 f64_hex_sep3() => _func79();
  f64 f64_hex_sep4() => _func80();
  f64 f64_hex_sep5() => _func81();

  i32 _func00() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func01() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func02() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func03() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func04() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func05() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func06() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func07() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func08() {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func09() {
    final frame = Frame(this);
    frame.f32_const(double.infinity);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func10() {
    final frame = Frame(this);
    frame.f32_const(double.infinity);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func11() {
    final frame = Frame(this);
    frame.f32_const(double.negativeInfinity);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func12() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func13() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func14() {
    final frame = Frame(this);
    frame.f32_const(-0.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func15() {
    final frame = Frame(this);
    frame.f32_const(6.2831854820251465);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func16() {
    final frame = Frame(this);
    frame.f32_const(1.401298464324817e-45);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func17() {
    final frame = Frame(this);
    frame.f32_const(1.1754943508222875e-38);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func18() {
    final frame = Frame(this);
    frame.f32_const(3.4028234663852886e+38);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func19() {
    final frame = Frame(this);
    frame.f32_const(1.1754942106924411e-38);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func20() {
    final frame = Frame(this);
    frame.f32_const(1024.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func21() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func22() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func23() {
    final frame = Frame(this);
    frame.f32_const(-0.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func24() {
    final frame = Frame(this);
    frame.f32_const(6.2831854820251465);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func25() {
    final frame = Frame(this);
    frame.f32_const(1.401298464324817e-45);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func26() {
    final frame = Frame(this);
    frame.f32_const(1.1754943508222875e-38);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func27() {
    final frame = Frame(this);
    frame.f32_const(1.1754942106924411e-38);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func28() {
    final frame = Frame(this);
    frame.f32_const(3.4028234663852886e+38);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func29() {
    final frame = Frame(this);
    frame.f32_const(10000000000.0);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i32 _func30() {
    final frame = Frame(this);
    frame.f32_const(1.0000001192092896);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i64 _func31() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func32() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func33() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func34() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func35() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func36() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func37() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func38() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func39() {
    final frame = Frame(this);
    frame.f64_const(double.nan);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func40() {
    final frame = Frame(this);
    frame.f64_const(double.infinity);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func41() {
    final frame = Frame(this);
    frame.f64_const(double.infinity);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func42() {
    final frame = Frame(this);
    frame.f64_const(double.negativeInfinity);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func43() {
    final frame = Frame(this);
    frame.f64_const(0.0);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func44() {
    final frame = Frame(this);
    frame.f64_const(0.0);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func45() {
    final frame = Frame(this);
    frame.f64_const(-0.0);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func46() {
    final frame = Frame(this);
    frame.f64_const(6.283185307179586);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func47() {
    final frame = Frame(this);
    frame.f64_const(5e-324);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func48() {
    final frame = Frame(this);
    frame.f64_const(2.2250738585072014e-308);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func49() {
    final frame = Frame(this);
    frame.f64_const(2.225073858507201e-308);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func50() {
    final frame = Frame(this);
    frame.f64_const(1.7976931348623157e+308);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func51() {
    final frame = Frame(this);
    frame.f64_const(1.2676506002282294e+30);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func52() {
    final frame = Frame(this);
    frame.f64_const(0.0);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func53() {
    final frame = Frame(this);
    frame.f64_const(0.0);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func54() {
    final frame = Frame(this);
    frame.f64_const(-0.0);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func55() {
    final frame = Frame(this);
    frame.f64_const(6.283185307179586);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func56() {
    final frame = Frame(this);
    frame.f64_const(5e-324);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func57() {
    final frame = Frame(this);
    frame.f64_const(2.2250738585072014e-308);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func58() {
    final frame = Frame(this);
    frame.f64_const(2.225073858507201e-308);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func59() {
    final frame = Frame(this);
    frame.f64_const(1.7976931348623157e+308);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func60() {
    final frame = Frame(this);
    frame.f64_const(1e+100);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i64 _func61() {
    final frame = Frame(this);
    frame.f64_const(1.000000119);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  f32 _func62() {
    final frame = Frame(this);
    frame.f32_const(1000000.0);
    return frame.pop();
  }

  f32 _func63() {
    final frame = Frame(this);
    frame.f32_const(1000.0);
    return frame.pop();
  }

  f32 _func64() {
    final frame = Frame(this);
    frame.f32_const(1003.1416015625);
    return frame.pop();
  }

  f32 _func65() {
    final frame = Frame(this);
    frame.f32_const(990000028057600.0);
    return frame.pop();
  }

  f32 _func66() {
    final frame = Frame(this);
    frame.f32_const(1.2200011857269034e+28);
    return frame.pop();
  }

  f32 _func67() {
    final frame = Frame(this);
    frame.f32_const(168755360.0);
    return frame.pop();
  }

  f32 _func68() {
    final frame = Frame(this);
    frame.f32_const(109071.0);
    return frame.pop();
  }

  f32 _func69() {
    final frame = Frame(this);
    frame.f32_const(41215.94140625);
    return frame.pop();
  }

  f32 _func70() {
    final frame = Frame(this);
    frame.f32_const(1966080.0);
    return frame.pop();
  }

  f32 _func71() {
    final frame = Frame(this);
    frame.f32_const(23605224144896.0);
    return frame.pop();
  }

  f64 _func72() {
    final frame = Frame(this);
    frame.f64_const(1000000.0);
    return frame.pop();
  }

  f64 _func73() {
    final frame = Frame(this);
    frame.f64_const(1000.0);
    return frame.pop();
  }

  f64 _func74() {
    final frame = Frame(this);
    frame.f64_const(1003.141592);
    return frame.pop();
  }

  f64 _func75() {
    final frame = Frame(this);
    frame.f64_const(9.9e-122);
    return frame.pop();
  }

  f64 _func76() {
    final frame = Frame(this);
    frame.f64_const(1.2200011354e+28);
    return frame.pop();
  }

  f64 _func77() {
    final frame = Frame(this);
    frame.f64_const(3078696982321561.0);
    return frame.pop();
  }

  f64 _func78() {
    final frame = Frame(this);
    frame.f64_const(109071.0);
    return frame.pop();
  }

  f64 _func79() {
    final frame = Frame(this);
    frame.f64_const(41215.94240794191);
    return frame.pop();
  }

  f64 _func80() {
    final frame = Frame(this);
    frame.f64_const(1966080.0);
    return frame.pop();
  }

  f64 _func81() {
    final frame = Frame(this);
    frame.f64_const(23605225168752.0);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i64 Function();
typedef FunctionType2 = f32 Function();
typedef FunctionType3 = f64 Function();
