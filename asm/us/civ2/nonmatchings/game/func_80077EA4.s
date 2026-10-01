.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80077EA4, 0x58

glabel func_80077EA4
    /* 686A4 80077EA4 1280013C */  lui        $at, %hi(D_8011A3F4)
    /* 686A8 80077EA8 F4A320A4 */  sh         $zero, %lo(D_8011A3F4)($at)
    /* 686AC 80077EAC 21200000 */  addu       $a0, $zero, $zero
    /* 686B0 80077EB0 1280053C */  lui        $a1, %hi(D_8011A3F6)
    /* 686B4 80077EB4 F6A3A524 */  addiu      $a1, $a1, %lo(D_8011A3F6)
  .L80077EB8:
    /* 686B8 80077EB8 40100400 */  sll        $v0, $a0, 1
    /* 686BC 80077EBC 21184500 */  addu       $v1, $v0, $a1
    /* 686C0 80077EC0 000060A4 */  sh         $zero, 0x0($v1)
    /* 686C4 80077EC4 1280013C */  lui        $at, %hi(D_8011A40E)
    /* 686C8 80077EC8 21082400 */  addu       $at, $at, $a0
    /* 686CC 80077ECC 0EA420A0 */  sb         $zero, %lo(D_8011A40E)($at)
    /* 686D0 80077ED0 21104400 */  addu       $v0, $v0, $a0
    /* 686D4 80077ED4 C0100200 */  sll        $v0, $v0, 3
    /* 686D8 80077ED8 1280013C */  lui        $at, %hi(D_8011A426)
    /* 686DC 80077EDC 21082200 */  addu       $at, $at, $v0
    /* 686E0 80077EE0 26A420A0 */  sb         $zero, %lo(D_8011A426)($at)
    /* 686E4 80077EE4 01008424 */  addiu      $a0, $a0, 0x1
    /* 686E8 80077EE8 0C008228 */  slti       $v0, $a0, 0xC
    /* 686EC 80077EEC F2FF4014 */  bnez       $v0, .L80077EB8
    /* 686F0 80077EF0 00000000 */   nop
    /* 686F4 80077EF4 0800E003 */  jr         $ra
    /* 686F8 80077EF8 00000000 */   nop
endlabel func_80077EA4
