.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094B2C, 0x44

glabel func_80094B2C
    /* 8532C 80094B2C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 85330 80094B30 1400BFAF */  sw         $ra, 0x14($sp)
    /* 85334 80094B34 1000B0AF */  sw         $s0, 0x10($sp)
    /* 85338 80094B38 21808000 */  addu       $s0, $a0, $zero
    /* 8533C 80094B3C 0800028E */  lw         $v0, 0x8($s0)
    /* 85340 80094B40 00000000 */  nop
    /* 85344 80094B44 05004010 */  beqz       $v0, .L80094B5C
    /* 85348 80094B48 00000000 */   nop
    /* 8534C 80094B4C 0400048E */  lw         $a0, 0x4($s0)
    /* 85350 80094B50 89D6030C */  jal        func_800F5A24
    /* 85354 80094B54 00000000 */   nop
    /* 85358 80094B58 080000AE */  sw         $zero, 0x8($s0)
  .L80094B5C:
    /* 8535C 80094B5C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 85360 80094B60 1000B08F */  lw         $s0, 0x10($sp)
    /* 85364 80094B64 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 85368 80094B68 0800E003 */  jr         $ra
    /* 8536C 80094B6C 00000000 */   nop
endlabel func_80094B2C
