(module
  (type $t0 (func (param i32) (result i32)))
  (func $fib (type $t0) (param $p0 i32) (result i32)
    block $B0
      local.get $p0
      i32.const 1
      i32.or
      i32.const 1
      i32.ne
      br_if $B0
      local.get $p0
      return
    end
    local.get $p0
    i32.const -1
    i32.add
    call $fib
    local.get $p0
    i32.const -2
    i32.add
    call $fib
    i32.add)
  (table $T0 0 funcref)
  (memory $memory 1)
  (export "memory" (memory 0))
  (export "fib" (func $fib)))
