// Generated from test/spec/memory_copy/memory_copy.96.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class MemoryCopy96Module extends Module {
  MemoryCopy96Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  @override
  late final List<Table> tables = [];

  void test() => _func0();
  i32 checkRange(i32 arg0, i32 arg1, i32 arg2) => _func1(arg0, arg1, arg2);

  void _func0() {
    vm.memory_fill(0, 0x4567, 1, 0x540);
    vm.memory_fill(0, 0x9869, 2, 0x41f);
    vm.memory_fill(0, 0xdc51, 3, 988);
    vm.memory_fill(0, 0x944a, 4, 322);
    vm.memory_fill(0, 0x1f29, 5, 0x7ca);
    vm.memory_fill(0, 0x58ba, 6, 0xbdc);
    vm.memory_fill(0, 0x41f2, 7, 0x944);
    vm.memory_fill(0, 0xa9e3, 8, 835);
    vm.memory_fill(0, 124, 9, 0x571);
    vm.memory_fill(0, 0x854, 10, 0xac6);
    vm.memory_fill(0, 0x231b, 11, 0xc1a);
    vm.memory_fill(0, 0xcde7, 12, 741);
    vm.memory_fill(0, 0xf76, 13, 0xb07);
    vm.memory_fill(0, 0xc233, 14, 0x500);
    vm.memory_fill(0, 0xc4c9, 15, 0x5ba);
    vm.memory_fill(0, 0x500d, 16, 0xc56);
    vm.memory_fill(0, 0xba31, 17, 544);
    vm.memory_fill(0, 0x30a3, 18, 0xa6d);
    vm.memory_fill(0, 0x6125, 19, 0xa5b);
    vm.memory_fill(0, 0xb105, 20, 0x622);
    vm.memory_fill(0, 0xa858, 21, 0x69b);
    vm.memory_fill(0, 0x845e, 22, 646);
    vm.memory_fill(0, 0xbdab, 23, 0x742);
    vm.memory_fill(0, 0xd0cd, 24, 0xa61);
    vm.memory_fill(0, 0x769b, 25, 981);
    vm.memory_fill(0, 0x2454, 26, 0x70f);
    vm.memory_fill(0, 0xc40e, 27, 487);
    vm.memory_fill(0, 0xf521, 28, 530);
    vm.memory_fill(0, 0x8ddc, 29, 943);
    vm.memory_fill(0, 0x1a70, 30, 381);
    vm.memory_fill(0, 0xc83e, 31, 0xc11);
    vm.memory_fill(0, 0xc241, 32, 658);
    vm.memory_fill(0, 0xadfc, 33, 0x6a6);
    vm.memory_fill(0, 0x823e, 34, 0x444);
    vm.memory_fill(0, 0xc67e, 35, 0x582);
    vm.memory_fill(0, 0xb9ea, 36, 0x89c);
    vm.memory_fill(0, 0xd36b, 37, 0x95a);
    vm.memory_fill(0, 0xd78f, 38, 250);
    vm.memory_fill(0, 0x585c, 39, 0x831);
    vm.memory_fill(0, 0x42ec, 40, 0xcc0);
    vm.memory_fill(0, 0xd43b, 41, 0xce3);
    vm.memory_fill(0, 0x9a32, 42, 0xaec);
    vm.memory_fill(0, 0x8d3c, 43, 0x816);
    vm.memory_fill(0, 0x89ec, 44, 0xacb);
    vm.memory_fill(0, 0x7fdb, 45, 312);
    vm.memory_fill(0, 0xf902, 46, 192);
    vm.memory_fill(0, 0x78fe, 47, 596);
    vm.memory_fill(0, 0x40fb, 48, 501);
    vm.memory_fill(0, 0xdeaa, 49, 686);
    vm.memory_fill(0, 0x85fb, 50, 385);
    vm.memory_fill(0, 0xedd1, 51, 903);
    vm.memory_fill(0, 0xf005, 52, 0x956);
    vm.memory_fill(0, 0xb77c, 53, 0x5a1);
    vm.memory_fill(0, 0x6575, 54, 0xc5a);
    vm.memory_fill(0, 0x15be, 55, 0x857);
    vm.memory_fill(0, 0x8c89, 56, 519);
    vm.memory_fill(0, 0xaf5c, 57, 0xcd0);
    vm.memory_fill(0, 0xb6a8, 58, 0x68e);
    vm.memory_fill(0, 0xb60f, 59, 0xc60);
    vm.memory_fill(0, 0x57b1, 60, 0x5a1);
    vm.memory_fill(0, 0xe4f1, 61, 663);
    vm.memory_fill(0, 0x7e05, 62, 0x687);
    vm.memory_fill(0, 0xbf7, 63, 721);
    vm.memory_fill(0, 0x84e9, 64, 84);
    vm.memory_fill(0, 0x823a, 65, 0x7ed);
    vm.memory_fill(0, 0x8fca, 66, 29);
    vm.memory_fill(0, 0x4acb, 67, 0xbda);
    vm.memory_fill(0, 0x3148, 68, 0x413);
    vm.memory_fill(0, 0x4764, 69, 0xcfc);
    vm.memory_fill(0, 0x121f, 70, 0x443);
    vm.memory_fill(0, 0x3f1e, 71, 0x7cd);
    vm.memory_fill(0, 0x471c, 72, 0x8d3);
    vm.memory_fill(0, 0xc564, 73, 0xc75);
    vm.memory_fill(0, 0x2b14, 74, 0x7b0);
    vm.memory_fill(0, 0x3e5a, 75, 0x5af);
    vm.memory_fill(0, 0xb15e, 76, 0x499);
    vm.memory_fill(0, 0xd379, 77, 0x620);
    vm.memory_fill(0, 0x813b, 78, 0x66a);
    vm.memory_fill(0, 0xee64, 79, 0xcd4);
    vm.memory_fill(0, 0xca11, 80, 223);
    vm.memory_fill(0, 0x1109, 81, 0x87b);
    vm.memory_fill(0, 0xe0aa, 82, 0x52a);
    vm.memory_fill(0, 0xd9ac, 83, 0xa58);
    vm.memory_fill(0, 0x5e1b, 84, 0x415);
    vm.memory_fill(0, 0xa8af, 85, 0xc19);
    vm.memory_fill(0, 0x7e33, 86, 0xaec);
    vm.memory_fill(0, 0xee3, 87, 0x7da);
    vm.memory_fill(0, 0xd648, 88, 0);
    vm.memory_fill(0, 0xc315, 89, 0x815);
    vm.memory_fill(0, 0x4fbb, 90, 0xb50);
    vm.memory_fill(0, 0x8422, 91, 192);
    vm.memory_fill(0, 0x24ba, 92, 0x893);
    vm.memory_fill(0, 0x307d, 93, 24);
    vm.memory_fill(0, 0x370b, 94, 577);
    vm.memory_fill(0, 0xac1a, 95, 0x829);
    vm.memory_fill(0, 0x8f7f, 96, 0xd6c);
    vm.memory_fill(0, 0x5af8, 97, 0xacd);
    vm.memory_fill(0, 0x18f8, 98, 830);
    vm.memory_fill(0, 0x821b, 99, 0x792);
    vm.memory_fill(0, 0x55b5, 100, 0xabe);
    vm.memory_copy(0, 0, 0xe74e, 0xd3e8, 0x832);
    vm.memory_copy(0, 0, 0xf632, 0x9938, 230);
    vm.memory_copy(0, 0, 0xca79, 0x5c4d, 0x8fc);
    vm.memory_copy(0, 0, 0x1a34, 0x5dbc, 639);
    vm.memory_copy(0, 0, 0x1b4e, 0x8277, 0x449);
    vm.memory_copy(0, 0, 0x4bcb, 0x286c, 0xc7d);
    vm.memory_copy(0, 0, 0x6aac, 0xd486, 100);
    vm.memory_copy(0, 0, 0x6a55, 0xaaa2, 0x6b5);
    vm.memory_copy(0, 0, 0xec70, 0x21b5, 119);
    vm.memory_copy(0, 0, 0x173b, 0x904, 658);
    vm.memory_copy(0, 0, 0x12b3, 0xc9af, 0x8dd);
    vm.memory_copy(0, 0, 0x3149, 0x4afd, 833);
    vm.memory_copy(0, 0, 0x2e4e, 0xb5a9, 0xce4);
    vm.memory_copy(0, 0, 0x2c70, 0xafd4, 0x8e9);
    vm.memory_copy(0, 0, 0x858a, 0x1a29, 0xa0c);
    vm.memory_copy(0, 0, 0x1348, 0x69a, 0x530);
    vm.memory_copy(0, 0, 0xf6bc, 0x1dd5, 0x686);
    vm.memory_copy(0, 0, 0xae18, 0x47a8, 33);
    vm.memory_copy(0, 0, 0xab8e, 0x574c, 0x593);
    vm.memory_copy(0, 0, 0xb62d, 0xc29b, 0x59a);
    vm.memory_copy(0, 0, 0xf8c4, 0x2233, 834);
    vm.memory_copy(0, 0, 0x82cd, 0x4ea3, 0xcf5);
    vm.memory_copy(0, 0, 0x9e7f, 0xd42d, 0xc81);
    vm.memory_copy(0, 0, 0x64d4, 0xe776, 0x994);
    vm.memory_copy(0, 0, 0x4cde, 0xde32, 346);
    vm.memory_copy(0, 0, 0x3dec, 0x8c4a, 0x97e);
    vm.memory_copy(0, 0, 0x2e30, 0x8af6, 300);
    vm.memory_copy(0, 0, 0xe823, 0x3685, 0xc51);
    vm.memory_copy(0, 0, 0x85fb, 0xecb2, 0x501);
    vm.memory_copy(0, 0, 0x2304, 0x2ff4, 943);
    vm.memory_copy(0, 0, 0xb0b, 0x28b9, 0x75f);
    vm.memory_copy(0, 0, 0xa8ba, 0xab86, 738);
    vm.memory_copy(0, 0, 0xf63e, 0x4a05, 122);
    vm.memory_copy(0, 0, 0x5dec, 0xaed9, 0x6db);
    vm.memory_copy(0, 0, 0x5850, 0x39a3, 702);
    vm.memory_copy(0, 0, 0x2c14, 0x67d3, 0x726);
    vm.memory_copy(0, 0, 0x5a34, 0x4ff7, 0x428);
    vm.memory_copy(0, 0, 0xdfa0, 0xd5f2, 0xa47);
    vm.memory_copy(0, 0, 0x6394, 0x401, 0xc29);
    vm.memory_copy(0, 0, 0xc1b4, 0xacbc, 975);
    vm.memory_copy(0, 0, 0x6e78, 0xa2fa, 0x920);
    vm.memory_copy(0, 0, 0xef69, 230, 0xb38);
    vm.memory_copy(0, 0, 0x57d0, 0xcd1a, 0x895);
    vm.memory_copy(0, 0, 0x9e69, 0x256a, 0x7a6);
    vm.memory_copy(0, 0, 0x714c, 0x517e, 0x88a);
    vm.memory_copy(0, 0, 0xcf25, 0xabb3, 0x40d);
    vm.memory_copy(0, 0, 0x6384, 0x8b53, 0x672);
    vm.memory_copy(0, 0, 0xe494, 0xb2fb, 0x7c2);
    vm.memory_copy(0, 0, 0x9599, 0x1690, 0x7a3);
    vm.memory_copy(0, 0, 0x6f57, 0xd844, 0x940);
    vm.memory_copy(0, 0, 0xf49b, 0x46bc, 0x54c);
    vm.memory_copy(0, 0, 0xc3e5, 0x3625, 382);
    vm.memory_copy(0, 0, 0x4208, 0x8df5, 0x76c);
    vm.memory_copy(0, 0, 0xbbe2, 0x2c5e, 0xaf7);
    vm.memory_copy(0, 0, 0x6f60, 0x9daa, 323);
    vm.memory_copy(0, 0, 0x8ab2, 0x6cd0, 0x686);
    vm.memory_copy(0, 0, 0xf5fa, 0xd054, 0x53d);
    vm.memory_copy(0, 0, 0x3735, 0xb4e8, 644);
    vm.memory_copy(0, 0, 0x7166, 0x4a82, 496);
    vm.memory_copy(0, 0, 0xaf98, 0xb9d9, 0xae0);
    vm.memory_copy(0, 0, 0x9a87, 0xae75, 0x546);
    vm.memory_copy(0, 0, 0x2870, 0x725a, 0x5c3);
    vm.memory_copy(0, 0, 0xb73f, 0xb462, 0x5bb);
    vm.memory_copy(0, 0, 0x1329, 0x7044, 0x767);
    vm.memory_copy(0, 0, 0x947c, 0xdfa5, 0x6d7);
    vm.memory_copy(0, 0, 0x674e, 0x6a57, 0x467);
    vm.memory_copy(0, 0, 0xe5d3, 0x6051, 0x427);
    vm.memory_copy(0, 0, 0xefac, 0x9786, 766);
    vm.memory_copy(0, 0, 0xac80, 0x8ec, 0x5f0);
    vm.memory_copy(0, 0, 0x7fe4, 0xb885, 0xbc6);
    vm.memory_copy(0, 0, 0x2b8c, 0x530c, 0x3f3);
    vm.memory_copy(0, 0, 0x1df1, 0x7b7c, 0xbda);
    vm.memory_copy(0, 0, 0x467c, 0x32bb, 0xcf8);
    vm.memory_copy(0, 0, 0xdfda, 0xda61, 308);
    vm.memory_copy(0, 0, 0x6063, 0x41af, 0x483);
    vm.memory_copy(0, 0, 0x4dbc, 0x2783, 722);
    vm.memory_copy(0, 0, 0xb69, 0x172f, 0x942);
    vm.memory_copy(0, 0, 0x7dff, 0xc3af, 0xb6e);
    vm.memory_copy(0, 0, 0x3b16, 0x4393, 0xa2f);
    vm.memory_copy(0, 0, 0xb207, 0x6f1f, 0x7fd);
    vm.memory_copy(0, 0, 0xd76d, 0x8d11, 0xa24);
    vm.memory_copy(0, 0, 0x6f2d, 0xd38d, 0x490);
    vm.memory_copy(0, 0, 0xbb4f, 0xd089, 0xc41);
    vm.memory_copy(0, 0, 0x77b6, 0xb063, 0xa59);
    vm.memory_copy(0, 0, 0x13c1, 0x10c7, 52);
    vm.memory_copy(0, 0, 0x1a24, 0x5e83, 441);
    vm.memory_copy(0, 0, 0x80d8, 0x69ed, 0xd75);
    vm.memory_copy(0, 0, 0x7f12, 0xe7ec, 0xae1);
    vm.memory_copy(0, 0, 0x8639, 0x2302, 0x966);
    vm.memory_copy(0, 0, 0x45e5, 0xd50a, 0xd35);
    vm.memory_copy(0, 0, 0x589d, 0xac77, 136);
    vm.memory_copy(0, 0, 0xe6d1, 0x1ba5, 0x415);
    vm.memory_copy(0, 0, 0xa7c1, 0xd6f4, 0x955);
    vm.memory_copy(0, 0, 0xae95, 0x4eaa, 877);
    vm.memory_copy(0, 0, 0x8fca, 0x626c, 0xd77);
    vm.memory_copy(0, 0, 0xb2ae, 0x7c90, 854);
    vm.memory_copy(0, 0, 0x5eac, 0x7c7a, 0x561);
    vm.memory_copy(0, 0, 0x83f2, 692, 0x63a);
    vm.memory_copy(0, 0, 0xecca, 0x4899, 0xbab);
    vm.memory_copy(0, 0, 0xc4c2, 0xa137, 0x57e);
  }

  i32 _func1(i32 from, i32 to, i32 expected) {
    loop_label_0:
    for (;;) {
      var t0 = vm.i32_eq(from, to);
      if_label_1:
      if (t0 != 0) {
        return -1;
      }
      var t1 = vm.i32_load8_u(0, 0, from);
      var t2 = vm.i32_eq(t1, expected);
      if_label_1:
      if (t2 != 0) {
        var t3 = vm.i32_add(from, 1);
        from = t3;
        continue loop_label_0;
      }
      break;
    }
    return from;
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function(i32, i32, i32);
