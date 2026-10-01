.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B4768, 0x3C

glabel func_800B4768
    /* A4F68 800B4768 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A4F6C 800B476C 1000BFAF */  sw         $ra, 0x10($sp)
    /* A4F70 800B4770 680A828F */  lw         $v0, %gp_rel(D_80158F40)($gp)
    /* A4F74 800B4774 00000000 */  nop
    /* A4F78 800B4778 3000438C */  lw         $v1, 0x30($v0)
    /* A4F7C 800B477C 00000000 */  nop
    /* A4F80 800B4780 00046334 */  ori        $v1, $v1, 0x400
    /* A4F84 800B4784 300043AC */  sw         $v1, 0x30($v0)
    /* A4F88 800B4788 0000448C */  lw         $a0, 0x0($v0)
    /* A4F8C 800B478C 31DE030C */  jal        func_800F78C4
    /* A4F90 800B4790 2C008424 */   addiu     $a0, $a0, 0x2C
    /* A4F94 800B4794 1000BF8F */  lw         $ra, 0x10($sp)
    /* A4F98 800B4798 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A4F9C 800B479C 0800E003 */  jr         $ra
    /* A4FA0 800B47A0 00000000 */   nop
endlabel func_800B4768
