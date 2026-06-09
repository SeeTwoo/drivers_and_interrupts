savedcmd_dvorak_keymap.o := gcc -Wp,-MMD,./.dvorak_keymap.o.d -nostdinc -I/sources/linux-6.18.10/arch/x86/include -I/sources/linux-6.18.10/arch/x86/include/generated -I/sources/linux-6.18.10/include -I/sources/linux-6.18.10/include -I/sources/linux-6.18.10/arch/x86/include/uapi -I/sources/linux-6.18.10/arch/x86/include/generated/uapi -I/sources/linux-6.18.10/include/uapi -I/sources/linux-6.18.10/include/generated/uapi -include /sources/linux-6.18.10/include/linux/compiler-version.h -include /sources/linux-6.18.10/include/linux/kconfig.h -include /sources/linux-6.18.10/include/linux/compiler_types.h -D__KERNEL__ -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -mno-sse4a -fcf-protection=branch -fno-jump-tables -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -march=x86-64 -mtune=generic -mno-red-zone -mcmodel=kernel -mstack-protector-guard-reg=gs -mstack-protector-guard-symbol=__ref_stack_chk_guard -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fno-jump-tables -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -fomit-frame-pointer -ftrivial-auto-var-init=zero -fzero-init-padding-bits=all -fno-stack-clash-protection -fmin-function-alignment=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -fconserve-stack -fno-builtin-wcslen -Wall -Wextra -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=2048 -Wno-main -Wno-dangling-pointer -Wvla-larger-than=1 -Wno-pointer-sign -Wcast-function-type -Wno-unterminated-string-initialization -Wno-array-bounds -Wno-stringop-overflow -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter -DGCC_PLUGINS  -DMODULE  -DKBUILD_BASENAME='"dvorak_keymap"' -DKBUILD_MODNAME='"ft_logger"' -D__KBUILD_MODNAME=kmod_ft_logger -c -o dvorak_keymap.o dvorak_keymap.c  

source_dvorak_keymap.o := dvorak_keymap.c

deps_dvorak_keymap.o := \
  /sources/linux-6.18.10/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /sources/linux-6.18.10/include/generated/gcc-plugins.h \
  /sources/linux-6.18.10/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /sources/linux-6.18.10/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_ASSUME) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/CC_HAS_MULTIDIMENSIONAL_NONSTRING) \
    $(wildcard include/config/UBSAN_INTEGER_WRAP) \
    $(wildcard include/config/CFI) \
    $(wildcard include/config/ARCH_USES_CFI_GENERIC_LLVM_PASS) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /sources/linux-6.18.10/include/linux/compiler_attributes.h \
  /sources/linux-6.18.10/include/linux/compiler-gcc.h \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
    $(wildcard include/config/CC_HAS_TYPEOF_UNQUAL) \
  ft_key.h \
  /sources/linux-6.18.10/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /sources/linux-6.18.10/include/uapi/linux/types.h \
  /sources/linux-6.18.10/arch/x86/include/generated/uapi/asm/types.h \
  /sources/linux-6.18.10/include/uapi/asm-generic/types.h \
  /sources/linux-6.18.10/include/asm-generic/int-ll64.h \
  /sources/linux-6.18.10/include/uapi/asm-generic/int-ll64.h \
  /sources/linux-6.18.10/arch/x86/include/uapi/asm/bitsperlong.h \
  /sources/linux-6.18.10/include/asm-generic/bitsperlong.h \
  /sources/linux-6.18.10/include/uapi/asm-generic/bitsperlong.h \
  /sources/linux-6.18.10/include/uapi/linux/posix_types.h \
  /sources/linux-6.18.10/include/linux/stddef.h \
  /sources/linux-6.18.10/include/uapi/linux/stddef.h \
  /sources/linux-6.18.10/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/X86_32) \
  /sources/linux-6.18.10/arch/x86/include/uapi/asm/posix_types_64.h \
  /sources/linux-6.18.10/include/uapi/asm-generic/posix_types.h \
  /sources/linux-6.18.10/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /sources/linux-6.18.10/include/linux/cache.h \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /sources/linux-6.18.10/include/uapi/linux/kernel.h \
  /sources/linux-6.18.10/include/uapi/linux/sysinfo.h \
  /sources/linux-6.18.10/include/linux/const.h \
  /sources/linux-6.18.10/include/vdso/const.h \
  /sources/linux-6.18.10/include/uapi/linux/const.h \
  /sources/linux-6.18.10/include/vdso/cache.h \
  /sources/linux-6.18.10/arch/x86/include/asm/cache.h \
    $(wildcard include/config/X86_L1_CACHE_SHIFT) \
    $(wildcard include/config/X86_INTERNODE_CACHE_SHIFT) \
    $(wildcard include/config/X86_VSMP) \
  /sources/linux-6.18.10/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /sources/linux-6.18.10/include/linux/stringify.h \
  /sources/linux-6.18.10/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/GENDWARFKSYMS) \
  /sources/linux-6.18.10/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
  /sources/linux-6.18.10/arch/x86/include/generated/asm/rwonce.h \
  /sources/linux-6.18.10/include/asm-generic/rwonce.h \
  /sources/linux-6.18.10/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /sources/linux-6.18.10/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /sources/linux-6.18.10/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/CALL_PADDING) \
    $(wildcard include/config/MITIGATION_RETHUNK) \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
    $(wildcard include/config/MITIGATION_SLS) \
    $(wildcard include/config/FUNCTION_PADDING_BYTES) \
    $(wildcard include/config/UML) \
  /sources/linux-6.18.10/arch/x86/include/asm/ibt.h \
    $(wildcard include/config/X86_KERNEL_IBT) \
  /sources/linux-6.18.10/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /sources/linux-6.18.10/include/linux/math.h \
  /sources/linux-6.18.10/arch/x86/include/asm/div64.h \
  /sources/linux-6.18.10/include/asm-generic/div64.h \
    $(wildcard include/config/CC_OPTIMIZE_FOR_PERFORMANCE) \
  /sources/linux-6.18.10/include/vdso/math64.h \
  /sources/linux-6.18.10/include/linux/time64.h \
  /sources/linux-6.18.10/include/vdso/time64.h \
  /sources/linux-6.18.10/include/uapi/linux/time.h \
  /sources/linux-6.18.10/include/uapi/linux/time_types.h \
  /sources/linux-6.18.10/include/linux/time32.h \
  /sources/linux-6.18.10/include/linux/timex.h \
  /sources/linux-6.18.10/include/uapi/linux/timex.h \
  /sources/linux-6.18.10/include/uapi/linux/param.h \
  /sources/linux-6.18.10/arch/x86/include/generated/uapi/asm/param.h \
  /sources/linux-6.18.10/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /sources/linux-6.18.10/include/uapi/asm-generic/param.h \
  /sources/linux-6.18.10/arch/x86/include/asm/timex.h \
    $(wildcard include/config/X86_TSC) \
  /sources/linux-6.18.10/arch/x86/include/asm/processor.h \
    $(wildcard include/config/X86_VMX_FEATURE_NAMES) \
    $(wildcard include/config/X86_IOPL_IOPERM) \
    $(wildcard include/config/VM86) \
    $(wildcard include/config/X86_USER_SHADOW_STACK) \
    $(wildcard include/config/X86_DEBUG_FPU) \
    $(wildcard include/config/USE_X86_SEG_SUPPORT) \
    $(wildcard include/config/PARAVIRT_XXL) \
    $(wildcard include/config/CPU_SUP_AMD) \
    $(wildcard include/config/XEN) \
  /sources/linux-6.18.10/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/MITIGATION_PAGE_TABLE_ISOLATION) \
  /sources/linux-6.18.10/arch/x86/include/uapi/asm/processor-flags.h \
  /sources/linux-6.18.10/include/linux/mem_encrypt.h \
    $(wildcard include/config/ARCH_HAS_MEM_ENCRYPT) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /sources/linux-6.18.10/arch/x86/include/asm/mem_encrypt.h \
    $(wildcard include/config/X86_MEM_ENCRYPT) \
  /sources/linux-6.18.10/include/linux/init.h \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /sources/linux-6.18.10/include/linux/build_bug.h \
  /sources/linux-6.18.10/include/linux/cc_platform.h \
    $(wildcard include/config/ARCH_HAS_CC_PLATFORM) \
  /sources/linux-6.18.10/arch/x86/include/asm/asm.h \
    $(wildcard include/config/KPROBES) \
  /sources/linux-6.18.10/arch/x86/include/asm/extable_fixup_types.h \
  /sources/linux-6.18.10/arch/x86/include/asm/math_emu.h \
  /sources/linux-6.18.10/arch/x86/include/asm/ptrace.h \
    $(wildcard include/config/PARAVIRT) \
    $(wildcard include/config/IA32_EMULATION) \
    $(wildcard include/config/X86_DEBUGCTLMSR) \
  /sources/linux-6.18.10/arch/x86/include/asm/segment.h \
    $(wildcard include/config/XEN_PV) \
  /sources/linux-6.18.10/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/CALL_THUNKS) \
    $(wildcard include/config/MITIGATION_ITS) \
  /sources/linux-6.18.10/include/linux/objtool.h \
    $(wildcard include/config/FRAME_POINTER) \
    $(wildcard include/config/NOINSTR_VALIDATION) \
    $(wildcard include/config/MITIGATION_UNRET_ENTRY) \
    $(wildcard include/config/MITIGATION_SRSO) \
  /sources/linux-6.18.10/include/linux/objtool_types.h \
  /sources/linux-6.18.10/arch/x86/include/asm/bug.h \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /sources/linux-6.18.10/include/linux/instrumentation.h \
  /sources/linux-6.18.10/include/asm-generic/bug.h \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /sources/linux-6.18.10/include/linux/once_lite.h \
  /sources/linux-6.18.10/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /sources/linux-6.18.10/include/linux/stdarg.h \
  /sources/linux-6.18.10/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
  /sources/linux-6.18.10/include/linux/kern_levels.h \
  /sources/linux-6.18.10/include/linux/ratelimit_types.h \
  /sources/linux-6.18.10/include/linux/bits.h \
  /sources/linux-6.18.10/include/vdso/bits.h \
  /sources/linux-6.18.10/include/uapi/linux/bits.h \
  /sources/linux-6.18.10/include/linux/overflow.h \
  /sources/linux-6.18.10/include/linux/limits.h \
  /sources/linux-6.18.10/include/uapi/linux/limits.h \
  /sources/linux-6.18.10/include/vdso/limits.h \
  /sources/linux-6.18.10/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /sources/linux-6.18.10/arch/x86/include/asm/spinlock_types.h \
  /sources/linux-6.18.10/include/asm-generic/qspinlock_types.h \
    $(wildcard include/config/NR_CPUS) \
  /sources/linux-6.18.10/include/asm-generic/qrwlock_types.h \
  /sources/linux-6.18.10/arch/x86/include/uapi/asm/byteorder.h \
  /sources/linux-6.18.10/include/linux/byteorder/little_endian.h \
  /sources/linux-6.18.10/include/uapi/linux/byteorder/little_endian.h \
  /sources/linux-6.18.10/include/linux/swab.h \
  /sources/linux-6.18.10/include/uapi/linux/swab.h \
  /sources/linux-6.18.10/arch/x86/include/uapi/asm/swab.h \
  /sources/linux-6.18.10/include/linux/byteorder/generic.h \
  /sources/linux-6.18.10/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/LOCK_STAT) \
  /sources/linux-6.18.10/arch/x86/include/asm/page_types.h \
    $(wildcard include/config/PHYSICAL_START) \
    $(wildcard include/config/PHYSICAL_ALIGN) \
    $(wildcard include/config/DYNAMIC_PHYSICAL_MASK) \
  /sources/linux-6.18.10/include/vdso/page.h \
    $(wildcard include/config/PAGE_SHIFT) \
  /sources/linux-6.18.10/arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/KASAN) \
    $(wildcard include/config/RANDOMIZE_BASE) \
  /sources/linux-6.18.10/arch/x86/include/asm/kaslr.h \
    $(wildcard include/config/RANDOMIZE_MEMORY) \
  /sources/linux-6.18.10/arch/x86/include/uapi/asm/ptrace.h \
  /sources/linux-6.18.10/arch/x86/include/uapi/asm/ptrace-abi.h \
  /sources/linux-6.18.10/arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/ZERO_CALL_USED_REGS) \
    $(wildcard include/config/PARAVIRT_DEBUG) \
  /sources/linux-6.18.10/arch/x86/include/asm/desc_defs.h \
  /sources/linux-6.18.10/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/X86_INTEL_MEMORY_PROTECTION_KEYS) \
    $(wildcard include/config/X86_PAE) \
    $(wildcard include/config/MEM_SOFT_DIRTY) \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_WP) \
    $(wildcard include/config/PGTABLE_LEVELS) \
    $(wildcard include/config/PROC_FS) \
  /sources/linux-6.18.10/arch/x86/include/asm/pgtable_64_types.h \
    $(wildcard include/config/KMSAN) \
    $(wildcard include/config/DEBUG_KMAP_LOCAL_FORCE_MAP) \
  /sources/linux-6.18.10/arch/x86/include/asm/sparsemem.h \
    $(wildcard include/config/SPARSEMEM) \
  /sources/linux-6.18.10/arch/x86/include/asm/nospec-branch.h \
    $(wildcard include/config/CALL_THUNKS_DEBUG) \
    $(wildcard include/config/MITIGATION_CALL_DEPTH_TRACKING) \
    $(wildcard include/config/MITIGATION_IBPB_ENTRY) \
  /sources/linux-6.18.10/include/linux/static_key.h \
  /sources/linux-6.18.10/include/linux/jump_label.h \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /sources/linux-6.18.10/include/linux/cleanup.h \
  /sources/linux-6.18.10/include/linux/err.h \
  /sources/linux-6.18.10/arch/x86/include/generated/uapi/asm/errno.h \
  /sources/linux-6.18.10/include/uapi/asm-generic/errno.h \
  /sources/linux-6.18.10/include/uapi/asm-generic/errno-base.h \
  /sources/linux-6.18.10/include/linux/args.h \
  /sources/linux-6.18.10/arch/x86/include/asm/jump_label.h \
    $(wildcard include/config/HAVE_JUMP_LABEL_HACK) \
  /sources/linux-6.18.10/arch/x86/include/asm/nops.h \
  /sources/linux-6.18.10/arch/x86/include/asm/cpufeatures.h \
  /sources/linux-6.18.10/arch/x86/include/asm/msr-index.h \
  /sources/linux-6.18.10/arch/x86/include/asm/unwind_hints.h \
  /sources/linux-6.18.10/arch/x86/include/asm/orc_types.h \
  /sources/linux-6.18.10/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/CC_HAS_NAMED_AS) \
  /sources/linux-6.18.10/include/asm-generic/percpu.h \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /sources/linux-6.18.10/include/linux/threads.h \
    $(wildcard include/config/BASE_SMALL) \
  /sources/linux-6.18.10/include/linux/percpu-defs.h \
    $(wildcard include/config/ARCH_MODULE_NEEDS_WEAK_PER_CPU) \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
  /sources/linux-6.18.10/arch/x86/include/asm/asm-offsets.h \
  /sources/linux-6.18.10/include/generated/asm-offsets.h \
  /sources/linux-6.18.10/arch/x86/include/asm/GEN-for-each-reg.h \
  /sources/linux-6.18.10/arch/x86/include/asm/proto.h \
  /sources/linux-6.18.10/arch/x86/include/uapi/asm/ldt.h \
  /sources/linux-6.18.10/arch/x86/include/uapi/asm/sigcontext.h \
  /sources/linux-6.18.10/arch/x86/include/asm/current.h \
  /sources/linux-6.18.10/arch/x86/include/asm/cpuid/api.h \
  /sources/linux-6.18.10/arch/x86/include/asm/cpuid/types.h \
  /sources/linux-6.18.10/arch/x86/include/asm/string.h \
  /sources/linux-6.18.10/arch/x86/include/asm/string_64.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
  /sources/linux-6.18.10/arch/x86/include/asm/page.h \
  /sources/linux-6.18.10/arch/x86/include/asm/page_64.h \
    $(wildcard include/config/DEBUG_VIRTUAL) \
    $(wildcard include/config/X86_VSYSCALL_EMULATION) \
  /sources/linux-6.18.10/include/linux/kmsan-checks.h \
  /sources/linux-6.18.10/include/linux/range.h \
  /sources/linux-6.18.10/include/asm-generic/memory_model.h \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
  /sources/linux-6.18.10/include/linux/pfn.h \
  /sources/linux-6.18.10/include/asm-generic/getorder.h \
  /sources/linux-6.18.10/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /sources/linux-6.18.10/include/linux/bitops.h \
  /sources/linux-6.18.10/include/linux/typecheck.h \
  /sources/linux-6.18.10/include/asm-generic/bitops/generic-non-atomic.h \
  /sources/linux-6.18.10/arch/x86/include/asm/barrier.h \
  /sources/linux-6.18.10/include/asm-generic/barrier.h \
  /sources/linux-6.18.10/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/X86_CMOV) \
  /sources/linux-6.18.10/arch/x86/include/asm/rmwcc.h \
  /sources/linux-6.18.10/include/asm-generic/bitops/sched.h \
  /sources/linux-6.18.10/arch/x86/include/asm/arch_hweight.h \
  /sources/linux-6.18.10/include/asm-generic/bitops/const_hweight.h \
  /sources/linux-6.18.10/include/asm-generic/bitops/instrumented-atomic.h \
  /sources/linux-6.18.10/include/linux/instrumented.h \
  /sources/linux-6.18.10/include/asm-generic/bitops/instrumented-non-atomic.h \
    $(wildcard include/config/KCSAN_ASSUME_PLAIN_WRITES_ATOMIC) \
  /sources/linux-6.18.10/include/asm-generic/bitops/instrumented-lock.h \
  /sources/linux-6.18.10/include/asm-generic/bitops/le.h \
  /sources/linux-6.18.10/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /sources/linux-6.18.10/arch/x86/include/asm/special_insns.h \
  /sources/linux-6.18.10/include/linux/errno.h \
  /sources/linux-6.18.10/include/uapi/linux/errno.h \
  /sources/linux-6.18.10/include/linux/irqflags.h \
    $(wildcard include/config/PROVE_LOCKING) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /sources/linux-6.18.10/include/linux/irqflags_types.h \
  /sources/linux-6.18.10/arch/x86/include/asm/irqflags.h \
    $(wildcard include/config/DEBUG_ENTRY) \
  /sources/linux-6.18.10/arch/x86/include/asm/fpu/types.h \
  /sources/linux-6.18.10/arch/x86/include/asm/vmxfeatures.h \
  /sources/linux-6.18.10/arch/x86/include/asm/vdso/processor.h \
  /sources/linux-6.18.10/arch/x86/include/asm/shstk.h \
  /sources/linux-6.18.10/include/linux/personality.h \
  /sources/linux-6.18.10/include/uapi/linux/personality.h \
  /sources/linux-6.18.10/arch/x86/include/asm/tsc.h \
  /sources/linux-6.18.10/arch/x86/include/asm/cpufeature.h \
  /sources/linux-6.18.10/arch/x86/include/generated/asm/cpufeaturemasks.h \
  /sources/linux-6.18.10/arch/x86/include/asm/msr.h \
    $(wildcard include/config/TRACEPOINTS) \
  /sources/linux-6.18.10/arch/x86/include/asm/cpumask.h \
  /sources/linux-6.18.10/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /sources/linux-6.18.10/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
    $(wildcard include/config/MMU) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/DYNAMIC_FTRACE) \
  /sources/linux-6.18.10/include/linux/align.h \
  /sources/linux-6.18.10/include/vdso/align.h \
  /sources/linux-6.18.10/include/linux/array_size.h \
  /sources/linux-6.18.10/include/linux/container_of.h \
  /sources/linux-6.18.10/include/linux/hex.h \
  /sources/linux-6.18.10/include/linux/kstrtox.h \
  /sources/linux-6.18.10/include/linux/minmax.h \
  /sources/linux-6.18.10/include/linux/sprintf.h \
  /sources/linux-6.18.10/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
  /sources/linux-6.18.10/include/linux/instruction_pointer.h \
  /sources/linux-6.18.10/include/linux/util_macros.h \
    $(wildcard include/config/FOO_SUSPEND) \
  /sources/linux-6.18.10/include/linux/wordpart.h \
  /sources/linux-6.18.10/include/linux/bitmap.h \
  /sources/linux-6.18.10/include/linux/find.h \
  /sources/linux-6.18.10/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /sources/linux-6.18.10/include/uapi/linux/string.h \
  /sources/linux-6.18.10/include/linux/bitmap-str.h \
  /sources/linux-6.18.10/include/linux/cpumask_types.h \
  /sources/linux-6.18.10/include/linux/atomic.h \
  /sources/linux-6.18.10/arch/x86/include/asm/atomic.h \
  /sources/linux-6.18.10/arch/x86/include/asm/cmpxchg.h \
  /sources/linux-6.18.10/arch/x86/include/asm/cmpxchg_64.h \
  /sources/linux-6.18.10/arch/x86/include/asm/atomic64_64.h \
  /sources/linux-6.18.10/include/linux/atomic/atomic-arch-fallback.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
  /sources/linux-6.18.10/include/linux/atomic/atomic-long.h \
  /sources/linux-6.18.10/include/linux/atomic/atomic-instrumented.h \
  /sources/linux-6.18.10/include/linux/bug.h \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /sources/linux-6.18.10/include/linux/gfp_types.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
    $(wildcard include/config/SLAB_OBJ_EXT) \
  /sources/linux-6.18.10/include/linux/numa.h \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /sources/linux-6.18.10/include/linux/nodemask.h \
    $(wildcard include/config/HIGHMEM) \
  /sources/linux-6.18.10/include/linux/nodemask_types.h \
    $(wildcard include/config/NODES_SHIFT) \
  /sources/linux-6.18.10/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /sources/linux-6.18.10/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /sources/linux-6.18.10/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /sources/linux-6.18.10/include/uapi/linux/random.h \
  /sources/linux-6.18.10/include/uapi/linux/ioctl.h \
  /sources/linux-6.18.10/arch/x86/include/generated/uapi/asm/ioctl.h \
  /sources/linux-6.18.10/include/asm-generic/ioctl.h \
  /sources/linux-6.18.10/include/uapi/asm-generic/ioctl.h \
  /sources/linux-6.18.10/include/linux/irqnr.h \
  /sources/linux-6.18.10/include/uapi/linux/irqnr.h \
  /sources/linux-6.18.10/arch/x86/include/uapi/asm/msr.h \
  /sources/linux-6.18.10/arch/x86/include/asm/shared/msr.h \
  /sources/linux-6.18.10/include/linux/percpu.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/RANDOM_KMALLOC_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /sources/linux-6.18.10/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /sources/linux-6.18.10/include/linux/codetag.h \
    $(wildcard include/config/CODE_TAGGING) \
  /sources/linux-6.18.10/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
    $(wildcard include/config/PREEMPT_LAZY) \
  /sources/linux-6.18.10/arch/x86/include/asm/preempt.h \
  /sources/linux-6.18.10/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /sources/linux-6.18.10/include/linux/smp_types.h \
  /sources/linux-6.18.10/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /sources/linux-6.18.10/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/ARCH_HAS_PREEMPT_LAZY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/SH) \
  /sources/linux-6.18.10/include/linux/restart_block.h \
  /sources/linux-6.18.10/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/X86_FRED) \
    $(wildcard include/config/COMPAT) \
  /sources/linux-6.18.10/include/asm-generic/thread_info_tif.h \
  /sources/linux-6.18.10/arch/x86/include/asm/smp.h \
    $(wildcard include/config/DEBUG_NMI_SELFTEST) \
  /sources/linux-6.18.10/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /sources/linux-6.18.10/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/CFS_BANDWIDTH) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/X86_BUS_LOCK_DETECT) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/DETECT_HUNG_TASK_BLOCKER) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/DEBUG_RSEQ) \
    $(wildcard include/config/SCHED_MM_CID) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/UPROBES) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/KSTACK_ERASE) \
    $(wildcard include/config/KSTACK_ERASE_METRICS) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/RV_PER_TASK_MONITORS) \
    $(wildcard include/config/USER_EVENTS) \
    $(wildcard include/config/UNWIND_USER) \
    $(wildcard include/config/SCHED_PROXY_EXEC) \
  /sources/linux-6.18.10/include/uapi/linux/sched.h \
  /sources/linux-6.18.10/include/linux/pid_types.h \
  /sources/linux-6.18.10/include/linux/sem_types.h \
  /sources/linux-6.18.10/include/linux/shm.h \
  /sources/linux-6.18.10/arch/x86/include/asm/shmparam.h \
  /sources/linux-6.18.10/include/linux/kmsan_types.h \
  /sources/linux-6.18.10/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_MUTEXES) \
  /sources/linux-6.18.10/include/linux/osq_lock.h \
  /sources/linux-6.18.10/include/linux/spinlock_types.h \
  /sources/linux-6.18.10/include/linux/rwlock_types.h \
  /sources/linux-6.18.10/include/linux/plist_types.h \
  /sources/linux-6.18.10/include/linux/hrtimer_types.h \
  /sources/linux-6.18.10/include/linux/timerqueue_types.h \
  /sources/linux-6.18.10/include/linux/rbtree_types.h \
  /sources/linux-6.18.10/include/linux/timer_types.h \
  /sources/linux-6.18.10/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /sources/linux-6.18.10/include/linux/refcount_types.h \
  /sources/linux-6.18.10/include/linux/resource.h \
  /sources/linux-6.18.10/include/uapi/linux/resource.h \
  /sources/linux-6.18.10/arch/x86/include/generated/uapi/asm/resource.h \
  /sources/linux-6.18.10/include/asm-generic/resource.h \
  /sources/linux-6.18.10/include/uapi/asm-generic/resource.h \
  /sources/linux-6.18.10/include/linux/latencytop.h \
  /sources/linux-6.18.10/include/linux/sched/prio.h \
  /sources/linux-6.18.10/include/linux/sched/types.h \
  /sources/linux-6.18.10/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /sources/linux-6.18.10/include/uapi/linux/signal.h \
  /sources/linux-6.18.10/arch/x86/include/asm/signal.h \
  /sources/linux-6.18.10/arch/x86/include/uapi/asm/signal.h \
  /sources/linux-6.18.10/include/uapi/asm-generic/signal-defs.h \
  /sources/linux-6.18.10/arch/x86/include/uapi/asm/siginfo.h \
  /sources/linux-6.18.10/include/uapi/asm-generic/siginfo.h \
  /sources/linux-6.18.10/include/linux/spinlock.h \
  /sources/linux-6.18.10/include/linux/bottom_half.h \
  /sources/linux-6.18.10/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /sources/linux-6.18.10/arch/x86/include/generated/asm/mmiowb.h \
  /sources/linux-6.18.10/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /sources/linux-6.18.10/arch/x86/include/asm/spinlock.h \
  /sources/linux-6.18.10/arch/x86/include/asm/paravirt.h \
    $(wildcard include/config/PARAVIRT_SPINLOCKS) \
  /sources/linux-6.18.10/arch/x86/include/asm/frame.h \
  /sources/linux-6.18.10/arch/x86/include/asm/qspinlock.h \
  /sources/linux-6.18.10/include/asm-generic/qspinlock.h \
  /sources/linux-6.18.10/arch/x86/include/asm/qrwlock.h \
  /sources/linux-6.18.10/include/asm-generic/qrwlock.h \
  /sources/linux-6.18.10/include/linux/rwlock.h \
  /sources/linux-6.18.10/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/INLINE_SPIN_LOCK) \
    $(wildcard include/config/INLINE_SPIN_LOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK_BH) \
    $(wildcard include/config/UNINLINE_SPIN_UNLOCK) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/GENERIC_LOCKBREAK) \
  /sources/linux-6.18.10/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/INLINE_READ_LOCK) \
    $(wildcard include/config/INLINE_WRITE_LOCK) \
    $(wildcard include/config/INLINE_READ_LOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_LOCK_BH) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_READ_TRYLOCK) \
    $(wildcard include/config/INLINE_WRITE_TRYLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_BH) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQRESTORE) \
  /sources/linux-6.18.10/include/linux/syscall_user_dispatch_types.h \
  /sources/linux-6.18.10/include/linux/mm_types_task.h \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
  /sources/linux-6.18.10/arch/x86/include/asm/tlbbatch.h \
  /sources/linux-6.18.10/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_EGRESS) \
    $(wildcard include/config/NET_ACT_MIRRED) \
    $(wildcard include/config/NF_DUP_NETDEV) \
  /sources/linux-6.18.10/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /sources/linux-6.18.10/include/linux/posix-timers_types.h \
  /sources/linux-6.18.10/include/uapi/linux/rseq.h \
  /sources/linux-6.18.10/include/linux/seqlock_types.h \
  /sources/linux-6.18.10/include/linux/kcsan.h \
  /sources/linux-6.18.10/include/linux/rv.h \
    $(wildcard include/config/RV_LTL_MONITOR) \
    $(wildcard include/config/RV_REACTORS) \
  /sources/linux-6.18.10/include/linux/uidgid_types.h \
  /sources/linux-6.18.10/include/linux/tracepoint-defs.h \
  /sources/linux-6.18.10/include/linux/unwind_deferred_types.h \
  /sources/linux-6.18.10/arch/x86/include/generated/asm/kmap_size.h \
  /sources/linux-6.18.10/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /sources/linux-6.18.10/include/generated/rq-offsets.h \
  /sources/linux-6.18.10/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /sources/linux-6.18.10/include/vdso/time32.h \
  /sources/linux-6.18.10/include/vdso/time.h \

dvorak_keymap.o: $(deps_dvorak_keymap.o)

$(deps_dvorak_keymap.o):
