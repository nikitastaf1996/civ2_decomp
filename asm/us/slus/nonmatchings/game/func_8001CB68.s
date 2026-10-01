.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001CB68, 0x50

glabel func_8001CB68
    /* D368 8001CB68 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D36C 8001CB6C 1400BFAF */  sw         $ra, 0x14($sp)
    /* D370 8001CB70 1000B0AF */  sw         $s0, 0x10($sp)
    /* D374 8001CB74 A768000C */  jal        func_8001A29C
    /* D378 8001CB78 21808000 */   addu      $s0, $a0, $zero
  .L8001CB7C:
    /* D37C 8001CB7C D568000C */  jal        func_8001A354
    /* D380 8001CB80 FF000432 */   andi      $a0, $s0, 0xFF
    /* D384 8001CB84 05004014 */  bnez       $v0, .L8001CB9C
    /* D388 8001CB88 00000000 */   nop
    /* D38C 8001CB8C BF72000C */  jal        func_8001CAFC
    /* D390 8001CB90 01000424 */   addiu     $a0, $zero, 0x1
    /* D394 8001CB94 DF720008 */  j          .L8001CB7C
    /* D398 8001CB98 00000000 */   nop
  .L8001CB9C:
    /* D39C 8001CB9C BF72000C */  jal        func_8001CAFC
    /* D3A0 8001CBA0 01000424 */   addiu     $a0, $zero, 0x1
    /* D3A4 8001CBA4 1400BF8F */  lw         $ra, 0x14($sp)
    /* D3A8 8001CBA8 1000B08F */  lw         $s0, 0x10($sp)
    /* D3AC 8001CBAC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D3B0 8001CBB0 0800E003 */  jr         $ra
    /* D3B4 8001CBB4 00000000 */   nop
endlabel func_8001CB68
