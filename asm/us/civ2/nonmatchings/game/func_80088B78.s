.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80088B78, 0x60

glabel func_80088B78
    /* 79378 80088B78 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7937C 80088B7C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 79380 80088B80 1800B0AF */  sw         $s0, 0x18($sp)
    /* 79384 80088B84 21808000 */  addu       $s0, $a0, $zero
    /* 79388 80088B88 2120A000 */  addu       $a0, $a1, $zero
    /* 7938C 80088B8C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 79390 80088B90 C73B030C */  jal        func_800CEF1C
    /* 79394 80088B94 1400A627 */   addiu     $a2, $sp, 0x14
    /* 79398 80088B98 00811000 */  sll        $s0, $s0, 4
    /* 7939C 80088B9C 1180023C */  lui        $v0, %hi(D_8010CC6B)
    /* 793A0 80088BA0 6BCC4224 */  addiu      $v0, $v0, %lo(D_8010CC6B)
    /* 793A4 80088BA4 1000A38F */  lw         $v1, 0x10($sp)
    /* 793A8 80088BA8 21800202 */  addu       $s0, $s0, $v0
    /* 793AC 80088BAC 21800302 */  addu       $s0, $s0, $v1
    /* 793B0 80088BB0 00000292 */  lbu        $v0, 0x0($s0)
    /* 793B4 80088BB4 1400A393 */  lbu        $v1, 0x14($sp)
    /* 793B8 80088BB8 00000000 */  nop
    /* 793BC 80088BBC 25104300 */  or         $v0, $v0, $v1
    /* 793C0 80088BC0 000002A2 */  sb         $v0, 0x0($s0)
    /* 793C4 80088BC4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 793C8 80088BC8 1800B08F */  lw         $s0, 0x18($sp)
    /* 793CC 80088BCC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 793D0 80088BD0 0800E003 */  jr         $ra
    /* 793D4 80088BD4 00000000 */   nop
endlabel func_80088B78
