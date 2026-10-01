.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009B5B8, 0x230

glabel func_8009B5B8
    /* 8BDB8 8009B5B8 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 8BDBC 8009B5BC 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 8BDC0 8009B5C0 5800BEAF */  sw         $fp, 0x58($sp)
    /* 8BDC4 8009B5C4 5400B7AF */  sw         $s7, 0x54($sp)
    /* 8BDC8 8009B5C8 5000B6AF */  sw         $s6, 0x50($sp)
    /* 8BDCC 8009B5CC 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 8BDD0 8009B5D0 4800B4AF */  sw         $s4, 0x48($sp)
    /* 8BDD4 8009B5D4 4400B3AF */  sw         $s3, 0x44($sp)
    /* 8BDD8 8009B5D8 4000B2AF */  sw         $s2, 0x40($sp)
    /* 8BDDC 8009B5DC 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 8BDE0 8009B5E0 3800B0AF */  sw         $s0, 0x38($sp)
    /* 8BDE4 8009B5E4 21A88000 */  addu       $s5, $a0, $zero
    /* 8BDE8 8009B5E8 21B8A000 */  addu       $s7, $a1, $zero
    /* 8BDEC 8009B5EC 21F0C000 */  addu       $fp, $a2, $zero
    /* 8BDF0 8009B5F0 2188E000 */  addu       $s1, $a3, $zero
    /* 8BDF4 8009B5F4 1800B027 */  addiu      $s0, $sp, 0x18
    /* 8BDF8 8009B5F8 226D020C */  jal        func_8009B488
    /* 8BDFC 8009B5FC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 8BE00 8009B600 7907040C */  jal        func_80101DE4
    /* 8BE04 8009B604 01000424 */   addiu     $a0, $zero, 0x1
    /* 8BE08 8009B608 1C00A48E */  lw         $a0, 0x1C($s5)
    /* 8BE0C 8009B60C 3307040C */  jal        func_80101CCC
    /* 8BE10 8009B610 21280002 */   addu      $a1, $s0, $zero
    /* 8BE14 8009B614 1680083C */  lui        $t0, %hi(D_801592E4)
    /* 8BE18 8009B618 E4920885 */  lh         $t0, %lo(D_801592E4)($t0)
    /* 8BE1C 8009B61C 00000000 */  nop
    /* 8BE20 8009B620 2000A8AF */  sw         $t0, 0x20($sp)
    /* 8BE24 8009B624 80000224 */  addiu      $v0, $zero, 0x80
    /* 8BE28 8009B628 1680013C */  lui        $at, %hi(D_801592E4)
    /* 8BE2C 8009B62C E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* 8BE30 8009B630 01003226 */  addiu      $s2, $s1, 0x1
    /* 8BE34 8009B634 40901200 */  sll        $s2, $s2, 1
    /* 8BE38 8009B638 23981200 */  negu       $s3, $s2
    /* 8BE3C 8009B63C 2A105302 */  slt        $v0, $s2, $s3
    /* 8BE40 8009B640 2B004014 */  bnez       $v0, .L8009B6F0
    /* 8BE44 8009B644 FFFF4826 */   addiu     $t0, $s2, -0x1
    /* 8BE48 8009B648 2800A8AF */  sw         $t0, 0x28($sp)
  .L8009B64C:
    /* 8BE4C 8009B64C 0500601E */  bgtz       $s3, .L8009B664
    /* 8BE50 8009B650 01006232 */   andi      $v0, $s3, 0x1
    /* 8BE54 8009B654 27101300 */  nor        $v0, $zero, $s3
    /* 8BE58 8009B658 2800A88F */  lw         $t0, 0x28($sp)
    /* 8BE5C 8009B65C 9A6D0208 */  j          .L8009B668
    /* 8BE60 8009B660 23A00201 */   subu      $s4, $t0, $v0
  .L8009B664:
    /* 8BE64 8009B664 23A04202 */  subu       $s4, $s2, $v0
  .L8009B668:
    /* 8BE68 8009B668 23801400 */  negu       $s0, $s4
    /* 8BE6C 8009B66C 2A109002 */  slt        $v0, $s4, $s0
    /* 8BE70 8009B670 1B004014 */  bnez       $v0, .L8009B6E0
    /* 8BE74 8009B674 21B0D303 */   addu      $s6, $fp, $s3
  .L8009B678:
    /* 8BE78 8009B678 0500001A */  blez       $s0, .L8009B690
    /* 8BE7C 8009B67C 27101000 */   nor       $v0, $zero, $s0
    /* 8BE80 8009B680 13001212 */  beq        $s0, $s2, .L8009B6D0
    /* 8BE84 8009B684 00000000 */   nop
    /* 8BE88 8009B688 A76D0208 */  j          .L8009B69C
    /* 8BE8C 8009B68C 00000000 */   nop
  .L8009B690:
    /* 8BE90 8009B690 01004224 */  addiu      $v0, $v0, 0x1
    /* 8BE94 8009B694 0E005210 */  beq        $v0, $s2, .L8009B6D0
    /* 8BE98 8009B698 00000000 */   nop
  .L8009B69C:
    /* 8BE9C 8009B69C 173B030C */  jal        func_800CEC5C
    /* 8BEA0 8009B6A0 2120F002 */   addu      $a0, $s7, $s0
    /* 8BEA4 8009B6A4 21884000 */  addu       $s1, $v0, $zero
    /* 8BEA8 8009B6A8 2120A002 */  addu       $a0, $s5, $zero
    /* 8BEAC 8009B6AC 21282002 */  addu       $a1, $s1, $zero
    /* 8BEB0 8009B6B0 796C020C */  jal        func_8009B1E4
    /* 8BEB4 8009B6B4 2130C002 */   addu      $a2, $s6, $zero
    /* 8BEB8 8009B6B8 05004010 */  beqz       $v0, .L8009B6D0
    /* 8BEBC 8009B6BC 2120A002 */   addu      $a0, $s5, $zero
    /* 8BEC0 8009B6C0 21282002 */  addu       $a1, $s1, $zero
    /* 8BEC4 8009B6C4 7000A78F */  lw         $a3, 0x70($sp)
    /* 8BEC8 8009B6C8 216C020C */  jal        func_8009B084
    /* 8BECC 8009B6CC 2130C002 */   addu      $a2, $s6, $zero
  .L8009B6D0:
    /* 8BED0 8009B6D0 02001026 */  addiu      $s0, $s0, 0x2
    /* 8BED4 8009B6D4 2A109002 */  slt        $v0, $s4, $s0
    /* 8BED8 8009B6D8 E7FF4010 */  beqz       $v0, .L8009B678
    /* 8BEDC 8009B6DC 00000000 */   nop
  .L8009B6E0:
    /* 8BEE0 8009B6E0 01007326 */  addiu      $s3, $s3, 0x1
    /* 8BEE4 8009B6E4 2A105302 */  slt        $v0, $s2, $s3
    /* 8BEE8 8009B6E8 D8FF4010 */  beqz       $v0, .L8009B64C
    /* 8BEEC 8009B6EC 00000000 */   nop
  .L8009B6F0:
    /* 8BEF0 8009B6F0 21980000 */  addu       $s3, $zero, $zero
  .L8009B6F4:
    /* 8BEF4 8009B6F4 3E02A286 */  lh         $v0, 0x23E($s5)
    /* 8BEF8 8009B6F8 4202A386 */  lh         $v1, 0x242($s5)
    /* 8BEFC 8009B6FC 00000000 */  nop
    /* 8BF00 8009B700 21104300 */  addu       $v0, $v0, $v1
    /* 8BF04 8009B704 01004224 */  addiu      $v0, $v0, 0x1
    /* 8BF08 8009B708 2A106202 */  slt        $v0, $s3, $v0
    /* 8BF0C 8009B70C 1D004010 */  beqz       $v0, .L8009B784
    /* 8BF10 8009B710 2120A002 */   addu      $a0, $s5, $zero
    /* 8BF14 8009B714 3602A286 */  lh         $v0, 0x236($s5)
    /* 8BF18 8009B718 00000000 */  nop
    /* 8BF1C 8009B71C 21F05300 */  addu       $fp, $v0, $s3
    /* 8BF20 8009B720 3402A386 */  lh         $v1, 0x234($s5)
    /* 8BF24 8009B724 01006232 */  andi       $v0, $s3, 0x1
    /* 8BF28 8009B728 04004010 */  beqz       $v0, .L8009B73C
    /* 8BF2C 8009B72C 21906200 */   addu      $s2, $v1, $v0
    /* 8BF30 8009B730 3C02B186 */  lh         $s1, 0x23C($s5)
    /* 8BF34 8009B734 D06D0208 */  j          .L8009B740
    /* 8BF38 8009B738 00000000 */   nop
  .L8009B73C:
    /* 8BF3C 8009B73C 4002B186 */  lh         $s1, 0x240($s5)
  .L8009B740:
    /* 8BF40 8009B740 00000000 */  nop
    /* 8BF44 8009B744 0D00201A */  blez       $s1, .L8009B77C
    /* 8BF48 8009B748 21800000 */   addu      $s0, $zero, $zero
    /* 8BF4C 8009B74C 40201000 */  sll        $a0, $s0, 1
  .L8009B750:
    /* 8BF50 8009B750 173B030C */  jal        func_800CEC5C
    /* 8BF54 8009B754 21204402 */   addu      $a0, $s2, $a0
    /* 8BF58 8009B758 2120A002 */  addu       $a0, $s5, $zero
    /* 8BF5C 8009B75C 21284000 */  addu       $a1, $v0, $zero
    /* 8BF60 8009B760 7000A78F */  lw         $a3, 0x70($sp)
    /* 8BF64 8009B764 C36F020C */  jal        func_8009BF0C
    /* 8BF68 8009B768 2130C003 */   addu      $a2, $fp, $zero
    /* 8BF6C 8009B76C 01001026 */  addiu      $s0, $s0, 0x1
    /* 8BF70 8009B770 2A101102 */  slt        $v0, $s0, $s1
    /* 8BF74 8009B774 F6FF4014 */  bnez       $v0, .L8009B750
    /* 8BF78 8009B778 40201000 */   sll       $a0, $s0, 1
  .L8009B77C:
    /* 8BF7C 8009B77C BD6D0208 */  j          .L8009B6F4
    /* 8BF80 8009B780 01007326 */   addiu     $s3, $s3, 0x1
  .L8009B784:
    /* 8BF84 8009B784 21280000 */  addu       $a1, $zero, $zero
    /* 8BF88 8009B788 21300000 */  addu       $a2, $zero, $zero
    /* 8BF8C 8009B78C 906C020C */  jal        func_8009B240
    /* 8BF90 8009B790 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 8BF94 8009B794 7907040C */  jal        func_80101DE4
    /* 8BF98 8009B798 01000424 */   addiu     $a0, $zero, 0x1
    /* 8BF9C 8009B79C 1C00A48E */  lw         $a0, 0x1C($s5)
    /* 8BFA0 8009B7A0 3307040C */  jal        func_80101CCC
    /* 8BFA4 8009B7A4 21280000 */   addu      $a1, $zero, $zero
    /* 8BFA8 8009B7A8 2000A897 */  lhu        $t0, 0x20($sp)
    /* 8BFAC 8009B7AC 1680013C */  lui        $at, %hi(D_801592E4)
    /* 8BFB0 8009B7B0 E49228A4 */  sh         $t0, %lo(D_801592E4)($at)
    /* 8BFB4 8009B7B4 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 8BFB8 8009B7B8 5800BE8F */  lw         $fp, 0x58($sp)
    /* 8BFBC 8009B7BC 5400B78F */  lw         $s7, 0x54($sp)
    /* 8BFC0 8009B7C0 5000B68F */  lw         $s6, 0x50($sp)
    /* 8BFC4 8009B7C4 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 8BFC8 8009B7C8 4800B48F */  lw         $s4, 0x48($sp)
    /* 8BFCC 8009B7CC 4400B38F */  lw         $s3, 0x44($sp)
    /* 8BFD0 8009B7D0 4000B28F */  lw         $s2, 0x40($sp)
    /* 8BFD4 8009B7D4 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 8BFD8 8009B7D8 3800B08F */  lw         $s0, 0x38($sp)
    /* 8BFDC 8009B7DC 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 8BFE0 8009B7E0 0800E003 */  jr         $ra
    /* 8BFE4 8009B7E4 00000000 */   nop
endlabel func_8009B5B8
