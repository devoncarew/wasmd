// Generated from spec/test/core/float_memory.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'float_memory.0.dart' as float_memory_0;
import 'float_memory.1.dart' as float_memory_1;
import 'float_memory.2.dart' as float_memory_2;
import 'float_memory.3.dart' as float_memory_3;
import 'float_memory.4.dart' as float_memory_4;
import 'float_memory.5.dart' as float_memory_5;

void main() {
  group('float_memory', () {
    // module float_memory.0.dart (line 5)
    var m0 = float_memory_0.FloatMemory0Module();

    returns('i32_load_0', () => m0.i32_load(), $i32('7FA00000'));
    returns('f32_load_0', () => m0.f32_load(), $f32('7FA00000'));
    invoke('reset_0', () => m0.reset());
    returns('i32_load_1', () => m0.i32_load(), 0);
    returns('f32_load_1', () => m0.f32_load(), $f32('0'));
    invoke('f32_store_0', () => m0.f32_store());
    returns('i32_load_2', () => m0.i32_load(), $i32('7FA00000'));
    returns('f32_load_2', () => m0.f32_load(), $f32('7FA00000'));
    invoke('reset_1', () => m0.reset());
    returns('i32_load_3', () => m0.i32_load(), 0);
    returns('f32_load_3', () => m0.f32_load(), $f32('0'));
    invoke('i32_store_0', () => m0.i32_store());
    returns('i32_load_4', () => m0.i32_load(), $i32('7FA00000'));
    returns('f32_load_4', () => m0.f32_load(), $f32('7FA00000'));

    // module float_memory.1.dart (line 30)
    var m1 = float_memory_1.FloatMemory1Module();

    returns('i64_load_0', () => m1.i64_load(), $i64('7FF4000000000000'));
    returns('f64_load_0', () => m1.f64_load(), $f64('7FF4000000000000'));
    invoke('reset_2', () => m1.reset());
    returns('i64_load_1', () => m1.i64_load(), 0);
    returns('f64_load_1', () => m1.f64_load(), $f64('0'));
    invoke('f64_store_0', () => m1.f64_store());
    returns('i64_load_2', () => m1.i64_load(), $i64('7FF4000000000000'));
    returns('f64_load_2', () => m1.f64_load(), $f64('7FF4000000000000'));
    invoke('reset_3', () => m1.reset());
    returns('i64_load_3', () => m1.i64_load(), 0);
    returns('f64_load_3', () => m1.f64_load(), $f64('0'));
    invoke('i64_store_0', () => m1.i64_store());
    returns('i64_load_4', () => m1.i64_load(), $i64('7FF4000000000000'));
    returns('f64_load_4', () => m1.f64_load(), $f64('7FF4000000000000'));

    // module float_memory.2.dart (line 57)
    var m2 = float_memory_2.FloatMemory2Module();

    returns('i32_load_5', () => m2.i32_load(), $i32('7FA00000'));
    returns('f32_load_5', () => m2.f32_load(), $f32('7FA00000'));
    invoke('reset_4', () => m2.reset());
    returns('i32_load_6', () => m2.i32_load(), 0);
    returns('f32_load_6', () => m2.f32_load(), $f32('0'));
    invoke('f32_store_1', () => m2.f32_store());
    returns('i32_load_7', () => m2.i32_load(), $i32('7FA00000'));
    returns('f32_load_7', () => m2.f32_load(), $f32('7FA00000'));
    invoke('reset_5', () => m2.reset());
    returns('i32_load_8', () => m2.i32_load(), 0);
    returns('f32_load_8', () => m2.f32_load(), $f32('0'));
    invoke('i32_store_1', () => m2.i32_store());
    returns('i32_load_9', () => m2.i32_load(), $i32('7FA00000'));
    returns('f32_load_9', () => m2.f32_load(), $f32('7FA00000'));

    // module float_memory.3.dart (line 82)
    var m3 = float_memory_3.FloatMemory3Module();

    returns('i64_load_5', () => m3.i64_load(), $i64('7FF4000000000000'));
    returns('f64_load_5', () => m3.f64_load(), $f64('7FF4000000000000'));
    invoke('reset_6', () => m3.reset());
    returns('i64_load_6', () => m3.i64_load(), 0);
    returns('f64_load_6', () => m3.f64_load(), $f64('0'));
    invoke('f64_store_1', () => m3.f64_store());
    returns('i64_load_7', () => m3.i64_load(), $i64('7FF4000000000000'));
    returns('f64_load_7', () => m3.f64_load(), $f64('7FF4000000000000'));
    invoke('reset_7', () => m3.reset());
    returns('i64_load_8', () => m3.i64_load(), 0);
    returns('f64_load_8', () => m3.f64_load(), $f64('0'));
    invoke('i64_store_1', () => m3.i64_store());
    returns('i64_load_9', () => m3.i64_load(), $i64('7FF4000000000000'));
    returns('f64_load_9', () => m3.f64_load(), $f64('7FF4000000000000'));

    // module float_memory.4.dart (line 109)
    var m4 = float_memory_4.FloatMemory4Module();

    returns('i32_load_10', () => m4.i32_load(), $i32('7FD00001'));
    returns('f32_load_10', () => m4.f32_load(), $f32('7FD00001'));
    invoke('reset_8', () => m4.reset());
    returns('i32_load_11', () => m4.i32_load(), 0);
    returns('f32_load_11', () => m4.f32_load(), $f32('0'));
    invoke('f32_store_2', () => m4.f32_store());
    returns('i32_load_12', () => m4.i32_load(), $i32('7FD00001'));
    returns('f32_load_12', () => m4.f32_load(), $f32('7FD00001'));
    invoke('reset_9', () => m4.reset());
    returns('i32_load_13', () => m4.i32_load(), 0);
    returns('f32_load_13', () => m4.f32_load(), $f32('0'));
    invoke('i32_store_2', () => m4.i32_store());
    returns('i32_load_14', () => m4.i32_load(), $i32('7FD00001'));
    returns('f32_load_14', () => m4.f32_load(), $f32('7FD00001'));

    // module float_memory.5.dart (line 134)
    var m5 = float_memory_5.FloatMemory5Module();

    returns('i64_load_10', () => m5.i64_load(), $i64('7FFC000000000001'));
    returns('f64_load_10', () => m5.f64_load(), $f64('7FFC000000000001'));
    invoke('reset_10', () => m5.reset());
    returns('i64_load_11', () => m5.i64_load(), 0);
    returns('f64_load_11', () => m5.f64_load(), $f64('0'));
    invoke('f64_store_2', () => m5.f64_store());
    returns('i64_load_12', () => m5.i64_load(), $i64('7FFC000000000001'));
    returns('f64_load_12', () => m5.f64_load(), $f64('7FFC000000000001'));
    invoke('reset_11', () => m5.reset());
    returns('i64_load_13', () => m5.i64_load(), 0);
    returns('f64_load_13', () => m5.f64_load(), $f64('0'));
    invoke('i64_store_2', () => m5.i64_store());
    returns('i64_load_14', () => m5.i64_load(), $i64('7FFC000000000001'));
    returns('f64_load_14', () => m5.f64_load(), $f64('7FFC000000000001'));
  });
}
