// Generated from samples/sha3.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Sha3Module extends Module {
  Sha3Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(
    10,
    65536,
  );

  final Globals globals = Globals();

  @override
  late final List<Table> tables = [];

  void init(i32 arg0, i32 arg1, i32 arg2) => _func0(arg0, arg1, arg2);
  i32 pad(i32 arg0, i32 arg1, i32 arg2, i32 arg3) => _func1(arg0, arg1, arg2, arg3);
  i32 absorb(i32 arg0, i32 arg1, i32 arg2) => _func2(arg0, arg1, arg2);
  void squeeze(i32 arg0, i32 arg1, i32 arg2) => _func3(arg0, arg1, arg2);
  void f_permute(i32 arg0) => _func5(arg0);

  void _func0(i32 arg0, i32 arg1, i32 arg2) {
    vm.i64_store(3, 0, arg0, 0);
    vm.i64_store(3, 8, arg0, 0);
    vm.i64_store(3, 16, arg0, 0);
    vm.i64_store(3, 32, arg0, 0);
    vm.i64_store(3, 40, arg0, 0);
    vm.i64_store(3, 48, arg0, 0);
    vm.i64_store(3, 56, arg0, 0);
    vm.i64_store(3, 64, arg0, 0);
    vm.i64_store(3, 72, arg0, 0);
    vm.i64_store(3, 80, arg0, 0);
    vm.i64_store(3, 88, arg0, 0);
    vm.i64_store(3, 964, arg0, 0);
    vm.i64_store(3, 104, arg0, 0);
    vm.i64_store(3, 112, arg0, 0);
    vm.i64_store(3, 120, arg0, 0);
    vm.i64_store(3, 128, arg0, 0);
    vm.i64_store(3, 136, arg0, 0);
    vm.i64_store(3, 144, arg0, 0);
    vm.i64_store(3, 152, arg0, 0);
    vm.i64_store(3, 160, arg0, 0);
    vm.i64_store(3, 168, arg0, 0);
    vm.i64_store(3, 176, arg0, 0);
    vm.i64_store(3, 184, arg0, 0);
    vm.i64_store(3, 192, arg0, 0);
    vm.i64_store(3, 200, arg0, 0);
    vm.i32_store(2, 0, arg0, arg1);
  }

  i32 _func1(i32 arg0, i32 arg1, i32 arg2, i32 arg3) {
    i32 local0 = 0;

    local0 = arg2;
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
              switch (arg3) {
                case 0:
                  break block_label_1;
                case 1:
                  break block_label_2;
                default:
                  break block_label_3;
              }
            }
          }
          vm.i64_store8(0, 0, arg1, 31);
          break block_label_0;
        }
        vm.i64_store8(0, 0, arg1, 1);
        break block_label_0;
      }
      vm.i64_store8(0, 0, arg1, 6);
      break block_label_0;
    }
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        var t0 = vm.i32_add(arg2, 1);
        var t1 = vm.i32_mul(t0, 8);
        var t2 = vm.i32_rem_u(t1, arg0);
        var t3 = vm.i32_eq(t2, 0);
        if (t3 != 0) break block_label_0;
        var t4 = vm.i32_add(arg2, 1);
        arg2 = t4;
        var t5 = vm.i32_add(arg1, 1);
        arg1 = t5;
        vm.i64_store8(0, 0, arg1, 0);
        continue loop_label_1;
        break;
      }
    }
    var t6 = vm.i64_load(3, 0, arg1);
    var t7 = vm.i64_or(t6, 128);
    vm.i64_store(3, 0, arg1, t7);
    var t8 = vm.i32_add(arg2, 1);
    arg2 = t8;
    var t9 = vm.i32_sub(arg2, local0);
    return t9;
  }

  i32 _func2(i32 arg0, i32 arg1, i32 arg2) {
    i32 local0 = 0;
    i32 local1 = 0;
    i32 local2 = 0;
    i64 local3 = 0;
    i32 local4 = 0;

    local2 = arg1;
    var t0 = vm.i32_load(2, 0, arg0);
    local4 = t0;
    var t1 = vm.i32_load(2, 4, arg0);
    var t2 = vm.i32_div_u(local4, 8);
    var t3 = vm.i32_rem_u(t1, t2);
    local1 = t3;
    var t4 = vm.i32_rem_u(local1, 8);
    var t5 = vm.i32_sub(t3, t4);
    local0 = t5;
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        var t6 = vm.i32_mul(local0, 8);
        var t7 = vm.i32_eq(t6, local4);
        if_label_2:
        if (t7 != 0) {
          _func5(arg0);
          local0 = 0;
        }
        var t8 = vm.i32_eq(arg1, arg2);
        if (t8 != 0) break block_label_0;
        block_label_2:
        {
          var t9 = vm.i32_sub(arg2, arg1);
          var t10 = vm.i32_lt_u(t9, 8);
          if (t10 != 0) break block_label_2;
          var t11 = vm.i32_add(arg0, local0);
          var t12 = vm.i32_add(arg0, local0);
          var t13 = vm.i64_load(3, 8, t12);
          var t14 = vm.i64_load(3, 0, arg1);
          var t15 = vm.i64_xor(t13, t14);
          vm.i64_store(3, 8, t11, t15);
          var t16 = vm.i32_add(arg1, 8);
          arg1 = t16;
          var t17 = vm.i32_add(local0, 8);
          local0 = t17;
          continue loop_label_1;
        }
        var t18 = vm.i32_add(arg0, local0);
        var t19 = vm.i32_add(arg0, local0);
        var t20 = vm.i64_load8_u(0, 8, t19);
        var t21 = vm.i64_load8_u(0, 0, arg1);
        var t22 = vm.i64_xor(t20, t21);
        vm.i64_store8(0, 8, t18, t22);
        var t23 = vm.i32_add(arg1, 1);
        arg1 = t23;
        var t24 = vm.i32_add(local0, 1);
        local0 = t24;
        continue loop_label_1;
        break;
      }
    }
    var t25 = vm.i32_load(2, 4, arg0);
    var t26 = vm.i32_div_u(t25, 8);
    var t27 = vm.i32_mul(t26, 8);
    var t28 = vm.i32_sub(arg1, local2);
    var t29 = vm.i32_add(t27, t28);
    vm.i32_store(2, 4, arg0, t29);
    var t30 = vm.i32_sub(arg1, local2);
    var t31 = vm.i32_rem_u(t30, 8);
    return t31;
  }

  void _func3(i32 arg0, i32 arg1, i32 arg2) {
    i32 local0 = 0;
    i32 local1 = 0;
    i32 local2 = 0;
    i32 local3 = 0;

    var t0 = vm.i32_add(arg0, 8);
    local0 = t0;
    var t1 = vm.i32_load(2, 0, arg0);
    var t2 = vm.i32_div_u(t1, 8);
    local3 = t2;
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        local2 = 0;
        block_label_2:
        {
          var t3 = vm.i64_load(3, 0, local0);
          vm.i64_store(3, 0, arg1, t3);
          var t4 = vm.i32_add(local2, 8);
          local2 = t4;
          var t5 = vm.i32_ge_u(local2, local3);
          if (t5 != 0) break block_label_2;
          var t6 = vm.i64_load(3, 8, local0);
          vm.i64_store(3, 8, arg1, t6);
          var t7 = vm.i32_add(local2, 8);
          local2 = t7;
          var t8 = vm.i32_ge_u(local2, local3);
          if (t8 != 0) break block_label_2;
          var t9 = vm.i64_load(3, 16, local0);
          vm.i64_store(3, 16, arg1, t9);
          var t10 = vm.i32_add(local2, 8);
          local2 = t10;
          var t11 = vm.i32_ge_u(local2, local3);
          if (t11 != 0) break block_label_2;
          var t12 = vm.i64_load(3, 24, local0);
          vm.i64_store(3, 24, arg1, t12);
          var t13 = vm.i32_add(local2, 8);
          local2 = t13;
          var t14 = vm.i32_ge_u(local2, local3);
          if (t14 != 0) break block_label_2;
          var t15 = vm.i64_load(3, 32, local0);
          vm.i64_store(3, 32, arg1, t15);
          var t16 = vm.i32_add(local2, 8);
          local2 = t16;
          var t17 = vm.i32_ge_u(local2, local3);
          if (t17 != 0) break block_label_2;
          var t18 = vm.i64_load(3, 40, local0);
          vm.i64_store(3, 40, arg1, t18);
          var t19 = vm.i32_add(local2, 8);
          local2 = t19;
          var t20 = vm.i32_ge_u(local2, local3);
          if (t20 != 0) break block_label_2;
          var t21 = vm.i64_load(3, 48, local0);
          vm.i64_store(3, 48, arg1, t21);
          var t22 = vm.i32_add(local2, 8);
          local2 = t22;
          var t23 = vm.i32_ge_u(local2, local3);
          if (t23 != 0) break block_label_2;
          var t24 = vm.i64_load(3, 56, local0);
          vm.i64_store(3, 56, arg1, t24);
          var t25 = vm.i32_add(local2, 8);
          local2 = t25;
          var t26 = vm.i32_ge_u(local2, local3);
          if (t26 != 0) break block_label_2;
          var t27 = vm.i64_load(3, 64, local0);
          vm.i64_store(3, 64, arg1, t27);
          var t28 = vm.i32_add(local2, 8);
          local2 = t28;
          var t29 = vm.i32_ge_u(local2, local3);
          if (t29 != 0) break block_label_2;
          var t30 = vm.i64_load(3, 72, local0);
          vm.i64_store(3, 72, arg1, t30);
          var t31 = vm.i32_add(local2, 8);
          local2 = t31;
          var t32 = vm.i32_ge_u(local2, local3);
          if (t32 != 0) break block_label_2;
          var t33 = vm.i64_load(3, 80, local0);
          vm.i64_store(3, 80, arg1, t33);
          var t34 = vm.i32_add(local2, 8);
          local2 = t34;
          var t35 = vm.i32_ge_u(local2, local3);
          if (t35 != 0) break block_label_2;
          var t36 = vm.i64_load(3, 88, local0);
          vm.i64_store(3, 88, arg1, t36);
          var t37 = vm.i32_add(local2, 8);
          local2 = t37;
          var t38 = vm.i32_ge_u(local2, local3);
          if (t38 != 0) break block_label_2;
          var t39 = vm.i64_load(3, 96, local0);
          vm.i64_store(3, 96, arg1, t39);
          var t40 = vm.i32_add(local2, 8);
          local2 = t40;
          var t41 = vm.i32_ge_u(local2, local3);
          if (t41 != 0) break block_label_2;
          var t42 = vm.i64_load(3, 104, local0);
          vm.i64_store(3, 104, arg1, t42);
          var t43 = vm.i32_add(local2, 8);
          local2 = t43;
          var t44 = vm.i32_ge_u(local2, local3);
          if (t44 != 0) break block_label_2;
          var t45 = vm.i64_load(3, 112, local0);
          vm.i64_store(3, 112, arg1, t45);
          var t46 = vm.i32_add(local2, 8);
          local2 = t46;
          var t47 = vm.i32_ge_u(local2, local3);
          if (t47 != 0) break block_label_2;
          var t48 = vm.i64_load(3, 120, local0);
          vm.i64_store(3, 120, arg1, t48);
          var t49 = vm.i32_add(local2, 8);
          local2 = t49;
          var t50 = vm.i32_ge_u(local2, local3);
          if (t50 != 0) break block_label_2;
          var t51 = vm.i64_load(3, 128, local0);
          vm.i64_store(3, 128, arg1, t51);
          var t52 = vm.i32_add(local2, 8);
          local2 = t52;
          var t53 = vm.i32_ge_u(local2, local3);
          if (t53 != 0) break block_label_2;
          var t54 = vm.i64_load(3, 136, local0);
          vm.i64_store(3, 136, arg1, t54);
          var t55 = vm.i32_add(local2, 8);
          local2 = t55;
          var t56 = vm.i32_ge_u(local2, local3);
          if (t56 != 0) break block_label_2;
          var t57 = vm.i64_load(3, 144, local0);
          vm.i64_store(3, 144, arg1, t57);
          var t58 = vm.i32_add(local2, 8);
          local2 = t58;
          var t59 = vm.i32_ge_u(local2, local3);
          if (t59 != 0) break block_label_2;
          var t60 = vm.i64_load(3, 152, local0);
          vm.i64_store(3, 152, arg1, t60);
          var t61 = vm.i32_add(local2, 8);
          local2 = t61;
          var t62 = vm.i32_ge_u(local2, local3);
          if (t62 != 0) break block_label_2;
          var t63 = vm.i64_load(3, 160, local0);
          vm.i64_store(3, 160, arg1, t63);
          var t64 = vm.i32_add(local2, 8);
          local2 = t64;
          var t65 = vm.i32_ge_u(local2, local3);
          if (t65 != 0) break block_label_2;
          var t66 = vm.i64_load(3, 168, local0);
          vm.i64_store(3, 168, arg1, t66);
          var t67 = vm.i32_add(local2, 8);
          local2 = t67;
          var t68 = vm.i32_ge_u(local2, local3);
          if (t68 != 0) break block_label_2;
          var t69 = vm.i64_load(3, 176, local0);
          vm.i64_store(3, 176, arg1, t69);
          var t70 = vm.i32_add(local2, 8);
          local2 = t70;
          var t71 = vm.i32_ge_u(local2, local3);
          if (t71 != 0) break block_label_2;
          var t72 = vm.i64_load(3, 184, local0);
          vm.i64_store(3, 184, arg1, t72);
          var t73 = vm.i32_add(local2, 8);
          local2 = t73;
          var t74 = vm.i32_ge_u(local2, local3);
          if (t74 != 0) break block_label_2;
          var t75 = vm.i64_load(3, 192, local0);
          vm.i64_store(3, 192, arg1, t75);
        }
        var t76 = vm.i32_ge_u(local1, arg2);
        if (t76 != 0) break block_label_0;
        var t77 = vm.i32_add(arg1, local3);
        arg1 = t77;
        var t78 = vm.i32_add(local1, local3);
        local1 = t78;
        _func5(arg0);
        continue loop_label_1;
        break;
      }
    }
  }

  void _func4() {
    globals.global50 = globals.global0;
    globals.global52 = globals.global2;
    globals.global54 = globals.global4;
    globals.global56 = globals.global6;
    globals.global58 = globals.global8;
    var t0 = vm.i64_xor(globals.global50, globals.global10);
    globals.global50 = t0;
    var t1 = vm.i64_xor(globals.global50, globals.global20);
    globals.global50 = t1;
    var t2 = vm.i64_xor(globals.global50, globals.global30);
    globals.global50 = t2;
    var t3 = vm.i64_xor(globals.global50, globals.global40);
    globals.global50 = t3;
    var t4 = vm.i64_xor(globals.global52, globals.global12);
    globals.global52 = t4;
    var t5 = vm.i64_xor(globals.global52, globals.global22);
    globals.global52 = t5;
    var t6 = vm.i64_xor(globals.global52, globals.global32);
    globals.global52 = t6;
    var t7 = vm.i64_xor(globals.global52, globals.global42);
    globals.global52 = t7;
    var t8 = vm.i64_xor(globals.global54, globals.global14);
    globals.global54 = t8;
    var t9 = vm.i64_xor(globals.global54, globals.global24);
    globals.global54 = t9;
    var t10 = vm.i64_xor(globals.global54, globals.global34);
    globals.global54 = t10;
    var t11 = vm.i64_xor(globals.global54, globals.global44);
    globals.global54 = t11;
    var t12 = vm.i64_xor(globals.global56, globals.global16);
    globals.global56 = t12;
    var t13 = vm.i64_xor(globals.global56, globals.global26);
    globals.global56 = t13;
    var t14 = vm.i64_xor(globals.global56, globals.global36);
    globals.global56 = t14;
    var t15 = vm.i64_xor(globals.global56, globals.global46);
    globals.global56 = t15;
    var t16 = vm.i64_xor(globals.global58, globals.global18);
    globals.global58 = t16;
    var t17 = vm.i64_xor(globals.global58, globals.global28);
    globals.global58 = t17;
    var t18 = vm.i64_xor(globals.global58, globals.global38);
    globals.global58 = t18;
    var t19 = vm.i64_xor(globals.global58, globals.global48);
    globals.global58 = t19;
    var t20 = vm.i64_rotl(globals.global52, 1);
    var t21 = vm.i64_xor(t20, globals.global58);
    globals.global51 = t21;
    var t22 = vm.i64_xor(globals.global0, globals.global51);
    globals.global0 = t22;
    var t23 = vm.i64_xor(globals.global10, globals.global51);
    globals.global10 = t23;
    var t24 = vm.i64_xor(globals.global20, globals.global51);
    globals.global20 = t24;
    var t25 = vm.i64_xor(globals.global30, globals.global51);
    globals.global30 = t25;
    var t26 = vm.i64_xor(globals.global40, globals.global51);
    globals.global40 = t26;
    var t27 = vm.i64_rotl(globals.global54, 1);
    var t28 = vm.i64_xor(t27, globals.global50);
    globals.global53 = t28;
    var t29 = vm.i64_xor(globals.global2, globals.global53);
    globals.global2 = t29;
    var t30 = vm.i64_xor(globals.global12, globals.global53);
    globals.global12 = t30;
    var t31 = vm.i64_xor(globals.global22, globals.global53);
    globals.global22 = t31;
    var t32 = vm.i64_xor(globals.global32, globals.global53);
    globals.global32 = t32;
    var t33 = vm.i64_xor(globals.global42, globals.global53);
    globals.global42 = t33;
    var t34 = vm.i64_rotl(globals.global56, 1);
    var t35 = vm.i64_xor(t34, globals.global52);
    globals.global55 = t35;
    var t36 = vm.i64_xor(globals.global4, globals.global55);
    globals.global4 = t36;
    var t37 = vm.i64_xor(globals.global14, globals.global55);
    globals.global14 = t37;
    var t38 = vm.i64_xor(globals.global24, globals.global55);
    globals.global24 = t38;
    var t39 = vm.i64_xor(globals.global34, globals.global55);
    globals.global34 = t39;
    var t40 = vm.i64_xor(globals.global44, globals.global55);
    globals.global44 = t40;
    var t41 = vm.i64_rotl(globals.global58, 1);
    var t42 = vm.i64_xor(t41, globals.global54);
    globals.global57 = t42;
    var t43 = vm.i64_xor(globals.global6, globals.global57);
    globals.global6 = t43;
    var t44 = vm.i64_xor(globals.global16, globals.global57);
    globals.global16 = t44;
    var t45 = vm.i64_xor(globals.global26, globals.global57);
    globals.global26 = t45;
    var t46 = vm.i64_xor(globals.global36, globals.global57);
    globals.global36 = t46;
    var t47 = vm.i64_xor(globals.global46, globals.global57);
    globals.global46 = t47;
    var t48 = vm.i64_rotl(globals.global50, 1);
    var t49 = vm.i64_xor(t48, globals.global56);
    globals.global59 = t49;
    var t50 = vm.i64_xor(globals.global8, globals.global59);
    globals.global8 = t50;
    var t51 = vm.i64_xor(globals.global18, globals.global59);
    globals.global18 = t51;
    var t52 = vm.i64_xor(globals.global28, globals.global59);
    globals.global28 = t52;
    var t53 = vm.i64_xor(globals.global38, globals.global59);
    globals.global38 = t53;
    var t54 = vm.i64_xor(globals.global48, globals.global59);
    globals.global48 = t54;
    globals.global1 = globals.global0;
    var t55 = vm.i64_rotl(globals.global2, 1);
    globals.global21 = t55;
    var t56 = vm.i64_rotl(globals.global20, 3);
    globals.global15 = t56;
    var t57 = vm.i64_rotl(globals.global14, 6);
    globals.global23 = t57;
    var t58 = vm.i64_rotl(globals.global22, 10);
    globals.global35 = t58;
    var t59 = vm.i64_rotl(globals.global34, 15);
    globals.global37 = t59;
    var t60 = vm.i64_rotl(globals.global36, 21);
    globals.global7 = t60;
    var t61 = vm.i64_rotl(globals.global6, 28);
    globals.global11 = t61;
    var t62 = vm.i64_rotr(globals.global10, 28);
    globals.global33 = t62;
    var t63 = vm.i64_rotr(globals.global32, 19);
    globals.global17 = t63;
    var t64 = vm.i64_rotr(globals.global16, 9);
    globals.global43 = t64;
    var t65 = vm.i64_rotr(globals.global42, 62);
    globals.global49 = t65;
    var t66 = vm.i64_rotr(globals.global48, 50);
    globals.global9 = t66;
    var t67 = vm.i64_rotr(globals.global8, 37);
    globals.global31 = t67;
    var t68 = vm.i64_rotr(globals.global30, 23);
    globals.global47 = t68;
    var t69 = vm.i64_rotr(globals.global46, 8);
    globals.global39 = t69;
    var t70 = vm.i64_rotr(globals.global38, 56);
    globals.global27 = t70;
    var t71 = vm.i64_rotr(globals.global26, 39);
    globals.global25 = t71;
    var t72 = vm.i64_rotr(globals.global24, 21);
    globals.global5 = t72;
    var t73 = vm.i64_rotr(globals.global4, 2);
    globals.global41 = t73;
    var t74 = vm.i64_rotr(globals.global40, 46);
    globals.global29 = t74;
    var t75 = vm.i64_rotr(globals.global28, 25);
    globals.global45 = t75;
    var t76 = vm.i64_rotr(globals.global44, 3);
    globals.global19 = t76;
    var t77 = vm.i64_rotr(globals.global18, 44);
    globals.global13 = t77;
    var t78 = vm.i64_rotr(globals.global12, 20);
    globals.global3 = t78;
    var t79 = vm.i64_xor(globals.global3, -1);
    var t80 = vm.i64_and(t79, globals.global5);
    var t81 = vm.i64_xor(t80, globals.global1);
    globals.global0 = t81;
    var t82 = vm.i64_xor(globals.global13, -1);
    var t83 = vm.i64_and(t82, globals.global15);
    var t84 = vm.i64_xor(t83, globals.global11);
    globals.global10 = t84;
    var t85 = vm.i64_xor(globals.global23, -1);
    var t86 = vm.i64_and(t85, globals.global25);
    var t87 = vm.i64_xor(t86, globals.global21);
    globals.global20 = t87;
    var t88 = vm.i64_xor(globals.global33, -1);
    var t89 = vm.i64_and(t88, globals.global35);
    var t90 = vm.i64_xor(t89, globals.global31);
    globals.global30 = t90;
    var t91 = vm.i64_xor(globals.global43, -1);
    var t92 = vm.i64_and(t91, globals.global45);
    var t93 = vm.i64_xor(t92, globals.global41);
    globals.global40 = t93;
    var t94 = vm.i64_xor(globals.global5, -1);
    var t95 = vm.i64_and(t94, globals.global7);
    var t96 = vm.i64_xor(t95, globals.global3);
    globals.global2 = t96;
    var t97 = vm.i64_xor(globals.global15, -1);
    var t98 = vm.i64_and(t97, globals.global17);
    var t99 = vm.i64_xor(t98, globals.global13);
    globals.global12 = t99;
    var t100 = vm.i64_xor(globals.global25, -1);
    var t101 = vm.i64_and(t100, globals.global27);
    var t102 = vm.i64_xor(t101, globals.global23);
    globals.global22 = t102;
    var t103 = vm.i64_xor(globals.global35, -1);
    var t104 = vm.i64_and(t103, globals.global37);
    var t105 = vm.i64_xor(t104, globals.global33);
    globals.global32 = t105;
    var t106 = vm.i64_xor(globals.global45, -1);
    var t107 = vm.i64_and(t106, globals.global47);
    var t108 = vm.i64_xor(t107, globals.global43);
    globals.global42 = t108;
    var t109 = vm.i64_xor(globals.global7, -1);
    var t110 = vm.i64_and(t109, globals.global9);
    var t111 = vm.i64_xor(t110, globals.global5);
    globals.global4 = t111;
    var t112 = vm.i64_xor(globals.global17, -1);
    var t113 = vm.i64_and(t112, globals.global19);
    var t114 = vm.i64_xor(t113, globals.global15);
    globals.global14 = t114;
    var t115 = vm.i64_xor(globals.global27, -1);
    var t116 = vm.i64_and(t115, globals.global29);
    var t117 = vm.i64_xor(t116, globals.global25);
    globals.global24 = t117;
    var t118 = vm.i64_xor(globals.global37, -1);
    var t119 = vm.i64_and(t118, globals.global39);
    var t120 = vm.i64_xor(t119, globals.global35);
    globals.global34 = t120;
    var t121 = vm.i64_xor(globals.global47, -1);
    var t122 = vm.i64_and(t121, globals.global49);
    var t123 = vm.i64_xor(t122, globals.global45);
    globals.global44 = t123;
    var t124 = vm.i64_xor(globals.global9, -1);
    var t125 = vm.i64_and(t124, globals.global1);
    var t126 = vm.i64_xor(t125, globals.global7);
    globals.global6 = t126;
    var t127 = vm.i64_xor(globals.global19, -1);
    var t128 = vm.i64_and(t127, globals.global11);
    var t129 = vm.i64_xor(t128, globals.global17);
    globals.global16 = t129;
    var t130 = vm.i64_xor(globals.global29, -1);
    var t131 = vm.i64_and(t130, globals.global21);
    var t132 = vm.i64_xor(t131, globals.global27);
    globals.global26 = t132;
    var t133 = vm.i64_xor(globals.global39, -1);
    var t134 = vm.i64_and(t133, globals.global31);
    var t135 = vm.i64_xor(t134, globals.global37);
    globals.global36 = t135;
    var t136 = vm.i64_xor(globals.global49, -1);
    var t137 = vm.i64_and(t136, globals.global41);
    var t138 = vm.i64_xor(t137, globals.global47);
    globals.global46 = t138;
    var t139 = vm.i64_xor(globals.global1, -1);
    var t140 = vm.i64_and(t139, globals.global3);
    var t141 = vm.i64_xor(t140, globals.global9);
    globals.global8 = t141;
    var t142 = vm.i64_xor(globals.global11, -1);
    var t143 = vm.i64_and(t142, globals.global13);
    var t144 = vm.i64_xor(t143, globals.global19);
    globals.global18 = t144;
    var t145 = vm.i64_xor(globals.global21, -1);
    var t146 = vm.i64_and(t145, globals.global23);
    var t147 = vm.i64_xor(t146, globals.global29);
    globals.global28 = t147;
    var t148 = vm.i64_xor(globals.global31, -1);
    var t149 = vm.i64_and(t148, globals.global33);
    var t150 = vm.i64_xor(t149, globals.global39);
    globals.global38 = t150;
    var t151 = vm.i64_xor(globals.global41, -1);
    var t152 = vm.i64_and(t151, globals.global43);
    var t153 = vm.i64_xor(t152, globals.global49);
    globals.global48 = t153;
  }

  void _func5(i32 arg0) {
    i32 local0 = 0;

    var t0 = vm.i32_add(arg0, 8);
    local0 = t0;
    var t1 = vm.i64_load(3, 0, local0);
    globals.global0 = t1;
    var t2 = vm.i64_load(3, 8, local0);
    globals.global2 = t2;
    var t3 = vm.i64_load(3, 16, local0);
    globals.global4 = t3;
    var t4 = vm.i64_load(3, 24, local0);
    globals.global6 = t4;
    var t5 = vm.i64_load(3, 32, local0);
    globals.global8 = t5;
    var t6 = vm.i64_load(3, 40, local0);
    globals.global10 = t6;
    var t7 = vm.i64_load(3, 48, local0);
    globals.global12 = t7;
    var t8 = vm.i64_load(3, 56, local0);
    globals.global14 = t8;
    var t9 = vm.i64_load(3, 64, local0);
    globals.global16 = t9;
    var t10 = vm.i64_load(3, 72, local0);
    globals.global18 = t10;
    var t11 = vm.i64_load(3, 80, local0);
    globals.global20 = t11;
    var t12 = vm.i64_load(3, 88, local0);
    globals.global22 = t12;
    var t13 = vm.i64_load(3, 96, local0);
    globals.global24 = t13;
    var t14 = vm.i64_load(3, 104, local0);
    globals.global26 = t14;
    var t15 = vm.i64_load(3, 112, local0);
    globals.global28 = t15;
    var t16 = vm.i64_load(3, 120, local0);
    globals.global30 = t16;
    var t17 = vm.i64_load(3, 128, local0);
    globals.global32 = t17;
    var t18 = vm.i64_load(3, 136, local0);
    globals.global34 = t18;
    var t19 = vm.i64_load(3, 144, local0);
    globals.global36 = t19;
    var t20 = vm.i64_load(3, 152, local0);
    globals.global38 = t20;
    var t21 = vm.i64_load(3, 160, local0);
    globals.global40 = t21;
    var t22 = vm.i64_load(3, 168, local0);
    globals.global42 = t22;
    var t23 = vm.i64_load(3, 176, local0);
    globals.global44 = t23;
    var t24 = vm.i64_load(3, 184, local0);
    globals.global46 = t24;
    var t25 = vm.i64_load(3, 192, local0);
    globals.global48 = t25;
    _func4();
    var t26 = vm.i64_xor(globals.global0, 1);
    globals.global0 = t26;
    _func4();
    var t27 = vm.i64_xor(globals.global0, 0x8082);
    globals.global0 = t27;
    _func4();
    var t28 = vm.i64_xor(globals.global0, -0x7fffffffffff7f76);
    globals.global0 = t28;
    _func4();
    var t29 = vm.i64_xor(globals.global0, -0x7fffffff7fff8000);
    globals.global0 = t29;
    _func4();
    var t30 = vm.i64_xor(globals.global0, 0x808b);
    globals.global0 = t30;
    _func4();
    var t31 = vm.i64_xor(globals.global0, 0x80000001);
    globals.global0 = t31;
    _func4();
    var t32 = vm.i64_xor(globals.global0, -0x7fffffff7fff7f7f);
    globals.global0 = t32;
    _func4();
    var t33 = vm.i64_xor(globals.global0, -0x7fffffffffff7ff7);
    globals.global0 = t33;
    _func4();
    var t34 = vm.i64_xor(globals.global0, 138);
    globals.global0 = t34;
    _func4();
    var t35 = vm.i64_xor(globals.global0, 136);
    globals.global0 = t35;
    _func4();
    var t36 = vm.i64_xor(globals.global0, 0x80008009);
    globals.global0 = t36;
    _func4();
    var t37 = vm.i64_xor(globals.global0, 0x8000000a);
    globals.global0 = t37;
    _func4();
    var t38 = vm.i64_xor(globals.global0, 0x8000808b);
    globals.global0 = t38;
    _func4();
    var t39 = vm.i64_xor(globals.global0, -0x7fffffffffffff75);
    globals.global0 = t39;
    _func4();
    var t40 = vm.i64_xor(globals.global0, -0x7fffffffffff7f77);
    globals.global0 = t40;
    _func4();
    var t41 = vm.i64_xor(globals.global0, -0x7fffffffffff7ffd);
    globals.global0 = t41;
    _func4();
    var t42 = vm.i64_xor(globals.global0, -0x7fffffffffff7ffe);
    globals.global0 = t42;
    _func4();
    var t43 = vm.i64_xor(globals.global0, -0x7fffffffffffff80);
    globals.global0 = t43;
    _func4();
    var t44 = vm.i64_xor(globals.global0, 0x800a);
    globals.global0 = t44;
    _func4();
    var t45 = vm.i64_xor(globals.global0, -0x7fffffff7ffffff6);
    globals.global0 = t45;
    _func4();
    var t46 = vm.i64_xor(globals.global0, -0x7fffffff7fff7f7f);
    globals.global0 = t46;
    _func4();
    var t47 = vm.i64_xor(globals.global0, -0x7fffffffffff7f80);
    globals.global0 = t47;
    _func4();
    var t48 = vm.i64_xor(globals.global0, 0x80000001);
    globals.global0 = t48;
    _func4();
    var t49 = vm.i64_xor(globals.global0, -0x7fffffff7fff7ff8);
    globals.global0 = t49;
    vm.i64_store(3, 0, local0, globals.global0);
    vm.i64_store(3, 8, local0, globals.global2);
    vm.i64_store(3, 16, local0, globals.global4);
    vm.i64_store(3, 24, local0, globals.global6);
    vm.i64_store(3, 32, local0, globals.global8);
    vm.i64_store(3, 40, local0, globals.global10);
    vm.i64_store(3, 48, local0, globals.global12);
    vm.i64_store(3, 56, local0, globals.global14);
    vm.i64_store(3, 64, local0, globals.global16);
    vm.i64_store(3, 72, local0, globals.global18);
    vm.i64_store(3, 80, local0, globals.global20);
    vm.i64_store(3, 88, local0, globals.global22);
    vm.i64_store(3, 96, local0, globals.global24);
    vm.i64_store(3, 104, local0, globals.global26);
    vm.i64_store(3, 112, local0, globals.global28);
    vm.i64_store(3, 120, local0, globals.global30);
    vm.i64_store(3, 128, local0, globals.global32);
    vm.i64_store(3, 136, local0, globals.global34);
    vm.i64_store(3, 144, local0, globals.global36);
    vm.i64_store(3, 152, local0, globals.global38);
    vm.i64_store(3, 160, local0, globals.global40);
    vm.i64_store(3, 168, local0, globals.global42);
    vm.i64_store(3, 176, local0, globals.global44);
    vm.i64_store(3, 184, local0, globals.global46);
    vm.i64_store(3, 192, local0, globals.global48);
  }
}

typedef FunctionType0 = void Function(i32, i32, i32);
typedef FunctionType1 = i32 Function(i32, i32, i32, i32);
typedef FunctionType2 = i32 Function(i32, i32, i32);
typedef FunctionType3 = void Function();
typedef FunctionType4 = void Function(i32);

class Globals {
  i64 global0 = 0;

  i64 global1 = 0;

  i64 global2 = 0;

  i64 global3 = 0;

  i64 global4 = 0;

  i64 global5 = 0;

  i64 global6 = 0;

  i64 global7 = 0;

  i64 global8 = 0;

  i64 global9 = 0;

  i64 global10 = 0;

  i64 global11 = 0;

  i64 global12 = 0;

  i64 global13 = 0;

  i64 global14 = 0;

  i64 global15 = 0;

  i64 global16 = 0;

  i64 global17 = 0;

  i64 global18 = 0;

  i64 global19 = 0;

  i64 global20 = 0;

  i64 global21 = 0;

  i64 global22 = 0;

  i64 global23 = 0;

  i64 global24 = 0;

  i64 global25 = 0;

  i64 global26 = 0;

  i64 global27 = 0;

  i64 global28 = 0;

  i64 global29 = 0;

  i64 global30 = 0;

  i64 global31 = 0;

  i64 global32 = 0;

  i64 global33 = 0;

  i64 global34 = 0;

  i64 global35 = 0;

  i64 global36 = 0;

  i64 global37 = 0;

  i64 global38 = 0;

  i64 global39 = 0;

  i64 global40 = 0;

  i64 global41 = 0;

  i64 global42 = 0;

  i64 global43 = 0;

  i64 global44 = 0;

  i64 global45 = 0;

  i64 global46 = 0;

  i64 global47 = 0;

  i64 global48 = 0;

  i64 global49 = 0;

  i64 global50 = 0;

  i64 global51 = 0;

  i64 global52 = 0;

  i64 global53 = 0;

  i64 global54 = 0;

  i64 global55 = 0;

  i64 global56 = 0;

  i64 global57 = 0;

  i64 global58 = 0;

  i64 global59 = 0;
}
