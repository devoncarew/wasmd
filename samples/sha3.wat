(module
  (memory (export "memory") 10 65536)

  (global $a_0  (mut i64) i64.const 0) (global $b_0  (mut i64) i64.const 0)
  (global $a_1  (mut i64) i64.const 0) (global $b_1  (mut i64) i64.const 0)
  (global $a_2  (mut i64) i64.const 0) (global $b_2  (mut i64) i64.const 0)
  (global $a_3  (mut i64) i64.const 0) (global $b_3  (mut i64) i64.const 0)
  (global $a_4  (mut i64) i64.const 0) (global $b_4  (mut i64) i64.const 0)
  (global $a_5  (mut i64) i64.const 0) (global $b_5  (mut i64) i64.const 0)
  (global $a_6  (mut i64) i64.const 0) (global $b_6  (mut i64) i64.const 0)
  (global $a_7  (mut i64) i64.const 0) (global $b_7  (mut i64) i64.const 0)
  (global $a_8  (mut i64) i64.const 0) (global $b_8  (mut i64) i64.const 0)
  (global $a_9  (mut i64) i64.const 0) (global $b_9  (mut i64) i64.const 0)
  (global $a_10 (mut i64) i64.const 0) (global $b_10 (mut i64) i64.const 0)
  (global $a_11 (mut i64) i64.const 0) (global $b_11 (mut i64) i64.const 0)
  (global $a_12 (mut i64) i64.const 0) (global $b_12 (mut i64) i64.const 0)
  (global $a_13 (mut i64) i64.const 0) (global $b_13 (mut i64) i64.const 0)
  (global $a_14 (mut i64) i64.const 0) (global $b_14 (mut i64) i64.const 0)
  (global $a_15 (mut i64) i64.const 0) (global $b_15 (mut i64) i64.const 0)
  (global $a_16 (mut i64) i64.const 0) (global $b_16 (mut i64) i64.const 0)
  (global $a_17 (mut i64) i64.const 0) (global $b_17 (mut i64) i64.const 0)
  (global $a_18 (mut i64) i64.const 0) (global $b_18 (mut i64) i64.const 0)
  (global $a_19 (mut i64) i64.const 0) (global $b_19 (mut i64) i64.const 0)
  (global $a_20 (mut i64) i64.const 0) (global $b_20 (mut i64) i64.const 0)
  (global $a_21 (mut i64) i64.const 0) (global $b_21 (mut i64) i64.const 0)
  (global $a_22 (mut i64) i64.const 0) (global $b_22 (mut i64) i64.const 0)
  (global $a_23 (mut i64) i64.const 0) (global $b_23 (mut i64) i64.const 0)
  (global $a_24 (mut i64) i64.const 0) (global $b_24 (mut i64) i64.const 0)

  (global $c_0  (mut i64) i64.const 0) (global $d_0 (mut i64) i64.const 0)
  (global $c_1  (mut i64) i64.const 0) (global $d_1 (mut i64) i64.const 0)
  (global $c_2  (mut i64) i64.const 0) (global $d_2 (mut i64) i64.const 0)
  (global $c_3  (mut i64) i64.const 0) (global $d_3 (mut i64) i64.const 0)
  (global $c_4  (mut i64) i64.const 0) (global $d_4 (mut i64) i64.const 0)
    
  (func $init (export "init") (param $ctx i32) (param $rate i32) (param $length i32) 
      ;; schema  208 bytes
      ;;   0..4  i32 rate;
      ;;   4..8  i32 bytes_previously read;
      ;; 8..208  i64[] state[25]

      (i64.store offset=0  (get_local $ctx) (i64.const 0))
      (i64.store offset=8  (get_local $ctx) (i64.const 0))
      (i64.store offset=16  (get_local $ctx) (i64.const 0))
      (i64.store offset=32  (get_local $ctx) (i64.const 0))
      (i64.store offset=40  (get_local $ctx) (i64.const 0))
      (i64.store offset=48  (get_local $ctx) (i64.const 0))
      (i64.store offset=56  (get_local $ctx) (i64.const 0))
      (i64.store offset=64  (get_local $ctx) (i64.const 0))
      (i64.store offset=72  (get_local $ctx) (i64.const 0))
      (i64.store offset=80  (get_local $ctx) (i64.const 0))
      (i64.store offset=88  (get_local $ctx) (i64.const 0))
      (i64.store offset=964 (get_local $ctx) (i64.const 0))
      (i64.store offset=104 (get_local $ctx) (i64.const 0))
      (i64.store offset=112 (get_local $ctx) (i64.const 0))
      (i64.store offset=120 (get_local $ctx) (i64.const 0))
      (i64.store offset=128 (get_local $ctx) (i64.const 0))
      (i64.store offset=136 (get_local $ctx) (i64.const 0))
      (i64.store offset=144 (get_local $ctx) (i64.const 0))
      (i64.store offset=152 (get_local $ctx) (i64.const 0))
      (i64.store offset=160 (get_local $ctx) (i64.const 0))
      (i64.store offset=168 (get_local $ctx) (i64.const 0))
      (i64.store offset=176 (get_local $ctx) (i64.const 0))
      (i64.store offset=184 (get_local $ctx) (i64.const 0))
      (i64.store offset=192 (get_local $ctx) (i64.const 0))
      (i64.store offset=200 (get_local $ctx) (i64.const 0))

      (get_local $ctx)
      (get_local $rate)
      (i32.store))

  (func $pad (export "pad") (param $rate i32) (param $input i32) (param $inlen i32) (param $pad_rule i32)
      (result i32)  

      (local $i i32)

      (get_local $inlen)
      (set_local $i)

      (block $pad_rule
          (block $0
              (block $1
                  (block $2
                      (block $switch
                          (get_local $pad_rule)
                          (br_table $0 $1 $2)))

                  ;; SHAKE
                  (i64.store8 (get_local $input) (i64.const 0x1f))
                  (br $pad_rule))

              ;; Keccak
              (i64.store8 (get_local $input) (i64.const 0x01))
              (br $pad_rule))

          ;; SHA-3
          (i64.store8 (get_local $input) (i64.const 0x06))
          (br $pad_rule))
                
      (block $pad_end
          (loop $pad_start
              (i32.add (get_local $inlen) (i32.const 1))
              (i32.const 8)
              (i32.mul)
              (get_local $rate)
              (i32.rem_u)
              (i32.const 0)
              (i32.eq)
              (br_if $pad_end)

              (get_local $inlen)
              (i32.const 1)
              (i32.add)
              (set_local $inlen)

              (get_local $input)
              (i32.const 1)
              (i32.add)
              (set_local $input)

              (i64.store8 (get_local $input) (i64.const 0))
              (br $pad_start)))

      ;; CHECK -> have to ensure this byte is zeroed before input, may have written over old input
      (get_local $input)
      (i64.load (get_local $input))
      (i64.const 0x80)
      (i64.or)
      (i64.store)

      (get_local $inlen)
      (i32.const 1)
      (i32.add)
      (set_local $inlen)
      
      (get_local $inlen)
      (get_local $i)
      (i32.sub))

  (func $absorb (export "absorb") (param $ctx i32) (param $input i32) (param $input_end i32)
      (result i32)

      (local $i i32)
      (local $tmp i32)
      (local $input_start i32)
      (local $width i64)
      (local $rate i32)

      (get_local $input)
      (set_local $input_start)

      (get_local $ctx)
      (i32.load)
      (set_local $rate)

      (i32.load offset=4 (get_local $ctx))
      (get_local $rate)
      (i32.const 8)
      (i32.div_u)
      (i32.rem_u)
      (tee_local $tmp)
      (get_local $tmp)
      (i32.const 8)
      (i32.rem_u)
      (i32.sub)
      (set_local $i)

      (block $input_end
          (loop $input
              (i32.mul (get_local $i) (i32.const 8))
              (get_local $rate)
              (i32.eq)
              (if (then
                  (get_local $ctx)
                  (call $f_permute)

                  (set_local $i (i32.const 0))))
              
              (get_local $input)
              (get_local $input_end)
              (i32.eq)
              (br_if $input_end)

              ;; if we can, load input 8 bytes at a time
              (block $less_than_8_bytes
                  (get_local $input_end)
                  (get_local $input)
                  (i32.sub)
                  (i32.const 8)
                  (i32.lt_u)
                  (br_if $less_than_8_bytes)

                  (get_local $ctx)
                  (get_local $i)
                  (i32.add)
                  (get_local $ctx)
                  (get_local $i)
                  (i32.add)
                  (i64.load offset=8)
                  (get_local $input)
                  (i64.load)
                  (i64.xor)
                  (i64.store offset=8)

                  ;; i, input += 8
                  (get_local $input)
                  (i32.const 8)
                  (i32.add)
                  (set_local $input)

                  (get_local $i)
                  (i32.const 8)
                  (i32.add)
                  (set_local $i)
                  (br $input))

              ;; less than 8 bytes - load one at a time
              (get_local $ctx)
              (get_local $i)
              (i32.add)
              (get_local $ctx)
              (get_local $i)
              (i32.add)
              (i64.load8_u offset=8)
              (get_local $input)
              (i64.load8_u)
              (i64.xor)
              (i64.store8 offset=8)

              ;; i++, input++
              (get_local $input)
              (i32.const 1)
              (i32.add)
              (set_local $input)

              (get_local $i)
              (i32.const 1)
              (i32.add)
              (set_local $i)
              (br $input)))

      (get_local $ctx)
      (get_local $ctx)
      (i32.load offset=4)
      (i32.const 8)
      (i32.div_u)
      (i32.const 8)
      (i32.mul)
      (get_local $input)
      (get_local $input_start)
      (i32.sub)
      (i32.add)
      (i32.store offset=4)

      (get_local $input)
      (get_local $input_start)
      (i32.sub)
      (i32.const 8)
      (i32.rem_u))

  (func $squeeze (export "squeeze") (param $ctx i32) (param $output i32) (param $digest_length i32)
      (local $state i32)
      (local $byte_count i32)
      (local $i i32)
      (local $byterate i32)

      (get_local $ctx)
      (i32.const 8)
      (i32.add)
      (set_local $state)

      (i32.load (get_local $ctx))
      (i32.const 8)
      (i32.div_u)
      (set_local $byterate)

      (block $squeeze_end
          (loop $squeeze
              (set_local $i (i32.const 0))
              (block $truncate
                  (get_local $output)
                  (i64.load offset=0 (get_local $state))
                  (i64.store offset=0)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=8 (get_local $state))
                  (i64.store offset=8)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=16 (get_local $state))
                  (i64.store offset=16)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=24 (get_local $state))
                  (i64.store offset=24)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=32 (get_local $state))
                  (i64.store offset=32)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=40 (get_local $state))
                  (i64.store offset=40)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=48 (get_local $state))
                  (i64.store offset=48)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=56 (get_local $state))
                  (i64.store offset=56)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=64 (get_local $state))
                  (i64.store offset=64)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=72 (get_local $state))
                  (i64.store offset=72)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=80 (get_local $state))
                  (i64.store offset=80)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=88 (get_local $state))
                  (i64.store offset=88)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=96 (get_local $state))
                  (i64.store offset=96)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=104 (get_local $state))
                  (i64.store offset=104)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=112 (get_local $state))
                  (i64.store offset=112)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=120 (get_local $state))
                  (i64.store offset=120)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=128 (get_local $state))
                  (i64.store offset=128)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=136 (get_local $state))
                  (i64.store offset=136)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=144 (get_local $state))
                  (i64.store offset=144)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=152 (get_local $state))
                  (i64.store offset=152)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=160 (get_local $state))
                  (i64.store offset=160)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=168 (get_local $state))
                  (i64.store offset=168)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=176 (get_local $state))
                  (i64.store offset=176)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=184 (get_local $state))
                  (i64.store offset=184)
                  (set_local $i (i32.add (get_local $i) (i32.const 8)))
                  (i32.ge_u (get_local $i) (get_local $byterate))
                  (br_if $truncate)

                  (get_local $output)
                  (i64.load offset=192 (get_local $state))
                  (i64.store offset=192))
              
              (i32.ge_u (get_local $byte_count) (get_local $digest_length))
              (br_if $squeeze_end)

              (get_local $output)
              (get_local $byterate)
              (i32.add)
              (set_local $output)

              (get_local $byte_count)
              (get_local $byterate)
              (i32.add)
              (set_local $byte_count)

              (call $f_permute (get_local $ctx))
              (br $squeeze))))

    (func $trpc 
      ;; THETA

      (set_global $c_0 (get_global $a_0))
      (set_global $c_1 (get_global $a_1))
      (set_global $c_2 (get_global $a_2))
      (set_global $c_3 (get_global $a_3))
      (set_global $c_4 (get_global $a_4))

      (set_global $c_0 (i64.xor (get_global $c_0) (get_global $a_5)))
      (set_global $c_0 (i64.xor (get_global $c_0) (get_global $a_10)))
      (set_global $c_0 (i64.xor (get_global $c_0) (get_global $a_15)))
      (set_global $c_0 (i64.xor (get_global $c_0) (get_global $a_20)))

      (set_global $c_1 (i64.xor (get_global $c_1) (get_global $a_6)))
      (set_global $c_1 (i64.xor (get_global $c_1) (get_global $a_11)))
      (set_global $c_1 (i64.xor (get_global $c_1) (get_global $a_16)))
      (set_global $c_1 (i64.xor (get_global $c_1) (get_global $a_21)))

      (set_global $c_2 (i64.xor (get_global $c_2) (get_global $a_7)))
      (set_global $c_2 (i64.xor (get_global $c_2) (get_global $a_12)))
      (set_global $c_2 (i64.xor (get_global $c_2) (get_global $a_17)))
      (set_global $c_2 (i64.xor (get_global $c_2) (get_global $a_22)))

      (set_global $c_3 (i64.xor (get_global $c_3) (get_global $a_8)))
      (set_global $c_3 (i64.xor (get_global $c_3) (get_global $a_13)))
      (set_global $c_3 (i64.xor (get_global $c_3) (get_global $a_18)))
      (set_global $c_3 (i64.xor (get_global $c_3) (get_global $a_23)))

      (set_global $c_4 (i64.xor (get_global $c_4) (get_global $a_9)))
      (set_global $c_4 (i64.xor (get_global $c_4) (get_global $a_14)))
      (set_global $c_4 (i64.xor (get_global $c_4) (get_global $a_19)))
      (set_global $c_4 (i64.xor (get_global $c_4) (get_global $a_24)))

      (i64.rotl (get_global $c_1) (i64.const 1))
      (get_global $c_4)
      (i64.xor)
      (set_global $d_0)

      (set_global $a_0 (i64.xor (get_global $a_0) (get_global $d_0)))
      (set_global $a_5 (i64.xor (get_global $a_5) (get_global $d_0)))
      (set_global $a_10 (i64.xor (get_global $a_10) (get_global $d_0)))
      (set_global $a_15 (i64.xor (get_global $a_15) (get_global $d_0)))
      (set_global $a_20 (i64.xor (get_global $a_20) (get_global $d_0)))

      (i64.rotl (get_global $c_2) (i64.const 1))
      (get_global $c_0)
      (i64.xor)
      (set_global $d_1)

      (set_global $a_1 (i64.xor (get_global $a_1) (get_global $d_1)))
      (set_global $a_6 (i64.xor (get_global $a_6) (get_global $d_1)))
      (set_global $a_11 (i64.xor (get_global $a_11) (get_global $d_1)))
      (set_global $a_16 (i64.xor (get_global $a_16) (get_global $d_1)))
      (set_global $a_21 (i64.xor (get_global $a_21) (get_global $d_1)))

      (i64.rotl (get_global $c_3) (i64.const 1))
      (get_global $c_1)
      (i64.xor)
      (set_global $d_2)

      (set_global $a_2 (i64.xor (get_global $a_2) (get_global $d_2)))
      (set_global $a_7 (i64.xor (get_global $a_7) (get_global $d_2)))
      (set_global $a_12 (i64.xor (get_global $a_12) (get_global $d_2)))
      (set_global $a_17 (i64.xor (get_global $a_17) (get_global $d_2)))
      (set_global $a_22 (i64.xor (get_global $a_22) (get_global $d_2)))

      (i64.rotl (get_global $c_4) (i64.const 1))
      (get_global $c_2)
      (i64.xor)
      (set_global $d_3)

      (set_global $a_3 (i64.xor (get_global $a_3) (get_global $d_3)))
      (set_global $a_8 (i64.xor (get_global $a_8) (get_global $d_3)))
      (set_global $a_13 (i64.xor (get_global $a_13) (get_global $d_3)))
      (set_global $a_18 (i64.xor (get_global $a_18) (get_global $d_3)))
      (set_global $a_23 (i64.xor (get_global $a_23) (get_global $d_3)))

      (i64.rotl (get_global $c_0) (i64.const 1))
      (get_global $c_3)
      (i64.xor)
      (set_global $d_4)

      (set_global $a_4 (i64.xor (get_global $a_4) (get_global $d_4)))
      (set_global $a_9 (i64.xor (get_global $a_9) (get_global $d_4)))
      (set_global $a_14 (i64.xor (get_global $a_14) (get_global $d_4)))
      (set_global $a_19 (i64.xor (get_global $a_19) (get_global $d_4)))
      (set_global $a_24 (i64.xor (get_global $a_24) (get_global $d_4)))

      ;; RHO & PI

      (set_global $b_0 (get_global $a_0))

      (i64.rotl (get_global $a_1) (i64.const 1))
      (set_global $b_10)

      (i64.rotl (get_global $a_10) (i64.const 3))
      (set_global $b_7)

      (i64.rotl (get_global $a_7) (i64.const 6))
      (set_global $b_11)

      (i64.rotl (get_global $a_11) (i64.const 10))
      (set_global $b_17)

      (i64.rotl (get_global $a_17) (i64.const 15))
      (set_global $b_18)

      (i64.rotl (get_global $a_18) (i64.const 21))
      (set_global $b_3)

      (i64.rotl (get_global $a_3) (i64.const 28))
      (set_global $b_5)

      (i64.rotr (get_global $a_5) (i64.const 28))
      (set_global $b_16)

      (i64.rotr (get_global $a_16) (i64.const 19))
      (set_global $b_8)

      (i64.rotr (get_global $a_8) (i64.const 9))
      (set_global $b_21)

      (i64.rotr (get_global $a_21) (i64.const 62))
      (set_global $b_24)

      (i64.rotr (get_global $a_24) (i64.const 50))
      (set_global $b_4)

      (i64.rotr (get_global $a_4) (i64.const 37))
      (set_global $b_15)

      (i64.rotr (get_global $a_15) (i64.const 23))
      (set_global $b_23)

      (i64.rotr (get_global $a_23) (i64.const 8))
      (set_global $b_19)

      (i64.rotr (get_global $a_19) (i64.const 56))
      (set_global $b_13)

      (i64.rotr (get_global $a_13) (i64.const 39))
      (set_global $b_12)

      (i64.rotr (get_global $a_12) (i64.const 21))
      (set_global $b_2)

      (i64.rotr (get_global $a_2) (i64.const 2))
      (set_global $b_20)

      (i64.rotr (get_global $a_20) (i64.const 46))
      (set_global $b_14)

      (i64.rotr (get_global $a_14) (i64.const 25))
      (set_global $b_22)

      (i64.rotr (get_global $a_22) (i64.const 3))
      (set_global $b_9)

      (i64.rotr (get_global $a_9) (i64.const 44))
      (set_global $b_6)

      (i64.rotr (get_global $a_6) (i64.const 20))
      (set_global $b_1)

      ;; CHI

      (set_global $a_0 (i64.xor (i64.and (i64.xor (get_global $b_1) (i64.const -1)) (get_global $b_2)) (get_global $b_0)))
      (set_global $a_5 (i64.xor (i64.and (i64.xor (get_global $b_6) (i64.const -1)) (get_global $b_7)) (get_global $b_5)))
      (set_global $a_10 (i64.xor (i64.and (i64.xor (get_global $b_11) (i64.const -1)) (get_global $b_12)) (get_global $b_10)))
      (set_global $a_15 (i64.xor (i64.and (i64.xor (get_global $b_16) (i64.const -1)) (get_global $b_17)) (get_global $b_15)))
      (set_global $a_20 (i64.xor (i64.and (i64.xor (get_global $b_21) (i64.const -1)) (get_global $b_22)) (get_global $b_20)))

      (set_global $a_1 (i64.xor (i64.and (i64.xor (get_global $b_2) (i64.const -1)) (get_global $b_3)) (get_global $b_1)))
      (set_global $a_6 (i64.xor (i64.and (i64.xor (get_global $b_7) (i64.const -1)) (get_global $b_8)) (get_global $b_6)))
      (set_global $a_11 (i64.xor (i64.and (i64.xor (get_global $b_12) (i64.const -1)) (get_global $b_13)) (get_global $b_11)))
      (set_global $a_16 (i64.xor (i64.and (i64.xor (get_global $b_17) (i64.const -1)) (get_global $b_18)) (get_global $b_16)))
      (set_global $a_21 (i64.xor (i64.and (i64.xor (get_global $b_22) (i64.const -1)) (get_global $b_23)) (get_global $b_21)))

      (set_global $a_2 (i64.xor (i64.and (i64.xor (get_global $b_3) (i64.const -1)) (get_global $b_4)) (get_global $b_2)))
      (set_global $a_7 (i64.xor (i64.and (i64.xor (get_global $b_8) (i64.const -1)) (get_global $b_9)) (get_global $b_7)))
      (set_global $a_12 (i64.xor (i64.and (i64.xor (get_global $b_13) (i64.const -1)) (get_global $b_14)) (get_global $b_12)))
      (set_global $a_17 (i64.xor (i64.and (i64.xor (get_global $b_18) (i64.const -1)) (get_global $b_19)) (get_global $b_17)))
      (set_global $a_22 (i64.xor (i64.and (i64.xor (get_global $b_23) (i64.const -1)) (get_global $b_24)) (get_global $b_22)))

      (set_global $a_3 (i64.xor (i64.and (i64.xor (get_global $b_4) (i64.const -1)) (get_global $b_0)) (get_global $b_3)))
      (set_global $a_8 (i64.xor (i64.and (i64.xor (get_global $b_9) (i64.const -1)) (get_global $b_5)) (get_global $b_8)))
      (set_global $a_13 (i64.xor (i64.and (i64.xor (get_global $b_14) (i64.const -1)) (get_global $b_10)) (get_global $b_13)))
      (set_global $a_18 (i64.xor (i64.and (i64.xor (get_global $b_19) (i64.const -1)) (get_global $b_15)) (get_global $b_18)))
      (set_global $a_23 (i64.xor (i64.and (i64.xor (get_global $b_24) (i64.const -1)) (get_global $b_20)) (get_global $b_23)))

      (set_global $a_4 (i64.xor (i64.and (i64.xor (get_global $b_0) (i64.const -1)) (get_global $b_1)) (get_global $b_4)))
      (set_global $a_9 (i64.xor (i64.and (i64.xor (get_global $b_5) (i64.const -1)) (get_global $b_6)) (get_global $b_9)))
      (set_global $a_14 (i64.xor (i64.and (i64.xor (get_global $b_10) (i64.const -1)) (get_global $b_11)) (get_global $b_14)))
      (set_global $a_19 (i64.xor (i64.and (i64.xor (get_global $b_15) (i64.const -1)) (get_global $b_16)) (get_global $b_19)))
      (set_global $a_24 (i64.xor (i64.and (i64.xor (get_global $b_20) (i64.const -1)) (get_global $b_21)) (get_global $b_24))))

    (func $f_permute (export "f_permute") (param $ctx i32)
        (local $state i32)

        (set_local $state (i32.add (get_local $ctx) (i32.const 8)))

        (i64.load offset=0 (get_local $state))
        (set_global $a_0)

        (i64.load offset=8 (get_local $state))
        (set_global $a_1)

        (i64.load offset=16 (get_local $state))
        (set_global $a_2)

        (i64.load offset=24 (get_local $state))
        (set_global $a_3)

        (i64.load offset=32 (get_local $state))
        (set_global $a_4)

        (i64.load offset=40 (get_local $state))
        (set_global $a_5)

        (i64.load offset=48 (get_local $state))
        (set_global $a_6)

        (i64.load offset=56 (get_local $state))
        (set_global $a_7)

        (i64.load offset=64 (get_local $state))
        (set_global $a_8)

        (i64.load offset=72 (get_local $state))
        (set_global $a_9)

        (i64.load offset=80 (get_local $state))
        (set_global $a_10)

        (i64.load offset=88 (get_local $state))
        (set_global $a_11)

        (i64.load offset=96 (get_local $state))
        (set_global $a_12)

        (i64.load offset=104 (get_local $state))
        (set_global $a_13)

        (i64.load offset=112 (get_local $state))
        (set_global $a_14)

        (i64.load offset=120 (get_local $state))
        (set_global $a_15)

        (i64.load offset=128 (get_local $state))
        (set_global $a_16)

        (i64.load offset=136 (get_local $state))
        (set_global $a_17)

        (i64.load offset=144 (get_local $state))
        (set_global $a_18)

        (i64.load offset=152 (get_local $state))
        (set_global $a_19)

        (i64.load offset=160 (get_local $state))
        (set_global $a_20)

        (i64.load offset=168 (get_local $state))
        (set_global $a_21)

        (i64.load offset=176 (get_local $state))
        (set_global $a_22)

        (i64.load offset=184 (get_local $state))
        (set_global $a_23)

        (i64.load offset=192 (get_local $state))
        (set_global $a_24)


        ;; PERMUTATION

        ;; ROUND 0

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x0000000000000001)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 1

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x0000000000008082)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 2

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x800000000000808A)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 3

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x8000000080008000)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 4

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x000000000000808B)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 5

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x0000000080000001)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 6

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x8000000080008081)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 7

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x8000000000008009)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 8

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x000000000000008A)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 9

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x0000000000000088)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 10

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x0000000080008009)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 11

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x000000008000000A)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 12

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x000000008000808B)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 13

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x800000000000008B)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 14

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x8000000000008089)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 15

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x8000000000008003)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 16

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x8000000000008002)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 17

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x8000000000000080)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 18

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x000000000000800A)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 19

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x800000008000000A)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 20

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x8000000080008081)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 21

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x8000000000008080)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 22

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x0000000080000001)
        (i64.xor)
        (set_global $a_0)


        ;; ROUND 23

        (call $trpc)

        ;; IOTA

        (get_global $a_0)
        (i64.const 0x8000000080008008)
        (i64.xor)
        (set_global $a_0)


        ;; PERMUTATION ENDS

        (get_local $state)
        (get_global $a_0)
        (i64.store offset=0)

        (get_local $state)
        (get_global $a_1)
        (i64.store offset=8)

        (get_local $state)
        (get_global $a_2)
        (i64.store offset=16)

        (get_local $state)
        (get_global $a_3)
        (i64.store offset=24)

        (get_local $state)
        (get_global $a_4)
        (i64.store offset=32)

        (get_local $state)
        (get_global $a_5)
        (i64.store offset=40)

        (get_local $state)
        (get_global $a_6)
        (i64.store offset=48)

        (get_local $state)
        (get_global $a_7)
        (i64.store offset=56)

        (get_local $state)
        (get_global $a_8)
        (i64.store offset=64)

        (get_local $state)
        (get_global $a_9)
        (i64.store offset=72)

        (get_local $state)
        (get_global $a_10)
        (i64.store offset=80)

        (get_local $state)
        (get_global $a_11)
        (i64.store offset=88)

        (get_local $state)
        (get_global $a_12)
        (i64.store offset=96)

        (get_local $state)
        (get_global $a_13)
        (i64.store offset=104)

        (get_local $state)
        (get_global $a_14)
        (i64.store offset=112)

        (get_local $state)
        (get_global $a_15)
        (i64.store offset=120)

        (get_local $state)
        (get_global $a_16)
        (i64.store offset=128)

        (get_local $state)
        (get_global $a_17)
        (i64.store offset=136)

        (get_local $state)
        (get_global $a_18)
        (i64.store offset=144)

        (get_local $state)
        (get_global $a_19)
        (i64.store offset=152)

        (get_local $state)
        (get_global $a_20)
        (i64.store offset=160)

        (get_local $state)
        (get_global $a_21)
        (i64.store offset=168)

        (get_local $state)
        (get_global $a_22)
        (i64.store offset=176)

        (get_local $state)
        (get_global $a_23)
        (i64.store offset=184)

        (get_local $state)
        (get_global $a_24)
        (i64.store offset=192)))
