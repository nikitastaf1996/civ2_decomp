.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097A24, 0x94

glabel func_80097A24
    /* 88224 80097A24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88228 80097A28 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8822C 80097A2C C8048293 */  lbu        $v0, %gp_rel(D_801589A0)($gp)
    /* 88230 80097A30 00000000 */  nop
    /* 88234 80097A34 0C00422C */  sltiu      $v0, $v0, 0xC
    /* 88238 80097A38 12004010 */  beqz       $v0, .L80097A84
    /* 8823C 80097A3C 21280000 */   addu      $a1, $zero, $zero
    /* 88240 80097A40 1280043C */  lui        $a0, %hi(D_8011C238)
    /* 88244 80097A44 38C28424 */  addiu      $a0, $a0, %lo(D_8011C238)
    /* 88248 80097A48 A9E0030C */  jal        func_800F82A4
    /* 8824C 80097A4C 21300000 */   addu      $a2, $zero, $zero
    /* 88250 80097A50 C8048593 */  lbu        $a1, %gp_rel(D_801589A0)($gp)
    /* 88254 80097A54 1280043C */  lui        $a0, %hi(D_8011C238)
    /* 88258 80097A58 38C28424 */  addiu      $a0, $a0, %lo(D_8011C238)
    /* 8825C 80097A5C 0A00A524 */  addiu      $a1, $a1, 0xA
    /* 88260 80097A60 0A000624 */  addiu      $a2, $zero, 0xA
    /* 88264 80097A64 44E3030C */  jal        func_800F8D10
    /* 88268 80097A68 C0000724 */   addiu     $a3, $zero, 0xC0
    /* 8826C 80097A6C 1180043C */  lui        $a0, %hi(D_8010CBE0)
    /* 88270 80097A70 E0CB8424 */  addiu      $a0, $a0, %lo(D_8010CBE0)
    /* 88274 80097A74 1280053C */  lui        $a1, %hi(D_8011C238)
    /* 88278 80097A78 38C2A524 */  addiu      $a1, $a1, %lo(D_8011C238)
    /* 8827C 80097A7C A85E0208 */  j          .L80097AA0
    /* 88280 80097A80 00000000 */   nop
  .L80097A84:
    /* 88284 80097A84 1280043C */  lui        $a0, %hi(D_8011C238)
    /* 88288 80097A88 38C28424 */  addiu      $a0, $a0, %lo(D_8011C238)
    /* 8828C 80097A8C A9E0030C */  jal        func_800F82A4
    /* 88290 80097A90 21300000 */   addu      $a2, $zero, $zero
    /* 88294 80097A94 1180043C */  lui        $a0, %hi(D_8010CBE0)
    /* 88298 80097A98 E0CB8424 */  addiu      $a0, $a0, %lo(D_8010CBE0)
    /* 8829C 80097A9C 21280000 */  addu       $a1, $zero, $zero
  .L80097AA0:
    /* 882A0 80097AA0 59EB030C */  jal        func_800FAD64
    /* 882A4 80097AA4 00000000 */   nop
    /* 882A8 80097AA8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 882AC 80097AAC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 882B0 80097AB0 0800E003 */  jr         $ra
    /* 882B4 80097AB4 00000000 */   nop
endlabel func_80097A24
