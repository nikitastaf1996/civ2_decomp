.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094AA4, 0x24

glabel func_80094AA4
    /* 852A4 80094AA4 1000A297 */  lhu        $v0, 0x10($sp)
    /* 852A8 80094AA8 010080A0 */  sb         $zero, 0x1($a0)
    /* 852AC 80094AAC 000085A0 */  sb         $a1, 0x0($a0)
    /* 852B0 80094AB0 040086AC */  sw         $a2, 0x4($a0)
    /* 852B4 80094AB4 080087AC */  sw         $a3, 0x8($a0)
    /* 852B8 80094AB8 0C0080A4 */  sh         $zero, 0xC($a0)
    /* 852BC 80094ABC 100082A4 */  sh         $v0, 0x10($a0)
    /* 852C0 80094AC0 0800E003 */  jr         $ra
    /* 852C4 80094AC4 0E0082A4 */   sh        $v0, 0xE($a0)
endlabel func_80094AA4
