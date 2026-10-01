.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BED4, 0x100

glabel func_8002BED4
    /* 1C6D4 8002BED4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1C6D8 8002BED8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1C6DC 8002BEDC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1C6E0 8002BEE0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1C6E4 8002BEE4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C6E8 8002BEE8 2188A000 */  addu       $s1, $a1, $zero
    /* 1C6EC 8002BEEC 2190C000 */  addu       $s2, $a2, $zero
    /* 1C6F0 8002BEF0 00008490 */  lbu        $a0, 0x0($a0)
    /* 1C6F4 8002BEF4 62AF000C */  jal        func_8002BD88
    /* 1C6F8 8002BEF8 2180E000 */   addu      $s0, $a3, $zero
    /* 1C6FC 8002BEFC 21384000 */  addu       $a3, $v0, $zero
    /* 1C700 8002BF00 2700E010 */  beqz       $a3, .L8002BFA0
    /* 1C704 8002BF04 21300000 */   addu      $a2, $zero, $zero
    /* 1C708 8002BF08 21282002 */  addu       $a1, $s1, $zero
    /* 1C70C 8002BF0C FF000232 */  andi       $v0, $s0, 0xFF
    /* 1C710 8002BF10 00510200 */  sll        $t2, $v0, 4
  .L8002BF14:
    /* 1C714 8002BF14 07000424 */  addiu      $a0, $zero, 0x7
    /* 1C718 8002BF18 21104602 */  addu       $v0, $s2, $a2
    /* 1C71C 8002BF1C 01004824 */  addiu      $t0, $v0, 0x1
    /* 1C720 8002BF20 FF000231 */  andi       $v0, $t0, 0xFF
    /* 1C724 8002BF24 00490200 */  sll        $t1, $v0, 4
  .L8002BF28:
    /* 1C728 8002BF28 0000E290 */  lbu        $v0, 0x0($a3)
    /* 1C72C 8002BF2C 00000000 */  nop
    /* 1C730 8002BF30 07108200 */  srav       $v0, $v0, $a0
    /* 1C734 8002BF34 01004230 */  andi       $v0, $v0, 0x1
    /* 1C738 8002BF38 02004010 */  beqz       $v0, .L8002BF44
    /* 1C73C 8002BF3C 21180002 */   addu      $v1, $s0, $zero
    /* 1C740 8002BF40 21180001 */  addu       $v1, $t0, $zero
  .L8002BF44:
    /* 1C744 8002BF44 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 1C748 8002BF48 0000E290 */  lbu        $v0, 0x0($a3)
    /* 1C74C 8002BF4C 00000000 */  nop
    /* 1C750 8002BF50 07108200 */  srav       $v0, $v0, $a0
    /* 1C754 8002BF54 01004230 */  andi       $v0, $v0, 0x1
    /* 1C758 8002BF58 03004010 */  beqz       $v0, .L8002BF68
    /* 1C75C 8002BF5C FF006330 */   andi      $v1, $v1, 0xFF
    /* 1C760 8002BF60 DBAF0008 */  j          .L8002BF6C
    /* 1C764 8002BF64 25186900 */   or        $v1, $v1, $t1
  .L8002BF68:
    /* 1C768 8002BF68 25186A00 */  or         $v1, $v1, $t2
  .L8002BF6C:
    /* 1C76C 8002BF6C FF006230 */  andi       $v0, $v1, 0xFF
    /* 1C770 8002BF70 02004010 */  beqz       $v0, .L8002BF7C
    /* 1C774 8002BF74 00000000 */   nop
    /* 1C778 8002BF78 0000A3A0 */  sb         $v1, 0x0($a1)
  .L8002BF7C:
    /* 1C77C 8002BF7C FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 1C780 8002BF80 E9FF8104 */  bgez       $a0, .L8002BF28
    /* 1C784 8002BF84 0100A524 */   addiu     $a1, $a1, 0x1
    /* 1C788 8002BF88 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1C78C 8002BF8C 0B00C228 */  slti       $v0, $a2, 0xB
    /* 1C790 8002BF90 E0FF4014 */  bnez       $v0, .L8002BF14
    /* 1C794 8002BF94 0100E724 */   addiu     $a3, $a3, 0x1
    /* 1C798 8002BF98 EEAF0008 */  j          .L8002BFB8
    /* 1C79C 8002BF9C 00000000 */   nop
  .L8002BFA0:
    /* 1C7A0 8002BFA0 21282002 */  addu       $a1, $s1, $zero
  .L8002BFA4:
    /* 1C7A4 8002BFA4 0000B0A0 */  sb         $s0, 0x0($a1)
    /* 1C7A8 8002BFA8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1C7AC 8002BFAC 0001C228 */  slti       $v0, $a2, 0x100
    /* 1C7B0 8002BFB0 FCFF4014 */  bnez       $v0, .L8002BFA4
    /* 1C7B4 8002BFB4 0100A524 */   addiu     $a1, $a1, 0x1
  .L8002BFB8:
    /* 1C7B8 8002BFB8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1C7BC 8002BFBC 1800B28F */  lw         $s2, 0x18($sp)
    /* 1C7C0 8002BFC0 1400B18F */  lw         $s1, 0x14($sp)
    /* 1C7C4 8002BFC4 1000B08F */  lw         $s0, 0x10($sp)
    /* 1C7C8 8002BFC8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1C7CC 8002BFCC 0800E003 */  jr         $ra
    /* 1C7D0 8002BFD0 00000000 */   nop
endlabel func_8002BED4
