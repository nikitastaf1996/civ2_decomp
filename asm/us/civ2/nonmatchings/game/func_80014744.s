.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80014744, 0x60

glabel func_80014744
    /* 4F44 80014744 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4F48 80014748 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4F4C 8001474C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4F50 80014750 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4F54 80014754 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4F58 80014758 21908000 */  addu       $s2, $a0, $zero
    /* 4F5C 8001475C 21880000 */  addu       $s1, $zero, $zero
    /* 4F60 80014760 21800000 */  addu       $s0, $zero, $zero
  .L80014764:
    /* 4F64 80014764 C351000C */  jal        func_8001470C
    /* 4F68 80014768 21200002 */   addu      $a0, $s0, $zero
    /* 4F6C 8001476C 02005214 */  bne        $v0, $s2, .L80014778
    /* 4F70 80014770 00000000 */   nop
    /* 4F74 80014774 01003126 */  addiu      $s1, $s1, 0x1
  .L80014778:
    /* 4F78 80014778 01001026 */  addiu      $s0, $s0, 0x1
    /* 4F7C 8001477C 1000022A */  slti       $v0, $s0, 0x10
    /* 4F80 80014780 F8FF4014 */  bnez       $v0, .L80014764
    /* 4F84 80014784 21102002 */   addu      $v0, $s1, $zero
    /* 4F88 80014788 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4F8C 8001478C 1800B28F */  lw         $s2, 0x18($sp)
    /* 4F90 80014790 1400B18F */  lw         $s1, 0x14($sp)
    /* 4F94 80014794 1000B08F */  lw         $s0, 0x10($sp)
    /* 4F98 80014798 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4F9C 8001479C 0800E003 */  jr         $ra
    /* 4FA0 800147A0 00000000 */   nop
endlabel func_80014744
