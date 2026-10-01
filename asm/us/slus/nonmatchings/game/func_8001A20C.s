.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A20C, 0x90

glabel func_8001A20C
    /* AA0C 8001A20C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* AA10 8001A210 1800BFAF */  sw         $ra, 0x18($sp)
    /* AA14 8001A214 6E68000C */  jal        func_8001A1B8
    /* AA18 8001A218 00000000 */   nop
    /* AA1C 8001A21C 1000A0AF */  sw         $zero, 0x10($sp)
    /* AA20 8001A220 40010424 */  addiu      $a0, $zero, 0x140
    /* AA24 8001A224 F0000524 */  addiu      $a1, $zero, 0xF0
    /* AA28 8001A228 04000624 */  addiu      $a2, $zero, 0x4
    /* AA2C 8001A22C 37E1000C */  jal        GsInitGraph2
    /* AA30 8001A230 21380000 */   addu      $a3, $zero, $zero
    /* AA34 8001A234 21200000 */  addu       $a0, $zero, $zero
    /* AA38 8001A238 21280000 */  addu       $a1, $zero, $zero
    /* AA3C 8001A23C 40010624 */  addiu      $a2, $zero, 0x140
    /* AA40 8001A240 73E6000C */  jal        GsDefDispBuff2
    /* AA44 8001A244 21380000 */   addu      $a3, $zero, $zero
    /* AA48 8001A248 0D80023C */  lui        $v0, %hi(D_800CC1F8)
    /* AA4C 8001A24C F8C14224 */  addiu      $v0, $v0, %lo(D_800CC1F8)
    /* AA50 8001A250 0B000424 */  addiu      $a0, $zero, 0xB
    /* AA54 8001A254 000044AC */  sw         $a0, 0x0($v0)
    /* AA58 8001A258 1780033C */  lui        $v1, %hi(D_80173740)
    /* AA5C 8001A25C 40376324 */  addiu      $v1, $v1, %lo(D_80173740)
    /* AA60 8001A260 040043AC */  sw         $v1, 0x4($v0)
    /* AA64 8001A264 140044AC */  sw         $a0, 0x14($v0)
    /* AA68 8001A268 00206324 */  addiu      $v1, $v1, 0x2000
    /* AA6C 8001A26C 180043AC */  sw         $v1, 0x18($v0)
    /* AA70 8001A270 0580013C */  lui        $at, %hi(D_80056530)
    /* AA74 8001A274 306520AC */  sw         $zero, %lo(D_80056530)($at)
    /* AA78 8001A278 0580013C */  lui        $at, %hi(D_80056538)
    /* AA7C 8001A27C 386520AC */  sw         $zero, %lo(D_80056538)($at)
    /* AA80 8001A280 21200000 */  addu       $a0, $zero, $zero
    /* AA84 8001A284 CBE2000C */  jal        GsSetOrign
    /* AA88 8001A288 21280000 */   addu      $a1, $zero, $zero
    /* AA8C 8001A28C 1800BF8F */  lw         $ra, 0x18($sp)
    /* AA90 8001A290 2000BD27 */  addiu      $sp, $sp, 0x20
    /* AA94 8001A294 0800E003 */  jr         $ra
    /* AA98 8001A298 00000000 */   nop
endlabel func_8001A20C
