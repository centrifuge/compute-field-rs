(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32) (result i64)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i64 i32 i32) (result i32)))
  (func $compute (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    local.get 1
    call $_ZN14compute_fields11fetch_bytes17h2cf30e0e39680d36E
    i32.const 0
    local.set 0
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    i64.const 1
    i64.store offset=16
    local.get 2
    i32.load offset=4
    local.set 3
    local.get 2
    i32.load
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    i32.const 0
    local.get 2
    i32.load offset=8
    local.tee 4
    call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcf42ffa8c5b2789cE
    local.get 2
    i32.load offset=24
    local.set 5
    block  ;; label = @1
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      i32.add
      local.set 6
      local.get 2
      i32.load offset=16
      local.get 5
      i32.add
      local.set 7
      loop  ;; label = @2
        local.get 7
        local.get 0
        i32.add
        local.get 1
        local.get 0
        i32.add
        i32.load8_u
        i32.const 1
        i32.add
        i32.store8
        local.get 4
        local.get 0
        i32.const 1
        i32.add
        local.tee 0
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 6
      local.get 5
      local.get 1
      i32.sub
      i32.add
      local.set 5
    end
    local.get 2
    local.get 5
    i32.store offset=24
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      i32.const 1
      call $__rust_dealloc
    end
    local.get 2
    i32.load offset=16
    local.set 0
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcf42ffa8c5b2789cE (type 3) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 3
      local.get 1
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 2
              i32.add
              local.tee 2
              local.get 1
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              i32.const 1
              i32.shl
              local.tee 1
              local.get 2
              local.get 1
              local.get 2
              i32.gt_u
              select
              local.tee 1
              i32.const 8
              local.get 1
              i32.const 8
              i32.gt_u
              select
              local.tee 1
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 0
                i32.load
                i32.const 0
                local.get 3
                select
                local.tee 2
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                local.get 1
                i32.eq
                br_if 4 (;@2;)
                local.get 3
                br_if 2 (;@4;)
                local.get 1
                i32.const 1
                call $__rust_alloc
                local.tee 2
                br_if 4 (;@2;)
                br 3 (;@3;)
              end
              local.get 1
              i32.const 1
              call $__rust_alloc
              local.tee 2
              i32.eqz
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            call $_ZN5alloc7raw_vec17capacity_overflow17h68628d0ac9272c65E
            unreachable
          end
          local.get 2
          local.get 3
          i32.const 1
          local.get 1
          call $__rust_realloc
          local.tee 2
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17h37203254b8cad21fE
        unreachable
      end
      local.get 0
      local.get 2
      i32.store
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      i32.store
    end)
  (func $__rust_alloc (type 2) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    call $__rdl_alloc
    local.set 2
    local.get 2
    return)
  (func $__rust_dealloc (type 3) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rdl_dealloc
    return)
  (func $__rust_realloc (type 4) (param i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__rdl_realloc
    local.set 4
    local.get 4
    return)
  (func $allocate (type 5) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          br_if 0 (;@3;)
          i32.const 1
          return
        end
        local.get 0
        i32.const 1
        call $__rust_alloc
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        return
      end
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h0e522d5c7edc79c9E.llvm.15286878653109498206
      unreachable
    end
    local.get 0
    i32.const 1
    call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h710a0c7095481ee2E.llvm.15286878653109498206
    unreachable)
  (func $_ZN14compute_fields11fetch_bytes17h2cf30e0e39680d36E (type 3) (param i32 i32 i32)
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h0e522d5c7edc79c9E.llvm.15286878653109498206 (type 6)
    call $_ZN5alloc7raw_vec17capacity_overflow17h68628d0ac9272c65E
    unreachable)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h710a0c7095481ee2E.llvm.15286878653109498206 (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN5alloc5alloc18handle_alloc_error17h37203254b8cad21fE
    unreachable)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h56754634db5e7f2fE (type 7) (param i32) (result i64)
    i64.const -4761075061836029191)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h67bc07ae363033afE (type 7) (param i32) (result i64)
    i64.const -1261915248266411769)
  (func $_ZN4core3ptr13drop_in_place17h01a2b324b9403b1dE (type 8) (param i32))
  (func $_ZN4core3ptr13drop_in_place17h0930f00e07145758E (type 8) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr13drop_in_place17h73d4775542387c46E (type 8) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h82cc8250ba57d0beE (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1048616
      i32.const 43
      local.get 1
      call $_ZN4core9panicking5panic17h9e1d61e86fb54de0E
      unreachable
    end
    local.get 0)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17hb18aafa7b728e985E (type 5) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1048616
      i32.const 43
      i32.const 1048700
      call $_ZN4core9panicking5panic17h9e1d61e86fb54de0E
      unreachable
    end
    local.get 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hae9e3a63c609ccc3E (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            i32.const 0
            i32.store offset=12
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 2
            i32.const 12
            i32.add
            local.set 3
            block  ;; label = @5
              local.get 1
              i32.const 65536
              i32.ge_u
              br_if 0 (;@5;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8 offset=12
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              i32.const 3
              local.set 1
              br 3 (;@2;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 4
            local.set 1
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 3
            local.get 0
            i32.const 4
            i32.add
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            i32.const 1
            call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hb2f4567c4ae4c8c2E
            local.get 0
            i32.load offset=8
            local.set 3
          end
          local.get 0
          i32.load
          local.get 3
          i32.add
          local.get 1
          i32.store8
          local.get 0
          local.get 0
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        local.get 2
        i32.const 12
        i32.add
        local.set 3
        i32.const 2
        local.set 1
      end
      local.get 0
      local.get 1
      call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hb2f4567c4ae4c8c2E
      local.get 0
      i32.load
      local.get 0
      i32.const 8
      i32.add
      local.tee 0
      i32.load
      local.tee 4
      i32.add
      local.get 3
      local.get 1
      call $memcpy
      drop
      local.get 0
      local.get 4
      local.get 1
      i32.add
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hb2f4567c4ae4c8c2E (type 0) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.sub
          local.get 1
          i32.ge_u
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.add
          local.tee 1
          local.get 3
          i32.lt_u
          br_if 1 (;@2;)
          local.get 2
          i32.const 1
          i32.shl
          local.tee 3
          local.get 1
          local.get 3
          local.get 1
          i32.gt_u
          select
          local.tee 1
          i32.const 8
          local.get 1
          i32.const 8
          i32.gt_u
          select
          local.tee 3
          i32.const 0
          i32.lt_s
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load
              i32.const 0
              local.get 2
              select
              local.tee 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 3
              i32.eq
              br_if 1 (;@4;)
              block  ;; label = @6
                local.get 2
                br_if 0 (;@6;)
                local.get 3
                i32.const 1
                call $__rust_alloc
                local.set 1
                br 2 (;@4;)
              end
              local.get 1
              local.get 2
              i32.const 1
              local.get 3
              call $__rust_realloc
              local.set 1
              br 1 (;@4;)
            end
            local.get 3
            i32.const 1
            call $__rust_alloc
            local.set 1
          end
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.get 3
          i32.store
        end
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h68628d0ac9272c65E
      unreachable
    end
    local.get 3
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h37203254b8cad21fE
    unreachable)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h7beed5d744404203E (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1048576
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17hd24418470d562dc3E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hd7cf6868c493fbb7E (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 0
    local.get 2
    call $_ZN5alloc3vec12Vec$LT$T$GT$7reserve17hb2f4567c4ae4c8c2E
    local.get 0
    i32.load
    local.get 0
    i32.const 8
    i32.add
    local.tee 0
    i32.load
    local.tee 3
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store
    i32.const 0)
  (func $_ZN3std5alloc24default_alloc_error_hook17h2f9e4aa191e28d8cE (type 0) (param i32 i32))
  (func $rust_oom (type 0) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 0
    i32.load offset=1049152
    local.tee 2
    i32.const 1
    local.get 2
    select
    call_indirect (type 0)
    unreachable
    unreachable)
  (func $__rdl_alloc (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      i32.const 1049168
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h67fead39b72713bcE
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 1049168
      local.get 1
      local.get 0
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc8memalign17h14b9d8fc114b12bcE
      return
    end
    i32.const 1049168
    local.get 0
    call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17hf4859b007f0a3e3bE)
  (func $__rdl_dealloc (type 3) (param i32 i32 i32)
    i32.const 1049168
    local.get 0
    call $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17h2a5c4170daac3278E)
  (func $__rdl_realloc (type 4) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 1049168
        call $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h67fead39b72713bcE
        local.get 2
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1049168
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h67fead39b72713bcE
            local.get 2
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 1049168
            local.get 2
            local.get 3
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc8memalign17h14b9d8fc114b12bcE
            local.set 2
            br 1 (;@3;)
          end
          i32.const 1049168
          local.get 3
          call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17hf4859b007f0a3e3bE
          local.set 2
        end
        local.get 2
        br_if 1 (;@1;)
        i32.const 0
        return
      end
      i32.const 1049168
      local.get 0
      local.get 3
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc7realloc17had273358f77e39ffE
      return
    end
    local.get 2
    local.get 0
    local.get 3
    local.get 1
    local.get 1
    local.get 3
    i32.gt_u
    select
    call $memcpy
    local.set 2
    i32.const 1049168
    local.get 0
    call $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17h2a5c4170daac3278E
    local.get 2)
  (func $rust_begin_unwind (type 8) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    call $_ZN4core5panic9PanicInfo8location17hf2ea3d8ea5e80033E
    i32.const 1048684
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17h82cc8250ba57d0beE
    local.set 2
    local.get 0
    call $_ZN4core5panic9PanicInfo7message17h1408574dfb4db11eE
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17hb18aafa7b728e985E
    local.set 3
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 1
    i32.const 1048716
    local.get 0
    call $_ZN4core5panic9PanicInfo7message17h1408574dfb4db11eE
    local.get 2
    call $_ZN3std9panicking20rust_panic_with_hook17hf2c303df71675c7aE
    unreachable)
  (func $_ZN3std9panicking20rust_panic_with_hook17hf2c303df71675c7aE (type 9) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    i32.const 1
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1049624
            i32.const 1
            i32.eq
            br_if 0 (;@4;)
            i32.const 0
            i64.const 4294967297
            i64.store offset=1049624
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 0
          i32.load offset=1049628
          i32.const 1
          i32.add
          local.tee 5
          i32.store offset=1049628
          local.get 5
          i32.const 2
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 4
        local.get 3
        i32.store offset=28
        local.get 4
        local.get 2
        i32.store offset=24
        local.get 4
        i32.const 1048600
        i32.store offset=20
        local.get 4
        i32.const 1048600
        i32.store offset=16
        i32.const 0
        i32.load offset=1049156
        local.tee 2
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.store offset=1049156
        block  ;; label = @3
          i32.const 0
          i32.load offset=1049164
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1049160
          local.set 2
          local.get 4
          i32.const 8
          i32.add
          local.get 0
          local.get 1
          i32.load offset=16
          call_indirect (type 0)
          local.get 4
          local.get 4
          i64.load offset=8
          i64.store offset=16
          local.get 2
          local.get 4
          i32.const 16
          i32.add
          local.get 3
          i32.load offset=12
          call_indirect (type 0)
          i32.const 0
          i32.load offset=1049156
          local.set 2
        end
        i32.const 0
        local.get 2
        i32.const -1
        i32.add
        i32.store offset=1049156
        local.get 5
        i32.const 1
        i32.le_u
        br_if 1 (;@1;)
      end
      unreachable
      unreachable
    end
    local.get 0
    local.get 1
    call $rust_panic
    unreachable)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17he523773befdbd751E (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      local.tee 3
      br_if 0 (;@1;)
      local.get 1
      i32.const 4
      i32.add
      local.set 3
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 0
      i32.store offset=32
      local.get 2
      i64.const 1
      i64.store offset=24
      local.get 2
      local.get 2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get 2
      i32.const 40
      i32.add
      i32.const 16
      i32.add
      local.get 4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.get 4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 4
      i64.load align=4
      i64.store offset=40
      local.get 2
      i32.const 36
      i32.add
      i32.const 1048576
      local.get 2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17hd24418470d562dc3E
      drop
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      local.get 2
      i32.load offset=32
      i32.store
      local.get 2
      local.get 2
      i64.load offset=24
      i64.store offset=8
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 6
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 3
      i32.load
      local.set 3
    end
    local.get 1
    i32.const 1
    i32.store offset=4
    local.get 1
    i32.const 12
    i32.add
    i32.load
    local.set 4
    local.get 1
    i32.const 8
    i32.add
    local.tee 1
    i32.load
    local.set 5
    local.get 1
    i64.const 0
    i64.store align=4
    block  ;; label = @1
      i32.const 12
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h37203254b8cad21fE
      unreachable
    end
    local.get 1
    local.get 4
    i32.store offset=8
    local.get 1
    local.get 5
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1048736
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 64
    i32.add
    global.set 0)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h3ed0a913eced122dE (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 0
      i32.store offset=32
      local.get 2
      i64.const 1
      i64.store offset=24
      local.get 2
      local.get 2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get 2
      i32.const 40
      i32.add
      i32.const 16
      i32.add
      local.get 4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.get 4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 4
      i64.load align=4
      i64.store offset=40
      local.get 2
      i32.const 36
      i32.add
      i32.const 1048576
      local.get 2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17hd24418470d562dc3E
      drop
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      local.get 2
      i32.load offset=32
      i32.store
      local.get 2
      local.get 2
      i64.load offset=24
      i64.store offset=8
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
    end
    local.get 0
    i32.const 1048736
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 64
    i32.add
    global.set 0)
  (func $rust_panic (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $__rust_start_panic
    drop
    unreachable
    unreachable)
  (func $__rust_start_panic (type 5) (param i32) (result i32)
    unreachable
    unreachable)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h67fead39b72713bcE (type 5) (param i32) (result i32)
    i32.const 8)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17hf4859b007f0a3e3bE (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 245
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              local.get 1
              i32.const -65587
              i32.ge_u
              br_if 4 (;@1;)
              local.get 1
              i32.const 11
              i32.add
              local.tee 1
              i32.const -8
              i32.and
              local.set 3
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 4
              i32.eqz
              br_if 1 (;@4;)
              i32.const 0
              local.set 5
              block  ;; label = @6
                local.get 1
                i32.const 8
                i32.shr_u
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                i32.const 31
                local.set 5
                local.get 3
                i32.const 16777215
                i32.gt_u
                br_if 0 (;@6;)
                local.get 3
                i32.const 6
                local.get 1
                i32.clz
                local.tee 1
                i32.sub
                i32.const 31
                i32.and
                i32.shr_u
                i32.const 1
                i32.and
                local.get 1
                i32.const 1
                i32.shl
                i32.sub
                i32.const 62
                i32.add
                local.set 5
              end
              i32.const 0
              local.get 3
              i32.sub
              local.set 2
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    local.get 5
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 272
                    i32.add
                    i32.load
                    local.tee 1
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 6
                    local.get 3
                    i32.const 0
                    i32.const 25
                    local.get 5
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    i32.const 31
                    i32.and
                    local.get 5
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 7
                    i32.const 0
                    local.set 8
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const 4
                        i32.add
                        i32.load
                        i32.const -8
                        i32.and
                        local.tee 9
                        local.get 3
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 9
                        local.get 3
                        i32.sub
                        local.tee 9
                        local.get 2
                        i32.ge_u
                        br_if 0 (;@10;)
                        local.get 9
                        local.set 2
                        local.get 1
                        local.set 8
                        local.get 9
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 2
                        local.get 1
                        local.set 8
                        br 3 (;@7;)
                      end
                      local.get 1
                      i32.const 20
                      i32.add
                      i32.load
                      local.tee 9
                      local.get 6
                      local.get 9
                      local.get 1
                      local.get 7
                      i32.const 29
                      i32.shr_u
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      i32.load
                      local.tee 1
                      i32.ne
                      select
                      local.get 6
                      local.get 9
                      select
                      local.set 6
                      local.get 7
                      i32.const 1
                      i32.shl
                      local.set 7
                      local.get 1
                      br_if 0 (;@9;)
                    end
                    block  ;; label = @9
                      local.get 6
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 6
                      local.set 1
                      br 2 (;@7;)
                    end
                    local.get 8
                    br_if 2 (;@6;)
                  end
                  i32.const 0
                  local.set 8
                  i32.const 2
                  local.get 5
                  i32.const 31
                  i32.and
                  i32.shl
                  local.tee 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.or
                  local.get 4
                  i32.and
                  local.tee 1
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  local.get 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.and
                  i32.ctz
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.const 272
                  i32.add
                  i32.load
                  local.tee 1
                  i32.eqz
                  br_if 3 (;@4;)
                end
                loop  ;; label = @7
                  local.get 1
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const -8
                  i32.and
                  local.tee 6
                  local.get 3
                  i32.ge_u
                  local.get 6
                  local.get 3
                  i32.sub
                  local.tee 9
                  local.get 2
                  i32.lt_u
                  i32.and
                  local.set 7
                  block  ;; label = @8
                    local.get 1
                    i32.load offset=16
                    local.tee 6
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 20
                    i32.add
                    i32.load
                    local.set 6
                  end
                  local.get 1
                  local.get 8
                  local.get 7
                  select
                  local.set 8
                  local.get 9
                  local.get 2
                  local.get 7
                  select
                  local.set 2
                  local.get 6
                  local.set 1
                  local.get 6
                  br_if 0 (;@7;)
                end
                local.get 8
                i32.eqz
                br_if 2 (;@4;)
              end
              block  ;; label = @6
                local.get 0
                i32.load offset=400
                local.tee 1
                local.get 3
                i32.lt_u
                br_if 0 (;@6;)
                local.get 2
                local.get 1
                local.get 3
                i32.sub
                i32.ge_u
                br_if 2 (;@4;)
              end
              local.get 8
              i32.load offset=24
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    i32.load offset=12
                    local.tee 6
                    local.get 8
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 8
                    i32.const 20
                    i32.const 16
                    local.get 8
                    i32.const 20
                    i32.add
                    local.tee 6
                    i32.load
                    local.tee 7
                    select
                    i32.add
                    i32.load
                    local.tee 1
                    br_if 1 (;@7;)
                    i32.const 0
                    local.set 6
                    br 2 (;@6;)
                  end
                  local.get 8
                  i32.load offset=8
                  local.tee 1
                  local.get 6
                  i32.store offset=12
                  local.get 6
                  local.get 1
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 6
                local.get 8
                i32.const 16
                i32.add
                local.get 7
                select
                local.set 7
                loop  ;; label = @7
                  local.get 7
                  local.set 9
                  block  ;; label = @8
                    local.get 1
                    local.tee 6
                    i32.const 20
                    i32.add
                    local.tee 7
                    i32.load
                    local.tee 1
                    br_if 0 (;@8;)
                    local.get 6
                    i32.const 16
                    i32.add
                    local.set 7
                    local.get 6
                    i32.load offset=16
                    local.set 1
                  end
                  local.get 1
                  br_if 0 (;@7;)
                end
                local.get 9
                i32.const 0
                i32.store
              end
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    local.get 8
                    i32.load offset=28
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 272
                    i32.add
                    local.tee 1
                    i32.load
                    local.get 8
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 16
                    i32.const 20
                    local.get 5
                    i32.load offset=16
                    local.get 8
                    i32.eq
                    select
                    i32.add
                    local.get 6
                    i32.store
                    local.get 6
                    i32.eqz
                    br_if 2 (;@6;)
                    br 1 (;@7;)
                  end
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 6
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 4
                  i32.add
                  local.tee 1
                  local.get 1
                  i32.load
                  i32.const -2
                  local.get 8
                  i32.load offset=28
                  i32.rotl
                  i32.and
                  i32.store
                  br 1 (;@6;)
                end
                local.get 6
                local.get 5
                i32.store offset=24
                block  ;; label = @7
                  local.get 8
                  i32.load offset=16
                  local.tee 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 1
                  i32.store offset=16
                  local.get 1
                  local.get 6
                  i32.store offset=24
                end
                local.get 8
                i32.const 20
                i32.add
                i32.load
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.const 20
                i32.add
                local.get 1
                i32.store
                local.get 1
                local.get 6
                i32.store offset=24
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 16
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 3
                  i32.const 3
                  i32.or
                  i32.store offset=4
                  local.get 8
                  local.get 3
                  i32.add
                  local.tee 3
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 3
                  local.get 2
                  i32.add
                  local.get 2
                  i32.store
                  block  ;; label = @8
                    local.get 2
                    i32.const 256
                    i32.lt_u
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        i32.const 8
                        i32.shr_u
                        local.tee 6
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 1
                        br 1 (;@9;)
                      end
                      i32.const 31
                      local.set 1
                      local.get 2
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 6
                      local.get 6
                      i32.clz
                      local.tee 1
                      i32.sub
                      i32.const 31
                      i32.and
                      i32.shr_u
                      i32.const 1
                      i32.and
                      local.get 1
                      i32.const 1
                      i32.shl
                      i32.sub
                      i32.const 62
                      i32.add
                      local.set 1
                    end
                    local.get 3
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 3
                    local.get 1
                    i32.store offset=28
                    local.get 0
                    local.get 1
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 272
                    i32.add
                    local.set 6
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              i32.const 4
                              i32.add
                              local.tee 7
                              i32.load
                              local.tee 9
                              i32.const 1
                              local.get 1
                              i32.const 31
                              i32.and
                              i32.shl
                              local.tee 0
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 6
                              i32.load
                              local.tee 7
                              i32.const 4
                              i32.add
                              i32.load
                              i32.const -8
                              i32.and
                              local.get 2
                              i32.ne
                              br_if 1 (;@12;)
                              local.get 7
                              local.set 1
                              br 2 (;@11;)
                            end
                            local.get 7
                            local.get 9
                            local.get 0
                            i32.or
                            i32.store
                            local.get 6
                            local.get 3
                            i32.store
                            local.get 3
                            local.get 6
                            i32.store offset=24
                            br 3 (;@9;)
                          end
                          local.get 2
                          i32.const 0
                          i32.const 25
                          local.get 1
                          i32.const 1
                          i32.shr_u
                          i32.sub
                          i32.const 31
                          i32.and
                          local.get 1
                          i32.const 31
                          i32.eq
                          select
                          i32.shl
                          local.set 6
                          loop  ;; label = @12
                            local.get 7
                            local.get 6
                            i32.const 29
                            i32.shr_u
                            i32.const 4
                            i32.and
                            i32.add
                            i32.const 16
                            i32.add
                            local.tee 9
                            i32.load
                            local.tee 1
                            i32.eqz
                            br_if 2 (;@10;)
                            local.get 6
                            i32.const 1
                            i32.shl
                            local.set 6
                            local.get 1
                            local.set 7
                            local.get 1
                            i32.const 4
                            i32.add
                            i32.load
                            i32.const -8
                            i32.and
                            local.get 2
                            i32.ne
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 1
                        i32.load offset=8
                        local.tee 2
                        local.get 3
                        i32.store offset=12
                        local.get 1
                        local.get 3
                        i32.store offset=8
                        local.get 3
                        i32.const 0
                        i32.store offset=24
                        local.get 3
                        local.get 1
                        i32.store offset=12
                        local.get 3
                        local.get 2
                        i32.store offset=8
                        br 4 (;@6;)
                      end
                      local.get 9
                      local.get 3
                      i32.store
                      local.get 3
                      local.get 7
                      i32.store offset=24
                    end
                    local.get 3
                    local.get 3
                    i32.store offset=12
                    local.get 3
                    local.get 3
                    i32.store offset=8
                    br 2 (;@6;)
                  end
                  local.get 0
                  local.get 2
                  i32.const 3
                  i32.shr_u
                  local.tee 2
                  i32.const 3
                  i32.shl
                  i32.add
                  i32.const 8
                  i32.add
                  local.set 1
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load
                      local.tee 6
                      i32.const 1
                      local.get 2
                      i32.shl
                      local.tee 2
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load offset=8
                      local.set 2
                      br 1 (;@8;)
                    end
                    local.get 0
                    local.get 6
                    local.get 2
                    i32.or
                    i32.store
                    local.get 1
                    local.set 2
                  end
                  local.get 1
                  local.get 3
                  i32.store offset=8
                  local.get 2
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 1
                  i32.store offset=12
                  local.get 3
                  local.get 2
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 8
                local.get 2
                local.get 3
                i32.add
                local.tee 1
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 8
                local.get 1
                i32.add
                local.tee 1
                local.get 1
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
              end
              local.get 8
              i32.const 8
              i32.add
              return
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load
                  local.tee 8
                  i32.const 16
                  local.get 1
                  i32.const 11
                  i32.add
                  i32.const -8
                  i32.and
                  local.get 1
                  i32.const 11
                  i32.lt_u
                  select
                  local.tee 3
                  i32.const 3
                  i32.shr_u
                  local.tee 2
                  i32.shr_u
                  local.tee 1
                  i32.const 3
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 0
                  i32.load offset=400
                  i32.le_u
                  br_if 3 (;@4;)
                  local.get 1
                  br_if 1 (;@6;)
                  local.get 0
                  i32.load offset=4
                  local.tee 1
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  local.get 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.and
                  i32.ctz
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.const 272
                  i32.add
                  i32.load
                  local.tee 6
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const -8
                  i32.and
                  local.get 3
                  i32.sub
                  local.set 2
                  local.get 6
                  local.set 7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.load offset=16
                      local.tee 1
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 20
                      i32.add
                      i32.load
                      local.tee 1
                      i32.eqz
                      br_if 4 (;@5;)
                    end
                    local.get 1
                    i32.const 4
                    i32.add
                    i32.load
                    i32.const -8
                    i32.and
                    local.get 3
                    i32.sub
                    local.tee 6
                    local.get 2
                    local.get 6
                    local.get 2
                    i32.lt_u
                    local.tee 6
                    select
                    local.set 2
                    local.get 1
                    local.get 7
                    local.get 6
                    select
                    local.set 7
                    local.get 1
                    local.set 6
                    br 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    local.get 1
                    i32.const -1
                    i32.xor
                    i32.const 1
                    i32.and
                    local.get 2
                    i32.add
                    local.tee 3
                    i32.const 3
                    i32.shl
                    i32.add
                    local.tee 7
                    i32.const 16
                    i32.add
                    i32.load
                    local.tee 1
                    i32.const 8
                    i32.add
                    local.tee 2
                    i32.load
                    local.tee 6
                    local.get 7
                    i32.const 8
                    i32.add
                    local.tee 7
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 6
                    local.get 7
                    i32.store offset=12
                    local.get 7
                    local.get 6
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  local.get 0
                  local.get 8
                  i32.const -2
                  local.get 3
                  i32.rotl
                  i32.and
                  i32.store
                end
                local.get 1
                local.get 3
                i32.const 3
                i32.shl
                local.tee 3
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 1
                local.get 3
                i32.add
                local.tee 1
                local.get 1
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                br 5 (;@1;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 1
                  local.get 2
                  i32.shl
                  i32.const 2
                  local.get 2
                  i32.shl
                  local.tee 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.or
                  i32.and
                  local.tee 1
                  i32.const 0
                  local.get 1
                  i32.sub
                  i32.and
                  i32.ctz
                  local.tee 2
                  i32.const 3
                  i32.shl
                  i32.add
                  local.tee 7
                  i32.const 16
                  i32.add
                  i32.load
                  local.tee 1
                  i32.const 8
                  i32.add
                  local.tee 9
                  i32.load
                  local.tee 6
                  local.get 7
                  i32.const 8
                  i32.add
                  local.tee 7
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 7
                  i32.store offset=12
                  local.get 7
                  local.get 6
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 0
                local.get 8
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store
              end
              local.get 1
              local.get 3
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 1
              local.get 3
              i32.add
              local.tee 6
              local.get 2
              i32.const 3
              i32.shl
              local.tee 2
              local.get 3
              i32.sub
              local.tee 3
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 2
              i32.add
              local.get 3
              i32.store
              block  ;; label = @6
                local.get 0
                i32.load offset=400
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                local.get 1
                i32.const 3
                i32.shr_u
                local.tee 7
                i32.const 3
                i32.shl
                i32.add
                i32.const 8
                i32.add
                local.set 2
                local.get 0
                i32.load offset=408
                local.set 1
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load
                    local.tee 8
                    i32.const 1
                    local.get 7
                    i32.const 31
                    i32.and
                    i32.shl
                    local.tee 7
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    i32.load offset=8
                    local.set 7
                    br 1 (;@7;)
                  end
                  local.get 0
                  local.get 8
                  local.get 7
                  i32.or
                  i32.store
                  local.get 2
                  local.set 7
                end
                local.get 2
                local.get 1
                i32.store offset=8
                local.get 7
                local.get 1
                i32.store offset=12
                local.get 1
                local.get 2
                i32.store offset=12
                local.get 1
                local.get 7
                i32.store offset=8
              end
              local.get 0
              local.get 6
              i32.store offset=408
              local.get 0
              local.get 3
              i32.store offset=400
              local.get 9
              return
            end
            local.get 7
            i32.load offset=24
            local.set 5
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 7
                  i32.load offset=12
                  local.tee 6
                  local.get 7
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 7
                  i32.const 20
                  i32.const 16
                  local.get 7
                  i32.const 20
                  i32.add
                  local.tee 6
                  i32.load
                  local.tee 8
                  select
                  i32.add
                  i32.load
                  local.tee 1
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 6
                  br 2 (;@5;)
                end
                local.get 7
                i32.load offset=8
                local.tee 1
                local.get 6
                i32.store offset=12
                local.get 6
                local.get 1
                i32.store offset=8
                br 1 (;@5;)
              end
              local.get 6
              local.get 7
              i32.const 16
              i32.add
              local.get 8
              select
              local.set 8
              loop  ;; label = @6
                local.get 8
                local.set 9
                block  ;; label = @7
                  local.get 1
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 8
                  i32.load
                  local.tee 1
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 8
                  local.get 6
                  i32.load offset=16
                  local.set 1
                end
                local.get 1
                br_if 0 (;@6;)
              end
              local.get 9
              i32.const 0
              i32.store
            end
            local.get 5
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 0
              local.get 7
              i32.load offset=28
              i32.const 2
              i32.shl
              i32.add
              i32.const 272
              i32.add
              local.tee 1
              i32.load
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 5
              i32.const 16
              i32.const 20
              local.get 5
              i32.load offset=16
              local.get 7
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 3 (;@2;)
              br 2 (;@3;)
            end
            local.get 1
            local.get 6
            i32.store
            local.get 6
            br_if 1 (;@3;)
            local.get 0
            local.get 0
            i32.load offset=4
            i32.const -2
            local.get 7
            i32.load offset=28
            i32.rotl
            i32.and
            i32.store offset=4
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=400
                      local.tee 1
                      local.get 3
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.load offset=404
                      local.tee 1
                      local.get 3
                      i32.gt_u
                      br_if 3 (;@6;)
                      i32.const 0
                      local.set 2
                      local.get 3
                      i32.const 65583
                      i32.add
                      local.tee 6
                      i32.const 16
                      i32.shr_u
                      memory.grow
                      local.tee 1
                      i32.const -1
                      i32.eq
                      br_if 8 (;@1;)
                      local.get 1
                      i32.const 16
                      i32.shl
                      local.tee 8
                      i32.eqz
                      br_if 8 (;@1;)
                      local.get 0
                      local.get 0
                      i32.load offset=416
                      local.get 6
                      i32.const -65536
                      i32.and
                      local.tee 5
                      i32.add
                      local.tee 1
                      i32.store offset=416
                      local.get 0
                      local.get 0
                      i32.load offset=420
                      local.tee 6
                      local.get 1
                      local.get 6
                      local.get 1
                      i32.gt_u
                      select
                      i32.store offset=420
                      local.get 0
                      i32.load offset=412
                      local.tee 6
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 0
                      i32.const 424
                      i32.add
                      local.tee 4
                      local.set 1
                      loop  ;; label = @10
                        local.get 1
                        i32.load
                        local.tee 7
                        local.get 1
                        i32.load offset=4
                        local.tee 9
                        i32.add
                        local.get 8
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 1
                        i32.load offset=8
                        local.tee 1
                        br_if 0 (;@10;)
                        br 5 (;@5;)
                      end
                    end
                    local.get 0
                    i32.load offset=408
                    local.set 2
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        local.get 3
                        i32.sub
                        local.tee 6
                        i32.const 15
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 0
                        i32.store offset=408
                        local.get 0
                        i32.const 0
                        i32.store offset=400
                        local.get 2
                        local.get 1
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 2
                        local.get 1
                        i32.add
                        local.tee 3
                        i32.const 4
                        i32.add
                        local.set 1
                        local.get 3
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        local.set 3
                        br 1 (;@9;)
                      end
                      local.get 0
                      local.get 6
                      i32.store offset=400
                      local.get 0
                      local.get 2
                      local.get 3
                      i32.add
                      local.tee 7
                      i32.store offset=408
                      local.get 7
                      local.get 6
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 2
                      local.get 1
                      i32.add
                      local.get 6
                      i32.store
                      local.get 3
                      i32.const 3
                      i32.or
                      local.set 3
                      local.get 2
                      i32.const 4
                      i32.add
                      local.set 1
                    end
                    local.get 1
                    local.get 3
                    i32.store
                    local.get 2
                    i32.const 8
                    i32.add
                    return
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=444
                      local.tee 1
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 8
                      i32.le_u
                      br_if 1 (;@8;)
                    end
                    local.get 0
                    local.get 8
                    i32.store offset=444
                  end
                  local.get 0
                  i32.const 4095
                  i32.store offset=448
                  local.get 0
                  local.get 8
                  i32.store offset=424
                  local.get 0
                  i32.const 436
                  i32.add
                  i32.const 0
                  i32.store
                  local.get 0
                  i32.const 428
                  i32.add
                  local.get 5
                  i32.store
                  local.get 0
                  i32.const 20
                  i32.add
                  local.get 0
                  i32.const 8
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 0
                  i32.const 28
                  i32.add
                  local.get 0
                  i32.const 16
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 36
                  i32.add
                  local.get 0
                  i32.const 24
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 44
                  i32.add
                  local.get 0
                  i32.const 32
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 52
                  i32.add
                  local.get 0
                  i32.const 40
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 60
                  i32.add
                  local.get 0
                  i32.const 48
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 68
                  i32.add
                  local.get 0
                  i32.const 56
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 76
                  i32.add
                  local.get 0
                  i32.const 64
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 84
                  i32.add
                  local.get 0
                  i32.const 72
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 80
                  i32.add
                  local.tee 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 92
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 88
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 100
                  i32.add
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 96
                  i32.add
                  local.tee 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 108
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 104
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 116
                  i32.add
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 112
                  i32.add
                  local.tee 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 124
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 120
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 132
                  i32.add
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 128
                  i32.add
                  local.tee 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 140
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 136
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 148
                  i32.add
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 156
                  i32.add
                  local.get 0
                  i32.const 144
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 164
                  i32.add
                  local.get 0
                  i32.const 152
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 172
                  i32.add
                  local.get 0
                  i32.const 160
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 180
                  i32.add
                  local.get 0
                  i32.const 168
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 188
                  i32.add
                  local.get 0
                  i32.const 176
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 196
                  i32.add
                  local.get 0
                  i32.const 184
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 204
                  i32.add
                  local.get 0
                  i32.const 192
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 212
                  i32.add
                  local.get 0
                  i32.const 200
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 220
                  i32.add
                  local.get 0
                  i32.const 208
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 228
                  i32.add
                  local.get 0
                  i32.const 216
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 236
                  i32.add
                  local.get 0
                  i32.const 224
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 244
                  i32.add
                  local.get 0
                  i32.const 232
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 252
                  i32.add
                  local.get 0
                  i32.const 240
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  i32.const 260
                  i32.add
                  local.get 0
                  i32.const 248
                  i32.add
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store
                  local.get 0
                  i32.const 268
                  i32.add
                  local.get 0
                  i32.const 256
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  local.get 0
                  local.get 8
                  i32.store offset=412
                  local.get 0
                  i32.const 264
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  local.get 5
                  i32.const -40
                  i32.add
                  local.tee 1
                  i32.store offset=404
                  local.get 8
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 8
                  local.get 1
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  local.get 0
                  i32.const 2097152
                  i32.store offset=440
                  br 3 (;@4;)
                end
                local.get 1
                i32.const 12
                i32.add
                i32.load
                br_if 1 (;@5;)
                local.get 8
                local.get 6
                i32.le_u
                br_if 1 (;@5;)
                local.get 7
                local.get 6
                i32.gt_u
                br_if 1 (;@5;)
                local.get 1
                local.get 9
                local.get 5
                i32.add
                i32.store offset=4
                local.get 0
                local.get 0
                i32.load offset=412
                local.tee 1
                i32.const 15
                i32.add
                i32.const -8
                i32.and
                local.tee 6
                i32.const -8
                i32.add
                i32.store offset=412
                local.get 0
                local.get 1
                local.get 6
                i32.sub
                local.get 0
                i32.load offset=404
                local.get 5
                i32.add
                local.tee 7
                i32.add
                i32.const 8
                i32.add
                local.tee 8
                i32.store offset=404
                local.get 6
                i32.const -4
                i32.add
                local.get 8
                i32.const 1
                i32.or
                i32.store
                local.get 1
                local.get 7
                i32.add
                i32.const 40
                i32.store offset=4
                local.get 0
                i32.const 2097152
                i32.store offset=440
                br 2 (;@4;)
              end
              local.get 0
              local.get 1
              local.get 3
              i32.sub
              local.tee 2
              i32.store offset=404
              local.get 0
              local.get 0
              i32.load offset=412
              local.tee 1
              local.get 3
              i32.add
              local.tee 6
              i32.store offset=412
              local.get 6
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 3
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 1
              i32.const 8
              i32.add
              return
            end
            local.get 0
            local.get 0
            i32.load offset=444
            local.tee 1
            local.get 8
            local.get 1
            local.get 8
            i32.lt_u
            select
            i32.store offset=444
            local.get 8
            local.get 5
            i32.add
            local.set 7
            local.get 4
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 1
                  i32.load
                  local.get 7
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 1
                  i32.load offset=8
                  local.tee 1
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
              local.get 1
              i32.const 12
              i32.add
              i32.load
              br_if 0 (;@5;)
              local.get 1
              local.get 8
              i32.store
              local.get 1
              local.get 1
              i32.load offset=4
              local.get 5
              i32.add
              i32.store offset=4
              local.get 8
              local.get 3
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 8
              local.get 3
              i32.add
              local.set 1
              local.get 7
              local.get 8
              i32.sub
              local.get 3
              i32.sub
              local.set 3
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=412
                    local.get 7
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 0
                    i32.load offset=408
                    local.get 7
                    i32.eq
                    br_if 1 (;@7;)
                    block  ;; label = @9
                      local.get 7
                      i32.const 4
                      i32.add
                      i32.load
                      local.tee 2
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 7
                      local.get 2
                      i32.const -8
                      i32.and
                      local.tee 2
                      call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hf917cbc667eea7f3E
                      local.get 2
                      local.get 3
                      i32.add
                      local.set 3
                      local.get 7
                      local.get 2
                      i32.add
                      local.set 7
                    end
                    local.get 7
                    local.get 7
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 1
                    local.get 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 3
                    i32.add
                    local.get 3
                    i32.store
                    block  ;; label = @9
                      local.get 3
                      i32.const 256
                      i32.lt_u
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          i32.const 8
                          i32.shr_u
                          local.tee 6
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 2
                          br 1 (;@10;)
                        end
                        i32.const 31
                        local.set 2
                        local.get 3
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const 6
                        local.get 6
                        i32.clz
                        local.tee 2
                        i32.sub
                        i32.const 31
                        i32.and
                        i32.shr_u
                        i32.const 1
                        i32.and
                        local.get 2
                        i32.const 1
                        i32.shl
                        i32.sub
                        i32.const 62
                        i32.add
                        local.set 2
                      end
                      local.get 1
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 1
                      local.get 2
                      i32.store offset=28
                      local.get 0
                      local.get 2
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.const 272
                      i32.add
                      local.set 6
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.const 4
                                i32.add
                                local.tee 7
                                i32.load
                                local.tee 9
                                i32.const 1
                                local.get 2
                                i32.const 31
                                i32.and
                                i32.shl
                                local.tee 0
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 6
                                i32.load
                                local.tee 7
                                i32.const 4
                                i32.add
                                i32.load
                                i32.const -8
                                i32.and
                                local.get 3
                                i32.ne
                                br_if 1 (;@13;)
                                local.get 7
                                local.set 2
                                br 2 (;@12;)
                              end
                              local.get 7
                              local.get 9
                              local.get 0
                              i32.or
                              i32.store
                              local.get 6
                              local.get 1
                              i32.store
                              local.get 1
                              local.get 6
                              i32.store offset=24
                              br 3 (;@10;)
                            end
                            local.get 3
                            i32.const 0
                            i32.const 25
                            local.get 2
                            i32.const 1
                            i32.shr_u
                            i32.sub
                            i32.const 31
                            i32.and
                            local.get 2
                            i32.const 31
                            i32.eq
                            select
                            i32.shl
                            local.set 6
                            loop  ;; label = @13
                              local.get 7
                              local.get 6
                              i32.const 29
                              i32.shr_u
                              i32.const 4
                              i32.and
                              i32.add
                              i32.const 16
                              i32.add
                              local.tee 9
                              i32.load
                              local.tee 2
                              i32.eqz
                              br_if 2 (;@11;)
                              local.get 6
                              i32.const 1
                              i32.shl
                              local.set 6
                              local.get 2
                              local.set 7
                              local.get 2
                              i32.const 4
                              i32.add
                              i32.load
                              i32.const -8
                              i32.and
                              local.get 3
                              i32.ne
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 2
                          i32.load offset=8
                          local.tee 3
                          local.get 1
                          i32.store offset=12
                          local.get 2
                          local.get 1
                          i32.store offset=8
                          local.get 1
                          i32.const 0
                          i32.store offset=24
                          local.get 1
                          local.get 2
                          i32.store offset=12
                          local.get 1
                          local.get 3
                          i32.store offset=8
                          br 5 (;@6;)
                        end
                        local.get 9
                        local.get 1
                        i32.store
                        local.get 1
                        local.get 7
                        i32.store offset=24
                      end
                      local.get 1
                      local.get 1
                      i32.store offset=12
                      local.get 1
                      local.get 1
                      i32.store offset=8
                      br 3 (;@6;)
                    end
                    local.get 0
                    local.get 3
                    i32.const 3
                    i32.shr_u
                    local.tee 2
                    i32.const 3
                    i32.shl
                    i32.add
                    i32.const 8
                    i32.add
                    local.set 3
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load
                        local.tee 6
                        i32.const 1
                        local.get 2
                        i32.shl
                        local.tee 2
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 3
                        i32.load offset=8
                        local.set 2
                        br 1 (;@9;)
                      end
                      local.get 0
                      local.get 6
                      local.get 2
                      i32.or
                      i32.store
                      local.get 3
                      local.set 2
                    end
                    local.get 3
                    local.get 1
                    i32.store offset=8
                    local.get 2
                    local.get 1
                    i32.store offset=12
                    local.get 1
                    local.get 3
                    i32.store offset=12
                    local.get 1
                    local.get 2
                    i32.store offset=8
                    br 2 (;@6;)
                  end
                  local.get 0
                  local.get 1
                  i32.store offset=412
                  local.get 0
                  local.get 0
                  i32.load offset=404
                  local.get 3
                  i32.add
                  local.tee 3
                  i32.store offset=404
                  local.get 1
                  local.get 3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  br 1 (;@6;)
                end
                local.get 0
                local.get 1
                i32.store offset=408
                local.get 0
                local.get 0
                i32.load offset=400
                local.get 3
                i32.add
                local.tee 3
                i32.store offset=400
                local.get 1
                local.get 3
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 3
                i32.add
                local.get 3
                i32.store
              end
              local.get 8
              i32.const 8
              i32.add
              return
            end
            local.get 4
            local.set 1
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load
                  local.tee 7
                  local.get 6
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 7
                  local.get 1
                  i32.load offset=4
                  i32.add
                  local.tee 7
                  local.get 6
                  i32.gt_u
                  br_if 2 (;@5;)
                end
                local.get 1
                i32.load offset=8
                local.set 1
                br 0 (;@6;)
              end
            end
            local.get 0
            local.get 8
            i32.store offset=412
            local.get 0
            local.get 5
            i32.const -40
            i32.add
            local.tee 1
            i32.store offset=404
            local.get 8
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 8
            local.get 1
            i32.add
            i32.const 40
            i32.store offset=4
            local.get 0
            i32.const 2097152
            i32.store offset=440
            local.get 6
            local.get 7
            i32.const -32
            i32.add
            i32.const -8
            i32.and
            i32.const -8
            i32.add
            local.tee 1
            local.get 1
            local.get 6
            i32.const 16
            i32.add
            i32.lt_u
            select
            local.tee 9
            i32.const 27
            i32.store offset=4
            local.get 4
            i64.load align=4
            local.set 10
            local.get 9
            i32.const 16
            i32.add
            local.get 4
            i32.const 8
            i32.add
            i64.load align=4
            i64.store align=4
            local.get 9
            local.get 10
            i64.store offset=8 align=4
            local.get 0
            i32.const 436
            i32.add
            i32.const 0
            i32.store
            local.get 0
            i32.const 428
            i32.add
            local.get 5
            i32.store
            local.get 0
            local.get 8
            i32.store offset=424
            local.get 0
            i32.const 432
            i32.add
            local.get 9
            i32.const 8
            i32.add
            i32.store
            local.get 9
            i32.const 28
            i32.add
            local.set 1
            loop  ;; label = @5
              local.get 1
              i32.const 7
              i32.store
              local.get 7
              local.get 1
              i32.const 4
              i32.add
              local.tee 1
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 9
            local.get 6
            i32.eq
            br_if 0 (;@4;)
            local.get 9
            local.get 9
            i32.load offset=4
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 6
            local.get 9
            local.get 6
            i32.sub
            local.tee 8
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 9
            local.get 8
            i32.store
            block  ;; label = @5
              local.get 8
              i32.const 256
              i32.lt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 8
                  i32.const 8
                  i32.shr_u
                  local.tee 7
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 1
                  br 1 (;@6;)
                end
                i32.const 31
                local.set 1
                local.get 8
                i32.const 16777215
                i32.gt_u
                br_if 0 (;@6;)
                local.get 8
                i32.const 6
                local.get 7
                i32.clz
                local.tee 1
                i32.sub
                i32.const 31
                i32.and
                i32.shr_u
                i32.const 1
                i32.and
                local.get 1
                i32.const 1
                i32.shl
                i32.sub
                i32.const 62
                i32.add
                local.set 1
              end
              local.get 6
              i64.const 0
              i64.store offset=16 align=4
              local.get 6
              i32.const 28
              i32.add
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 2
              i32.shl
              i32.add
              i32.const 272
              i32.add
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.const 4
                        i32.add
                        local.tee 9
                        i32.load
                        local.tee 5
                        i32.const 1
                        local.get 1
                        i32.const 31
                        i32.and
                        i32.shl
                        local.tee 4
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 7
                        i32.load
                        local.tee 9
                        i32.const 4
                        i32.add
                        i32.load
                        i32.const -8
                        i32.and
                        local.get 8
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 9
                        local.set 1
                        br 2 (;@8;)
                      end
                      local.get 9
                      local.get 5
                      local.get 4
                      i32.or
                      i32.store
                      local.get 7
                      local.get 6
                      i32.store
                      local.get 6
                      i32.const 24
                      i32.add
                      local.get 7
                      i32.store
                      br 3 (;@6;)
                    end
                    local.get 8
                    i32.const 0
                    i32.const 25
                    local.get 1
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    i32.const 31
                    i32.and
                    local.get 1
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 7
                    loop  ;; label = @9
                      local.get 9
                      local.get 7
                      i32.const 29
                      i32.shr_u
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee 5
                      i32.load
                      local.tee 1
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 7
                      i32.const 1
                      i32.shl
                      local.set 7
                      local.get 1
                      local.set 9
                      local.get 1
                      i32.const 4
                      i32.add
                      i32.load
                      i32.const -8
                      i32.and
                      local.get 8
                      i32.ne
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 1
                  i32.load offset=8
                  local.tee 7
                  local.get 6
                  i32.store offset=12
                  local.get 1
                  local.get 6
                  i32.store offset=8
                  local.get 6
                  i32.const 24
                  i32.add
                  i32.const 0
                  i32.store
                  local.get 6
                  local.get 1
                  i32.store offset=12
                  local.get 6
                  local.get 7
                  i32.store offset=8
                  br 3 (;@4;)
                end
                local.get 5
                local.get 6
                i32.store
                local.get 6
                i32.const 24
                i32.add
                local.get 9
                i32.store
              end
              local.get 6
              local.get 6
              i32.store offset=12
              local.get 6
              local.get 6
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 0
            local.get 8
            i32.const 3
            i32.shr_u
            local.tee 7
            i32.const 3
            i32.shl
            i32.add
            i32.const 8
            i32.add
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load
                local.tee 8
                i32.const 1
                local.get 7
                i32.shl
                local.tee 7
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=8
                local.set 7
                br 1 (;@5;)
              end
              local.get 0
              local.get 8
              local.get 7
              i32.or
              i32.store
              local.get 1
              local.set 7
            end
            local.get 1
            local.get 6
            i32.store offset=8
            local.get 7
            local.get 6
            i32.store offset=12
            local.get 6
            local.get 1
            i32.store offset=12
            local.get 6
            local.get 7
            i32.store offset=8
          end
          local.get 0
          i32.load offset=404
          local.tee 1
          local.get 3
          i32.le_u
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          local.get 3
          i32.sub
          local.tee 2
          i32.store offset=404
          local.get 0
          local.get 0
          i32.load offset=412
          local.tee 1
          local.get 3
          i32.add
          local.tee 6
          i32.store offset=412
          local.get 6
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          local.get 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 1
          i32.const 8
          i32.add
          return
        end
        local.get 6
        local.get 5
        i32.store offset=24
        block  ;; label = @3
          local.get 7
          i32.load offset=16
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 1
          i32.store offset=16
          local.get 1
          local.get 6
          i32.store offset=24
        end
        local.get 7
        i32.const 20
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        i32.const 20
        i32.add
        local.get 1
        i32.store
        local.get 1
        local.get 6
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 7
          local.get 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 3
          i32.add
          local.tee 3
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 3
          local.get 2
          i32.add
          local.get 2
          i32.store
          block  ;; label = @4
            local.get 0
            i32.load offset=400
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            i32.const 3
            i32.shr_u
            local.tee 8
            i32.const 3
            i32.shl
            i32.add
            i32.const 8
            i32.add
            local.set 6
            local.get 0
            i32.load offset=408
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load
                local.tee 9
                i32.const 1
                local.get 8
                i32.const 31
                i32.and
                i32.shl
                local.tee 8
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.load offset=8
                local.set 8
                br 1 (;@5;)
              end
              local.get 0
              local.get 9
              local.get 8
              i32.or
              i32.store
              local.get 6
              local.set 8
            end
            local.get 6
            local.get 1
            i32.store offset=8
            local.get 8
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 6
            i32.store offset=12
            local.get 1
            local.get 8
            i32.store offset=8
          end
          local.get 0
          local.get 3
          i32.store offset=408
          local.get 0
          local.get 2
          i32.store offset=400
          br 1 (;@2;)
        end
        local.get 7
        local.get 2
        local.get 3
        i32.add
        local.tee 1
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 7
        local.get 1
        i32.add
        local.tee 1
        local.get 1
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
      end
      local.get 7
      i32.const 8
      i32.add
      return
    end
    local.get 2)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hf917cbc667eea7f3E (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 256
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 24
          i32.add
          i32.load
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=12
                local.tee 4
                local.get 1
                i32.ne
                br_if 0 (;@6;)
                local.get 1
                i32.const 20
                i32.const 16
                local.get 1
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 5
                select
                i32.add
                i32.load
                local.tee 2
                br_if 1 (;@5;)
                i32.const 0
                local.set 4
                br 2 (;@4;)
              end
              local.get 1
              i32.load offset=8
              local.tee 2
              local.get 4
              i32.store offset=12
              local.get 4
              local.get 2
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 4
            local.get 1
            i32.const 16
            i32.add
            local.get 5
            select
            local.set 5
            loop  ;; label = @5
              local.get 5
              local.set 6
              block  ;; label = @6
                local.get 2
                local.tee 4
                i32.const 20
                i32.add
                local.tee 5
                i32.load
                local.tee 2
                br_if 0 (;@6;)
                local.get 4
                i32.const 16
                i32.add
                local.set 5
                local.get 4
                i32.load offset=16
                local.set 2
              end
              local.get 2
              br_if 0 (;@5;)
            end
            local.get 6
            i32.const 0
            i32.store
          end
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          block  ;; label = @4
            local.get 0
            local.get 1
            i32.const 28
            i32.add
            i32.load
            i32.const 2
            i32.shl
            i32.add
            i32.const 272
            i32.add
            local.tee 2
            i32.load
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            i32.const 16
            i32.const 20
            local.get 3
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 4
            i32.store
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            br 2 (;@2;)
          end
          local.get 2
          local.get 4
          i32.store
          local.get 4
          br_if 1 (;@2;)
          local.get 0
          local.get 0
          i32.load offset=4
          i32.const -2
          local.get 1
          i32.load offset=28
          i32.rotl
          i32.and
          i32.store offset=4
          return
        end
        block  ;; label = @3
          local.get 1
          i32.const 12
          i32.add
          i32.load
          local.tee 4
          local.get 1
          i32.const 8
          i32.add
          i32.load
          local.tee 5
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          local.get 4
          i32.store offset=12
          local.get 4
          local.get 5
          i32.store offset=8
          return
        end
        local.get 0
        local.get 0
        i32.load
        i32.const -2
        local.get 2
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
        br 1 (;@1;)
      end
      local.get 4
      local.get 3
      i32.store offset=24
      block  ;; label = @2
        local.get 1
        i32.load offset=16
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 2
        i32.store offset=16
        local.get 2
        local.get 4
        i32.store offset=24
      end
      local.get 1
      i32.const 20
      i32.add
      i32.load
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 20
      i32.add
      local.get 2
      i32.store
      local.get 2
      local.get 4
      i32.store offset=24
      return
    end)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc7realloc17had273358f77e39ffE (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.const -65588
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 16
      local.get 2
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 2
      i32.const 11
      i32.lt_u
      select
      local.set 4
      local.get 1
      i32.const -4
      i32.add
      local.tee 5
      i32.load
      local.tee 6
      i32.const -8
      i32.and
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const 3
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const -8
                    i32.add
                    local.tee 8
                    local.get 7
                    i32.add
                    local.set 9
                    local.get 7
                    local.get 4
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 0
                    i32.load offset=412
                    local.get 9
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 0
                    i32.load offset=408
                    local.get 9
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 9
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 6
                    i32.const 2
                    i32.and
                    br_if 6 (;@2;)
                    local.get 6
                    i32.const -8
                    i32.and
                    local.tee 6
                    local.get 7
                    i32.add
                    local.tee 7
                    local.get 4
                    i32.ge_u
                    br_if 4 (;@4;)
                    br 6 (;@2;)
                  end
                  local.get 4
                  i32.const 256
                  i32.lt_u
                  br_if 5 (;@2;)
                  local.get 7
                  local.get 4
                  i32.const 4
                  i32.or
                  i32.lt_u
                  br_if 5 (;@2;)
                  local.get 7
                  local.get 4
                  i32.sub
                  i32.const 131073
                  i32.ge_u
                  br_if 5 (;@2;)
                  br 4 (;@3;)
                end
                local.get 7
                local.get 4
                i32.sub
                local.tee 2
                i32.const 16
                i32.lt_u
                br_if 3 (;@3;)
                local.get 5
                local.get 4
                local.get 6
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 8
                local.get 4
                i32.add
                local.tee 3
                local.get 2
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 9
                local.get 9
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 3
                local.get 2
                call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17hf1bc10df96105d6bE
                br 3 (;@3;)
              end
              local.get 0
              i32.load offset=404
              local.get 7
              i32.add
              local.tee 7
              local.get 4
              i32.le_u
              br_if 3 (;@2;)
              local.get 5
              local.get 4
              local.get 6
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 8
              local.get 4
              i32.add
              local.tee 2
              local.get 7
              local.get 4
              i32.sub
              local.tee 3
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.store offset=404
              local.get 0
              local.get 2
              i32.store offset=412
              br 2 (;@3;)
            end
            local.get 0
            i32.load offset=400
            local.get 7
            i32.add
            local.tee 7
            local.get 4
            i32.lt_u
            br_if 2 (;@2;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                local.get 4
                i32.sub
                local.tee 2
                i32.const 15
                i32.gt_u
                br_if 0 (;@6;)
                local.get 5
                local.get 6
                i32.const 1
                i32.and
                local.get 7
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 8
                local.get 7
                i32.add
                local.tee 2
                local.get 2
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                i32.const 0
                local.set 2
                i32.const 0
                local.set 3
                br 1 (;@5;)
              end
              local.get 5
              local.get 4
              local.get 6
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 8
              local.get 4
              i32.add
              local.tee 3
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 8
              local.get 7
              i32.add
              local.tee 4
              local.get 2
              i32.store
              local.get 4
              local.get 4
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
            end
            local.get 0
            local.get 3
            i32.store offset=408
            local.get 0
            local.get 2
            i32.store offset=400
            br 1 (;@3;)
          end
          local.get 0
          local.get 9
          local.get 6
          call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hf917cbc667eea7f3E
          block  ;; label = @4
            local.get 7
            local.get 4
            i32.sub
            local.tee 2
            i32.const 16
            i32.lt_u
            br_if 0 (;@4;)
            local.get 5
            local.get 4
            local.get 5
            i32.load
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 8
            local.get 4
            i32.add
            local.tee 3
            local.get 2
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 7
            i32.add
            local.tee 4
            local.get 4
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            local.get 2
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17hf1bc10df96105d6bE
            br 1 (;@3;)
          end
          local.get 5
          local.get 7
          local.get 5
          i32.load
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 8
          local.get 7
          i32.add
          local.tee 2
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
        end
        local.get 1
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17hf4859b007f0a3e3bE
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      local.get 1
      local.get 2
      local.get 5
      i32.load
      local.tee 3
      i32.const -8
      i32.and
      i32.const 4
      i32.const 8
      local.get 3
      i32.const 3
      i32.and
      select
      i32.sub
      local.tee 3
      local.get 3
      local.get 2
      i32.gt_u
      select
      call $memcpy
      local.set 2
      local.get 0
      local.get 1
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17h2a5c4170daac3278E
      local.get 2
      return
    end
    local.get 3)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17hf1bc10df96105d6bE (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 1
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 4
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 4
              i32.const 3
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 1
              i32.load
              local.tee 4
              local.get 2
              i32.add
              local.set 2
              block  ;; label = @6
                local.get 0
                i32.load offset=408
                local.get 1
                local.get 4
                i32.sub
                local.tee 1
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=4
                i32.const 3
                i32.and
                i32.const 3
                i32.ne
                br_if 1 (;@5;)
                local.get 0
                local.get 2
                i32.store offset=400
                local.get 3
                local.get 3
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 1
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                local.get 2
                i32.store
                return
              end
              local.get 0
              local.get 1
              local.get 4
              call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hf917cbc667eea7f3E
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 4
                i32.add
                i32.load
                local.tee 4
                i32.const 2
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.const 4
                i32.add
                local.get 4
                i32.const -2
                i32.and
                i32.store
                local.get 1
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 2
                i32.add
                local.get 2
                i32.store
                br 1 (;@5;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=412
                  local.get 3
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=408
                  local.get 3
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 0
                  local.get 3
                  local.get 4
                  i32.const -8
                  i32.and
                  local.tee 4
                  call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hf917cbc667eea7f3E
                  local.get 1
                  local.get 4
                  local.get 2
                  i32.add
                  local.tee 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 2
                  i32.add
                  local.get 2
                  i32.store
                  local.get 1
                  local.get 0
                  i32.load offset=408
                  i32.ne
                  br_if 2 (;@5;)
                  local.get 0
                  local.get 2
                  i32.store offset=400
                  return
                end
                local.get 0
                local.get 1
                i32.store offset=412
                local.get 0
                local.get 0
                i32.load offset=404
                local.get 2
                i32.add
                local.tee 2
                i32.store offset=404
                local.get 1
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 0
                i32.load offset=408
                i32.ne
                br_if 2 (;@4;)
                local.get 0
                i32.const 0
                i32.store offset=400
                local.get 0
                i32.const 0
                i32.store offset=408
                return
              end
              local.get 0
              local.get 1
              i32.store offset=408
              local.get 0
              local.get 0
              i32.load offset=400
              local.get 2
              i32.add
              local.tee 2
              i32.store offset=400
              local.get 1
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 2
              i32.add
              local.get 2
              i32.store
              return
            end
            local.get 2
            i32.const 256
            i32.lt_u
            br_if 3 (;@1;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const 8
                i32.shr_u
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                br 1 (;@5;)
              end
              i32.const 31
              local.set 3
              local.get 2
              i32.const 16777215
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              i32.const 6
              local.get 4
              i32.clz
              local.tee 3
              i32.sub
              i32.const 31
              i32.and
              i32.shr_u
              i32.const 1
              i32.and
              local.get 3
              i32.const 1
              i32.shl
              i32.sub
              i32.const 62
              i32.add
              local.set 3
            end
            local.get 1
            i64.const 0
            i64.store offset=16 align=4
            local.get 1
            i32.const 28
            i32.add
            local.get 3
            i32.store
            local.get 0
            local.get 3
            i32.const 2
            i32.shl
            i32.add
            i32.const 272
            i32.add
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 4
                  i32.add
                  local.tee 0
                  i32.load
                  local.tee 5
                  i32.const 1
                  local.get 3
                  i32.const 31
                  i32.and
                  i32.shl
                  local.tee 6
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load
                  local.tee 4
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const -8
                  i32.and
                  local.get 2
                  i32.ne
                  br_if 1 (;@6;)
                  local.get 4
                  local.set 0
                  br 2 (;@5;)
                end
                local.get 0
                local.get 5
                local.get 6
                i32.or
                i32.store
                local.get 4
                local.get 1
                i32.store
                local.get 1
                i32.const 24
                i32.add
                local.get 4
                i32.store
                br 4 (;@2;)
              end
              local.get 2
              i32.const 0
              i32.const 25
              local.get 3
              i32.const 1
              i32.shr_u
              i32.sub
              i32.const 31
              i32.and
              local.get 3
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 3
              loop  ;; label = @6
                local.get 4
                local.get 3
                i32.const 29
                i32.shr_u
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 5
                i32.load
                local.tee 0
                i32.eqz
                br_if 3 (;@3;)
                local.get 3
                i32.const 1
                i32.shl
                local.set 3
                local.get 0
                local.set 4
                local.get 0
                i32.const 4
                i32.add
                i32.load
                i32.const -8
                i32.and
                local.get 2
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 0
            i32.load offset=8
            local.tee 2
            local.get 1
            i32.store offset=12
            local.get 0
            local.get 1
            i32.store offset=8
            local.get 1
            i32.const 24
            i32.add
            i32.const 0
            i32.store
            local.get 1
            local.get 0
            i32.store offset=12
            local.get 1
            local.get 2
            i32.store offset=8
          end
          return
        end
        local.get 5
        local.get 1
        i32.store
        local.get 1
        i32.const 24
        i32.add
        local.get 4
        i32.store
      end
      local.get 1
      local.get 1
      i32.store offset=12
      local.get 1
      local.get 1
      i32.store offset=8
      return
    end
    local.get 0
    local.get 2
    i32.const 3
    i32.shr_u
    local.tee 3
    i32.const 3
    i32.shl
    i32.add
    i32.const 8
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 4
        i32.const 1
        local.get 3
        i32.shl
        local.tee 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=8
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      local.get 4
      local.get 3
      i32.or
      i32.store
      local.get 2
      local.set 0
    end
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 1
    local.get 2
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=8)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17h2a5c4170daac3278E (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const -8
    i32.add
    local.tee 2
    local.get 1
    i32.const -4
    i32.add
    i32.load
    local.tee 3
    i32.const -8
    i32.and
    local.tee 1
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 3
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load
            local.tee 3
            local.get 1
            i32.add
            local.set 1
            block  ;; label = @5
              local.get 0
              i32.load offset=408
              local.get 2
              local.get 3
              i32.sub
              local.tee 2
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              i32.load offset=4
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 1 (;@4;)
              local.get 0
              local.get 1
              i32.store offset=400
              local.get 4
              local.get 4
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 2
              local.get 1
              i32.add
              local.get 1
              i32.store
              return
            end
            local.get 0
            local.get 2
            local.get 3
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hf917cbc667eea7f3E
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 4
              i32.add
              local.tee 5
              i32.load
              local.tee 3
              i32.const 2
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              local.get 3
              i32.const -2
              i32.and
              i32.store
              local.get 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 2
              local.get 1
              i32.add
              local.get 1
              i32.store
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=412
                local.get 4
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                i32.load offset=408
                local.get 4
                i32.eq
                br_if 1 (;@5;)
                local.get 0
                local.get 4
                local.get 3
                i32.const -8
                i32.and
                local.tee 3
                call $_ZN8dlmalloc8dlmalloc8Dlmalloc12unlink_chunk17hf917cbc667eea7f3E
                local.get 2
                local.get 3
                local.get 1
                i32.add
                local.tee 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 2
                local.get 1
                i32.add
                local.get 1
                i32.store
                local.get 2
                local.get 0
                i32.load offset=408
                i32.ne
                br_if 2 (;@4;)
                local.get 0
                local.get 1
                i32.store offset=400
                return
              end
              local.get 0
              local.get 2
              i32.store offset=412
              local.get 0
              local.get 0
              i32.load offset=404
              local.get 1
              i32.add
              local.tee 1
              i32.store offset=404
              local.get 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              block  ;; label = @6
                local.get 2
                local.get 0
                i32.load offset=408
                i32.ne
                br_if 0 (;@6;)
                local.get 0
                i32.const 0
                i32.store offset=400
                local.get 0
                i32.const 0
                i32.store offset=408
              end
              local.get 0
              i32.const 440
              i32.add
              i32.load
              local.tee 3
              local.get 1
              i32.ge_u
              br_if 2 (;@3;)
              local.get 0
              i32.load offset=412
              local.tee 1
              i32.eqz
              br_if 2 (;@3;)
              block  ;; label = @6
                local.get 0
                i32.load offset=404
                local.tee 5
                i32.const 41
                i32.lt_u
                br_if 0 (;@6;)
                local.get 0
                i32.const 424
                i32.add
                local.set 2
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load
                    local.tee 4
                    local.get 1
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 2
                    i32.load offset=4
                    i32.add
                    local.get 1
                    i32.gt_u
                    br_if 2 (;@6;)
                  end
                  local.get 2
                  i32.load offset=8
                  local.tee 2
                  br_if 0 (;@7;)
                end
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 432
                  i32.add
                  i32.load
                  local.tee 1
                  br_if 0 (;@7;)
                  i32.const 4095
                  local.set 2
                  br 1 (;@6;)
                end
                i32.const 0
                local.set 2
                loop  ;; label = @7
                  local.get 2
                  i32.const 1
                  i32.add
                  local.set 2
                  local.get 1
                  i32.load offset=8
                  local.tee 1
                  br_if 0 (;@7;)
                end
                local.get 2
                i32.const 4095
                local.get 2
                i32.const 4095
                i32.gt_u
                select
                local.set 2
              end
              local.get 0
              local.get 2
              i32.store offset=448
              local.get 5
              local.get 3
              i32.le_u
              br_if 2 (;@3;)
              local.get 0
              i32.const 440
              i32.add
              i32.const -1
              i32.store
              return
            end
            local.get 0
            local.get 2
            i32.store offset=408
            local.get 0
            local.get 0
            i32.load offset=400
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=400
            local.get 2
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          local.get 1
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 8
              i32.shr_u
              local.tee 3
              br_if 0 (;@5;)
              i32.const 0
              local.set 4
              br 1 (;@4;)
            end
            i32.const 31
            local.set 4
            local.get 1
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 6
            local.get 3
            i32.clz
            local.tee 4
            i32.sub
            i32.const 31
            i32.and
            i32.shr_u
            i32.const 1
            i32.and
            local.get 4
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 4
          end
          local.get 2
          i64.const 0
          i64.store offset=16 align=4
          local.get 2
          i32.const 28
          i32.add
          local.get 4
          i32.store
          local.get 0
          local.get 4
          i32.const 2
          i32.shl
          i32.add
          i32.const 272
          i32.add
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.const 4
                      i32.add
                      local.tee 5
                      i32.load
                      local.tee 6
                      i32.const 1
                      local.get 4
                      i32.const 31
                      i32.and
                      i32.shl
                      local.tee 7
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 3
                      i32.load
                      local.tee 5
                      i32.const 4
                      i32.add
                      i32.load
                      i32.const -8
                      i32.and
                      local.get 1
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 5
                      local.set 4
                      br 2 (;@7;)
                    end
                    local.get 5
                    local.get 6
                    local.get 7
                    i32.or
                    i32.store
                    local.get 3
                    local.get 2
                    i32.store
                    local.get 2
                    i32.const 24
                    i32.add
                    local.get 3
                    i32.store
                    br 3 (;@5;)
                  end
                  local.get 1
                  i32.const 0
                  i32.const 25
                  local.get 4
                  i32.const 1
                  i32.shr_u
                  i32.sub
                  i32.const 31
                  i32.and
                  local.get 4
                  i32.const 31
                  i32.eq
                  select
                  i32.shl
                  local.set 3
                  loop  ;; label = @8
                    local.get 5
                    local.get 3
                    i32.const 29
                    i32.shr_u
                    i32.const 4
                    i32.and
                    i32.add
                    i32.const 16
                    i32.add
                    local.tee 6
                    i32.load
                    local.tee 4
                    i32.eqz
                    br_if 2 (;@6;)
                    local.get 3
                    i32.const 1
                    i32.shl
                    local.set 3
                    local.get 4
                    local.set 5
                    local.get 4
                    i32.const 4
                    i32.add
                    i32.load
                    i32.const -8
                    i32.and
                    local.get 1
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 4
                i32.load offset=8
                local.tee 1
                local.get 2
                i32.store offset=12
                local.get 4
                local.get 2
                i32.store offset=8
                local.get 2
                i32.const 24
                i32.add
                i32.const 0
                i32.store
                local.get 2
                local.get 4
                i32.store offset=12
                local.get 2
                local.get 1
                i32.store offset=8
                br 2 (;@4;)
              end
              local.get 6
              local.get 2
              i32.store
              local.get 2
              i32.const 24
              i32.add
              local.get 5
              i32.store
            end
            local.get 2
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 2
            i32.store offset=8
          end
          local.get 0
          local.get 0
          i32.load offset=448
          i32.const -1
          i32.add
          local.tee 2
          i32.store offset=448
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
        end
        return
      end
      local.get 0
      local.get 1
      i32.const 3
      i32.shr_u
      local.tee 4
      i32.const 3
      i32.shl
      i32.add
      i32.const 8
      i32.add
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 3
          i32.const 1
          local.get 4
          i32.shl
          local.tee 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=8
          local.set 0
          br 1 (;@2;)
        end
        local.get 0
        local.get 3
        local.get 4
        i32.or
        i32.store
        local.get 1
        local.set 0
      end
      local.get 1
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 2
      local.get 1
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 432
      i32.add
      i32.load
      local.tee 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 4095
      i32.store offset=448
      return
    end
    i32.const 0
    local.set 2
    loop  ;; label = @1
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 1
      i32.load offset=8
      local.tee 1
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 2
    i32.const 4095
    local.get 2
    i32.const 4095
    i32.gt_u
    select
    i32.store offset=448)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc8memalign17h14b9d8fc114b12bcE (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      i32.const -65587
      local.get 1
      i32.const 16
      local.get 1
      i32.const 16
      i32.gt_u
      select
      local.tee 1
      i32.sub
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 16
      local.get 2
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 2
      i32.const 11
      i32.lt_u
      select
      local.tee 4
      i32.add
      i32.const 12
      i32.add
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17hf4859b007f0a3e3bE
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const -8
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.tee 5
          local.get 2
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        i32.const -4
        i32.add
        local.tee 6
        i32.load
        local.tee 7
        i32.const -8
        i32.and
        local.get 5
        local.get 2
        i32.add
        i32.const 0
        local.get 1
        i32.sub
        i32.and
        i32.const -8
        i32.add
        local.tee 2
        local.get 2
        local.get 1
        i32.add
        local.get 2
        local.get 3
        i32.sub
        i32.const 16
        i32.gt_u
        select
        local.tee 1
        local.get 3
        i32.sub
        local.tee 2
        i32.sub
        local.set 5
        block  ;; label = @3
          local.get 7
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 5
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store offset=4
          local.get 1
          local.get 5
          i32.add
          local.tee 5
          local.get 5
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 6
          local.get 2
          local.get 6
          i32.load
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          local.get 2
          call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17hf1bc10df96105d6bE
          br 1 (;@2;)
        end
        local.get 3
        i32.load
        local.set 3
        local.get 1
        local.get 5
        i32.store offset=4
        local.get 1
        local.get 3
        local.get 2
        i32.add
        i32.store
      end
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const -8
        i32.and
        local.tee 3
        local.get 4
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 4
        i32.add
        local.get 4
        local.get 2
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 1
        local.get 4
        i32.add
        local.tee 2
        local.get 3
        local.get 4
        i32.sub
        local.tee 4
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 1
        local.get 3
        i32.add
        local.tee 3
        local.get 3
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        local.get 4
        call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17hf1bc10df96105d6bE
      end
      local.get 1
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 3)
  (func $_ZN5alloc5alloc18handle_alloc_error17h37203254b8cad21fE (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $rust_oom
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17h68628d0ac9272c65E (type 6)
    i32.const 1048775
    i32.const 17
    i32.const 1048792
    call $_ZN4core9panicking5panic17h9e1d61e86fb54de0E
    unreachable)
  (func $_ZN4core3ops8function6FnOnce9call_once17hf5f9b7ecf8792aa4E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    drop
    loop (result i32)  ;; label = @1
      br 0 (;@1;)
    end)
  (func $_ZN4core3ptr13drop_in_place17h04202f0701ce9779E (type 8) (param i32))
  (func $_ZN4core9panicking18panic_bounds_check17h5449b3509749fb2fE (type 3) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 12
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1048876
    i32.store offset=8
    local.get 3
    i32.const 12
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17hd99935ab1907ce22E
    unreachable)
  (func $_ZN4core9panicking5panic17h9e1d61e86fb54de0E (type 3) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 1048808
    i32.store offset=16
    local.get 3
    i64.const 1
    i64.store offset=4 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call $_ZN4core9panicking9panic_fmt17hd99935ab1907ce22E
    unreachable)
  (func $_ZN4core9panicking9panic_fmt17hd99935ab1907ce22E (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 1048808
    i32.store offset=4
    local.get 2
    i32.const 1048808
    i32.store
    local.get 2
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hb9793245129881e6E (type 2) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417hc9f0afe132d98826E)
  (func $_ZN4core3fmt5write17hd24418470d562dc3E (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 36
    i32.add
    local.get 1
    i32.store
    local.get 3
    i32.const 3
    i32.store8 offset=40
    local.get 3
    i64.const 137438953472
    i64.store offset=8
    local.get 3
    local.get 0
    i32.store offset=32
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=8
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load
              local.set 5
              local.get 2
              i32.load offset=4
              local.tee 6
              local.get 2
              i32.const 12
              i32.add
              i32.load
              local.tee 7
              local.get 7
              local.get 6
              i32.gt_u
              select
              local.tee 7
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              i32.const 20
              i32.add
              i32.load
              local.set 8
              local.get 2
              i32.load offset=16
              local.set 9
              local.get 0
              local.get 5
              i32.load
              local.get 5
              i32.load offset=4
              local.get 1
              i32.load offset=12
              call_indirect (type 1)
              br_if 3 (;@2;)
              local.get 5
              i32.const 12
              i32.add
              local.set 2
              i32.const 0
              local.set 10
              block  ;; label = @6
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 3
                    local.get 4
                    i32.const 4
                    i32.add
                    i32.load
                    i32.store offset=12
                    local.get 3
                    local.get 4
                    i32.const 28
                    i32.add
                    i32.load8_u
                    i32.store8 offset=40
                    local.get 3
                    local.get 4
                    i32.const 8
                    i32.add
                    i32.load
                    i32.store offset=8
                    local.get 4
                    i32.const 24
                    i32.add
                    i32.load
                    local.set 0
                    i32.const 0
                    local.set 1
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 4
                          i32.const 20
                          i32.add
                          i32.load
                          br_table 1 (;@10;) 0 (;@11;) 2 (;@9;) 1 (;@10;)
                        end
                        local.get 0
                        local.get 8
                        i32.ge_u
                        br_if 3 (;@7;)
                        local.get 0
                        i32.const 3
                        i32.shl
                        local.set 11
                        i32.const 0
                        local.set 1
                        local.get 9
                        local.get 11
                        i32.add
                        local.tee 11
                        i32.load offset=4
                        i32.const 13
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 11
                        i32.load
                        i32.load
                        local.set 0
                      end
                      i32.const 1
                      local.set 1
                    end
                    local.get 3
                    local.get 0
                    i32.store offset=20
                    local.get 3
                    local.get 1
                    i32.store offset=16
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.load
                    local.set 0
                    i32.const 0
                    local.set 1
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 4
                          i32.const 12
                          i32.add
                          i32.load
                          br_table 1 (;@10;) 0 (;@11;) 2 (;@9;) 1 (;@10;)
                        end
                        local.get 0
                        local.get 8
                        i32.ge_u
                        br_if 4 (;@6;)
                        local.get 0
                        i32.const 3
                        i32.shl
                        local.set 11
                        local.get 9
                        local.get 11
                        i32.add
                        local.tee 11
                        i32.load offset=4
                        i32.const 13
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 11
                        i32.load
                        i32.load
                        local.set 0
                      end
                      i32.const 1
                      local.set 1
                    end
                    local.get 3
                    local.get 0
                    i32.store offset=28
                    local.get 3
                    local.get 1
                    i32.store offset=24
                    block  ;; label = @9
                      local.get 4
                      i32.load
                      local.tee 0
                      local.get 8
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 9
                      local.get 0
                      i32.const 3
                      i32.shl
                      i32.add
                      local.tee 0
                      i32.load
                      local.get 3
                      i32.const 8
                      i32.add
                      local.get 0
                      i32.load offset=4
                      call_indirect (type 2)
                      br_if 7 (;@2;)
                      local.get 10
                      i32.const 1
                      i32.add
                      local.tee 10
                      local.get 7
                      i32.ge_u
                      br_if 6 (;@3;)
                      local.get 4
                      i32.const 32
                      i32.add
                      local.set 4
                      local.get 2
                      i32.const -4
                      i32.add
                      local.set 0
                      local.get 2
                      i32.load
                      local.set 1
                      local.get 2
                      i32.const 8
                      i32.add
                      local.set 2
                      local.get 3
                      i32.load offset=32
                      local.get 0
                      i32.load
                      local.get 1
                      local.get 3
                      i32.load offset=36
                      i32.load offset=12
                      call_indirect (type 1)
                      i32.eqz
                      br_if 1 (;@8;)
                      br 7 (;@2;)
                    end
                  end
                  local.get 0
                  local.get 8
                  i32.const 1049116
                  call $_ZN4core9panicking18panic_bounds_check17h5449b3509749fb2fE
                  unreachable
                end
                local.get 0
                local.get 8
                i32.const 1049132
                call $_ZN4core9panicking18panic_bounds_check17h5449b3509749fb2fE
                unreachable
              end
              local.get 0
              local.get 8
              i32.const 1049132
              call $_ZN4core9panicking18panic_bounds_check17h5449b3509749fb2fE
              unreachable
            end
            local.get 2
            i32.load
            local.set 5
            local.get 2
            i32.load offset=4
            local.tee 6
            local.get 2
            i32.const 20
            i32.add
            i32.load
            local.tee 4
            local.get 4
            local.get 6
            i32.gt_u
            select
            local.tee 7
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.load offset=16
            local.set 4
            local.get 0
            local.get 5
            i32.load
            local.get 5
            i32.load offset=4
            local.get 1
            i32.load offset=12
            call_indirect (type 1)
            br_if 2 (;@2;)
            local.get 5
            i32.const 12
            i32.add
            local.set 2
            i32.const 0
            local.set 0
            loop  ;; label = @5
              local.get 4
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 4
              i32.const 4
              i32.add
              i32.load
              call_indirect (type 2)
              br_if 3 (;@2;)
              local.get 0
              i32.const 1
              i32.add
              local.tee 0
              local.get 7
              i32.ge_u
              br_if 2 (;@3;)
              local.get 4
              i32.const 8
              i32.add
              local.set 4
              local.get 2
              i32.const -4
              i32.add
              local.set 1
              local.get 2
              i32.load
              local.set 10
              local.get 2
              i32.const 8
              i32.add
              local.set 2
              local.get 3
              i32.load offset=32
              local.get 1
              i32.load
              local.get 10
              local.get 3
              i32.load offset=36
              i32.load offset=12
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
              br 3 (;@2;)
            end
          end
          i32.const 0
          local.set 7
        end
        block  ;; label = @3
          local.get 6
          local.get 7
          i32.le_u
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=32
          local.get 5
          local.get 7
          i32.const 3
          i32.shl
          i32.add
          local.tee 4
          i32.load
          local.get 4
          i32.load offset=4
          local.get 3
          i32.load offset=36
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 4
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 4)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5939d59f1d6e827cE (type 7) (param i32) (result i64)
    i64.const -4761075061836029191)
  (func $_ZN4core5panic9PanicInfo7message17h1408574dfb4db11eE (type 5) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $_ZN4core5panic9PanicInfo8location17hf2ea3d8ea5e80033E (type 5) (param i32) (result i32)
    local.get 0
    i32.load offset=12)
  (func $_ZN4core3fmt9Formatter12pad_integral17hf95c03236553ecadE (type 10) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        i32.const 43
        i32.const 1114112
        local.get 0
        i32.load
        local.tee 6
        i32.const 1
        i32.and
        local.tee 1
        select
        local.set 7
        local.get 1
        local.get 5
        i32.add
        local.set 8
        br 1 (;@1;)
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 8
      local.get 0
      i32.load
      local.set 6
      i32.const 45
      local.set 7
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 9
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.set 10
        local.get 2
        local.set 1
        loop  ;; label = @3
          local.get 9
          local.get 1
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set 9
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      local.get 8
      local.get 3
      i32.add
      local.get 9
      i32.sub
      local.set 8
    end
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17he5732c0e74927a92E
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.tee 9
        local.get 8
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17he5732c0e74927a92E
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 8
          i32.and
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          local.get 9
          local.get 8
          i32.sub
          local.tee 9
          local.set 8
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 1
                local.get 0
                i32.load8_u offset=32
                local.tee 10
                local.get 10
                i32.const 3
                i32.eq
                select
                br_table 2 (;@4;) 1 (;@5;) 0 (;@6;) 1 (;@5;) 2 (;@4;)
              end
              local.get 9
              i32.const 1
              i32.shr_u
              local.set 1
              local.get 9
              i32.const 1
              i32.add
              i32.const 1
              i32.shr_u
              local.set 8
              br 1 (;@4;)
            end
            i32.const 0
            local.set 8
            local.get 9
            local.set 1
          end
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.load offset=24
            local.get 0
            i32.load offset=4
            local.get 0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        local.get 0
        i32.load offset=4
        local.set 6
        local.get 0
        i32.const 48
        i32.store offset=4
        local.get 0
        i32.load8_u offset=32
        local.set 11
        i32.const 1
        local.set 1
        local.get 0
        i32.const 1
        i32.store8 offset=32
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17he5732c0e74927a92E
        br_if 1 (;@1;)
        i32.const 0
        local.set 1
        local.get 9
        local.get 8
        i32.sub
        local.tee 10
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 0
              i32.load8_u offset=32
              local.tee 9
              local.get 9
              i32.const 3
              i32.eq
              select
              br_table 2 (;@3;) 1 (;@4;) 0 (;@5;) 1 (;@4;) 2 (;@3;)
            end
            local.get 10
            i32.const 1
            i32.shr_u
            local.set 1
            local.get 10
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 3
            br 1 (;@3;)
          end
          i32.const 0
          local.set 3
          local.get 10
          local.set 1
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=24
            local.get 0
            i32.load offset=4
            local.get 0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        local.get 0
        i32.load offset=4
        local.set 10
        i32.const 1
        local.set 1
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 3
        i32.const 1
        i32.add
        local.set 9
        local.get 0
        i32.load offset=28
        local.set 3
        local.get 0
        i32.load offset=24
        local.set 2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 9
            i32.const -1
            i32.add
            local.tee 9
            i32.eqz
            br_if 1 (;@3;)
            i32.const 1
            local.set 1
            local.get 2
            local.get 10
            local.get 3
            i32.load offset=16
            call_indirect (type 2)
            br_if 3 (;@1;)
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 11
        i32.store8 offset=32
        local.get 0
        local.get 6
        i32.store offset=4
        i32.const 0
        return
      end
      local.get 0
      i32.load offset=4
      local.set 10
      i32.const 1
      local.set 1
      local.get 0
      local.get 7
      local.get 2
      local.get 3
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17he5732c0e74927a92E
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=24
      local.get 4
      local.get 5
      local.get 0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 1)
      br_if 0 (;@1;)
      local.get 8
      i32.const 1
      i32.add
      local.set 9
      local.get 0
      i32.load offset=28
      local.set 3
      local.get 0
      i32.load offset=24
      local.set 0
      loop  ;; label = @2
        block  ;; label = @3
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
          i32.const 0
          return
        end
        i32.const 1
        local.set 1
        local.get 0
        local.get 10
        local.get 3
        i32.load offset=16
        call_indirect (type 2)
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17he5732c0e74927a92E (type 4) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 1114112
        i32.eq
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        call_indirect (type 2)
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 0
      i32.load offset=24
      local.get 2
      local.get 3
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 1)
      local.set 4
    end
    local.get 4)
  (func $_ZN4core3fmt3num3imp7fmt_u6417hc9f0afe132d98826E (type 11) (param i64 i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    i32.const 39
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      i32.const 39
      local.set 4
      loop  ;; label = @2
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.const 1048892
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1048892
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 4
        i32.const -4
        i32.add
        local.set 4
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 6
      i32.const 99
      i32.le_s
      br_if 0 (;@1;)
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -2
      i32.add
      local.tee 4
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 6
      local.get 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 6
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1048892
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 10
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -2
        i32.add
        local.tee 4
        i32.add
        local.get 6
        i32.const 1
        i32.shl
        i32.const 1048892
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -1
      i32.add
      local.tee 4
      i32.add
      local.get 6
      i32.const 48
      i32.add
      i32.store8
    end
    local.get 2
    local.get 1
    i32.const 1048808
    i32.const 0
    local.get 3
    i32.const 9
    i32.add
    local.get 4
    i32.add
    i32.const 39
    local.get 4
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17hf95c03236553ecadE
    local.set 4
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 4)
  (func $memcpy (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (table (;0;) 16 16 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1049632))
  (global (;2;) i32 (i32.const 1049632))
  (export "memory" (memory 0))
  (export "compute" (func $compute))
  (export "allocate" (func $allocate))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) $_ZN3std5alloc24default_alloc_error_hook17h2f9e4aa191e28d8cE $_ZN4core3ptr13drop_in_place17h01a2b324b9403b1dE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hd7cf6868c493fbb7E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hae9e3a63c609ccc3E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h7beed5d744404203E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h56754634db5e7f2fE $_ZN4core3ptr13drop_in_place17h73d4775542387c46E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17he523773befdbd751E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h3ed0a913eced122dE $_ZN4core3ptr13drop_in_place17h0930f00e07145758E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h67bc07ae363033afE $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hb9793245129881e6E $_ZN4core3ops8function6FnOnce9call_once17hf5f9b7ecf8792aa4E $_ZN4core3ptr13drop_in_place17h04202f0701ce9779E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5939d59f1d6e827cE)
  (data (;0;) (i32.const 1048576) "\02\00\00\00\04\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00called `Option::unwrap()` on a `None` valuesrc/libstd/panicking.rs\00\00S\00\10\00\17\00\00\00\82\01\00\00\0f\00\00\00S\00\10\00\17\00\00\00\83\01\00\00\0f\00\00\00\07\00\00\00\10\00\00\00\04\00\00\00\08\00\00\00\09\00\00\00\0a\00\00\00\0c\00\00\00\04\00\00\00\0b\00\00\00src/liballoc/raw_vec.rscapacity overflow\b0\00\10\00\17\00\00\00D\02\00\00\05\00\00\00\0e\00\00\00\00\00\00\00\01\00\00\00\0f\00\00\00index out of bounds: the len is  but the index is \00\00\f8\00\10\00 \00\00\00\18\01\10\00\12\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899src/libcore/fmt/mod.rs\00\00\04\02\10\00\16\00\00\00S\04\00\00\11\00\00\00\04\02\10\00\16\00\00\00]\04\00\00$\00\00\00"))
