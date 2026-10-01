.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80018CA4, 0x1E4

glabel func_80018CA4
    /* 94A4 80018CA4 28FDBD27 */  addiu      $sp, $sp, -0x2D8
    /* 94A8 80018CA8 D402BFAF */  sw         $ra, 0x2D4($sp)
    /* 94AC 80018CAC D002B2AF */  sw         $s2, 0x2D0($sp)
    /* 94B0 80018CB0 CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* 94B4 80018CB4 C802B0AF */  sw         $s0, 0x2C8($sp)
    /* 94B8 80018CB8 21888000 */  addu       $s1, $a0, $zero
    /* 94BC 80018CBC 2180A000 */  addu       $s0, $a1, $zero
    /* 94C0 80018CC0 2190C000 */  addu       $s2, $a2, $zero
    /* 94C4 80018CC4 2800A427 */  addiu      $a0, $sp, 0x28
    /* 94C8 80018CC8 ADC5020C */  jal        func_800B16B4
    /* 94CC 80018CCC 00200524 */   addiu     $a1, $zero, 0x2000
    /* 94D0 80018CD0 BC00828F */  lw         $v0, %gp_rel(D_80158594)($gp)
    /* 94D4 80018CD4 00000000 */  nop
    /* 94D8 80018CD8 07004014 */  bnez       $v0, .L80018CF8
    /* 94DC 80018CDC 00000000 */   nop
    /* 94E0 80018CE0 05000016 */  bnez       $s0, .L80018CF8
    /* 94E4 80018CE4 2800A427 */   addiu     $a0, $sp, 0x28
    /* 94E8 80018CE8 0AC7020C */  jal        func_800B1C28
    /* 94EC 80018CEC 02000524 */   addiu     $a1, $zero, 0x2
    /* 94F0 80018CF0 9B630008 */  j          .L80018E6C
    /* 94F4 80018CF4 21100000 */   addu      $v0, $zero, $zero
  .L80018CF8:
    /* 94F8 80018CF8 1680023C */  lui        $v0, %hi(D_80158864)
    /* 94FC 80018CFC 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 9500 80018D00 00000000 */  nop
    /* 9504 80018D04 00004484 */  lh         $a0, 0x0($v0)
    /* 9508 80018D08 02004584 */  lh         $a1, 0x2($v0)
    /* 950C 80018D0C 08004680 */  lb         $a2, 0x8($v0)
    /* 9510 80018D10 6D7C020C */  jal        func_8009F1B4
    /* 9514 80018D14 00000000 */   nop
    /* 9518 80018D18 1680053C */  lui        $a1, %hi(D_80158864)
    /* 951C 80018D1C 6488A58C */  lw         $a1, %lo(D_80158864)($a1)
    /* 9520 80018D20 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 9524 80018D24 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 9528 80018D28 A587030C */  jal        func_800E1E94
    /* 952C 80018D2C 2200A524 */   addiu     $a1, $a1, 0x22
    /* 9530 80018D30 0B150224 */  addiu      $v0, $zero, 0x150B
    /* 9534 80018D34 0A002216 */  bne        $s1, $v0, .L80018D60
    /* 9538 80018D38 2800B027 */   addiu     $s0, $sp, 0x28
    /* 953C 80018D3C 1680023C */  lui        $v0, %hi(D_80158864)
    /* 9540 80018D40 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 9544 80018D44 00000000 */  nop
    /* 9548 80018D48 0400428C */  lw         $v0, 0x4($v0)
    /* 954C 80018D4C 00000000 */  nop
    /* 9550 80018D50 10004230 */  andi       $v0, $v0, 0x10
    /* 9554 80018D54 02004010 */  beqz       $v0, .L80018D60
    /* 9558 80018D58 00000000 */   nop
    /* 955C 80018D5C 97151124 */  addiu      $s1, $zero, 0x1597
  .L80018D60:
    /* 9560 80018D60 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9564 80018D64 1400A0AF */  sw         $zero, 0x14($sp)
    /* 9568 80018D68 1800A0AF */  sw         $zero, 0x18($sp)
    /* 956C 80018D6C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 9570 80018D70 2000A0AF */  sw         $zero, 0x20($sp)
    /* 9574 80018D74 21200002 */  addu       $a0, $s0, $zero
    /* 9578 80018D78 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* 957C 80018D7C F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* 9580 80018D80 21302002 */  addu       $a2, $s1, $zero
    /* 9584 80018D84 2CE0020C */  jal        func_800B80B0
    /* 9588 80018D88 21380000 */   addu      $a3, $zero, $zero
    /* 958C 80018D8C B800828F */  lw         $v0, %gp_rel(D_80158590)($gp)
    /* 9590 80018D90 00000000 */  nop
    /* 9594 80018D94 21004014 */  bnez       $v0, .L80018E1C
    /* 9598 80018D98 00000000 */   nop
    /* 959C 80018D9C 1680023C */  lui        $v0, %hi(D_8015894C)
    /* 95A0 80018DA0 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* 95A4 80018DA4 00000000 */  nop
    /* 95A8 80018DA8 8000448C */  lw         $a0, 0x80($v0)
    /* 95AC 80018DAC A63A030C */  jal        func_800CEA98
    /* 95B0 80018DB0 00000000 */   nop
    /* 95B4 80018DB4 21200002 */  addu       $a0, $s0, $zero
    /* 95B8 80018DB8 21284000 */  addu       $a1, $v0, $zero
    /* 95BC 80018DBC A8C9020C */  jal        func_800B26A0
    /* 95C0 80018DC0 01000624 */   addiu     $a2, $zero, 0x1
    /* 95C4 80018DC4 1680023C */  lui        $v0, %hi(D_8015894C)
    /* 95C8 80018DC8 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* 95CC 80018DCC 00000000 */  nop
    /* 95D0 80018DD0 8400448C */  lw         $a0, 0x84($v0)
    /* 95D4 80018DD4 A63A030C */  jal        func_800CEA98
    /* 95D8 80018DD8 00000000 */   nop
    /* 95DC 80018DDC 21200002 */  addu       $a0, $s0, $zero
    /* 95E0 80018DE0 21284000 */  addu       $a1, $v0, $zero
    /* 95E4 80018DE4 A8C9020C */  jal        func_800B26A0
    /* 95E8 80018DE8 21300000 */   addu      $a2, $zero, $zero
    /* 95EC 80018DEC 1280023C */  lui        $v0, %hi(D_8011A25C)
    /* 95F0 80018DF0 5CA24294 */  lhu        $v0, %lo(D_8011A25C)($v0)
    /* 95F4 80018DF4 00000000 */  nop
    /* 95F8 80018DF8 00044230 */  andi       $v0, $v0, 0x400
    /* 95FC 80018DFC 03004010 */  beqz       $v0, .L80018E0C
    /* 9600 80018E00 21200002 */   addu      $a0, $s0, $zero
    /* 9604 80018E04 85630008 */  j          .L80018E14
    /* 9608 80018E08 01000524 */   addiu     $a1, $zero, 0x1
  .L80018E0C:
    /* 960C 80018E0C 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9610 80018E10 21280000 */  addu       $a1, $zero, $zero
  .L80018E14:
    /* 9614 80018E14 FFC8020C */  jal        func_800B23FC
    /* 9618 80018E18 00000000 */   nop
  .L80018E1C:
    /* 961C 80018E1C 08004012 */  beqz       $s2, .L80018E40
    /* 9620 80018E20 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9624 80018E24 21284002 */  addu       $a1, $s2, $zero
    /* 9628 80018E28 21300000 */  addu       $a2, $zero, $zero
    /* 962C 80018E2C 3DC9020C */  jal        func_800B24F4
    /* 9630 80018E30 21380000 */   addu      $a3, $zero, $zero
    /* 9634 80018E34 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9638 80018E38 3BC9020C */  jal        func_800B24EC
    /* 963C 80018E3C 08000524 */   addiu     $a1, $zero, 0x8
  .L80018E40:
    /* 9640 80018E40 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9644 80018E44 52DF020C */  jal        func_800B7D48
    /* 9648 80018E48 21280000 */   addu      $a1, $zero, $zero
    /* 964C 80018E4C 21804000 */  addu       $s0, $v0, $zero
    /* 9650 80018E50 0200001A */  blez       $s0, .L80018E5C
    /* 9654 80018E54 01000224 */   addiu     $v0, $zero, 0x1
    /* 9658 80018E58 B80082AF */  sw         $v0, %gp_rel(D_80158590)($gp)
  .L80018E5C:
    /* 965C 80018E5C 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9660 80018E60 0AC7020C */  jal        func_800B1C28
    /* 9664 80018E64 02000524 */   addiu     $a1, $zero, 0x2
    /* 9668 80018E68 21100002 */  addu       $v0, $s0, $zero
  .L80018E6C:
    /* 966C 80018E6C D402BF8F */  lw         $ra, 0x2D4($sp)
    /* 9670 80018E70 D002B28F */  lw         $s2, 0x2D0($sp)
    /* 9674 80018E74 CC02B18F */  lw         $s1, 0x2CC($sp)
    /* 9678 80018E78 C802B08F */  lw         $s0, 0x2C8($sp)
    /* 967C 80018E7C D802BD27 */  addiu      $sp, $sp, 0x2D8
    /* 9680 80018E80 0800E003 */  jr         $ra
    /* 9684 80018E84 00000000 */   nop
endlabel func_80018CA4
