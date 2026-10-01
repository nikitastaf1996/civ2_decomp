.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B7F0, 0x44

glabel func_8001B7F0
    /* BFF0 8001B7F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BFF4 8001B7F4 1000BFAF */  sw         $ra, 0x10($sp)
    /* BFF8 8001B7F8 40100400 */  sll        $v0, $a0, 1
    /* BFFC 8001B7FC 21104400 */  addu       $v0, $v0, $a0
    /* C000 8001B800 80100200 */  sll        $v0, $v0, 2
    /* C004 8001B804 0180013C */  lui        $at, %hi(D_80016B18)
    /* C008 8001B808 21082200 */  addu       $at, $at, $v0
    /* C00C 8001B80C 186B248C */  lw         $a0, %lo(D_80016B18)($at)
    /* C010 8001B810 0180013C */  lui        $at, %hi(D_80016B1C)
    /* C014 8001B814 21082200 */  addu       $at, $at, $v0
    /* C018 8001B818 1C6B258C */  lw         $a1, %lo(D_80016B1C)($at)
    /* C01C 8001B81C E7FE000C */  jal        SsVoKeyOff
    /* C020 8001B820 00000000 */   nop
    /* C024 8001B824 1000BF8F */  lw         $ra, 0x10($sp)
    /* C028 8001B828 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C02C 8001B82C 0800E003 */  jr         $ra
    /* C030 8001B830 00000000 */   nop
endlabel func_8001B7F0
