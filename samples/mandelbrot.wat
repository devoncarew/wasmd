;; INFO asc module.ts --textFile module.wat --outFile module.wasm --bindings raw --debug --runtime stub --importMemory --use Math=JSMath
(module
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $f64_f64_f64_=>_f64 (func (param f64 f64 f64) (result f64)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))

 (import "env" "memory" (memory $0 0))
 (import "env" "Math.log" (func $~lib/bindings/dom/Math.log (param f64) (result f64)))
 (import "env" "Math.log2" (func $~lib/bindings/dom/Math.log2 (param f64) (result f64)))

 (global $module/NUM_COLORS i32 (i32.const 216))

 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))

 (export "update" (func $module/update))
 (export "memory" (memory $0))

 (func $module/clamp<f64> (type $f64_f64_f64_=>_f64) (param $value f64) (param $minValue f64) (param $maxValue f64) (result f64)
  local.get $value
  local.get $minValue
  f64.max
  local.get $maxValue
  f64.min
  return
 )

 (func $module/update (type $i32_i32_i32_=>_none) (param $width i32) (param $height i32) (param $limit i32)
  (local $translateX f64)
  (local $translateY f64)
  (local $5 i32)
  (local $6 i32)
  (local $scale f64)
  (local $realOffset f64)
  (local $invLimit f64)
  (local $10 i32)
  (local $11 i32)
  (local $minIterations i32)
  (local $y i32)
  (local $imaginary f64)
  (local $yOffset i32)
  (local $x i32)
  (local $real f64)
  (local $ix f64)
  (local $iy f64)
  (local $ixSq f64)
  (local $iySq f64)
  (local $iteration i32)
  (local $ixNew f64)
  (local $colorIndex i32)
  (local $distanceSq f64)
  (local $fraction f64)
  local.get $width
  f64.convert_i32_u
  f64.const 1
  f64.const 1.6
  f64.div
  f64.mul
  local.set $translateX
  local.get $height
  f64.convert_i32_u
  f64.const 1
  f64.const 2
  f64.div
  f64.mul
  local.set $translateY
  f64.const 10
  i32.const 3
  local.get $width
  i32.mul
  local.tee $5
  i32.const 4
  local.get $height
  i32.mul
  local.tee $6
  local.get $5
  local.get $6
  i32.lt_s
  select
  f64.convert_i32_s
  f64.div
  local.set $scale
  local.get $translateX
  local.get $scale
  f64.mul
  local.set $realOffset
  f64.const 1
  local.get $limit
  f64.convert_i32_u
  f64.div
  local.set $invLimit
  i32.const 8
  local.tee $10
  local.get $limit
  local.tee $11
  local.get $10
  local.get $11
  i32.lt_u
  select
  local.set $minIterations
  i32.const 0
  local.set $y
  loop $for-loop|0
   local.get $y
   local.get $height
   i32.lt_u
   if
    local.get $y
    f64.convert_i32_u
    local.get $translateY
    f64.sub
    local.get $scale
    f64.mul
    local.set $imaginary
    local.get $y
    local.get $width
    i32.mul
    i32.const 1
    i32.shl
    local.set $yOffset
    i32.const 0
    local.set $x
    loop $for-loop|1
     local.get $x
     local.get $width
     i32.lt_u
     if
      local.get $x
      f64.convert_i32_u
      local.get $scale
      f64.mul
      local.get $realOffset
      f64.sub
      local.set $real
      f64.const 0
      local.set $ix
      f64.const 0
      local.set $iy
      i32.const 0
      local.set $iteration
      block $while-break|2
       loop $while-continue|2
        local.get $ix
        local.get $ix
        f64.mul
        local.tee $ixSq
        local.get $iy
        local.get $iy
        f64.mul
        local.tee $iySq
        f64.add
        f64.const 4
        f64.le
        if
         f64.const 2
         local.get $ix
         f64.mul
         local.get $iy
         f64.mul
         local.get $imaginary
         f64.add
         local.set $iy
         local.get $ixSq
         local.get $iySq
         f64.sub
         local.get $real
         f64.add
         local.set $ix
         local.get $iteration
         local.get $limit
         i32.ge_u
         if
          br $while-break|2
         end
         local.get $iteration
         i32.const 1
         i32.add
         local.set $iteration
         br $while-continue|2
        end
       end
      end
      loop $while-continue|3
       local.get $iteration
       local.get $minIterations
       i32.lt_u
       if
        local.get $ix
        local.get $ix
        f64.mul
        local.get $iy
        local.get $iy
        f64.mul
        f64.sub
        local.get $real
        f64.add
        local.set $ixNew
        f64.const 2
        local.get $ix
        f64.mul
        local.get $iy
        f64.mul
        local.get $imaginary
        f64.add
        local.set $iy
        local.get $ixNew
        local.set $ix
        local.get $iteration
        i32.const 1
        i32.add
        local.set $iteration
        br $while-continue|3
       end
      end
      global.get $module/NUM_COLORS
      i32.const 1
      i32.sub
      local.set $colorIndex
      local.get $ix
      local.get $ix
      f64.mul
      local.get $iy
      local.get $iy
      f64.mul
      f64.add
      local.set $distanceSq
      local.get $distanceSq
      f64.const 1
      f64.gt
      if
       f64.const 0.5
       local.get $distanceSq
       call $~lib/bindings/dom/Math.log
       f64.mul
       call $~lib/bindings/dom/Math.log2
       local.set $fraction
       global.get $module/NUM_COLORS
       i32.const 1
       i32.sub
       f64.convert_i32_s
       local.get $iteration
       i32.const 1
       i32.add
       f64.convert_i32_u
       local.get $fraction
       f64.sub
       local.get $invLimit
       f64.mul
       f64.const 0
       f64.const 1
       call $module/clamp<f64>
       f64.mul
       i32.trunc_sat_f64_u
       local.set $colorIndex
      end
      local.get $yOffset
      local.get $x
      i32.const 1
      i32.shl
      i32.add
      local.get $colorIndex
      i32.store16 $0
      local.get $x
      i32.const 1
      i32.add
      local.set $x
      br $for-loop|1
     end
    end
    local.get $y
    i32.const 1
    i32.add
    local.set $y
    br $for-loop|0
   end
  end
 )
)
