.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007EAF8, 0x48

glabel func_8007EAF8
    /* 6F2F8 8007EAF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6F2FC 8007EAFC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6F300 8007EB00 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6F304 8007EB04 F2EC010C */  jal        func_8007B3C8
    /* 6F308 8007EB08 21808000 */   addu      $s0, $a0, $zero
    /* 6F30C 8007EB0C 40181000 */  sll        $v1, $s0, 1
    /* 6F310 8007EB10 21187000 */  addu       $v1, $v1, $s0
    /* 6F314 8007EB14 80180300 */  sll        $v1, $v1, 2
    /* 6F318 8007EB18 21187000 */  addu       $v1, $v1, $s0
    /* 6F31C 8007EB1C 40180300 */  sll        $v1, $v1, 1
    /* 6F320 8007EB20 1180013C */  lui        $at, %hi(D_8010D6BC)
    /* 6F324 8007EB24 21082300 */  addu       $at, $at, $v1
    /* 6F328 8007EB28 BCD622A0 */  sb         $v0, %lo(D_8010D6BC)($at)
    /* 6F32C 8007EB2C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6F330 8007EB30 1000B08F */  lw         $s0, 0x10($sp)
    /* 6F334 8007EB34 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6F338 8007EB38 0800E003 */  jr         $ra
    /* 6F33C 8007EB3C 00000000 */   nop
endlabel func_8007EAF8
