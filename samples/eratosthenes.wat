;; INFO asc module.ts --textFile module.wat --outFile module.wasm --bindings raw -O3 --runtime stub
(module $Eratosthenes
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1084) "<")
 (data (i32.const 1096) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1148) "<")
 (data (i32.const 1160) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1212) "<")
 (data (i32.const 1224) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1276) ",")
 (data (i32.const 1288) "\02\00\00\00\0e\00\00\00a\00b\00o\00r\00t\00e\00d")
 (data (i32.const 1324) ",")
 (data (i32.const 1336) "\02\00\00\00\12\00\00\00m\00o\00d\00u\00l\00e\00.\00t\00s")
 (export "prime" (func $module/prime))
 (export "abort" (func $module/abort))
 (export "memory" (memory $0))
 (start $~start)
 (func $module/prime (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 2
  i32.eq
  if
   i32.const 2
   return
  else
   local.get $0
   i32.const 2
   i32.lt_s
   if
    i32.const 0
    return
   end
  end
  local.get $0
  i32.const 1
  i32.sub
  i32.const 2
  i32.div_s
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1168
   i32.const 1232
   i32.const 86
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 16
  i32.add
  local.tee $4
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1168
   i32.const 1232
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.tee $3
  local.set $5
  local.get $3
  i32.const 4
  i32.add
  local.tee $3
  local.get $4
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $6
  i32.add
  local.tee $4
  memory.size $0
  local.tee $7
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $8
  i32.gt_u
  if
   local.get $7
   local.get $4
   local.get $8
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $8
    memory.grow $0
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/rt/stub/offset
  local.get $5
  local.get $6
  i32.store $0
  local.get $3
  i32.const 4
  i32.sub
  local.tee $4
  i32.const 0
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  i32.store $0 offset=8
  local.get $4
  i32.const 4
  i32.store $0 offset=12
  local.get $4
  local.get $2
  i32.store $0 offset=16
  local.get $3
  i32.const 16
  i32.add
  local.tee $3
  i32.const 0
  local.get $2
  memory.fill $0
  local.get $3
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  local.tee $4
  i32.const 0
  local.get $4
  i32.const 0
  i32.le_s
  select
  local.set $5
  local.get $4
  local.get $5
  i32.gt_s
  if
   local.get $3
   local.get $5
   i32.add
   i32.const 1
   local.get $4
   local.get $5
   i32.sub
   memory.fill $0
  end
  local.get $0
  f32.convert_i32_s
  f32.sqrt
  f32.floor
  i32.trunc_sat_f32_u
  local.set $4
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $4
    local.get $1
    i32.const 1
    i32.shl
    i32.const 3
    i32.add
    local.tee $5
    i32.ge_u
    if
     local.get $1
     i32.const 1
     i32.add
     local.set $0
     loop $for-loop|1
      local.get $0
      local.get $2
      i32.lt_s
      if
       local.get $0
       local.get $3
       i32.add
       i32.load8_u $0
       if
        local.get $0
        i32.const 1
        i32.shl
        i32.const 3
        i32.add
        local.get $5
        i32.rem_u
        i32.eqz
        if
         local.get $0
         local.get $3
         i32.add
         i32.const 0
         i32.store8 $0
        end
       end
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
  end
  i32.const 2
  local.set $1
  local.get $2
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|2
   local.get $0
   i32.const 0
   i32.ge_s
   if
    block $for-break2
     local.get $0
     local.get $3
     i32.add
     i32.load8_u $0
     if
      local.get $0
      i32.const 1
      i32.shl
      i32.const 3
      i32.add
      local.set $1
      br $for-break2
     end
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|2
    end
   end
  end
  local.get $1
 )
 (func $module/abort (type $i32_i32_i32_i32_=>_none) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  i32.const 1296
  i32.const 1344
  i32.const 64
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start (type $none_=>_none)
  i32.const 1372
  global.set $~lib/rt/stub/offset
 )
)
