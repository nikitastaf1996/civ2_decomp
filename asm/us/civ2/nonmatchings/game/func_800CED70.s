.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CED70, 0x24

glabel func_800CED70
    /* BF570 800CED70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BF574 800CED74 1000BFAF */  sw         $ra, 0x10($sp)
    /* BF578 800CED78 453B030C */  jal        func_800CED14
    /* BF57C 800CED7C 00000000 */   nop
    /* BF580 800CED80 01004224 */  addiu      $v0, $v0, 0x1
    /* BF584 800CED84 1000BF8F */  lw         $ra, 0x10($sp)
    /* BF588 800CED88 43100200 */  sra        $v0, $v0, 1
    /* BF58C 800CED8C 0800E003 */  jr         $ra
    /* BF590 800CED90 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800CED70
