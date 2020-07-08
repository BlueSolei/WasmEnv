(module
  (type $t0 (func (result i32)))
  (func $main (type $t0) (result i32)
    i32.const 42)
  (table $T0 0 funcref)
  (memory $memory 1)
  (export "memory" (memory 0))
  (export "main" (func $main)))
