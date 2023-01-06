// Generated from test/spec/memory_copy/memory_copy.96.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class MemoryCopy96Module implements Module {
  MemoryCopy96Module();

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  @override
  late final List<Table> tables = [];

  i32 checkRange(i32 from, i32 to, i32 expected) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.push(from);
      frame.push(to);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(-1);
        return frame.pop();
      }
      frame.push(from);
      frame.i32_load8_u(0, 0);
      frame.push(expected);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.push(from);
        frame.i32_const(1);
        frame.i32_add();
        from = frame.pop();
        continue loop_label_0;
      }
      break;
    }
    frame.push(from);
    return frame.pop();
    return frame.pop();
  }

  void test() {
    final frame = Frame(this);
    frame.i32_const(0x4567);
    frame.i32_const(1);
    frame.i32_const(0x540);
    frame.memory_fill(0);
    frame.i32_const(0x9869);
    frame.i32_const(2);
    frame.i32_const(0x41f);
    frame.memory_fill(0);
    frame.i32_const(0xdc51);
    frame.i32_const(3);
    frame.i32_const(988);
    frame.memory_fill(0);
    frame.i32_const(0x944a);
    frame.i32_const(4);
    frame.i32_const(322);
    frame.memory_fill(0);
    frame.i32_const(0x1f29);
    frame.i32_const(5);
    frame.i32_const(0x7ca);
    frame.memory_fill(0);
    frame.i32_const(0x58ba);
    frame.i32_const(6);
    frame.i32_const(0xbdc);
    frame.memory_fill(0);
    frame.i32_const(0x41f2);
    frame.i32_const(7);
    frame.i32_const(0x944);
    frame.memory_fill(0);
    frame.i32_const(0xa9e3);
    frame.i32_const(8);
    frame.i32_const(835);
    frame.memory_fill(0);
    frame.i32_const(124);
    frame.i32_const(9);
    frame.i32_const(0x571);
    frame.memory_fill(0);
    frame.i32_const(0x854);
    frame.i32_const(10);
    frame.i32_const(0xac6);
    frame.memory_fill(0);
    frame.i32_const(0x231b);
    frame.i32_const(11);
    frame.i32_const(0xc1a);
    frame.memory_fill(0);
    frame.i32_const(0xcde7);
    frame.i32_const(12);
    frame.i32_const(741);
    frame.memory_fill(0);
    frame.i32_const(0xf76);
    frame.i32_const(13);
    frame.i32_const(0xb07);
    frame.memory_fill(0);
    frame.i32_const(0xc233);
    frame.i32_const(14);
    frame.i32_const(0x500);
    frame.memory_fill(0);
    frame.i32_const(0xc4c9);
    frame.i32_const(15);
    frame.i32_const(0x5ba);
    frame.memory_fill(0);
    frame.i32_const(0x500d);
    frame.i32_const(16);
    frame.i32_const(0xc56);
    frame.memory_fill(0);
    frame.i32_const(0xba31);
    frame.i32_const(17);
    frame.i32_const(544);
    frame.memory_fill(0);
    frame.i32_const(0x30a3);
    frame.i32_const(18);
    frame.i32_const(0xa6d);
    frame.memory_fill(0);
    frame.i32_const(0x6125);
    frame.i32_const(19);
    frame.i32_const(0xa5b);
    frame.memory_fill(0);
    frame.i32_const(0xb105);
    frame.i32_const(20);
    frame.i32_const(0x622);
    frame.memory_fill(0);
    frame.i32_const(0xa858);
    frame.i32_const(21);
    frame.i32_const(0x69b);
    frame.memory_fill(0);
    frame.i32_const(0x845e);
    frame.i32_const(22);
    frame.i32_const(646);
    frame.memory_fill(0);
    frame.i32_const(0xbdab);
    frame.i32_const(23);
    frame.i32_const(0x742);
    frame.memory_fill(0);
    frame.i32_const(0xd0cd);
    frame.i32_const(24);
    frame.i32_const(0xa61);
    frame.memory_fill(0);
    frame.i32_const(0x769b);
    frame.i32_const(25);
    frame.i32_const(981);
    frame.memory_fill(0);
    frame.i32_const(0x2454);
    frame.i32_const(26);
    frame.i32_const(0x70f);
    frame.memory_fill(0);
    frame.i32_const(0xc40e);
    frame.i32_const(27);
    frame.i32_const(487);
    frame.memory_fill(0);
    frame.i32_const(0xf521);
    frame.i32_const(28);
    frame.i32_const(530);
    frame.memory_fill(0);
    frame.i32_const(0x8ddc);
    frame.i32_const(29);
    frame.i32_const(943);
    frame.memory_fill(0);
    frame.i32_const(0x1a70);
    frame.i32_const(30);
    frame.i32_const(381);
    frame.memory_fill(0);
    frame.i32_const(0xc83e);
    frame.i32_const(31);
    frame.i32_const(0xc11);
    frame.memory_fill(0);
    frame.i32_const(0xc241);
    frame.i32_const(32);
    frame.i32_const(658);
    frame.memory_fill(0);
    frame.i32_const(0xadfc);
    frame.i32_const(33);
    frame.i32_const(0x6a6);
    frame.memory_fill(0);
    frame.i32_const(0x823e);
    frame.i32_const(34);
    frame.i32_const(0x444);
    frame.memory_fill(0);
    frame.i32_const(0xc67e);
    frame.i32_const(35);
    frame.i32_const(0x582);
    frame.memory_fill(0);
    frame.i32_const(0xb9ea);
    frame.i32_const(36);
    frame.i32_const(0x89c);
    frame.memory_fill(0);
    frame.i32_const(0xd36b);
    frame.i32_const(37);
    frame.i32_const(0x95a);
    frame.memory_fill(0);
    frame.i32_const(0xd78f);
    frame.i32_const(38);
    frame.i32_const(250);
    frame.memory_fill(0);
    frame.i32_const(0x585c);
    frame.i32_const(39);
    frame.i32_const(0x831);
    frame.memory_fill(0);
    frame.i32_const(0x42ec);
    frame.i32_const(40);
    frame.i32_const(0xcc0);
    frame.memory_fill(0);
    frame.i32_const(0xd43b);
    frame.i32_const(41);
    frame.i32_const(0xce3);
    frame.memory_fill(0);
    frame.i32_const(0x9a32);
    frame.i32_const(42);
    frame.i32_const(0xaec);
    frame.memory_fill(0);
    frame.i32_const(0x8d3c);
    frame.i32_const(43);
    frame.i32_const(0x816);
    frame.memory_fill(0);
    frame.i32_const(0x89ec);
    frame.i32_const(44);
    frame.i32_const(0xacb);
    frame.memory_fill(0);
    frame.i32_const(0x7fdb);
    frame.i32_const(45);
    frame.i32_const(312);
    frame.memory_fill(0);
    frame.i32_const(0xf902);
    frame.i32_const(46);
    frame.i32_const(192);
    frame.memory_fill(0);
    frame.i32_const(0x78fe);
    frame.i32_const(47);
    frame.i32_const(596);
    frame.memory_fill(0);
    frame.i32_const(0x40fb);
    frame.i32_const(48);
    frame.i32_const(501);
    frame.memory_fill(0);
    frame.i32_const(0xdeaa);
    frame.i32_const(49);
    frame.i32_const(686);
    frame.memory_fill(0);
    frame.i32_const(0x85fb);
    frame.i32_const(50);
    frame.i32_const(385);
    frame.memory_fill(0);
    frame.i32_const(0xedd1);
    frame.i32_const(51);
    frame.i32_const(903);
    frame.memory_fill(0);
    frame.i32_const(0xf005);
    frame.i32_const(52);
    frame.i32_const(0x956);
    frame.memory_fill(0);
    frame.i32_const(0xb77c);
    frame.i32_const(53);
    frame.i32_const(0x5a1);
    frame.memory_fill(0);
    frame.i32_const(0x6575);
    frame.i32_const(54);
    frame.i32_const(0xc5a);
    frame.memory_fill(0);
    frame.i32_const(0x15be);
    frame.i32_const(55);
    frame.i32_const(0x857);
    frame.memory_fill(0);
    frame.i32_const(0x8c89);
    frame.i32_const(56);
    frame.i32_const(519);
    frame.memory_fill(0);
    frame.i32_const(0xaf5c);
    frame.i32_const(57);
    frame.i32_const(0xcd0);
    frame.memory_fill(0);
    frame.i32_const(0xb6a8);
    frame.i32_const(58);
    frame.i32_const(0x68e);
    frame.memory_fill(0);
    frame.i32_const(0xb60f);
    frame.i32_const(59);
    frame.i32_const(0xc60);
    frame.memory_fill(0);
    frame.i32_const(0x57b1);
    frame.i32_const(60);
    frame.i32_const(0x5a1);
    frame.memory_fill(0);
    frame.i32_const(0xe4f1);
    frame.i32_const(61);
    frame.i32_const(663);
    frame.memory_fill(0);
    frame.i32_const(0x7e05);
    frame.i32_const(62);
    frame.i32_const(0x687);
    frame.memory_fill(0);
    frame.i32_const(0xbf7);
    frame.i32_const(63);
    frame.i32_const(721);
    frame.memory_fill(0);
    frame.i32_const(0x84e9);
    frame.i32_const(64);
    frame.i32_const(84);
    frame.memory_fill(0);
    frame.i32_const(0x823a);
    frame.i32_const(65);
    frame.i32_const(0x7ed);
    frame.memory_fill(0);
    frame.i32_const(0x8fca);
    frame.i32_const(66);
    frame.i32_const(29);
    frame.memory_fill(0);
    frame.i32_const(0x4acb);
    frame.i32_const(67);
    frame.i32_const(0xbda);
    frame.memory_fill(0);
    frame.i32_const(0x3148);
    frame.i32_const(68);
    frame.i32_const(0x413);
    frame.memory_fill(0);
    frame.i32_const(0x4764);
    frame.i32_const(69);
    frame.i32_const(0xcfc);
    frame.memory_fill(0);
    frame.i32_const(0x121f);
    frame.i32_const(70);
    frame.i32_const(0x443);
    frame.memory_fill(0);
    frame.i32_const(0x3f1e);
    frame.i32_const(71);
    frame.i32_const(0x7cd);
    frame.memory_fill(0);
    frame.i32_const(0x471c);
    frame.i32_const(72);
    frame.i32_const(0x8d3);
    frame.memory_fill(0);
    frame.i32_const(0xc564);
    frame.i32_const(73);
    frame.i32_const(0xc75);
    frame.memory_fill(0);
    frame.i32_const(0x2b14);
    frame.i32_const(74);
    frame.i32_const(0x7b0);
    frame.memory_fill(0);
    frame.i32_const(0x3e5a);
    frame.i32_const(75);
    frame.i32_const(0x5af);
    frame.memory_fill(0);
    frame.i32_const(0xb15e);
    frame.i32_const(76);
    frame.i32_const(0x499);
    frame.memory_fill(0);
    frame.i32_const(0xd379);
    frame.i32_const(77);
    frame.i32_const(0x620);
    frame.memory_fill(0);
    frame.i32_const(0x813b);
    frame.i32_const(78);
    frame.i32_const(0x66a);
    frame.memory_fill(0);
    frame.i32_const(0xee64);
    frame.i32_const(79);
    frame.i32_const(0xcd4);
    frame.memory_fill(0);
    frame.i32_const(0xca11);
    frame.i32_const(80);
    frame.i32_const(223);
    frame.memory_fill(0);
    frame.i32_const(0x1109);
    frame.i32_const(81);
    frame.i32_const(0x87b);
    frame.memory_fill(0);
    frame.i32_const(0xe0aa);
    frame.i32_const(82);
    frame.i32_const(0x52a);
    frame.memory_fill(0);
    frame.i32_const(0xd9ac);
    frame.i32_const(83);
    frame.i32_const(0xa58);
    frame.memory_fill(0);
    frame.i32_const(0x5e1b);
    frame.i32_const(84);
    frame.i32_const(0x415);
    frame.memory_fill(0);
    frame.i32_const(0xa8af);
    frame.i32_const(85);
    frame.i32_const(0xc19);
    frame.memory_fill(0);
    frame.i32_const(0x7e33);
    frame.i32_const(86);
    frame.i32_const(0xaec);
    frame.memory_fill(0);
    frame.i32_const(0xee3);
    frame.i32_const(87);
    frame.i32_const(0x7da);
    frame.memory_fill(0);
    frame.i32_const(0xd648);
    frame.i32_const(88);
    frame.i32_const(0);
    frame.memory_fill(0);
    frame.i32_const(0xc315);
    frame.i32_const(89);
    frame.i32_const(0x815);
    frame.memory_fill(0);
    frame.i32_const(0x4fbb);
    frame.i32_const(90);
    frame.i32_const(0xb50);
    frame.memory_fill(0);
    frame.i32_const(0x8422);
    frame.i32_const(91);
    frame.i32_const(192);
    frame.memory_fill(0);
    frame.i32_const(0x24ba);
    frame.i32_const(92);
    frame.i32_const(0x893);
    frame.memory_fill(0);
    frame.i32_const(0x307d);
    frame.i32_const(93);
    frame.i32_const(24);
    frame.memory_fill(0);
    frame.i32_const(0x370b);
    frame.i32_const(94);
    frame.i32_const(577);
    frame.memory_fill(0);
    frame.i32_const(0xac1a);
    frame.i32_const(95);
    frame.i32_const(0x829);
    frame.memory_fill(0);
    frame.i32_const(0x8f7f);
    frame.i32_const(96);
    frame.i32_const(0xd6c);
    frame.memory_fill(0);
    frame.i32_const(0x5af8);
    frame.i32_const(97);
    frame.i32_const(0xacd);
    frame.memory_fill(0);
    frame.i32_const(0x18f8);
    frame.i32_const(98);
    frame.i32_const(830);
    frame.memory_fill(0);
    frame.i32_const(0x821b);
    frame.i32_const(99);
    frame.i32_const(0x792);
    frame.memory_fill(0);
    frame.i32_const(0x55b5);
    frame.i32_const(100);
    frame.i32_const(0xabe);
    frame.memory_fill(0);
    frame.i32_const(0xe74e);
    frame.i32_const(0xd3e8);
    frame.i32_const(0x832);
    frame.memory_copy(0, 0);
    frame.i32_const(0xf632);
    frame.i32_const(0x9938);
    frame.i32_const(230);
    frame.memory_copy(0, 0);
    frame.i32_const(0xca79);
    frame.i32_const(0x5c4d);
    frame.i32_const(0x8fc);
    frame.memory_copy(0, 0);
    frame.i32_const(0x1a34);
    frame.i32_const(0x5dbc);
    frame.i32_const(639);
    frame.memory_copy(0, 0);
    frame.i32_const(0x1b4e);
    frame.i32_const(0x8277);
    frame.i32_const(0x449);
    frame.memory_copy(0, 0);
    frame.i32_const(0x4bcb);
    frame.i32_const(0x286c);
    frame.i32_const(0xc7d);
    frame.memory_copy(0, 0);
    frame.i32_const(0x6aac);
    frame.i32_const(0xd486);
    frame.i32_const(100);
    frame.memory_copy(0, 0);
    frame.i32_const(0x6a55);
    frame.i32_const(0xaaa2);
    frame.i32_const(0x6b5);
    frame.memory_copy(0, 0);
    frame.i32_const(0xec70);
    frame.i32_const(0x21b5);
    frame.i32_const(119);
    frame.memory_copy(0, 0);
    frame.i32_const(0x173b);
    frame.i32_const(0x904);
    frame.i32_const(658);
    frame.memory_copy(0, 0);
    frame.i32_const(0x12b3);
    frame.i32_const(0xc9af);
    frame.i32_const(0x8dd);
    frame.memory_copy(0, 0);
    frame.i32_const(0x3149);
    frame.i32_const(0x4afd);
    frame.i32_const(833);
    frame.memory_copy(0, 0);
    frame.i32_const(0x2e4e);
    frame.i32_const(0xb5a9);
    frame.i32_const(0xce4);
    frame.memory_copy(0, 0);
    frame.i32_const(0x2c70);
    frame.i32_const(0xafd4);
    frame.i32_const(0x8e9);
    frame.memory_copy(0, 0);
    frame.i32_const(0x858a);
    frame.i32_const(0x1a29);
    frame.i32_const(0xa0c);
    frame.memory_copy(0, 0);
    frame.i32_const(0x1348);
    frame.i32_const(0x69a);
    frame.i32_const(0x530);
    frame.memory_copy(0, 0);
    frame.i32_const(0xf6bc);
    frame.i32_const(0x1dd5);
    frame.i32_const(0x686);
    frame.memory_copy(0, 0);
    frame.i32_const(0xae18);
    frame.i32_const(0x47a8);
    frame.i32_const(33);
    frame.memory_copy(0, 0);
    frame.i32_const(0xab8e);
    frame.i32_const(0x574c);
    frame.i32_const(0x593);
    frame.memory_copy(0, 0);
    frame.i32_const(0xb62d);
    frame.i32_const(0xc29b);
    frame.i32_const(0x59a);
    frame.memory_copy(0, 0);
    frame.i32_const(0xf8c4);
    frame.i32_const(0x2233);
    frame.i32_const(834);
    frame.memory_copy(0, 0);
    frame.i32_const(0x82cd);
    frame.i32_const(0x4ea3);
    frame.i32_const(0xcf5);
    frame.memory_copy(0, 0);
    frame.i32_const(0x9e7f);
    frame.i32_const(0xd42d);
    frame.i32_const(0xc81);
    frame.memory_copy(0, 0);
    frame.i32_const(0x64d4);
    frame.i32_const(0xe776);
    frame.i32_const(0x994);
    frame.memory_copy(0, 0);
    frame.i32_const(0x4cde);
    frame.i32_const(0xde32);
    frame.i32_const(346);
    frame.memory_copy(0, 0);
    frame.i32_const(0x3dec);
    frame.i32_const(0x8c4a);
    frame.i32_const(0x97e);
    frame.memory_copy(0, 0);
    frame.i32_const(0x2e30);
    frame.i32_const(0x8af6);
    frame.i32_const(300);
    frame.memory_copy(0, 0);
    frame.i32_const(0xe823);
    frame.i32_const(0x3685);
    frame.i32_const(0xc51);
    frame.memory_copy(0, 0);
    frame.i32_const(0x85fb);
    frame.i32_const(0xecb2);
    frame.i32_const(0x501);
    frame.memory_copy(0, 0);
    frame.i32_const(0x2304);
    frame.i32_const(0x2ff4);
    frame.i32_const(943);
    frame.memory_copy(0, 0);
    frame.i32_const(0xb0b);
    frame.i32_const(0x28b9);
    frame.i32_const(0x75f);
    frame.memory_copy(0, 0);
    frame.i32_const(0xa8ba);
    frame.i32_const(0xab86);
    frame.i32_const(738);
    frame.memory_copy(0, 0);
    frame.i32_const(0xf63e);
    frame.i32_const(0x4a05);
    frame.i32_const(122);
    frame.memory_copy(0, 0);
    frame.i32_const(0x5dec);
    frame.i32_const(0xaed9);
    frame.i32_const(0x6db);
    frame.memory_copy(0, 0);
    frame.i32_const(0x5850);
    frame.i32_const(0x39a3);
    frame.i32_const(702);
    frame.memory_copy(0, 0);
    frame.i32_const(0x2c14);
    frame.i32_const(0x67d3);
    frame.i32_const(0x726);
    frame.memory_copy(0, 0);
    frame.i32_const(0x5a34);
    frame.i32_const(0x4ff7);
    frame.i32_const(0x428);
    frame.memory_copy(0, 0);
    frame.i32_const(0xdfa0);
    frame.i32_const(0xd5f2);
    frame.i32_const(0xa47);
    frame.memory_copy(0, 0);
    frame.i32_const(0x6394);
    frame.i32_const(0x401);
    frame.i32_const(0xc29);
    frame.memory_copy(0, 0);
    frame.i32_const(0xc1b4);
    frame.i32_const(0xacbc);
    frame.i32_const(975);
    frame.memory_copy(0, 0);
    frame.i32_const(0x6e78);
    frame.i32_const(0xa2fa);
    frame.i32_const(0x920);
    frame.memory_copy(0, 0);
    frame.i32_const(0xef69);
    frame.i32_const(230);
    frame.i32_const(0xb38);
    frame.memory_copy(0, 0);
    frame.i32_const(0x57d0);
    frame.i32_const(0xcd1a);
    frame.i32_const(0x895);
    frame.memory_copy(0, 0);
    frame.i32_const(0x9e69);
    frame.i32_const(0x256a);
    frame.i32_const(0x7a6);
    frame.memory_copy(0, 0);
    frame.i32_const(0x714c);
    frame.i32_const(0x517e);
    frame.i32_const(0x88a);
    frame.memory_copy(0, 0);
    frame.i32_const(0xcf25);
    frame.i32_const(0xabb3);
    frame.i32_const(0x40d);
    frame.memory_copy(0, 0);
    frame.i32_const(0x6384);
    frame.i32_const(0x8b53);
    frame.i32_const(0x672);
    frame.memory_copy(0, 0);
    frame.i32_const(0xe494);
    frame.i32_const(0xb2fb);
    frame.i32_const(0x7c2);
    frame.memory_copy(0, 0);
    frame.i32_const(0x9599);
    frame.i32_const(0x1690);
    frame.i32_const(0x7a3);
    frame.memory_copy(0, 0);
    frame.i32_const(0x6f57);
    frame.i32_const(0xd844);
    frame.i32_const(0x940);
    frame.memory_copy(0, 0);
    frame.i32_const(0xf49b);
    frame.i32_const(0x46bc);
    frame.i32_const(0x54c);
    frame.memory_copy(0, 0);
    frame.i32_const(0xc3e5);
    frame.i32_const(0x3625);
    frame.i32_const(382);
    frame.memory_copy(0, 0);
    frame.i32_const(0x4208);
    frame.i32_const(0x8df5);
    frame.i32_const(0x76c);
    frame.memory_copy(0, 0);
    frame.i32_const(0xbbe2);
    frame.i32_const(0x2c5e);
    frame.i32_const(0xaf7);
    frame.memory_copy(0, 0);
    frame.i32_const(0x6f60);
    frame.i32_const(0x9daa);
    frame.i32_const(323);
    frame.memory_copy(0, 0);
    frame.i32_const(0x8ab2);
    frame.i32_const(0x6cd0);
    frame.i32_const(0x686);
    frame.memory_copy(0, 0);
    frame.i32_const(0xf5fa);
    frame.i32_const(0xd054);
    frame.i32_const(0x53d);
    frame.memory_copy(0, 0);
    frame.i32_const(0x3735);
    frame.i32_const(0xb4e8);
    frame.i32_const(644);
    frame.memory_copy(0, 0);
    frame.i32_const(0x7166);
    frame.i32_const(0x4a82);
    frame.i32_const(496);
    frame.memory_copy(0, 0);
    frame.i32_const(0xaf98);
    frame.i32_const(0xb9d9);
    frame.i32_const(0xae0);
    frame.memory_copy(0, 0);
    frame.i32_const(0x9a87);
    frame.i32_const(0xae75);
    frame.i32_const(0x546);
    frame.memory_copy(0, 0);
    frame.i32_const(0x2870);
    frame.i32_const(0x725a);
    frame.i32_const(0x5c3);
    frame.memory_copy(0, 0);
    frame.i32_const(0xb73f);
    frame.i32_const(0xb462);
    frame.i32_const(0x5bb);
    frame.memory_copy(0, 0);
    frame.i32_const(0x1329);
    frame.i32_const(0x7044);
    frame.i32_const(0x767);
    frame.memory_copy(0, 0);
    frame.i32_const(0x947c);
    frame.i32_const(0xdfa5);
    frame.i32_const(0x6d7);
    frame.memory_copy(0, 0);
    frame.i32_const(0x674e);
    frame.i32_const(0x6a57);
    frame.i32_const(0x467);
    frame.memory_copy(0, 0);
    frame.i32_const(0xe5d3);
    frame.i32_const(0x6051);
    frame.i32_const(0x427);
    frame.memory_copy(0, 0);
    frame.i32_const(0xefac);
    frame.i32_const(0x9786);
    frame.i32_const(766);
    frame.memory_copy(0, 0);
    frame.i32_const(0xac80);
    frame.i32_const(0x8ec);
    frame.i32_const(0x5f0);
    frame.memory_copy(0, 0);
    frame.i32_const(0x7fe4);
    frame.i32_const(0xb885);
    frame.i32_const(0xbc6);
    frame.memory_copy(0, 0);
    frame.i32_const(0x2b8c);
    frame.i32_const(0x530c);
    frame.i32_const(0x3f3);
    frame.memory_copy(0, 0);
    frame.i32_const(0x1df1);
    frame.i32_const(0x7b7c);
    frame.i32_const(0xbda);
    frame.memory_copy(0, 0);
    frame.i32_const(0x467c);
    frame.i32_const(0x32bb);
    frame.i32_const(0xcf8);
    frame.memory_copy(0, 0);
    frame.i32_const(0xdfda);
    frame.i32_const(0xda61);
    frame.i32_const(308);
    frame.memory_copy(0, 0);
    frame.i32_const(0x6063);
    frame.i32_const(0x41af);
    frame.i32_const(0x483);
    frame.memory_copy(0, 0);
    frame.i32_const(0x4dbc);
    frame.i32_const(0x2783);
    frame.i32_const(722);
    frame.memory_copy(0, 0);
    frame.i32_const(0xb69);
    frame.i32_const(0x172f);
    frame.i32_const(0x942);
    frame.memory_copy(0, 0);
    frame.i32_const(0x7dff);
    frame.i32_const(0xc3af);
    frame.i32_const(0xb6e);
    frame.memory_copy(0, 0);
    frame.i32_const(0x3b16);
    frame.i32_const(0x4393);
    frame.i32_const(0xa2f);
    frame.memory_copy(0, 0);
    frame.i32_const(0xb207);
    frame.i32_const(0x6f1f);
    frame.i32_const(0x7fd);
    frame.memory_copy(0, 0);
    frame.i32_const(0xd76d);
    frame.i32_const(0x8d11);
    frame.i32_const(0xa24);
    frame.memory_copy(0, 0);
    frame.i32_const(0x6f2d);
    frame.i32_const(0xd38d);
    frame.i32_const(0x490);
    frame.memory_copy(0, 0);
    frame.i32_const(0xbb4f);
    frame.i32_const(0xd089);
    frame.i32_const(0xc41);
    frame.memory_copy(0, 0);
    frame.i32_const(0x77b6);
    frame.i32_const(0xb063);
    frame.i32_const(0xa59);
    frame.memory_copy(0, 0);
    frame.i32_const(0x13c1);
    frame.i32_const(0x10c7);
    frame.i32_const(52);
    frame.memory_copy(0, 0);
    frame.i32_const(0x1a24);
    frame.i32_const(0x5e83);
    frame.i32_const(441);
    frame.memory_copy(0, 0);
    frame.i32_const(0x80d8);
    frame.i32_const(0x69ed);
    frame.i32_const(0xd75);
    frame.memory_copy(0, 0);
    frame.i32_const(0x7f12);
    frame.i32_const(0xe7ec);
    frame.i32_const(0xae1);
    frame.memory_copy(0, 0);
    frame.i32_const(0x8639);
    frame.i32_const(0x2302);
    frame.i32_const(0x966);
    frame.memory_copy(0, 0);
    frame.i32_const(0x45e5);
    frame.i32_const(0xd50a);
    frame.i32_const(0xd35);
    frame.memory_copy(0, 0);
    frame.i32_const(0x589d);
    frame.i32_const(0xac77);
    frame.i32_const(136);
    frame.memory_copy(0, 0);
    frame.i32_const(0xe6d1);
    frame.i32_const(0x1ba5);
    frame.i32_const(0x415);
    frame.memory_copy(0, 0);
    frame.i32_const(0xa7c1);
    frame.i32_const(0xd6f4);
    frame.i32_const(0x955);
    frame.memory_copy(0, 0);
    frame.i32_const(0xae95);
    frame.i32_const(0x4eaa);
    frame.i32_const(877);
    frame.memory_copy(0, 0);
    frame.i32_const(0x8fca);
    frame.i32_const(0x626c);
    frame.i32_const(0xd77);
    frame.memory_copy(0, 0);
    frame.i32_const(0xb2ae);
    frame.i32_const(0x7c90);
    frame.i32_const(854);
    frame.memory_copy(0, 0);
    frame.i32_const(0x5eac);
    frame.i32_const(0x7c7a);
    frame.i32_const(0x561);
    frame.memory_copy(0, 0);
    frame.i32_const(0x83f2);
    frame.i32_const(692);
    frame.i32_const(0x63a);
    frame.memory_copy(0, 0);
    frame.i32_const(0xecca);
    frame.i32_const(0x4899);
    frame.i32_const(0xbab);
    frame.memory_copy(0, 0);
    frame.i32_const(0xc4c2);
    frame.i32_const(0xa137);
    frame.i32_const(0x57e);
    frame.memory_copy(0, 0);
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function(i32, i32, i32);
