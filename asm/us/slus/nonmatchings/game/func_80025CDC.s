.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80025CDC, 0xDC

glabel func_80025CDC
    /* 164DC 80025CDC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 164E0 80025CE0 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 164E4 80025CE4 2800B4AF */  sw         $s4, 0x28($sp)
    /* 164E8 80025CE8 2400B3AF */  sw         $s3, 0x24($sp)
    /* 164EC 80025CEC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 164F0 80025CF0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 164F4 80025CF4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 164F8 80025CF8 21A08000 */  addu       $s4, $a0, $zero
    /* 164FC 80025CFC 21880000 */  addu       $s1, $zero, $zero
    /* 16500 80025D00 0C011224 */  addiu      $s2, $zero, 0x10C
    /* 16504 80025D04 B0251024 */  addiu      $s0, $zero, 0x25B0
    /* 16508 80025D08 0200133C */  lui        $s3, (0x2D000 >> 16)
    /* 1650C 80025D0C 00D07336 */  ori        $s3, $s3, (0x2D000 & 0xFFFF)
  .L80025D10:
    /* 16510 80025D10 1380013C */  lui        $at, %hi(D_8012A100)
    /* 16514 80025D14 21083000 */  addu       $at, $at, $s0
    /* 16518 80025D18 00A1228C */  lw         $v0, %lo(D_8012A100)($at)
    /* 1651C 80025D1C 00000000 */  nop
    /* 16520 80025D20 21105300 */  addu       $v0, $v0, $s3
    /* 16524 80025D24 1380013C */  lui        $at, %hi(D_8012A100)
    /* 16528 80025D28 21083000 */  addu       $at, $at, $s0
    /* 1652C 80025D2C 00A122AC */  sw         $v0, %lo(D_8012A100)($at)
    /* 16530 80025D30 E976000C */  jal        func_8001DBA4
    /* 16534 80025D34 01000424 */   addiu     $a0, $zero, 0x1
    /* 16538 80025D38 01002226 */  addiu      $v0, $s1, 0x1
    /* 1653C 80025D3C 21884000 */  addu       $s1, $v0, $zero
    /* 16540 80025D40 00140200 */  sll        $v0, $v0, 16
    /* 16544 80025D44 03140200 */  sra        $v0, $v0, 16
    /* 16548 80025D48 08004228 */  slti       $v0, $v0, 0x8
    /* 1654C 80025D4C F0FF4014 */  bnez       $v0, .L80025D10
    /* 16550 80025D50 00000000 */   nop
    /* 16554 80025D54 E976000C */  jal        func_8001DBA4
    /* 16558 80025D58 01000424 */   addiu     $a0, $zero, 0x1
    /* 1655C 80025D5C C0101200 */  sll        $v0, $s2, 3
    /* 16560 80025D60 21105200 */  addu       $v0, $v0, $s2
    /* 16564 80025D64 80100200 */  sll        $v0, $v0, 2
    /* 16568 80025D68 1380013C */  lui        $at, %hi(D_8012A100)
    /* 1656C 80025D6C 21082200 */  addu       $at, $at, $v0
    /* 16570 80025D70 00A120AC */  sw         $zero, %lo(D_8012A100)($at)
    /* 16574 80025D74 21184000 */  addu       $v1, $v0, $zero
    /* 16578 80025D78 FFFF8232 */  andi       $v0, $s4, 0xFFFF
    /* 1657C 80025D7C 02004014 */  bnez       $v0, .L80025D88
    /* 16580 80025D80 88000224 */   addiu     $v0, $zero, 0x88
    /* 16584 80025D84 58000224 */  addiu      $v0, $zero, 0x58
  .L80025D88:
    /* 16588 80025D88 1380013C */  lui        $at, %hi(D_8012A0EE)
    /* 1658C 80025D8C 21082300 */  addu       $at, $at, $v1
    /* 16590 80025D90 EEA022A0 */  sb         $v0, %lo(D_8012A0EE)($at)
    /* 16594 80025D94 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 16598 80025D98 2800B48F */  lw         $s4, 0x28($sp)
    /* 1659C 80025D9C 2400B38F */  lw         $s3, 0x24($sp)
    /* 165A0 80025DA0 2000B28F */  lw         $s2, 0x20($sp)
    /* 165A4 80025DA4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 165A8 80025DA8 1800B08F */  lw         $s0, 0x18($sp)
    /* 165AC 80025DAC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 165B0 80025DB0 0800E003 */  jr         $ra
    /* 165B4 80025DB4 00000000 */   nop
endlabel func_80025CDC
