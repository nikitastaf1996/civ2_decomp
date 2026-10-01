.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B648, 0x78

glabel func_8001B648
    /* BE48 8001B648 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BE4C 8001B64C 1000BFAF */  sw         $ra, 0x10($sp)
    /* BE50 8001B650 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* BE54 8001B654 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* BE58 8001B658 826D000C */  jal        func_8001B608
    /* BE5C 8001B65C 00FC0534 */   ori       $a1, $zero, 0xFC00
    /* BE60 8001B660 1780043C */  lui        $a0, %hi(D_80172E88)
    /* BE64 8001B664 882E8424 */  addiu      $a0, $a0, %lo(D_80172E88)
    /* BE68 8001B668 826D000C */  jal        func_8001B608
    /* BE6C 8001B66C 90000524 */   addiu     $a1, $zero, 0x90
    /* BE70 8001B670 0D80043C */  lui        $a0, %hi(D_800CC168)
    /* BE74 8001B674 68C18424 */  addiu      $a0, $a0, %lo(D_800CC168)
    /* BE78 8001B678 826D000C */  jal        func_8001B608
    /* BE7C 8001B67C 40000524 */   addiu     $a1, $zero, 0x40
    /* BE80 8001B680 0D80043C */  lui        $a0, %hi(D_800CCDA8)
    /* BE84 8001B684 A8CD8424 */  addiu      $a0, $a0, %lo(D_800CCDA8)
    /* BE88 8001B688 826D000C */  jal        func_8001B608
    /* BE8C 8001B68C 40000524 */   addiu     $a1, $zero, 0x40
    /* BE90 8001B690 0F80043C */  lui        $a0, %hi(D_800F4DE8)
    /* BE94 8001B694 E84D8424 */  addiu      $a0, $a0, %lo(D_800F4DE8)
    /* BE98 8001B698 826D000C */  jal        func_8001B608
    /* BE9C 8001B69C 00050524 */   addiu     $a1, $zero, 0x500
    /* BEA0 8001B6A0 1280043C */  lui        $a0, %hi(D_801252E8)
    /* BEA4 8001B6A4 E8528424 */  addiu      $a0, $a0, %lo(D_801252E8)
    /* BEA8 8001B6A8 826D000C */  jal        func_8001B608
    /* BEAC 8001B6AC 80000524 */   addiu     $a1, $zero, 0x80
    /* BEB0 8001B6B0 1000BF8F */  lw         $ra, 0x10($sp)
    /* BEB4 8001B6B4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BEB8 8001B6B8 0800E003 */  jr         $ra
    /* BEBC 8001B6BC 00000000 */   nop
endlabel func_8001B648
