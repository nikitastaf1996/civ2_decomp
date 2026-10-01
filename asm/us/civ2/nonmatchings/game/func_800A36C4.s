.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A36C4, 0x98

glabel func_800A36C4
    /* 93EC4 800A36C4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 93EC8 800A36C8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 93ECC 800A36CC 1800A0A7 */  sh         $zero, 0x18($sp)
    /* 93ED0 800A36D0 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* 93ED4 800A36D4 40010224 */  addiu      $v0, $zero, 0x140
    /* 93ED8 800A36D8 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* 93EDC 800A36DC F0000224 */  addiu      $v0, $zero, 0xF0
    /* 93EE0 800A36E0 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* 93EE4 800A36E4 7907040C */  jal        func_80101DE4
    /* 93EE8 800A36E8 01000424 */   addiu     $a0, $zero, 0x1
    /* 93EEC 800A36EC B805858F */  lw         $a1, %gp_rel(D_80158A90)($gp)
    /* 93EF0 800A36F0 00000000 */  nop
    /* 93EF4 800A36F4 8C00A424 */  addiu      $a0, $a1, 0x8C
    /* 93EF8 800A36F8 B800A524 */  addiu      $a1, $a1, 0xB8
    /* 93EFC 800A36FC 1800A627 */  addiu      $a2, $sp, 0x18
    /* 93F00 800A3700 1FE4030C */  jal        func_800F907C
    /* 93F04 800A3704 2138C000 */   addu      $a3, $a2, $zero
    /* 93F08 800A3708 B805848F */  lw         $a0, %gp_rel(D_80158A90)($gp)
    /* 93F0C 800A370C BB8F020C */  jal        func_800A3EEC
    /* 93F10 800A3710 00000000 */   nop
    /* 93F14 800A3714 B805848F */  lw         $a0, %gp_rel(D_80158A90)($gp)
    /* 93F18 800A3718 0F90020C */  jal        func_800A403C
    /* 93F1C 800A371C 00000000 */   nop
    /* 93F20 800A3720 B805848F */  lw         $a0, %gp_rel(D_80158A90)($gp)
    /* 93F24 800A3724 FC91020C */  jal        func_800A47F0
    /* 93F28 800A3728 00000000 */   nop
    /* 93F2C 800A372C B805868F */  lw         $a2, %gp_rel(D_80158A90)($gp)
    /* 93F30 800A3730 38000224 */  addiu      $v0, $zero, 0x38
    /* 93F34 800A3734 1000A2AF */  sw         $v0, 0x10($sp)
    /* 93F38 800A3738 2000A427 */  addiu      $a0, $sp, 0x20
    /* 93F3C 800A373C 8805C524 */  addiu      $a1, $a2, 0x588
    /* 93F40 800A3740 8C00C624 */  addiu      $a2, $a2, 0x8C
    /* 93F44 800A3744 89EE030C */  jal        func_800FBA24
    /* 93F48 800A3748 10000724 */   addiu     $a3, $zero, 0x10
    /* 93F4C 800A374C 2800BF8F */  lw         $ra, 0x28($sp)
    /* 93F50 800A3750 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 93F54 800A3754 0800E003 */  jr         $ra
    /* 93F58 800A3758 00000000 */   nop
endlabel func_800A36C4
