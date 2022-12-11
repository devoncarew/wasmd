;; INFO asc module.ts --textFile module.wat --outFile module.wasm --bindings raw -O3z --converge --debug --runtime stub
(module
 (type $i32_i32_=>_none (func (param i32 i32) ))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32) ))
 (type $none_=>_i32 (func (result i32) ))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32) ))
 (type $f64_f64_f64_f64_=>_f64 (func (param f64 f64 f64 f64) (result f64) ))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32) ))
 (type $i32_f64_f64_f64_=>_none (func (param i32 f64 f64 f64) ))
 (type $none_=>_none (func ))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $module/width (mut i32) (i32.const 1200))
 (global $module/height (mut i32) (i32.const 800))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $module/data (mut i32) (i32.const 0))
 (memory $0 60)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1084) "<")
 (data (i32.const 1096) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1148) "<")
 (data (i32.const 1160) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1212) "<")
 (data (i32.const 1224) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (export "width" (global $module/width))
 (export "height" (global $module/height))
 (export "mandelbrot" (func $module/mandelbrot))
 (export "getData" (func $module/getData))
 (export "getDataBuffer" (func $module/getDataBuffer))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/common/OBJECT#set:gcInfo (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/stub/__new (type $i32_i32_=>_i32) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
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
  local.get $0
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
  local.set $3
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $2
  local.get $4
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $4
  i32.add
  local.tee $5
  memory.size
  local.tee $6
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $7
  i32.gt_u
  if
   local.get $6
   local.get $5
   local.get $7
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $7
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $3
  local.get $4
  i32.store
  local.get $2
  i32.const 4
  i32.sub
  local.tee $3
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $3
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $3
  local.get $0
  i32.store offset=16
  local.get $2
  i32.const 16
  i32.add
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:buffer (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $module/scale (type $f64_f64_f64_f64_=>_f64) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (result f64)
  local.get $0
  local.get $1
  local.get $3
  f64.const 1
  local.get $2
  f64.div
  f64.mul
  f64.const -1
  f64.add
  f64.mul
  f64.add
 )
 (func $module/colour (type $i32_i32_=>_i32) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 2
  i32.shl
  local.get $1
  i32.add
  i32.const 1023
  i32.and
  local.tee $0
  i32.const 256
  i32.lt_u
  if
   local.get $0
   return
  else
   local.get $0
   i32.const 512
   i32.lt_u
   if
    i32.const 510
    local.get $0
    i32.sub
    return
   end
  end
  i32.const 0
 )
 (func $~lib/typedarray/Uint8Array#__uset (type $i32_i32_i32_=>_none) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $module/mandelbrot (type $i32_f64_f64_f64_=>_none) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f64)
  (local $14 i32)
  local.get $3
  global.get $module/height
  f64.convert_i32_s
  f64.mul
  global.get $module/width
  f64.convert_i32_s
  f64.div
  local.set $8
  loop $for-loop|0
   local.get $11
   global.get $module/height
   i32.lt_s
   if
    i32.const 0
    local.set $12
    loop $for-loop|1
     local.get $12
     global.get $module/width
     i32.lt_s
     if
      local.get $1
      local.get $3
      global.get $module/width
      f64.convert_i32_s
      local.get $12
      f64.convert_i32_s
      call $module/scale
      local.set $7
      local.get $2
      local.get $8
      global.get $module/height
      f64.convert_i32_s
      local.get $11
      f64.convert_i32_s
      call $module/scale
      local.set $6
      f64.const 0
      local.set $4
      f64.const 0
      local.set $13
      f64.const 0
      local.set $5
      i32.const 0
      local.set $14
      loop $while-continue|0
       local.get $0
       local.get $14
       i32.gt_u
       local.get $13
       local.get $13
       f64.mul
       local.get $5
       local.get $5
       f64.mul
       f64.add
       f64.const 4
       f64.le
       i32.and
       if
        local.get $13
        local.get $4
        f64.mul
        local.tee $5
        local.get $5
        f64.add
        local.get $6
        f64.add
        local.set $5
        local.get $13
        local.get $13
        f64.mul
        local.get $4
        local.get $4
        f64.mul
        f64.sub
        local.get $7
        f64.add
        local.set $13
        local.get $5
        local.set $4
        local.get $14
        i32.const 1
        i32.add
        local.set $14
        br $while-continue|0
       end
      end
      global.get $module/data
      local.get $12
      local.get $11
      global.get $module/width
      i32.mul
      i32.add
      i32.const 2
      i32.shl
      local.tee $10
      local.get $0
      local.get $14
      i32.eq
      local.tee $9
      if (result i32)
       i32.const 0
      else
       local.get $14
       i32.const 0
       call $module/colour
      end
      call $~lib/typedarray/Uint8Array#__uset
      global.get $module/data
      local.get $10
      i32.const 1
      i32.add
      local.get $9
      if (result i32)
       i32.const 0
      else
       local.get $14
       i32.const 128
       call $module/colour
      end
      call $~lib/typedarray/Uint8Array#__uset
      global.get $module/data
      local.get $10
      i32.const 2
      i32.add
      local.get $9
      if (result i32)
       i32.const 0
      else
       local.get $14
       i32.const 356
       call $module/colour
      end
      call $~lib/typedarray/Uint8Array#__uset
      global.get $module/data
      local.get $10
      i32.const 3
      i32.add
      i32.const 255
      call $~lib/typedarray/Uint8Array#__uset
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
 (func $module/getData (type $none_=>_i32) (result i32)
  global.get $module/data
 )
 (func $module/getDataBuffer (type $none_=>_i32) (result i32)
  global.get $module/data
  i32.load
 )
 (func $~start (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 1276
  global.set $~lib/rt/stub/offset
  global.get $module/width
  global.get $module/height
  i32.mul
  i32.const 2
  i32.shl
  local.set $1
  i32.const 12
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 12
   i32.const 3
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 19
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  local.get $1
  memory.fill
  local.get $0
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $0
  local.get $2
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  local.get $1
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $0
  global.set $module/data
 )
)
