.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002AD94, 0x354

glabel func_8002AD94
    /* 1B594 8002AD94 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 1B598 8002AD98 6800BFAF */  sw         $ra, 0x68($sp)
    /* 1B59C 8002AD9C 6400B7AF */  sw         $s7, 0x64($sp)
    /* 1B5A0 8002ADA0 6000B6AF */  sw         $s6, 0x60($sp)
    /* 1B5A4 8002ADA4 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 1B5A8 8002ADA8 5800B4AF */  sw         $s4, 0x58($sp)
    /* 1B5AC 8002ADAC 5400B3AF */  sw         $s3, 0x54($sp)
    /* 1B5B0 8002ADB0 5000B2AF */  sw         $s2, 0x50($sp)
    /* 1B5B4 8002ADB4 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 1B5B8 8002ADB8 4800B0AF */  sw         $s0, 0x48($sp)
    /* 1B5BC 8002ADBC 21888000 */  addu       $s1, $a0, $zero
    /* 1B5C0 8002ADC0 2180A000 */  addu       $s0, $a1, $zero
    /* 1B5C4 8002ADC4 0D000006 */  bltz       $s0, .L8002ADFC
    /* 1B5C8 8002ADC8 21180000 */   addu      $v1, $zero, $zero
    /* 1B5CC 8002ADCC 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 1B5D0 8002ADD0 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 1B5D4 8002ADD4 00000000 */  nop
    /* 1B5D8 8002ADD8 2A100202 */  slt        $v0, $s0, $v0
    /* 1B5DC 8002ADDC 07004010 */  beqz       $v0, .L8002ADFC
    /* 1B5E0 8002ADE0 00000000 */   nop
    /* 1B5E4 8002ADE4 05002006 */  bltz       $s1, .L8002ADFC
    /* 1B5E8 8002ADE8 00000000 */   nop
    /* 1B5EC 8002ADEC 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 1B5F0 8002ADF0 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 1B5F4 8002ADF4 00000000 */  nop
    /* 1B5F8 8002ADF8 2A182202 */  slt        $v1, $s1, $v0
  .L8002ADFC:
    /* 1B5FC 8002ADFC AE006010 */  beqz       $v1, .L8002B0B8
    /* 1B600 8002AE00 21202002 */   addu      $a0, $s1, $zero
    /* 1B604 8002AE04 1280123C */  lui        $s2, %hi(D_8011ACB4)
    /* 1B608 8002AE08 B4AC5226 */  addiu      $s2, $s2, %lo(D_8011ACB4)
    /* 1B60C 8002AE0C 0000468E */  lw         $a2, 0x0($s2)
    /* 1B610 8002AE10 A161020C */  jal        func_80098684
    /* 1B614 8002AE14 21280002 */   addu      $a1, $s0, $zero
    /* 1B618 8002AE18 A7004010 */  beqz       $v0, .L8002B0B8
    /* 1B61C 8002AE1C 00000000 */   nop
    /* 1B620 8002AE20 3E82030C */  jal        __builtin_new
    /* 1B624 8002AE24 2C000424 */   addiu     $a0, $zero, 0x2C
    /* 1B628 8002AE28 9AE0030C */  jal        func_800F8268
    /* 1B62C 8002AE2C 21204000 */   addu      $a0, $v0, $zero
    /* 1B630 8002AE30 21A04000 */  addu       $s4, $v0, $zero
    /* 1B634 8002AE34 21202002 */  addu       $a0, $s1, $zero
    /* 1B638 8002AE38 0000468E */  lw         $a2, 0x0($s2)
    /* 1B63C 8002AE3C 6D7C020C */  jal        func_8009F1B4
    /* 1B640 8002AE40 21280002 */   addu      $a1, $s0, $zero
    /* 1B644 8002AE44 0098010C */  jal        func_80066000
    /* 1B648 8002AE48 00000000 */   nop
    /* 1B64C 8002AE4C 32000424 */  addiu      $a0, $zero, 0x32
    /* 1B650 8002AE50 21280000 */  addu       $a1, $zero, $zero
    /* 1B654 8002AE54 21300000 */  addu       $a2, $zero, $zero
    /* 1B658 8002AE58 2B9D020C */  jal        func_800A74AC
    /* 1B65C 8002AE5C 21380000 */   addu      $a3, $zero, $zero
    /* 1B660 8002AE60 1280023C */  lui        $v0, %hi(D_8011A254)
    /* 1B664 8002AE64 54A2428C */  lw         $v0, %lo(D_8011A254)($v0)
    /* 1B668 8002AE68 00000000 */  nop
    /* 1B66C 8002AE6C 10004230 */  andi       $v0, $v0, 0x10
    /* 1B670 8002AE70 03004010 */  beqz       $v0, .L8002AE80
    /* 1B674 8002AE74 2D001724 */   addiu     $s7, $zero, 0x2D
    /* 1B678 8002AE78 8E12040C */  jal        func_80104A38
    /* 1B67C 8002AE7C 00000000 */   nop
  .L8002AE80:
    /* 1B680 8002AE80 24001624 */  addiu      $s6, $zero, 0x24
    /* 1B684 8002AE84 21208002 */  addu       $a0, $s4, $zero
    /* 1B688 8002AE88 2D000524 */  addiu      $a1, $zero, 0x2D
    /* 1B68C 8002AE8C F3E0030C */  jal        func_800F83CC
    /* 1B690 8002AE90 24000624 */   addiu     $a2, $zero, 0x24
    /* 1B694 8002AE94 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1B698 8002AE98 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* 1B69C 8002AE9C 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* 1B6A0 8002AEA0 3800A527 */  addiu      $a1, $sp, 0x38
    /* 1B6A4 8002AEA4 3C00A627 */  addiu      $a2, $sp, 0x3C
    /* 1B6A8 8002AEA8 0A66020C */  jal        func_80099828
    /* 1B6AC 8002AEAC 21382002 */   addu      $a3, $s1, $zero
    /* 1B6B0 8002AEB0 1280043C */  lui        $a0, %hi(D_8011E974)
    /* 1B6B4 8002AEB4 74E98424 */  addiu      $a0, $a0, %lo(D_8011E974)
    /* 1B6B8 8002AEB8 00008384 */  lh         $v1, 0x0($a0)
    /* 1B6BC 8002AEBC 3800A28F */  lw         $v0, 0x38($sp)
    /* 1B6C0 8002AEC0 00000000 */  nop
    /* 1B6C4 8002AEC4 21886200 */  addu       $s1, $v1, $v0
    /* 1B6C8 8002AEC8 EAFF3126 */  addiu      $s1, $s1, -0x16
    /* 1B6CC 8002AECC 02008384 */  lh         $v1, 0x2($a0)
    /* 1B6D0 8002AED0 3C00A28F */  lw         $v0, 0x3C($sp)
    /* 1B6D4 8002AED4 00000000 */  nop
    /* 1B6D8 8002AED8 21906200 */  addu       $s2, $v1, $v0
    /* 1B6DC 8002AEDC EEFF5226 */  addiu      $s2, $s2, -0x12
    /* 1B6E0 8002AEE0 8CFE828C */  lw         $v0, -0x174($a0)
    /* 1B6E4 8002AEE4 00000000 */  nop
    /* 1B6E8 8002AEE8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1B6EC 8002AEEC 90FE828C */  lw         $v0, -0x170($a0)
    /* 1B6F0 8002AEF0 00000000 */  nop
    /* 1B6F4 8002AEF4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1B6F8 8002AEF8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1B6FC 8002AEFC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 1B700 8002AF00 2000A0AF */  sw         $zero, 0x20($sp)
    /* 1B704 8002AF04 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1B708 8002AF08 2800B7AF */  sw         $s7, 0x28($sp)
    /* 1B70C 8002AF0C 2C00B6AF */  sw         $s6, 0x2C($sp)
    /* 1B710 8002AF10 B8FD8424 */  addiu      $a0, $a0, -0x248
    /* 1B714 8002AF14 21288002 */  addu       $a1, $s4, $zero
    /* 1B718 8002AF18 21302002 */  addu       $a2, $s1, $zero
    /* 1B71C 8002AF1C 73BD020C */  jal        func_800AF5CC
    /* 1B720 8002AF20 21384002 */   addu      $a3, $s2, $zero
    /* 1B724 8002AF24 3000B1A7 */  sh         $s1, 0x30($sp)
    /* 1B728 8002AF28 3200B2A7 */  sh         $s2, 0x32($sp)
    /* 1B72C 8002AF2C 2D002226 */  addiu      $v0, $s1, 0x2D
    /* 1B730 8002AF30 3400A2A7 */  sh         $v0, 0x34($sp)
    /* 1B734 8002AF34 24004226 */  addiu      $v0, $s2, 0x24
    /* 1B738 8002AF38 3600A2A7 */  sh         $v0, 0x36($sp)
    /* 1B73C 8002AF3C 00141100 */  sll        $v0, $s1, 16
    /* 1B740 8002AF40 02004104 */  bgez       $v0, .L8002AF4C
    /* 1B744 8002AF44 00000000 */   nop
    /* 1B748 8002AF48 3000A0A7 */  sh         $zero, 0x30($sp)
  .L8002AF4C:
    /* 1B74C 8002AF4C 3200A287 */  lh         $v0, 0x32($sp)
    /* 1B750 8002AF50 00000000 */  nop
    /* 1B754 8002AF54 02004104 */  bgez       $v0, .L8002AF60
    /* 1B758 8002AF58 00000000 */   nop
    /* 1B75C 8002AF5C 3200A0A7 */  sh         $zero, 0x32($sp)
  .L8002AF60:
    /* 1B760 8002AF60 3400A287 */  lh         $v0, 0x34($sp)
    /* 1B764 8002AF64 3000A387 */  lh         $v1, 0x30($sp)
    /* 1B768 8002AF68 00000000 */  nop
    /* 1B76C 8002AF6C 23104300 */  subu       $v0, $v0, $v1
    /* 1B770 8002AF70 00140200 */  sll        $v0, $v0, 16
    /* 1B774 8002AF74 4C004018 */  blez       $v0, .L8002B0A8
    /* 1B778 8002AF78 00000000 */   nop
    /* 1B77C 8002AF7C 3600A287 */  lh         $v0, 0x36($sp)
    /* 1B780 8002AF80 3200A387 */  lh         $v1, 0x32($sp)
    /* 1B784 8002AF84 00000000 */  nop
    /* 1B788 8002AF88 23104300 */  subu       $v0, $v0, $v1
    /* 1B78C 8002AF8C 00140200 */  sll        $v0, $v0, 16
    /* 1B790 8002AF90 45004018 */  blez       $v0, .L8002B0A8
    /* 1B794 8002AF94 00000000 */   nop
    /* 1B798 8002AF98 1865030C */  jal        func_800D9460
    /* 1B79C 8002AF9C 21800000 */   addu      $s0, $zero, $zero
    /* 1B7A0 8002AFA0 1280043C */  lui        $a0, %hi(D_8011E95E)
    /* 1B7A4 8002AFA4 5EE98484 */  lh         $a0, %lo(D_8011E95E)($a0)
    /* 1B7A8 8002AFA8 00000000 */  nop
    /* 1B7AC 8002AFAC 08008424 */  addiu      $a0, $a0, 0x8
    /* 1B7B0 8002AFB0 00240400 */  sll        $a0, $a0, 16
    /* 1B7B4 8002AFB4 03240400 */  sra        $a0, $a0, 16
    /* 1B7B8 8002AFB8 D0EC030C */  jal        func_800FB340
    /* 1B7BC 8002AFBC 08000524 */   addiu     $a1, $zero, 0x8
    /* 1B7C0 8002AFC0 1280133C */  lui        $s3, %hi(D_8011E72C)
    /* 1B7C4 8002AFC4 2CE77326 */  addiu      $s3, $s3, %lo(D_8011E72C)
    /* 1B7C8 8002AFC8 00141200 */  sll        $v0, $s2, 16
    /* 1B7CC 8002AFCC 03AC0200 */  sra        $s5, $v0, 16
    /* 1B7D0 8002AFD0 0B00022A */  slti       $v0, $s0, 0xB
  .L8002AFD4:
    /* 1B7D4 8002AFD4 28004010 */  beqz       $v0, .L8002B078
    /* 1B7D8 8002AFD8 C0281000 */   sll       $a1, $s0, 3
    /* 1B7DC 8002AFDC 2128B000 */  addu       $a1, $a1, $s0
    /* 1B7E0 8002AFE0 80280500 */  sll        $a1, $a1, 2
    /* 1B7E4 8002AFE4 2128B000 */  addu       $a1, $a1, $s0
    /* 1B7E8 8002AFE8 80280500 */  sll        $a1, $a1, 2
    /* 1B7EC 8002AFEC 1380023C */  lui        $v0, %hi(D_801292FC)
    /* 1B7F0 8002AFF0 FC924224 */  addiu      $v0, $v0, %lo(D_801292FC)
    /* 1B7F4 8002AFF4 003C1100 */  sll        $a3, $s1, 16
    /* 1B7F8 8002AFF8 1000B5AF */  sw         $s5, 0x10($sp)
    /* 1B7FC 8002AFFC 4000A427 */  addiu      $a0, $sp, 0x40
    /* 1B800 8002B000 2128A200 */  addu       $a1, $a1, $v0
    /* 1B804 8002B004 21306002 */  addu       $a2, $s3, $zero
    /* 1B808 8002B008 89EE030C */  jal        func_800FBA24
    /* 1B80C 8002B00C 033C0700 */   sra       $a3, $a3, 16
    /* 1B810 8002B010 21206002 */  addu       $a0, $s3, $zero
    /* 1B814 8002B014 B47B020C */  jal        func_8009EED0
    /* 1B818 8002B018 3000A527 */   addiu     $a1, $sp, 0x30
    /* 1B81C 8002B01C 8E12040C */  jal        func_80104A38
    /* 1B820 8002B020 01001026 */   addiu     $s0, $s0, 0x1
    /* 1B824 8002B024 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1B828 8002B028 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1B82C 8002B02C 1800B1AF */  sw         $s1, 0x18($sp)
    /* 1B830 8002B030 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 1B834 8002B034 1280023C */  lui        $v0, %hi(D_8011E800)
    /* 1B838 8002B038 00E8428C */  lw         $v0, %lo(D_8011E800)($v0)
    /* 1B83C 8002B03C 00000000 */  nop
    /* 1B840 8002B040 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1B844 8002B044 1280023C */  lui        $v0, %hi(D_8011E804)
    /* 1B848 8002B048 04E8428C */  lw         $v0, %lo(D_8011E804)($v0)
    /* 1B84C 8002B04C 00000000 */  nop
    /* 1B850 8002B050 2400A2AF */  sw         $v0, 0x24($sp)
    /* 1B854 8002B054 2800B7AF */  sw         $s7, 0x28($sp)
    /* 1B858 8002B058 2C00B6AF */  sw         $s6, 0x2C($sp)
    /* 1B85C 8002B05C 21208002 */  addu       $a0, $s4, $zero
    /* 1B860 8002B060 21286002 */  addu       $a1, $s3, $zero
    /* 1B864 8002B064 21300000 */  addu       $a2, $zero, $zero
    /* 1B868 8002B068 73BD020C */  jal        func_800AF5CC
    /* 1B86C 8002B06C 21380000 */   addu      $a3, $zero, $zero
    /* 1B870 8002B070 F5AB0008 */  j          .L8002AFD4
    /* 1B874 8002B074 0B00022A */   slti      $v0, $s0, 0xB
  .L8002B078:
    /* 1B878 8002B078 01000424 */  addiu      $a0, $zero, 0x1
    /* 1B87C 8002B07C D0EC030C */  jal        func_800FB340
    /* 1B880 8002B080 01000524 */   addiu     $a1, $zero, 0x1
    /* 1B884 8002B084 80000224 */  addiu      $v0, $zero, 0x80
    /* 1B888 8002B088 1680013C */  lui        $at, %hi(D_801592E4)
    /* 1B88C 8002B08C E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* 1B890 8002B090 5365030C */  jal        func_800D954C
    /* 1B894 8002B094 00000000 */   nop
    /* 1B898 8002B098 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* 1B89C 8002B09C 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* 1B8A0 8002B0A0 B47B020C */  jal        func_8009EED0
    /* 1B8A4 8002B0A4 3000A527 */   addiu     $a1, $sp, 0x30
  .L8002B0A8:
    /* 1B8A8 8002B0A8 03008012 */  beqz       $s4, .L8002B0B8
    /* 1B8AC 8002B0AC 21208002 */   addu      $a0, $s4, $zero
    /* 1B8B0 8002B0B0 4CE1030C */  jal        func_800F8530
    /* 1B8B4 8002B0B4 03000524 */   addiu     $a1, $zero, 0x3
  .L8002B0B8:
    /* 1B8B8 8002B0B8 6800BF8F */  lw         $ra, 0x68($sp)
    /* 1B8BC 8002B0BC 6400B78F */  lw         $s7, 0x64($sp)
    /* 1B8C0 8002B0C0 6000B68F */  lw         $s6, 0x60($sp)
    /* 1B8C4 8002B0C4 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 1B8C8 8002B0C8 5800B48F */  lw         $s4, 0x58($sp)
    /* 1B8CC 8002B0CC 5400B38F */  lw         $s3, 0x54($sp)
    /* 1B8D0 8002B0D0 5000B28F */  lw         $s2, 0x50($sp)
    /* 1B8D4 8002B0D4 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 1B8D8 8002B0D8 4800B08F */  lw         $s0, 0x48($sp)
    /* 1B8DC 8002B0DC 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 1B8E0 8002B0E0 0800E003 */  jr         $ra
    /* 1B8E4 8002B0E4 00000000 */   nop
endlabel func_8002AD94
