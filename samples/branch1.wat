(module

  ;; create a global variable and initialize it to 0
  (global $i (mut i32) (i32.const 0))

  (func $sample (result i32)
    (loop $my_loop

      ;; add one to $i
      global.get $i
      i32.const 1
      i32.add
      global.set $i

      ;; if $i is less than 10 branch to loop
      global.get $i
      i32.const 10
      i32.lt_s
      br_if $my_loop
    )

    global.get $i
  )

  (export "sample" (func $sample))

  (func $foo     
      i32.const 1
      global.set $i
  )

  (start $foo)
)
