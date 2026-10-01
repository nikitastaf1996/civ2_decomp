.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098440, 0x54

glabel func_80098440
    /* 88C40 80098440 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88C44 80098444 1400BFAF */  sw         $ra, 0x14($sp)
    /* 88C48 80098448 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88C4C 8009844C 2180C000 */  addu       $s0, $a2, $zero
    /* 88C50 80098450 0900022E */  sltiu      $v0, $s0, 0x9
    /* 88C54 80098454 02004014 */  bnez       $v0, .L80098460
    /* 88C58 80098458 00000000 */   nop
    /* 88C5C 8009845C 0F001024 */  addiu      $s0, $zero, 0xF
  .L80098460:
    /* 88C60 80098460 BD60020C */  jal        func_800982F4
    /* 88C64 80098464 00000000 */   nop
    /* 88C68 80098468 05004390 */  lbu        $v1, 0x5($v0)
    /* 88C6C 8009846C 00000000 */  nop
    /* 88C70 80098470 0F006330 */  andi       $v1, $v1, 0xF
    /* 88C74 80098474 00211000 */  sll        $a0, $s0, 4
    /* 88C78 80098478 25186400 */  or         $v1, $v1, $a0
    /* 88C7C 8009847C 050043A0 */  sb         $v1, 0x5($v0)
    /* 88C80 80098480 1400BF8F */  lw         $ra, 0x14($sp)
    /* 88C84 80098484 1000B08F */  lw         $s0, 0x10($sp)
    /* 88C88 80098488 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 88C8C 8009848C 0800E003 */  jr         $ra
    /* 88C90 80098490 00000000 */   nop
endlabel func_80098440
