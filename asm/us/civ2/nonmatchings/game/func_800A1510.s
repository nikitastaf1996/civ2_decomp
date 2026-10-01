.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A1510, 0x130

glabel func_800A1510
    /* 91D10 800A1510 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 91D14 800A1514 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 91D18 800A1518 1800B2AF */  sw         $s2, 0x18($sp)
    /* 91D1C 800A151C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 91D20 800A1520 1000B0AF */  sw         $s0, 0x10($sp)
    /* 91D24 800A1524 21888000 */  addu       $s1, $a0, $zero
    /* 91D28 800A1528 2C022296 */  lhu        $v0, 0x22C($s1)
    /* 91D2C 800A152C 00000000 */  nop
    /* 91D30 800A1530 01005230 */  andi       $s2, $v0, 0x1
    /* 91D34 800A1534 2C022296 */  lhu        $v0, 0x22C($s1)
    /* 91D38 800A1538 00000000 */  nop
    /* 91D3C 800A153C 02004230 */  andi       $v0, $v0, 0x2
    /* 91D40 800A1540 02004010 */  beqz       $v0, .L800A154C
    /* 91D44 800A1544 00000000 */   nop
    /* 91D48 800A1548 02005226 */  addiu      $s2, $s2, 0x2
  .L800A154C:
    /* 91D4C 800A154C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 91D50 800A1550 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 91D54 800A1554 CB1A030C */  jal        func_800C6B2C
    /* 91D58 800A1558 00000000 */   nop
    /* 91D5C 800A155C 28022286 */  lh         $v0, 0x228($s1)
    /* 91D60 800A1560 00000000 */  nop
    /* 91D64 800A1564 1D004014 */  bnez       $v0, .L800A15DC
    /* 91D68 800A1568 01001024 */   addiu     $s0, $zero, 0x1
    /* 91D6C 800A156C 1680033C */  lui        $v1, %hi(D_8015887C)
    /* 91D70 800A1570 7C88638C */  lw         $v1, %lo(D_8015887C)($v1)
    /* 91D74 800A1574 01000224 */  addiu      $v0, $zero, 0x1
    /* 91D78 800A1578 18006210 */  beq        $v1, $v0, .L800A15DC
    /* 91D7C 800A157C 21800000 */   addu      $s0, $zero, $zero
    /* 91D80 800A1580 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* 91D84 800A1584 B4AC848C */  lw         $a0, %lo(D_8011ACB4)($a0)
    /* 91D88 800A1588 8A54020C */  jal        func_80095228
    /* 91D8C 800A158C 00000000 */   nop
    /* 91D90 800A1590 1280043C */  lui        $a0, %hi(D_80121340)
    /* 91D94 800A1594 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 91D98 800A1598 801B030C */  jal        func_800C6E00
    /* 91D9C 800A159C 21284000 */   addu      $a1, $v0, $zero
    /* 91DA0 800A15A0 1680033C */  lui        $v1, %hi(D_8015887C)
    /* 91DA4 800A15A4 7C88638C */  lw         $v1, %lo(D_8015887C)($v1)
    /* 91DA8 800A15A8 02000224 */  addiu      $v0, $zero, 0x2
    /* 91DAC 800A15AC 07006214 */  bne        $v1, $v0, .L800A15CC
    /* 91DB0 800A15B0 00000000 */   nop
    /* 91DB4 800A15B4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 91DB8 800A15B8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 91DBC 800A15BC 1680053C */  lui        $a1, %hi(D_80158A5C)
    /* 91DC0 800A15C0 5C8AA524 */  addiu      $a1, $a1, %lo(D_80158A5C)
    /* 91DC4 800A15C4 9987030C */  jal        func_800E1E64
    /* 91DC8 800A15C8 00000000 */   nop
  .L800A15CC:
    /* 91DCC 800A15CC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 91DD0 800A15D0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 91DD4 800A15D4 CD1A030C */  jal        func_800C6B34
    /* 91DD8 800A15D8 21800000 */   addu      $s0, $zero, $zero
  .L800A15DC:
    /* 91DDC 800A15DC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 91DE0 800A15E0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 91DE4 800A15E4 731B030C */  jal        func_800C6DCC
    /* 91DE8 800A15E8 04000524 */   addiu     $a1, $zero, 0x4
    /* 91DEC 800A15EC 09000012 */  beqz       $s0, .L800A1614
    /* 91DF0 800A15F0 00000000 */   nop
    /* 91DF4 800A15F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 91DF8 800A15F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 91DFC 800A15FC F71A030C */  jal        func_800C6BDC
    /* 91E00 800A1600 00000000 */   nop
    /* 91E04 800A1604 1280043C */  lui        $a0, %hi(D_80121340)
    /* 91E08 800A1608 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 91E0C 800A160C 731B030C */  jal        func_800C6DCC
    /* 91E10 800A1610 2C014526 */   addiu     $a1, $s2, 0x12C
  .L800A1614:
    /* 91E14 800A1614 1280053C */  lui        $a1, %hi(D_80121340)
    /* 91E18 800A1618 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 91E1C 800A161C 8B4A020C */  jal        func_80092A2C
    /* 91E20 800A1620 21202002 */   addu      $a0, $s1, $zero
    /* 91E24 800A1624 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 91E28 800A1628 1800B28F */  lw         $s2, 0x18($sp)
    /* 91E2C 800A162C 1400B18F */  lw         $s1, 0x14($sp)
    /* 91E30 800A1630 1000B08F */  lw         $s0, 0x10($sp)
    /* 91E34 800A1634 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 91E38 800A1638 0800E003 */  jr         $ra
    /* 91E3C 800A163C 00000000 */   nop
endlabel func_800A1510
