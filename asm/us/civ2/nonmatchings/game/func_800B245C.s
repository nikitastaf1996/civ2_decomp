.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B245C, 0x3C

glabel func_800B245C
    /* A2C5C 800B245C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2C60 800B2460 1000BFAF */  sw         $ra, 0x10($sp)
    /* A2C64 800B2464 40100500 */  sll        $v0, $a1, 1
    /* A2C68 800B2468 21104500 */  addu       $v0, $v0, $a1
    /* A2C6C 800B246C 00110200 */  sll        $v0, $v0, 4
    /* A2C70 800B2470 B401838C */  lw         $v1, 0x1B4($a0)
    /* A2C74 800B2474 00000000 */  nop
    /* A2C78 800B2478 21104300 */  addu       $v0, $v0, $v1
    /* A2C7C 800B247C 1400448C */  lw         $a0, 0x14($v0)
    /* A2C80 800B2480 1D5D020C */  jal        func_80097474
    /* A2C84 800B2484 2128C000 */   addu      $a1, $a2, $zero
    /* A2C88 800B2488 1000BF8F */  lw         $ra, 0x10($sp)
    /* A2C8C 800B248C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2C90 800B2490 0800E003 */  jr         $ra
    /* A2C94 800B2494 00000000 */   nop
endlabel func_800B245C
