(module
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32)))
  (func (;0;) (type 0) (param i32 i32 i32)
    local.get 0
    i64.const 0
    i64.store
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=32
    local.get 0
    i64.const 0
    i64.store offset=40
    local.get 0
    i64.const 0
    i64.store offset=48
    local.get 0
    i64.const 0
    i64.store offset=56
    local.get 0
    i64.const 0
    i64.store offset=64
    local.get 0
    i64.const 0
    i64.store offset=72
    local.get 0
    i64.const 0
    i64.store offset=80
    local.get 0
    i64.const 0
    i64.store offset=88
    local.get 0
    i64.const 0
    i64.store offset=964
    local.get 0
    i64.const 0
    i64.store offset=104
    local.get 0
    i64.const 0
    i64.store offset=112
    local.get 0
    i64.const 0
    i64.store offset=120
    local.get 0
    i64.const 0
    i64.store offset=128
    local.get 0
    i64.const 0
    i64.store offset=136
    local.get 0
    i64.const 0
    i64.store offset=144
    local.get 0
    i64.const 0
    i64.store offset=152
    local.get 0
    i64.const 0
    i64.store offset=160
    local.get 0
    i64.const 0
    i64.store offset=168
    local.get 0
    i64.const 0
    i64.store offset=176
    local.get 0
    i64.const 0
    i64.store offset=184
    local.get 0
    i64.const 0
    i64.store offset=192
    local.get 0
    i64.const 0
    i64.store offset=200
    local.get 0
    local.get 1
    i32.store)
  (func (;1;) (type 1) (param i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 2
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              br_table 3 (;@2;) 2 (;@3;) 1 (;@4;)
            end
          end
          local.get 1
          i64.const 31
          i64.store8
          br 2 (;@1;)
        end
        local.get 1
        i64.const 1
        i64.store8
        br 1 (;@1;)
      end
      local.get 1
      i64.const 6
      i64.store8
      br 0 (;@1;)
    end
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.const 1
        i32.add
        i32.const 8
        i32.mul
        local.get 0
        i32.rem_u
        i32.const 0
        i32.eq
        br_if 1 (;@1;)
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 1
        i64.const 0
        i64.store8
        br 0 (;@2;)
      end
    end
    local.get 1
    local.get 1
    i64.load
    i64.const 128
    i64.or
    i64.store
    local.get 2
    i32.const 1
    i32.add
    local.set 2
    local.get 2
    local.get 4
    i32.sub)
  (func (;2;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64 i32)
    local.get 1
    local.set 5
    local.get 0
    i32.load
    local.set 7
    local.get 0
    i32.load offset=4
    local.get 7
    i32.const 8
    i32.div_u
    i32.rem_u
    local.tee 4
    local.get 4
    i32.const 8
    i32.rem_u
    i32.sub
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.const 8
        i32.mul
        local.get 7
        i32.eq
        if  ;; label = @3
          local.get 0
          call 5
          i32.const 0
          local.set 3
        end
        local.get 1
        local.get 2
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 2
          local.get 1
          i32.sub
          i32.const 8
          i32.lt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.add
          local.get 0
          local.get 3
          i32.add
          i64.load offset=8
          local.get 1
          i64.load
          i64.xor
          i64.store offset=8
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 3
          i32.const 8
          i32.add
          local.set 3
          br 1 (;@2;)
        end
        local.get 0
        local.get 3
        i32.add
        local.get 0
        local.get 3
        i32.add
        i64.load8_u offset=8
        local.get 1
        i64.load8_u
        i64.xor
        i64.store8 offset=8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 8
    i32.div_u
    i32.const 8
    i32.mul
    local.get 1
    local.get 5
    i32.sub
    i32.add
    i32.store offset=4
    local.get 1
    local.get 5
    i32.sub
    i32.const 8
    i32.rem_u)
  (func (;3;) (type 0) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 8
    i32.add
    local.set 3
    local.get 0
    i32.load
    i32.const 8
    i32.div_u
    local.set 6
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 5
        block  ;; label = @3
          local.get 1
          local.get 3
          i64.load
          i64.store
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=8
          i64.store offset=8
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=16
          i64.store offset=16
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=24
          i64.store offset=24
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=32
          i64.store offset=32
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=40
          i64.store offset=40
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=48
          i64.store offset=48
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=56
          i64.store offset=56
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=64
          i64.store offset=64
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=72
          i64.store offset=72
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=80
          i64.store offset=80
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=88
          i64.store offset=88
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=96
          i64.store offset=96
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=104
          i64.store offset=104
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=112
          i64.store offset=112
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=120
          i64.store offset=120
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=128
          i64.store offset=128
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=136
          i64.store offset=136
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=144
          i64.store offset=144
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=152
          i64.store offset=152
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=160
          i64.store offset=160
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=168
          i64.store offset=168
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=176
          i64.store offset=176
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=184
          i64.store offset=184
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 5
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i64.load offset=192
          i64.store offset=192
        end
        local.get 4
        local.get 2
        i32.ge_u
        br_if 1 (;@1;)
        local.get 1
        local.get 6
        i32.add
        local.set 1
        local.get 4
        local.get 6
        i32.add
        local.set 4
        local.get 0
        call 5
        br 0 (;@2;)
      end
    end)
  (func (;4;) (type 3)
    global.get 0
    global.set 50
    global.get 2
    global.set 52
    global.get 4
    global.set 54
    global.get 6
    global.set 56
    global.get 8
    global.set 58
    global.get 50
    global.get 10
    i64.xor
    global.set 50
    global.get 50
    global.get 20
    i64.xor
    global.set 50
    global.get 50
    global.get 30
    i64.xor
    global.set 50
    global.get 50
    global.get 40
    i64.xor
    global.set 50
    global.get 52
    global.get 12
    i64.xor
    global.set 52
    global.get 52
    global.get 22
    i64.xor
    global.set 52
    global.get 52
    global.get 32
    i64.xor
    global.set 52
    global.get 52
    global.get 42
    i64.xor
    global.set 52
    global.get 54
    global.get 14
    i64.xor
    global.set 54
    global.get 54
    global.get 24
    i64.xor
    global.set 54
    global.get 54
    global.get 34
    i64.xor
    global.set 54
    global.get 54
    global.get 44
    i64.xor
    global.set 54
    global.get 56
    global.get 16
    i64.xor
    global.set 56
    global.get 56
    global.get 26
    i64.xor
    global.set 56
    global.get 56
    global.get 36
    i64.xor
    global.set 56
    global.get 56
    global.get 46
    i64.xor
    global.set 56
    global.get 58
    global.get 18
    i64.xor
    global.set 58
    global.get 58
    global.get 28
    i64.xor
    global.set 58
    global.get 58
    global.get 38
    i64.xor
    global.set 58
    global.get 58
    global.get 48
    i64.xor
    global.set 58
    global.get 52
    i64.const 1
    i64.rotl
    global.get 58
    i64.xor
    global.set 51
    global.get 0
    global.get 51
    i64.xor
    global.set 0
    global.get 10
    global.get 51
    i64.xor
    global.set 10
    global.get 20
    global.get 51
    i64.xor
    global.set 20
    global.get 30
    global.get 51
    i64.xor
    global.set 30
    global.get 40
    global.get 51
    i64.xor
    global.set 40
    global.get 54
    i64.const 1
    i64.rotl
    global.get 50
    i64.xor
    global.set 53
    global.get 2
    global.get 53
    i64.xor
    global.set 2
    global.get 12
    global.get 53
    i64.xor
    global.set 12
    global.get 22
    global.get 53
    i64.xor
    global.set 22
    global.get 32
    global.get 53
    i64.xor
    global.set 32
    global.get 42
    global.get 53
    i64.xor
    global.set 42
    global.get 56
    i64.const 1
    i64.rotl
    global.get 52
    i64.xor
    global.set 55
    global.get 4
    global.get 55
    i64.xor
    global.set 4
    global.get 14
    global.get 55
    i64.xor
    global.set 14
    global.get 24
    global.get 55
    i64.xor
    global.set 24
    global.get 34
    global.get 55
    i64.xor
    global.set 34
    global.get 44
    global.get 55
    i64.xor
    global.set 44
    global.get 58
    i64.const 1
    i64.rotl
    global.get 54
    i64.xor
    global.set 57
    global.get 6
    global.get 57
    i64.xor
    global.set 6
    global.get 16
    global.get 57
    i64.xor
    global.set 16
    global.get 26
    global.get 57
    i64.xor
    global.set 26
    global.get 36
    global.get 57
    i64.xor
    global.set 36
    global.get 46
    global.get 57
    i64.xor
    global.set 46
    global.get 50
    i64.const 1
    i64.rotl
    global.get 56
    i64.xor
    global.set 59
    global.get 8
    global.get 59
    i64.xor
    global.set 8
    global.get 18
    global.get 59
    i64.xor
    global.set 18
    global.get 28
    global.get 59
    i64.xor
    global.set 28
    global.get 38
    global.get 59
    i64.xor
    global.set 38
    global.get 48
    global.get 59
    i64.xor
    global.set 48
    global.get 0
    global.set 1
    global.get 2
    i64.const 1
    i64.rotl
    global.set 21
    global.get 20
    i64.const 3
    i64.rotl
    global.set 15
    global.get 14
    i64.const 6
    i64.rotl
    global.set 23
    global.get 22
    i64.const 10
    i64.rotl
    global.set 35
    global.get 34
    i64.const 15
    i64.rotl
    global.set 37
    global.get 36
    i64.const 21
    i64.rotl
    global.set 7
    global.get 6
    i64.const 28
    i64.rotl
    global.set 11
    global.get 10
    i64.const 28
    i64.rotr
    global.set 33
    global.get 32
    i64.const 19
    i64.rotr
    global.set 17
    global.get 16
    i64.const 9
    i64.rotr
    global.set 43
    global.get 42
    i64.const 62
    i64.rotr
    global.set 49
    global.get 48
    i64.const 50
    i64.rotr
    global.set 9
    global.get 8
    i64.const 37
    i64.rotr
    global.set 31
    global.get 30
    i64.const 23
    i64.rotr
    global.set 47
    global.get 46
    i64.const 8
    i64.rotr
    global.set 39
    global.get 38
    i64.const 56
    i64.rotr
    global.set 27
    global.get 26
    i64.const 39
    i64.rotr
    global.set 25
    global.get 24
    i64.const 21
    i64.rotr
    global.set 5
    global.get 4
    i64.const 2
    i64.rotr
    global.set 41
    global.get 40
    i64.const 46
    i64.rotr
    global.set 29
    global.get 28
    i64.const 25
    i64.rotr
    global.set 45
    global.get 44
    i64.const 3
    i64.rotr
    global.set 19
    global.get 18
    i64.const 44
    i64.rotr
    global.set 13
    global.get 12
    i64.const 20
    i64.rotr
    global.set 3
    global.get 3
    i64.const -1
    i64.xor
    global.get 5
    i64.and
    global.get 1
    i64.xor
    global.set 0
    global.get 13
    i64.const -1
    i64.xor
    global.get 15
    i64.and
    global.get 11
    i64.xor
    global.set 10
    global.get 23
    i64.const -1
    i64.xor
    global.get 25
    i64.and
    global.get 21
    i64.xor
    global.set 20
    global.get 33
    i64.const -1
    i64.xor
    global.get 35
    i64.and
    global.get 31
    i64.xor
    global.set 30
    global.get 43
    i64.const -1
    i64.xor
    global.get 45
    i64.and
    global.get 41
    i64.xor
    global.set 40
    global.get 5
    i64.const -1
    i64.xor
    global.get 7
    i64.and
    global.get 3
    i64.xor
    global.set 2
    global.get 15
    i64.const -1
    i64.xor
    global.get 17
    i64.and
    global.get 13
    i64.xor
    global.set 12
    global.get 25
    i64.const -1
    i64.xor
    global.get 27
    i64.and
    global.get 23
    i64.xor
    global.set 22
    global.get 35
    i64.const -1
    i64.xor
    global.get 37
    i64.and
    global.get 33
    i64.xor
    global.set 32
    global.get 45
    i64.const -1
    i64.xor
    global.get 47
    i64.and
    global.get 43
    i64.xor
    global.set 42
    global.get 7
    i64.const -1
    i64.xor
    global.get 9
    i64.and
    global.get 5
    i64.xor
    global.set 4
    global.get 17
    i64.const -1
    i64.xor
    global.get 19
    i64.and
    global.get 15
    i64.xor
    global.set 14
    global.get 27
    i64.const -1
    i64.xor
    global.get 29
    i64.and
    global.get 25
    i64.xor
    global.set 24
    global.get 37
    i64.const -1
    i64.xor
    global.get 39
    i64.and
    global.get 35
    i64.xor
    global.set 34
    global.get 47
    i64.const -1
    i64.xor
    global.get 49
    i64.and
    global.get 45
    i64.xor
    global.set 44
    global.get 9
    i64.const -1
    i64.xor
    global.get 1
    i64.and
    global.get 7
    i64.xor
    global.set 6
    global.get 19
    i64.const -1
    i64.xor
    global.get 11
    i64.and
    global.get 17
    i64.xor
    global.set 16
    global.get 29
    i64.const -1
    i64.xor
    global.get 21
    i64.and
    global.get 27
    i64.xor
    global.set 26
    global.get 39
    i64.const -1
    i64.xor
    global.get 31
    i64.and
    global.get 37
    i64.xor
    global.set 36
    global.get 49
    i64.const -1
    i64.xor
    global.get 41
    i64.and
    global.get 47
    i64.xor
    global.set 46
    global.get 1
    i64.const -1
    i64.xor
    global.get 3
    i64.and
    global.get 9
    i64.xor
    global.set 8
    global.get 11
    i64.const -1
    i64.xor
    global.get 13
    i64.and
    global.get 19
    i64.xor
    global.set 18
    global.get 21
    i64.const -1
    i64.xor
    global.get 23
    i64.and
    global.get 29
    i64.xor
    global.set 28
    global.get 31
    i64.const -1
    i64.xor
    global.get 33
    i64.and
    global.get 39
    i64.xor
    global.set 38
    global.get 41
    i64.const -1
    i64.xor
    global.get 43
    i64.and
    global.get 49
    i64.xor
    global.set 48)
  (func (;5;) (type 4) (param i32)
    (local i32)
    local.get 0
    i32.const 8
    i32.add
    local.set 1
    local.get 1
    i64.load
    global.set 0
    local.get 1
    i64.load offset=8
    global.set 2
    local.get 1
    i64.load offset=16
    global.set 4
    local.get 1
    i64.load offset=24
    global.set 6
    local.get 1
    i64.load offset=32
    global.set 8
    local.get 1
    i64.load offset=40
    global.set 10
    local.get 1
    i64.load offset=48
    global.set 12
    local.get 1
    i64.load offset=56
    global.set 14
    local.get 1
    i64.load offset=64
    global.set 16
    local.get 1
    i64.load offset=72
    global.set 18
    local.get 1
    i64.load offset=80
    global.set 20
    local.get 1
    i64.load offset=88
    global.set 22
    local.get 1
    i64.load offset=96
    global.set 24
    local.get 1
    i64.load offset=104
    global.set 26
    local.get 1
    i64.load offset=112
    global.set 28
    local.get 1
    i64.load offset=120
    global.set 30
    local.get 1
    i64.load offset=128
    global.set 32
    local.get 1
    i64.load offset=136
    global.set 34
    local.get 1
    i64.load offset=144
    global.set 36
    local.get 1
    i64.load offset=152
    global.set 38
    local.get 1
    i64.load offset=160
    global.set 40
    local.get 1
    i64.load offset=168
    global.set 42
    local.get 1
    i64.load offset=176
    global.set 44
    local.get 1
    i64.load offset=184
    global.set 46
    local.get 1
    i64.load offset=192
    global.set 48
    call 4
    global.get 0
    i64.const 1
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const 32898
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372036854742902
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372034707259392
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const 32907
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const 2147483649
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372034707259263
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372036854743031
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const 138
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const 136
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const 2147516425
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const 2147483658
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const 2147516555
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372036854775669
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372036854742903
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372036854743037
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372036854743038
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372036854775680
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const 32778
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372034707292150
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372034707259263
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372036854742912
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const 2147483649
    i64.xor
    global.set 0
    call 4
    global.get 0
    i64.const -9223372034707259384
    i64.xor
    global.set 0
    local.get 1
    global.get 0
    i64.store
    local.get 1
    global.get 2
    i64.store offset=8
    local.get 1
    global.get 4
    i64.store offset=16
    local.get 1
    global.get 6
    i64.store offset=24
    local.get 1
    global.get 8
    i64.store offset=32
    local.get 1
    global.get 10
    i64.store offset=40
    local.get 1
    global.get 12
    i64.store offset=48
    local.get 1
    global.get 14
    i64.store offset=56
    local.get 1
    global.get 16
    i64.store offset=64
    local.get 1
    global.get 18
    i64.store offset=72
    local.get 1
    global.get 20
    i64.store offset=80
    local.get 1
    global.get 22
    i64.store offset=88
    local.get 1
    global.get 24
    i64.store offset=96
    local.get 1
    global.get 26
    i64.store offset=104
    local.get 1
    global.get 28
    i64.store offset=112
    local.get 1
    global.get 30
    i64.store offset=120
    local.get 1
    global.get 32
    i64.store offset=128
    local.get 1
    global.get 34
    i64.store offset=136
    local.get 1
    global.get 36
    i64.store offset=144
    local.get 1
    global.get 38
    i64.store offset=152
    local.get 1
    global.get 40
    i64.store offset=160
    local.get 1
    global.get 42
    i64.store offset=168
    local.get 1
    global.get 44
    i64.store offset=176
    local.get 1
    global.get 46
    i64.store offset=184
    local.get 1
    global.get 48
    i64.store offset=192)
  (memory (;0;) 10 65536)
  (global (;0;) (mut i64) (i64.const 0))
  (global (;1;) (mut i64) (i64.const 0))
  (global (;2;) (mut i64) (i64.const 0))
  (global (;3;) (mut i64) (i64.const 0))
  (global (;4;) (mut i64) (i64.const 0))
  (global (;5;) (mut i64) (i64.const 0))
  (global (;6;) (mut i64) (i64.const 0))
  (global (;7;) (mut i64) (i64.const 0))
  (global (;8;) (mut i64) (i64.const 0))
  (global (;9;) (mut i64) (i64.const 0))
  (global (;10;) (mut i64) (i64.const 0))
  (global (;11;) (mut i64) (i64.const 0))
  (global (;12;) (mut i64) (i64.const 0))
  (global (;13;) (mut i64) (i64.const 0))
  (global (;14;) (mut i64) (i64.const 0))
  (global (;15;) (mut i64) (i64.const 0))
  (global (;16;) (mut i64) (i64.const 0))
  (global (;17;) (mut i64) (i64.const 0))
  (global (;18;) (mut i64) (i64.const 0))
  (global (;19;) (mut i64) (i64.const 0))
  (global (;20;) (mut i64) (i64.const 0))
  (global (;21;) (mut i64) (i64.const 0))
  (global (;22;) (mut i64) (i64.const 0))
  (global (;23;) (mut i64) (i64.const 0))
  (global (;24;) (mut i64) (i64.const 0))
  (global (;25;) (mut i64) (i64.const 0))
  (global (;26;) (mut i64) (i64.const 0))
  (global (;27;) (mut i64) (i64.const 0))
  (global (;28;) (mut i64) (i64.const 0))
  (global (;29;) (mut i64) (i64.const 0))
  (global (;30;) (mut i64) (i64.const 0))
  (global (;31;) (mut i64) (i64.const 0))
  (global (;32;) (mut i64) (i64.const 0))
  (global (;33;) (mut i64) (i64.const 0))
  (global (;34;) (mut i64) (i64.const 0))
  (global (;35;) (mut i64) (i64.const 0))
  (global (;36;) (mut i64) (i64.const 0))
  (global (;37;) (mut i64) (i64.const 0))
  (global (;38;) (mut i64) (i64.const 0))
  (global (;39;) (mut i64) (i64.const 0))
  (global (;40;) (mut i64) (i64.const 0))
  (global (;41;) (mut i64) (i64.const 0))
  (global (;42;) (mut i64) (i64.const 0))
  (global (;43;) (mut i64) (i64.const 0))
  (global (;44;) (mut i64) (i64.const 0))
  (global (;45;) (mut i64) (i64.const 0))
  (global (;46;) (mut i64) (i64.const 0))
  (global (;47;) (mut i64) (i64.const 0))
  (global (;48;) (mut i64) (i64.const 0))
  (global (;49;) (mut i64) (i64.const 0))
  (global (;50;) (mut i64) (i64.const 0))
  (global (;51;) (mut i64) (i64.const 0))
  (global (;52;) (mut i64) (i64.const 0))
  (global (;53;) (mut i64) (i64.const 0))
  (global (;54;) (mut i64) (i64.const 0))
  (global (;55;) (mut i64) (i64.const 0))
  (global (;56;) (mut i64) (i64.const 0))
  (global (;57;) (mut i64) (i64.const 0))
  (global (;58;) (mut i64) (i64.const 0))
  (global (;59;) (mut i64) (i64.const 0))
  (export "memory" (memory 0))
  (export "init" (func 0))
  (export "pad" (func 1))
  (export "absorb" (func 2))
  (export "squeeze" (func 3))
  (export "f_permute" (func 5)))
