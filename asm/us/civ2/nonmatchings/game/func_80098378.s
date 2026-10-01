.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098378, 0x64

glabel func_80098378
    /* 88B78 80098378 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 88B7C 8009837C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 88B80 80098380 1400B1AF */  sw         $s1, 0x14($sp)
    /* 88B84 80098384 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88B88 80098388 2180C000 */  addu       $s0, $a2, $zero
    /* 88B8C 8009838C BD60020C */  jal        func_800982F4
    /* 88B90 80098390 2188E000 */   addu      $s1, $a3, $zero
    /* 88B94 80098394 21204000 */  addu       $a0, $v0, $zero
    /* 88B98 80098398 00008390 */  lbu        $v1, 0x0($a0)
    /* 88B9C 8009839C 02000006 */  bltz       $s0, .L800983A8
    /* 88BA0 800983A0 0F006230 */   andi      $v0, $v1, 0xF
    /* 88BA4 800983A4 21185000 */  addu       $v1, $v0, $s0
  .L800983A8:
    /* 88BA8 800983A8 02002016 */  bnez       $s1, .L800983B4
    /* 88BAC 800983AC 01000224 */   addiu     $v0, $zero, 0x1
    /* 88BB0 800983B0 21180000 */  addu       $v1, $zero, $zero
  .L800983B4:
    /* 88BB4 800983B4 02002216 */  bne        $s1, $v0, .L800983C0
    /* 88BB8 800983B8 00000000 */   nop
    /* 88BBC 800983BC 80006334 */  ori        $v1, $v1, 0x80
  .L800983C0:
    /* 88BC0 800983C0 000083A0 */  sb         $v1, 0x0($a0)
    /* 88BC4 800983C4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 88BC8 800983C8 1400B18F */  lw         $s1, 0x14($sp)
    /* 88BCC 800983CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 88BD0 800983D0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 88BD4 800983D4 0800E003 */  jr         $ra
    /* 88BD8 800983D8 00000000 */   nop
endlabel func_80098378
