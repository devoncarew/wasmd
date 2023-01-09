// Generated from test/spec/call_indirect/call_indirect.35.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class CallIndirect35Module implements Module {
  CallIndirect35Module();

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(1);

  @override
  late final List<Table> tables = [table0];

  void _func00() {
    final frame = Frame(this);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }

  void _func01() {
    final frame = Frame(this);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    /* nop */
  }

  void _func02() {
    final frame = Frame(this);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }

  void _func03() {
    final frame = Frame(this);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }

  void _func04() {
    final frame = Frame(this);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }

  void _func05() {
    final frame = Frame(this);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }

  void _func06() {
    final frame = Frame(this);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }

  void _func07() {
    final frame = Frame(this);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }

  void _func08() {
    final frame = Frame(this);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }

  i32 _func09() {
    final frame = Frame(this);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    frame.select();
    return frame.pop();
  }

  i32 _func10() {
    final frame = Frame(this);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    frame.select();
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    return frame.pop();
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function();
