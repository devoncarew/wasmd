// Generated from test/spec/endianness/endianness.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Endianness0Module implements Module {
  Endianness0Module();

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  f32 f32_load(f32 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.i32_reinterpret_f32();
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func01(t0, t1);
    }
    frame.i32_const(0);
    frame.f32_load(2, 0);
    return frame.pop();
  }

  f32 f32_store(f32 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.f32_store(2, 0);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(_func04(t0));
    }
    frame.f32_reinterpret_i32();
    return frame.pop();
  }

  f64 f64_load(f64 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.i64_reinterpret_f64();
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func02(t0, t1);
    }
    frame.i32_const(0);
    frame.f64_load(3, 0);
    return frame.pop();
  }

  f64 f64_store(f64 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.f64_store(3, 0);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(_func05(t0));
    }
    frame.f64_reinterpret_i64();
    return frame.pop();
  }

  i32 i32_load(i32 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func01(t0, t1);
    }
    frame.i32_const(0);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 i32_load16_s(i32 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func00(t0, t1);
    }
    frame.i32_const(0);
    frame.i32_load16_s(1, 0);
    return frame.pop();
  }

  i32 i32_load16_u(i32 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func00(t0, t1);
    }
    frame.i32_const(0);
    frame.i32_load16_u(1, 0);
    return frame.pop();
  }

  i32 i32_store(i32 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.i32_store(2, 0);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(_func04(t0));
    }
    return frame.pop();
  }

  i32 i32_store16(i32 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.i32_store16(1, 0);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(_func03(t0));
    }
    return frame.pop();
  }

  i64 i64_load(i64 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func02(t0, t1);
    }
    frame.i32_const(0);
    frame.i64_load(3, 0);
    return frame.pop();
  }

  i64 i64_load16_s(i64 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.i32_wrap_i64();
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func00(t0, t1);
    }
    frame.i32_const(0);
    frame.i64_load16_s(1, 0);
    return frame.pop();
  }

  i64 i64_load16_u(i64 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.i32_wrap_i64();
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func00(t0, t1);
    }
    frame.i32_const(0);
    frame.i64_load16_u(1, 0);
    return frame.pop();
  }

  i64 i64_load32_s(i64 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.i32_wrap_i64();
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func01(t0, t1);
    }
    frame.i32_const(0);
    frame.i64_load32_s(2, 0);
    return frame.pop();
  }

  i64 i64_load32_u(i64 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.i32_wrap_i64();
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func01(t0, t1);
    }
    frame.i32_const(0);
    frame.i64_load32_u(2, 0);
    return frame.pop();
  }

  i64 i64_store(i64 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.i64_store(3, 0);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(_func05(t0));
    }
    return frame.pop();
  }

  i64 i64_store16(i64 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.i64_store16(1, 0);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(_func03(t0));
    }
    frame.i64_extend_i32_u();
    return frame.pop();
  }

  i64 i64_store32(i64 value) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.push(value);
    frame.i64_store32(2, 0);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(_func04(t0));
    }
    frame.i64_extend_i32_u();
    return frame.pop();
  }

  void _func00(i32 address, i32 value) {
    final frame = Frame(this);
    frame.push(address);
    frame.push(value);
    frame.i32_store8(0, 0);
    frame.push(address);
    frame.i32_const(1);
    frame.i32_add();
    frame.push(value);
    frame.i32_const(8);
    frame.i32_shr_u();
    frame.i32_store8(0, 0);
  }

  void _func01(i32 address, i32 value) {
    final frame = Frame(this);
    frame.push(address);
    frame.push(value);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func00(t0, t1);
    }
    frame.push(address);
    frame.i32_const(2);
    frame.i32_add();
    frame.push(value);
    frame.i32_const(16);
    frame.i32_shr_u();
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func00(t0, t1);
    }
  }

  void _func02(i32 address, i64 value) {
    final frame = Frame(this);
    frame.push(address);
    frame.push(value);
    frame.i32_wrap_i64();
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func01(t0, t1);
    }
    frame.push(address);
    frame.i32_const(4);
    frame.i32_add();
    frame.push(value);
    frame.i64_const(32);
    frame.i64_shr_u();
    frame.i32_wrap_i64();
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func01(t0, t1);
    }
  }

  i32 _func03(i32 address) {
    final frame = Frame(this);
    frame.push(address);
    frame.i32_load8_u(0, 0);
    frame.push(address);
    frame.i32_const(1);
    frame.i32_add();
    frame.i32_load8_u(0, 0);
    frame.i32_const(8);
    frame.i32_shl();
    frame.i32_or();
    return frame.pop();
  }

  i32 _func04(i32 address) {
    final frame = Frame(this);
    frame.push(address);
    {
      var t0 = frame.pop();
      frame.push(_func03(t0));
    }
    frame.push(address);
    frame.i32_const(2);
    frame.i32_add();
    {
      var t0 = frame.pop();
      frame.push(_func03(t0));
    }
    frame.i32_const(16);
    frame.i32_shl();
    frame.i32_or();
    return frame.pop();
  }

  i64 _func05(i32 address) {
    final frame = Frame(this);
    frame.push(address);
    {
      var t0 = frame.pop();
      frame.push(_func04(t0));
    }
    frame.i64_extend_i32_u();
    frame.push(address);
    frame.i32_const(4);
    frame.i32_add();
    {
      var t0 = frame.pop();
      frame.push(_func04(t0));
    }
    frame.i64_extend_i32_u();
    frame.i64_const(32);
    frame.i64_shl();
    frame.i64_or();
    return frame.pop();
  }
}

typedef FunctionType0 = void Function(i32, i32);
typedef FunctionType1 = void Function(i32, i64);
typedef FunctionType2 = i32 Function(i32);
typedef FunctionType3 = i64 Function(i32);
typedef FunctionType4 = i64 Function(i64);
typedef FunctionType5 = f32 Function(f32);
typedef FunctionType6 = f64 Function(f64);
