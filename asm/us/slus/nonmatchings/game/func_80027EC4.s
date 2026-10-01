.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80027EC4, 0x16C

glabel func_80027EC4
    /* 186C4 80027EC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 186C8 80027EC8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 186CC 80027ECC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 186D0 80027ED0 21808000 */  addu       $s0, $a0, $zero
    /* 186D4 80027ED4 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 186D8 80027ED8 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 186DC 80027EDC 1580053C */  lui        $a1, %hi(D_8014C1E4)
    /* 186E0 80027EE0 E4C1A524 */  addiu      $a1, $a1, %lo(D_8014C1E4)
    /* 186E4 80027EE4 1D6C000C */  jal        func_8001B074
    /* 186E8 80027EE8 67000624 */   addiu     $a2, $zero, 0x67
    /* 186EC 80027EEC 0C000224 */  addiu      $v0, $zero, 0xC
    /* 186F0 80027EF0 1380013C */  lui        $at, %hi(D_8012AF60)
    /* 186F4 80027EF4 60AF22A4 */  sh         $v0, %lo(D_8012AF60)($at)
    /* 186F8 80027EF8 BC000224 */  addiu      $v0, $zero, 0xBC
    /* 186FC 80027EFC 1380013C */  lui        $at, %hi(D_8012AF62)
    /* 18700 80027F00 62AF22A4 */  sh         $v0, %lo(D_8012AF62)($at)
    /* 18704 80027F04 30000224 */  addiu      $v0, $zero, 0x30
    /* 18708 80027F08 1380013C */  lui        $at, %hi(D_8012AF64)
    /* 1870C 80027F0C 64AF22A4 */  sh         $v0, %lo(D_8012AF64)($at)
    /* 18710 80027F10 18000224 */  addiu      $v0, $zero, 0x18
    /* 18714 80027F14 1380013C */  lui        $at, %hi(D_8012AF66)
    /* 18718 80027F18 66AF22A4 */  sh         $v0, %lo(D_8012AF66)($at)
    /* 1871C 80027F1C C0000224 */  addiu      $v0, $zero, 0xC0
    /* 18720 80027F20 1380013C */  lui        $at, %hi(D_8012AF6A)
    /* 18724 80027F24 6AAF22A0 */  sb         $v0, %lo(D_8012AF6A)($at)
    /* 18728 80027F28 1380013C */  lui        $at, %hi(D_8012AF6B)
    /* 1872C 80027F2C 6BAF20A0 */  sb         $zero, %lo(D_8012AF6B)($at)
    /* 18730 80027F30 1380033C */  lui        $v1, %hi(D_8012A0E0)
    /* 18734 80027F34 E0A06324 */  addiu      $v1, $v1, %lo(D_8012A0E0)
    /* 18738 80027F38 40000224 */  addiu      $v0, $zero, 0x40
    /* 1873C 80027F3C 920E62A0 */  sb         $v0, 0xE92($v1)
    /* 18740 80027F40 910E62A0 */  sb         $v0, 0xE91($v1)
    /* 18744 80027F44 1380013C */  lui        $at, %hi(D_8012AF70)
    /* 18748 80027F48 70AF22A0 */  sb         $v0, %lo(D_8012AF70)($at)
    /* 1874C 80027F4C FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* 18750 80027F50 08004014 */  bnez       $v0, .L80027F74
    /* 18754 80027F54 18000224 */   addiu     $v0, $zero, 0x18
    /* 18758 80027F58 1380013C */  lui        $at, %hi(D_8012AF6B)
    /* 1875C 80027F5C 6BAF22A0 */  sb         $v0, %lo(D_8012AF6B)($at)
    /* 18760 80027F60 80000224 */  addiu      $v0, $zero, 0x80
    /* 18764 80027F64 920E62A0 */  sb         $v0, 0xE92($v1)
    /* 18768 80027F68 910E62A0 */  sb         $v0, 0xE91($v1)
    /* 1876C 80027F6C 1380013C */  lui        $at, %hi(D_8012AF70)
    /* 18770 80027F70 70AF22A0 */  sb         $v0, %lo(D_8012AF70)($at)
  .L80027F74:
    /* 18774 80027F74 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 18778 80027F78 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 1877C 80027F7C 1580053C */  lui        $a1, %hi(D_8014C1E4)
    /* 18780 80027F80 E4C1A524 */  addiu      $a1, $a1, %lo(D_8014C1E4)
    /* 18784 80027F84 1D6C000C */  jal        func_8001B074
    /* 18788 80027F88 68000624 */   addiu     $a2, $zero, 0x68
    /* 1878C 80027F8C 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 18790 80027F90 1380013C */  lui        $at, %hi(D_8012AF84)
    /* 18794 80027F94 84AF22A4 */  sh         $v0, %lo(D_8012AF84)($at)
    /* 18798 80027F98 BC000224 */  addiu      $v0, $zero, 0xBC
    /* 1879C 80027F9C 1380013C */  lui        $at, %hi(D_8012AF86)
    /* 187A0 80027FA0 86AF22A4 */  sh         $v0, %lo(D_8012AF86)($at)
    /* 187A4 80027FA4 30000224 */  addiu      $v0, $zero, 0x30
    /* 187A8 80027FA8 1380013C */  lui        $at, %hi(D_8012AF88)
    /* 187AC 80027FAC 88AF22A4 */  sh         $v0, %lo(D_8012AF88)($at)
    /* 187B0 80027FB0 18000224 */  addiu      $v0, $zero, 0x18
    /* 187B4 80027FB4 1380013C */  lui        $at, %hi(D_8012AF8A)
    /* 187B8 80027FB8 8AAF22A4 */  sh         $v0, %lo(D_8012AF8A)($at)
    /* 187BC 80027FBC C0000224 */  addiu      $v0, $zero, 0xC0
    /* 187C0 80027FC0 1380013C */  lui        $at, %hi(D_8012AF8E)
    /* 187C4 80027FC4 8EAF22A0 */  sb         $v0, %lo(D_8012AF8E)($at)
    /* 187C8 80027FC8 30000224 */  addiu      $v0, $zero, 0x30
    /* 187CC 80027FCC 1380013C */  lui        $at, %hi(D_8012AF8F)
    /* 187D0 80027FD0 8FAF22A0 */  sb         $v0, %lo(D_8012AF8F)($at)
    /* 187D4 80027FD4 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 187D8 80027FD8 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 187DC 80027FDC 40000224 */  addiu      $v0, $zero, 0x40
    /* 187E0 80027FE0 B60E82A0 */  sb         $v0, 0xEB6($a0)
    /* 187E4 80027FE4 B50E82A0 */  sb         $v0, 0xEB5($a0)
    /* 187E8 80027FE8 1380013C */  lui        $at, %hi(D_8012AF94)
    /* 187EC 80027FEC 94AF22A0 */  sb         $v0, %lo(D_8012AF94)($at)
    /* 187F0 80027FF0 FFFF0332 */  andi       $v1, $s0, 0xFFFF
    /* 187F4 80027FF4 01000224 */  addiu      $v0, $zero, 0x1
    /* 187F8 80027FF8 08006214 */  bne        $v1, $v0, .L8002801C
    /* 187FC 80027FFC 48000224 */   addiu     $v0, $zero, 0x48
    /* 18800 80028000 1380013C */  lui        $at, %hi(D_8012AF8F)
    /* 18804 80028004 8FAF22A0 */  sb         $v0, %lo(D_8012AF8F)($at)
    /* 18808 80028008 80000224 */  addiu      $v0, $zero, 0x80
    /* 1880C 8002800C B60E82A0 */  sb         $v0, 0xEB6($a0)
    /* 18810 80028010 B50E82A0 */  sb         $v0, 0xEB5($a0)
    /* 18814 80028014 1380013C */  lui        $at, %hi(D_8012AF94)
    /* 18818 80028018 94AF22A0 */  sb         $v0, %lo(D_8012AF94)($at)
  .L8002801C:
    /* 1881C 8002801C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 18820 80028020 1000B08F */  lw         $s0, 0x10($sp)
    /* 18824 80028024 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 18828 80028028 0800E003 */  jr         $ra
    /* 1882C 8002802C 00000000 */   nop
endlabel func_80027EC4
