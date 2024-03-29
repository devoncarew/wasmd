// Generated from test/spec/float_exprs/float_exprs.61.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs61Module extends Module {
  FloatExprs61Module() {
    dataSegments.init(memory);
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  @override
  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  f32 f32_kahan_sum(i32 arg0, i32 arg1) => _func0(arg0, arg1);
  f32 f32_plain_sum(i32 arg0, i32 arg1) => _func1(arg0, arg1);

  f32 _func0(i32 p, i32 n) {
    f32 sum = 0;
    f32 c = 0;
    f32 t = 0;

    block_label_0:
    {
      loop_label_1:
      for (;;) {
        var t0 = vm.f32_load(2, 0, p);
        var t1 = vm.f32_sub(t0, t);
        t = t1;
        var t2 = vm.f32_add(c, t1);
        sum = t2;
        var t3 = vm.f32_sub(t2, c);
        var t4 = vm.f32_sub(t3, t);
        t = t4;
        var t5 = vm.i32_add(p, 4);
        p = t5;
        c = sum;
        var t6 = vm.i32_add(n, -1);
        n = t6;
        if (t6 != 0) continue loop_label_1;
        break;
      }
    }
    return sum;
  }

  f32 _func1(i32 p, i32 n) {
    f32 sum = 0;

    block_label_0:
    {
      loop_label_1:
      for (;;) {
        var t0 = vm.f32_load(2, 0, p);
        var t1 = vm.f32_add(sum, t0);
        sum = t1;
        var t2 = vm.i32_add(p, 4);
        p = t2;
        var t3 = vm.i32_add(n, -1);
        n = t3;
        if (n != 0) continue loop_label_1;
        break;
      }
    }
    return sum;
  }
}

typedef FunctionType0 = f32 Function(i32, i32);

class DataSegments extends AbstractDataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  @override
  late final List<Uint8List> data = [data0];

  static const String _hex0 =
      '\xC4\xC5\x57\x24\xA5\x84\xC8\x0B\x6D\xB8\x4B\x2E\xF2\x76\x17\x1C\xCA\x4A\x56\x1E\x1B\x6E\x71\x22\x5D\x17'
      '\x1E\x6E\xBF\xCD\x14\x5C\xC7\x21\x55\x51\x39\x9C\x1F\xB2\x51\xF0\xA3\x93\xD7\xC1\x2C\xAE\x7E\xA8\x28\x3A'
      '\x01\x21\xF4\x0A\x58\x93\xF8\x42\x77\x9F\x83\x39\x6A\x5F\xBA\xF7\x0A\xD8\x51\x6A\x34\xCA\xAD\xC6\x34\x0E'
      '\xD8\x26\xDC\x4C\x33\x1C\xED\x29\x90\xA8\x78\x0F\xD1\xCE\x76\x31\x23\x83\xB8\x35\xE8\xF2\x44\xB0\xD3\xA1'
      '\xFC\xBB\x32\xE1\xB0\xBA\x69\x44\x09\xD6\xD9\x7D\xFF\x2E\xC0\x5A\x36\x14\x33\x14\x3E\xA9\xFA\x87\x6D\x8B'
      '\xBC\xCE\x9D\xA7\xFD\xC4\xE9\x85\x3F\xDD\xD7\xE1\x18\xA6\x50\x26\x72\x6E\x3F\x73\x0F\xF8\x12\x93\x23\x34'
      '\x61\x76\x12\x48\xC0\x9B\x05\x93\xEB\xAC\x86\xDE\x94\x3E\x55\xE8\x8C\xE8\xDD\xE4\xFC\x95\x47\xBE\x56\x03'
      '\x21\x20\x4C\xE6\xBF\x7B\xF6\x7F\xD5\xBA\x73\x1C\xC1\x14\x8F\xC4\x27\x96\xB3\xBD\x33\xFF\x78\x41\x5F\xC0'
      '\x5A\xCE\xF6\x67\x6E\x73\x9A\x17\x66\x70\x03\xF8\xCE\x27\xA3\x52\xB2\x9F\x3B\xBF\xFB\xAE\xED\xD3\x5A\xF8'
      '\x37\x57\xF0\xF5\x6E\xEF\xB1\x4D\x70\x3D\x54\xA7\x01\x9A\x85\x08\x48\x91\xF5\x9D\x0C\x60\x87\x5B\xD9\x54'
      '\x1E\x51\x6D\x88\x8E\x08\x8C\xA5\x71\x3A\x56\x08\x67\x46\x8F\x8F\x13\x2A\x2C\xEC\x2C\x1F\xB4\x62\x2B\x6F'
      '\x41\x0A\xC4\x65\x42\xA2\x31\x6B\x2C\x7D\x3E\xBB\x75\xAC\x86\x97\x30\xD9\x48\xCD\x9A\x1F\x56\xC4\xC6\xE4'
      '\x12\xC0\x9D\xFB\xEE\x02\x8C\xCE\x1C\xF2\x1E\xA1\x78\x23\xDB\xC4\x1E\x49\x03\xD3\x71\xCC\x08\x50\xC5\xD8'
      '\x5C\xED\xD5\xB5\x65\xAC\xB5\xC9\x21\xD2\xC9\x29\x76\xDE\xF0\x30\x1A\x5B\x3C\xF2\x3B\xDB\x3A\x39\x82\x3A'
      '\x16\x08\x6F\xA8\xF1\xBE\x69\x69\x99\x71\xA6\x05\xD3\x14\x93\x2A\x16\xF2\x2F\x11\xC7\x7E\x20\xBB\x91\x44'
      '\xEE\xF8\xE4\x01\x53\xC0\xB9\x7F\xF0\xBF\xF0\x03\x9C\x6D\xB1\xDF\xA2\x44\x01\x6D\x6B\x71\x2B\x5C\xB3\x21'
      '\x19\x46\x5E\x8F\xDB\x91\xD3\x7C\x78\x6B\xB7\x12\x00\x8F\xEB\xBD\x8A\xF5\xD4\x2E\xC4\xC1\x1E\xDF\x73\x63'
      '\x59\x47\x49\x03\x0A\xB7\xCF\x24\xCF\x9C\x0E\x44\x7A\x9E\x14\xFB\x42\xBF\x9D\x39\x30\x9E\xA0\xAB\x2F\xD1'
      '\xAE\x9E\x6A\x83\x43\xE3\x55\x7D\x85\xBF\x63\x8A\xF8\x96\x10\x1F\xFE\x6D\xE7\x22\x1B\xE1\x69\x46\x8A\x44'
      '\xC8\xC8\xF9\x0C\x2B\x19\x07\xA5\x02\x3E\xF2\x30\x10\x9A\x85\x8A\x5F\xEF\x81\x45\xA0\x77\xB1\x03\x10\x73'
      '\x4B\xAE\x98\x9D\x47\xBF\x9A\x2D\x3A\xD5\x0F\x03\x66\xE3\x3D\x53\xD9\x40\xCE\x1F\x6F\x32\x2F\x21\x2B\x23'
      '\x21\x6C\x62\xD4\xA7\x3E\xA8\xCE\x28\x31\x2D\x00\x3D\x67\x5E\xAF\xA0\xCF\x2E\xD2\xB9\x6B\x84\xEB\x69\x08'
      '\x3C\x62\x36\xBE\x12\xFD\x36\x7F\x88\x3E\xAD\xBC\x0B\xC0\x41\xC4\x50\xB6\xE3\x50\x31\xE8\xCE\xE2\x96\x65'
      '\x55\x9C\x16\x46\xE6\xB0\x2D\x3A\xE8\x81\x05\xB0\xBF\x34\xF7\xBC\x10\x1C\xFB\xCC\x3C\xF1\x85\x97\x42\x9F'
      '\xEB\x14\x8D\x3C\xBF\xD7\x17\x88\x49\x9D\x8B\x2B\xB2\x3A\x83\xD1\x4F\x04\x9E\xA1\x0F\xAD\x08\x9D\x54\xAF'
      '\xD1\x82\xC3\xEC\x32\x2F\x02\x8F\x05\x21\x2D\xA2\xB7\xE4\xF4\x6F\x2E\x81\x2B\x0B\x9C\xFC\xCB\xFE\x74\x02'
      '\xF9\xDB\xF4\xF3\xEA\x00\xA8\xEC\xD1\x99\x74\x26\xDD\xD6\x34\xD5\x25\xB1\x46\xDD\x9C\xAA\x71\xF5\x60\xB0'
      '\x88\xC8\xE0\x0B\x59\x5A\x25\x4F\x29\x66\xF9\xE3\x2E\xFE\xE9\xDA\xE5\x18\x4F\x27\x62\xF4\xCE\xA4\x21\x95'
      '\x74\xC7\x57\x64\x27\x9A\x4C\xFD\x54\x7D\x61\xCE\xC3\xAC\x87\x46\x9C\xFA\xFF\x09\xCA\x79\x97\x67\x24\x74'
      '\xCA\xD4\x21\x83\x26\x25\x19\x12\x37\x64\x19\xE5\x65\xE0\x74\x75\x8E\xDD\xC8\xEF\x74\xC7\xD8\x21\x2B\x79'
      '\x04\x51\x46\x65\x60\x03\x5D\xFA\xD8\xF4\x65\xA4\x9E\x5D\x23\xDA\xD7\x8A\x92\x80\xA4\xDE\x78\x3C\xF1\x57'
      '\x42\x6D\xCD\xC9\x2F\xD5\xA4\x9E\xAB\x40\xF4\xCB\x1B\xD7\xA3\xCA\xFC\xEB\xA7\x01\xB2\x9A\x69\x4E\x46\x9B'
      '\x18\x4E\xDD\x79\xA7\xAA\xA6\x52\x39\x1E\xEF\x30\xCC\x9B\xBD\x5B\xEE\x4C\x21\x6D\x30\x00\x72\xB0\x46\x5F'
      '\x08\xCF\xC5\xB9\xE0\x3E\xC2\xB3\x0C\xDC\x8E\x64\xDE\x19\x42\x79\xCF\x43\xEA\x43\x5D\x8E\x88\xF7\xAB\x15'
      '\xDC\x3F\xC8\x67\x20\xDB\xB8\x64\xB1\x47\x1F\xDE\xF2\xCB\x3F\x59\x9F\xD8\x46\x90\xDC\xAE\x2F\x22\xF9\xE2'
      '\x31\x89\xD9\x9C\x1C\x4C\xD3\xA9\x4A\x57\x84\x9C\x9F\xEA\x2C\x3C\xAE\x3C\xC3\x1E\x8B\xE5\x4E\x17\x01\x25'
      '\xDB\x34\x46\x5F\x15\xEA\x05\x0C\x7C\xD9\x45\x8C\x19\xD0\x73\x8A\x96\x16\xDD\x44\xF9\x05\xB7\x5B\x71\xB0'
      '\xE6\x21\x36\x5F\x75\x89\x91\x73\x75\xAB\x7D\xAE\xD3\x73\xEC\x37\xC6\xEA\x55\x75\xEF\xEA\xAB\x8B\x7B\x11'
      '\xDC\x6D\x1A\xB2\x6A\xC4\x25\xCF\xAA\xE3\x9F\x49\x49\x89\xCB\x37\x9B\x0A\xA7\x01\x60\x70\xDC\xB7\xC8\x83'
      '\xE1\x42\xF5\xBE\xAD\x62\x94\xAD\x8D\xA1';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
