.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B2EC, 0x4C

glabel func_8001B2EC
    /* BAEC 8001B2EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BAF0 8001B2F0 1000BFAF */  sw         $ra, 0x10($sp)
    /* BAF4 8001B2F4 4C0B828F */  lw         $v0, %gp_rel(D_8005525C)($gp)
    /* BAF8 8001B2F8 00000000 */  nop
    /* BAFC 8001B2FC 09004014 */  bnez       $v0, .L8001B324
    /* BB00 8001B300 01000224 */   addiu     $v0, $zero, 0x1
    /* BB04 8001B304 0580023C */  lui        $v0, %hi(D_8005652C)
    /* BB08 8001B308 2C65428C */  lw         $v0, %lo(D_8005652C)($v0)
    /* BB0C 8001B30C 00000000 */  nop
    /* BB10 8001B310 02240200 */  srl        $a0, $v0, 16
    /* BB14 8001B314 01008424 */  addiu      $a0, $a0, 0x1
    /* BB18 8001B318 5FB6000C */  jal        func_8002D97C
    /* BB1C 8001B31C 21208200 */   addu      $a0, $a0, $v0
    /* BB20 8001B320 01000224 */  addiu      $v0, $zero, 0x1
  .L8001B324:
    /* BB24 8001B324 4C0B82AF */  sw         $v0, %gp_rel(D_8005525C)($gp)
    /* BB28 8001B328 1000BF8F */  lw         $ra, 0x10($sp)
    /* BB2C 8001B32C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BB30 8001B330 0800E003 */  jr         $ra
    /* BB34 8001B334 00000000 */   nop
endlabel func_8001B2EC
