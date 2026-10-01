.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80089B20, 0x84

glabel func_80089B20
    /* 7A320 80089B20 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7A324 80089B24 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 7A328 80089B28 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7A32C 80089B2C 21808000 */  addu       $s0, $a0, $zero
    /* 7A330 80089B30 2120A000 */  addu       $a0, $a1, $zero
    /* 7A334 80089B34 FFFF8224 */  addiu      $v0, $a0, -0x1
    /* 7A338 80089B38 2200422C */  sltiu      $v0, $v0, 0x22
    /* 7A33C 80089B3C 13004010 */  beqz       $v0, .L80089B8C
    /* 7A340 80089B40 21180000 */   addu      $v1, $zero, $zero
    /* 7A344 80089B44 1000A527 */  addiu      $a1, $sp, 0x10
    /* 7A348 80089B48 C73B030C */  jal        func_800CEF1C
    /* 7A34C 80089B4C 1400A627 */   addiu     $a2, $sp, 0x14
    /* 7A350 80089B50 40101000 */  sll        $v0, $s0, 1
    /* 7A354 80089B54 21105000 */  addu       $v0, $v0, $s0
    /* 7A358 80089B58 80100200 */  sll        $v0, $v0, 2
    /* 7A35C 80089B5C 23105000 */  subu       $v0, $v0, $s0
    /* 7A360 80089B60 C0100200 */  sll        $v0, $v0, 3
    /* 7A364 80089B64 1180033C */  lui        $v1, %hi(D_80113F08)
    /* 7A368 80089B68 083F6324 */  addiu      $v1, $v1, %lo(D_80113F08)
    /* 7A36C 80089B6C 1000A48F */  lw         $a0, 0x10($sp)
    /* 7A370 80089B70 21104300 */  addu       $v0, $v0, $v1
    /* 7A374 80089B74 21104400 */  addu       $v0, $v0, $a0
    /* 7A378 80089B78 00004290 */  lbu        $v0, 0x0($v0)
    /* 7A37C 80089B7C 1400A393 */  lbu        $v1, 0x14($sp)
    /* 7A380 80089B80 00000000 */  nop
    /* 7A384 80089B84 24104300 */  and        $v0, $v0, $v1
    /* 7A388 80089B88 2B180200 */  sltu       $v1, $zero, $v0
  .L80089B8C:
    /* 7A38C 80089B8C 21106000 */  addu       $v0, $v1, $zero
    /* 7A390 80089B90 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 7A394 80089B94 1800B08F */  lw         $s0, 0x18($sp)
    /* 7A398 80089B98 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 7A39C 80089B9C 0800E003 */  jr         $ra
    /* 7A3A0 80089BA0 00000000 */   nop
endlabel func_80089B20
