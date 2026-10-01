.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002A700, 0xE0

glabel func_8002A700
    /* 1AF00 8002A700 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1AF04 8002A704 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1AF08 8002A708 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1AF0C 8002A70C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1AF10 8002A710 21808000 */  addu       $s0, $a0, $zero
    /* 1AF14 8002A714 40101000 */  sll        $v0, $s0, 1
    /* 1AF18 8002A718 21105000 */  addu       $v0, $v0, $s0
    /* 1AF1C 8002A71C 80100200 */  sll        $v0, $v0, 2
    /* 1AF20 8002A720 21105000 */  addu       $v0, $v0, $s0
    /* 1AF24 8002A724 40100200 */  sll        $v0, $v0, 1
    /* 1AF28 8002A728 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 1AF2C 8002A72C 21082200 */  addu       $at, $at, $v0
    /* 1AF30 8002A730 BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 1AF34 8002A734 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1AF38 8002A738 21082200 */  addu       $at, $at, $v0
    /* 1AF3C 8002A73C BAD62490 */  lbu        $a0, %lo(D_8010D6BA)($at)
    /* 1AF40 8002A740 40100300 */  sll        $v0, $v1, 1
    /* 1AF44 8002A744 21104300 */  addu       $v0, $v0, $v1
    /* 1AF48 8002A748 80100200 */  sll        $v0, $v0, 2
    /* 1AF4C 8002A74C 23104300 */  subu       $v0, $v0, $v1
    /* 1AF50 8002A750 00110200 */  sll        $v0, $v0, 4
    /* 1AF54 8002A754 23104300 */  subu       $v0, $v0, $v1
    /* 1AF58 8002A758 C0100200 */  sll        $v0, $v0, 3
    /* 1AF5C 8002A75C 1180033C */  lui        $v1, %hi(D_80117799)
    /* 1AF60 8002A760 99776324 */  addiu      $v1, $v1, %lo(D_80117799)
    /* 1AF64 8002A764 21104300 */  addu       $v0, $v0, $v1
    /* 1AF68 8002A768 21184400 */  addu       $v1, $v0, $a0
    /* 1AF6C 8002A76C 00006290 */  lbu        $v0, 0x0($v1)
    /* 1AF70 8002A770 00000000 */  nop
    /* 1AF74 8002A774 FF00422C */  sltiu      $v0, $v0, 0xFF
    /* 1AF78 8002A778 05004010 */  beqz       $v0, .L8002A790
    /* 1AF7C 8002A77C 2188C000 */   addu      $s1, $a2, $zero
    /* 1AF80 8002A780 00006290 */  lbu        $v0, 0x0($v1)
    /* 1AF84 8002A784 00000000 */  nop
    /* 1AF88 8002A788 01004224 */  addiu      $v0, $v0, 0x1
    /* 1AF8C 8002A78C 000062A0 */  sb         $v0, 0x0($v1)
  .L8002A790:
    /* 1AF90 8002A790 480F828F */  lw         $v0, %gp_rel(D_80159420)($gp)
    /* 1AF94 8002A794 00000000 */  nop
    /* 1AF98 8002A798 01004224 */  addiu      $v0, $v0, 0x1
    /* 1AF9C 8002A79C 480F82AF */  sw         $v0, %gp_rel(D_80159420)($gp)
    /* 1AFA0 8002A7A0 04F2010C */  jal        func_8007C810
    /* 1AFA4 8002A7A4 21200002 */   addu      $a0, $s0, $zero
    /* 1AFA8 8002A7A8 07002012 */  beqz       $s1, .L8002A7C8
    /* 1AFAC 8002A7AC 00000000 */   nop
    /* 1AFB0 8002A7B0 0000238E */  lw         $v1, 0x0($s1)
    /* 1AFB4 8002A7B4 00000000 */  nop
    /* 1AFB8 8002A7B8 2A107000 */  slt        $v0, $v1, $s0
    /* 1AFBC 8002A7BC 02004014 */  bnez       $v0, .L8002A7C8
    /* 1AFC0 8002A7C0 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 1AFC4 8002A7C4 000022AE */  sw         $v0, 0x0($s1)
  .L8002A7C8:
    /* 1AFC8 8002A7C8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1AFCC 8002A7CC 1400B18F */  lw         $s1, 0x14($sp)
    /* 1AFD0 8002A7D0 1000B08F */  lw         $s0, 0x10($sp)
    /* 1AFD4 8002A7D4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1AFD8 8002A7D8 0800E003 */  jr         $ra
    /* 1AFDC 8002A7DC 00000000 */   nop
endlabel func_8002A700
