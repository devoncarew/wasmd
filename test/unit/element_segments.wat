(module
  (table $t 6 funcref)

  (func $f1 (result i32) i32.const 6 )
  (func $f2 (result i32) i32.const 7 )
  (func $f3 (result i32) i32.const 42 )

  (elem (i32.const 0) $f1 $f2)
  (elem $p1 func $f3 $f3 $f3)

  (type $return_i32 (func (result i32)))

  (func (export "callByIndex") (param $i i32) (result i32)
    local.get $i
    call_indirect (type $return_i32)
  )

  (func (export "table_get") (param $i i32) (result funcref)
    local.get $i
    table.get $t
  )

  (func (export "table_set") (param $i i32) (param $ref funcref)
    local.get $i
    local.get $ref
    table.set $t
  )

  (func $init 
    i32.const 3
    i32.const 0
    i32.const 3
    table.init 0 $p1
  )

  (start $init)
)
