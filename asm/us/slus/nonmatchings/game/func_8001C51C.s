.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C51C, 0x6C

glabel func_8001C51C
    /* CD1C 8001C51C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* CD20 8001C520 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* CD24 8001C524 1800B0AF */  sw         $s0, 0x18($sp)
    /* CD28 8001C528 21808000 */  addu       $s0, $a0, $zero
    /* CD2C 8001C52C 01000424 */  addiu      $a0, $zero, 0x1
    /* CD30 8001C530 DCB9000C */  jal        CdSync
    /* CD34 8001C534 21280000 */   addu      $a1, $zero, $zero
    /* CD38 8001C538 02000324 */  addiu      $v1, $zero, 0x2
    /* CD3C 8001C53C 0D004314 */  bne        $v0, $v1, .L8001C574
    /* CD40 8001C540 01000224 */   addiu     $v0, $zero, 0x1
    /* CD44 8001C544 10000424 */  addiu      $a0, $zero, 0x10
    /* CD48 8001C548 21280000 */  addu       $a1, $zero, $zero
    /* CD4C 8001C54C F6B9000C */  jal        CdControl
    /* CD50 8001C550 1000A627 */   addiu     $a2, $sp, 0x10
    /* CD54 8001C554 07004010 */  beqz       $v0, .L8001C574
    /* CD58 8001C558 01000224 */   addiu     $v0, $zero, 0x1
    /* CD5C 8001C55C 4FBB000C */  jal        CdPosToInt
    /* CD60 8001C560 1000A427 */   addiu     $a0, $sp, 0x10
    /* CD64 8001C564 2A105000 */  slt        $v0, $v0, $s0
    /* CD68 8001C568 02004014 */  bnez       $v0, .L8001C574
    /* CD6C 8001C56C 01000224 */   addiu     $v0, $zero, 0x1
    /* CD70 8001C570 21100000 */  addu       $v0, $zero, $zero
  .L8001C574:
    /* CD74 8001C574 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* CD78 8001C578 1800B08F */  lw         $s0, 0x18($sp)
    /* CD7C 8001C57C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* CD80 8001C580 0800E003 */  jr         $ra
    /* CD84 8001C584 00000000 */   nop
endlabel func_8001C51C
