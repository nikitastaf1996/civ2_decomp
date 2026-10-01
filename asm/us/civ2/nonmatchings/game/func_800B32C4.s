.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B32C4, 0x30

glabel func_800B32C4
    /* A3AC4 800B32C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A3AC8 800B32C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* A3ACC 800B32CC 4400828C */  lw         $v0, 0x44($a0)
    /* A3AD0 800B32D0 00000000 */  nop
    /* A3AD4 800B32D4 1800A200 */  mult       $a1, $v0
    /* A3AD8 800B32D8 12280000 */  mflo       $a1
    /* A3ADC 800B32DC 8BCC020C */  jal        func_800B322C
    /* A3AE0 800B32E0 00000000 */   nop
    /* A3AE4 800B32E4 1000BF8F */  lw         $ra, 0x10($sp)
    /* A3AE8 800B32E8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A3AEC 800B32EC 0800E003 */  jr         $ra
    /* A3AF0 800B32F0 00000000 */   nop
endlabel func_800B32C4
