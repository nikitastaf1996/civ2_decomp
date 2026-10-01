.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C4FAC, 0x38

glabel func_800C4FAC
    /* B57AC 800C4FAC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B57B0 800C4FB0 1280033C */  lui        $v1, %hi(D_801210B8)
    /* B57B4 800C4FB4 B8106324 */  addiu      $v1, $v1, %lo(D_801210B8)
    /* B57B8 800C4FB8 1000BFAF */  sw         $ra, 0x10($sp)
    /* B57BC 800C4FBC 0000628C */  lw         $v0, 0x0($v1)
    /* B57C0 800C4FC0 00000000 */  nop
    /* B57C4 800C4FC4 03004414 */  bne        $v0, $a0, .L800C4FD4
    /* B57C8 800C4FC8 00000000 */   nop
    /* B57CC 800C4FCC E5DE030C */  jal        func_800F7B94
    /* B57D0 800C4FD0 CCFC6424 */   addiu     $a0, $v1, -0x334
  .L800C4FD4:
    /* B57D4 800C4FD4 1000BF8F */  lw         $ra, 0x10($sp)
    /* B57D8 800C4FD8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B57DC 800C4FDC 0800E003 */  jr         $ra
    /* B57E0 800C4FE0 00000000 */   nop
endlabel func_800C4FAC
