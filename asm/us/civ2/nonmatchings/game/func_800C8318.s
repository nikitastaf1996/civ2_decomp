.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C8318, 0x28

glabel func_800C8318
    /* B8B18 800C8318 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B8B1C 800C831C 1000BFAF */  sw         $ra, 0x10($sp)
    /* B8B20 800C8320 1680043C */  lui        $a0, %hi(D_8015EE40)
    /* B8B24 800C8324 40EE8424 */  addiu      $a0, $a0, %lo(D_8015EE40)
    /* B8B28 800C8328 4CE1030C */  jal        func_800F8530
    /* B8B2C 800C832C 02000524 */   addiu     $a1, $zero, 0x2
    /* B8B30 800C8330 1000BF8F */  lw         $ra, 0x10($sp)
    /* B8B34 800C8334 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B8B38 800C8338 0800E003 */  jr         $ra
    /* B8B3C 800C833C 00000000 */   nop
endlabel func_800C8318
