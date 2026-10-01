.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CAF9C, 0x84

glabel func_800CAF9C
    /* BB79C 800CAF9C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* BB7A0 800CAFA0 1800BFAF */  sw         $ra, 0x18($sp)
    /* BB7A4 800CAFA4 2148A000 */  addu       $t1, $a1, $zero
    /* BB7A8 800CAFA8 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* BB7AC 800CAFAC 800C828C */  lw         $v0, 0xC80($a0)
    /* BB7B0 800CAFB0 00000000 */  nop
    /* BB7B4 800CAFB4 12004018 */  blez       $v0, .L800CB000
    /* BB7B8 800CAFB8 21380000 */   addu      $a3, $zero, $zero
    /* BB7BC 800CAFBC 800C888C */  lw         $t0, 0xC80($a0)
    /* BB7C0 800CAFC0 00110700 */  sll        $v0, $a3, 4
  .L800CAFC4:
    /* BB7C4 800CAFC4 21188200 */  addu       $v1, $a0, $v0
    /* BB7C8 800CAFC8 0800628C */  lw         $v0, 0x8($v1)
    /* BB7CC 800CAFCC 00000000 */  nop
    /* BB7D0 800CAFD0 07004614 */  bne        $v0, $a2, .L800CAFF0
    /* BB7D4 800CAFD4 00000000 */   nop
    /* BB7D8 800CAFD8 0C00628C */  lw         $v0, 0xC($v1)
    /* BB7DC 800CAFDC 00000000 */  nop
    /* BB7E0 800CAFE0 03004914 */  bne        $v0, $t1, .L800CAFF0
    /* BB7E4 800CAFE4 00000000 */   nop
    /* BB7E8 800CAFE8 002C0308 */  j          .L800CB000
    /* BB7EC 800CAFEC 2128E000 */   addu      $a1, $a3, $zero
  .L800CAFF0:
    /* BB7F0 800CAFF0 0100E724 */  addiu      $a3, $a3, 0x1
    /* BB7F4 800CAFF4 2A10E800 */  slt        $v0, $a3, $t0
    /* BB7F8 800CAFF8 F2FF4014 */  bnez       $v0, .L800CAFC4
    /* BB7FC 800CAFFC 00110700 */   sll       $v0, $a3, 4
  .L800CB000:
    /* BB800 800CB000 0300A004 */  bltz       $a1, .L800CB010
    /* BB804 800CB004 00000000 */   nop
    /* BB808 800CB008 CF2B030C */  jal        func_800CAF3C
    /* BB80C 800CB00C 00000000 */   nop
  .L800CB010:
    /* BB810 800CB010 1800BF8F */  lw         $ra, 0x18($sp)
    /* BB814 800CB014 2000BD27 */  addiu      $sp, $sp, 0x20
    /* BB818 800CB018 0800E003 */  jr         $ra
    /* BB81C 800CB01C 00000000 */   nop
endlabel func_800CAF9C
