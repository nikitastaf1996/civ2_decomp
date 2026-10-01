.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B0E8, 0x3C

glabel func_8001B0E8
    /* B8E8 8001B0E8 1000A397 */  lhu        $v1, 0x10($sp)
    /* B8EC 8001B0EC 1400A897 */  lhu        $t0, 0x14($sp)
    /* B8F0 8001B0F0 1800A993 */  lbu        $t1, 0x18($sp)
    /* B8F4 8001B0F4 1C00AA93 */  lbu        $t2, 0x1C($sp)
    /* B8F8 8001B0F8 C0100500 */  sll        $v0, $a1, 3
    /* B8FC 8001B0FC 21104500 */  addu       $v0, $v0, $a1
    /* B900 8001B100 80100200 */  sll        $v0, $v0, 2
    /* B904 8001B104 21104400 */  addu       $v0, $v0, $a0
    /* B908 8001B108 040046A4 */  sh         $a2, 0x4($v0)
    /* B90C 8001B10C 060047A4 */  sh         $a3, 0x6($v0)
    /* B910 8001B110 080043A4 */  sh         $v1, 0x8($v0)
    /* B914 8001B114 0A0048A4 */  sh         $t0, 0xA($v0)
    /* B918 8001B118 0E0049A0 */  sb         $t1, 0xE($v0)
    /* B91C 8001B11C 0800E003 */  jr         $ra
    /* B920 8001B120 0F004AA0 */   sb        $t2, 0xF($v0)
endlabel func_8001B0E8
