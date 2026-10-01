.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B870, 0x28

glabel func_8001B870
    /* C070 8001B870 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C074 8001B874 1000BFAF */  sw         $ra, 0x10($sp)
    /* C078 8001B878 E703010C */  jal        SpuInit
    /* C07C 8001B87C 00000000 */   nop
    /* C080 8001B880 7703010C */  jal        SsUtSetReverbType
    /* C084 8001B884 21200000 */   addu      $a0, $zero, $zero
    /* C088 8001B888 1000BF8F */  lw         $ra, 0x10($sp)
    /* C08C 8001B88C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C090 8001B890 0800E003 */  jr         $ra
    /* C094 8001B894 00000000 */   nop
endlabel func_8001B870
