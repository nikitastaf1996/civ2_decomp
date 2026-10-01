.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80070B20, 0x1B4

glabel func_80070B20
    /* 61320 80070B20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 61324 80070B24 1400BFAF */  sw         $ra, 0x14($sp)
    /* 61328 80070B28 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6132C 80070B2C 1680043C */  lui        $a0, %hi(D_8015884C)
    /* 61330 80070B30 4C88848C */  lw         $a0, %lo(D_8015884C)($a0)
    /* 61334 80070B34 FCA0020C */  jal        func_800A83F0
    /* 61338 80070B38 56020524 */   addiu     $a1, $zero, 0x256
    /* 6133C 80070B3C 01000424 */  addiu      $a0, $zero, 0x1
    /* 61340 80070B40 A4C2010C */  jal        func_80070A90
    /* 61344 80070B44 0A000524 */   addiu     $a1, $zero, 0xA
    /* 61348 80070B48 1280103C */  lui        $s0, %hi(D_8011A5C8)
    /* 6134C 80070B4C C8A51026 */  addiu      $s0, $s0, %lo(D_8011A5C8)
    /* 61350 80070B50 000002A2 */  sb         $v0, 0x0($s0)
    /* 61354 80070B54 01000424 */  addiu      $a0, $zero, 0x1
    /* 61358 80070B58 A4C2010C */  jal        func_80070A90
    /* 6135C 80070B5C 64000524 */   addiu     $a1, $zero, 0x64
    /* 61360 80070B60 010002A2 */  sb         $v0, 0x1($s0)
    /* 61364 80070B64 21200000 */  addu       $a0, $zero, $zero
    /* 61368 80070B68 A4C2010C */  jal        func_80070A90
    /* 6136C 80070B6C 0A000524 */   addiu     $a1, $zero, 0xA
    /* 61370 80070B70 020002A2 */  sb         $v0, 0x2($s0)
    /* 61374 80070B74 04000424 */  addiu      $a0, $zero, 0x4
    /* 61378 80070B78 A4C2010C */  jal        func_80070A90
    /* 6137C 80070B7C 14000524 */   addiu     $a1, $zero, 0x14
    /* 61380 80070B80 21184000 */  addu       $v1, $v0, $zero
    /* 61384 80070B84 01006230 */  andi       $v0, $v1, 0x1
    /* 61388 80070B88 03004010 */  beqz       $v0, .L80070B98
    /* 6138C 80070B8C 030003A2 */   sb        $v1, 0x3($s0)
    /* 61390 80070B90 01006224 */  addiu      $v0, $v1, 0x1
    /* 61394 80070B94 030002A2 */  sb         $v0, 0x3($s0)
  .L80070B98:
    /* 61398 80070B98 04000424 */  addiu      $a0, $zero, 0x4
    /* 6139C 80070B9C A4C2010C */  jal        func_80070A90
    /* 613A0 80070BA0 14000524 */   addiu     $a1, $zero, 0x14
    /* 613A4 80070BA4 1280103C */  lui        $s0, %hi(D_8011A5CC)
    /* 613A8 80070BA8 CCA51026 */  addiu      $s0, $s0, %lo(D_8011A5CC)
    /* 613AC 80070BAC 000002A2 */  sb         $v0, 0x0($s0)
    /* 613B0 80070BB0 21200000 */  addu       $a0, $zero, $zero
    /* 613B4 80070BB4 A4C2010C */  jal        func_80070A90
    /* 613B8 80070BB8 0A000524 */   addiu     $a1, $zero, 0xA
    /* 613BC 80070BBC 010002A2 */  sb         $v0, 0x1($s0)
    /* 613C0 80070BC0 21200000 */  addu       $a0, $zero, $zero
    /* 613C4 80070BC4 A4C2010C */  jal        func_80070A90
    /* 613C8 80070BC8 0A000524 */   addiu     $a1, $zero, 0xA
    /* 613CC 80070BCC 020002A2 */  sb         $v0, 0x2($s0)
    /* 613D0 80070BD0 04000424 */  addiu      $a0, $zero, 0x4
    /* 613D4 80070BD4 A4C2010C */  jal        func_80070A90
    /* 613D8 80070BD8 0C000524 */   addiu     $a1, $zero, 0xC
    /* 613DC 80070BDC 030002A2 */  sb         $v0, 0x3($s0)
    /* 613E0 80070BE0 0A000424 */  addiu      $a0, $zero, 0xA
    /* 613E4 80070BE4 A4C2010C */  jal        func_80070A90
    /* 613E8 80070BE8 64000524 */   addiu     $a1, $zero, 0x64
    /* 613EC 80070BEC 040002A2 */  sb         $v0, 0x4($s0)
    /* 613F0 80070BF0 04000424 */  addiu      $a0, $zero, 0x4
    /* 613F4 80070BF4 A4C2010C */  jal        func_80070A90
    /* 613F8 80070BF8 32000524 */   addiu     $a1, $zero, 0x32
    /* 613FC 80070BFC 050002A2 */  sb         $v0, 0x5($s0)
    /* 61400 80070C00 04000424 */  addiu      $a0, $zero, 0x4
    /* 61404 80070C04 A4C2010C */  jal        func_80070A90
    /* 61408 80070C08 32000524 */   addiu     $a1, $zero, 0x32
    /* 6140C 80070C0C 060002A2 */  sb         $v0, 0x6($s0)
    /* 61410 80070C10 03000424 */  addiu      $a0, $zero, 0x3
    /* 61414 80070C14 A4C2010C */  jal        func_80070A90
    /* 61418 80070C18 0A000524 */   addiu     $a1, $zero, 0xA
    /* 6141C 80070C1C 070002A2 */  sb         $v0, 0x7($s0)
    /* 61420 80070C20 05000424 */  addiu      $a0, $zero, 0x5
    /* 61424 80070C24 A4C2010C */  jal        func_80070A90
    /* 61428 80070C28 64000524 */   addiu     $a1, $zero, 0x64
    /* 6142C 80070C2C 080002A2 */  sb         $v0, 0x8($s0)
    /* 61430 80070C30 21200000 */  addu       $a0, $zero, $zero
    /* 61434 80070C34 A4C2010C */  jal        func_80070A90
    /* 61438 80070C38 08000524 */   addiu     $a1, $zero, 0x8
    /* 6143C 80070C3C 090002A2 */  sb         $v0, 0x9($s0)
    /* 61440 80070C40 21200000 */  addu       $a0, $zero, $zero
    /* 61444 80070C44 A4C2010C */  jal        func_80070A90
    /* 61448 80070C48 08000524 */   addiu     $a1, $zero, 0x8
    /* 6144C 80070C4C 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 61450 80070C50 21200000 */  addu       $a0, $zero, $zero
    /* 61454 80070C54 A4C2010C */  jal        func_80070A90
    /* 61458 80070C58 08000524 */   addiu     $a1, $zero, 0x8
    /* 6145C 80070C5C 0B0002A2 */  sb         $v0, 0xB($s0)
    /* 61460 80070C60 01000424 */  addiu      $a0, $zero, 0x1
    /* 61464 80070C64 A4C2010C */  jal        func_80070A90
    /* 61468 80070C68 14000524 */   addiu     $a1, $zero, 0x14
    /* 6146C 80070C6C 0C0002A2 */  sb         $v0, 0xC($s0)
    /* 61470 80070C70 21200000 */  addu       $a0, $zero, $zero
    /* 61474 80070C74 A4C2010C */  jal        func_80070A90
    /* 61478 80070C78 64000524 */   addiu     $a1, $zero, 0x64
    /* 6147C 80070C7C 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 61480 80070C80 21200000 */  addu       $a0, $zero, $zero
    /* 61484 80070C84 A4C2010C */  jal        func_80070A90
    /* 61488 80070C88 64000524 */   addiu     $a1, $zero, 0x64
    /* 6148C 80070C8C 0E0002A2 */  sb         $v0, 0xE($s0)
    /* 61490 80070C90 04000424 */  addiu      $a0, $zero, 0x4
    /* 61494 80070C94 A4C2010C */  jal        func_80070A90
    /* 61498 80070C98 64000524 */   addiu     $a1, $zero, 0x64
    /* 6149C 80070C9C 0F0002A2 */  sb         $v0, 0xF($s0)
    /* 614A0 80070CA0 19000424 */  addiu      $a0, $zero, 0x19
    /* 614A4 80070CA4 A4C2010C */  jal        func_80070A90
    /* 614A8 80070CA8 C8000524 */   addiu     $a1, $zero, 0xC8
    /* 614AC 80070CAC 100002A2 */  sb         $v0, 0x10($s0)
    /* 614B0 80070CB0 21200000 */  addu       $a0, $zero, $zero
    /* 614B4 80070CB4 A4C2010C */  jal        func_80070A90
    /* 614B8 80070CB8 0A000524 */   addiu     $a1, $zero, 0xA
    /* 614BC 80070CBC 110002A2 */  sb         $v0, 0x11($s0)
    /* 614C0 80070CC0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 614C4 80070CC4 1000B08F */  lw         $s0, 0x10($sp)
    /* 614C8 80070CC8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 614CC 80070CCC 0800E003 */  jr         $ra
    /* 614D0 80070CD0 00000000 */   nop
endlabel func_80070B20
