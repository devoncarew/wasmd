// Generated from samples/sha3.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:dasm/runtime.dart';

class Module {
  Module();

  final Memory memory = Memory(10, 65536);
  final Globals globals = Globals();

  void init(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 0);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 8);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 16);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 32);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 40);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 48);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 56);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 64);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 72);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 80);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 88);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 964);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 104);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 112);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 120);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 128);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 136);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 144);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 152);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 160);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 168);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 176);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 184);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 192);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_store(3, 200);
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_store(2, 0);
  }

  i32 pad(i32 arg0, i32 arg1, i32 arg2, i32 arg3) {
    i32 local0 = 0;

    final frame = Frame(memory);
    frame.push(arg2);
    local0 = frame.pop();
    block_label_0:
    {
      block_label_1:
      {
        block_label_2:
        {
          block_label_3:
          {
            block_label_4:
            {
              frame.push(arg3);
              throw 'unreachable (0x0E)';
            }
          }
        }
      }
    }
  }

  i32 absorb(i32 arg0, i32 arg1, i32 arg2) {
    i32 local0 = 0;
    i32 local1 = 0;
    i32 local2 = 0;
    i64 local3 = 0;
    i32 local4 = 0;

    final frame = Frame(memory);
    frame.push(arg1);
    local2 = frame.pop();
    frame.push(arg0);
    frame.i32_load(2, 0);
    local4 = frame.pop();
    frame.push(arg0);
    frame.i32_load(2, 4);
    frame.push(local4);
    frame.i32_const(8);
    frame.i32_div_u();
    frame.i32_rem_u();
    local1 = frame.peek();
    frame.push(local1);
    frame.i32_const(8);
    frame.i32_rem_u();
    frame.i32_sub();
    local0 = frame.pop();
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(local0);
        frame.i32_const(8);
        frame.i32_mul();
        frame.push(local4);
        frame.i32_eq();
        if_label_2:
        if (frame.pop() != 0) {
          frame.push(arg0);
          f_permute(frame.pop());
          frame.i32_const(0);
          local0 = frame.pop();
        }
        frame.push(arg1);
        frame.push(arg2);
        frame.i32_eq();
        if (frame.pop() != 0) break block_label_0;
        block_label_2:
        {
          frame.push(arg2);
          frame.push(arg1);
          frame.i32_sub();
          frame.i32_const(8);
          frame.i32_lt_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg0);
          frame.push(local0);
          frame.i32_add();
          frame.push(arg0);
          frame.push(local0);
          frame.i32_add();
          frame.i64_load(3, 8);
          frame.push(arg1);
          frame.i64_load(3, 0);
          frame.i64_xor();
          frame.i64_store(3, 8);
          frame.push(arg1);
          frame.i32_const(8);
          frame.i32_add();
          arg1 = frame.pop();
          frame.push(local0);
          frame.i32_const(8);
          frame.i32_add();
          local0 = frame.pop();
          continue loop_label_1;
        }
        frame.push(arg0);
        frame.push(local0);
        frame.i32_add();
        frame.push(arg0);
        frame.push(local0);
        frame.i32_add();
        frame.i64_load8_u(0, 8);
        frame.push(arg1);
        frame.i64_load8_u(0, 0);
        frame.i64_xor();
        frame.i64_store8(0, 8);
        frame.push(arg1);
        frame.i32_const(1);
        frame.i32_add();
        arg1 = frame.pop();
        frame.push(local0);
        frame.i32_const(1);
        frame.i32_add();
        local0 = frame.pop();
        continue loop_label_1;
        break;
      }
    }
    frame.push(arg0);
    frame.push(arg0);
    frame.i32_load(2, 4);
    frame.i32_const(8);
    frame.i32_div_u();
    frame.i32_const(8);
    frame.i32_mul();
    frame.push(arg1);
    frame.push(local2);
    frame.i32_sub();
    frame.i32_add();
    frame.i32_store(2, 4);
    frame.push(arg1);
    frame.push(local2);
    frame.i32_sub();
    frame.i32_const(8);
    frame.i32_rem_u();
    return frame.pop();
  }

  void squeeze(i32 arg0, i32 arg1, i32 arg2) {
    i32 local0 = 0;
    i32 local1 = 0;
    i32 local2 = 0;
    i32 local3 = 0;

    final frame = Frame(memory);
    frame.push(arg0);
    frame.i32_const(8);
    frame.i32_add();
    local0 = frame.pop();
    frame.push(arg0);
    frame.i32_load(2, 0);
    frame.i32_const(8);
    frame.i32_div_u();
    local3 = frame.pop();
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.i32_const(0);
        local2 = frame.pop();
        block_label_2:
        {
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 0);
          frame.i64_store(3, 0);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 8);
          frame.i64_store(3, 8);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 16);
          frame.i64_store(3, 16);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 24);
          frame.i64_store(3, 24);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 32);
          frame.i64_store(3, 32);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 40);
          frame.i64_store(3, 40);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 48);
          frame.i64_store(3, 48);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 56);
          frame.i64_store(3, 56);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 64);
          frame.i64_store(3, 64);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 72);
          frame.i64_store(3, 72);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 80);
          frame.i64_store(3, 80);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 88);
          frame.i64_store(3, 88);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 96);
          frame.i64_store(3, 96);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 104);
          frame.i64_store(3, 104);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 112);
          frame.i64_store(3, 112);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 120);
          frame.i64_store(3, 120);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 128);
          frame.i64_store(3, 128);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 136);
          frame.i64_store(3, 136);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 144);
          frame.i64_store(3, 144);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 152);
          frame.i64_store(3, 152);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 160);
          frame.i64_store(3, 160);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 168);
          frame.i64_store(3, 168);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 176);
          frame.i64_store(3, 176);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 184);
          frame.i64_store(3, 184);
          frame.push(local2);
          frame.i32_const(8);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local2);
          frame.push(local3);
          frame.i32_ge_u();
          if (frame.pop() != 0) break block_label_2;
          frame.push(arg1);
          frame.push(local0);
          frame.i64_load(3, 192);
          frame.i64_store(3, 192);
        }
        frame.push(local1);
        frame.push(arg2);
        frame.i32_ge_u();
        if (frame.pop() != 0) break block_label_0;
        frame.push(arg1);
        frame.push(local3);
        frame.i32_add();
        arg1 = frame.pop();
        frame.push(local1);
        frame.push(local3);
        frame.i32_add();
        local1 = frame.pop();
        frame.push(arg0);
        f_permute(frame.pop());
        continue loop_label_1;
        break;
      }
    }
  }

  void _func4() {
    final frame = Frame(memory);
    frame.push(globals.global0);
    globals.global50 = frame.pop();
    frame.push(globals.global2);
    globals.global52 = frame.pop();
    frame.push(globals.global4);
    globals.global54 = frame.pop();
    frame.push(globals.global6);
    globals.global56 = frame.pop();
    frame.push(globals.global8);
    globals.global58 = frame.pop();
    frame.push(globals.global50);
    frame.push(globals.global10);
    frame.i64_xor();
    globals.global50 = frame.pop();
    frame.push(globals.global50);
    frame.push(globals.global20);
    frame.i64_xor();
    globals.global50 = frame.pop();
    frame.push(globals.global50);
    frame.push(globals.global30);
    frame.i64_xor();
    globals.global50 = frame.pop();
    frame.push(globals.global50);
    frame.push(globals.global40);
    frame.i64_xor();
    globals.global50 = frame.pop();
    frame.push(globals.global52);
    frame.push(globals.global12);
    frame.i64_xor();
    globals.global52 = frame.pop();
    frame.push(globals.global52);
    frame.push(globals.global22);
    frame.i64_xor();
    globals.global52 = frame.pop();
    frame.push(globals.global52);
    frame.push(globals.global32);
    frame.i64_xor();
    globals.global52 = frame.pop();
    frame.push(globals.global52);
    frame.push(globals.global42);
    frame.i64_xor();
    globals.global52 = frame.pop();
    frame.push(globals.global54);
    frame.push(globals.global14);
    frame.i64_xor();
    globals.global54 = frame.pop();
    frame.push(globals.global54);
    frame.push(globals.global24);
    frame.i64_xor();
    globals.global54 = frame.pop();
    frame.push(globals.global54);
    frame.push(globals.global34);
    frame.i64_xor();
    globals.global54 = frame.pop();
    frame.push(globals.global54);
    frame.push(globals.global44);
    frame.i64_xor();
    globals.global54 = frame.pop();
    frame.push(globals.global56);
    frame.push(globals.global16);
    frame.i64_xor();
    globals.global56 = frame.pop();
    frame.push(globals.global56);
    frame.push(globals.global26);
    frame.i64_xor();
    globals.global56 = frame.pop();
    frame.push(globals.global56);
    frame.push(globals.global36);
    frame.i64_xor();
    globals.global56 = frame.pop();
    frame.push(globals.global56);
    frame.push(globals.global46);
    frame.i64_xor();
    globals.global56 = frame.pop();
    frame.push(globals.global58);
    frame.push(globals.global18);
    frame.i64_xor();
    globals.global58 = frame.pop();
    frame.push(globals.global58);
    frame.push(globals.global28);
    frame.i64_xor();
    globals.global58 = frame.pop();
    frame.push(globals.global58);
    frame.push(globals.global38);
    frame.i64_xor();
    globals.global58 = frame.pop();
    frame.push(globals.global58);
    frame.push(globals.global48);
    frame.i64_xor();
    globals.global58 = frame.pop();
    frame.push(globals.global52);
    frame.i64_const(1);
    frame.i64_rotl();
    frame.push(globals.global58);
    frame.i64_xor();
    globals.global51 = frame.pop();
    frame.push(globals.global0);
    frame.push(globals.global51);
    frame.i64_xor();
    globals.global0 = frame.pop();
    frame.push(globals.global10);
    frame.push(globals.global51);
    frame.i64_xor();
    globals.global10 = frame.pop();
    frame.push(globals.global20);
    frame.push(globals.global51);
    frame.i64_xor();
    globals.global20 = frame.pop();
    frame.push(globals.global30);
    frame.push(globals.global51);
    frame.i64_xor();
    globals.global30 = frame.pop();
    frame.push(globals.global40);
    frame.push(globals.global51);
    frame.i64_xor();
    globals.global40 = frame.pop();
    frame.push(globals.global54);
    frame.i64_const(1);
    frame.i64_rotl();
    frame.push(globals.global50);
    frame.i64_xor();
    globals.global53 = frame.pop();
    frame.push(globals.global2);
    frame.push(globals.global53);
    frame.i64_xor();
    globals.global2 = frame.pop();
    frame.push(globals.global12);
    frame.push(globals.global53);
    frame.i64_xor();
    globals.global12 = frame.pop();
    frame.push(globals.global22);
    frame.push(globals.global53);
    frame.i64_xor();
    globals.global22 = frame.pop();
    frame.push(globals.global32);
    frame.push(globals.global53);
    frame.i64_xor();
    globals.global32 = frame.pop();
    frame.push(globals.global42);
    frame.push(globals.global53);
    frame.i64_xor();
    globals.global42 = frame.pop();
    frame.push(globals.global56);
    frame.i64_const(1);
    frame.i64_rotl();
    frame.push(globals.global52);
    frame.i64_xor();
    globals.global55 = frame.pop();
    frame.push(globals.global4);
    frame.push(globals.global55);
    frame.i64_xor();
    globals.global4 = frame.pop();
    frame.push(globals.global14);
    frame.push(globals.global55);
    frame.i64_xor();
    globals.global14 = frame.pop();
    frame.push(globals.global24);
    frame.push(globals.global55);
    frame.i64_xor();
    globals.global24 = frame.pop();
    frame.push(globals.global34);
    frame.push(globals.global55);
    frame.i64_xor();
    globals.global34 = frame.pop();
    frame.push(globals.global44);
    frame.push(globals.global55);
    frame.i64_xor();
    globals.global44 = frame.pop();
    frame.push(globals.global58);
    frame.i64_const(1);
    frame.i64_rotl();
    frame.push(globals.global54);
    frame.i64_xor();
    globals.global57 = frame.pop();
    frame.push(globals.global6);
    frame.push(globals.global57);
    frame.i64_xor();
    globals.global6 = frame.pop();
    frame.push(globals.global16);
    frame.push(globals.global57);
    frame.i64_xor();
    globals.global16 = frame.pop();
    frame.push(globals.global26);
    frame.push(globals.global57);
    frame.i64_xor();
    globals.global26 = frame.pop();
    frame.push(globals.global36);
    frame.push(globals.global57);
    frame.i64_xor();
    globals.global36 = frame.pop();
    frame.push(globals.global46);
    frame.push(globals.global57);
    frame.i64_xor();
    globals.global46 = frame.pop();
    frame.push(globals.global50);
    frame.i64_const(1);
    frame.i64_rotl();
    frame.push(globals.global56);
    frame.i64_xor();
    globals.global59 = frame.pop();
    frame.push(globals.global8);
    frame.push(globals.global59);
    frame.i64_xor();
    globals.global8 = frame.pop();
    frame.push(globals.global18);
    frame.push(globals.global59);
    frame.i64_xor();
    globals.global18 = frame.pop();
    frame.push(globals.global28);
    frame.push(globals.global59);
    frame.i64_xor();
    globals.global28 = frame.pop();
    frame.push(globals.global38);
    frame.push(globals.global59);
    frame.i64_xor();
    globals.global38 = frame.pop();
    frame.push(globals.global48);
    frame.push(globals.global59);
    frame.i64_xor();
    globals.global48 = frame.pop();
    frame.push(globals.global0);
    globals.global1 = frame.pop();
    frame.push(globals.global2);
    frame.i64_const(1);
    frame.i64_rotl();
    globals.global21 = frame.pop();
    frame.push(globals.global20);
    frame.i64_const(3);
    frame.i64_rotl();
    globals.global15 = frame.pop();
    frame.push(globals.global14);
    frame.i64_const(6);
    frame.i64_rotl();
    globals.global23 = frame.pop();
    frame.push(globals.global22);
    frame.i64_const(10);
    frame.i64_rotl();
    globals.global35 = frame.pop();
    frame.push(globals.global34);
    frame.i64_const(15);
    frame.i64_rotl();
    globals.global37 = frame.pop();
    frame.push(globals.global36);
    frame.i64_const(21);
    frame.i64_rotl();
    globals.global7 = frame.pop();
    frame.push(globals.global6);
    frame.i64_const(28);
    frame.i64_rotl();
    globals.global11 = frame.pop();
    frame.push(globals.global10);
    frame.i64_const(28);
    frame.i64_rotr();
    globals.global33 = frame.pop();
    frame.push(globals.global32);
    frame.i64_const(19);
    frame.i64_rotr();
    globals.global17 = frame.pop();
    frame.push(globals.global16);
    frame.i64_const(9);
    frame.i64_rotr();
    globals.global43 = frame.pop();
    frame.push(globals.global42);
    frame.i64_const(62);
    frame.i64_rotr();
    globals.global49 = frame.pop();
    frame.push(globals.global48);
    frame.i64_const(50);
    frame.i64_rotr();
    globals.global9 = frame.pop();
    frame.push(globals.global8);
    frame.i64_const(37);
    frame.i64_rotr();
    globals.global31 = frame.pop();
    frame.push(globals.global30);
    frame.i64_const(23);
    frame.i64_rotr();
    globals.global47 = frame.pop();
    frame.push(globals.global46);
    frame.i64_const(8);
    frame.i64_rotr();
    globals.global39 = frame.pop();
    frame.push(globals.global38);
    frame.i64_const(56);
    frame.i64_rotr();
    globals.global27 = frame.pop();
    frame.push(globals.global26);
    frame.i64_const(39);
    frame.i64_rotr();
    globals.global25 = frame.pop();
    frame.push(globals.global24);
    frame.i64_const(21);
    frame.i64_rotr();
    globals.global5 = frame.pop();
    frame.push(globals.global4);
    frame.i64_const(2);
    frame.i64_rotr();
    globals.global41 = frame.pop();
    frame.push(globals.global40);
    frame.i64_const(46);
    frame.i64_rotr();
    globals.global29 = frame.pop();
    frame.push(globals.global28);
    frame.i64_const(25);
    frame.i64_rotr();
    globals.global45 = frame.pop();
    frame.push(globals.global44);
    frame.i64_const(3);
    frame.i64_rotr();
    globals.global19 = frame.pop();
    frame.push(globals.global18);
    frame.i64_const(44);
    frame.i64_rotr();
    globals.global13 = frame.pop();
    frame.push(globals.global12);
    frame.i64_const(20);
    frame.i64_rotr();
    globals.global3 = frame.pop();
    frame.push(globals.global3);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global5);
    frame.i64_and();
    frame.push(globals.global1);
    frame.i64_xor();
    globals.global0 = frame.pop();
    frame.push(globals.global13);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global15);
    frame.i64_and();
    frame.push(globals.global11);
    frame.i64_xor();
    globals.global10 = frame.pop();
    frame.push(globals.global23);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global25);
    frame.i64_and();
    frame.push(globals.global21);
    frame.i64_xor();
    globals.global20 = frame.pop();
    frame.push(globals.global33);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global35);
    frame.i64_and();
    frame.push(globals.global31);
    frame.i64_xor();
    globals.global30 = frame.pop();
    frame.push(globals.global43);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global45);
    frame.i64_and();
    frame.push(globals.global41);
    frame.i64_xor();
    globals.global40 = frame.pop();
    frame.push(globals.global5);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global7);
    frame.i64_and();
    frame.push(globals.global3);
    frame.i64_xor();
    globals.global2 = frame.pop();
    frame.push(globals.global15);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global17);
    frame.i64_and();
    frame.push(globals.global13);
    frame.i64_xor();
    globals.global12 = frame.pop();
    frame.push(globals.global25);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global27);
    frame.i64_and();
    frame.push(globals.global23);
    frame.i64_xor();
    globals.global22 = frame.pop();
    frame.push(globals.global35);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global37);
    frame.i64_and();
    frame.push(globals.global33);
    frame.i64_xor();
    globals.global32 = frame.pop();
    frame.push(globals.global45);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global47);
    frame.i64_and();
    frame.push(globals.global43);
    frame.i64_xor();
    globals.global42 = frame.pop();
    frame.push(globals.global7);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global9);
    frame.i64_and();
    frame.push(globals.global5);
    frame.i64_xor();
    globals.global4 = frame.pop();
    frame.push(globals.global17);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global19);
    frame.i64_and();
    frame.push(globals.global15);
    frame.i64_xor();
    globals.global14 = frame.pop();
    frame.push(globals.global27);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global29);
    frame.i64_and();
    frame.push(globals.global25);
    frame.i64_xor();
    globals.global24 = frame.pop();
    frame.push(globals.global37);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global39);
    frame.i64_and();
    frame.push(globals.global35);
    frame.i64_xor();
    globals.global34 = frame.pop();
    frame.push(globals.global47);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global49);
    frame.i64_and();
    frame.push(globals.global45);
    frame.i64_xor();
    globals.global44 = frame.pop();
    frame.push(globals.global9);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global1);
    frame.i64_and();
    frame.push(globals.global7);
    frame.i64_xor();
    globals.global6 = frame.pop();
    frame.push(globals.global19);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global11);
    frame.i64_and();
    frame.push(globals.global17);
    frame.i64_xor();
    globals.global16 = frame.pop();
    frame.push(globals.global29);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global21);
    frame.i64_and();
    frame.push(globals.global27);
    frame.i64_xor();
    globals.global26 = frame.pop();
    frame.push(globals.global39);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global31);
    frame.i64_and();
    frame.push(globals.global37);
    frame.i64_xor();
    globals.global36 = frame.pop();
    frame.push(globals.global49);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global41);
    frame.i64_and();
    frame.push(globals.global47);
    frame.i64_xor();
    globals.global46 = frame.pop();
    frame.push(globals.global1);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global3);
    frame.i64_and();
    frame.push(globals.global9);
    frame.i64_xor();
    globals.global8 = frame.pop();
    frame.push(globals.global11);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global13);
    frame.i64_and();
    frame.push(globals.global19);
    frame.i64_xor();
    globals.global18 = frame.pop();
    frame.push(globals.global21);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global23);
    frame.i64_and();
    frame.push(globals.global29);
    frame.i64_xor();
    globals.global28 = frame.pop();
    frame.push(globals.global31);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global33);
    frame.i64_and();
    frame.push(globals.global39);
    frame.i64_xor();
    globals.global38 = frame.pop();
    frame.push(globals.global41);
    frame.i64_const(127);
    frame.i64_xor();
    frame.push(globals.global43);
    frame.i64_and();
    frame.push(globals.global49);
    frame.i64_xor();
    globals.global48 = frame.pop();
  }

  void f_permute(i32 arg0) {
    i32 local0 = 0;

    final frame = Frame(memory);
    frame.push(arg0);
    frame.i32_const(8);
    frame.i32_add();
    local0 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 0);
    globals.global0 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 8);
    globals.global2 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 16);
    globals.global4 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 24);
    globals.global6 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 32);
    globals.global8 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 40);
    globals.global10 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 48);
    globals.global12 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 56);
    globals.global14 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 64);
    globals.global16 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 72);
    globals.global18 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 80);
    globals.global20 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 88);
    globals.global22 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 96);
    globals.global24 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 104);
    globals.global26 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 112);
    globals.global28 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 120);
    globals.global30 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 128);
    globals.global32 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 136);
    globals.global34 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 144);
    globals.global36 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 152);
    globals.global38 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 160);
    globals.global40 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 168);
    globals.global42 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 176);
    globals.global44 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 184);
    globals.global46 = frame.pop();
    frame.push(local0);
    frame.i64_load(3, 192);
    globals.global48 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(1);
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(32898);
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(32906);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(2147516416);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(32907);
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(2147483649);
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(2147516545);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(32777);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(138);
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(136);
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(2147516425);
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(2147483658);
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(2147516555);
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(139);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(32905);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(32771);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(32770);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(128);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(32778);
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(2147483658);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(2147516545);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(32896);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(2147483649);
    frame.i64_xor();
    globals.global0 = frame.pop();
    _func4();
    frame.push(globals.global0);
    frame.i64_const(2147516424);
    frame.i64_div_s();
    frame.i64_xor();
    globals.global0 = frame.pop();
    frame.push(local0);
    frame.push(globals.global0);
    frame.i64_store(3, 0);
    frame.push(local0);
    frame.push(globals.global2);
    frame.i64_store(3, 8);
    frame.push(local0);
    frame.push(globals.global4);
    frame.i64_store(3, 16);
    frame.push(local0);
    frame.push(globals.global6);
    frame.i64_store(3, 24);
    frame.push(local0);
    frame.push(globals.global8);
    frame.i64_store(3, 32);
    frame.push(local0);
    frame.push(globals.global10);
    frame.i64_store(3, 40);
    frame.push(local0);
    frame.push(globals.global12);
    frame.i64_store(3, 48);
    frame.push(local0);
    frame.push(globals.global14);
    frame.i64_store(3, 56);
    frame.push(local0);
    frame.push(globals.global16);
    frame.i64_store(3, 64);
    frame.push(local0);
    frame.push(globals.global18);
    frame.i64_store(3, 72);
    frame.push(local0);
    frame.push(globals.global20);
    frame.i64_store(3, 80);
    frame.push(local0);
    frame.push(globals.global22);
    frame.i64_store(3, 88);
    frame.push(local0);
    frame.push(globals.global24);
    frame.i64_store(3, 96);
    frame.push(local0);
    frame.push(globals.global26);
    frame.i64_store(3, 104);
    frame.push(local0);
    frame.push(globals.global28);
    frame.i64_store(3, 112);
    frame.push(local0);
    frame.push(globals.global30);
    frame.i64_store(3, 120);
    frame.push(local0);
    frame.push(globals.global32);
    frame.i64_store(3, 128);
    frame.push(local0);
    frame.push(globals.global34);
    frame.i64_store(3, 136);
    frame.push(local0);
    frame.push(globals.global36);
    frame.i64_store(3, 144);
    frame.push(local0);
    frame.push(globals.global38);
    frame.i64_store(3, 152);
    frame.push(local0);
    frame.push(globals.global40);
    frame.i64_store(3, 160);
    frame.push(local0);
    frame.push(globals.global42);
    frame.i64_store(3, 168);
    frame.push(local0);
    frame.push(globals.global44);
    frame.i64_store(3, 176);
    frame.push(local0);
    frame.push(globals.global46);
    frame.i64_store(3, 184);
    frame.push(local0);
    frame.push(globals.global48);
    frame.i64_store(3, 192);
  }
}

class Globals {
  i64 global0 = _initGlobal0();
  i64 global1 = _initGlobal1();
  i64 global2 = _initGlobal2();
  i64 global3 = _initGlobal3();
  i64 global4 = _initGlobal4();
  i64 global5 = _initGlobal5();
  i64 global6 = _initGlobal6();
  i64 global7 = _initGlobal7();
  i64 global8 = _initGlobal8();
  i64 global9 = _initGlobal9();
  i64 global10 = _initGlobal10();
  i64 global11 = _initGlobal11();
  i64 global12 = _initGlobal12();
  i64 global13 = _initGlobal13();
  i64 global14 = _initGlobal14();
  i64 global15 = _initGlobal15();
  i64 global16 = _initGlobal16();
  i64 global17 = _initGlobal17();
  i64 global18 = _initGlobal18();
  i64 global19 = _initGlobal19();
  i64 global20 = _initGlobal20();
  i64 global21 = _initGlobal21();
  i64 global22 = _initGlobal22();
  i64 global23 = _initGlobal23();
  i64 global24 = _initGlobal24();
  i64 global25 = _initGlobal25();
  i64 global26 = _initGlobal26();
  i64 global27 = _initGlobal27();
  i64 global28 = _initGlobal28();
  i64 global29 = _initGlobal29();
  i64 global30 = _initGlobal30();
  i64 global31 = _initGlobal31();
  i64 global32 = _initGlobal32();
  i64 global33 = _initGlobal33();
  i64 global34 = _initGlobal34();
  i64 global35 = _initGlobal35();
  i64 global36 = _initGlobal36();
  i64 global37 = _initGlobal37();
  i64 global38 = _initGlobal38();
  i64 global39 = _initGlobal39();
  i64 global40 = _initGlobal40();
  i64 global41 = _initGlobal41();
  i64 global42 = _initGlobal42();
  i64 global43 = _initGlobal43();
  i64 global44 = _initGlobal44();
  i64 global45 = _initGlobal45();
  i64 global46 = _initGlobal46();
  i64 global47 = _initGlobal47();
  i64 global48 = _initGlobal48();
  i64 global49 = _initGlobal49();
  i64 global50 = _initGlobal50();
  i64 global51 = _initGlobal51();
  i64 global52 = _initGlobal52();
  i64 global53 = _initGlobal53();
  i64 global54 = _initGlobal54();
  i64 global55 = _initGlobal55();
  i64 global56 = _initGlobal56();
  i64 global57 = _initGlobal57();
  i64 global58 = _initGlobal58();
  i64 global59 = _initGlobal59();

  static final Memory memory = Memory(0);

  static i64 _initGlobal0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal1() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal2() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal3() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal4() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal5() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal6() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal7() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal8() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal9() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal10() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal11() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal12() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal13() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal14() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal15() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal16() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal17() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal18() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal19() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal20() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal21() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal22() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal23() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal24() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal25() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal26() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal27() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal28() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal29() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal30() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal31() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal32() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal33() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal34() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal35() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal36() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal37() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal38() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal39() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal40() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal41() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal42() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal43() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal44() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal45() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal46() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal47() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal48() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal49() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal50() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal51() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal52() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal53() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal54() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal55() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal56() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal57() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal58() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal59() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }
}
