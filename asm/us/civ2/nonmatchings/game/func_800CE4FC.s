.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CE4FC, 0x34

glabel func_800CE4FC
    /* BECFC 800CE4FC B80C838F */  lw         $v1, %gp_rel(D_80159190)($gp)
    /* BED00 800CE500 00000000 */  nop
    /* BED04 800CE504 F0036284 */  lh         $v0, 0x3F0($v1)
    /* BED08 800CE508 00000000 */  nop
    /* BED0C 800CE50C 03004010 */  beqz       $v0, .L800CE51C
    /* BED10 800CE510 F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* BED14 800CE514 49390308 */  j          .L800CE524
    /* BED18 800CE518 F00360A4 */   sh        $zero, 0x3F0($v1)
  .L800CE51C:
    /* BED1C 800CE51C 01000224 */  addiu      $v0, $zero, 0x1
    /* BED20 800CE520 F00362A4 */  sh         $v0, 0x3F0($v1)
  .L800CE524:
    /* BED24 800CE524 0800BD27 */  addiu      $sp, $sp, 0x8
    /* BED28 800CE528 0800E003 */  jr         $ra
    /* BED2C 800CE52C 00000000 */   nop
endlabel func_800CE4FC
