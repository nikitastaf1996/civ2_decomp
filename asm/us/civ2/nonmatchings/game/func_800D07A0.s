.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D07A0, 0x50

glabel func_800D07A0
    /* C0FA0 800D07A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C0FA4 800D07A4 1400BFAF */  sw         $ra, 0x14($sp)
    /* C0FA8 800D07A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* C0FAC 800D07AC 21808000 */  addu       $s0, $a0, $zero
    /* C0FB0 800D07B0 CD2B030C */  jal        func_800CAF34
    /* C0FB4 800D07B4 28020426 */   addiu     $a0, $s0, 0x228
    /* C0FB8 800D07B8 01000324 */  addiu      $v1, $zero, 0x1
    /* C0FBC 800D07BC B40E03AE */  sw         $v1, 0xEB4($s0)
    /* C0FC0 800D07C0 B00E00AE */  sw         $zero, 0xEB0($s0)
    /* C0FC4 800D07C4 B80E00AE */  sw         $zero, 0xEB8($s0)
    /* C0FC8 800D07C8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* C0FCC 800D07CC AC0E02AE */  sw         $v0, 0xEAC($s0)
    /* C0FD0 800D07D0 C40E00AE */  sw         $zero, 0xEC4($s0)
    /* C0FD4 800D07D4 C80E03AE */  sw         $v1, 0xEC8($s0)
    /* C0FD8 800D07D8 5C0F00AE */  sw         $zero, 0xF5C($s0)
    /* C0FDC 800D07DC 1400BF8F */  lw         $ra, 0x14($sp)
    /* C0FE0 800D07E0 1000B08F */  lw         $s0, 0x10($sp)
    /* C0FE4 800D07E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C0FE8 800D07E8 0800E003 */  jr         $ra
    /* C0FEC 800D07EC 00000000 */   nop
endlabel func_800D07A0
