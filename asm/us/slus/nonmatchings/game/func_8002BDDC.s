.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BDDC, 0xF8

glabel func_8002BDDC
    /* 1C5DC 8002BDDC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1C5E0 8002BDE0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1C5E4 8002BDE4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1C5E8 8002BDE8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1C5EC 8002BDEC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C5F0 8002BDF0 2188A000 */  addu       $s1, $a1, $zero
    /* 1C5F4 8002BDF4 2190C000 */  addu       $s2, $a2, $zero
    /* 1C5F8 8002BDF8 00008490 */  lbu        $a0, 0x0($a0)
    /* 1C5FC 8002BDFC 62AF000C */  jal        func_8002BD88
    /* 1C600 8002BE00 2180E000 */   addu      $s0, $a3, $zero
    /* 1C604 8002BE04 21384000 */  addu       $a3, $v0, $zero
    /* 1C608 8002BE08 2500E010 */  beqz       $a3, .L8002BEA0
    /* 1C60C 8002BE0C 21300000 */   addu      $a2, $zero, $zero
    /* 1C610 8002BE10 21282002 */  addu       $a1, $s1, $zero
    /* 1C614 8002BE14 FF004232 */  andi       $v0, $s2, 0xFF
    /* 1C618 8002BE18 00490200 */  sll        $t1, $v0, 4
    /* 1C61C 8002BE1C FF000232 */  andi       $v0, $s0, 0xFF
    /* 1C620 8002BE20 00410200 */  sll        $t0, $v0, 4
  .L8002BE24:
    /* 1C624 8002BE24 07000424 */  addiu      $a0, $zero, 0x7
  .L8002BE28:
    /* 1C628 8002BE28 0000E290 */  lbu        $v0, 0x0($a3)
    /* 1C62C 8002BE2C 00000000 */  nop
    /* 1C630 8002BE30 07108200 */  srav       $v0, $v0, $a0
    /* 1C634 8002BE34 01004230 */  andi       $v0, $v0, 0x1
    /* 1C638 8002BE38 02004014 */  bnez       $v0, .L8002BE44
    /* 1C63C 8002BE3C 21184002 */   addu      $v1, $s2, $zero
    /* 1C640 8002BE40 21180002 */  addu       $v1, $s0, $zero
  .L8002BE44:
    /* 1C644 8002BE44 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 1C648 8002BE48 0000E290 */  lbu        $v0, 0x0($a3)
    /* 1C64C 8002BE4C 00000000 */  nop
    /* 1C650 8002BE50 07108200 */  srav       $v0, $v0, $a0
    /* 1C654 8002BE54 01004230 */  andi       $v0, $v0, 0x1
    /* 1C658 8002BE58 03004010 */  beqz       $v0, .L8002BE68
    /* 1C65C 8002BE5C FF006330 */   andi      $v1, $v1, 0xFF
    /* 1C660 8002BE60 9BAF0008 */  j          .L8002BE6C
    /* 1C664 8002BE64 25186900 */   or        $v1, $v1, $t1
  .L8002BE68:
    /* 1C668 8002BE68 25186800 */  or         $v1, $v1, $t0
  .L8002BE6C:
    /* 1C66C 8002BE6C FF006230 */  andi       $v0, $v1, 0xFF
    /* 1C670 8002BE70 02004010 */  beqz       $v0, .L8002BE7C
    /* 1C674 8002BE74 00000000 */   nop
    /* 1C678 8002BE78 0000A3A0 */  sb         $v1, 0x0($a1)
  .L8002BE7C:
    /* 1C67C 8002BE7C FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 1C680 8002BE80 E9FF8104 */  bgez       $a0, .L8002BE28
    /* 1C684 8002BE84 0100A524 */   addiu     $a1, $a1, 0x1
    /* 1C688 8002BE88 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1C68C 8002BE8C 0B00C228 */  slti       $v0, $a2, 0xB
    /* 1C690 8002BE90 E4FF4014 */  bnez       $v0, .L8002BE24
    /* 1C694 8002BE94 0100E724 */   addiu     $a3, $a3, 0x1
    /* 1C698 8002BE98 AEAF0008 */  j          .L8002BEB8
    /* 1C69C 8002BE9C 00000000 */   nop
  .L8002BEA0:
    /* 1C6A0 8002BEA0 21282002 */  addu       $a1, $s1, $zero
  .L8002BEA4:
    /* 1C6A4 8002BEA4 0000B0A0 */  sb         $s0, 0x0($a1)
    /* 1C6A8 8002BEA8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1C6AC 8002BEAC 0001C228 */  slti       $v0, $a2, 0x100
    /* 1C6B0 8002BEB0 FCFF4014 */  bnez       $v0, .L8002BEA4
    /* 1C6B4 8002BEB4 0100A524 */   addiu     $a1, $a1, 0x1
  .L8002BEB8:
    /* 1C6B8 8002BEB8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1C6BC 8002BEBC 1800B28F */  lw         $s2, 0x18($sp)
    /* 1C6C0 8002BEC0 1400B18F */  lw         $s1, 0x14($sp)
    /* 1C6C4 8002BEC4 1000B08F */  lw         $s0, 0x10($sp)
    /* 1C6C8 8002BEC8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1C6CC 8002BECC 0800E003 */  jr         $ra
    /* 1C6D0 8002BED0 00000000 */   nop
endlabel func_8002BDDC
