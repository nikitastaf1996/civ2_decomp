.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A05D4, 0x88

glabel func_800A05D4
    /* 90DD4 800A05D4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 90DD8 800A05D8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 90DDC 800A05DC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 90DE0 800A05E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 90DE4 800A05E4 21808000 */  addu       $s0, $a0, $zero
    /* 90DE8 800A05E8 1680013C */  lui        $at, %hi(D_80158874)
    /* 90DEC 800A05EC 748820A0 */  sb         $zero, %lo(D_80158874)($at)
    /* 90DF0 800A05F0 3374020C */  jal        func_8009D0CC
    /* 90DF4 800A05F4 2188A000 */   addu      $s1, $a1, $zero
    /* 90DF8 800A05F8 1680013C */  lui        $at, %hi(D_80158886)
    /* 90DFC 800A05FC 868830A4 */  sh         $s0, %lo(D_80158886)($at)
    /* 90E00 800A0600 1680013C */  lui        $at, %hi(D_80158888)
    /* 90E04 800A0604 888831A4 */  sh         $s1, %lo(D_80158888)($at)
    /* 90E08 800A0608 A3BF000C */  jal        func_8002FE8C
    /* 90E0C 800A060C 01000424 */   addiu     $a0, $zero, 0x1
    /* 90E10 800A0610 1680043C */  lui        $a0, %hi(D_80158886)
    /* 90E14 800A0614 86888484 */  lh         $a0, %lo(D_80158886)($a0)
    /* 90E18 800A0618 1680053C */  lui        $a1, %hi(D_80158888)
    /* 90E1C 800A061C 8888A584 */  lh         $a1, %lo(D_80158888)($a1)
    /* 90E20 800A0620 1280063C */  lui        $a2, %hi(D_8011ACB4)
    /* 90E24 800A0624 B4ACC68C */  lw         $a2, %lo(D_8011ACB4)($a2)
    /* 90E28 800A0628 6D7C020C */  jal        func_8009F1B4
    /* 90E2C 800A062C 00000000 */   nop
    /* 90E30 800A0630 01000224 */  addiu      $v0, $zero, 0x1
    /* 90E34 800A0634 1680013C */  lui        $at, %hi(D_80158874)
    /* 90E38 800A0638 748822A0 */  sb         $v0, %lo(D_80158874)($at)
    /* 90E3C 800A063C 3374020C */  jal        func_8009D0CC
    /* 90E40 800A0640 00000000 */   nop
    /* 90E44 800A0644 1800BF8F */  lw         $ra, 0x18($sp)
    /* 90E48 800A0648 1400B18F */  lw         $s1, 0x14($sp)
    /* 90E4C 800A064C 1000B08F */  lw         $s0, 0x10($sp)
    /* 90E50 800A0650 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 90E54 800A0654 0800E003 */  jr         $ra
    /* 90E58 800A0658 00000000 */   nop
endlabel func_800A05D4
