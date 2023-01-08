// Generated from test/spec/float_exprs/float_exprs.62.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class FloatExprs62Module implements Module {
  FloatExprs62Module() {
    _data.init(memory);
  }

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  f64 f64_kahan_sum(i32 arg0, i32 arg1) => _func0(arg0, arg1);
  f64 f64_plain_sum(i32 arg0, i32 arg1) => _func1(arg0, arg1);

  f64 _func0(i32 p, i32 n) {
    f64 sum = 0;
    f64 c = 0;
    f64 t = 0;

    final frame = Frame(this);
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(c);
        frame.push(p);
        frame.f64_load(3, 0);
        frame.push(t);
        frame.f64_sub();
        t = frame.peek();
        frame.f64_add();
        sum = frame.peek();
        frame.push(c);
        frame.f64_sub();
        frame.push(t);
        frame.f64_sub();
        t = frame.pop();
        frame.push(p);
        frame.i32_const(8);
        frame.i32_add();
        p = frame.pop();
        frame.push(sum);
        c = frame.pop();
        frame.push(n);
        frame.i32_const(-1);
        frame.i32_add();
        n = frame.peek();
        if (frame.pop() != 0) {
          continue loop_label_1;
        }
        break;
      }
    }
    frame.push(sum);
    return frame.pop();
  }

  f64 _func1(i32 p, i32 n) {
    f64 sum = 0;

    final frame = Frame(this);
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(sum);
        frame.push(p);
        frame.f64_load(3, 0);
        frame.f64_add();
        sum = frame.pop();
        frame.push(p);
        frame.i32_const(8);
        frame.i32_add();
        p = frame.pop();
        frame.push(n);
        frame.i32_const(-1);
        frame.i32_add();
        n = frame.pop();
        frame.push(n);
        if (frame.pop() != 0) {
          continue loop_label_1;
        }
        break;
      }
    }
    frame.push(sum);
    return frame.pop();
  }
}

typedef FunctionType0 = f64 Function(i32, i32);

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x13\x05\x84\x42\x5D\xA2\x2C\xC6\x43\xDB\x55\xA9\xCD\xDA\x55\xE3\x73\xFC\x58\xD6\xBA\xD5\x00\xFD\x83\x35'
      '\x42\x88\x8B\x13\x5D\x38\x4A\x47\x0D\x72\x73\xA1\x1A\xEF\xC4\x45\x17\x57\xD8\xC9\x46\xE0\x8D\x6C\xE1\x37'
      '\x70\xC8\x83\x5B\x55\x5E\x5A\x2D\x73\x1E\x56\xC8\xE1\x6D\x69\x14\x78\x0A\x8A\x5A\x64\x3A\x09\xC7\xA8\x87'
      '\xC5\xF0\xD3\x5D\xE6\x03\xFC\x93\xBE\x26\xCA\xD6\xA9\x91\x60\xBD\xB0\xED\xAE\xF7\x30\x7E\x92\x3A\x6F\xA7'
      '\x59\x8E\xAA\x7D\xBF\x67\x58\x2A\x54\xF8\x4E\xFE\xED\x35\x58\xA6\x51\xBF\x42\xE5\x4B\x66\x27\x24\x6D\x7F'
      '\x42\x2D\x28\x92\x18\xEC\x08\xAE\xE7\x55\xDA\xB1\xA6\x65\xA5\x72\x50\x47\x1B\xB8\xA9\x54\xD7\xA6\x06\x5B'
      '\x0F\x42\x58\x83\x8A\x17\x82\xC6\x10\x43\xA0\xC0\x2E\x6D\xBC\x5A\x85\x53\x72\x7F\xAD\x44\xBC\x30\x3C\x55'
      '\xB2\x24\x9A\x74\x3A\x9E\xE1\xD8\x0F\x70\xFC\xA9\x3A\xCD\x93\x4B\xEC\xE3\x7E\xDD\x5D\x27\xCD\xF8\xA0\x9D'
      '\x1C\x11\xC0\x57\x2E\xFD\xC8\x13\x32\xCC\x3A\x1A\x7D\xA3\x41\x55\xED\xC3\x82\x49\x2A\x04\x1E\xEF\x73\xB9'
      '\x2E\x2E\xE3\x5F\xF4\xDF\xE6\xB2\x33\x0C\x39\x3F\x6F\x44\x6A\x03\xC1\x42\xB9\xFA\xB1\xC8\xED\xA5\x58\x99'
      '\x7F\xED\xB4\x72\x9E\x79\xEB\xFB\x43\x82\x45\xAA\xBB\x95\xD2\xFF\x28\x9E\xF6\xA1\xAD\x95\xD6\x55\x95\x0D'
      '\x6F\x60\x11\xC7\x78\x3E\x49\xF2\x7E\x48\xF4\xA2\x71\xD0\x13\x8E\xB3\xDE\x99\x52\xE3\x45\x74\xEA\x76\x0E'
      '\x1B\x2A\xC8\xEE\x14\x01\xC4\x50\x5B\x36\x3C\xEF\xBA\x72\xA2\xA6\x08\xF8\x7B\x36\x9D\xF9\xEF\x0B\xC7\x56'
      '\x2D\x5C\xF0\x9D\x5D\xDE\xFC\xB8\xAD\x0F\x64\x0E\x97\x15\x32\x26\xC2\x31\xE6\x05\x1E\xEF\xCB\x17\x1B\x6D'
      '\x15\x0B\x74\x5D\xD3\x2E\xF8\x6B\x86\xB4\xBA\x73\x52\x53\x99\xA9\x76\x20\x45\xC9\x40\x80\x6B\x14\xED\xA1'
      '\xFA\x80\x46\xE6\x26\xD2\xE6\x98\xC4\x57\xBF\xC4\x1C\xA4\x90\x7A\x36\x94\x14\xBA\x15\x89\x6E\xE6\x9C\x37'
      '\x8C\xF4\xDE\x12\x22\x5D\xA1\x79\x50\x67\x0D\x3D\x7A\xE9\xD4\xAA\x2E\x7F\x2A\x7A\x30\x3D\xEA\x5D\x12\x48'
      '\xFE\xE1\x18\xCD\xA4\x57\xA2\x87\x3E\xB6\x9A\x8B\xDB\xDA\x9D\x78\x9C\xCF\x8D\xB1\x4F\x90\xB4\x34\xE0\x9D'
      '\xF6\xCA\xFE\x4C\x3B\x78\x6D\x0A\x5C\x18\x9F\x61\xB9\xDD\xB4\xE0\x0F\x76\xE0\x1B\x69\x0D\x5E\x58\x73\x70'
      '\x5E\x0E\x2D\xA1\x7D\xFF\x20\xEB\x91\x34\x92\xAC\x38\x72\x2A\x1F\x8E\x71\x2E\x6A\xF1\xAF\xC7\x27\x70\xD9'
      '\xC4\x57\xF7\xD2\x3C\x1D\xB8\xF0\xF0\x64\xCF\xDC\xAE\xBE\xA3\xCC\x3E\x22\x7D\x4E\x69\x21\x63\x17\xED\x03'
      '\x02\x54\x9A\x0F\x50\x4E\x13\x5A\x35\xA1\x22\xA4\xDF\x86\xC2\x74\x79\x16\xB8\x69\x69\xA0\x52\x5D\x11\x64'
      '\xBD\x5B\x93\xFC\x69\xA0\xF4\x13\xD0\x81\x51\xDD\xFA\x0C\x15\xC3\x7A\xC9\x62\x7A\xA9\x1D\xC9\xE6\x5A\xB3'
      '\x5B\x97\x02\x3C\x64\x22\x12\x3C\x22\x90\x64\x2D\x30\x54\x4C\xB4\xA1\x22\x09\x57\x22\x5E\x8E\x38\x2B\x02'
      '\xA8\xAE\xF6\xBE\x0D\x2B\xF2\x03\xAD\xFA\x10\x01\x71\x77\x2A\x30\x02\x95\xF6\x00\x3E\xD0\xC4\x8D\x34\x19'
      '\x50\x21\x0A\xBC\x50\xDA\x3C\x30\xD6\x3A\x31\x94\x8D\x3A\xFE\xEF\x14\x57\x9D\x4B\x93\x00\x96\x24\x0C\x6F'
      '\xFD\xBC\x23\x76\x02\x6C\xEB\x52\x72\x80\x11\x7E\x80\x3A\x13\x12\x38\x1D\x38\x49\x95\x40\x27\x8A\x44\x7B'
      '\xE8\xDC\x6D\x8C\x8C\x8E\x3C\xB5\xB3\x18\x0E\xF6\x08\x1A\x84\x41\x35\xFF\x8B\xB8\x93\x40\xEA\xE1\x51\x1D'
      '\x89\xA5\x8D\x42\x68\x29\xEA\x2F\xC1\x7A\x52\xEB\x90\x5D\x4D\xD6\x80\xE3\xD7\x75\x48\xCE\xED\xD3\x01\x1C'
      '\x8D\x5B\xA5\x94\x0D\x78\xCF\xF1\x06\x13\x2F\x98\x02\xA4\x6D\x2E\x6C\xF2\xD5\x74\x29\x89\x4C\xF9\x03\xF5'
      '\xC7\x18\xAD\x7A\xF0\x68\xF8\x5C\xD6\x59\x87\x6E\xD6\x3F\x06\xBE\x86\x20\xE3\x41\x91\x22\xF3\x6E\x8B\xF0'
      '\x68\x1C\x57\xA7\xFC\xB0\x7C\x9E\x99\x0B\x96\x1A\x89\x5F\xE6\x0D\x7C\x08\x51\xA0\xA2\x67\x9A\x47\x00\x93'
      '\x6B\xF9\x28\xF0\x68\xDB\x62\xF1\xE0\x65\x2C\x53\x33\xE0\xA7\xCA\x11\x42\x30\xF6\xAF\x01\xC1\x65\x3D\x32'
      '\x01\x6F\xAB\x2E\xBE\xD3\x8B\xBE\x14\xC3\xFF\xEC\xFB\xF0\xF9\xC5\x0C\x05\x6F\x01\x09\x6B\xE3\x34\x31\x0C'
      '\x1F\x66\xA6\x42\xBC\x1A\x87\x49\x16\x16\x8C\xB0\x90\x0D\x34\x8C\x0A\xE1\x09\x5E\x10\xA4\x6B\x56\xCC\xF0'
      '\xC9\xBB\xDC\xB8\x5C\xCE\xF6\xCC\x8D\x75\x7E\xB3\x07\x88\x04\x2F\xB4\x5E\xC9\xE3\x4A\x23\x73\x19\x62\x6C'
      '\x9A\x03\x76\x44\x86\x9C\x60\xFC\xDB\x72\x8F\x27\xA0\xDD\xB3\xC5\xDA\xFF\xF9\xEC\x6A\xB1\x7B\xD3\xCF\x50'
      '\x37\xC9\x7A\x78\x0C\xE4\x3A\xB6\xF5\xE6\xF4\x98\x6E\x42\x7D\x35\x73\x8B\x45\xC0\x56\x97\xCD\x6D\xCE\xCF'
      '\xAD\x31\xB3\xC3\x54\xFA\xEF\xD5\xC0\xF4\x6A\x5F\x54\xE7\x49\x3E\x33\x0A\x30\x38\xFD\xD9\x05\xFF\xA5\x3F'
      '\x57\x46\x14\xB5\x91\x17\xCA\x6B\x98\x23\x7A\x65\xB3\x6C\x02\xB4\xCC\x79\x5D\x58\xD8\xB3\xD5\x94\xAE\xF4'
      '\x6D\x75\x65\xF7\x92\xBF\x7E\x47\x4C\x3C\xEE\xDB\xAC\xF1\x32\x5D\xFB\x6F\x41\x1C\x34\xC8\x83\x4F\xC2\x58'
      '\x01\xBE\x05\x3E\x66\x16\xA6\x04\x6D\x5D\x4F\x86\x09\x27\x82\x25\x12\xCD\x3A\xCD\xCE\x6B\xBC\xCA\xAC\x28'
      '\x9B\xEE\x6A\x25\x86\x9E\x45\x70\xC6\xD2\xBD\x3B\x7D\x42\xE5\x27\xAF\xC7\x1D\xF4\x81\xC8\xB3\x76\x8A\xA8'
      '\x36\xA3\xAE\x2A\xE6\x18\xE1\x36\x22\xAD\xF6\x25\x72\xB0\x39\x8B\x01\x9A\x22\x7B\x84\xC3\x2D\x5F\x72\xA4'
      '\x98\xAC\x15\x70\xE7\xD4\x18\xE2\x7D\xD2\x30\x7C\x33\x08\xCD\xCA\xC4\x22\x85\x88\x75\x81\xC6\x4A\x74\x58'
      '\x8D\xE0\xE8\xAC\xC5\xAB\x75\x5A\xF4\x28\x12\xF0\x18\x45\x52\xF2\x97\xB2\x93\x41\x6F\x8D\x7F\xDB\x70\xFB'
      '\xA3\x5D\x1F\xA7\x8D\x98\x20\x2B\x22\x9F\x3A\x01\xB5\x8B\x1B\xD2\xCB\x14\x03\x0E\x14\x14\xD2\x19\x5A\x1F'
      '\xCE\x5E\xCD\x81\x79\x15\x01\xCA\xDE\x73\x74\x8C\x56\x20\x9F\x77\x2D\x25\x16\xF6\x61\x51\x1D\xA4\x8E\x9B'
      '\x98\xA5\xC6\xEC\xA8\x45\x57\x82\x59\x78\x0D\x90\xB4\xDF\x51\xB0\xC3\x82\x94\xCC\xB3\x53\x09\x15\x6D\x96'
      '\x6C\x3A\x40\x47\xB7\x4A\x7A\x05\x2F\xA1\x1E\x8C\x9D\xA0\x20\x88\xFB\x52\xB7\x9F\xF3\xF3\xBB\x5F\xE7\x8A'
      '\x61\xA7\x21\xB1\xAC\xFA\x09\xAA\xA4\x6C\xBC\x24\x80\xBA\x2A\xE9\x65\xFF\x70\xFF\xCC\xFA\x65\x87\x76\xF3'
      '\xC5\x15\xCE\xCB\xE8\x42\x31\x00\x0C\x91\x57\xD9\xE0\x9D\x35\x54\x24\xAD\xA4\xD8\xF9\x08\x67\x63\xC8\xCF'
      '\x81\xDD\x90\xA2\xD7\xC4\x07\x4A\xE6\x10\x6F\x67\xE7\x27\xD4\x23\x59\x18\xF2\xA8\x9D\x5F\xD8\x94\x30\xAA'
      '\x54\x86\x4F\x87\x9D\x82\xB5\x26\xCA\xA6\x96\xBF\xCF\x55\xF9\x9D\x37\x01\x19\x48\x43\xC5\x94\x6C\xF3\x74'
      '\x97\x58\x4C\x3C\x9D\x08\xE8\x04\xC2\x58\x30\x76\xE1\xA0\xF8\xEA\xE9\xC5\xAE\xCF\x78\x9E\xA9\x0C\xAC\xB3'
      '\x44\x42\xE0\xBC\x5D\x1B\x9C\x49\x58\x4A\x1C\x19\x49\xC1\x3A\xEA\xF5\xEB\x3B\x81\xA9\x4B\x70\x0C\xCC\x9E'
      '\x1A\xD3\x2F\xB7\x52\x2F\x20\x3B\xEB\x64\x51\x1D\xA0\x2D\xB2\x3E\xBE\x13\x85\x48\x92\x32\x2E\xDB\x5C\xA1'
      '\xE7\x8C\x45\x91\x35\x01\x0A\x93\xC2\xEB\x09\xCE\xF3\xD2\x22\x24\xD0\x8C\xCC\x1D\x9D\x38\xC8\x4D\xE3\x82'
      '\xCC\x64\x15\x06\x2D\xE7\x01\x2F\xAB\xBB\xB5\x04\x4C\x92\x1C\x7A\xD6\x3F\xE8\x5F\x31\x15\x0C\xDC\xE4\x31'
      '\xB4\xC4\x25\x3E\x2A\xAA\x00\x9E\xC8\xE5\x21\x7A\x7F\x29\xF1\xC0\xAF\x1D\x5E\xE8\x63\x39\xAD\xF8\x7E\x6C'
      '\xC8\xC5\x7F\xC2\xA8\x97\x27\x0A\xD9\xF4\x21\x6A\xEA\x03\x09\xFB\xF7\x96\x3B\x83\x79\x5F\x7C\x4B\x30\x9F'
      '\x56\x35\xDE\xB4\x73\xD4\x95\xF0\x14\xC3\x74\x2F\x0D\xA3\x1D\x4E\x8D\x31\x24\xB3\x1A\x84\x85\x62\x5A\x7B'
      '\x3C\x14\x39\x17\xE6\x6D\xEB\x37\xC2\x00\x58\x5B\x0B\xE3\x3C\x8A\x62\xE1\xF8\x35\x4B\x56\xE2\x87\x60\x8B'
      '\xBE\xA7\x38\x91\x77\x54\xA9\x5A\x24\x25\x90\x9F\xA5\x42\x77\xF3\x5C\x39\xDF\xFF\x74\x07\x76\xA1\xCD\x1F'
      '\x62\x0B\x81\x81\x68\xAF\x05\xC1\xC0\x7F\x26\xEE\xC0\x91\xA3\x6A\x7D\x29\x61\x45\x27\xE5\x57\x88\xDC\x0D'
      '\x97\x04\x1A\x33\xA9\x44\x8A\xDA\x02\x10\x45\x3F\x8E\x55\xA6\x76\x8C\x4D\xE3\xF1\x89\x83\xC8\xD0\xF8\x9B'
      '\x50\x77\x9F\x47\xDF\x4C\x9C\x66\x0D\xAA\x18\xB8\x5F\x4F\xC4\x01\xCE\xDC\x84\xAC\x46\x9E\x69\xE1\x76\x45'
      '\x6B\x61\x89\xE4\x5D\x94\xBB\x11\x83\x9F\x78\xD8\x0A\xD2\xF5\x7E\x5D\x43\xEA\xBC\x10\xF1\x3A\xC9\xE2\x64'
      '\xFB\x53\x65\xD0\xC7\xB4\xA7\xFB\xD4\x05\x53\x25\xD0\xCD\x29\x88\x00\x56\x25\x24\x7D\x5D\xB4\xF3\x41\x9F'
      '\xE9\xB5\xF7\xAE\x64\x2C\xE3\xC9\x6D\xD5\x84\x3A\x72\x12\xB8\x7A\xD9\x1B\x09\xE8\x38\xDA\x26\x4F\x04\xCE'
      '\x03\x71\x6E\x8A\x44\x7B\x5C\x81\x59\x9C\xD2\xE4\xC3\xBA\x59\xA6\xE5\x28\xA7\x8F\x9A\xE4\xD5\x4E\xB9\xCA'
      '\x7F\xCB\x75\xB8\x2B\x43\x3E\xB3\x15\x46\xB1\xA5\xBC\x9D\x9E\x38\x15\xF1\xBD\x1B\x21\xAA\xF1\x82\x00\x95'
      '\xFC\xA7\x77\x47\x39\xA7\x33\x43\x92\xD7\x52\x40\x4B\x06\x81\x8A\xA0\xBD\xF1\x6B\x99\x84\x42\x5B\xE2\x3B'
      '\xC5\x5E\x12\x5C\x28\x4D\xB6\x0E\x4E\xC8\x5C\xE8\x01\x8A\xC5\xE7\xE4\x9D\x42\xEE\x5D\x9C\xC4\xEB\xEB\x68'
      '\x09\x27\x92\x95\x9A\x11\x54\x73\xC4\x12\x80\xFB\x7D\xFE\xC5\x08\x60\x7F\x36\x41\xE0\x10\xBA\xD6\x2B\x6C'
      '\xF1\xB4\x17\xFE\x26\x34\xE3\x4B\xF8\xA8\xE3\x91\xBE\x4F\x2A\xFC\xDA\x81\xB8\xE7\xFE\xD5\x26\x50\x47\xF3'
      '\x1A\x65\x32\x81\xE0\x05\xB8\x4F\x32\x31\x26\x00\x4A\x53\x97\xC2\xC3\x0E\x2E\xA1\x26\x54\xAB\x05\x8E\x56'
      '\x2F\x7D\xAF\x22\x84\x68\xA5\x8B\x97\xF6\xA4\xFD\xA8\xCC\x75\x41\x96\x86\xFD\x27\x3D\x29\x86\x8D\x7F\x4C'
      '\xD4\x8E\x73\x41\xF4\x1E\xE2\xDD\x58\x27\x97\xCE\x9C\x94\xCF\x7A\x04\x2F\xDC\xED';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
