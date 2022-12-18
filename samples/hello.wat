(module $HelloWorld
  (memory 10)

  (global $a_0 (mut i64) i64.const 0)
  (global $b_0 i64 i64.const 0)
  (global $a_1 i64 i64.const 0)
  (global $b_1 (mut i64) i64.const 0)

  (func $add (param $lhs i32) (param $rhs i32) (result i32)
    local.get $lhs
    local.get $rhs
    i32.add
  )

  (export "add" (func $add))

  (func $sub (param $lhs i32) (param $rhs i32) (result i32)
    local.get $lhs
    local.get $rhs
    i32.sub
  )

  (func $complex (param $lhs i32) (param $rhs i32) (result i32)
    (local $i i32)

    i32.const -1
    local.set $i

    i32.const 0x80000000
    local.set $i

    local.get $lhs
    local.get $rhs
    call $sub

    local.get $i
    i32.mul
  )

  (export "complex" (func $complex))
)
