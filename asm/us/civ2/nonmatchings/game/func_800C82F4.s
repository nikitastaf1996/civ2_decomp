.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C82F4, 0x24

glabel func_800C82F4
    /* B8AF4 800C82F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B8AF8 800C82F8 1000BFAF */  sw         $ra, 0x10($sp)
    /* B8AFC 800C82FC 540C848F */  lw         $a0, %gp_rel(D_8015912C)($gp)
    /* B8B00 800C8300 31DE030C */  jal        func_800F78C4
    /* B8B04 800C8304 00000000 */   nop
    /* B8B08 800C8308 1000BF8F */  lw         $ra, 0x10($sp)
    /* B8B0C 800C830C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B8B10 800C8310 0800E003 */  jr         $ra
    /* B8B14 800C8314 00000000 */   nop
endlabel func_800C82F4
