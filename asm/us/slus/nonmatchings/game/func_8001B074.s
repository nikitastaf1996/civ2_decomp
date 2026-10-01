.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B074, 0x74

glabel func_8001B074
    /* B874 8001B074 C0180600 */  sll        $v1, $a2, 3
    /* B878 8001B078 21186600 */  addu       $v1, $v1, $a2
    /* B87C 8001B07C 80180300 */  sll        $v1, $v1, 2
    /* B880 8001B080 21186400 */  addu       $v1, $v1, $a0
    /* B884 8001B084 0000A294 */  lhu        $v0, 0x0($a1)
    /* B888 8001B088 00000000 */  nop
    /* B88C 8001B08C 03004230 */  andi       $v0, $v0, 0x3
    /* B890 8001B090 00160200 */  sll        $v0, $v0, 24
    /* B894 8001B094 000062AC */  sw         $v0, 0x0($v1)
    /* B898 8001B098 4200A294 */  lhu        $v0, 0x42($a1)
    /* B89C 8001B09C 00000000 */  nop
    /* B8A0 8001B0A0 0C0062A4 */  sh         $v0, 0xC($v1)
    /* B8A4 8001B0A4 0200A294 */  lhu        $v0, 0x2($a1)
    /* B8A8 8001B0A8 00000000 */  nop
    /* B8AC 8001B0AC 100062A4 */  sh         $v0, 0x10($v1)
    /* B8B0 8001B0B0 2200A294 */  lhu        $v0, 0x22($a1)
    /* B8B4 8001B0B4 00000000 */  nop
    /* B8B8 8001B0B8 120062A4 */  sh         $v0, 0x12($v1)
    /* B8BC 8001B0BC 80000224 */  addiu      $v0, $zero, 0x80
    /* B8C0 8001B0C0 140062A0 */  sb         $v0, 0x14($v1)
    /* B8C4 8001B0C4 150062A0 */  sb         $v0, 0x15($v1)
    /* B8C8 8001B0C8 160062A0 */  sb         $v0, 0x16($v1)
    /* B8CC 8001B0CC 180060A4 */  sh         $zero, 0x18($v1)
    /* B8D0 8001B0D0 1A0060A4 */  sh         $zero, 0x1A($v1)
    /* B8D4 8001B0D4 00100224 */  addiu      $v0, $zero, 0x1000
    /* B8D8 8001B0D8 1C0062A4 */  sh         $v0, 0x1C($v1)
    /* B8DC 8001B0DC 1E0062A4 */  sh         $v0, 0x1E($v1)
    /* B8E0 8001B0E0 0800E003 */  jr         $ra
    /* B8E4 8001B0E4 200060AC */   sw        $zero, 0x20($v1)
endlabel func_8001B074
