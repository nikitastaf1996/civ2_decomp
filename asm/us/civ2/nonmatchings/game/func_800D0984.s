.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D0984, 0x58

glabel func_800D0984
    /* C1184 800D0984 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C1188 800D0988 1800BFAF */  sw         $ra, 0x18($sp)
    /* C118C 800D098C 1400B1AF */  sw         $s1, 0x14($sp)
    /* C1190 800D0990 1000B0AF */  sw         $s0, 0x10($sp)
    /* C1194 800D0994 21808000 */  addu       $s0, $a0, $zero
    /* C1198 800D0998 2188A000 */  addu       $s1, $a1, $zero
    /* C119C 800D099C 0180023C */  lui        $v0, %hi(D_800138BC)
    /* C11A0 800D09A0 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* C11A4 800D09A4 1742030C */  jal        func_800D085C
    /* C11A8 800D09A8 280002AE */   sw        $v0, 0x28($s0)
    /* C11AC 800D09AC 28020426 */  addiu      $a0, $s0, 0x228
    /* C11B0 800D09B0 C32B030C */  jal        func_800CAF0C
    /* C11B4 800D09B4 02000524 */   addiu     $a1, $zero, 0x2
    /* C11B8 800D09B8 21200002 */  addu       $a0, $s0, $zero
    /* C11BC 800D09BC D74A020C */  jal        func_80092B5C
    /* C11C0 800D09C0 21282002 */   addu      $a1, $s1, $zero
    /* C11C4 800D09C4 1800BF8F */  lw         $ra, 0x18($sp)
    /* C11C8 800D09C8 1400B18F */  lw         $s1, 0x14($sp)
    /* C11CC 800D09CC 1000B08F */  lw         $s0, 0x10($sp)
    /* C11D0 800D09D0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C11D4 800D09D4 0800E003 */  jr         $ra
    /* C11D8 800D09D8 00000000 */   nop
endlabel func_800D0984
