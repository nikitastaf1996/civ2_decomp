.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098404, 0x3C

glabel func_80098404
    /* 88C04 80098404 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88C08 80098408 1000BFAF */  sw         $ra, 0x10($sp)
    /* 88C0C 8009840C BD60020C */  jal        func_800982F4
    /* 88C10 80098410 00000000 */   nop
    /* 88C14 80098414 05004290 */  lbu        $v0, 0x5($v0)
    /* 88C18 80098418 00000000 */  nop
    /* 88C1C 8009841C 02190200 */  srl        $v1, $v0, 4
    /* 88C20 80098420 0F000224 */  addiu      $v0, $zero, 0xF
    /* 88C24 80098424 02006214 */  bne        $v1, $v0, .L80098430
    /* 88C28 80098428 00000000 */   nop
    /* 88C2C 8009842C FFFF0324 */  addiu      $v1, $zero, -0x1
  .L80098430:
    /* 88C30 80098430 1000BF8F */  lw         $ra, 0x10($sp)
    /* 88C34 80098434 21106000 */  addu       $v0, $v1, $zero
    /* 88C38 80098438 0800E003 */  jr         $ra
    /* 88C3C 8009843C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80098404
