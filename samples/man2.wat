;; INFO asc module.ts --textFile module.wat --outFile module.wasm --bindings raw -O3 --runtime stub --importMemory --use Math=JSMath
(module
 (type $f64_=>_f64 (func (param f64) (result f64) ))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32) ))
 (import "env" "memory" (memory $0 0))
 (import "env" "Math.log" (func $~lib/bindings/dom/Math.log (param f64) (result f64)))
 (import "env" "Math.log2" (func $~lib/bindings/dom/Math.log2 (param f64) (result f64)))
 (export "update" (func $module/update))
 (export "memory" (memory $0))
 (func $module/update (type $i32_i32_i32_=>_none) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f64)
  (local $15 i32)
  (local $16 i32)
  (local $17 f64)
  local.get $1
  f64.convert_i32_u
  f64.const 0.5
  f64.mul
  local.set $7
  local.get $0
  f64.convert_i32_u
  f64.const 0.625
  f64.mul
  f64.const 10
  local.get $0
  i32.const 1
  i32.shl
  local.tee $12
  local.get $1
  i32.const 2
  i32.shl
  local.tee $13
  local.get $12
  local.get $13
  i32.lt_s
  select
  f64.convert_i32_s
  f64.div
  local.tee $10
  f64.mul
  local.set $6
  f64.const 1
  local.get $2
  f64.convert_i32_u
  f64.div
  local.set $5
  i32.const 8
  local.get $2
  local.get $2
  i32.const 8
  i32.gt_u
  select
  local.set $15
  loop $for-loop|0
   local.get $1
   local.get $11
   i32.gt_u
   if
    local.get $11
    f64.convert_i32_u
    local.get $7
    f64.sub
    local.get $10
    f64.mul
    local.set $9
    local.get $0
    local.get $11
    i32.mul
    i32.const 1
    i32.shl
    local.set $16
    i32.const 0
    local.set $12
    loop $for-loop|1
     local.get $0
     local.get $12
     i32.gt_u
     if
      local.get $12
      f64.convert_i32_u
      local.get $10
      f64.mul
      local.get $6
      f64.sub
      local.set $8
      f64.const 0
      local.set $3
      f64.const 0
      local.set $14
      i32.const 0
      local.set $13
      loop $while-continue|2
       local.get $3
       local.get $3
       f64.mul
       local.tee $4
       local.get $14
       local.get $14
       f64.mul
       local.tee $17
       f64.add
       f64.const 4
       f64.le
       if
        block $while-break|2
         local.get $3
         local.get $3
         f64.add
         local.get $14
         f64.mul
         local.get $9
         f64.add
         local.set $14
         local.get $4
         local.get $17
         f64.sub
         local.get $8
         f64.add
         local.set $3
         local.get $2
         local.get $13
         i32.le_u
         br_if $while-break|2
         local.get $13
         i32.const 1
         i32.add
         local.set $13
         br $while-continue|2
        end
       end
      end
      loop $while-continue|3
       local.get $13
       local.get $15
       i32.lt_u
       if
        local.get $3
        local.get $3
        f64.mul
        local.get $14
        local.get $14
        f64.mul
        f64.sub
        local.get $8
        f64.add
        local.set $4
        local.get $3
        local.get $3
        f64.add
        local.get $14
        f64.mul
        local.get $9
        f64.add
        local.set $14
        local.get $4
        local.set $3
        local.get $13
        i32.const 1
        i32.add
        local.set $13
        br $while-continue|3
       end
      end
      local.get $16
      local.get $12
      i32.const 1
      i32.shl
      i32.add
      local.get $3
      local.get $3
      f64.mul
      local.get $14
      local.get $14
      f64.mul
      f64.add
      local.tee $3
      f64.const 1
      f64.gt
      if (result i32)
       local.get $13
       i32.const 1
       i32.add
       f64.convert_i32_u
       local.get $3
       call $~lib/bindings/dom/Math.log
       f64.const 0.5
       f64.mul
       call $~lib/bindings/dom/Math.log2
       f64.sub
       local.get $5
       f64.mul
       f64.const 0
       f64.max
       f64.const 1
       f64.min
       f64.const 215
       f64.mul
       i32.trunc_sat_f64_u
      else
       i32.const 215
      end
      i32.store16 $0
      local.get $12
      i32.const 1
      i32.add
      local.set $12
      br $for-loop|1
     end
    end
    local.get $11
    i32.const 1
    i32.add
    local.set $11
    br $for-loop|0
   end
  end
 )
)
