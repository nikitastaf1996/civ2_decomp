.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C9EC, 0x110

glabel func_8001C9EC
    /* D1EC 8001C9EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D1F0 8001C9F0 1400BFAF */  sw         $ra, 0x14($sp)
    /* D1F4 8001C9F4 27E2000C */  jal        GsGetActiveBuff
    /* D1F8 8001C9F8 1000B0AF */   sw        $s0, 0x10($sp)
    /* D1FC 8001C9FC 0580013C */  lui        $at, %hi(D_80056524)
    /* D200 8001CA00 246522AC */  sw         $v0, %lo(D_80056524)($at)
    /* D204 8001CA04 80200200 */  sll        $a0, $v0, 2
    /* D208 8001CA08 21208200 */  addu       $a0, $a0, $v0
    /* D20C 8001CA0C 40230400 */  sll        $a0, $a0, 13
    /* D210 8001CA10 1680023C */  lui        $v0, %hi(D_8015EE88)
    /* D214 8001CA14 88EE4224 */  addiu      $v0, $v0, %lo(D_8015EE88)
    /* D218 8001CA18 6FE6000C */  jal        func_800399BC
    /* D21C 8001CA1C 21208200 */   addu      $a0, $a0, $v0
    /* D220 8001CA20 0580023C */  lui        $v0, %hi(D_80056524)
    /* D224 8001CA24 2465428C */  lw         $v0, %lo(D_80056524)($v0)
    /* D228 8001CA28 00000000 */  nop
    /* D22C 8001CA2C 80300200 */  sll        $a2, $v0, 2
    /* D230 8001CA30 2130C200 */  addu       $a2, $a2, $v0
    /* D234 8001CA34 80300600 */  sll        $a2, $a2, 2
    /* D238 8001CA38 0D80103C */  lui        $s0, %hi(D_800CC1F8)
    /* D23C 8001CA3C F8C11026 */  addiu      $s0, $s0, %lo(D_800CC1F8)
    /* D240 8001CA40 21200000 */  addu       $a0, $zero, $zero
    /* D244 8001CA44 21280000 */  addu       $a1, $zero, $zero
    /* D248 8001CA48 B3E4000C */  jal        GsClearOt
    /* D24C 8001CA4C 2130D000 */   addu      $a2, $a2, $s0
    /* D250 8001CA50 1872000C */  jal        func_8001C860
    /* D254 8001CA54 00000000 */   nop
    /* D258 8001CA58 3ACF000C */  jal        DrawSync
    /* D25C 8001CA5C 21200000 */   addu      $a0, $zero, $zero
    /* D260 8001CA60 23B3000C */  jal        VSync
    /* D264 8001CA64 21200000 */   addu      $a0, $zero, $zero
    /* D268 8001CA68 5BCE000C */  jal        ResetGraph
    /* D26C 8001CA6C 01000424 */   addiu     $a0, $zero, 0x1
    /* D270 8001CA70 0580043C */  lui        $a0, %hi(D_80056530)
    /* D274 8001CA74 3065848C */  lw         $a0, %lo(D_80056530)($a0)
    /* D278 8001CA78 0580053C */  lui        $a1, %hi(D_80056538)
    /* D27C 8001CA7C 3865A58C */  lw         $a1, %lo(D_80056538)($a1)
    /* D280 8001CA80 CBE2000C */  jal        GsSetOrign
    /* D284 8001CA84 00000000 */   nop
    /* D288 8001CA88 9FE2000C */  jal        GsSwapDispBuff
    /* D28C 8001CA8C 00000000 */   nop
    /* D290 8001CA90 0580023C */  lui        $v0, %hi(D_80056524)
    /* D294 8001CA94 2465428C */  lw         $v0, %lo(D_80056524)($v0)
    /* D298 8001CA98 00000000 */  nop
    /* D29C 8001CA9C 80380200 */  sll        $a3, $v0, 2
    /* D2A0 8001CAA0 2138E200 */  addu       $a3, $a3, $v0
    /* D2A4 8001CAA4 80380700 */  sll        $a3, $a3, 2
    /* D2A8 8001CAA8 0580043C */  lui        $a0, %hi(D_8005654A)
    /* D2AC 8001CAAC 4A658490 */  lbu        $a0, %lo(D_8005654A)($a0)
    /* D2B0 8001CAB0 0580053C */  lui        $a1, %hi(D_80056549)
    /* D2B4 8001CAB4 4965A590 */  lbu        $a1, %lo(D_80056549)($a1)
    /* D2B8 8001CAB8 0580063C */  lui        $a2, %hi(D_80056548)
    /* D2BC 8001CABC 4865C690 */  lbu        $a2, %lo(D_80056548)($a2)
    /* D2C0 8001CAC0 D9E1000C */  jal        GsSortClear
    /* D2C4 8001CAC4 2138F000 */   addu      $a3, $a3, $s0
    /* D2C8 8001CAC8 0580023C */  lui        $v0, %hi(D_80056524)
    /* D2CC 8001CACC 2465428C */  lw         $v0, %lo(D_80056524)($v0)
    /* D2D0 8001CAD0 00000000 */  nop
    /* D2D4 8001CAD4 80200200 */  sll        $a0, $v0, 2
    /* D2D8 8001CAD8 21208200 */  addu       $a0, $a0, $v0
    /* D2DC 8001CADC 80200400 */  sll        $a0, $a0, 2
    /* D2E0 8001CAE0 A7E4000C */  jal        GsDrawOt
    /* D2E4 8001CAE4 21209000 */   addu      $a0, $a0, $s0
    /* D2E8 8001CAE8 1400BF8F */  lw         $ra, 0x14($sp)
    /* D2EC 8001CAEC 1000B08F */  lw         $s0, 0x10($sp)
    /* D2F0 8001CAF0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D2F4 8001CAF4 0800E003 */  jr         $ra
    /* D2F8 8001CAF8 00000000 */   nop
endlabel func_8001C9EC
