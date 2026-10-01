.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094B70, 0x64

glabel func_80094B70
    /* 85370 80094B70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 85374 80094B74 1400BFAF */  sw         $ra, 0x14($sp)
    /* 85378 80094B78 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8537C 80094B7C 21808000 */  addu       $s0, $a0, $zero
    /* 85380 80094B80 01000292 */  lbu        $v0, 0x1($s0)
    /* 85384 80094B84 00000000 */  nop
    /* 85388 80094B88 0A004010 */  beqz       $v0, .L80094BB4
    /* 8538C 80094B8C 00000000 */   nop
    /* 85390 80094B90 CB52020C */  jal        func_80094B2C
    /* 85394 80094B94 00000000 */   nop
    /* 85398 80094B98 0400048E */  lw         $a0, 0x4($s0)
    /* 8539C 80094B9C 89D6030C */  jal        func_800F5A24
    /* 853A0 80094BA0 00000000 */   nop
    /* 853A4 80094BA4 0400048E */  lw         $a0, 0x4($s0)
    /* 853A8 80094BA8 C6D5030C */  jal        func_800F5718
    /* 853AC 80094BAC 00000000 */   nop
    /* 853B0 80094BB0 010000A2 */  sb         $zero, 0x1($s0)
  .L80094BB4:
    /* 853B4 80094BB4 0C0000A6 */  sh         $zero, 0xC($s0)
    /* 853B8 80094BB8 100000A6 */  sh         $zero, 0x10($s0)
    /* 853BC 80094BBC 0E0000A6 */  sh         $zero, 0xE($s0)
    /* 853C0 80094BC0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 853C4 80094BC4 1000B08F */  lw         $s0, 0x10($sp)
    /* 853C8 80094BC8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 853CC 80094BCC 0800E003 */  jr         $ra
    /* 853D0 80094BD0 00000000 */   nop
endlabel func_80094B70
