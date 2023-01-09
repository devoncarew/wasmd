// Generated from test/spec/left-to-right/left_to_right.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class LeftToRight0Module implements Module {
  LeftToRight0Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(1);

  final Table table0 = Table(
    8,
    8,
  );

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 i32_add() => _func035();
  i32 i32_sub() => _func036();
  i32 i32_mul() => _func037();
  i32 i32_div_s() => _func038();
  i32 i32_div_u() => _func039();
  i32 i32_rem_s() => _func040();
  i32 i32_rem_u() => _func041();
  i32 i32_and() => _func042();
  i32 i32_or() => _func043();
  i32 i32_xor() => _func044();
  i32 i32_shl() => _func045();
  i32 i32_shr_u() => _func046();
  i32 i32_shr_s() => _func047();
  i32 i32_eq() => _func048();
  i32 i32_ne() => _func049();
  i32 i32_lt_s() => _func050();
  i32 i32_le_s() => _func051();
  i32 i32_lt_u() => _func052();
  i32 i32_le_u() => _func053();
  i32 i32_gt_s() => _func054();
  i32 i32_ge_s() => _func055();
  i32 i32_gt_u() => _func056();
  i32 i32_ge_u() => _func057();
  i32 i32_store() => _func058();
  i32 i32_store8() => _func059();
  i32 i32_store16() => _func060();
  i32 i32_call() => _func061();
  i32 i32_call_indirect() => _func062();
  i32 i32_select() => _func063();
  i32 i64_add() => _func064();
  i32 i64_sub() => _func065();
  i32 i64_mul() => _func066();
  i32 i64_div_s() => _func067();
  i32 i64_div_u() => _func068();
  i32 i64_rem_s() => _func069();
  i32 i64_rem_u() => _func070();
  i32 i64_and() => _func071();
  i32 i64_or() => _func072();
  i32 i64_xor() => _func073();
  i32 i64_shl() => _func074();
  i32 i64_shr_u() => _func075();
  i32 i64_shr_s() => _func076();
  i32 i64_eq() => _func077();
  i32 i64_ne() => _func078();
  i32 i64_lt_s() => _func079();
  i32 i64_le_s() => _func080();
  i32 i64_lt_u() => _func081();
  i32 i64_le_u() => _func082();
  i32 i64_gt_s() => _func083();
  i32 i64_ge_s() => _func084();
  i32 i64_gt_u() => _func085();
  i32 i64_ge_u() => _func086();
  i32 i64_store() => _func087();
  i32 i64_store8() => _func088();
  i32 i64_store16() => _func089();
  i32 i64_store32() => _func090();
  i32 i64_call() => _func091();
  i32 i64_call_indirect() => _func092();
  i32 i64_select() => _func093();
  i32 f32_add() => _func094();
  i32 f32_sub() => _func095();
  i32 f32_mul() => _func096();
  i32 f32_div() => _func097();
  i32 f32_copysign() => _func098();
  i32 f32_eq() => _func099();
  i32 f32_ne() => _func100();
  i32 f32_lt() => _func101();
  i32 f32_le() => _func102();
  i32 f32_gt() => _func103();
  i32 f32_ge() => _func104();
  i32 f32_min() => _func105();
  i32 f32_max() => _func106();
  i32 f32_store() => _func107();
  i32 f32_call() => _func108();
  i32 f32_call_indirect() => _func109();
  i32 f32_select() => _func110();
  i32 f64_add() => _func111();
  i32 f64_sub() => _func112();
  i32 f64_mul() => _func113();
  i32 f64_div() => _func114();
  i32 f64_copysign() => _func115();
  i32 f64_eq() => _func116();
  i32 f64_ne() => _func117();
  i32 f64_lt() => _func118();
  i32 f64_le() => _func119();
  i32 f64_gt() => _func120();
  i32 f64_ge() => _func121();
  i32 f64_min() => _func122();
  i32 f64_max() => _func123();
  i32 f64_store() => _func124();
  i32 f64_call() => _func125();
  i32 f64_call_indirect() => _func126();
  i32 f64_select() => _func127();
  i32 br_if() => _func128();
  i32 br_table() => _func129();

  i32 _i32_t0(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _i32_t1(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.i32_const(-2);
    return frame.pop();
  }

  i32 _i64_t0(i64 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _i64_t1(i64 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.i32_const(-2);
    return frame.pop();
  }

  i32 _f32_t0(f32 arg0, f32 arg1) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _f32_t1(f32 arg0, f32 arg1) {
    final frame = Frame(this);
    frame.i32_const(-2);
    return frame.pop();
  }

  i32 _f64_t0(f64 arg0, f64 arg1) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _f64_t1(f64 arg0, f64 arg1) {
    final frame = Frame(this);
    frame.i32_const(-2);
    return frame.pop();
  }

  void _reset() {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.i32_const(0);
    frame.i32_store(2, 0);
  }

  void _bump() {
    final frame = Frame(this);
    frame.i32_const(11);
    frame.i32_const(10);
    frame.i32_load8_u(0, 0);
    frame.i32_store8(0, 0);
    frame.i32_const(10);
    frame.i32_const(9);
    frame.i32_load8_u(0, 0);
    frame.i32_store8(0, 0);
    frame.i32_const(9);
    frame.i32_const(8);
    frame.i32_load8_u(0, 0);
    frame.i32_store8(0, 0);
    frame.i32_const(8);
    frame.i32_const(-3);
    frame.i32_store8(0, 0);
  }

  i32 _get() {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 _i32_left() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 _i32_right() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 _i32_another() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 _i32_callee() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 _i32_bool() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  i64 _i64_left() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.i64_const(0);
    return frame.pop();
  }

  i64 _i64_right() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.i64_const(1);
    return frame.pop();
  }

  i64 _i64_another() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.i64_const(1);
    return frame.pop();
  }

  i32 _i64_callee() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(2);
    return frame.pop();
  }

  i32 _i64_bool() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  f32 _f32_left() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.f32_const(0.0);
    return frame.pop();
  }

  f32 _f32_right() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.f32_const(1.0);
    return frame.pop();
  }

  f32 _f32_another() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.f32_const(1.0);
    return frame.pop();
  }

  i32 _f32_callee() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(4);
    return frame.pop();
  }

  i32 _f32_bool() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  f64 _f64_left() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.f64_const(0.0);
    return frame.pop();
  }

  f64 _f64_right() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.f64_const(1.0);
    return frame.pop();
  }

  f64 _f64_another() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.f64_const(1.0);
    return frame.pop();
  }

  i32 _f64_callee() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(6);
    return frame.pop();
  }

  i32 _f64_bool() {
    final frame = Frame(this);
    _bump();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  void _i32_dummy(i32 arg0, i32 arg1) {
    final frame = Frame(this);
  }

  void _i64_dummy(i64 arg0, i64 arg1) {
    final frame = Frame(this);
  }

  void _f32_dummy(f32 arg0, f32 arg1) {
    final frame = Frame(this);
  }

  void _f64_dummy(f64 arg0, f64 arg1) {
    final frame = Frame(this);
  }

  i32 _func035() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_add();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func036() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_sub();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func037() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_mul();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func038() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_div_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func039() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_div_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func040() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_rem_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func041() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_rem_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func042() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_and();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func043() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_or();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func044() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_xor();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func045() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_shl();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func046() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_shr_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func047() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_shr_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func048() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_eq();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func049() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_ne();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func050() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_lt_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func051() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_le_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func052() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_lt_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func053() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_le_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func054() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_gt_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func055() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_ge_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func056() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_gt_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func057() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_ge_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func058() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_store(2, 0);
    frame.push(_get());
    return frame.pop();
  }

  i32 _func059() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_store8(0, 0);
    frame.push(_get());
    return frame.pop();
  }

  i32 _func060() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.i32_store16(1, 0);
    frame.push(_get());
    return frame.pop();
  }

  i32 _func061() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _i32_dummy(t0, t1);
    }
    frame.push(_get());
    return frame.pop();
  }

  i32 _func062() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.push(_i32_callee());
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func063() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i32_right());
    frame.push(_i32_bool());
    frame.select();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func064() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_add();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func065() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_sub();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func066() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_mul();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func067() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_div_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func068() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_div_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func069() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_rem_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func070() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_rem_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func071() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_and();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func072() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_or();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func073() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_xor();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func074() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_shl();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func075() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_shr_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func076() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_shr_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func077() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_eq();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func078() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_ne();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func079() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_lt_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func080() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_le_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func081() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_lt_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func082() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_le_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func083() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_gt_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func084() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_ge_s();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func085() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_gt_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func086() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.i64_ge_u();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func087() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i64_right());
    frame.i64_store(3, 0);
    frame.push(_get());
    return frame.pop();
  }

  i32 _func088() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i64_right());
    frame.i64_store8(0, 0);
    frame.push(_get());
    return frame.pop();
  }

  i32 _func089() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i64_right());
    frame.i64_store16(1, 0);
    frame.push(_get());
    return frame.pop();
  }

  i32 _func090() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_i64_right());
    frame.i64_store32(2, 0);
    frame.push(_get());
    return frame.pop();
  }

  i32 _func091() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _i64_dummy(t0, t1);
    }
    frame.push(_get());
    return frame.pop();
  }

  i32 _func092() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.push(_i64_callee());
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func093() {
    final frame = Frame(this);
    _reset();
    frame.push(_i64_left());
    frame.push(_i64_right());
    frame.push(_i64_bool());
    frame.select();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func094() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_add();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func095() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_sub();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func096() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_mul();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func097() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_div();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func098() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_copysign();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func099() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_eq();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func100() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_ne();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func101() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_lt();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func102() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_le();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func103() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_gt();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func104() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_ge();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func105() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_min();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func106() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.f32_max();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func107() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_f32_right());
    frame.f32_store(2, 0);
    frame.push(_get());
    return frame.pop();
  }

  i32 _func108() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _f32_dummy(t0, t1);
    }
    frame.push(_get());
    return frame.pop();
  }

  i32 _func109() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.push(_f32_callee());
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType2) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func110() {
    final frame = Frame(this);
    _reset();
    frame.push(_f32_left());
    frame.push(_f32_right());
    frame.push(_f32_bool());
    frame.select();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func111() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_add();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func112() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_sub();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func113() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_mul();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func114() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_div();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func115() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_copysign();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func116() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_eq();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func117() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_ne();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func118() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_lt();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func119() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_le();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func120() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_gt();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func121() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_ge();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func122() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_min();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func123() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.f64_max();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func124() {
    final frame = Frame(this);
    _reset();
    frame.push(_i32_left());
    frame.push(_f64_right());
    frame.f64_store(3, 0);
    frame.push(_get());
    return frame.pop();
  }

  i32 _func125() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _f64_dummy(t0, t1);
    }
    frame.push(_get());
    return frame.pop();
  }

  i32 _func126() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.push(_f64_callee());
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType3) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func127() {
    final frame = Frame(this);
    _reset();
    frame.push(_f64_left());
    frame.push(_f64_right());
    frame.push(_f64_bool());
    frame.select();
    frame.drop();
    frame.push(_get());
    return frame.pop();
  }

  i32 _func128() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _reset();
      frame.push(_i32_left());
      frame.push(_i32_right());
      frame.i32_const(0);
      frame.i32_and();
      if (frame.pop() != 0) break block_label_0;
      frame.drop();
      frame.push(_get());
    }
    return frame.pop();
  }

  i32 _func129() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _reset();
      block_label_1: // => i32
      {
        frame.push(_i32_left());
        frame.push(_i32_right());
        var t0 = frame.pop();
        switch (t0) {
          case 0:
            break block_label_0;
          default:
            break block_label_1;
        }
      }
      frame.drop();
      frame.push(_get());
    }
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [
      _i32_t0,
      _i32_t1,
      _i64_t0,
      _i64_t1,
      _f32_t0,
      _f32_t1,
      _f64_t0,
      _f64_t1,
      _reset,
      _bump,
      _get,
      _i32_left,
      _i32_right,
      _i32_another,
      _i32_callee,
      _i32_bool,
      _i64_left,
      _i64_right,
      _i64_another,
      _i64_callee,
      _i64_bool,
      _f32_left,
      _f32_right,
      _f32_another,
      _f32_callee,
      _f32_bool,
      _f64_left,
      _f64_right,
      _f64_another,
      _f64_callee,
      _f64_bool,
      _i32_dummy,
      _i64_dummy,
      _f32_dummy,
      _f64_dummy,
      _func035,
      _func036,
      _func037,
      _func038,
      _func039,
      _func040,
      _func041,
      _func042,
      _func043,
      _func044,
      _func045,
      _func046,
      _func047,
      _func048,
      _func049,
      _func050,
      _func051,
      _func052,
      _func053,
      _func054,
      _func055,
      _func056,
      _func057,
      _func058,
      _func059,
      _func060,
      _func061,
      _func062,
      _func063,
      _func064,
      _func065,
      _func066,
      _func067,
      _func068,
      _func069,
      _func070,
      _func071,
      _func072,
      _func073,
      _func074,
      _func075,
      _func076,
      _func077,
      _func078,
      _func079,
      _func080,
      _func081,
      _func082,
      _func083,
      _func084,
      _func085,
      _func086,
      _func087,
      _func088,
      _func089,
      _func090,
      _func091,
      _func092,
      _func093,
      _func094,
      _func095,
      _func096,
      _func097,
      _func098,
      _func099,
      _func100,
      _func101,
      _func102,
      _func103,
      _func104,
      _func105,
      _func106,
      _func107,
      _func108,
      _func109,
      _func110,
      _func111,
      _func112,
      _func113,
      _func114,
      _func115,
      _func116,
      _func117,
      _func118,
      _func119,
      _func120,
      _func121,
      _func122,
      _func123,
      _func124,
      _func125,
      _func126,
      _func127,
      _func128,
      _func129
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = i32 Function(i64, i64);
typedef FunctionType2 = i32 Function(f32, f32);
typedef FunctionType3 = i32 Function(f64, f64);
typedef FunctionType4 = void Function();
typedef FunctionType5 = i32 Function();
typedef FunctionType6 = i64 Function();
typedef FunctionType7 = f32 Function();
typedef FunctionType8 = f64 Function();
typedef FunctionType9 = void Function(i32, i32);
typedef FunctionType10 = void Function(i64, i64);
typedef FunctionType11 = void Function(f32, f32);
typedef FunctionType12 = void Function(f64, f64);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final LeftToRight0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 8, [0, 1, 2, 3, 4, 5, 6, 7]); /* segment0 */
  }
}
