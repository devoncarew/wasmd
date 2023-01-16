// Generated from test/spec/align/align.106.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Align106Module implements Module {
  Align106Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  f32 f32_align_switch(i32 arg0) => _func0(arg0);
  f64 f64_align_switch(i32 arg0) => _func1(arg0);
  i32 i32_align_switch(i32 arg0, i32 arg1) => _func2(arg0, arg1);
  i64 i64_align_switch(i32 arg0, i32 arg1) => _func3(arg0, arg1);

  f32 _func0(i32 arg0) {
    f32 local0 = 0;
    f32 local1 = 0;

    local0 = 10.0;
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
              switch (arg0) {
                case 0:
                  break block_label_4;
                case 1:
                  break block_label_3;
                case 2:
                  break block_label_2;
                case 3:
                  break block_label_1;
                default:
                  break block_label_0;
              }
            }
            var t0 = vm.f32_store(2, 0, 0, local0);
            var t1 = vm.f32_load(2, 0, 0);
            local1 = t1;
            break block_label_0;
          }
          var t2 = vm.f32_store(0, 0, 0, local0);
          var t3 = vm.f32_load(0, 0, 0);
          local1 = t3;
          break block_label_0;
        }
        var t4 = vm.f32_store(1, 0, 0, local0);
        var t5 = vm.f32_load(1, 0, 0);
        local1 = t5;
        break block_label_0;
      }
      var t6 = vm.f32_store(2, 0, 0, local0);
      var t7 = vm.f32_load(2, 0, 0);
      local1 = t7;
    }
    return local1;
  }

  f64 _func1(i32 arg0) {
    f64 local0 = 0;
    f64 local1 = 0;

    local0 = 10.0;
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
              block_label_5:
              {
                switch (arg0) {
                  case 0:
                    break block_label_5;
                  case 1:
                    break block_label_4;
                  case 2:
                    break block_label_3;
                  case 3:
                    break block_label_2;
                  case 4:
                    break block_label_1;
                  default:
                    break block_label_0;
                }
              }
              var t0 = vm.f64_store(3, 0, 0, local0);
              var t1 = vm.f64_load(3, 0, 0);
              local1 = t1;
              break block_label_0;
            }
            var t2 = vm.f64_store(0, 0, 0, local0);
            var t3 = vm.f64_load(0, 0, 0);
            local1 = t3;
            break block_label_0;
          }
          var t4 = vm.f64_store(1, 0, 0, local0);
          var t5 = vm.f64_load(1, 0, 0);
          local1 = t5;
          break block_label_0;
        }
        var t6 = vm.f64_store(2, 0, 0, local0);
        var t7 = vm.f64_load(2, 0, 0);
        local1 = t7;
        break block_label_0;
      }
      var t8 = vm.f64_store(3, 0, 0, local0);
      var t9 = vm.f64_load(3, 0, 0);
      local1 = t9;
    }
    return local1;
  }

  i32 _func2(i32 arg0, i32 arg1) {
    i32 local0 = 0;
    i32 local1 = 0;

    local0 = 10;
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
              block_label_5:
              {
                switch (arg0) {
                  case 0:
                    break block_label_5;
                  case 1:
                    break block_label_4;
                  case 2:
                    break block_label_3;
                  case 3:
                    break block_label_2;
                  case 4:
                    break block_label_1;
                  default:
                    break block_label_0;
                }
              }
              var t0 = vm.i32_eq(arg1, 0);
              if_label_5:
              if (t0 != 0) {
                var t1 = vm.i32_store8(0, 0, 0, local0);
                var t2 = vm.i32_load8_s(0, 0, 0);
                local1 = t2;
              }
              var t3 = vm.i32_eq(arg1, 1);
              if_label_5:
              if (t3 != 0) {
                var t4 = vm.i32_store8(0, 0, 0, local0);
                var t5 = vm.i32_load8_s(0, 0, 0);
                local1 = t5;
              }
              break block_label_0;
            }
            var t6 = vm.i32_eq(arg1, 0);
            if_label_4:
            if (t6 != 0) {
              var t7 = vm.i32_store8(0, 0, 0, local0);
              var t8 = vm.i32_load8_u(0, 0, 0);
              local1 = t8;
            }
            var t9 = vm.i32_eq(arg1, 1);
            if_label_4:
            if (t9 != 0) {
              var t10 = vm.i32_store8(0, 0, 0, local0);
              var t11 = vm.i32_load8_u(0, 0, 0);
              local1 = t11;
            }
            break block_label_0;
          }
          var t12 = vm.i32_eq(arg1, 0);
          if_label_3:
          if (t12 != 0) {
            var t13 = vm.i32_store16(1, 0, 0, local0);
            var t14 = vm.i32_load16_s(1, 0, 0);
            local1 = t14;
          }
          var t15 = vm.i32_eq(arg1, 1);
          if_label_3:
          if (t15 != 0) {
            var t16 = vm.i32_store16(0, 0, 0, local0);
            var t17 = vm.i32_load16_s(0, 0, 0);
            local1 = t17;
          }
          var t18 = vm.i32_eq(arg1, 2);
          if_label_3:
          if (t18 != 0) {
            var t19 = vm.i32_store16(1, 0, 0, local0);
            var t20 = vm.i32_load16_s(1, 0, 0);
            local1 = t20;
          }
          break block_label_0;
        }
        var t21 = vm.i32_eq(arg1, 0);
        if_label_2:
        if (t21 != 0) {
          var t22 = vm.i32_store16(1, 0, 0, local0);
          var t23 = vm.i32_load16_u(1, 0, 0);
          local1 = t23;
        }
        var t24 = vm.i32_eq(arg1, 1);
        if_label_2:
        if (t24 != 0) {
          var t25 = vm.i32_store16(0, 0, 0, local0);
          var t26 = vm.i32_load16_u(0, 0, 0);
          local1 = t26;
        }
        var t27 = vm.i32_eq(arg1, 2);
        if_label_2:
        if (t27 != 0) {
          var t28 = vm.i32_store16(1, 0, 0, local0);
          var t29 = vm.i32_load16_u(1, 0, 0);
          local1 = t29;
        }
        break block_label_0;
      }
      var t30 = vm.i32_eq(arg1, 0);
      if_label_1:
      if (t30 != 0) {
        var t31 = vm.i32_store(2, 0, 0, local0);
        var t32 = vm.i32_load(2, 0, 0);
        local1 = t32;
      }
      var t33 = vm.i32_eq(arg1, 1);
      if_label_1:
      if (t33 != 0) {
        var t34 = vm.i32_store(0, 0, 0, local0);
        var t35 = vm.i32_load(0, 0, 0);
        local1 = t35;
      }
      var t36 = vm.i32_eq(arg1, 2);
      if_label_1:
      if (t36 != 0) {
        var t37 = vm.i32_store(1, 0, 0, local0);
        var t38 = vm.i32_load(1, 0, 0);
        local1 = t38;
      }
      var t39 = vm.i32_eq(arg1, 4);
      if_label_1:
      if (t39 != 0) {
        var t40 = vm.i32_store(2, 0, 0, local0);
        var t41 = vm.i32_load(2, 0, 0);
        local1 = t41;
      }
    }
    return local1;
  }

  i64 _func3(i32 arg0, i32 arg1) {
    i64 local0 = 0;
    i64 local1 = 0;

    local0 = 10;
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
              block_label_5:
              {
                block_label_6:
                {
                  block_label_7:
                  {
                    switch (arg0) {
                      case 0:
                        break block_label_7;
                      case 1:
                        break block_label_6;
                      case 2:
                        break block_label_5;
                      case 3:
                        break block_label_4;
                      case 4:
                        break block_label_3;
                      case 5:
                        break block_label_2;
                      case 6:
                        break block_label_1;
                      default:
                        break block_label_0;
                    }
                  }
                  var t0 = vm.i32_eq(arg1, 0);
                  if_label_7:
                  if (t0 != 0) {
                    var t1 = vm.i64_store8(0, 0, 0, local0);
                    var t2 = vm.i64_load8_s(0, 0, 0);
                    local1 = t2;
                  }
                  var t3 = vm.i32_eq(arg1, 1);
                  if_label_7:
                  if (t3 != 0) {
                    var t4 = vm.i64_store8(0, 0, 0, local0);
                    var t5 = vm.i64_load8_s(0, 0, 0);
                    local1 = t5;
                  }
                  break block_label_0;
                }
                var t6 = vm.i32_eq(arg1, 0);
                if_label_6:
                if (t6 != 0) {
                  var t7 = vm.i64_store8(0, 0, 0, local0);
                  var t8 = vm.i64_load8_u(0, 0, 0);
                  local1 = t8;
                }
                var t9 = vm.i32_eq(arg1, 1);
                if_label_6:
                if (t9 != 0) {
                  var t10 = vm.i64_store8(0, 0, 0, local0);
                  var t11 = vm.i64_load8_u(0, 0, 0);
                  local1 = t11;
                }
                break block_label_0;
              }
              var t12 = vm.i32_eq(arg1, 0);
              if_label_5:
              if (t12 != 0) {
                var t13 = vm.i64_store16(1, 0, 0, local0);
                var t14 = vm.i64_load16_s(1, 0, 0);
                local1 = t14;
              }
              var t15 = vm.i32_eq(arg1, 1);
              if_label_5:
              if (t15 != 0) {
                var t16 = vm.i64_store16(0, 0, 0, local0);
                var t17 = vm.i64_load16_s(0, 0, 0);
                local1 = t17;
              }
              var t18 = vm.i32_eq(arg1, 2);
              if_label_5:
              if (t18 != 0) {
                var t19 = vm.i64_store16(1, 0, 0, local0);
                var t20 = vm.i64_load16_s(1, 0, 0);
                local1 = t20;
              }
              break block_label_0;
            }
            var t21 = vm.i32_eq(arg1, 0);
            if_label_4:
            if (t21 != 0) {
              var t22 = vm.i64_store16(1, 0, 0, local0);
              var t23 = vm.i64_load16_u(1, 0, 0);
              local1 = t23;
            }
            var t24 = vm.i32_eq(arg1, 1);
            if_label_4:
            if (t24 != 0) {
              var t25 = vm.i64_store16(0, 0, 0, local0);
              var t26 = vm.i64_load16_u(0, 0, 0);
              local1 = t26;
            }
            var t27 = vm.i32_eq(arg1, 2);
            if_label_4:
            if (t27 != 0) {
              var t28 = vm.i64_store16(1, 0, 0, local0);
              var t29 = vm.i64_load16_u(1, 0, 0);
              local1 = t29;
            }
            break block_label_0;
          }
          var t30 = vm.i32_eq(arg1, 0);
          if_label_3:
          if (t30 != 0) {
            var t31 = vm.i64_store32(2, 0, 0, local0);
            var t32 = vm.i64_load32_s(2, 0, 0);
            local1 = t32;
          }
          var t33 = vm.i32_eq(arg1, 1);
          if_label_3:
          if (t33 != 0) {
            var t34 = vm.i64_store32(0, 0, 0, local0);
            var t35 = vm.i64_load32_s(0, 0, 0);
            local1 = t35;
          }
          var t36 = vm.i32_eq(arg1, 2);
          if_label_3:
          if (t36 != 0) {
            var t37 = vm.i64_store32(1, 0, 0, local0);
            var t38 = vm.i64_load32_s(1, 0, 0);
            local1 = t38;
          }
          var t39 = vm.i32_eq(arg1, 4);
          if_label_3:
          if (t39 != 0) {
            var t40 = vm.i64_store32(2, 0, 0, local0);
            var t41 = vm.i64_load32_s(2, 0, 0);
            local1 = t41;
          }
          break block_label_0;
        }
        var t42 = vm.i32_eq(arg1, 0);
        if_label_2:
        if (t42 != 0) {
          var t43 = vm.i64_store32(2, 0, 0, local0);
          var t44 = vm.i64_load32_u(2, 0, 0);
          local1 = t44;
        }
        var t45 = vm.i32_eq(arg1, 1);
        if_label_2:
        if (t45 != 0) {
          var t46 = vm.i64_store32(0, 0, 0, local0);
          var t47 = vm.i64_load32_u(0, 0, 0);
          local1 = t47;
        }
        var t48 = vm.i32_eq(arg1, 2);
        if_label_2:
        if (t48 != 0) {
          var t49 = vm.i64_store32(1, 0, 0, local0);
          var t50 = vm.i64_load32_u(1, 0, 0);
          local1 = t50;
        }
        var t51 = vm.i32_eq(arg1, 4);
        if_label_2:
        if (t51 != 0) {
          var t52 = vm.i64_store32(2, 0, 0, local0);
          var t53 = vm.i64_load32_u(2, 0, 0);
          local1 = t53;
        }
        break block_label_0;
      }
      var t54 = vm.i32_eq(arg1, 0);
      if_label_1:
      if (t54 != 0) {
        var t55 = vm.i64_store(3, 0, 0, local0);
        var t56 = vm.i64_load(3, 0, 0);
        local1 = t56;
      }
      var t57 = vm.i32_eq(arg1, 1);
      if_label_1:
      if (t57 != 0) {
        var t58 = vm.i64_store(0, 0, 0, local0);
        var t59 = vm.i64_load(0, 0, 0);
        local1 = t59;
      }
      var t60 = vm.i32_eq(arg1, 2);
      if_label_1:
      if (t60 != 0) {
        var t61 = vm.i64_store(1, 0, 0, local0);
        var t62 = vm.i64_load(1, 0, 0);
        local1 = t62;
      }
      var t63 = vm.i32_eq(arg1, 4);
      if_label_1:
      if (t63 != 0) {
        var t64 = vm.i64_store(2, 0, 0, local0);
        var t65 = vm.i64_load(2, 0, 0);
        local1 = t65;
      }
      var t66 = vm.i32_eq(arg1, 8);
      if_label_1:
      if (t66 != 0) {
        var t67 = vm.i64_store(3, 0, 0, local0);
        var t68 = vm.i64_load(3, 0, 0);
        local1 = t68;
      }
    }
    return local1;
  }
}

typedef FunctionType0 = f32 Function(i32);
typedef FunctionType1 = f64 Function(i32);
typedef FunctionType2 = i32 Function(i32, i32);
typedef FunctionType3 = i64 Function(i32, i32);
