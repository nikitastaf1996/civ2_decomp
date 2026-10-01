.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B0F04, 0x1FC

glabel func_800B0F04
    /* A1704 800B0F04 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* A1708 800B0F08 3400BFAF */  sw         $ra, 0x34($sp)
    /* A170C 800B0F0C 3000B6AF */  sw         $s6, 0x30($sp)
    /* A1710 800B0F10 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* A1714 800B0F14 2800B4AF */  sw         $s4, 0x28($sp)
    /* A1718 800B0F18 2400B3AF */  sw         $s3, 0x24($sp)
    /* A171C 800B0F1C 2000B2AF */  sw         $s2, 0x20($sp)
    /* A1720 800B0F20 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A1724 800B0F24 1800B0AF */  sw         $s0, 0x18($sp)
    /* A1728 800B0F28 21888000 */  addu       $s1, $a0, $zero
    /* A172C 800B0F2C 21A0A000 */  addu       $s4, $a1, $zero
    /* A1730 800B0F30 21A8C000 */  addu       $s5, $a2, $zero
    /* A1734 800B0F34 21B0E000 */  addu       $s6, $a3, $zero
    /* A1738 800B0F38 21800000 */  addu       $s0, $zero, $zero
    /* A173C 800B0F3C 40101100 */  sll        $v0, $s1, 1
    /* A1740 800B0F40 21105100 */  addu       $v0, $v0, $s1
    /* A1744 800B0F44 80100200 */  sll        $v0, $v0, 2
    /* A1748 800B0F48 23105100 */  subu       $v0, $v0, $s1
    /* A174C 800B0F4C 00110200 */  sll        $v0, $v0, 4
    /* A1750 800B0F50 23105100 */  subu       $v0, $v0, $s1
    /* A1754 800B0F54 C0300200 */  sll        $a2, $v0, 3
    /* A1758 800B0F58 00161600 */  sll        $v0, $s6, 24
    /* A175C 800B0F5C 032E0200 */  sra        $a1, $v0, 24
    /* A1760 800B0F60 4800B38F */  lw         $s3, 0x48($sp)
    /* A1764 800B0F64 4800A483 */  lb         $a0, 0x48($sp)
    /* A1768 800B0F68 40101000 */  sll        $v0, $s0, 1
  .L800B0F6C:
    /* A176C 800B0F6C 21105000 */  addu       $v0, $v0, $s0
    /* A1770 800B0F70 40100200 */  sll        $v0, $v0, 1
    /* A1774 800B0F74 21184600 */  addu       $v1, $v0, $a2
    /* A1778 800B0F78 1180013C */  lui        $at, %hi(D_80117BA8)
    /* A177C 800B0F7C 21082300 */  addu       $at, $at, $v1
    /* A1780 800B0F80 A87B2284 */  lh         $v0, %lo(D_80117BA8)($at)
    /* A1784 800B0F84 00000000 */  nop
    /* A1788 800B0F88 14005414 */  bne        $v0, $s4, .L800B0FDC
    /* A178C 800B0F8C 00000000 */   nop
    /* A1790 800B0F90 1180013C */  lui        $at, %hi(D_80117BAA)
    /* A1794 800B0F94 21082300 */  addu       $at, $at, $v1
    /* A1798 800B0F98 AA7B2284 */  lh         $v0, %lo(D_80117BAA)($at)
    /* A179C 800B0F9C 00000000 */  nop
    /* A17A0 800B0FA0 0E005514 */  bne        $v0, $s5, .L800B0FDC
    /* A17A4 800B0FA4 00000000 */   nop
    /* A17A8 800B0FA8 1180013C */  lui        $at, %hi(D_80117BAC)
    /* A17AC 800B0FAC 21082300 */  addu       $at, $at, $v1
    /* A17B0 800B0FB0 AC7B2280 */  lb         $v0, %lo(D_80117BAC)($at)
    /* A17B4 800B0FB4 00000000 */  nop
    /* A17B8 800B0FB8 08004514 */  bne        $v0, $a1, .L800B0FDC
    /* A17BC 800B0FBC 00000000 */   nop
    /* A17C0 800B0FC0 1180013C */  lui        $at, %hi(D_80117BAD)
    /* A17C4 800B0FC4 21082300 */  addu       $at, $at, $v1
    /* A17C8 800B0FC8 AD7B2280 */  lb         $v0, %lo(D_80117BAD)($at)
    /* A17CC 800B0FCC 00000000 */  nop
    /* A17D0 800B0FD0 2A104400 */  slt        $v0, $v0, $a0
    /* A17D4 800B0FD4 3F004010 */  beqz       $v0, .L800B10D4
    /* A17D8 800B0FD8 00000000 */   nop
  .L800B0FDC:
    /* A17DC 800B0FDC 01001026 */  addiu      $s0, $s0, 0x1
    /* A17E0 800B0FE0 1000022A */  slti       $v0, $s0, 0x10
    /* A17E4 800B0FE4 E1FF4014 */  bnez       $v0, .L800B0F6C
    /* A17E8 800B0FE8 40101000 */   sll       $v0, $s0, 1
    /* A17EC 800B0FEC 21800000 */  addu       $s0, $zero, $zero
    /* A17F0 800B0FF0 40101100 */  sll        $v0, $s1, 1
    /* A17F4 800B0FF4 21105100 */  addu       $v0, $v0, $s1
    /* A17F8 800B0FF8 80100200 */  sll        $v0, $v0, 2
    /* A17FC 800B0FFC 23105100 */  subu       $v0, $v0, $s1
    /* A1800 800B1000 00110200 */  sll        $v0, $v0, 4
    /* A1804 800B1004 23105100 */  subu       $v0, $v0, $s1
    /* A1808 800B1008 C0280200 */  sll        $a1, $v0, 3
    /* A180C 800B100C 40101100 */  sll        $v0, $s1, 1
    /* A1810 800B1010 21105100 */  addu       $v0, $v0, $s1
    /* A1814 800B1014 80900200 */  sll        $s2, $v0, 2
    /* A1818 800B1018 23905102 */  subu       $s2, $s2, $s1
    /* A181C 800B101C 40101000 */  sll        $v0, $s0, 1
  .L800B1020:
    /* A1820 800B1020 21105000 */  addu       $v0, $v0, $s0
    /* A1824 800B1024 40100200 */  sll        $v0, $v0, 1
    /* A1828 800B1028 21204500 */  addu       $a0, $v0, $a1
    /* A182C 800B102C 1180013C */  lui        $at, %hi(D_80117BAD)
    /* A1830 800B1030 21082400 */  addu       $at, $at, $a0
    /* A1834 800B1034 AD7B2380 */  lb         $v1, %lo(D_80117BAD)($at)
    /* A1838 800B1038 00161300 */  sll        $v0, $s3, 24
    /* A183C 800B103C 03160200 */  sra        $v0, $v0, 24
    /* A1840 800B1040 2A186200 */  slt        $v1, $v1, $v0
    /* A1844 800B1044 07006014 */  bnez       $v1, .L800B1064
    /* A1848 800B1048 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A184C 800B104C 1180013C */  lui        $at, %hi(D_80117BAC)
    /* A1850 800B1050 21082400 */  addu       $at, $at, $a0
    /* A1854 800B1054 AC7B2380 */  lb         $v1, %lo(D_80117BAC)($at)
    /* A1858 800B1058 00000000 */  nop
    /* A185C 800B105C 19006214 */  bne        $v1, $v0, .L800B10C4
    /* A1860 800B1060 00000000 */   nop
  .L800B1064:
    /* A1864 800B1064 21202002 */  addu       $a0, $s1, $zero
    /* A1868 800B1068 5FC2020C */  jal        func_800B097C
    /* A186C 800B106C 21280002 */   addu      $a1, $s0, $zero
    /* A1870 800B1070 40181000 */  sll        $v1, $s0, 1
    /* A1874 800B1074 21187000 */  addu       $v1, $v1, $s0
    /* A1878 800B1078 40180300 */  sll        $v1, $v1, 1
    /* A187C 800B107C 00111200 */  sll        $v0, $s2, 4
    /* A1880 800B1080 23105100 */  subu       $v0, $v0, $s1
    /* A1884 800B1084 C0100200 */  sll        $v0, $v0, 3
    /* A1888 800B1088 21186200 */  addu       $v1, $v1, $v0
    /* A188C 800B108C 1180013C */  lui        $at, %hi(D_80117BA8)
    /* A1890 800B1090 21082300 */  addu       $at, $at, $v1
    /* A1894 800B1094 A87B34A4 */  sh         $s4, %lo(D_80117BA8)($at)
    /* A1898 800B1098 1180013C */  lui        $at, %hi(D_80117BAA)
    /* A189C 800B109C 21082300 */  addu       $at, $at, $v1
    /* A18A0 800B10A0 AA7B35A4 */  sh         $s5, %lo(D_80117BAA)($at)
    /* A18A4 800B10A4 1180013C */  lui        $at, %hi(D_80117BAC)
    /* A18A8 800B10A8 21082300 */  addu       $at, $at, $v1
    /* A18AC 800B10AC AC7B36A0 */  sb         $s6, %lo(D_80117BAC)($at)
    /* A18B0 800B10B0 1180013C */  lui        $at, %hi(D_80117BAD)
    /* A18B4 800B10B4 21082300 */  addu       $at, $at, $v1
    /* A18B8 800B10B8 AD7B33A0 */  sb         $s3, %lo(D_80117BAD)($at)
    /* A18BC 800B10BC 35C40208 */  j          .L800B10D4
    /* A18C0 800B10C0 00000000 */   nop
  .L800B10C4:
    /* A18C4 800B10C4 01001026 */  addiu      $s0, $s0, 0x1
    /* A18C8 800B10C8 1000022A */  slti       $v0, $s0, 0x10
    /* A18CC 800B10CC D4FF4014 */  bnez       $v0, .L800B1020
    /* A18D0 800B10D0 40101000 */   sll       $v0, $s0, 1
  .L800B10D4:
    /* A18D4 800B10D4 3400BF8F */  lw         $ra, 0x34($sp)
    /* A18D8 800B10D8 3000B68F */  lw         $s6, 0x30($sp)
    /* A18DC 800B10DC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* A18E0 800B10E0 2800B48F */  lw         $s4, 0x28($sp)
    /* A18E4 800B10E4 2400B38F */  lw         $s3, 0x24($sp)
    /* A18E8 800B10E8 2000B28F */  lw         $s2, 0x20($sp)
    /* A18EC 800B10EC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A18F0 800B10F0 1800B08F */  lw         $s0, 0x18($sp)
    /* A18F4 800B10F4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* A18F8 800B10F8 0800E003 */  jr         $ra
    /* A18FC 800B10FC 00000000 */   nop
endlabel func_800B0F04
