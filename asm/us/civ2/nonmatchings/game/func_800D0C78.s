.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D0C78, 0x3C8

glabel func_800D0C78
    /* C1478 800D0C78 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* C147C 800D0C7C 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* C1480 800D0C80 6800BEAF */  sw         $fp, 0x68($sp)
    /* C1484 800D0C84 6400B7AF */  sw         $s7, 0x64($sp)
    /* C1488 800D0C88 6000B6AF */  sw         $s6, 0x60($sp)
    /* C148C 800D0C8C 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* C1490 800D0C90 5800B4AF */  sw         $s4, 0x58($sp)
    /* C1494 800D0C94 5400B3AF */  sw         $s3, 0x54($sp)
    /* C1498 800D0C98 5000B2AF */  sw         $s2, 0x50($sp)
    /* C149C 800D0C9C 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* C14A0 800D0CA0 4800B0AF */  sw         $s0, 0x48($sp)
    /* C14A4 800D0CA4 21A88000 */  addu       $s5, $a0, $zero
    /* C14A8 800D0CA8 2198A000 */  addu       $s3, $a1, $zero
    /* C14AC 800D0CAC 2000A6AF */  sw         $a2, 0x20($sp)
    /* C14B0 800D0CB0 2180E000 */  addu       $s0, $a3, $zero
    /* C14B4 800D0CB4 8000B68F */  lw         $s6, 0x80($sp)
    /* C14B8 800D0CB8 8400B78F */  lw         $s7, 0x84($sp)
    /* C14BC 800D0CBC E40EA48E */  lw         $a0, 0xEE4($s5)
    /* C14C0 800D0CC0 00000000 */  nop
    /* C14C4 800D0CC4 80240400 */  sll        $a0, $a0, 18
    /* C14C8 800D0CC8 03240400 */  sra        $a0, $a0, 16
    /* C14CC 800D0CCC D0EC030C */  jal        func_800FB340
    /* C14D0 800D0CD0 08000524 */   addiu     $a1, $zero, 0x8
    /* C14D4 800D0CD4 1680023C */  lui        $v0, %hi(D_80158864)
    /* C14D8 800D0CD8 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C14DC 800D0CDC 00000000 */  nop
    /* C14E0 800D0CE0 09004480 */  lb         $a0, 0x9($v0)
    /* C14E4 800D0CE4 1000A0AF */  sw         $zero, 0x10($sp)
    /* C14E8 800D0CE8 0F000524 */  addiu      $a1, $zero, 0xF
    /* C14EC 800D0CEC 21300002 */  addu       $a2, $s0, $zero
    /* C14F0 800D0CF0 2A1A030C */  jal        func_800C68A8
    /* C14F4 800D0CF4 21380000 */   addu      $a3, $zero, $zero
    /* C14F8 800D0CF8 21A04000 */  addu       $s4, $v0, $zero
    /* C14FC 800D0CFC 760D94A7 */  sh         $s4, %gp_rel(D_8015924E)($gp)
    /* C1500 800D0D00 21900000 */  addu       $s2, $zero, $zero
    /* C1504 800D0D04 2600C01A */  blez       $s6, .L800D0DA0
    /* C1508 800D0D08 21880000 */   addu      $s1, $zero, $zero
    /* C150C 800D0D0C 2000A88F */  lw         $t0, 0x20($sp)
    /* C1510 800D0D10 00000000 */  nop
    /* C1514 800D0D14 00140800 */  sll        $v0, $t0, 16
    /* C1518 800D0D18 03840200 */  sra        $s0, $v0, 16
  .L800D0D1C:
    /* C151C 800D0D1C 1680023C */  lui        $v0, %hi(D_80158864)
    /* C1520 800D0D20 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C1524 800D0D24 00000000 */  nop
    /* C1528 800D0D28 08004480 */  lb         $a0, 0x8($v0)
    /* C152C 800D0D2C 1663030C */  jal        func_800D8C58
    /* C1530 800D0D30 01003126 */   addiu     $s1, $s1, 0x1
    /* C1534 800D0D34 40300200 */  sll        $a2, $v0, 1
    /* C1538 800D0D38 2130C200 */  addu       $a2, $a2, $v0
    /* C153C 800D0D3C 00190600 */  sll        $v1, $a2, 4
    /* C1540 800D0D40 2130C300 */  addu       $a2, $a2, $v1
    /* C1544 800D0D44 C0300600 */  sll        $a2, $a2, 3
    /* C1548 800D0D48 2330C200 */  subu       $a2, $a2, $v0
    /* C154C 800D0D4C 80300600 */  sll        $a2, $a2, 2
    /* C1550 800D0D50 1380023C */  lui        $v0, %hi(D_8012E3EC)
    /* C1554 800D0D54 ECE34224 */  addiu      $v0, $v0, %lo(D_8012E3EC)
    /* C1558 800D0D58 2130C200 */  addu       $a2, $a2, $v0
    /* C155C 800D0D5C 01004232 */  andi       $v0, $s2, 0x1
    /* C1560 800D0D60 C0280200 */  sll        $a1, $v0, 3
    /* C1564 800D0D64 2128A200 */  addu       $a1, $a1, $v0
    /* C1568 800D0D68 80280500 */  sll        $a1, $a1, 2
    /* C156C 800D0D6C 2128A200 */  addu       $a1, $a1, $v0
    /* C1570 800D0D70 80280500 */  sll        $a1, $a1, 2
    /* C1574 800D0D74 003C1300 */  sll        $a3, $s3, 16
    /* C1578 800D0D78 1000B0AF */  sw         $s0, 0x10($sp)
    /* C157C 800D0D7C 1800A427 */  addiu      $a0, $sp, 0x18
    /* C1580 800D0D80 2128C500 */  addu       $a1, $a2, $a1
    /* C1584 800D0D84 2130A002 */  addu       $a2, $s5, $zero
    /* C1588 800D0D88 89EE030C */  jal        func_800FBA24
    /* C158C 800D0D8C 033C0700 */   sra       $a3, $a3, 16
    /* C1590 800D0D90 21987402 */  addu       $s3, $s3, $s4
    /* C1594 800D0D94 2A103602 */  slt        $v0, $s1, $s6
    /* C1598 800D0D98 E0FF4014 */  bnez       $v0, .L800D0D1C
    /* C159C 800D0D9C 01005226 */   addiu     $s2, $s2, 0x1
  .L800D0DA0:
    /* C15A0 800D0DA0 1680023C */  lui        $v0, %hi(D_80158864)
    /* C15A4 800D0DA4 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C15A8 800D0DA8 00000000 */  nop
    /* C15AC 800D0DAC 21284000 */  addu       $a1, $v0, $zero
    /* C15B0 800D0DB0 09004480 */  lb         $a0, 0x9($v0)
    /* C15B4 800D0DB4 2110D702 */  addu       $v0, $s6, $s7
    /* C15B8 800D0DB8 1680033C */  lui        $v1, %hi(D_8015858C)
    /* C15BC 800D0DBC 8C85638C */  lw         $v1, %lo(D_8015858C)($v1)
    /* C15C0 800D0DC0 00000000 */  nop
    /* C15C4 800D0DC4 21104300 */  addu       $v0, $v0, $v1
    /* C15C8 800D0DC8 23208200 */  subu       $a0, $a0, $v0
    /* C15CC 800D0DCC 2D008018 */  blez       $a0, .L800D0E84
    /* C15D0 800D0DD0 21880000 */   addu      $s1, $zero, $zero
    /* C15D4 800D0DD4 2000A88F */  lw         $t0, 0x20($sp)
    /* C15D8 800D0DD8 00000000 */  nop
    /* C15DC 800D0DDC 00140800 */  sll        $v0, $t0, 16
    /* C15E0 800D0DE0 03F40200 */  sra        $fp, $v0, 16
    /* C15E4 800D0DE4 2180D702 */  addu       $s0, $s6, $s7
  .L800D0DE8:
    /* C15E8 800D0DE8 0800A480 */  lb         $a0, 0x8($a1)
    /* C15EC 800D0DEC 1663030C */  jal        func_800D8C58
    /* C15F0 800D0DF0 01003126 */   addiu     $s1, $s1, 0x1
    /* C15F4 800D0DF4 40300200 */  sll        $a2, $v0, 1
    /* C15F8 800D0DF8 2130C200 */  addu       $a2, $a2, $v0
    /* C15FC 800D0DFC 00190600 */  sll        $v1, $a2, 4
    /* C1600 800D0E00 2130C300 */  addu       $a2, $a2, $v1
    /* C1604 800D0E04 C0300600 */  sll        $a2, $a2, 3
    /* C1608 800D0E08 2330C200 */  subu       $a2, $a2, $v0
    /* C160C 800D0E0C 80300600 */  sll        $a2, $a2, 2
    /* C1610 800D0E10 1380023C */  lui        $v0, %hi(D_8012E514)
    /* C1614 800D0E14 14E54224 */  addiu      $v0, $v0, %lo(D_8012E514)
    /* C1618 800D0E18 2130C200 */  addu       $a2, $a2, $v0
    /* C161C 800D0E1C 01004232 */  andi       $v0, $s2, 0x1
    /* C1620 800D0E20 C0280200 */  sll        $a1, $v0, 3
    /* C1624 800D0E24 2128A200 */  addu       $a1, $a1, $v0
    /* C1628 800D0E28 80280500 */  sll        $a1, $a1, 2
    /* C162C 800D0E2C 2128A200 */  addu       $a1, $a1, $v0
    /* C1630 800D0E30 80280500 */  sll        $a1, $a1, 2
    /* C1634 800D0E34 003C1300 */  sll        $a3, $s3, 16
    /* C1638 800D0E38 1000BEAF */  sw         $fp, 0x10($sp)
    /* C163C 800D0E3C 1800A427 */  addiu      $a0, $sp, 0x18
    /* C1640 800D0E40 2128C500 */  addu       $a1, $a2, $a1
    /* C1644 800D0E44 2130A002 */  addu       $a2, $s5, $zero
    /* C1648 800D0E48 89EE030C */  jal        func_800FBA24
    /* C164C 800D0E4C 033C0700 */   sra       $a3, $a3, 16
    /* C1650 800D0E50 21987402 */  addu       $s3, $s3, $s4
    /* C1654 800D0E54 1680053C */  lui        $a1, %hi(D_80158864)
    /* C1658 800D0E58 6488A58C */  lw         $a1, %lo(D_80158864)($a1)
    /* C165C 800D0E5C 00000000 */  nop
    /* C1660 800D0E60 0900A380 */  lb         $v1, 0x9($a1)
    /* C1664 800D0E64 1680023C */  lui        $v0, %hi(D_8015858C)
    /* C1668 800D0E68 8C85428C */  lw         $v0, %lo(D_8015858C)($v0)
    /* C166C 800D0E6C 00000000 */  nop
    /* C1670 800D0E70 21100202 */  addu       $v0, $s0, $v0
    /* C1674 800D0E74 23186200 */  subu       $v1, $v1, $v0
    /* C1678 800D0E78 2A182302 */  slt        $v1, $s1, $v1
    /* C167C 800D0E7C DAFF6014 */  bnez       $v1, .L800D0DE8
    /* C1680 800D0E80 01005226 */   addiu     $s2, $s2, 0x1
  .L800D0E84:
    /* C1684 800D0E84 2E00E01A */  blez       $s7, .L800D0F40
    /* C1688 800D0E88 21880000 */   addu      $s1, $zero, $zero
    /* C168C 800D0E8C 2000A88F */  lw         $t0, 0x20($sp)
    /* C1690 800D0E90 00000000 */  nop
    /* C1694 800D0E94 00140800 */  sll        $v0, $t0, 16
    /* C1698 800D0E98 03B40200 */  sra        $s6, $v0, 16
  .L800D0E9C:
    /* C169C 800D0E9C 8800A88F */  lw         $t0, 0x88($sp)
    /* C16A0 800D0EA0 00000000 */  nop
    /* C16A4 800D0EA4 2310E802 */  subu       $v0, $s7, $t0
    /* C16A8 800D0EA8 2A102202 */  slt        $v0, $s1, $v0
    /* C16AC 800D0EAC 02004014 */  bnez       $v0, .L800D0EB8
    /* C16B0 800D0EB0 04001024 */   addiu     $s0, $zero, 0x4
    /* C16B4 800D0EB4 06001024 */  addiu      $s0, $zero, 0x6
  .L800D0EB8:
    /* C16B8 800D0EB8 1680023C */  lui        $v0, %hi(D_80158864)
    /* C16BC 800D0EBC 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C16C0 800D0EC0 00000000 */  nop
    /* C16C4 800D0EC4 08004480 */  lb         $a0, 0x8($v0)
    /* C16C8 800D0EC8 1663030C */  jal        func_800D8C58
    /* C16CC 800D0ECC 01003126 */   addiu     $s1, $s1, 0x1
    /* C16D0 800D0ED0 40300200 */  sll        $a2, $v0, 1
    /* C16D4 800D0ED4 2130C200 */  addu       $a2, $a2, $v0
    /* C16D8 800D0ED8 00190600 */  sll        $v1, $a2, 4
    /* C16DC 800D0EDC 2130C300 */  addu       $a2, $a2, $v1
    /* C16E0 800D0EE0 C0300600 */  sll        $a2, $a2, 3
    /* C16E4 800D0EE4 2330C200 */  subu       $a2, $a2, $v0
    /* C16E8 800D0EE8 80300600 */  sll        $a2, $a2, 2
    /* C16EC 800D0EEC 1380023C */  lui        $v0, %hi(D_8012E3EC)
    /* C16F0 800D0EF0 ECE34224 */  addiu      $v0, $v0, %lo(D_8012E3EC)
    /* C16F4 800D0EF4 2130C200 */  addu       $a2, $a2, $v0
    /* C16F8 800D0EF8 01004232 */  andi       $v0, $s2, 0x1
    /* C16FC 800D0EFC 21100202 */  addu       $v0, $s0, $v0
    /* C1700 800D0F00 C0280200 */  sll        $a1, $v0, 3
    /* C1704 800D0F04 2128A200 */  addu       $a1, $a1, $v0
    /* C1708 800D0F08 80280500 */  sll        $a1, $a1, 2
    /* C170C 800D0F0C 2128A200 */  addu       $a1, $a1, $v0
    /* C1710 800D0F10 80280500 */  sll        $a1, $a1, 2
    /* C1714 800D0F14 003C1300 */  sll        $a3, $s3, 16
    /* C1718 800D0F18 1000B6AF */  sw         $s6, 0x10($sp)
    /* C171C 800D0F1C 1800A427 */  addiu      $a0, $sp, 0x18
    /* C1720 800D0F20 2128C500 */  addu       $a1, $a2, $a1
    /* C1724 800D0F24 2130A002 */  addu       $a2, $s5, $zero
    /* C1728 800D0F28 89EE030C */  jal        func_800FBA24
    /* C172C 800D0F2C 033C0700 */   sra       $a3, $a3, 16
    /* C1730 800D0F30 21987402 */  addu       $s3, $s3, $s4
    /* C1734 800D0F34 2A103702 */  slt        $v0, $s1, $s7
    /* C1738 800D0F38 D8FF4014 */  bnez       $v0, .L800D0E9C
    /* C173C 800D0F3C 01005226 */   addiu     $s2, $s2, 0x1
  .L800D0F40:
    /* C1740 800D0F40 1680023C */  lui        $v0, %hi(D_8015858C)
    /* C1744 800D0F44 8C85428C */  lw         $v0, %lo(D_8015858C)($v0)
    /* C1748 800D0F48 00000000 */  nop
    /* C174C 800D0F4C 2B004018 */  blez       $v0, .L800D0FFC
    /* C1750 800D0F50 21880000 */   addu      $s1, $zero, $zero
    /* C1754 800D0F54 2000A88F */  lw         $t0, 0x20($sp)
    /* C1758 800D0F58 00000000 */  nop
    /* C175C 800D0F5C 00140800 */  sll        $v0, $t0, 16
    /* C1760 800D0F60 03940200 */  sra        $s2, $v0, 16
  .L800D0F64:
    /* C1764 800D0F64 1680023C */  lui        $v0, %hi(D_80158864)
    /* C1768 800D0F68 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C176C 800D0F6C 00000000 */  nop
    /* C1770 800D0F70 08004480 */  lb         $a0, 0x8($v0)
    /* C1774 800D0F74 1663030C */  jal        func_800D8C58
    /* C1778 800D0F78 00000000 */   nop
    /* C177C 800D0F7C 21804000 */  addu       $s0, $v0, $zero
    /* C1780 800D0F80 C351000C */  jal        func_8001470C
    /* C1784 800D0F84 21202002 */   addu      $a0, $s1, $zero
    /* C1788 800D0F88 40301000 */  sll        $a2, $s0, 1
    /* C178C 800D0F8C 2130D000 */  addu       $a2, $a2, $s0
    /* C1790 800D0F90 00190600 */  sll        $v1, $a2, 4
    /* C1794 800D0F94 2130C300 */  addu       $a2, $a2, $v1
    /* C1798 800D0F98 C0300600 */  sll        $a2, $a2, 3
    /* C179C 800D0F9C 2330D000 */  subu       $a2, $a2, $s0
    /* C17A0 800D0FA0 80300600 */  sll        $a2, $a2, 2
    /* C17A4 800D0FA4 1380033C */  lui        $v1, %hi(D_8012E7F8)
    /* C17A8 800D0FA8 F8E76324 */  addiu      $v1, $v1, %lo(D_8012E7F8)
    /* C17AC 800D0FAC 2130C300 */  addu       $a2, $a2, $v1
    /* C17B0 800D0FB0 C0280200 */  sll        $a1, $v0, 3
    /* C17B4 800D0FB4 2128A200 */  addu       $a1, $a1, $v0
    /* C17B8 800D0FB8 80280500 */  sll        $a1, $a1, 2
    /* C17BC 800D0FBC 2128A200 */  addu       $a1, $a1, $v0
    /* C17C0 800D0FC0 80280500 */  sll        $a1, $a1, 2
    /* C17C4 800D0FC4 003C1300 */  sll        $a3, $s3, 16
    /* C17C8 800D0FC8 1000B2AF */  sw         $s2, 0x10($sp)
    /* C17CC 800D0FCC 1800A427 */  addiu      $a0, $sp, 0x18
    /* C17D0 800D0FD0 2128C500 */  addu       $a1, $a2, $a1
    /* C17D4 800D0FD4 2130A002 */  addu       $a2, $s5, $zero
    /* C17D8 800D0FD8 89EE030C */  jal        func_800FBA24
    /* C17DC 800D0FDC 033C0700 */   sra       $a3, $a3, 16
    /* C17E0 800D0FE0 01003126 */  addiu      $s1, $s1, 0x1
    /* C17E4 800D0FE4 1680023C */  lui        $v0, %hi(D_8015858C)
    /* C17E8 800D0FE8 8C85428C */  lw         $v0, %lo(D_8015858C)($v0)
    /* C17EC 800D0FEC 00000000 */  nop
    /* C17F0 800D0FF0 2A102202 */  slt        $v0, $s1, $v0
    /* C17F4 800D0FF4 DBFF4014 */  bnez       $v0, .L800D0F64
    /* C17F8 800D0FF8 21987402 */   addu      $s3, $s3, $s4
  .L800D0FFC:
    /* C17FC 800D0FFC 01000424 */  addiu      $a0, $zero, 0x1
    /* C1800 800D1000 D0EC030C */  jal        func_800FB340
    /* C1804 800D1004 01000524 */   addiu     $a1, $zero, 0x1
    /* C1808 800D1008 21108002 */  addu       $v0, $s4, $zero
    /* C180C 800D100C 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* C1810 800D1010 6800BE8F */  lw         $fp, 0x68($sp)
    /* C1814 800D1014 6400B78F */  lw         $s7, 0x64($sp)
    /* C1818 800D1018 6000B68F */  lw         $s6, 0x60($sp)
    /* C181C 800D101C 5C00B58F */  lw         $s5, 0x5C($sp)
    /* C1820 800D1020 5800B48F */  lw         $s4, 0x58($sp)
    /* C1824 800D1024 5400B38F */  lw         $s3, 0x54($sp)
    /* C1828 800D1028 5000B28F */  lw         $s2, 0x50($sp)
    /* C182C 800D102C 4C00B18F */  lw         $s1, 0x4C($sp)
    /* C1830 800D1030 4800B08F */  lw         $s0, 0x48($sp)
    /* C1834 800D1034 7000BD27 */  addiu      $sp, $sp, 0x70
    /* C1838 800D1038 0800E003 */  jr         $ra
    /* C183C 800D103C 00000000 */   nop
endlabel func_800D0C78
