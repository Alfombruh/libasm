.section	__TEXT,__text,regular,pure_instructions
.build_version macos, 14, 0	sdk_version 14, 2
.globl	_ft_strlen                      ; -- Begin function ft_strlen
.p2align	2
_ft_strlen:                             ; @ft_strlen
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	w8, #-1
	str	w8, [sp, #4]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp]                        ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w9, [sp, #4]
	add	w9, w9, #1
	str	w9, [sp, #4]
	ldrsb	w8, [x8, w9, sxtw]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_1
LBB0_5:
	ldr	w0, [sp, #4]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
