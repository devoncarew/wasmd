// Generated from test/spec/select/select.29.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Select29Module implements Module {
  Select29Module();

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(1);

  @override
  late final List<Table> tables = [table0];

  i32 _func00() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    return frame.pop();
  }

  i32 _func01() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    /* nop */
    return frame.pop();
  }

  i32 _func02() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    frame.select();
    return frame.pop();
  }

  i32 _func03() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    frame.select();
    return frame.pop();
  }

  i32 _func04() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    frame.select();
    frame.select();
    return frame.pop();
  }

  i32 _func05() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select_t(0x7f);
    return frame.pop();
  }

  i32 _func06() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select_t(0x7f);
    return frame.pop();
  }

  i32 _func07() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select_t(0x7f);
    frame.select();
    return frame.pop();
  }

  i32 _func08() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select_t(0x7f);
    frame.select_t(0x7f);
    return frame.pop();
  }

  i32 _func09() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      func();
    }
    return frame.pop();
  }

  i32 _func10() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      func();
    }
    frame.select();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function();
