.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007C0BC, 0x148

glabel func_8007C0BC
    /* 6C8BC 8007C0BC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 6C8C0 8007C0C0 2800BFAF */  sw         $ra, 0x28($sp)
    /* 6C8C4 8007C0C4 2400B5AF */  sw         $s5, 0x24($sp)
    /* 6C8C8 8007C0C8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6C8CC 8007C0CC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6C8D0 8007C0D0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6C8D4 8007C0D4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6C8D8 8007C0D8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6C8DC 8007C0DC 21808000 */  addu       $s0, $a0, $zero
    /* 6C8E0 8007C0E0 3E000006 */  bltz       $s0, .L8007C1DC
    /* 6C8E4 8007C0E4 FFFF1224 */   addiu     $s2, $zero, -0x1
    /* 6C8E8 8007C0E8 40101000 */  sll        $v0, $s0, 1
    /* 6C8EC 8007C0EC 21105000 */  addu       $v0, $v0, $s0
    /* 6C8F0 8007C0F0 80100200 */  sll        $v0, $v0, 2
    /* 6C8F4 8007C0F4 21105000 */  addu       $v0, $v0, $s0
    /* 6C8F8 8007C0F8 40100200 */  sll        $v0, $v0, 1
    /* 6C8FC 8007C0FC 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6C900 8007C100 21082200 */  addu       $at, $at, $v0
    /* 6C904 8007C104 B4D63484 */  lh         $s4, %lo(D_8010D6B4)($at)
    /* 6C908 8007C108 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6C90C 8007C10C 21082200 */  addu       $at, $at, $v0
    /* 6C910 8007C110 B6D63384 */  lh         $s3, %lo(D_8010D6B6)($at)
    /* 6C914 8007C114 E6ED010C */  jal        func_8007B798
    /* 6C918 8007C118 00000000 */   nop
    /* 6C91C 8007C11C 21804000 */  addu       $s0, $v0, $zero
    /* 6C920 8007C120 1D000006 */  bltz       $s0, .L8007C198
    /* 6C924 8007C124 00000000 */   nop
    /* 6C928 8007C128 02001524 */  addiu      $s5, $zero, 0x2
  .L8007C12C:
    /* 6C92C 8007C12C BFED010C */  jal        func_8007B6FC
    /* 6C930 8007C130 21200002 */   addu      $a0, $s0, $zero
    /* 6C934 8007C134 21884000 */  addu       $s1, $v0, $zero
    /* 6C938 8007C138 40101000 */  sll        $v0, $s0, 1
    /* 6C93C 8007C13C 21105000 */  addu       $v0, $v0, $s0
    /* 6C940 8007C140 80100200 */  sll        $v0, $v0, 2
    /* 6C944 8007C144 21105000 */  addu       $v0, $v0, $s0
    /* 6C948 8007C148 40100200 */  sll        $v0, $v0, 1
    /* 6C94C 8007C14C 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6C950 8007C150 21082200 */  addu       $at, $at, $v0
    /* 6C954 8007C154 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6C958 8007C158 00000000 */  nop
    /* 6C95C 8007C15C 80100300 */  sll        $v0, $v1, 2
    /* 6C960 8007C160 21104300 */  addu       $v0, $v0, $v1
    /* 6C964 8007C164 80100200 */  sll        $v0, $v0, 2
    /* 6C968 8007C168 1180013C */  lui        $at, %hi(D_8010D285)
    /* 6C96C 8007C16C 21082200 */  addu       $at, $at, $v0
    /* 6C970 8007C170 85D22280 */  lb         $v0, %lo(D_8010D285)($at)
    /* 6C974 8007C174 00000000 */  nop
    /* 6C978 8007C178 04005514 */  bne        $v0, $s5, .L8007C18C
    /* 6C97C 8007C17C 21200002 */   addu      $a0, $s0, $zero
    /* 6C980 8007C180 21900002 */  addu       $s2, $s0, $zero
    /* 6C984 8007C184 4AEF010C */  jal        func_8007BD28
    /* 6C988 8007C188 FDFF0524 */   addiu     $a1, $zero, -0x3
  .L8007C18C:
    /* 6C98C 8007C18C 21802002 */  addu       $s0, $s1, $zero
    /* 6C990 8007C190 E6FF0106 */  bgez       $s0, .L8007C12C
    /* 6C994 8007C194 00000000 */   nop
  .L8007C198:
    /* 6C998 8007C198 10004006 */  bltz       $s2, .L8007C1DC
    /* 6C99C 8007C19C 00000000 */   nop
    /* 6C9A0 8007C1A0 E6ED010C */  jal        func_8007B798
    /* 6C9A4 8007C1A4 21204002 */   addu      $a0, $s2, $zero
    /* 6C9A8 8007C1A8 21804000 */  addu       $s0, $v0, $zero
    /* 6C9AC 8007C1AC 0B000006 */  bltz       $s0, .L8007C1DC
    /* 6C9B0 8007C1B0 00000000 */   nop
  .L8007C1B4:
    /* 6C9B4 8007C1B4 BFED010C */  jal        func_8007B6FC
    /* 6C9B8 8007C1B8 21200002 */   addu      $a0, $s0, $zero
    /* 6C9BC 8007C1BC 21884000 */  addu       $s1, $v0, $zero
    /* 6C9C0 8007C1C0 21200002 */  addu       $a0, $s0, $zero
    /* 6C9C4 8007C1C4 21288002 */  addu       $a1, $s4, $zero
    /* 6C9C8 8007C1C8 36EF010C */  jal        func_8007BCD8
    /* 6C9CC 8007C1CC 21306002 */   addu      $a2, $s3, $zero
    /* 6C9D0 8007C1D0 21802002 */  addu       $s0, $s1, $zero
    /* 6C9D4 8007C1D4 F7FF0106 */  bgez       $s0, .L8007C1B4
    /* 6C9D8 8007C1D8 00000000 */   nop
  .L8007C1DC:
    /* 6C9DC 8007C1DC 2800BF8F */  lw         $ra, 0x28($sp)
    /* 6C9E0 8007C1E0 2400B58F */  lw         $s5, 0x24($sp)
    /* 6C9E4 8007C1E4 2000B48F */  lw         $s4, 0x20($sp)
    /* 6C9E8 8007C1E8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6C9EC 8007C1EC 1800B28F */  lw         $s2, 0x18($sp)
    /* 6C9F0 8007C1F0 1400B18F */  lw         $s1, 0x14($sp)
    /* 6C9F4 8007C1F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 6C9F8 8007C1F8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 6C9FC 8007C1FC 0800E003 */  jr         $ra
    /* 6CA00 8007C200 00000000 */   nop
endlabel func_8007C0BC
