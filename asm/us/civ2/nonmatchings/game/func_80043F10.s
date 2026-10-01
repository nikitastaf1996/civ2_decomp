.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80043F10, 0x68

glabel func_80043F10
    /* 34710 80043F10 00FCBD27 */  addiu      $sp, $sp, -0x400
    /* 34714 80043F14 FC03BFAF */  sw         $ra, 0x3FC($sp)
    /* 34718 80043F18 F803B0AF */  sw         $s0, 0x3F8($sp)
    /* 3471C 80043F1C 21808000 */  addu       $s0, $a0, $zero
    /* 34720 80043F20 4E0A010C */  jal        func_80042938
    /* 34724 80043F24 1000A427 */   addiu     $a0, $sp, 0x10
    /* 34728 80043F28 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3472C 80043F2C BE0D010C */  jal        func_800436F8
    /* 34730 80043F30 21280002 */   addu      $a1, $s0, $zero
    /* 34734 80043F34 1680043C */  lui        $a0, %hi(D_801589F0)
    /* 34738 80043F38 F089848C */  lw         $a0, %lo(D_801589F0)($a0)
    /* 3473C 80043F3C 00000000 */  nop
    /* 34740 80043F40 05008010 */  beqz       $a0, .L80043F58
    /* 34744 80043F44 00000000 */   nop
    /* 34748 80043F48 E511040C */  jal        func_80104794
    /* 3474C 80043F4C 00000000 */   nop
    /* 34750 80043F50 1680013C */  lui        $at, %hi(D_801589F0)
    /* 34754 80043F54 F08920AC */  sw         $zero, %lo(D_801589F0)($at)
  .L80043F58:
    /* 34758 80043F58 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3475C 80043F5C AF0A010C */  jal        func_80042ABC
    /* 34760 80043F60 02000524 */   addiu     $a1, $zero, 0x2
    /* 34764 80043F64 FC03BF8F */  lw         $ra, 0x3FC($sp)
    /* 34768 80043F68 F803B08F */  lw         $s0, 0x3F8($sp)
    /* 3476C 80043F6C 0004BD27 */  addiu      $sp, $sp, 0x400
    /* 34770 80043F70 0800E003 */  jr         $ra
    /* 34774 80043F74 00000000 */   nop
endlabel func_80043F10
