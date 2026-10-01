.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C828, 0x38

glabel func_8001C828
    /* D028 8001C828 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D02C 8001C82C 1000BFAF */  sw         $ra, 0x10($sp)
    /* D030 8001C830 1C6E000C */  jal        func_8001B870
    /* D034 8001C834 00000000 */   nop
    /* D038 8001C838 C86F000C */  jal        func_8001BF20
    /* D03C 8001C83C 00000000 */   nop
    /* D040 8001C840 686E000C */  jal        func_8001B9A0
    /* D044 8001C844 00000000 */   nop
    /* D048 8001C848 B670000C */  jal        func_8001C2D8
    /* D04C 8001C84C 00000000 */   nop
    /* D050 8001C850 1000BF8F */  lw         $ra, 0x10($sp)
    /* D054 8001C854 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D058 8001C858 0800E003 */  jr         $ra
    /* D05C 8001C85C 00000000 */   nop
endlabel func_8001C828
