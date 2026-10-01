.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80096D48, 0x64

glabel func_80096D48
    /* 87548 80096D48 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8754C 80096D4C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 87550 80096D50 7C57020C */  jal        func_80095DF0
    /* 87554 80096D54 1000B0AF */   sw        $s0, 0x10($sp)
    /* 87558 80096D58 0F004010 */  beqz       $v0, .L80096D98
    /* 8755C 80096D5C 00000000 */   nop
    /* 87560 80096D60 0400508C */  lw         $s0, 0x4($v0)
    /* 87564 80096D64 21D9030C */  jal        func_800F6484
    /* 87568 80096D68 21200002 */   addu      $a0, $s0, $zero
    /* 8756C 80096D6C 1680013C */  lui        $at, %hi(D_801592CC)
    /* 87570 80096D70 CC9222AC */  sw         $v0, %lo(D_801592CC)($at)
    /* 87574 80096D74 24D9030C */  jal        func_800F6490
    /* 87578 80096D78 21200002 */   addu      $a0, $s0, $zero
    /* 8757C 80096D7C 30000586 */  lh         $a1, 0x30($s0)
    /* 87580 80096D80 2000038E */  lw         $v1, 0x20($s0)
    /* 87584 80096D84 00000000 */  nop
    /* 87588 80096D88 03006010 */  beqz       $v1, .L80096D98
    /* 8758C 80096D8C 00240200 */   sll       $a0, $v0, 16
    /* 87590 80096D90 09F86000 */  jalr       $v1
    /* 87594 80096D94 03240400 */   sra       $a0, $a0, 16
  .L80096D98:
    /* 87598 80096D98 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8759C 80096D9C 1000B08F */  lw         $s0, 0x10($sp)
    /* 875A0 80096DA0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 875A4 80096DA4 0800E003 */  jr         $ra
    /* 875A8 80096DA8 00000000 */   nop
endlabel func_80096D48
