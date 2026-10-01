.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002E70C, 0xE8

glabel func_8002E70C
    /* 1EF0C 8002E70C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1EF10 8002E710 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1EF14 8002E714 E6ED010C */  jal        func_8007B798
    /* 1EF18 8002E718 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1EF1C 8002E71C 21804000 */  addu       $s0, $v0, $zero
    /* 1EF20 8002E720 2F000006 */  bltz       $s0, .L8002E7E0
    /* 1EF24 8002E724 40101000 */   sll       $v0, $s0, 1
  .L8002E728:
    /* 1EF28 8002E728 21105000 */  addu       $v0, $v0, $s0
    /* 1EF2C 8002E72C 80100200 */  sll        $v0, $v0, 2
    /* 1EF30 8002E730 21105000 */  addu       $v0, $v0, $s0
    /* 1EF34 8002E734 40280200 */  sll        $a1, $v0, 1
    /* 1EF38 8002E738 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 1EF3C 8002E73C 21082500 */  addu       $at, $at, $a1
    /* 1EF40 8002E740 C3D62380 */  lb         $v1, %lo(D_8010D6C3)($at)
    /* 1EF44 8002E744 03000224 */  addiu      $v0, $zero, 0x3
    /* 1EF48 8002E748 20006214 */  bne        $v1, $v0, .L8002E7CC
    /* 1EF4C 8002E74C 00000000 */   nop
    /* 1EF50 8002E750 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1EF54 8002E754 21082500 */  addu       $at, $at, $a1
    /* 1EF58 8002E758 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 1EF5C 8002E75C 00000000 */  nop
    /* 1EF60 8002E760 80180200 */  sll        $v1, $v0, 2
    /* 1EF64 8002E764 21186200 */  addu       $v1, $v1, $v0
    /* 1EF68 8002E768 80180300 */  sll        $v1, $v1, 2
    /* 1EF6C 8002E76C 1180013C */  lui        $at, %hi(D_8010D285)
    /* 1EF70 8002E770 21082300 */  addu       $at, $at, $v1
    /* 1EF74 8002E774 85D22280 */  lb         $v0, %lo(D_8010D285)($at)
    /* 1EF78 8002E778 00000000 */  nop
    /* 1EF7C 8002E77C 0B004014 */  bnez       $v0, .L8002E7AC
    /* 1EF80 8002E780 40101000 */   sll       $v0, $s0, 1
    /* 1EF84 8002E784 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 1EF88 8002E788 21082500 */  addu       $at, $at, $a1
    /* 1EF8C 8002E78C B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 1EF90 8002E790 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 1EF94 8002E794 21082500 */  addu       $at, $at, $a1
    /* 1EF98 8002E798 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 1EF9C 8002E79C F760020C */  jal        func_800983DC
    /* 1EFA0 8002E7A0 00000000 */   nop
    /* 1EFA4 8002E7A4 09004014 */  bnez       $v0, .L8002E7CC
    /* 1EFA8 8002E7A8 40101000 */   sll       $v0, $s0, 1
  .L8002E7AC:
    /* 1EFAC 8002E7AC 21105000 */  addu       $v0, $v0, $s0
    /* 1EFB0 8002E7B0 80100200 */  sll        $v0, $v0, 2
    /* 1EFB4 8002E7B4 21105000 */  addu       $v0, $v0, $s0
    /* 1EFB8 8002E7B8 40100200 */  sll        $v0, $v0, 1
    /* 1EFBC 8002E7BC FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1EFC0 8002E7C0 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 1EFC4 8002E7C4 21082200 */  addu       $at, $at, $v0
    /* 1EFC8 8002E7C8 C3D623A0 */  sb         $v1, %lo(D_8010D6C3)($at)
  .L8002E7CC:
    /* 1EFCC 8002E7CC BFED010C */  jal        func_8007B6FC
    /* 1EFD0 8002E7D0 21200002 */   addu      $a0, $s0, $zero
    /* 1EFD4 8002E7D4 21804000 */  addu       $s0, $v0, $zero
    /* 1EFD8 8002E7D8 D3FF0106 */  bgez       $s0, .L8002E728
    /* 1EFDC 8002E7DC 40101000 */   sll       $v0, $s0, 1
  .L8002E7E0:
    /* 1EFE0 8002E7E0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1EFE4 8002E7E4 1000B08F */  lw         $s0, 0x10($sp)
    /* 1EFE8 8002E7E8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1EFEC 8002E7EC 0800E003 */  jr         $ra
    /* 1EFF0 8002E7F0 00000000 */   nop
endlabel func_8002E70C
