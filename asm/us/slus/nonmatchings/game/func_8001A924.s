.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A924, 0x134

glabel func_8001A924
    /* B124 8001A924 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* B128 8001A928 2000BFAF */  sw         $ra, 0x20($sp)
    /* B12C 8001A92C A7B3000C */  jal        ResetCallback
    /* B130 8001A930 00000000 */   nop
    /* B134 8001A934 4BB9000C */  jal        CdInit
    /* B138 8001A938 00000000 */   nop
    /* B13C 8001A93C BDB9000C */  jal        CdSetDebug
    /* B140 8001A940 21200000 */   addu      $a0, $zero, $zero
    /* B144 8001A944 0C80043C */  lui        $a0, %hi(D_800C5598)
    /* B148 8001A948 98558424 */  addiu      $a0, $a0, %lo(D_800C5598)
    /* B14C 8001A94C 826D000C */  jal        func_8001B608
    /* B150 8001A950 88000524 */   addiu     $a1, $zero, 0x88
    /* B154 8001A954 0C80043C */  lui        $a0, %hi(D_800C5598)
    /* B158 8001A958 98558424 */  addiu      $a0, $a0, %lo(D_800C5598)
    /* B15C 8001A95C 22000524 */  addiu      $a1, $zero, 0x22
    /* B160 8001A960 22008624 */  addiu      $a2, $a0, 0x22
    /* B164 8001A964 12CA000C */  jal        InitPAD
    /* B168 8001A968 22000724 */   addiu     $a3, $zero, 0x22
    /* B16C 8001A96C 0C80033C */  lui        $v1, %hi(D_800C55DC)
    /* B170 8001A970 DC556324 */  addiu      $v1, $v1, %lo(D_800C55DC)
    /* B174 8001A974 FF000224 */  addiu      $v0, $zero, 0xFF
    /* B178 8001A978 220062A0 */  sb         $v0, 0x22($v1)
    /* B17C 8001A97C 36CA000C */  jal        StartPAD
    /* B180 8001A980 000062A0 */   sb        $v0, 0x0($v1)
    /* B184 8001A984 5BCE000C */  jal        ResetGraph
    /* B188 8001A988 21200000 */   addu      $a0, $zero, $zero
    /* B18C 8001A98C B8CE000C */  jal        SetGraphDebug
    /* B190 8001A990 21200000 */   addu      $a0, $zero, $zero
    /* B194 8001A994 95B2000C */  jal        InitGeom
    /* B198 8001A998 00000000 */   nop
    /* B19C 8001A99C A0000424 */  addiu      $a0, $zero, 0xA0
    /* B1A0 8001A9A0 B7B2000C */  jal        SetGeomOffset
    /* B1A4 8001A9A4 78000524 */   addiu     $a1, $zero, 0x78
    /* B1A8 8001A9A8 BFB2000C */  jal        func_8002CAFC
    /* B1AC 8001A9AC 00040424 */   addiu     $a0, $zero, 0x400
    /* B1B0 8001A9B0 1000A0AF */  sw         $zero, 0x10($sp)
    /* B1B4 8001A9B4 40010424 */  addiu      $a0, $zero, 0x140
    /* B1B8 8001A9B8 F0000524 */  addiu      $a1, $zero, 0xF0
    /* B1BC 8001A9BC 04000624 */  addiu      $a2, $zero, 0x4
    /* B1C0 8001A9C0 D3E0000C */  jal        GsInitGraph
    /* B1C4 8001A9C4 21380000 */   addu      $a3, $zero, $zero
    /* B1C8 8001A9C8 21200000 */  addu       $a0, $zero, $zero
    /* B1CC 8001A9CC 21280000 */  addu       $a1, $zero, $zero
    /* B1D0 8001A9D0 40010624 */  addiu      $a2, $zero, 0x140
    /* B1D4 8001A9D4 D3E2000C */  jal        GsDefDispBuff
    /* B1D8 8001A9D8 21380000 */   addu      $a3, $zero, $zero
    /* B1DC 8001A9DC 0D80033C */  lui        $v1, %hi(D_800CC1F8)
    /* B1E0 8001A9E0 F8C16324 */  addiu      $v1, $v1, %lo(D_800CC1F8)
    /* B1E4 8001A9E4 0B000424 */  addiu      $a0, $zero, 0xB
    /* B1E8 8001A9E8 000064AC */  sw         $a0, 0x0($v1)
    /* B1EC 8001A9EC 1780023C */  lui        $v0, %hi(D_80173740)
    /* B1F0 8001A9F0 40374224 */  addiu      $v0, $v0, %lo(D_80173740)
    /* B1F4 8001A9F4 040062AC */  sw         $v0, 0x4($v1)
    /* B1F8 8001A9F8 140064AC */  sw         $a0, 0x14($v1)
    /* B1FC 8001A9FC 00204224 */  addiu      $v0, $v0, 0x2000
    /* B200 8001AA00 180062AC */  sw         $v0, 0x18($v1)
    /* B204 8001AA04 0580013C */  lui        $at, %hi(D_80056530)
    /* B208 8001AA08 306520AC */  sw         $zero, %lo(D_80056530)($at)
    /* B20C 8001AA0C 0580013C */  lui        $at, %hi(D_80056538)
    /* B210 8001AA10 386520AC */  sw         $zero, %lo(D_80056538)($at)
    /* B214 8001AA14 21200000 */  addu       $a0, $zero, $zero
    /* B218 8001AA18 CBE2000C */  jal        GsSetOrign
    /* B21C 8001AA1C 21280000 */   addu      $a1, $zero, $zero
    /* B220 8001AA20 1800A0A7 */  sh         $zero, 0x18($sp)
    /* B224 8001AA24 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* B228 8001AA28 40010224 */  addiu      $v0, $zero, 0x140
    /* B22C 8001AA2C 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* B230 8001AA30 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B234 8001AA34 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* B238 8001AA38 8FE2000C */  jal        GsSetClip2D
    /* B23C 8001AA3C 1800A427 */   addiu     $a0, $sp, 0x18
    /* B240 8001AA40 6FE2000C */  jal        GsSetDrawBuffClip
    /* B244 8001AA44 00000000 */   nop
    /* B248 8001AA48 2000BF8F */  lw         $ra, 0x20($sp)
    /* B24C 8001AA4C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* B250 8001AA50 0800E003 */  jr         $ra
    /* B254 8001AA54 00000000 */   nop
endlabel func_8001A924
