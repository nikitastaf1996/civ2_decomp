.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DD8E4, 0x24

glabel func_800DD8E4
    /* CE0E4 800DD8E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CE0E8 800DD8E8 1000BFAF */  sw         $ra, 0x10($sp)
    /* CE0EC 800DD8EC 2776030C */  jal        func_800DD89C
    /* CE0F0 800DD8F0 00000000 */   nop
    /* CE0F4 800DD8F4 05004228 */  slti       $v0, $v0, 0x5
    /* CE0F8 800DD8F8 1000BF8F */  lw         $ra, 0x10($sp)
    /* CE0FC 800DD8FC 01004238 */  xori       $v0, $v0, 0x1
    /* CE100 800DD900 0800E003 */  jr         $ra
    /* CE104 800DD904 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800DD8E4
