.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007BD94, 0x118

glabel func_8007BD94
    /* 6C594 8007BD94 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6C598 8007BD98 2000BFAF */  sw         $ra, 0x20($sp)
    /* 6C59C 8007BD9C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6C5A0 8007BDA0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6C5A4 8007BDA4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6C5A8 8007BDA8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6C5AC 8007BDAC 21888000 */  addu       $s1, $a0, $zero
    /* 6C5B0 8007BDB0 40101100 */  sll        $v0, $s1, 1
    /* 6C5B4 8007BDB4 21105100 */  addu       $v0, $v0, $s1
    /* 6C5B8 8007BDB8 80100200 */  sll        $v0, $v0, 2
    /* 6C5BC 8007BDBC 21105100 */  addu       $v0, $v0, $s1
    /* 6C5C0 8007BDC0 40180200 */  sll        $v1, $v0, 1
    /* 6C5C4 8007BDC4 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6C5C8 8007BDC8 21082300 */  addu       $at, $at, $v1
    /* 6C5CC 8007BDCC CCD62284 */  lh         $v0, %lo(D_8010D6CC)($at)
    /* 6C5D0 8007BDD0 00000000 */  nop
    /* 6C5D4 8007BDD4 2D004004 */  bltz       $v0, .L8007BE8C
    /* 6C5D8 8007BDD8 00000000 */   nop
    /* 6C5DC 8007BDDC 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6C5E0 8007BDE0 21082300 */  addu       $at, $at, $v1
    /* 6C5E4 8007BDE4 B4D63384 */  lh         $s3, %lo(D_8010D6B4)($at)
    /* 6C5E8 8007BDE8 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6C5EC 8007BDEC 21082300 */  addu       $at, $at, $v1
    /* 6C5F0 8007BDF0 B6D63284 */  lh         $s2, %lo(D_8010D6B6)($at)
    /* 6C5F4 8007BDF4 E6ED010C */  jal        func_8007B798
    /* 6C5F8 8007BDF8 00000000 */   nop
    /* 6C5FC 8007BDFC 21804000 */  addu       $s0, $v0, $zero
    /* 6C600 8007BE00 04001116 */  bne        $s0, $s1, .L8007BE14
    /* 6C604 8007BE04 00000000 */   nop
    /* 6C608 8007BE08 BFED010C */  jal        func_8007B6FC
    /* 6C60C 8007BE0C 21202002 */   addu      $a0, $s1, $zero
    /* 6C610 8007BE10 21804000 */  addu       $s0, $v0, $zero
  .L8007BE14:
    /* 6C614 8007BE14 7BEE010C */  jal        func_8007B9EC
    /* 6C618 8007BE18 21202002 */   addu      $a0, $s1, $zero
    /* 6C61C 8007BE1C CBED010C */  jal        func_8007B72C
    /* 6C620 8007BE20 21200002 */   addu      $a0, $s0, $zero
    /* 6C624 8007BE24 40180200 */  sll        $v1, $v0, 1
    /* 6C628 8007BE28 21186200 */  addu       $v1, $v1, $v0
    /* 6C62C 8007BE2C 80180300 */  sll        $v1, $v1, 2
    /* 6C630 8007BE30 21186200 */  addu       $v1, $v1, $v0
    /* 6C634 8007BE34 40180300 */  sll        $v1, $v1, 1
    /* 6C638 8007BE38 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6C63C 8007BE3C 21082300 */  addu       $at, $at, $v1
    /* 6C640 8007BE40 CCD631A4 */  sh         $s1, %lo(D_8010D6CC)($at)
    /* 6C644 8007BE44 40181100 */  sll        $v1, $s1, 1
    /* 6C648 8007BE48 21187100 */  addu       $v1, $v1, $s1
    /* 6C64C 8007BE4C 80180300 */  sll        $v1, $v1, 2
    /* 6C650 8007BE50 21187100 */  addu       $v1, $v1, $s1
    /* 6C654 8007BE54 40180300 */  sll        $v1, $v1, 1
    /* 6C658 8007BE58 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 6C65C 8007BE5C 21082300 */  addu       $at, $at, $v1
    /* 6C660 8007BE60 CAD622A4 */  sh         $v0, %lo(D_8010D6CA)($at)
    /* 6C664 8007BE64 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6C668 8007BE68 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6C66C 8007BE6C 21082300 */  addu       $at, $at, $v1
    /* 6C670 8007BE70 CCD622A4 */  sh         $v0, %lo(D_8010D6CC)($at)
    /* 6C674 8007BE74 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6C678 8007BE78 21082300 */  addu       $at, $at, $v1
    /* 6C67C 8007BE7C B4D633A4 */  sh         $s3, %lo(D_8010D6B4)($at)
    /* 6C680 8007BE80 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6C684 8007BE84 21082300 */  addu       $at, $at, $v1
    /* 6C688 8007BE88 B6D632A4 */  sh         $s2, %lo(D_8010D6B6)($at)
  .L8007BE8C:
    /* 6C68C 8007BE8C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 6C690 8007BE90 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6C694 8007BE94 1800B28F */  lw         $s2, 0x18($sp)
    /* 6C698 8007BE98 1400B18F */  lw         $s1, 0x14($sp)
    /* 6C69C 8007BE9C 1000B08F */  lw         $s0, 0x10($sp)
    /* 6C6A0 8007BEA0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6C6A4 8007BEA4 0800E003 */  jr         $ra
    /* 6C6A8 8007BEA8 00000000 */   nop
endlabel func_8007BD94
