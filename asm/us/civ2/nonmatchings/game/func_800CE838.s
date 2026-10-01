.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CE838, 0x184

glabel func_800CE838
    /* BF038 800CE838 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* BF03C 800CE83C 2400BFAF */  sw         $ra, 0x24($sp)
    /* BF040 800CE840 2000B2AF */  sw         $s2, 0x20($sp)
    /* BF044 800CE844 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* BF048 800CE848 1800B0AF */  sw         $s0, 0x18($sp)
    /* BF04C 800CE84C 35DE030C */  jal        func_800F78D4
    /* BF050 800CE850 21888000 */   addu      $s1, $a0, $zero
    /* BF054 800CE854 02004014 */  bnez       $v0, .L800CE860
    /* BF058 800CE858 D4FF5224 */   addiu     $s2, $v0, -0x2C
    /* BF05C 800CE85C 21900000 */  addu       $s2, $zero, $zero
  .L800CE860:
    /* BF060 800CE860 B80C908F */  lw         $s0, %gp_rel(D_80159190)($gp)
    /* BF064 800CE864 00141100 */  sll        $v0, $s1, 16
    /* BF068 800CE868 031C0200 */  sra        $v1, $v0, 16
    /* BF06C 800CE86C A6000224 */  addiu      $v0, $zero, 0xA6
    /* BF070 800CE870 39006210 */  beq        $v1, $v0, .L800CE958
    /* BF074 800CE874 A7006228 */   slti      $v0, $v1, 0xA7
    /* BF078 800CE878 05004010 */  beqz       $v0, .L800CE890
    /* BF07C 800CE87C A4000224 */   addiu     $v0, $zero, 0xA4
    /* BF080 800CE880 35006210 */  beq        $v1, $v0, .L800CE958
    /* BF084 800CE884 00000000 */   nop
    /* BF088 800CE888 683A0308 */  j          .L800CE9A0
    /* BF08C 800CE88C 00000000 */   nop
  .L800CE890:
    /* BF090 800CE890 D3006228 */  slti       $v0, $v1, 0xD3
    /* BF094 800CE894 42004010 */  beqz       $v0, .L800CE9A0
    /* BF098 800CE898 D0006228 */   slti      $v0, $v1, 0xD0
    /* BF09C 800CE89C 40004014 */  bnez       $v0, .L800CE9A0
    /* BF0A0 800CE8A0 02000224 */   addiu     $v0, $zero, 0x2
    /* BF0A4 800CE8A4 FC08038E */  lw         $v1, 0x8FC($s0)
    /* BF0A8 800CE8A8 00000000 */  nop
    /* BF0AC 800CE8AC 3C006210 */  beq        $v1, $v0, .L800CE9A0
    /* BF0B0 800CE8B0 00000000 */   nop
    /* BF0B4 800CE8B4 F2030286 */  lh         $v0, 0x3F2($s0)
    /* BF0B8 800CE8B8 00000000 */  nop
    /* BF0BC 800CE8BC 16004010 */  beqz       $v0, .L800CE918
    /* BF0C0 800CE8C0 00141100 */   sll       $v0, $s1, 16
    /* BF0C4 800CE8C4 EA040386 */  lh         $v1, 0x4EA($s0)
    /* BF0C8 800CE8C8 00000000 */  nop
    /* BF0CC 800CE8CC 0100632C */  sltiu      $v1, $v1, 0x1
    /* BF0D0 800CE8D0 03140200 */  sra        $v0, $v0, 16
    /* BF0D4 800CE8D4 D2004238 */  xori       $v0, $v0, 0xD2
    /* BF0D8 800CE8D8 0100422C */  sltiu      $v0, $v0, 0x1
    /* BF0DC 800CE8DC 25186200 */  or         $v1, $v1, $v0
    /* BF0E0 800CE8E0 05006010 */  beqz       $v1, .L800CE8F8
    /* BF0E4 800CE8E4 01000224 */   addiu     $v0, $zero, 0x1
    /* BF0E8 800CE8E8 8E12040C */  jal        func_80104A38
    /* BF0EC 800CE8EC EC0402A6 */   sh        $v0, 0x4EC($s0)
    /* BF0F0 800CE8F0 423A0308 */  j          .L800CE908
    /* BF0F4 800CE8F4 00000000 */   nop
  .L800CE8F8:
    /* BF0F8 800CE8F8 8E12040C */  jal        func_80104A38
    /* BF0FC 800CE8FC EC0402A6 */   sh        $v0, 0x4EC($s0)
    /* BF100 800CE900 02000224 */  addiu      $v0, $zero, 0x2
    /* BF104 800CE904 FC0802AE */  sw         $v0, 0x8FC($s0)
  .L800CE908:
    /* BF108 800CE908 31DE030C */  jal        func_800F78C4
    /* BF10C 800CE90C 2C004426 */   addiu     $a0, $s2, 0x2C
    /* BF110 800CE910 683A0308 */  j          .L800CE9A0
    /* BF114 800CE914 00000000 */   nop
  .L800CE918:
    /* BF118 800CE918 5C010486 */  lh         $a0, 0x15C($s0)
    /* BF11C 800CE91C 00000000 */  nop
    /* BF120 800CE920 04008010 */  beqz       $a0, .L800CE934
    /* BF124 800CE924 00000000 */   nop
    /* BF128 800CE928 7DF3030C */  jal        func_800FCDF4
    /* BF12C 800CE92C 00000000 */   nop
    /* BF130 800CE930 5C0100A6 */  sh         $zero, 0x15C($s0)
  .L800CE934:
    /* BF134 800CE934 21200002 */  addu       $a0, $s0, $zero
  .L800CE938:
    /* BF138 800CE938 B536030C */  jal        func_800CDAD4
    /* BF13C 800CE93C 21280000 */   addu      $a1, $zero, $zero
    /* BF140 800CE940 00140200 */  sll        $v0, $v0, 16
    /* BF144 800CE944 FCFF4014 */  bnez       $v0, .L800CE938
    /* BF148 800CE948 21200002 */   addu      $a0, $s0, $zero
    /* BF14C 800CE94C 01000224 */  addiu      $v0, $zero, 0x1
    /* BF150 800CE950 683A0308 */  j          .L800CE9A0
    /* BF154 800CE954 F20302A6 */   sh        $v0, 0x3F2($s0)
  .L800CE958:
    /* BF158 800CE958 48010386 */  lh         $v1, 0x148($s0)
    /* BF15C 800CE95C 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* BF160 800CE960 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* BF164 800CE964 00000000 */  nop
    /* BF168 800CE968 0D006214 */  bne        $v1, $v0, .L800CE9A0
    /* BF16C 800CE96C 03000224 */   addiu     $v0, $zero, 0x3
    /* BF170 800CE970 FC08038E */  lw         $v1, 0x8FC($s0)
    /* BF174 800CE974 00000000 */  nop
    /* BF178 800CE978 09006210 */  beq        $v1, $v0, .L800CE9A0
    /* BF17C 800CE97C 00000000 */   nop
    /* BF180 800CE980 07006010 */  beqz       $v1, .L800CE9A0
    /* BF184 800CE984 02000224 */   addiu     $v0, $zero, 0x2
    /* BF188 800CE988 05006210 */  beq        $v1, $v0, .L800CE9A0
    /* BF18C 800CE98C 01000224 */   addiu     $v0, $zero, 0x1
    /* BF190 800CE990 EA040396 */  lhu        $v1, 0x4EA($s0)
    /* BF194 800CE994 00000000 */  nop
    /* BF198 800CE998 23104300 */  subu       $v0, $v0, $v1
    /* BF19C 800CE99C EA0402A6 */  sh         $v0, 0x4EA($s0)
  .L800CE9A0:
    /* BF1A0 800CE9A0 2400BF8F */  lw         $ra, 0x24($sp)
    /* BF1A4 800CE9A4 2000B28F */  lw         $s2, 0x20($sp)
    /* BF1A8 800CE9A8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* BF1AC 800CE9AC 1800B08F */  lw         $s0, 0x18($sp)
    /* BF1B0 800CE9B0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* BF1B4 800CE9B4 0800E003 */  jr         $ra
    /* BF1B8 800CE9B8 00000000 */   nop
endlabel func_800CE838
