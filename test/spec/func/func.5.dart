// Generated from test/spec/func/func.5.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Func5Module implements Module {
  Func5Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(
    7,
    7,
  );

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void signature_explicit_reused() => _func07();
  void signature_implicit_reused() => _func08();
  void signature_explicit_duplicate() => _func09();
  void signature_implicit_duplicate() => _func10();

  void _func00() {
    final frame = Frame(this);
  }

  void _func01(f64 arg0, i64 arg1, f64 arg2, i64 arg3, f64 arg4, i64 arg5, f32 arg6, i32 arg7) {
    final frame = Frame(this);
  }

  void _func02() {
    final frame = Frame(this);
  }

  void _func03(f64 arg0, i64 arg1, f64 arg2, i64 arg3, f64 arg4, i64 arg5, f32 arg6, i32 arg7) {
    final frame = Frame(this);
  }

  void _func04(f64 arg0, i64 arg1, f64 arg2, i64 arg3, f64 arg4, i64 arg5, f32 arg6, i32 arg7) {
    final frame = Frame(this);
  }

  void _func05(i64 arg0, i64 arg1, f64 arg2, i64 arg3, f64 arg4, i64 arg5, f32 arg6, i32 arg7) {
    final frame = Frame(this);
  }

  void _func06(i64 arg0, i64 arg1, f64 arg2, i64 arg3, f64 arg4, i64 arg5, f32 arg6, i32 arg7) {
    final frame = Frame(this);
  }

  void _func07() {
    final frame = Frame(this);
    frame.i32_const(1);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    frame.i32_const(4);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }

  void _func08() {
    final frame = Frame(this);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType3) throw Trap('indirect call type mismatch');
      var t7 = frame.pop();
      var t6 = frame.pop();
      var t5 = frame.pop();
      var t4 = frame.pop();
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2, t3, t4, t5, t6, t7);
    }
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.i32_const(2);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType3) throw Trap('indirect call type mismatch');
      var t7 = frame.pop();
      var t6 = frame.pop();
      var t5 = frame.pop();
      var t4 = frame.pop();
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2, t3, t4, t5, t6, t7);
    }
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.i32_const(3);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType3) throw Trap('indirect call type mismatch');
      var t7 = frame.pop();
      var t6 = frame.pop();
      var t5 = frame.pop();
      var t4 = frame.pop();
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2, t3, t4, t5, t6, t7);
    }
  }

  void _func09() {
    final frame = Frame(this);
    frame.i32_const(1);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      func();
    }
  }

  void _func10() {
    final frame = Frame(this);
    frame.i64_const(0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.i32_const(5);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType2) throw Trap('indirect call type mismatch');
      var t7 = frame.pop();
      var t6 = frame.pop();
      var t5 = frame.pop();
      var t4 = frame.pop();
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2, t3, t4, t5, t6, t7);
    }
    frame.i64_const(0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.i32_const(6);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType2) throw Trap('indirect call type mismatch');
      var t7 = frame.pop();
      var t6 = frame.pop();
      var t5 = frame.pop();
      var t4 = frame.pop();
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2, t3, t4, t5, t6, t7);
    }
  }

  List<Function> _initFunctionTable() {
    return [
      _func00,
      _func01,
      _func02,
      _func03,
      _func04,
      _func05,
      _func06,
      _func07,
      _func08,
      _func09,
      _func10
    ];
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function();
typedef FunctionType2 = void Function(i64, i64, f64, i64, f64, i64, f32, i32);
typedef FunctionType3 = void Function(f64, i64, f64, i64, f64, i64, f32, i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Func5Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 7, [4, 2, 1, 4, 0, 5, 6]); /* segment0 */
  }
}
