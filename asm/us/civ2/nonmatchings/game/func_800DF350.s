.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF350, 0x1F4

glabel func_800DF350
    /* CFB50 800DF350 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* CFB54 800DF354 D800BFAF */  sw         $ra, 0xD8($sp)
    /* CFB58 800DF358 D400B1AF */  sw         $s1, 0xD4($sp)
    /* CFB5C 800DF35C D000B0AF */  sw         $s0, 0xD0($sp)
    /* CFB60 800DF360 9800A727 */  addiu      $a3, $sp, 0x98
    /* CFB64 800DF364 0180063C */  lui        $a2, %hi(D_80013234)
    /* CFB68 800DF368 3432C624 */  addiu      $a2, $a2, %lo(D_80013234)
    /* CFB6C 800DF36C 2510E600 */  or         $v0, $a3, $a2
    /* CFB70 800DF370 03004230 */  andi       $v0, $v0, 0x3
    /* CFB74 800DF374 17004010 */  beqz       $v0, .L800DF3D4
    /* CFB78 800DF378 21808000 */   addu      $s0, $a0, $zero
    /* CFB7C 800DF37C 3000C824 */  addiu      $t0, $a2, 0x30
  .L800DF380:
    /* CFB80 800DF380 0300C288 */  lwl        $v0, 0x3($a2)
    /* CFB84 800DF384 0000C298 */  lwr        $v0, 0x0($a2)
    /* CFB88 800DF388 0700C388 */  lwl        $v1, 0x7($a2)
    /* CFB8C 800DF38C 0400C398 */  lwr        $v1, 0x4($a2)
    /* CFB90 800DF390 0B00C488 */  lwl        $a0, 0xB($a2)
    /* CFB94 800DF394 0800C498 */  lwr        $a0, 0x8($a2)
    /* CFB98 800DF398 0F00C588 */  lwl        $a1, 0xF($a2)
    /* CFB9C 800DF39C 0C00C598 */  lwr        $a1, 0xC($a2)
    /* CFBA0 800DF3A0 0300E2A8 */  swl        $v0, 0x3($a3)
    /* CFBA4 800DF3A4 0000E2B8 */  swr        $v0, 0x0($a3)
    /* CFBA8 800DF3A8 0700E3A8 */  swl        $v1, 0x7($a3)
    /* CFBAC 800DF3AC 0400E3B8 */  swr        $v1, 0x4($a3)
    /* CFBB0 800DF3B0 0B00E4A8 */  swl        $a0, 0xB($a3)
    /* CFBB4 800DF3B4 0800E4B8 */  swr        $a0, 0x8($a3)
    /* CFBB8 800DF3B8 0F00E5A8 */  swl        $a1, 0xF($a3)
    /* CFBBC 800DF3BC 0C00E5B8 */  swr        $a1, 0xC($a3)
    /* CFBC0 800DF3C0 1000C624 */  addiu      $a2, $a2, 0x10
    /* CFBC4 800DF3C4 EEFFC814 */  bne        $a2, $t0, .L800DF380
    /* CFBC8 800DF3C8 1000E724 */   addiu     $a3, $a3, 0x10
    /* CFBCC 800DF3CC 017D0308 */  j          .L800DF404
    /* CFBD0 800DF3D0 00000000 */   nop
  .L800DF3D4:
    /* CFBD4 800DF3D4 3000C824 */  addiu      $t0, $a2, 0x30
  .L800DF3D8:
    /* CFBD8 800DF3D8 0000C28C */  lw         $v0, 0x0($a2)
    /* CFBDC 800DF3DC 0400C38C */  lw         $v1, 0x4($a2)
    /* CFBE0 800DF3E0 0800C48C */  lw         $a0, 0x8($a2)
    /* CFBE4 800DF3E4 0C00C58C */  lw         $a1, 0xC($a2)
    /* CFBE8 800DF3E8 0000E2AC */  sw         $v0, 0x0($a3)
    /* CFBEC 800DF3EC 0400E3AC */  sw         $v1, 0x4($a3)
    /* CFBF0 800DF3F0 0800E4AC */  sw         $a0, 0x8($a3)
    /* CFBF4 800DF3F4 0C00E5AC */  sw         $a1, 0xC($a3)
    /* CFBF8 800DF3F8 1000C624 */  addiu      $a2, $a2, 0x10
    /* CFBFC 800DF3FC F6FFC814 */  bne        $a2, $t0, .L800DF3D8
    /* CFC00 800DF400 1000E724 */   addiu     $a3, $a3, 0x10
  .L800DF404:
    /* CFC04 800DF404 0300C288 */  lwl        $v0, 0x3($a2)
    /* CFC08 800DF408 0000C298 */  lwr        $v0, 0x0($a2)
    /* CFC0C 800DF40C 0700C388 */  lwl        $v1, 0x7($a2)
    /* CFC10 800DF410 0400C398 */  lwr        $v1, 0x4($a2)
    /* CFC14 800DF414 0300E2A8 */  swl        $v0, 0x3($a3)
    /* CFC18 800DF418 0000E2B8 */  swr        $v0, 0x0($a3)
    /* CFC1C 800DF41C 0700E3A8 */  swl        $v1, 0x7($a3)
    /* CFC20 800DF420 0400E3B8 */  swr        $v1, 0x4($a3)
    /* CFC24 800DF424 557D030C */  jal        func_800DF554
    /* CFC28 800DF428 21200002 */   addu      $a0, $s0, $zero
    /* CFC2C 800DF42C CB1A030C */  jal        func_800C6B2C
    /* CFC30 800DF430 1800A427 */   addiu     $a0, $sp, 0x18
    /* CFC34 800DF434 1800B127 */  addiu      $s1, $sp, 0x18
    /* CFC38 800DF438 1680053C */  lui        $a1, %hi(D_8015926C)
    /* CFC3C 800DF43C 6C92A524 */  addiu      $a1, $a1, %lo(D_8015926C)
    /* CFC40 800DF440 9987030C */  jal        func_800E1E64
    /* CFC44 800DF444 21202002 */   addu      $a0, $s1, $zero
    /* CFC48 800DF448 B0030286 */  lh         $v0, 0x3B0($s0)
    /* CFC4C 800DF44C 00000000 */  nop
    /* CFC50 800DF450 0A004228 */  slti       $v0, $v0, 0xA
    /* CFC54 800DF454 03004010 */  beqz       $v0, .L800DF464
    /* CFC58 800DF458 21202002 */   addu      $a0, $s1, $zero
    /* CFC5C 800DF45C 9C1B030C */  jal        func_800C6E70
    /* CFC60 800DF460 21280000 */   addu      $a1, $zero, $zero
  .L800DF464:
    /* CFC64 800DF464 B0030586 */  lh         $a1, 0x3B0($s0)
    /* CFC68 800DF468 9C1B030C */  jal        func_800C6E70
    /* CFC6C 800DF46C 1800A427 */   addiu     $a0, $sp, 0x18
    /* CFC70 800DF470 1680053C */  lui        $a1, %hi(D_80159274)
    /* CFC74 800DF474 7492A524 */  addiu      $a1, $a1, %lo(D_80159274)
    /* CFC78 800DF478 801B030C */  jal        func_800C6E00
    /* CFC7C 800DF47C 1800A427 */   addiu     $a0, $sp, 0x18
    /* CFC80 800DF480 0E80023C */  lui        $v0, %hi(func_800DF588)
    /* CFC84 800DF484 88F54224 */  addiu      $v0, $v0, %lo(func_800DF588)
    /* CFC88 800DF488 640002AE */  sw         $v0, 0x64($s0)
    /* CFC8C 800DF48C 28021126 */  addiu      $s1, $s0, 0x228
    /* CFC90 800DF490 20000224 */  addiu      $v0, $zero, 0x20
    /* CFC94 800DF494 1000A2AF */  sw         $v0, 0x10($sp)
    /* CFC98 800DF498 1280023C */  lui        $v0, %hi(D_8011E72C)
    /* CFC9C 800DF49C 2CE74224 */  addiu      $v0, $v0, %lo(D_8011E72C)
    /* CFCA0 800DF4A0 1400A2AF */  sw         $v0, 0x14($sp)
    /* CFCA4 800DF4A4 21202002 */  addu       $a0, $s1, $zero
    /* CFCA8 800DF4A8 1680053C */  lui        $a1, %hi(D_8015927C)
    /* CFCAC 800DF4AC 7C92A524 */  addiu      $a1, $a1, %lo(D_8015927C)
    /* CFCB0 800DF4B0 00020624 */  addiu      $a2, $zero, 0x200
    /* CFCB4 800DF4B4 D6D7030C */  jal        func_800F5F58
    /* CFCB8 800DF4B8 1E000724 */   addiu     $a3, $zero, 0x1E
    /* CFCBC 800DF4BC 21202002 */  addu       $a0, $s1, $zero
    /* CFCC0 800DF4C0 FAD7030C */  jal        func_800F5FE8
    /* CFCC4 800DF4C4 1800A527 */   addiu     $a1, $sp, 0x18
    /* CFCC8 800DF4C8 18004014 */  bnez       $v0, .L800DF52C
    /* CFCCC 800DF4CC 21202002 */   addu      $a0, $s1, $zero
    /* CFCD0 800DF4D0 0E80023C */  lui        $v0, %hi(func_800DF55C)
    /* CFCD4 800DF4D4 5CF54224 */  addiu      $v0, $v0, %lo(func_800DF55C)
    /* CFCD8 800DF4D8 EC0202AE */  sw         $v0, 0x2EC($s0)
    /* CFCDC 800DF4DC 0E80023C */  lui        $v0, %hi(func_800DF580)
    /* CFCE0 800DF4E0 80F54224 */  addiu      $v0, $v0, %lo(func_800DF580)
    /* CFCE4 800DF4E4 700202AE */  sw         $v0, 0x270($s0)
    /* CFCE8 800DF4E8 B0030286 */  lh         $v0, 0x3B0($s0)
    /* CFCEC 800DF4EC 00000000 */  nop
    /* CFCF0 800DF4F0 40100200 */  sll        $v0, $v0, 1
    /* CFCF4 800DF4F4 2110A203 */  addu       $v0, $sp, $v0
    /* CFCF8 800DF4F8 98004684 */  lh         $a2, 0x98($v0)
    /* CFCFC 800DF4FC 16D8030C */  jal        func_800F6058
    /* CFD00 800DF500 01000524 */   addiu     $a1, $zero, 0x1
    /* CFD04 800DF504 45D8030C */  jal        SsQuit
    /* CFD08 800DF508 21202002 */   addu      $a0, $s1, $zero
    /* CFD0C 800DF50C EFEA030C */  jal        func_800FABBC
    /* CFD10 800DF510 54020426 */   addiu     $a0, $s0, 0x254
    /* CFD14 800DF514 EC02048E */  lw         $a0, 0x2EC($s0)
    /* CFD18 800DF518 00000000 */  nop
    /* CFD1C 800DF51C 03008010 */  beqz       $a0, .L800DF52C
    /* CFD20 800DF520 00000000 */   nop
    /* CFD24 800DF524 09F88000 */  jalr       $a0
    /* CFD28 800DF528 00000000 */   nop
  .L800DF52C:
    /* CFD2C 800DF52C D800BF8F */  lw         $ra, 0xD8($sp)
    /* CFD30 800DF530 D400B18F */  lw         $s1, 0xD4($sp)
    /* CFD34 800DF534 D000B08F */  lw         $s0, 0xD0($sp)
    /* CFD38 800DF538 E000BD27 */  addiu      $sp, $sp, 0xE0
    /* CFD3C 800DF53C 0800E003 */  jr         $ra
    /* CFD40 800DF540 00000000 */   nop
endlabel func_800DF350
