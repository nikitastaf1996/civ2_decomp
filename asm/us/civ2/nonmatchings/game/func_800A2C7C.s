.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A2C7C, 0x54

glabel func_800A2C7C
    /* 9347C 800A2C7C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 93480 800A2C80 1000BFAF */  sw         $ra, 0x10($sp)
    /* 93484 800A2C84 1800828C */  lw         $v0, 0x18($a0)
    /* 93488 800A2C88 00000000 */  nop
    /* 9348C 800A2C8C 0C004010 */  beqz       $v0, .L800A2CC0
    /* 93490 800A2C90 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 93494 800A2C94 1280023C */  lui        $v0, %hi(D_8011A268)
    /* 93498 800A2C98 68A24284 */  lh         $v0, %lo(D_8011A268)($v0)
    /* 9349C 800A2C9C 00000000 */  nop
    /* 934A0 800A2CA0 05004004 */  bltz       $v0, .L800A2CB8
    /* 934A4 800A2CA4 21280000 */   addu      $a1, $zero, $zero
    /* 934A8 800A2CA8 348B020C */  jal        func_800A2CD0
    /* 934AC 800A2CAC 21300000 */   addu      $a2, $zero, $zero
    /* 934B0 800A2CB0 308B0208 */  j          .L800A2CC0
    /* 934B4 800A2CB4 00000000 */   nop
  .L800A2CB8:
    /* 934B8 800A2CB8 348B020C */  jal        func_800A2CD0
    /* 934BC 800A2CBC 07000624 */   addiu     $a2, $zero, 0x7
  .L800A2CC0:
    /* 934C0 800A2CC0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 934C4 800A2CC4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 934C8 800A2CC8 0800E003 */  jr         $ra
    /* 934CC 800A2CCC 00000000 */   nop
endlabel func_800A2C7C
