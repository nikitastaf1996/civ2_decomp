.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009AB48, 0x70

glabel func_8009AB48
    /* 8B348 8009AB48 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8B34C 8009AB4C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8B350 8009AB50 1680023C */  lui        $v0, %hi(D_80158872)
    /* 8B354 8009AB54 72884290 */  lbu        $v0, %lo(D_80158872)($v0)
    /* 8B358 8009AB58 00000000 */  nop
    /* 8B35C 8009AB5C 0B004010 */  beqz       $v0, .L8009AB8C
    /* 8B360 8009AB60 2140C000 */   addu      $t0, $a2, $zero
    /* 8B364 8009AB64 1680023C */  lui        $v0, %hi(D_80158874)
    /* 8B368 8009AB68 74884290 */  lbu        $v0, %lo(D_80158874)($v0)
    /* 8B36C 8009AB6C 00000000 */  nop
    /* 8B370 8009AB70 06004010 */  beqz       $v0, .L8009AB8C
    /* 8B374 8009AB74 01000224 */   addiu     $v0, $zero, 0x1
    /* 8B378 8009AB78 1280033C */  lui        $v1, %hi(D_8011ACBC)
    /* 8B37C 8009AB7C BCAC638C */  lw         $v1, %lo(D_8011ACBC)($v1)
    /* 8B380 8009AB80 00000000 */  nop
    /* 8B384 8009AB84 08006210 */  beq        $v1, $v0, .L8009ABA8
    /* 8B388 8009AB88 00000000 */   nop
  .L8009AB8C:
    /* 8B38C 8009AB8C 1000A7AF */  sw         $a3, 0x10($sp)
    /* 8B390 8009AB90 32028284 */  lh         $v0, 0x232($a0)
    /* 8B394 8009AB94 00000000 */  nop
    /* 8B398 8009AB98 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8B39C 8009AB9C 05000624 */  addiu      $a2, $zero, 0x5
    /* 8B3A0 8009ABA0 4CBB020C */  jal        func_800AED30
    /* 8B3A4 8009ABA4 21380001 */   addu      $a3, $t0, $zero
  .L8009ABA8:
    /* 8B3A8 8009ABA8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8B3AC 8009ABAC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8B3B0 8009ABB0 0800E003 */  jr         $ra
    /* 8B3B4 8009ABB4 00000000 */   nop
endlabel func_8009AB48
