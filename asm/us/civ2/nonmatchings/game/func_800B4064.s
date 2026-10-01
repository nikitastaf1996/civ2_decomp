.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B4064, 0x2C

glabel func_800B4064
    /* A4864 800B4064 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A4868 800B4068 1800BFAF */  sw         $ra, 0x18($sp)
    /* A486C 800B406C 3000A28F */  lw         $v0, 0x30($sp)
    /* A4870 800B4070 5C01838C */  lw         $v1, 0x15C($a0)
    /* A4874 800B4074 1000A2AF */  sw         $v0, 0x10($sp)
    /* A4878 800B4078 F9CF020C */  jal        func_800B3FE4
    /* A487C 800B407C 2130C300 */   addu      $a2, $a2, $v1
    /* A4880 800B4080 1800BF8F */  lw         $ra, 0x18($sp)
    /* A4884 800B4084 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A4888 800B4088 0800E003 */  jr         $ra
    /* A488C 800B408C 00000000 */   nop
endlabel func_800B4064
