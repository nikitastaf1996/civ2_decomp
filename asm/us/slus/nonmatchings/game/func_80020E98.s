.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80020E98, 0xA8

glabel func_80020E98
    /* 11698 80020E98 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1169C 80020E9C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 116A0 80020EA0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 116A4 80020EA4 1380023C */  lui        $v0, %hi(D_8012C6B4)
    /* 116A8 80020EA8 B4C6428C */  lw         $v0, %lo(D_8012C6B4)($v0)
    /* 116AC 80020EAC 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* 116B0 80020EB0 25104300 */  or         $v0, $v0, $v1
    /* 116B4 80020EB4 1380013C */  lui        $at, %hi(D_8012C6B4)
    /* 116B8 80020EB8 B4C622AC */  sw         $v0, %lo(D_8012C6B4)($at)
    /* 116BC 80020EBC 21800000 */  addu       $s0, $zero, $zero
  .L80020EC0:
    /* 116C0 80020EC0 1380023C */  lui        $v0, %hi(D_8012C64E)
    /* 116C4 80020EC4 4EC64294 */  lhu        $v0, %lo(D_8012C64E)($v0)
    /* 116C8 80020EC8 00000000 */  nop
    /* 116CC 80020ECC 04004224 */  addiu      $v0, $v0, 0x4
    /* 116D0 80020ED0 1380013C */  lui        $at, %hi(D_8012C64E)
    /* 116D4 80020ED4 4EC622A4 */  sh         $v0, %lo(D_8012C64E)($at)
    /* 116D8 80020ED8 1380023C */  lui        $v0, %hi(D_8012C672)
    /* 116DC 80020EDC 72C64294 */  lhu        $v0, %lo(D_8012C672)($v0)
    /* 116E0 80020EE0 00000000 */  nop
    /* 116E4 80020EE4 04004224 */  addiu      $v0, $v0, 0x4
    /* 116E8 80020EE8 1380013C */  lui        $at, %hi(D_8012C672)
    /* 116EC 80020EEC 72C622A4 */  sh         $v0, %lo(D_8012C672)($at)
    /* 116F0 80020EF0 1380023C */  lui        $v0, %hi(D_8012C696)
    /* 116F4 80020EF4 96C64294 */  lhu        $v0, %lo(D_8012C696)($v0)
    /* 116F8 80020EF8 00000000 */  nop
    /* 116FC 80020EFC 04004224 */  addiu      $v0, $v0, 0x4
    /* 11700 80020F00 1380013C */  lui        $at, %hi(D_8012C696)
    /* 11704 80020F04 96C622A4 */  sh         $v0, %lo(D_8012C696)($at)
    /* 11708 80020F08 E976000C */  jal        func_8001DBA4
    /* 1170C 80020F0C 01000424 */   addiu     $a0, $zero, 0x1
    /* 11710 80020F10 01000226 */  addiu      $v0, $s0, 0x1
    /* 11714 80020F14 21804000 */  addu       $s0, $v0, $zero
    /* 11718 80020F18 00140200 */  sll        $v0, $v0, 16
    /* 1171C 80020F1C 03140200 */  sra        $v0, $v0, 16
    /* 11720 80020F20 20004228 */  slti       $v0, $v0, 0x20
    /* 11724 80020F24 E6FF4014 */  bnez       $v0, .L80020EC0
    /* 11728 80020F28 00000000 */   nop
    /* 1172C 80020F2C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 11730 80020F30 1000B08F */  lw         $s0, 0x10($sp)
    /* 11734 80020F34 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 11738 80020F38 0800E003 */  jr         $ra
    /* 1173C 80020F3C 00000000 */   nop
endlabel func_80020E98
