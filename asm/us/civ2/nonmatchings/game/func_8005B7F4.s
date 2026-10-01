.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005B7F4, 0xFC

glabel func_8005B7F4
    /* 4BFF4 8005B7F4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 4BFF8 8005B7F8 3000BFAF */  sw         $ra, 0x30($sp)
    /* 4BFFC 8005B7FC 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 4C000 8005B800 2800B4AF */  sw         $s4, 0x28($sp)
    /* 4C004 8005B804 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4C008 8005B808 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4C00C 8005B80C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4C010 8005B810 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4C014 8005B814 21A88000 */  addu       $s5, $a0, $zero
    /* 4C018 8005B818 21A0A000 */  addu       $s4, $a1, $zero
    /* 4C01C 8005B81C 2198C000 */  addu       $s3, $a2, $zero
    /* 4C020 8005B820 10001224 */  addiu      $s2, $zero, 0x10
    /* 4C024 8005B824 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 4C028 8005B828 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 4C02C 8005B82C 00000000 */  nop
    /* 4C030 8005B830 24004018 */  blez       $v0, .L8005B8C4
    /* 4C034 8005B834 21880000 */   addu      $s1, $zero, $zero
    /* 4C038 8005B838 40101100 */  sll        $v0, $s1, 1
  .L8005B83C:
    /* 4C03C 8005B83C 21105100 */  addu       $v0, $v0, $s1
    /* 4C040 8005B840 80100200 */  sll        $v0, $v0, 2
    /* 4C044 8005B844 23105100 */  subu       $v0, $v0, $s1
    /* 4C048 8005B848 C0800200 */  sll        $s0, $v0, 3
    /* 4C04C 8005B84C 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 4C050 8005B850 21083000 */  addu       $at, $at, $s0
    /* 4C054 8005B854 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* 4C058 8005B858 00000000 */  nop
    /* 4C05C 8005B85C 12005514 */  bne        $v0, $s5, .L8005B8A8
    /* 4C060 8005B860 21202002 */   addu      $a0, $s1, $zero
    /* 4C064 8005B864 C826020C */  jal        func_80089B20
    /* 4C068 8005B868 01000524 */   addiu     $a1, $zero, 0x1
    /* 4C06C 8005B86C 0E004010 */  beqz       $v0, .L8005B8A8
    /* 4C070 8005B870 21308002 */   addu      $a2, $s4, $zero
    /* 4C074 8005B874 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 4C078 8005B878 21083000 */  addu       $at, $at, $s0
    /* 4C07C 8005B87C D03E2484 */  lh         $a0, %lo(D_80113ED0)($at)
    /* 4C080 8005B880 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 4C084 8005B884 21083000 */  addu       $at, $at, $s0
    /* 4C088 8005B888 D23E2584 */  lh         $a1, %lo(D_80113ED2)($at)
    /* 4C08C 8005B88C A73B030C */  jal        func_800CEE9C
    /* 4C090 8005B890 21386002 */   addu      $a3, $s3, $zero
    /* 4C094 8005B894 21184000 */  addu       $v1, $v0, $zero
    /* 4C098 8005B898 2A107200 */  slt        $v0, $v1, $s2
    /* 4C09C 8005B89C 02004010 */  beqz       $v0, .L8005B8A8
    /* 4C0A0 8005B8A0 00000000 */   nop
    /* 4C0A4 8005B8A4 21906000 */  addu       $s2, $v1, $zero
  .L8005B8A8:
    /* 4C0A8 8005B8A8 01003126 */  addiu      $s1, $s1, 0x1
    /* 4C0AC 8005B8AC 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 4C0B0 8005B8B0 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 4C0B4 8005B8B4 00000000 */  nop
    /* 4C0B8 8005B8B8 2A102202 */  slt        $v0, $s1, $v0
    /* 4C0BC 8005B8BC DFFF4014 */  bnez       $v0, .L8005B83C
    /* 4C0C0 8005B8C0 40101100 */   sll       $v0, $s1, 1
  .L8005B8C4:
    /* 4C0C4 8005B8C4 21104002 */  addu       $v0, $s2, $zero
    /* 4C0C8 8005B8C8 3000BF8F */  lw         $ra, 0x30($sp)
    /* 4C0CC 8005B8CC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 4C0D0 8005B8D0 2800B48F */  lw         $s4, 0x28($sp)
    /* 4C0D4 8005B8D4 2400B38F */  lw         $s3, 0x24($sp)
    /* 4C0D8 8005B8D8 2000B28F */  lw         $s2, 0x20($sp)
    /* 4C0DC 8005B8DC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4C0E0 8005B8E0 1800B08F */  lw         $s0, 0x18($sp)
    /* 4C0E4 8005B8E4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 4C0E8 8005B8E8 0800E003 */  jr         $ra
    /* 4C0EC 8005B8EC 00000000 */   nop
endlabel func_8005B7F4
