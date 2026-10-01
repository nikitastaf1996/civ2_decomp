.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001BAFC, 0x1C4

glabel func_8001BAFC
    /* C2FC 8001BAFC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C300 8001BB00 2400BFAF */  sw         $ra, 0x24($sp)
    /* C304 8001BB04 2000B4AF */  sw         $s4, 0x20($sp)
    /* C308 8001BB08 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* C30C 8001BB0C 1800B2AF */  sw         $s2, 0x18($sp)
    /* C310 8001BB10 1400B1AF */  sw         $s1, 0x14($sp)
    /* C314 8001BB14 1000B0AF */  sw         $s0, 0x10($sp)
    /* C318 8001BB18 21988000 */  addu       $s3, $a0, $zero
    /* C31C 8001BB1C 1780043C */  lui        $a0, %hi(D_80177748)
    /* C320 8001BB20 48778424 */  addiu      $a0, $a0, %lo(D_80177748)
    /* C324 8001BB24 826D000C */  jal        func_8001B608
    /* C328 8001BB28 10000524 */   addiu     $a1, $zero, 0x10
    /* C32C 8001BB2C 21880000 */  addu       $s1, $zero, $zero
    /* C330 8001BB30 0D80103C */  lui        $s0, %hi(D_800CCDE8)
    /* C334 8001BB34 E8CD1026 */  addiu      $s0, $s0, %lo(D_800CCDE8)
    /* C338 8001BB38 80201100 */  sll        $a0, $s1, 2
  .L8001BB3C:
    /* C33C 8001BB3C 21209100 */  addu       $a0, $a0, $s1
    /* C340 8001BB40 00230400 */  sll        $a0, $a0, 12
    /* C344 8001BB44 21209000 */  addu       $a0, $a0, $s0
    /* C348 8001BB48 826D000C */  jal        func_8001B608
    /* C34C 8001BB4C 00500524 */   addiu     $a1, $zero, 0x5000
    /* C350 8001BB50 01003126 */  addiu      $s1, $s1, 0x1
    /* C354 8001BB54 0800222A */  slti       $v0, $s1, 0x8
    /* C358 8001BB58 F8FF4014 */  bnez       $v0, .L8001BB3C
    /* C35C 8001BB5C 80201100 */   sll       $a0, $s1, 2
    /* C360 8001BB60 33F8000C */  jal        SsStart2
    /* C364 8001BB64 21880000 */   addu      $s1, $zero, $zero
    /* C368 8001BB68 7F000424 */  addiu      $a0, $zero, 0x7F
    /* C36C 8001BB6C 8BF7000C */  jal        SsSetMVol
    /* C370 8001BB70 7F000524 */   addiu     $a1, $zero, 0x7F
    /* C374 8001BB74 0D80143C */  lui        $s4, %hi(D_800CC1C8)
    /* C378 8001BB78 C8C19426 */  addiu      $s4, $s4, %lo(D_800CC1C8)
    /* C37C 8001BB7C 0D80123C */  lui        $s2, %hi(D_800CCDE8)
    /* C380 8001BB80 E8CD5226 */  addiu      $s2, $s2, %lo(D_800CCDE8)
    /* C384 8001BB84 80181100 */  sll        $v1, $s1, 2
  .L8001BB88:
    /* C388 8001BB88 21107400 */  addu       $v0, $v1, $s4
    /* C38C 8001BB8C 0000428C */  lw         $v0, 0x0($v0)
    /* C390 8001BB90 00000000 */  nop
    /* C394 8001BB94 41004010 */  beqz       $v0, .L8001BC9C
    /* C398 8001BB98 21107100 */   addu      $v0, $v1, $s1
    /* C39C 8001BB9C 00130200 */  sll        $v0, $v0, 12
    /* C3A0 8001BBA0 21385200 */  addu       $a3, $v0, $s2
    /* C3A4 8001BBA4 21306002 */  addu       $a2, $s3, $zero
    /* C3A8 8001BBA8 2510C700 */  or         $v0, $a2, $a3
    /* C3AC 8001BBAC 03004230 */  andi       $v0, $v0, 0x3
    /* C3B0 8001BBB0 16004010 */  beqz       $v0, .L8001BC0C
    /* C3B4 8001BBB4 0050C824 */   addiu     $t0, $a2, 0x5000
  .L8001BBB8:
    /* C3B8 8001BBB8 0300C288 */  lwl        $v0, 0x3($a2)
    /* C3BC 8001BBBC 0000C298 */  lwr        $v0, 0x0($a2)
    /* C3C0 8001BBC0 0700C388 */  lwl        $v1, 0x7($a2)
    /* C3C4 8001BBC4 0400C398 */  lwr        $v1, 0x4($a2)
    /* C3C8 8001BBC8 0B00C488 */  lwl        $a0, 0xB($a2)
    /* C3CC 8001BBCC 0800C498 */  lwr        $a0, 0x8($a2)
    /* C3D0 8001BBD0 0F00C588 */  lwl        $a1, 0xF($a2)
    /* C3D4 8001BBD4 0C00C598 */  lwr        $a1, 0xC($a2)
    /* C3D8 8001BBD8 0300E2A8 */  swl        $v0, 0x3($a3)
    /* C3DC 8001BBDC 0000E2B8 */  swr        $v0, 0x0($a3)
    /* C3E0 8001BBE0 0700E3A8 */  swl        $v1, 0x7($a3)
    /* C3E4 8001BBE4 0400E3B8 */  swr        $v1, 0x4($a3)
    /* C3E8 8001BBE8 0B00E4A8 */  swl        $a0, 0xB($a3)
    /* C3EC 8001BBEC 0800E4B8 */  swr        $a0, 0x8($a3)
    /* C3F0 8001BBF0 0F00E5A8 */  swl        $a1, 0xF($a3)
    /* C3F4 8001BBF4 0C00E5B8 */  swr        $a1, 0xC($a3)
    /* C3F8 8001BBF8 1000C624 */  addiu      $a2, $a2, 0x10
    /* C3FC 8001BBFC EEFFC814 */  bne        $a2, $t0, .L8001BBB8
    /* C400 8001BC00 1000E724 */   addiu     $a3, $a3, 0x10
    /* C404 8001BC04 0F6F0008 */  j          .L8001BC3C
    /* C408 8001BC08 80201100 */   sll       $a0, $s1, 2
  .L8001BC0C:
    /* C40C 8001BC0C 0000C28C */  lw         $v0, 0x0($a2)
    /* C410 8001BC10 0400C38C */  lw         $v1, 0x4($a2)
    /* C414 8001BC14 0800C48C */  lw         $a0, 0x8($a2)
    /* C418 8001BC18 0C00C58C */  lw         $a1, 0xC($a2)
    /* C41C 8001BC1C 0000E2AC */  sw         $v0, 0x0($a3)
    /* C420 8001BC20 0400E3AC */  sw         $v1, 0x4($a3)
    /* C424 8001BC24 0800E4AC */  sw         $a0, 0x8($a3)
    /* C428 8001BC28 0C00E5AC */  sw         $a1, 0xC($a3)
    /* C42C 8001BC2C 1000C624 */  addiu      $a2, $a2, 0x10
    /* C430 8001BC30 F6FFC814 */  bne        $a2, $t0, .L8001BC0C
    /* C434 8001BC34 1000E724 */   addiu     $a3, $a3, 0x10
    /* C438 8001BC38 80201100 */  sll        $a0, $s1, 2
  .L8001BC3C:
    /* C43C 8001BC3C 21209100 */  addu       $a0, $a0, $s1
    /* C440 8001BC40 00230400 */  sll        $a0, $a0, 12
    /* C444 8001BC44 1780053C */  lui        $a1, %hi(D_80172F18)
    /* C448 8001BC48 182FA584 */  lh         $a1, %lo(D_80172F18)($a1)
    /* C44C 8001BC4C C3EC000C */  jal        SsSeqOpen
    /* C450 8001BC50 21209200 */   addu      $a0, $a0, $s2
    /* C454 8001BC54 1780033C */  lui        $v1, %hi(D_80177748)
    /* C458 8001BC58 48776324 */  addiu      $v1, $v1, %lo(D_80177748)
    /* C45C 8001BC5C 40801100 */  sll        $s0, $s1, 1
    /* C460 8001BC60 21800302 */  addu       $s0, $s0, $v1
    /* C464 8001BC64 000002A6 */  sh         $v0, 0x0($s0)
    /* C468 8001BC68 00140200 */  sll        $v0, $v0, 16
    /* C46C 8001BC6C 03240200 */  sra        $a0, $v0, 16
    /* C470 8001BC70 6F000524 */  addiu      $a1, $zero, 0x6F
    /* C474 8001BC74 2FFF000C */  jal        SsSeqSetVol
    /* C478 8001BC78 6F000624 */   addiu     $a2, $zero, 0x6F
    /* C47C 8001BC7C 00000486 */  lh         $a0, 0x0($s0)
    /* C480 8001BC80 21280000 */  addu       $a1, $zero, $zero
    /* C484 8001BC84 13F6000C */  jal        SsSeqPlay
    /* C488 8001BC88 01000624 */   addiu     $a2, $zero, 0x1
    /* C48C 8001BC8C 01003126 */  addiu      $s1, $s1, 0x1
    /* C490 8001BC90 0800222A */  slti       $v0, $s1, 0x8
    /* C494 8001BC94 BCFF4014 */  bnez       $v0, .L8001BB88
    /* C498 8001BC98 80181100 */   sll       $v1, $s1, 2
  .L8001BC9C:
    /* C49C 8001BC9C 2400BF8F */  lw         $ra, 0x24($sp)
    /* C4A0 8001BCA0 2000B48F */  lw         $s4, 0x20($sp)
    /* C4A4 8001BCA4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* C4A8 8001BCA8 1800B28F */  lw         $s2, 0x18($sp)
    /* C4AC 8001BCAC 1400B18F */  lw         $s1, 0x14($sp)
    /* C4B0 8001BCB0 1000B08F */  lw         $s0, 0x10($sp)
    /* C4B4 8001BCB4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C4B8 8001BCB8 0800E003 */  jr         $ra
    /* C4BC 8001BCBC 00000000 */   nop
endlabel func_8001BAFC
