(module
  (import "console" "log" (func $log (param i32 i32)))
  (import "js" "mem" (memory 1))

  (data $helloString (i32.const 0) "Hello from wasm!\00")
  (data $otherString "buenos dias\00")

  (func $writeHi (export "writeHi")
    i32.const 0   ;; pass offset 0 to log
    i32.const 16  ;; pass length 16 to log
    call $log
  )

  (start $writeHi)
)
