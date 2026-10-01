.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C0C80, 0x838

glabel func_800C0C80
    /* B1480 800C0C80 440B848F */  lw         $a0, %gp_rel(D_8015901C)($gp)
    /* B1484 800C0C84 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* B1488 800C0C88 8400BFAF */  sw         $ra, 0x84($sp)
    /* B148C 800C0C8C 8000BEAF */  sw         $fp, 0x80($sp)
    /* B1490 800C0C90 7C00B7AF */  sw         $s7, 0x7C($sp)
    /* B1494 800C0C94 7800B6AF */  sw         $s6, 0x78($sp)
    /* B1498 800C0C98 7400B5AF */  sw         $s5, 0x74($sp)
    /* B149C 800C0C9C 7000B4AF */  sw         $s4, 0x70($sp)
    /* B14A0 800C0CA0 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* B14A4 800C0CA4 6800B2AF */  sw         $s2, 0x68($sp)
    /* B14A8 800C0CA8 6400B1AF */  sw         $s1, 0x64($sp)
    /* B14AC 800C0CAC DC49020C */  jal        func_80092770
    /* B14B0 800C0CB0 6000B0AF */   sw        $s0, 0x60($sp)
    /* B14B4 800C0CB4 7907040C */  jal        func_80101DE4
    /* B14B8 800C0CB8 01000424 */   addiu     $a0, $zero, 0x1
    /* B14BC 800C0CBC 440B828F */  lw         $v0, %gp_rel(D_8015901C)($gp)
    /* B14C0 800C0CC0 00000000 */  nop
    /* B14C4 800C0CC4 3800428C */  lw         $v0, 0x38($v0)
    /* B14C8 800C0CC8 00000000 */  nop
    /* B14CC 800C0CCC 0400448C */  lw         $a0, 0x4($v0)
    /* B14D0 800C0CD0 D707040C */  jal        func_80101F5C
    /* B14D4 800C0CD4 10001024 */   addiu     $s0, $zero, 0x10
    /* B14D8 800C0CD8 1800A427 */  addiu      $a0, $sp, 0x18
    /* B14DC 800C0CDC 21280000 */  addu       $a1, $zero, $zero
    /* B14E0 800C0CE0 40010224 */  addiu      $v0, $zero, 0x140
    /* B14E4 800C0CE4 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* B14E8 800C0CE8 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B14EC 800C0CEC 1800A0A7 */  sh         $zero, 0x18($sp)
    /* B14F0 800C0CF0 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* B14F4 800C0CF4 A314020C */  jal        func_8008528C
    /* B14F8 800C0CF8 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* B14FC 800C0CFC 2000A627 */  addiu      $a2, $sp, 0x20
    /* B1500 800C0D00 1800A727 */  addiu      $a3, $sp, 0x18
    /* B1504 800C0D04 06000324 */  addiu      $v1, $zero, 0x6
    /* B1508 800C0D08 3A010524 */  addiu      $a1, $zero, 0x13A
    /* B150C 800C0D0C 400B848F */  lw         $a0, %gp_rel(D_80159018)($gp)
    /* B1510 800C0D10 D0000224 */  addiu      $v0, $zero, 0xD0
    /* B1514 800C0D14 2400A5A7 */  sh         $a1, 0x24($sp)
    /* B1518 800C0D18 1C00A5A7 */  sh         $a1, 0x1C($sp)
    /* B151C 800C0D1C 440B858F */  lw         $a1, %gp_rel(D_8015901C)($gp)
    /* B1520 800C0D20 2600A2A7 */  sh         $v0, 0x26($sp)
    /* B1524 800C0D24 E0000224 */  addiu      $v0, $zero, 0xE0
    /* B1528 800C0D28 2000A3A7 */  sh         $v1, 0x20($sp)
    /* B152C 800C0D2C 2200A0A7 */  sh         $zero, 0x22($sp)
    /* B1530 800C0D30 1800A3A7 */  sh         $v1, 0x18($sp)
    /* B1534 800C0D34 1A00B0A7 */  sh         $s0, 0x1A($sp)
    /* B1538 800C0D38 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* B153C 800C0D3C 1FE4030C */  jal        func_800F907C
    /* B1540 800C0D40 2C00A524 */   addiu     $a1, $a1, 0x2C
    /* B1544 800C0D44 10000524 */  addiu      $a1, $zero, 0x10
    /* B1548 800C0D48 440B828F */  lw         $v0, %gp_rel(D_8015901C)($gp)
    /* B154C 800C0D4C 18000624 */  addiu      $a2, $zero, 0x18
    /* B1550 800C0D50 1C00428C */  lw         $v0, 0x1C($v0)
    /* B1554 800C0D54 2F010724 */  addiu      $a3, $zero, 0x12F
    /* B1558 800C0D58 0A0040A0 */  sb         $zero, 0xA($v0)
    /* B155C 800C0D5C 090040A0 */  sb         $zero, 0x9($v0)
    /* B1560 800C0D60 080040A0 */  sb         $zero, 0x8($v0)
    /* B1564 800C0D64 440B848F */  lw         $a0, %gp_rel(D_8015901C)($gp)
    /* B1568 800C0D68 18000224 */  addiu      $v0, $zero, 0x18
    /* B156C 800C0D6C 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* B1570 800C0D70 30010224 */  addiu      $v0, $zero, 0x130
    /* B1574 800C0D74 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* B1578 800C0D78 D2000224 */  addiu      $v0, $zero, 0xD2
    /* B157C 800C0D7C 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* B1580 800C0D80 D1000224 */  addiu      $v0, $zero, 0xD1
    /* B1584 800C0D84 1800B0A7 */  sh         $s0, 0x18($sp)
    /* B1588 800C0D88 1000A2AF */  sw         $v0, 0x10($sp)
    /* B158C 800C0D8C 0A000224 */  addiu      $v0, $zero, 0xA
    /* B1590 800C0D90 C413020C */  jal        func_80084F10
    /* B1594 800C0D94 1400A2AF */   sw        $v0, 0x14($sp)
    /* B1598 800C0D98 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* B159C 800C0D9C 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* B15A0 800C0DA0 00000000 */  nop
    /* B15A4 800C0DA4 80004230 */  andi       $v0, $v0, 0x80
    /* B15A8 800C0DA8 10004010 */  beqz       $v0, .L800C0DEC
    /* B15AC 800C0DAC 00000000 */   nop
    /* B15B0 800C0DB0 1280023C */  lui        $v0, %hi(D_8011A390)
    /* B15B4 800C0DB4 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* B15B8 800C0DB8 00000000 */  nop
    /* B15BC 800C0DBC 02004230 */  andi       $v0, $v0, 0x2
    /* B15C0 800C0DC0 0A004010 */  beqz       $v0, .L800C0DEC
    /* B15C4 800C0DC4 00000000 */   nop
    /* B15C8 800C0DC8 1280023C */  lui        $v0, %hi(D_8011A262)
    /* B15CC 800C0DCC 62A24294 */  lhu        $v0, %lo(D_8011A262)($v0)
    /* B15D0 800C0DD0 00000000 */  nop
    /* B15D4 800C0DD4 00140200 */  sll        $v0, $v0, 16
    /* B15D8 800C0DD8 031C0200 */  sra        $v1, $v0, 16
    /* B15DC 800C0DDC C2170200 */  srl        $v0, $v0, 31
    /* B15E0 800C0DE0 21186200 */  addu       $v1, $v1, $v0
    /* B15E4 800C0DE4 82030308 */  j          .L800C0E08
    /* B15E8 800C0DE8 43F00300 */   sra       $fp, $v1, 1
  .L800C0DEC:
    /* B15EC 800C0DEC 1280023C */  lui        $v0, %hi(D_8011A262)
    /* B15F0 800C0DF0 62A24284 */  lh         $v0, %lo(D_8011A262)($v0)
    /* B15F4 800C0DF4 00000000 */  nop
    /* B15F8 800C0DF8 03004104 */  bgez       $v0, .L800C0E08
    /* B15FC 800C0DFC 83F00200 */   sra       $fp, $v0, 2
    /* B1600 800C0E00 03004224 */  addiu      $v0, $v0, 0x3
    /* B1604 800C0E04 83F00200 */  sra        $fp, $v0, 2
  .L800C0E08:
    /* B1608 800C0E08 2120C003 */  addu       $a0, $fp, $zero
    /* B160C 800C0E0C 21280000 */  addu       $a1, $zero, $zero
    /* B1610 800C0E10 F53A030C */  jal        func_800CEBD4
    /* B1614 800C0E14 96000624 */   addiu     $a2, $zero, 0x96
    /* B1618 800C0E18 21F04000 */  addu       $fp, $v0, $zero
    /* B161C 800C0E1C 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* B1620 800C0E20 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* B1624 800C0E24 00000000 */  nop
    /* B1628 800C0E28 80004230 */  andi       $v0, $v0, 0x80
    /* B162C 800C0E2C 08004010 */  beqz       $v0, .L800C0E50
    /* B1630 800C0E30 32001524 */   addiu     $s5, $zero, 0x32
    /* B1634 800C0E34 1280023C */  lui        $v0, %hi(D_8011A390)
    /* B1638 800C0E38 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* B163C 800C0E3C 00000000 */  nop
    /* B1640 800C0E40 02004230 */  andi       $v0, $v0, 0x2
    /* B1644 800C0E44 03004010 */  beqz       $v0, .L800C0E54
    /* B1648 800C0E48 32001724 */   addiu     $s7, $zero, 0x32
    /* B164C 800C0E4C 19001524 */  addiu      $s5, $zero, 0x19
  .L800C0E50:
    /* B1650 800C0E50 32001724 */  addiu      $s7, $zero, 0x32
  .L800C0E54:
    /* B1654 800C0E54 01001224 */  addiu      $s2, $zero, 0x1
    /* B1658 800C0E58 1280053C */  lui        $a1, %hi(D_8011A748)
    /* B165C 800C0E5C 48A7A524 */  addiu      $a1, $a1, %lo(D_8011A748)
  .L800C0E60:
    /* B1660 800C0E60 0D00C01B */  blez       $fp, .L800C0E98
    /* B1664 800C0E64 21980000 */   addu      $s3, $zero, $zero
    /* B1668 800C0E68 2120A000 */  addu       $a0, $a1, $zero
  .L800C0E6C:
    /* B166C 800C0E6C 21109200 */  addu       $v0, $a0, $s2
    /* B1670 800C0E70 00004390 */  lbu        $v1, 0x0($v0)
    /* B1674 800C0E74 00000000 */  nop
    /* B1678 800C0E78 2A10E302 */  slt        $v0, $s7, $v1
    /* B167C 800C0E7C 02004010 */  beqz       $v0, .L800C0E88
    /* B1680 800C0E80 00000000 */   nop
    /* B1684 800C0E84 21B86000 */  addu       $s7, $v1, $zero
  .L800C0E88:
    /* B1688 800C0E88 01007326 */  addiu      $s3, $s3, 0x1
    /* B168C 800C0E8C 2A107E02 */  slt        $v0, $s3, $fp
    /* B1690 800C0E90 F6FF4014 */  bnez       $v0, .L800C0E6C
    /* B1694 800C0E94 08008424 */   addiu     $a0, $a0, 0x8
  .L800C0E98:
    /* B1698 800C0E98 01005226 */  addiu      $s2, $s2, 0x1
    /* B169C 800C0E9C 0800422A */  slti       $v0, $s2, 0x8
    /* B16A0 800C0EA0 EFFF4014 */  bnez       $v0, .L800C0E60
    /* B16A4 800C0EA4 21A00000 */   addu      $s4, $zero, $zero
    /* B16A8 800C0EA8 21980000 */  addu       $s3, $zero, $zero
    /* B16AC 800C0EAC 1280163C */  lui        $s6, %hi(D_80121340)
    /* B16B0 800C0EB0 4013D626 */  addiu      $s6, $s6, %lo(D_80121340)
  .L800C0EB4:
    /* B16B4 800C0EB4 1280023C */  lui        $v0, %hi(D_8011A262)
    /* B16B8 800C0EB8 62A24284 */  lh         $v0, %lo(D_8011A262)($v0)
    /* B16BC 800C0EBC 00000000 */  nop
    /* B16C0 800C0EC0 2A105300 */  slt        $v0, $v0, $s3
    /* B16C4 800C0EC4 89004014 */  bnez       $v0, .L800C10EC
    /* B16C8 800C0EC8 5902622A */   slti      $v0, $s3, 0x259
    /* B16CC 800C0ECC 87004010 */  beqz       $v0, .L800C10EC
    /* B16D0 800C0ED0 00000000 */   nop
    /* B16D4 800C0ED4 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* B16D8 800C0ED8 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* B16DC 800C0EDC 00000000 */  nop
    /* B16E0 800C0EE0 80004230 */  andi       $v0, $v0, 0x80
    /* B16E4 800C0EE4 0C004010 */  beqz       $v0, .L800C0F18
    /* B16E8 800C0EE8 EB51033C */   lui       $v1, (0x51EB851F >> 16)
    /* B16EC 800C0EEC 1280023C */  lui        $v0, %hi(D_8011A390)
    /* B16F0 800C0EF0 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* B16F4 800C0EF4 00000000 */  nop
    /* B16F8 800C0EF8 02004230 */  andi       $v0, $v0, 0x2
    /* B16FC 800C0EFC 05004010 */  beqz       $v0, .L800C0F14
    /* B1700 800C0F00 1F856334 */   ori       $v1, $v1, (0x51EB851F & 0xFFFF)
    /* B1704 800C0F04 80101400 */  sll        $v0, $s4, 2
    /* B1708 800C0F08 21105300 */  addu       $v0, $v0, $s3
    /* B170C 800C0F0C CA030308 */  j          .L800C0F28
    /* B1710 800C0F10 80100200 */   sll       $v0, $v0, 2
  .L800C0F14:
    /* B1714 800C0F14 EB51033C */  lui        $v1, (0x51EB851F >> 16)
  .L800C0F18:
    /* B1718 800C0F18 1F856334 */  ori        $v1, $v1, (0x51EB851F & 0xFFFF)
    /* B171C 800C0F1C 80101400 */  sll        $v0, $s4, 2
    /* B1720 800C0F20 21105300 */  addu       $v0, $v0, $s3
    /* B1724 800C0F24 40100200 */  sll        $v0, $v0, 1
  .L800C0F28:
    /* B1728 800C0F28 18004300 */  mult       $v0, $v1
    /* B172C 800C0F2C C3170200 */  sra        $v0, $v0, 31
    /* B1730 800C0F30 10480000 */  mfhi       $t1
    /* B1734 800C0F34 03190900 */  sra        $v1, $t1, 4
    /* B1738 800C0F38 23906200 */  subu       $s2, $v1, $v0
    /* B173C 800C0F3C 10005026 */  addiu      $s0, $s2, 0x10
    /* B1740 800C0F40 21280002 */  addu       $a1, $s0, $zero
    /* B1744 800C0F44 18000624 */  addiu      $a2, $zero, 0x18
    /* B1748 800C0F48 21380002 */  addu       $a3, $s0, $zero
    /* B174C 800C0F4C D1000224 */  addiu      $v0, $zero, 0xD1
    /* B1750 800C0F50 440B848F */  lw         $a0, %gp_rel(D_8015901C)($gp)
    /* B1754 800C0F54 0A000924 */  addiu      $t1, $zero, 0xA
    /* B1758 800C0F58 1000A2AF */  sw         $v0, 0x10($sp)
    /* B175C 800C0F5C 7413020C */  jal        func_80084DD0
    /* B1760 800C0F60 1400A9AF */   sw        $t1, 0x14($sp)
    /* B1764 800C0F64 40101500 */  sll        $v0, $s5, 1
    /* B1768 800C0F68 1A006202 */  div        $zero, $s3, $v0
    /* B176C 800C0F6C 02004014 */  bnez       $v0, .L800C0F78
    /* B1770 800C0F70 00000000 */   nop
    /* B1774 800C0F74 0D000700 */  break      7
  .L800C0F78:
    /* B1778 800C0F78 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B177C 800C0F7C 04004114 */  bne        $v0, $at, .L800C0F90
    /* B1780 800C0F80 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B1784 800C0F84 02006116 */  bne        $s3, $at, .L800C0F90
    /* B1788 800C0F88 00000000 */   nop
    /* B178C 800C0F8C 0D000600 */  break      6
  .L800C0F90:
    /* B1790 800C0F90 10180000 */  mfhi       $v1
    /* B1794 800C0F94 00000000 */  nop
    /* B1798 800C0F98 50006014 */  bnez       $v1, .L800C10DC
    /* B179C 800C0F9C 40101500 */   sll       $v0, $s5, 1
    /* B17A0 800C0FA0 1D98010C */  jal        func_80066074
    /* B17A4 800C0FA4 01006426 */   addiu     $a0, $s3, 0x1
    /* B17A8 800C0FA8 21884000 */  addu       $s1, $v0, $zero
    /* B17AC 800C0FAC 0100632E */  sltiu      $v1, $s3, 0x1
    /* B17B0 800C0FB0 0100223A */  xori       $v0, $s1, 0x1
    /* B17B4 800C0FB4 0100422C */  sltiu      $v0, $v0, 0x1
    /* B17B8 800C0FB8 25186200 */  or         $v1, $v1, $v0
    /* B17BC 800C0FBC 1A006010 */  beqz       $v1, .L800C1028
    /* B17C0 800C0FC0 21280002 */   addu      $a1, $s0, $zero
    /* B17C4 800C0FC4 D1000624 */  addiu      $a2, $zero, 0xD1
    /* B17C8 800C0FC8 2138A000 */  addu       $a3, $a1, $zero
    /* B17CC 800C0FCC DD000224 */  addiu      $v0, $zero, 0xDD
    /* B17D0 800C0FD0 440B848F */  lw         $a0, %gp_rel(D_8015901C)($gp)
    /* B17D4 800C0FD4 0A000924 */  addiu      $t1, $zero, 0xA
    /* B17D8 800C0FD8 1000A2AF */  sw         $v0, 0x10($sp)
    /* B17DC 800C0FDC 7413020C */  jal        func_80084DD0
    /* B17E0 800C0FE0 1400A9AF */   sw        $t1, 0x14($sp)
    /* B17E4 800C0FE4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B17E8 800C0FE8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B17EC 800C0FEC CB1A030C */  jal        func_800C6B2C
    /* B17F0 800C0FF0 00000000 */   nop
    /* B17F4 800C0FF4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B17F8 800C0FF8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B17FC 800C0FFC AD98010C */  jal        func_800662B4
    /* B1800 800C1000 21282002 */   addu      $a1, $s1, $zero
    /* B1804 800C1004 2120C002 */  addu       $a0, $s6, $zero
    /* B1808 800C1008 11004226 */  addiu      $v0, $s2, 0x11
    /* B180C 800C100C 2800A2A7 */  sh         $v0, 0x28($sp)
    /* B1810 800C1010 D2000224 */  addiu      $v0, $zero, 0xD2
    /* B1814 800C1014 2A00A2A7 */  sh         $v0, 0x2A($sp)
    /* B1818 800C1018 40010224 */  addiu      $v0, $zero, 0x140
    /* B181C 800C101C 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* B1820 800C1020 2C040308 */  j          .L800C10B0
    /* B1824 800C1024 DE000224 */   addiu     $v0, $zero, 0xDE
  .L800C1028:
    /* B1828 800C1028 D0070224 */  addiu      $v0, $zero, 0x7D0
    /* B182C 800C102C 2B002216 */  bne        $s1, $v0, .L800C10DC
    /* B1830 800C1030 40101500 */   sll       $v0, $s5, 1
    /* B1834 800C1034 21280002 */  addu       $a1, $s0, $zero
    /* B1838 800C1038 D1000624 */  addiu      $a2, $zero, 0xD1
    /* B183C 800C103C 2138A000 */  addu       $a3, $a1, $zero
    /* B1840 800C1040 DD000224 */  addiu      $v0, $zero, 0xDD
    /* B1844 800C1044 440B848F */  lw         $a0, %gp_rel(D_8015901C)($gp)
    /* B1848 800C1048 0A000924 */  addiu      $t1, $zero, 0xA
    /* B184C 800C104C 1000A2AF */  sw         $v0, 0x10($sp)
    /* B1850 800C1050 7413020C */  jal        func_80084DD0
    /* B1854 800C1054 1400A9AF */   sw        $t1, 0x14($sp)
    /* B1858 800C1058 1280043C */  lui        $a0, %hi(D_80121340)
    /* B185C 800C105C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B1860 800C1060 CB1A030C */  jal        func_800C6B2C
    /* B1864 800C1064 00000000 */   nop
    /* B1868 800C1068 1280043C */  lui        $a0, %hi(D_80121340)
    /* B186C 800C106C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B1870 800C1070 AD98010C */  jal        func_800662B4
    /* B1874 800C1074 D0070524 */   addiu     $a1, $zero, 0x7D0
    /* B1878 800C1078 AD87030C */  jal        func_800E1EB4
    /* B187C 800C107C 2120C002 */   addu      $a0, $s6, $zero
    /* B1880 800C1080 2120C002 */  addu       $a0, $s6, $zero
    /* B1884 800C1084 0F004526 */  addiu      $a1, $s2, 0xF
    /* B1888 800C1088 40180200 */  sll        $v1, $v0, 1
    /* B188C 800C108C 21186200 */  addu       $v1, $v1, $v0
    /* B1890 800C1090 40180300 */  sll        $v1, $v1, 1
    /* B1894 800C1094 2328A300 */  subu       $a1, $a1, $v1
    /* B1898 800C1098 D2000224 */  addiu      $v0, $zero, 0xD2
    /* B189C 800C109C 2A00A2A7 */  sh         $v0, 0x2A($sp)
    /* B18A0 800C10A0 40010224 */  addiu      $v0, $zero, 0x140
    /* B18A4 800C10A4 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* B18A8 800C10A8 DE000224 */  addiu      $v0, $zero, 0xDE
    /* B18AC 800C10AC 2800A5A7 */  sh         $a1, 0x28($sp)
  .L800C10B0:
    /* B18B0 800C10B0 AD87030C */  jal        func_800E1EB4
    /* B18B4 800C10B4 2E00A2A7 */   sh        $v0, 0x2E($sp)
    /* B18B8 800C10B8 21200000 */  addu       $a0, $zero, $zero
    /* B18BC 800C10BC 2128C002 */  addu       $a1, $s6, $zero
    /* B18C0 800C10C0 00140200 */  sll        $v0, $v0, 16
    /* B18C4 800C10C4 03340200 */  sra        $a2, $v0, 16
    /* B18C8 800C10C8 2800A727 */  addiu      $a3, $sp, 0x28
    /* B18CC 800C10CC 10000224 */  addiu      $v0, $zero, 0x10
    /* B18D0 800C10D0 320F040C */  jal        func_80103CC8
    /* B18D4 800C10D4 1000A2AF */   sw        $v0, 0x10($sp)
    /* B18D8 800C10D8 40101500 */  sll        $v0, $s5, 1
  .L800C10DC:
    /* B18DC 800C10DC 21105500 */  addu       $v0, $v0, $s5
    /* B18E0 800C10E0 21A08202 */  addu       $s4, $s4, $v0
    /* B18E4 800C10E4 AD030308 */  j          .L800C0EB4
    /* B18E8 800C10E8 21987502 */   addu      $s3, $s3, $s5
  .L800C10EC:
    /* B18EC 800C10EC 01001224 */  addiu      $s2, $zero, 0x1
    /* B18F0 800C10F0 1280083C */  lui        $t0, %hi(D_8011A274)
    /* B18F4 800C10F4 74A20825 */  addiu      $t0, $t0, %lo(D_8011A274)
    /* B18F8 800C10F8 D1001624 */  addiu      $s6, $zero, 0xD1
  .L800C10FC:
    /* B18FC 800C10FC 00000291 */  lbu        $v0, 0x0($t0)
    /* B1900 800C1100 00000000 */  nop
    /* B1904 800C1104 07104202 */  srav       $v0, $v0, $s2
    /* B1908 800C1108 01004230 */  andi       $v0, $v0, 0x1
    /* B190C 800C110C 07004014 */  bnez       $v0, .L800C112C
    /* B1910 800C1110 21300000 */   addu      $a2, $zero, $zero
    /* B1914 800C1114 02000291 */  lbu        $v0, 0x2($t0)
    /* B1918 800C1118 00000000 */  nop
    /* B191C 800C111C 07104202 */  srav       $v0, $v0, $s2
    /* B1920 800C1120 01004230 */  andi       $v0, $v0, 0x1
    /* B1924 800C1124 3B004010 */  beqz       $v0, .L800C1214
    /* B1928 800C1128 00000000 */   nop
  .L800C112C:
    /* B192C 800C112C 21980000 */  addu       $s3, $zero, $zero
    /* B1930 800C1130 3800C01B */  blez       $fp, .L800C1214
    /* B1934 800C1134 21280000 */   addu      $a1, $zero, $zero
    /* B1938 800C1138 1280153C */  lui        $s5, %hi(D_8011A748)
    /* B193C 800C113C 48A7B526 */  addiu      $s5, $s5, %lo(D_8011A748)
    /* B1940 800C1140 21A00000 */  addu       $s4, $zero, $zero
  .L800C1144:
    /* B1944 800C1144 9600622A */  slti       $v0, $s3, 0x96
    /* B1948 800C1148 32004010 */  beqz       $v0, .L800C1214
    /* B194C 800C114C EB51023C */   lui       $v0, (0x51EB851F >> 16)
    /* B1950 800C1150 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* B1954 800C1154 18008202 */  mult       $s4, $v0
    /* B1958 800C1158 2110B202 */  addu       $v0, $s5, $s2
    /* B195C 800C115C 00004390 */  lbu        $v1, 0x0($v0)
    /* B1960 800C1160 00000000 */  nop
    /* B1964 800C1164 40100300 */  sll        $v0, $v1, 1
    /* B1968 800C1168 21104300 */  addu       $v0, $v0, $v1
    /* B196C 800C116C C0100200 */  sll        $v0, $v0, 3
    /* B1970 800C1170 23104300 */  subu       $v0, $v0, $v1
    /* B1974 800C1174 10200000 */  mfhi       $a0
    /* B1978 800C1178 C0100200 */  sll        $v0, $v0, 3
    /* B197C 800C117C 03190400 */  sra        $v1, $a0, 4
    /* B1980 800C1180 1A005700 */  div        $zero, $v0, $s7
    /* B1984 800C1184 0200E016 */  bnez       $s7, .L800C1190
    /* B1988 800C1188 00000000 */   nop
    /* B198C 800C118C 0D000700 */  break      7
  .L800C1190:
    /* B1990 800C1190 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B1994 800C1194 0400E116 */  bne        $s7, $at, .L800C11A8
    /* B1998 800C1198 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B199C 800C119C 02004114 */  bne        $v0, $at, .L800C11A8
    /* B19A0 800C11A0 00000000 */   nop
    /* B19A4 800C11A4 0D000600 */  break      6
  .L800C11A8:
    /* B19A8 800C11A8 12880000 */  mflo       $s1
    /* B19AC 800C11AC C3171400 */  sra        $v0, $s4, 31
    /* B19B0 800C11B0 23806200 */  subu       $s0, $v1, $v0
    /* B19B4 800C11B4 2001022A */  slti       $v0, $s0, 0x120
    /* B19B8 800C11B8 02004014 */  bnez       $v0, .L800C11C4
    /* B19BC 800C11BC 00000000 */   nop
    /* B19C0 800C11C0 1F011024 */  addiu      $s0, $zero, 0x11F
  .L800C11C4:
    /* B19C4 800C11C4 1100A524 */  addiu      $a1, $a1, 0x11
    /* B19C8 800C11C8 2330C602 */  subu       $a2, $s6, $a2
    /* B19CC 800C11CC 11000726 */  addiu      $a3, $s0, 0x11
    /* B19D0 800C11D0 0800B526 */  addiu      $s5, $s5, 0x8
    /* B19D4 800C11D4 68009426 */  addiu      $s4, $s4, 0x68
    /* B19D8 800C11D8 01007326 */  addiu      $s3, $s3, 0x1
    /* B19DC 800C11DC 440B848F */  lw         $a0, %gp_rel(D_8015901C)($gp)
    /* B19E0 800C11E0 2310D102 */  subu       $v0, $s6, $s1
    /* B19E4 800C11E4 1000A2AF */  sw         $v0, 0x10($sp)
    /* B19E8 800C11E8 12000224 */  addiu      $v0, $zero, 0x12
    /* B19EC 800C11EC 1400A2AF */  sw         $v0, 0x14($sp)
    /* B19F0 800C11F0 7413020C */  jal        func_80084DD0
    /* B19F4 800C11F4 5800A8AF */   sw        $t0, 0x58($sp)
    /* B19F8 800C11F8 21280002 */  addu       $a1, $s0, $zero
    /* B19FC 800C11FC 2A107E02 */  slt        $v0, $s3, $fp
    /* B1A00 800C1200 1F01A328 */  slti       $v1, $a1, 0x11F
    /* B1A04 800C1204 24104300 */  and        $v0, $v0, $v1
    /* B1A08 800C1208 5800A88F */  lw         $t0, 0x58($sp)
    /* B1A0C 800C120C CDFF4014 */  bnez       $v0, .L800C1144
    /* B1A10 800C1210 21302002 */   addu      $a2, $s1, $zero
  .L800C1214:
    /* B1A14 800C1214 01005226 */  addiu      $s2, $s2, 0x1
    /* B1A18 800C1218 0800422A */  slti       $v0, $s2, 0x8
    /* B1A1C 800C121C B7FF4014 */  bnez       $v0, .L800C10FC
    /* B1A20 800C1220 78050924 */   addiu     $t1, $zero, 0x578
    /* B1A24 800C1224 01001224 */  addiu      $s2, $zero, 0x1
    /* B1A28 800C1228 4800A9AF */  sw         $t1, 0x48($sp)
    /* B1A2C 800C122C 2500093C */  lui        $t1, (0x250000 >> 16)
    /* B1A30 800C1230 5000A9AF */  sw         $t1, 0x50($sp)
  .L800C1234:
    /* B1A34 800C1234 0800422A */  slti       $v0, $s2, 0x8
    /* B1A38 800C1238 80004010 */  beqz       $v0, .L800C143C
    /* B1A3C 800C123C 00000000 */   nop
    /* B1A40 800C1240 1280023C */  lui        $v0, %hi(D_8011A274)
    /* B1A44 800C1244 74A24290 */  lbu        $v0, %lo(D_8011A274)($v0)
    /* B1A48 800C1248 00000000 */  nop
    /* B1A4C 800C124C 07104202 */  srav       $v0, $v0, $s2
    /* B1A50 800C1250 01004230 */  andi       $v0, $v0, 0x1
    /* B1A54 800C1254 08004014 */  bnez       $v0, .L800C1278
    /* B1A58 800C1258 00000000 */   nop
    /* B1A5C 800C125C 1280023C */  lui        $v0, %hi(D_8011A276)
    /* B1A60 800C1260 76A24290 */  lbu        $v0, %lo(D_8011A276)($v0)
    /* B1A64 800C1264 00000000 */  nop
    /* B1A68 800C1268 07104202 */  srav       $v0, $v0, $s2
    /* B1A6C 800C126C 01004230 */  andi       $v0, $v0, 0x1
    /* B1A70 800C1270 6D004010 */  beqz       $v0, .L800C1428
    /* B1A74 800C1274 00000000 */   nop
  .L800C1278:
    /* B1A78 800C1278 0E004012 */  beqz       $s2, .L800C12B4
    /* B1A7C 800C127C 00000000 */   nop
    /* B1A80 800C1280 4800A98F */  lw         $t1, 0x48($sp)
    /* B1A84 800C1284 1180013C */  lui        $at, %hi(D_80117698)
    /* B1A88 800C1288 21082900 */  addu       $at, $at, $t1
    /* B1A8C 800C128C 98762284 */  lh         $v0, %lo(D_80117698)($at)
    /* B1A90 800C1290 00000000 */  nop
    /* B1A94 800C1294 40180200 */  sll        $v1, $v0, 1
    /* B1A98 800C1298 21186200 */  addu       $v1, $v1, $v0
    /* B1A9C 800C129C 00190300 */  sll        $v1, $v1, 4
    /* B1AA0 800C12A0 1180013C */  lui        $at, %hi(D_80116AD6)
    /* B1AA4 800C12A4 21082300 */  addu       $at, $at, $v1
    /* B1AA8 800C12A8 D66A2284 */  lh         $v0, %lo(D_80116AD6)($at)
    /* B1AAC 800C12AC AE040308 */  j          .L800C12B8
    /* B1AB0 800C12B0 C0100200 */   sll       $v0, $v0, 3
  .L800C12B4:
    /* B1AB4 800C12B4 21100000 */  addu       $v0, $zero, $zero
  .L800C12B8:
    /* B1AB8 800C12B8 1180013C */  lui        $at, %hi(D_80117650)
    /* B1ABC 800C12BC 21082200 */  addu       $at, $at, $v0
    /* B1AC0 800C12C0 50763684 */  lh         $s6, %lo(D_80117650)($at)
    /* B1AC4 800C12C4 21980000 */  addu       $s3, $zero, $zero
    /* B1AC8 800C12C8 3E0C040C */  jal        func_801030F8
    /* B1ACC 800C12CC 2120C002 */   addu      $a0, $s6, $zero
    /* B1AD0 800C12D0 0C00023C */  lui        $v0, (0xC0000 >> 16)
    /* B1AD4 800C12D4 5000A98F */  lw         $t1, 0x50($sp)
    /* B1AD8 800C12D8 440B838F */  lw         $v1, %gp_rel(D_8015901C)($gp)
    /* B1ADC 800C12DC 21482201 */  addu       $t1, $t1, $v0
    /* B1AE0 800C12E0 40101600 */  sll        $v0, $s6, 1
    /* B1AE4 800C12E4 5000A9AF */  sw         $t1, 0x50($sp)
    /* B1AE8 800C12E8 1C00638C */  lw         $v1, 0x1C($v1)
    /* B1AEC 800C12EC 21105600 */  addu       $v0, $v0, $s6
    /* B1AF0 800C12F0 1180013C */  lui        $at, %hi(D_8010CB00)
    /* B1AF4 800C12F4 21082200 */  addu       $at, $at, $v0
    /* B1AF8 800C12F8 00CB2580 */  lb         $a1, %lo(D_8010CB00)($at)
    /* B1AFC 800C12FC 1180013C */  lui        $at, %hi(D_8010CB01)
    /* B1B00 800C1300 21082200 */  addu       $at, $at, $v0
    /* B1B04 800C1304 01CB2680 */  lb         $a2, %lo(D_8010CB01)($at)
    /* B1B08 800C1308 1180013C */  lui        $at, %hi(D_8010CB02)
    /* B1B0C 800C130C 21082200 */  addu       $at, $at, $v0
    /* B1B10 800C1310 02CB2780 */  lb         $a3, %lo(D_8010CB02)($at)
    /* B1B14 800C1314 080065A0 */  sb         $a1, 0x8($v1)
    /* B1B18 800C1318 090066A0 */  sb         $a2, 0x9($v1)
    /* B1B1C 800C131C 0A0067A0 */  sb         $a3, 0xA($v1)
    /* B1B20 800C1320 5D54020C */  jal        func_80095174
    /* B1B24 800C1324 21204002 */   addu      $a0, $s2, $zero
    /* B1B28 800C1328 21284000 */  addu       $a1, $v0, $zero
    /* B1B2C 800C132C 28000624 */  addiu      $a2, $zero, 0x28
    /* B1B30 800C1330 5000A98F */  lw         $t1, 0x50($sp)
    /* B1B34 800C1334 440B848F */  lw         $a0, %gp_rel(D_8015901C)($gp)
    /* B1B38 800C1338 10000224 */  addiu      $v0, $zero, 0x10
    /* B1B3C 800C133C 1000A2AF */  sw         $v0, 0x10($sp)
    /* B1B40 800C1340 59E7030C */  jal        func_800F9D64
    /* B1B44 800C1344 033C0900 */   sra       $a3, $t1, 16
    /* B1B48 800C1348 21300000 */  addu       $a2, $zero, $zero
    /* B1B4C 800C134C 3600C01B */  blez       $fp, .L800C1428
    /* B1B50 800C1350 21280000 */   addu      $a1, $zero, $zero
    /* B1B54 800C1354 1280153C */  lui        $s5, %hi(D_8011A748)
    /* B1B58 800C1358 48A7B526 */  addiu      $s5, $s5, %lo(D_8011A748)
    /* B1B5C 800C135C 21A00000 */  addu       $s4, $zero, $zero
  .L800C1360:
    /* B1B60 800C1360 9600622A */  slti       $v0, $s3, 0x96
    /* B1B64 800C1364 30004010 */  beqz       $v0, .L800C1428
    /* B1B68 800C1368 EB51023C */   lui       $v0, (0x51EB851F >> 16)
    /* B1B6C 800C136C 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* B1B70 800C1370 18008202 */  mult       $s4, $v0
    /* B1B74 800C1374 2110B202 */  addu       $v0, $s5, $s2
    /* B1B78 800C1378 00004390 */  lbu        $v1, 0x0($v0)
    /* B1B7C 800C137C 00000000 */  nop
    /* B1B80 800C1380 40100300 */  sll        $v0, $v1, 1
    /* B1B84 800C1384 21104300 */  addu       $v0, $v0, $v1
    /* B1B88 800C1388 C0100200 */  sll        $v0, $v0, 3
    /* B1B8C 800C138C 23104300 */  subu       $v0, $v0, $v1
    /* B1B90 800C1390 10200000 */  mfhi       $a0
    /* B1B94 800C1394 C0100200 */  sll        $v0, $v0, 3
    /* B1B98 800C1398 03190400 */  sra        $v1, $a0, 4
    /* B1B9C 800C139C 1A005700 */  div        $zero, $v0, $s7
    /* B1BA0 800C13A0 0200E016 */  bnez       $s7, .L800C13AC
    /* B1BA4 800C13A4 00000000 */   nop
    /* B1BA8 800C13A8 0D000700 */  break      7
  .L800C13AC:
    /* B1BAC 800C13AC FFFF0124 */  addiu      $at, $zero, -0x1
    /* B1BB0 800C13B0 0400E116 */  bne        $s7, $at, .L800C13C4
    /* B1BB4 800C13B4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B1BB8 800C13B8 02004114 */  bne        $v0, $at, .L800C13C4
    /* B1BBC 800C13BC 00000000 */   nop
    /* B1BC0 800C13C0 0D000600 */  break      6
  .L800C13C4:
    /* B1BC4 800C13C4 12880000 */  mflo       $s1
    /* B1BC8 800C13C8 C3171400 */  sra        $v0, $s4, 31
    /* B1BCC 800C13CC 23806200 */  subu       $s0, $v1, $v0
    /* B1BD0 800C13D0 2001022A */  slti       $v0, $s0, 0x120
    /* B1BD4 800C13D4 02004014 */  bnez       $v0, .L800C13E0
    /* B1BD8 800C13D8 00000000 */   nop
    /* B1BDC 800C13DC 1F011024 */  addiu      $s0, $zero, 0x11F
  .L800C13E0:
    /* B1BE0 800C13E0 1000A524 */  addiu      $a1, $a1, 0x10
    /* B1BE4 800C13E4 D0000924 */  addiu      $t1, $zero, 0xD0
    /* B1BE8 800C13E8 23302601 */  subu       $a2, $t1, $a2
    /* B1BEC 800C13EC 10000726 */  addiu      $a3, $s0, 0x10
    /* B1BF0 800C13F0 0800B526 */  addiu      $s5, $s5, 0x8
    /* B1BF4 800C13F4 68009426 */  addiu      $s4, $s4, 0x68
    /* B1BF8 800C13F8 01007326 */  addiu      $s3, $s3, 0x1
    /* B1BFC 800C13FC 440B848F */  lw         $a0, %gp_rel(D_8015901C)($gp)
    /* B1C00 800C1400 23103101 */  subu       $v0, $t1, $s1
    /* B1C04 800C1404 1000A2AF */  sw         $v0, 0x10($sp)
    /* B1C08 800C1408 7413020C */  jal        func_80084DD0
    /* B1C0C 800C140C 1400B6AF */   sw        $s6, 0x14($sp)
    /* B1C10 800C1410 21280002 */  addu       $a1, $s0, $zero
    /* B1C14 800C1414 2A107E02 */  slt        $v0, $s3, $fp
    /* B1C18 800C1418 1F01A328 */  slti       $v1, $a1, 0x11F
    /* B1C1C 800C141C 24104300 */  and        $v0, $v0, $v1
    /* B1C20 800C1420 CFFF4014 */  bnez       $v0, .L800C1360
    /* B1C24 800C1424 21302002 */   addu      $a2, $s1, $zero
  .L800C1428:
    /* B1C28 800C1428 4800A98F */  lw         $t1, 0x48($sp)
    /* B1C2C 800C142C 01005226 */  addiu      $s2, $s2, 0x1
    /* B1C30 800C1430 78052925 */  addiu      $t1, $t1, 0x578
    /* B1C34 800C1434 8D040308 */  j          .L800C1234
    /* B1C38 800C1438 4800A9AF */   sw        $t1, 0x48($sp)
  .L800C143C:
    /* B1C3C 800C143C 3E0C040C */  jal        func_801030F8
    /* B1C40 800C1440 01000424 */   addiu     $a0, $zero, 0x1
    /* B1C44 800C1444 21200000 */  addu       $a0, $zero, $zero
    /* B1C48 800C1448 0180053C */  lui        $a1, %hi(D_800124C4)
    /* B1C4C 800C144C C424A524 */  addiu      $a1, $a1, %lo(D_800124C4)
    /* B1C50 800C1450 12000624 */  addiu      $a2, $zero, 0x12
    /* B1C54 800C1454 1800A727 */  addiu      $a3, $sp, 0x18
    /* B1C58 800C1458 60000224 */  addiu      $v0, $zero, 0x60
    /* B1C5C 800C145C 1800A2A7 */  sh         $v0, 0x18($sp)
    /* B1C60 800C1460 10000224 */  addiu      $v0, $zero, 0x10
    /* B1C64 800C1464 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* B1C68 800C1468 40010224 */  addiu      $v0, $zero, 0x140
    /* B1C6C 800C146C 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* B1C70 800C1470 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B1C74 800C1474 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* B1C78 800C1478 10000224 */  addiu      $v0, $zero, 0x10
    /* B1C7C 800C147C 320F040C */  jal        func_80103CC8
    /* B1C80 800C1480 1000A2AF */   sw        $v0, 0x10($sp)
    /* B1C84 800C1484 8400BF8F */  lw         $ra, 0x84($sp)
    /* B1C88 800C1488 8000BE8F */  lw         $fp, 0x80($sp)
    /* B1C8C 800C148C 7C00B78F */  lw         $s7, 0x7C($sp)
    /* B1C90 800C1490 7800B68F */  lw         $s6, 0x78($sp)
    /* B1C94 800C1494 7400B58F */  lw         $s5, 0x74($sp)
    /* B1C98 800C1498 7000B48F */  lw         $s4, 0x70($sp)
    /* B1C9C 800C149C 6C00B38F */  lw         $s3, 0x6C($sp)
    /* B1CA0 800C14A0 6800B28F */  lw         $s2, 0x68($sp)
    /* B1CA4 800C14A4 6400B18F */  lw         $s1, 0x64($sp)
    /* B1CA8 800C14A8 6000B08F */  lw         $s0, 0x60($sp)
    /* B1CAC 800C14AC 8800BD27 */  addiu      $sp, $sp, 0x88
    /* B1CB0 800C14B0 0800E003 */  jr         $ra
    /* B1CB4 800C14B4 00000000 */   nop
endlabel func_800C0C80
