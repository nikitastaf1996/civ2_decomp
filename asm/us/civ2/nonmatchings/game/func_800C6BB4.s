.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6BB4, 0x28

glabel func_800C6BB4
    /* B73B4 800C6BB4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B73B8 800C6BB8 1000BFAF */  sw         $ra, 0x10($sp)
    /* B73BC 800C6BBC 1680053C */  lui        $a1, %hi(D_801590B8)
    /* B73C0 800C6BC0 B890A524 */  addiu      $a1, $a1, %lo(D_801590B8)
    /* B73C4 800C6BC4 9987030C */  jal        func_800E1E64
    /* B73C8 800C6BC8 00000000 */   nop
    /* B73CC 800C6BCC 1000BF8F */  lw         $ra, 0x10($sp)
    /* B73D0 800C6BD0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B73D4 800C6BD4 0800E003 */  jr         $ra
    /* B73D8 800C6BD8 00000000 */   nop
endlabel func_800C6BB4
