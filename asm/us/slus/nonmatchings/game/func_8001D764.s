.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D764, 0x110

glabel func_8001D764
    /* DF64 8001D764 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* DF68 8001D768 1400BFAF */  sw         $ra, 0x14($sp)
    /* DF6C 8001D76C 27E2000C */  jal        GsGetActiveBuff
    /* DF70 8001D770 1000B0AF */   sw        $s0, 0x10($sp)
    /* DF74 8001D774 0580013C */  lui        $at, %hi(D_80056524)
    /* DF78 8001D778 246522AC */  sw         $v0, %lo(D_80056524)($at)
    /* DF7C 8001D77C 80200200 */  sll        $a0, $v0, 2
    /* DF80 8001D780 21208200 */  addu       $a0, $a0, $v0
    /* DF84 8001D784 40230400 */  sll        $a0, $a0, 13
    /* DF88 8001D788 1680023C */  lui        $v0, %hi(D_8015EE88)
    /* DF8C 8001D78C 88EE4224 */  addiu      $v0, $v0, %lo(D_8015EE88)
    /* DF90 8001D790 6FE6000C */  jal        func_800399BC
    /* DF94 8001D794 21208200 */   addu      $a0, $a0, $v0
    /* DF98 8001D798 0580023C */  lui        $v0, %hi(D_80056524)
    /* DF9C 8001D79C 2465428C */  lw         $v0, %lo(D_80056524)($v0)
    /* DFA0 8001D7A0 00000000 */  nop
    /* DFA4 8001D7A4 80300200 */  sll        $a2, $v0, 2
    /* DFA8 8001D7A8 2130C200 */  addu       $a2, $a2, $v0
    /* DFAC 8001D7AC 80300600 */  sll        $a2, $a2, 2
    /* DFB0 8001D7B0 0D80103C */  lui        $s0, %hi(D_800CC1F8)
    /* DFB4 8001D7B4 F8C11026 */  addiu      $s0, $s0, %lo(D_800CC1F8)
    /* DFB8 8001D7B8 21200000 */  addu       $a0, $zero, $zero
    /* DFBC 8001D7BC 21280000 */  addu       $a1, $zero, $zero
    /* DFC0 8001D7C0 B3E4000C */  jal        GsClearOt
    /* DFC4 8001D7C4 2130D000 */   addu      $a2, $a2, $s0
    /* DFC8 8001D7C8 7675000C */  jal        func_8001D5D8
    /* DFCC 8001D7CC 00000000 */   nop
    /* DFD0 8001D7D0 3ACF000C */  jal        DrawSync
    /* DFD4 8001D7D4 21200000 */   addu      $a0, $zero, $zero
    /* DFD8 8001D7D8 23B3000C */  jal        VSync
    /* DFDC 8001D7DC 21200000 */   addu      $a0, $zero, $zero
    /* DFE0 8001D7E0 5BCE000C */  jal        ResetGraph
    /* DFE4 8001D7E4 01000424 */   addiu     $a0, $zero, 0x1
    /* DFE8 8001D7E8 0580043C */  lui        $a0, %hi(D_80056530)
    /* DFEC 8001D7EC 3065848C */  lw         $a0, %lo(D_80056530)($a0)
    /* DFF0 8001D7F0 0580053C */  lui        $a1, %hi(D_80056538)
    /* DFF4 8001D7F4 3865A58C */  lw         $a1, %lo(D_80056538)($a1)
    /* DFF8 8001D7F8 CBE2000C */  jal        GsSetOrign
    /* DFFC 8001D7FC 00000000 */   nop
    /* E000 8001D800 9FE2000C */  jal        GsSwapDispBuff
    /* E004 8001D804 00000000 */   nop
    /* E008 8001D808 0580023C */  lui        $v0, %hi(D_80056524)
    /* E00C 8001D80C 2465428C */  lw         $v0, %lo(D_80056524)($v0)
    /* E010 8001D810 00000000 */  nop
    /* E014 8001D814 80380200 */  sll        $a3, $v0, 2
    /* E018 8001D818 2138E200 */  addu       $a3, $a3, $v0
    /* E01C 8001D81C 80380700 */  sll        $a3, $a3, 2
    /* E020 8001D820 0580043C */  lui        $a0, %hi(D_8005654A)
    /* E024 8001D824 4A658490 */  lbu        $a0, %lo(D_8005654A)($a0)
    /* E028 8001D828 0580053C */  lui        $a1, %hi(D_80056549)
    /* E02C 8001D82C 4965A590 */  lbu        $a1, %lo(D_80056549)($a1)
    /* E030 8001D830 0580063C */  lui        $a2, %hi(D_80056548)
    /* E034 8001D834 4865C690 */  lbu        $a2, %lo(D_80056548)($a2)
    /* E038 8001D838 D9E1000C */  jal        GsSortClear
    /* E03C 8001D83C 2138F000 */   addu      $a3, $a3, $s0
    /* E040 8001D840 0580023C */  lui        $v0, %hi(D_80056524)
    /* E044 8001D844 2465428C */  lw         $v0, %lo(D_80056524)($v0)
    /* E048 8001D848 00000000 */  nop
    /* E04C 8001D84C 80200200 */  sll        $a0, $v0, 2
    /* E050 8001D850 21208200 */  addu       $a0, $a0, $v0
    /* E054 8001D854 80200400 */  sll        $a0, $a0, 2
    /* E058 8001D858 A7E4000C */  jal        GsDrawOt
    /* E05C 8001D85C 21209000 */   addu      $a0, $a0, $s0
    /* E060 8001D860 1400BF8F */  lw         $ra, 0x14($sp)
    /* E064 8001D864 1000B08F */  lw         $s0, 0x10($sp)
    /* E068 8001D868 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E06C 8001D86C 0800E003 */  jr         $ra
    /* E070 8001D870 00000000 */   nop
endlabel func_8001D764
