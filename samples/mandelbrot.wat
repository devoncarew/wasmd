(module
  (type (;0;) (func (param f64) (result f64)))
  (type (;1;) (func (param i32 i32 i32 i32)))
  (import "env" "Math.log" (func (;0;) (type 0)))
  (import "env" "Math.log2" (func (;1;) (type 0)))
;;  (import "env" "memory" (memory (;0;) 0))
  (memory (export "memory") 10)
  (func (;2;) (type 1) (param i32 i32 i32 i32)
    (local f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 i32)
    local.get 0
    f64.convert_i32_u
    local.get 2
    f64.convert_i32_u
    f64.const 0x1p-1 (;=0.5;)
    f64.mul
    f64.sub
    f64.const 0x1.4p+3 (;=10;)
    local.get 1
    i32.const 3
    i32.mul
    local.tee 14
    local.get 2
    i32.const 2
    i32.shl
    local.tee 2
    local.get 2
    local.get 14
    i32.gt_s
    select
    f64.convert_i32_s
    f64.div
    local.tee 10
    f64.mul
    local.set 9
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.4p-1 (;=0.625;)
    f64.mul
    local.get 10
    f64.mul
    local.set 7
    local.get 0
    local.get 1
    i32.mul
    i32.const 1
    i32.shl
    local.set 2
    f64.const 0x1p+0 (;=1;)
    local.get 3
    f64.convert_i32_u
    f64.div
    local.set 6
    i32.const 8
    local.get 3
    local.get 3
    i32.const 8
    i32.gt_u
    select
    local.set 14
    loop  ;; label = @1
      local.get 1
      local.get 13
      i32.gt_u
      if  ;; label = @2
        local.get 13
        f64.convert_i32_u
        local.get 10
        f64.mul
        local.get 7
        f64.sub
        local.set 8
        f64.const 0x0p+0 (;=0;)
        local.set 4
        f64.const 0x0p+0 (;=0;)
        local.set 11
        i32.const 0
        local.set 0
        loop  ;; label = @3
          local.get 4
          local.get 4
          f64.mul
          local.tee 5
          local.get 11
          local.get 11
          f64.mul
          local.tee 12
          f64.add
          f64.const 0x1p+2 (;=4;)
          f64.le
          if  ;; label = @4
            block  ;; label = @5
              local.get 4
              local.get 4
              f64.add
              local.get 11
              f64.mul
              local.get 9
              f64.add
              local.set 11
              local.get 5
              local.get 12
              f64.sub
              local.get 8
              f64.add
              local.set 4
              local.get 0
              local.get 3
              i32.ge_u
              br_if 0 (;@5;)
              local.get 0
              i32.const 1
              i32.add
              local.set 0
              br 2 (;@3;)
            end
          end
        end
        loop  ;; label = @3
          local.get 0
          local.get 14
          i32.lt_u
          if  ;; label = @4
            local.get 4
            local.get 4
            f64.mul
            local.get 11
            local.get 11
            f64.mul
            f64.sub
            local.get 8
            f64.add
            local.set 5
            local.get 4
            local.get 4
            f64.add
            local.get 11
            f64.mul
            local.get 9
            f64.add
            local.set 11
            local.get 5
            local.set 4
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            br 1 (;@3;)
          end
        end
        local.get 2
        local.get 13
        i32.const 1
        i32.shl
        i32.add
        local.get 4
        local.get 4
        f64.mul
        local.get 11
        local.get 11
        f64.mul
        f64.add
        local.tee 4
        f64.const 0x1p+0 (;=1;)
        f64.gt
        if (result i32)  ;; label = @3
          local.get 0
          i32.const 1
          i32.add
          f64.convert_i32_u
          local.get 4
          call 0
          f64.const 0x1p-1 (;=0.5;)
          f64.mul
          call 1
          f64.sub
          local.get 6
          f64.mul
          f64.const 0x0p+0 (;=0;)
          f64.max
          f64.const 0x1p+0 (;=1;)
          f64.min
          f64.const 0x1.ffcp+10 (;=2047;)
          f64.mul
          i32.trunc_sat_f64_u
        else
          i32.const 2047
        end
        i32.store16
        local.get 13
        i32.const 1
        i32.add
        local.set 13
        br 1 (;@1;)
      end
    end)
  (export "computeLine" (func 2))
;;  (export "memory" (memory 0))
)
