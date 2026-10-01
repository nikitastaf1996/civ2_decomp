.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009EEF0, 0x5C

glabel func_8009EEF0
    /* 8F6F0 8009EEF0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8F6F4 8009EEF4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8F6F8 8009EEF8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8F6FC 8009EEFC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8F700 8009EF00 21808000 */  addu       $s0, $a0, $zero
    /* 8F704 8009EF04 2188C000 */  addu       $s1, $a2, $zero
    /* 8F708 8009EF08 173B030C */  jal        func_800CEC5C
    /* 8F70C 8009EF0C 2120A000 */   addu      $a0, $a1, $zero
    /* 8F710 8009EF10 2E0202A6 */  sh         $v0, 0x22E($s0)
    /* 8F714 8009EF14 300211A6 */  sh         $s1, 0x230($s0)
    /* 8F718 8009EF18 21200002 */  addu       $a0, $s0, $zero
    /* 8F71C 8009EF1C 1280053C */  lui        $a1, %hi(D_8011ACB4)
    /* 8F720 8009EF20 B4ACA58C */  lw         $a1, %lo(D_8011ACB4)($a1)
    /* 8F724 8009EF24 E16E020C */  jal        func_8009BB84
    /* 8F728 8009EF28 01000624 */   addiu     $a2, $zero, 0x1
    /* 8F72C 8009EF2C DE73020C */  jal        func_8009CF78
    /* 8F730 8009EF30 21200002 */   addu      $a0, $s0, $zero
    /* 8F734 8009EF34 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8F738 8009EF38 1400B18F */  lw         $s1, 0x14($sp)
    /* 8F73C 8009EF3C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8F740 8009EF40 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8F744 8009EF44 0800E003 */  jr         $ra
    /* 8F748 8009EF48 00000000 */   nop
endlabel func_8009EEF0
