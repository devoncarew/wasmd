// Generated from samples/mandelbrot.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Module {
  Module({required this.envImports}) {
    dataSegments.init(memory);
    _func11();
  }

  final EnvImports envImports;

  final Memory memory = Memory(60);

  final Globals globals = Globals();

  final DataSegments dataSegments = DataSegments();

  i32 get width => globals.global0;
  set width(i32 value) => globals.global0 = value;
  i32 get height => globals.global1;
  set height(i32 value) => globals.global1 = value;
  void _func0(
    i32 arg0,
    i32 arg1,
  ) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_store(
      2,
      4,
    );
  }

  void _func1(
    i32 arg0,
    i32 arg1,
  ) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_store(
      2,
      8,
    );
  }

  i32 _func2(
    i32 arg0,
    i32 arg1,
  ) {
    i32 local0 = 0;
    i32 local1 = 0;
    i32 local2 = 0;
    i32 local3 = 0;
    i32 local4 = 0;
    i32 local5 = 0;

    final frame = Frame(memory);
    frame.push(arg0);
    frame.i32_const(0x3fffffec);
    frame.i32_gt_u();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0x490);
      frame.i32_const(0x4d0);
      frame.i32_const(86);
      frame.i32_const(30);
      {
        var t3 = frame.pop();
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        envImports.abort(
          t0,
          t1,
          t2,
          t3,
        );
      }
      throw 'unreachable';
    }
    frame.push(arg0);
    frame.i32_const(16);
    frame.i32_add();
    local2 = frame.peek();
    frame.i32_const(0x3ffffffc);
    frame.i32_gt_u();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0x490);
      frame.i32_const(0x4d0);
      frame.i32_const(33);
      frame.i32_const(29);
      {
        var t3 = frame.pop();
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        envImports.abort(
          t0,
          t1,
          t2,
          t3,
        );
      }
      throw 'unreachable';
    }
    frame.push(globals.global2);
    local1 = frame.pop();
    frame.push(globals.global2);
    frame.i32_const(4);
    frame.i32_add();
    local0 = frame.peek();
    frame.push(local2);
    frame.i32_const(19);
    frame.i32_add();
    frame.i32_const(-16);
    frame.i32_and();
    frame.i32_const(4);
    frame.i32_sub();
    local2 = frame.peek();
    frame.i32_add();
    local3 = frame.peek();
    frame.memory_size(0);
    local4 = frame.peek();
    frame.i32_const(16);
    frame.i32_shl();
    frame.i32_const(15);
    frame.i32_add();
    frame.i32_const(-16);
    frame.i32_and();
    local5 = frame.peek();
    frame.i32_gt_u();
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(local4);
      frame.push(local3);
      frame.push(local5);
      frame.i32_sub();
      frame.i32_const(0xffff);
      frame.i32_add();
      frame.i32_const(-0x10000);
      frame.i32_and();
      frame.i32_const(16);
      frame.i32_shr_u();
      local5 = frame.peek();
      frame.push(local4);
      frame.push(local5);
      frame.i32_gt_s();
      frame.select();
      frame.memory_grow(0);
      frame.i32_const(0);
      frame.i32_lt_s();
      if_label_1:
      if (frame.pop() != 0) {
        frame.push(local5);
        frame.memory_grow(0);
        frame.i32_const(0);
        frame.i32_lt_s();
        if_label_2:
        if (frame.pop() != 0) {
          throw 'unreachable';
        }
      }
    }
    frame.push(local3);
    globals.global2 = frame.pop();
    frame.push(local1);
    frame.push(local2);
    frame.i32_store(
      2,
      0,
    );
    frame.push(local0);
    frame.i32_const(4);
    frame.i32_sub();
    local1 = frame.peek();
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func0(
        t0,
        t1,
      );
    }
    frame.push(local1);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func1(
        t0,
        t1,
      );
    }
    frame.push(local1);
    frame.push(arg1);
    frame.i32_store(
      2,
      12,
    );
    frame.push(local1);
    frame.push(arg0);
    frame.i32_store(
      2,
      16,
    );
    frame.push(local0);
    frame.i32_const(16);
    frame.i32_add();
    return frame.pop();
  }

  void _func3(
    i32 arg0,
    i32 arg1,
  ) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_store(
      2,
      0,
    );
  }

  i32 iterateEquation(
    f64 arg0,
    f64 arg1,
    i32 arg2,
  ) {
    f64 local0 = 0;
    f64 local1 = 0;
    i32 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(memory);

    loop_label_0:
    for (;;) {
      frame.push(arg2);
      frame.push(local2);
      frame.i32_gt_u();
      frame.push(local3);
      frame.push(local3);
      frame.f64_mul();
      frame.push(local1);
      frame.push(local1);
      frame.f64_mul();
      frame.f64_add();
      frame.f64_const(4.0);
      frame.f64_le();
      frame.i32_and();
      if_label_1:
      if (frame.pop() != 0) {
        frame.push(local3);
        frame.push(local0);
        frame.f64_mul();
        local1 = frame.peek();
        frame.push(local1);
        frame.f64_add();
        frame.push(arg1);
        frame.f64_add();
        local1 = frame.pop();
        frame.push(local3);
        frame.push(local3);
        frame.f64_mul();
        frame.push(local0);
        frame.push(local0);
        frame.f64_mul();
        frame.f64_sub();
        frame.push(arg0);
        frame.f64_add();
        local3 = frame.pop();
        frame.push(local1);
        local0 = frame.pop();
        frame.push(local2);
        frame.i32_const(1);
        frame.i32_add();
        local2 = frame.pop();
        continue loop_label_0;
      }
      break;
    }
    frame.push(local2);
    return frame.pop();
  }

  f64 _func5(
    f64 arg0,
    f64 arg1,
    f64 arg2,
    f64 arg3,
  ) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg3);
    frame.f64_const(1.0);
    frame.push(arg2);
    frame.f64_div();
    frame.f64_mul();
    frame.f64_const(-1.0);
    frame.f64_add();
    frame.f64_mul();
    frame.f64_add();
    return frame.pop();
  }

  i32 _func6(
    i32 arg0,
    i32 arg1,
  ) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.i32_const(2);
    frame.i32_shl();
    frame.push(arg1);
    frame.i32_add();
    frame.i32_const(0x3ff);
    frame.i32_and();
    arg0 = frame.peek();
    frame.i32_const(256);
    frame.i32_lt_u();
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(arg0);
      return frame.pop();
    } else {
      frame.push(arg0);
      frame.i32_const(512);
      frame.i32_lt_u();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(510);
        frame.push(arg0);
        frame.i32_sub();
        return frame.pop();
      }
    }
    frame.i32_const(0);
    return frame.pop();
  }

  void _func7(
    i32 arg0,
    i32 arg1,
    i32 arg2,
  ) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.i32_load(
      2,
      4,
    );
    frame.push(arg1);
    frame.i32_add();
    frame.push(arg2);
    frame.i32_store8(
      0,
      0,
    );
  }

  void mandelbrot(
    i32 arg0,
    f64 arg1,
    f64 arg2,
    f64 arg3,
  ) {
    i32 local0 = 0;
    i32 local1 = 0;
    i32 local2 = 0;
    i32 local3 = 0;
    i32 local4 = 0;
    f64 local5 = 0;

    final frame = Frame(memory);
    frame.push(arg3);
    frame.push(globals.global1);
    frame.f64_convert_i32_s();
    frame.f64_mul();
    frame.push(globals.global0);
    frame.f64_convert_i32_s();
    frame.f64_div();
    local5 = frame.pop();

    loop_label_0:
    for (;;) {
      frame.push(local1);
      frame.push(globals.global1);
      frame.i32_lt_s();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(0);
        local0 = frame.pop();

        loop_label_2:
        for (;;) {
          frame.push(local0);
          frame.push(globals.global0);
          frame.i32_lt_s();
          if_label_3:
          if (frame.pop() != 0) {
            frame.push(arg1);
            frame.push(arg3);
            frame.push(globals.global0);
            frame.f64_convert_i32_s();
            frame.push(local0);
            frame.f64_convert_i32_s();
            {
              var t3 = frame.pop();
              var t2 = frame.pop();
              var t1 = frame.pop();
              var t0 = frame.pop();
              frame.push(_func5(
                t0,
                t1,
                t2,
                t3,
              ));
            }
            frame.push(arg2);
            frame.push(local5);
            frame.push(globals.global1);
            frame.f64_convert_i32_s();
            frame.push(local1);
            frame.f64_convert_i32_s();
            {
              var t3 = frame.pop();
              var t2 = frame.pop();
              var t1 = frame.pop();
              var t0 = frame.pop();
              frame.push(_func5(
                t0,
                t1,
                t2,
                t3,
              ));
            }
            frame.push(arg0);
            {
              var t2 = frame.pop();
              var t1 = frame.pop();
              var t0 = frame.pop();
              frame.push(iterateEquation(
                t0,
                t1,
                t2,
              ));
            }
            local2 = frame.peek();
            frame.push(arg0);
            frame.i32_eq();
            local3 = frame.pop();
            frame.push(globals.global3);
            frame.push(local0);
            frame.push(local1);
            frame.push(globals.global0);
            frame.i32_mul();
            frame.i32_add();
            frame.i32_const(2);
            frame.i32_shl();
            local4 = frame.peek();
            frame.push(local3);
            if_label_4:
            if (frame.pop() != 0) {
              frame.i32_const(0);
            } else {
              frame.push(local2);
              frame.i32_const(0);
              {
                var t1 = frame.pop();
                var t0 = frame.pop();
                frame.push(_func6(
                  t0,
                  t1,
                ));
              }
            }
            {
              var t2 = frame.pop();
              var t1 = frame.pop();
              var t0 = frame.pop();
              _func7(
                t0,
                t1,
                t2,
              );
            }
            frame.push(globals.global3);
            frame.push(local4);
            frame.i32_const(1);
            frame.i32_add();
            frame.push(local3);
            if_label_4:
            if (frame.pop() != 0) {
              frame.i32_const(0);
            } else {
              frame.push(local2);
              frame.i32_const(128);
              {
                var t1 = frame.pop();
                var t0 = frame.pop();
                frame.push(_func6(
                  t0,
                  t1,
                ));
              }
            }
            {
              var t2 = frame.pop();
              var t1 = frame.pop();
              var t0 = frame.pop();
              _func7(
                t0,
                t1,
                t2,
              );
            }
            frame.push(globals.global3);
            frame.push(local4);
            frame.i32_const(2);
            frame.i32_add();
            frame.push(local3);
            if_label_4:
            if (frame.pop() != 0) {
              frame.i32_const(0);
            } else {
              frame.push(local2);
              frame.i32_const(356);
              {
                var t1 = frame.pop();
                var t0 = frame.pop();
                frame.push(_func6(
                  t0,
                  t1,
                ));
              }
            }
            {
              var t2 = frame.pop();
              var t1 = frame.pop();
              var t0 = frame.pop();
              _func7(
                t0,
                t1,
                t2,
              );
            }
            frame.push(globals.global3);
            frame.push(local4);
            frame.i32_const(3);
            frame.i32_add();
            frame.i32_const(255);
            {
              var t2 = frame.pop();
              var t1 = frame.pop();
              var t0 = frame.pop();
              _func7(
                t0,
                t1,
                t2,
              );
            }
            frame.push(local0);
            frame.i32_const(1);
            frame.i32_add();
            local0 = frame.pop();
            continue loop_label_2;
          }
          break;
        }
        frame.push(local1);
        frame.i32_const(1);
        frame.i32_add();
        local1 = frame.pop();
        continue loop_label_0;
      }
      break;
    }
  }

  i32 getData() {
    final frame = Frame(memory);
    frame.push(globals.global3);
    return frame.pop();
  }

  i32 getDataBuffer() {
    final frame = Frame(memory);
    frame.push(globals.global3);
    frame.i32_load(
      2,
      0,
    );
    return frame.pop();
  }

  void _func11() {
    i32 local0 = 0;
    i32 local1 = 0;

    final frame = Frame(memory);
    frame.i32_const(0x4fc);
    globals.global2 = frame.pop();
    frame.i32_const(12);
    frame.i32_const(4);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func2(
        t0,
        t1,
      ));
    }
    local0 = frame.peek();
    frame.i32_eqz();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(12);
      frame.i32_const(3);
      {
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(_func2(
          t0,
          t1,
        ));
      }
      local0 = frame.pop();
    }
    frame.push(local0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func3(
        t0,
        t1,
      );
    }
    frame.push(local0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func0(
        t0,
        t1,
      );
    }
    frame.push(local0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func1(
        t0,
        t1,
      );
    }
    frame.i32_const(0x3a9800);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func2(
        t0,
        t1,
      ));
    }
    local1 = frame.peek();
    frame.i32_const(0);
    frame.i32_const(0x3a9800);
    frame.memory_fill(0);
    frame.push(local0);
    frame.push(local1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func3(
        t0,
        t1,
      );
    }
    frame.push(local0);
    frame.push(local1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func0(
        t0,
        t1,
      );
    }
    frame.push(local0);
    frame.i32_const(0x3a9800);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func1(
        t0,
        t1,
      );
    }
    frame.push(local0);
    globals.global3 = frame.pop();
  }
}

typedef FunctionType0 = void Function(i32, i32);
typedef FunctionType1 = i32 Function(i32, i32);
typedef FunctionType2 = i32 Function();
typedef FunctionType3 = void Function(i32, i32, i32, i32);
typedef FunctionType4 = i32 Function(f64, f64, i32);
typedef FunctionType5 = f64 Function(f64, f64, f64, f64);
typedef FunctionType6 = void Function(i32, i32, i32);
typedef FunctionType7 = void Function(i32, f64, f64, f64);
typedef FunctionType8 = void Function();

class Globals {
  i32 global0 = 0x4b0;

  i32 global1 = 800;

  i32 global2 = 0;

  i32 global3 = 0;
}

/// A class representing the symbols imported from the 'env' module.
abstract class EnvImports {
  /// The imported 'abort' symbol.
  void abort(
    i32 arg0,
    i32 arg1,
    i32 arg2,
    i32 arg3,
  );
}

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  Uint8List data1 = decodeDataLiteral(_hex1);

  Uint8List data2 = decodeDataLiteral(_hex2);

  Uint8List data3 = decodeDataLiteral(_hex3);

  Uint8List data4 = decodeDataLiteral(_hex4);

  Uint8List data5 = decodeDataLiteral(_hex5);

  Uint8List data6 = decodeDataLiteral(_hex6);

  Uint8List data7 = decodeDataLiteral(_hex7);

  static const String _hex0 = '\x2C';

  static const String _hex1 =
      '\x02\x00\x00\x00\x1C\x00\x00\x00\x49\x00\x6E\x00\x76\x00\x61\x00\x6C\x00'
      '\x69\x00\x64\x00\x20\x00\x6C\x00\x65\x00\x6E\x00\x67\x00\x74\x00\x68';

  static const String _hex2 = '\x3C';

  static const String _hex3 =
      '\x02\x00\x00\x00\x26\x00\x00\x00\x7E\x00\x6C\x00\x69\x00\x62\x00\x2F\x00'
      '\x61\x00\x72\x00\x72\x00\x61\x00\x79\x00\x62\x00\x75\x00\x66\x00\x66\x00'
      '\x65\x00\x72\x00\x2E\x00\x74\x00\x73';

  static const String _hex4 = '\x3C';

  static const String _hex5 =
      '\x02\x00\x00\x00\x28\x00\x00\x00\x41\x00\x6C\x00\x6C\x00\x6F\x00\x63\x00'
      '\x61\x00\x74\x00\x69\x00\x6F\x00\x6E\x00\x20\x00\x74\x00\x6F\x00\x6F\x00'
      '\x20\x00\x6C\x00\x61\x00\x72\x00\x67\x00\x65';

  static const String _hex6 = '\x3C';

  static const String _hex7 =
      '\x02\x00\x00\x00\x1E\x00\x00\x00\x7E\x00\x6C\x00\x69\x00\x62\x00\x2F\x00'
      '\x72\x00\x74\x00\x2F\x00\x73\x00\x74\x00\x75\x00\x62\x00\x2E\x00\x74\x00'
      '\x73';

  void init(Memory memory) {
    memory.copyTo(
      data0,
      1036,
    );
    memory.copyTo(
      data1,
      1048,
    );
    memory.copyTo(
      data2,
      1084,
    );
    memory.copyTo(
      data3,
      1096,
    );
    memory.copyTo(
      data4,
      1148,
    );
    memory.copyTo(
      data5,
      1160,
    );
    memory.copyTo(
      data6,
      1212,
    );
    memory.copyTo(
      data7,
      1224,
    );
  }
}
