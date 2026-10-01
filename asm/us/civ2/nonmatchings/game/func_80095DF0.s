.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095DF0, 0x2C

glabel func_80095DF0
    /* 865F0 80095DF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 865F4 80095DF4 03008014 */  bnez       $a0, .L80095E04
    /* 865F8 80095DF8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 865FC 80095DFC 83570208 */  j          .L80095E0C
    /* 86600 80095E00 21100000 */   addu      $v0, $zero, $zero
  .L80095E04:
    /* 86604 80095E04 331C040C */  jal        func_801070CC
    /* 86608 80095E08 21280000 */   addu      $a1, $zero, $zero
  .L80095E0C:
    /* 8660C 80095E0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 86610 80095E10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 86614 80095E14 0800E003 */  jr         $ra
    /* 86618 80095E18 00000000 */   nop
endlabel func_80095DF0
