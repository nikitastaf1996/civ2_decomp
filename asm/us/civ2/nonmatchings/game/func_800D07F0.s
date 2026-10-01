.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D07F0, 0x24

glabel func_800D07F0
    /* C0FF0 800D07F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C0FF4 800D07F4 1000BFAF */  sw         $ra, 0x10($sp)
    /* C0FF8 800D07F8 28028424 */  addiu      $a0, $a0, 0x228
    /* C0FFC 800D07FC 082C030C */  jal        func_800CB020
    /* C1000 800D0800 02000524 */   addiu     $a1, $zero, 0x2
    /* C1004 800D0804 1000BF8F */  lw         $ra, 0x10($sp)
    /* C1008 800D0808 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C100C 800D080C 0800E003 */  jr         $ra
    /* C1010 800D0810 00000000 */   nop
endlabel func_800D07F0
