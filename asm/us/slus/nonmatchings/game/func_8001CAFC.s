.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001CAFC, 0x6C

glabel func_8001CAFC
    /* D2FC 8001CAFC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D300 8001CB00 1400BFAF */  sw         $ra, 0x14($sp)
    /* D304 8001CB04 1000B0AF */  sw         $s0, 0x10($sp)
    /* D308 8001CB08 21808000 */  addu       $s0, $a0, $zero
    /* D30C 8001CB0C 11000012 */  beqz       $s0, .L8001CB54
    /* D310 8001CB10 00000000 */   nop
  .L8001CB14:
    /* D314 8001CB14 7B72000C */  jal        func_8001C9EC
    /* D318 8001CB18 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* D31C 8001CB1C 23B3000C */  jal        VSync
    /* D320 8001CB20 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* D324 8001CB24 0580013C */  lui        $at, %hi(D_80056520)
    /* D328 8001CB28 206522AC */  sw         $v0, %lo(D_80056520)($at)
    /* D32C 8001CB2C 0580023C */  lui        $v0, %hi(D_80056550)
    /* D330 8001CB30 5065428C */  lw         $v0, %lo(D_80056550)($v0)
    /* D334 8001CB34 00000000 */  nop
    /* D338 8001CB38 01004224 */  addiu      $v0, $v0, 0x1
    /* D33C 8001CB3C 0580013C */  lui        $at, %hi(D_80056550)
    /* D340 8001CB40 506522AC */  sw         $v0, %lo(D_80056550)($at)
    /* D344 8001CB44 946C000C */  jal        func_8001B250
    /* D348 8001CB48 00000000 */   nop
    /* D34C 8001CB4C F1FF0016 */  bnez       $s0, .L8001CB14
    /* D350 8001CB50 00000000 */   nop
  .L8001CB54:
    /* D354 8001CB54 1400BF8F */  lw         $ra, 0x14($sp)
    /* D358 8001CB58 1000B08F */  lw         $s0, 0x10($sp)
    /* D35C 8001CB5C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D360 8001CB60 0800E003 */  jr         $ra
    /* D364 8001CB64 00000000 */   nop
endlabel func_8001CAFC
