.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BFE58, 0x58C

glabel func_800BFE58
    /* B0658 800BFE58 18FDBD27 */  addiu      $sp, $sp, -0x2E8
    /* B065C 800BFE5C D402B3AF */  sw         $s3, 0x2D4($sp)
    /* B0660 800BFE60 21988000 */  addu       $s3, $a0, $zero
    /* B0664 800BFE64 2800A427 */  addiu      $a0, $sp, 0x28
    /* B0668 800BFE68 00200524 */  addiu      $a1, $zero, 0x2000
    /* B066C 800BFE6C E402BFAF */  sw         $ra, 0x2E4($sp)
    /* B0670 800BFE70 E002B6AF */  sw         $s6, 0x2E0($sp)
    /* B0674 800BFE74 DC02B5AF */  sw         $s5, 0x2DC($sp)
    /* B0678 800BFE78 D802B4AF */  sw         $s4, 0x2D8($sp)
    /* B067C 800BFE7C D002B2AF */  sw         $s2, 0x2D0($sp)
    /* B0680 800BFE80 CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* B0684 800BFE84 ADC5020C */  jal        func_800B16B4
    /* B0688 800BFE88 C802B0AF */   sw        $s0, 0x2C8($sp)
  .L800BFE8C:
    /* B068C 800BFE8C 01000524 */  addiu      $a1, $zero, 0x1
  .L800BFE90:
    /* B0690 800BFE90 07000624 */  addiu      $a2, $zero, 0x7
    /* B0694 800BFE94 21A00000 */  addu       $s4, $zero, $zero
    /* B0698 800BFE98 1280013C */  lui        $at, %hi(D_8011A37E)
    /* B069C 800BFE9C 21083300 */  addu       $at, $at, $s3
    /* B06A0 800BFEA0 7EA32490 */  lbu        $a0, %lo(D_8011A37E)($at)
    /* B06A4 800BFEA4 F53A030C */  jal        func_800CEBD4
    /* B06A8 800BFEA8 21B00000 */   addu      $s6, $zero, $zero
    /* B06AC 800BFEAC 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B06B0 800BFEB0 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B06B4 800BFEB4 80100200 */  sll        $v0, $v0, 2
    /* B06B8 800BFEB8 21104300 */  addu       $v0, $v0, $v1
    /* B06BC 800BFEBC 8C03458C */  lw         $a1, 0x38C($v0)
    /* B06C0 800BFEC0 ABAC020C */  jal        func_800AB2AC
    /* B06C4 800BFEC4 21200000 */   addu      $a0, $zero, $zero
    /* B06C8 800BFEC8 21280000 */  addu       $a1, $zero, $zero
    /* B06CC 800BFECC 40101300 */  sll        $v0, $s3, 1
    /* B06D0 800BFED0 21105300 */  addu       $v0, $v0, $s3
    /* B06D4 800BFED4 80100200 */  sll        $v0, $v0, 2
    /* B06D8 800BFED8 23105300 */  subu       $v0, $v0, $s3
    /* B06DC 800BFEDC 00110200 */  sll        $v0, $v0, 4
    /* B06E0 800BFEE0 23105300 */  subu       $v0, $v0, $s3
    /* B06E4 800BFEE4 C0100200 */  sll        $v0, $v0, 3
    /* B06E8 800BFEE8 1180013C */  lui        $at, %hi(D_801176B0)
    /* B06EC 800BFEEC 21082200 */  addu       $at, $at, $v0
    /* B06F0 800BFEF0 B0762490 */  lbu        $a0, %lo(D_801176B0)($at)
    /* B06F4 800BFEF4 F53A030C */  jal        func_800CEBD4
    /* B06F8 800BFEF8 07000624 */   addiu     $a2, $zero, 0x7
    /* B06FC 800BFEFC 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B0700 800BFF00 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B0704 800BFF04 80100200 */  sll        $v0, $v0, 2
    /* B0708 800BFF08 21104300 */  addu       $v0, $v0, $v1
    /* B070C 800BFF0C 7003458C */  lw         $a1, 0x370($v0)
    /* B0710 800BFF10 ABAC020C */  jal        func_800AB2AC
    /* B0714 800BFF14 01000424 */   addiu     $a0, $zero, 0x1
    /* B0718 800BFF18 2800A427 */  addiu      $a0, $sp, 0x28
    /* B071C 800BFF1C 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* B0720 800BFF20 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* B0724 800BFF24 9DDC0634 */  ori        $a2, $zero, 0xDC9D
    /* B0728 800BFF28 21380000 */  addu       $a3, $zero, $zero
    /* B072C 800BFF2C 01000224 */  addiu      $v0, $zero, 0x1
    /* B0730 800BFF30 1000A0AF */  sw         $zero, 0x10($sp)
    /* B0734 800BFF34 1400A0AF */  sw         $zero, 0x14($sp)
    /* B0738 800BFF38 1800A0AF */  sw         $zero, 0x18($sp)
    /* B073C 800BFF3C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* B0740 800BFF40 2CE0020C */  jal        func_800B80B0
    /* B0744 800BFF44 2000A2AF */   sw        $v0, 0x20($sp)
    /* B0748 800BFF48 21206002 */  addu       $a0, $s3, $zero
    /* B074C 800BFF4C C17B030C */  jal        func_800DEF04
    /* B0750 800BFF50 18000524 */   addiu     $a1, $zero, 0x18
    /* B0754 800BFF54 05004014 */  bnez       $v0, .L800BFF6C
    /* B0758 800BFF58 21206002 */   addu      $a0, $s3, $zero
    /* B075C 800BFF5C C17B030C */  jal        func_800DEF04
    /* B0760 800BFF60 09000524 */   addiu     $a1, $zero, 0x9
    /* B0764 800BFF64 02004010 */  beqz       $v0, .L800BFF70
    /* B0768 800BFF68 00000000 */   nop
  .L800BFF6C:
    /* B076C 800BFF6C 01001624 */  addiu      $s6, $zero, 0x1
  .L800BFF70:
    /* B0770 800BFF70 1280033C */  lui        $v1, %hi(D_8011A372)
    /* B0774 800BFF74 72A36384 */  lh         $v1, %lo(D_8011A372)($v1)
    /* B0778 800BFF78 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B077C 800BFF7C 0B006214 */  bne        $v1, $v0, .L800BFFAC
    /* B0780 800BFF80 21A80000 */   addu      $s5, $zero, $zero
    /* B0784 800BFF84 21206002 */  addu       $a0, $s3, $zero
    /* B0788 800BFF88 C17B030C */  jal        func_800DEF04
    /* B078C 800BFF8C 09000524 */   addiu     $a1, $zero, 0x9
    /* B0790 800BFF90 06004014 */  bnez       $v0, .L800BFFAC
    /* B0794 800BFF94 00000000 */   nop
    /* B0798 800BFF98 1280023C */  lui        $v0, %hi(D_8011A271)
    /* B079C 800BFF9C 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* B07A0 800BFFA0 00000000 */  nop
    /* B07A4 800BFFA4 03004010 */  beqz       $v0, .L800BFFB4
    /* B07A8 800BFFA8 01001224 */   addiu     $s2, $zero, 0x1
  .L800BFFAC:
    /* B07AC 800BFFAC 01001524 */  addiu      $s5, $zero, 0x1
    /* B07B0 800BFFB0 01001224 */  addiu      $s2, $zero, 0x1
  .L800BFFB4:
    /* B07B4 800BFFB4 40101300 */  sll        $v0, $s3, 1
    /* B07B8 800BFFB8 21105300 */  addu       $v0, $v0, $s3
    /* B07BC 800BFFBC 80100200 */  sll        $v0, $v0, 2
    /* B07C0 800BFFC0 23105300 */  subu       $v0, $v0, $s3
    /* B07C4 800BFFC4 00110200 */  sll        $v0, $v0, 4
    /* B07C8 800BFFC8 23105300 */  subu       $v0, $v0, $s3
    /* B07CC 800BFFCC C0100200 */  sll        $v0, $v0, 3
    /* B07D0 800BFFD0 1180033C */  lui        $v1, %hi(D_801176B8)
    /* B07D4 800BFFD4 B8766324 */  addiu      $v1, $v1, %lo(D_801176B8)
    /* B07D8 800BFFD8 21884300 */  addu       $s1, $v0, $v1
  .L800BFFDC:
    /* B07DC 800BFFDC 0800422A */  slti       $v0, $s2, 0x8
    /* B07E0 800BFFE0 7A004010 */  beqz       $v0, .L800C01CC
    /* B07E4 800BFFE4 00000000 */   nop
    /* B07E8 800BFFE8 75005312 */  beq        $s2, $s3, .L800C01C0
    /* B07EC 800BFFEC 00000000 */   nop
    /* B07F0 800BFFF0 1280023C */  lui        $v0, %hi(D_8011A274)
    /* B07F4 800BFFF4 74A24290 */  lbu        $v0, %lo(D_8011A274)($v0)
    /* B07F8 800BFFF8 00000000 */  nop
    /* B07FC 800BFFFC 07104202 */  srav       $v0, $v0, $s2
    /* B0800 800C0000 01004230 */  andi       $v0, $v0, 0x1
    /* B0804 800C0004 6E004010 */  beqz       $v0, .L800C01C0
    /* B0808 800C0008 00000000 */   nop
    /* B080C 800C000C 0600A016 */  bnez       $s5, .L800C0028
    /* B0810 800C0010 00000000 */   nop
    /* B0814 800C0014 0000228E */  lw         $v0, 0x0($s1)
    /* B0818 800C0018 00000000 */  nop
    /* B081C 800C001C 01004230 */  andi       $v0, $v0, 0x1
    /* B0820 800C0020 67004010 */  beqz       $v0, .L800C01C0
    /* B0824 800C0024 00000000 */   nop
  .L800C0028:
    /* B0828 800C0028 1280043C */  lui        $a0, %hi(D_80121340)
    /* B082C 800C002C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0830 800C0030 CB1A030C */  jal        func_800C6B2C
    /* B0834 800C0034 01009426 */   addiu     $s4, $s4, 0x1
    /* B0838 800C0038 5D54020C */  jal        func_80095174
    /* B083C 800C003C 21204002 */   addu      $a0, $s2, $zero
    /* B0840 800C0040 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0844 800C0044 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0848 800C0048 9987030C */  jal        func_800E1E64
    /* B084C 800C004C 21284000 */   addu      $a1, $v0, $zero
    /* B0850 800C0050 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0854 800C0054 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0858 800C0058 1680053C */  lui        $a1, %hi(D_8015900C)
    /* B085C 800C005C 0C90A524 */  addiu      $a1, $a1, %lo(D_8015900C)
    /* B0860 800C0060 9987030C */  jal        func_800E1E64
    /* B0864 800C0064 00000000 */   nop
    /* B0868 800C0068 F853020C */  jal        func_80094FE0
    /* B086C 800C006C 21204002 */   addu      $a0, $s2, $zero
    /* B0870 800C0070 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0874 800C0074 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0878 800C0078 9987030C */  jal        func_800E1E64
    /* B087C 800C007C 21284000 */   addu      $a1, $v0, $zero
    /* B0880 800C0080 21206002 */  addu       $a0, $s3, $zero
    /* B0884 800C0084 6928010C */  jal        func_8004A1A4
    /* B0888 800C0088 21284002 */   addu      $a1, $s2, $zero
    /* B088C 800C008C 1680043C */  lui        $a0, %hi(D_80158654)
    /* B0890 800C0090 5486848C */  lw         $a0, %lo(D_80158654)($a0)
    /* B0894 800C0094 0B76030C */  jal        func_800DD82C
    /* B0898 800C0098 00000000 */   nop
    /* B089C 800C009C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B08A0 800C00A0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B08A4 800C00A4 151B030C */  jal        func_800C6C54
    /* B08A8 800C00A8 21804000 */   addu      $s0, $v0, $zero
    /* B08AC 800C00AC 80801000 */  sll        $s0, $s0, 2
    /* B08B0 800C00B0 1280013C */  lui        $at, %hi(D_8011A708)
    /* B08B4 800C00B4 21083000 */  addu       $at, $at, $s0
    /* B08B8 800C00B8 08A7258C */  lw         $a1, %lo(D_8011A708)($at)
    /* B08BC 800C00BC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B08C0 800C00C0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B08C4 800C00C4 651B030C */  jal        func_800C6D94
    /* B08C8 800C00C8 00000000 */   nop
    /* B08CC 800C00CC 0000238E */  lw         $v1, 0x0($s1)
    /* B08D0 800C00D0 00000000 */  nop
    /* B08D4 800C00D4 00206230 */  andi       $v0, $v1, 0x2000
    /* B08D8 800C00D8 0B004010 */  beqz       $v0, .L800C0108
    /* B08DC 800C00DC 08006230 */   andi      $v0, $v1, 0x8
    /* B08E0 800C00E0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B08E4 800C00E4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B08E8 800C00E8 1680053C */  lui        $a1, %hi(D_80158FF4)
    /* B08EC 800C00EC F48FA524 */  addiu      $a1, $a1, %lo(D_80158FF4)
    /* B08F0 800C00F0 9987030C */  jal        func_800E1E64
    /* B08F4 800C00F4 00000000 */   nop
    /* B08F8 800C00F8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B08FC 800C00FC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0900 800C0100 65000308 */  j          .L800C0194
    /* B0904 800C0104 90000524 */   addiu     $a1, $zero, 0x90
  .L800C0108:
    /* B0908 800C0108 0B004010 */  beqz       $v0, .L800C0138
    /* B090C 800C010C 04006230 */   andi      $v0, $v1, 0x4
    /* B0910 800C0110 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0914 800C0114 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0918 800C0118 1680053C */  lui        $a1, %hi(D_80158FF4)
    /* B091C 800C011C F48FA524 */  addiu      $a1, $a1, %lo(D_80158FF4)
    /* B0920 800C0120 9987030C */  jal        func_800E1E64
    /* B0924 800C0124 00000000 */   nop
    /* B0928 800C0128 1280043C */  lui        $a0, %hi(D_80121340)
    /* B092C 800C012C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0930 800C0130 65000308 */  j          .L800C0194
    /* B0934 800C0134 8D000524 */   addiu     $a1, $zero, 0x8D
  .L800C0138:
    /* B0938 800C0138 0B004010 */  beqz       $v0, .L800C0168
    /* B093C 800C013C 02006230 */   andi      $v0, $v1, 0x2
    /* B0940 800C0140 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0944 800C0144 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0948 800C0148 1680053C */  lui        $a1, %hi(D_80158FF4)
    /* B094C 800C014C F48FA524 */  addiu      $a1, $a1, %lo(D_80158FF4)
    /* B0950 800C0150 9987030C */  jal        func_800E1E64
    /* B0954 800C0154 00000000 */   nop
    /* B0958 800C0158 1280043C */  lui        $a0, %hi(D_80121340)
    /* B095C 800C015C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0960 800C0160 65000308 */  j          .L800C0194
    /* B0964 800C0164 8E000524 */   addiu     $a1, $zero, 0x8E
  .L800C0168:
    /* B0968 800C0168 0C004010 */  beqz       $v0, .L800C019C
    /* B096C 800C016C 00000000 */   nop
    /* B0970 800C0170 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0974 800C0174 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0978 800C0178 1680053C */  lui        $a1, %hi(D_80158FF4)
    /* B097C 800C017C F48FA524 */  addiu      $a1, $a1, %lo(D_80158FF4)
    /* B0980 800C0180 9987030C */  jal        func_800E1E64
    /* B0984 800C0184 00000000 */   nop
    /* B0988 800C0188 1280043C */  lui        $a0, %hi(D_80121340)
    /* B098C 800C018C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0990 800C0190 8F000524 */  addiu      $a1, $zero, 0x8F
  .L800C0194:
    /* B0994 800C0194 731B030C */  jal        func_800C6DCC
    /* B0998 800C0198 00000000 */   nop
  .L800C019C:
    /* B099C 800C019C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B09A0 800C01A0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B09A4 800C01A4 1F1B030C */  jal        func_800C6C7C
    /* B09A8 800C01A8 00000000 */   nop
    /* B09AC 800C01AC 2800A427 */  addiu      $a0, $sp, 0x28
    /* B09B0 800C01B0 1280053C */  lui        $a1, %hi(D_80121340)
    /* B09B4 800C01B4 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B09B8 800C01B8 A8C9020C */  jal        func_800B26A0
    /* B09BC 800C01BC 21304002 */   addu      $a2, $s2, $zero
  .L800C01C0:
    /* B09C0 800C01C0 04003126 */  addiu      $s1, $s1, 0x4
    /* B09C4 800C01C4 F7FF0208 */  j          .L800BFFDC
    /* B09C8 800C01C8 01005226 */   addiu     $s2, $s2, 0x1
  .L800C01CC:
    /* B09CC 800C01CC 0C008016 */  bnez       $s4, .L800C0200
    /* B09D0 800C01D0 2800B127 */   addiu     $s1, $sp, 0x28
    /* B09D4 800C01D4 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* B09D8 800C01D8 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* B09DC 800C01DC 4CDD0534 */  ori        $a1, $zero, 0xDD4C
    /* B09E0 800C01E0 21300000 */  addu       $a2, $zero, $zero
    /* B09E4 800C01E4 21380000 */  addu       $a3, $zero, $zero
    /* B09E8 800C01E8 1000A0AF */  sw         $zero, 0x10($sp)
    /* B09EC 800C01EC 1400A0AF */  sw         $zero, 0x14($sp)
    /* B09F0 800C01F0 B4E2020C */  jal        func_800B8AD0
    /* B09F4 800C01F4 1800A0AF */   sw        $zero, 0x18($sp)
    /* B09F8 800C01F8 EC000308 */  j          .L800C03B0
    /* B09FC 800C01FC 2800A427 */   addiu     $a0, $sp, 0x28
  .L800C0200:
    /* B0A00 800C0200 21202002 */  addu       $a0, $s1, $zero
    /* B0A04 800C0204 52DF020C */  jal        func_800B7D48
    /* B0A08 800C0208 21280000 */   addu      $a1, $zero, $zero
    /* B0A0C 800C020C 21904000 */  addu       $s2, $v0, $zero
    /* B0A10 800C0210 03004106 */  bgez       $s2, .L800C0220
    /* B0A14 800C0214 01001524 */   addiu     $s5, $zero, 0x1
    /* B0A18 800C0218 EC000308 */  j          .L800C03B0
    /* B0A1C 800C021C 21202002 */   addu      $a0, $s1, $zero
  .L800C0220:
    /* B0A20 800C0220 1000B5AF */  sw         $s5, 0x10($sp)
    /* B0A24 800C0224 21202002 */  addu       $a0, $s1, $zero
    /* B0A28 800C0228 21280000 */  addu       $a1, $zero, $zero
    /* B0A2C 800C022C 21300000 */  addu       $a2, $zero, $zero
    /* B0A30 800C0230 1EC7020C */  jal        func_800B1C78
    /* B0A34 800C0234 21380000 */   addu      $a3, $zero, $zero
    /* B0A38 800C0238 21202002 */  addu       $a0, $s1, $zero
    /* B0A3C 800C023C 19FC0524 */  addiu      $a1, $zero, -0x3E7
    /* B0A40 800C0240 5AC8020C */  jal        func_800B2168
    /* B0A44 800C0244 19FC0624 */   addiu     $a2, $zero, -0x3E7
    /* B0A48 800C0248 21202002 */  addu       $a0, $s1, $zero
    /* B0A4C 800C024C 39C8020C */  jal        func_800B20E4
    /* B0A50 800C0250 C8000524 */   addiu     $a1, $zero, 0xC8
    /* B0A54 800C0254 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0A58 800C0258 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0A5C 800C025C CB1A030C */  jal        func_800C6B2C
    /* B0A60 800C0260 00000000 */   nop
    /* B0A64 800C0264 5D54020C */  jal        func_80095174
    /* B0A68 800C0268 21204002 */   addu      $a0, $s2, $zero
    /* B0A6C 800C026C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0A70 800C0270 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0A74 800C0274 9987030C */  jal        func_800E1E64
    /* B0A78 800C0278 21284000 */   addu      $a1, $v0, $zero
    /* B0A7C 800C027C 1280103C */  lui        $s0, %hi(D_80121340)
    /* B0A80 800C0280 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* B0A84 800C0284 0180053C */  lui        $a1, %hi(D_80012490)
    /* B0A88 800C0288 9024A524 */  addiu      $a1, $a1, %lo(D_80012490)
    /* B0A8C 800C028C 9987030C */  jal        func_800E1E64
    /* B0A90 800C0290 21200002 */   addu      $a0, $s0, $zero
    /* B0A94 800C0294 21202002 */  addu       $a0, $s1, $zero
    /* B0A98 800C0298 69C7020C */  jal        func_800B1DA4
    /* B0A9C 800C029C 21280002 */   addu      $a1, $s0, $zero
    /* B0AA0 800C02A0 21202002 */  addu       $a0, $s1, $zero
    /* B0AA4 800C02A4 0180053C */  lui        $a1, %hi(D_800124A8)
    /* B0AA8 800C02A8 A824A524 */  addiu      $a1, $a1, %lo(D_800124A8)
    /* B0AAC 800C02AC A8C9020C */  jal        func_800B26A0
    /* B0AB0 800C02B0 01000624 */   addiu     $a2, $zero, 0x1
    /* B0AB4 800C02B4 21202002 */  addu       $a0, $s1, $zero
    /* B0AB8 800C02B8 0180053C */  lui        $a1, %hi(D_800124B4)
    /* B0ABC 800C02BC B424A524 */  addiu      $a1, $a1, %lo(D_800124B4)
    /* B0AC0 800C02C0 A8C9020C */  jal        func_800B26A0
    /* B0AC4 800C02C4 02000624 */   addiu     $a2, $zero, 0x2
    /* B0AC8 800C02C8 21202002 */  addu       $a0, $s1, $zero
    /* B0ACC 800C02CC 52DF020C */  jal        func_800B7D48
    /* B0AD0 800C02D0 21280000 */   addu      $a1, $zero, $zero
    /* B0AD4 800C02D4 21A04000 */  addu       $s4, $v0, $zero
    /* B0AD8 800C02D8 ECFE8006 */  bltz       $s4, .L800BFE8C
    /* B0ADC 800C02DC 00000000 */   nop
    /* B0AE0 800C02E0 15009512 */  beq        $s4, $s5, .L800C0338
    /* B0AE4 800C02E4 02000224 */   addiu     $v0, $zero, 0x2
    /* B0AE8 800C02E8 31008216 */  bne        $s4, $v0, .L800C03B0
    /* B0AEC 800C02EC 2800A427 */   addiu     $a0, $sp, 0x28
    /* B0AF0 800C02F0 1280023C */  lui        $v0, %hi(D_8011A275)
    /* B0AF4 800C02F4 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* B0AF8 800C02F8 00000000 */  nop
    /* B0AFC 800C02FC 07106202 */  srav       $v0, $v0, $s3
    /* B0B00 800C0300 01004230 */  andi       $v0, $v0, 0x1
    /* B0B04 800C0304 29004010 */  beqz       $v0, .L800C03AC
    /* B0B08 800C0308 21206002 */   addu      $a0, $s3, $zero
    /* B0B0C 800C030C 21284002 */  addu       $a1, $s2, $zero
    /* B0B10 800C0310 A275030C */  jal        func_800DD688
    /* B0B14 800C0314 01040624 */   addiu     $a2, $zero, 0x401
    /* B0B18 800C0318 1000B5AF */  sw         $s5, 0x10($sp)
    /* B0B1C 800C031C 21206002 */  addu       $a0, $s3, $zero
    /* B0B20 800C0320 21284002 */  addu       $a1, $s2, $zero
    /* B0B24 800C0324 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* B0B28 800C0328 6151010C */  jal        func_80054584
    /* B0B2C 800C032C FFFF0724 */   addiu     $a3, $zero, -0x1
    /* B0B30 800C0330 EC000308 */  j          .L800C03B0
    /* B0B34 800C0334 2800A427 */   addiu     $a0, $sp, 0x28
  .L800C0338:
    /* B0B38 800C0338 40101300 */  sll        $v0, $s3, 1
    /* B0B3C 800C033C 21105300 */  addu       $v0, $v0, $s3
    /* B0B40 800C0340 80100200 */  sll        $v0, $v0, 2
    /* B0B44 800C0344 23105300 */  subu       $v0, $v0, $s3
    /* B0B48 800C0348 00110200 */  sll        $v0, $v0, 4
    /* B0B4C 800C034C 23105300 */  subu       $v0, $v0, $s3
    /* B0B50 800C0350 C0100200 */  sll        $v0, $v0, 3
    /* B0B54 800C0354 1180043C */  lui        $a0, %hi(D_801176B4)
    /* B0B58 800C0358 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* B0B5C 800C035C 80181200 */  sll        $v1, $s2, 2
    /* B0B60 800C0360 21104400 */  addu       $v0, $v0, $a0
    /* B0B64 800C0364 21186200 */  addu       $v1, $v1, $v0
    /* B0B68 800C0368 0000628C */  lw         $v0, 0x0($v1)
    /* B0B6C 800C036C 00000000 */  nop
    /* B0B70 800C0370 80004230 */  andi       $v0, $v0, 0x80
    /* B0B74 800C0374 08004014 */  bnez       $v0, .L800C0398
    /* B0B78 800C0378 00000000 */   nop
    /* B0B7C 800C037C 0600C016 */  bnez       $s6, .L800C0398
    /* B0B80 800C0380 00000000 */   nop
    /* B0B84 800C0384 1280023C */  lui        $v0, %hi(D_8011A271)
    /* B0B88 800C0388 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* B0B8C 800C038C 00000000 */  nop
    /* B0B90 800C0390 BEFE4010 */  beqz       $v0, .L800BFE8C
    /* B0B94 800C0394 00000000 */   nop
  .L800C0398:
    /* B0B98 800C0398 21206002 */  addu       $a0, $s3, $zero
    /* B0B9C 800C039C 1BFF020C */  jal        func_800BFC6C
    /* B0BA0 800C03A0 21284002 */   addu      $a1, $s2, $zero
    /* B0BA4 800C03A4 A4FF0208 */  j          .L800BFE90
    /* B0BA8 800C03A8 01000524 */   addiu     $a1, $zero, 0x1
  .L800C03AC:
    /* B0BAC 800C03AC 2800A427 */  addiu      $a0, $sp, 0x28
  .L800C03B0:
    /* B0BB0 800C03B0 0AC7020C */  jal        func_800B1C28
    /* B0BB4 800C03B4 02000524 */   addiu     $a1, $zero, 0x2
    /* B0BB8 800C03B8 E402BF8F */  lw         $ra, 0x2E4($sp)
    /* B0BBC 800C03BC E002B68F */  lw         $s6, 0x2E0($sp)
    /* B0BC0 800C03C0 DC02B58F */  lw         $s5, 0x2DC($sp)
    /* B0BC4 800C03C4 D802B48F */  lw         $s4, 0x2D8($sp)
    /* B0BC8 800C03C8 D402B38F */  lw         $s3, 0x2D4($sp)
    /* B0BCC 800C03CC D002B28F */  lw         $s2, 0x2D0($sp)
    /* B0BD0 800C03D0 CC02B18F */  lw         $s1, 0x2CC($sp)
    /* B0BD4 800C03D4 C802B08F */  lw         $s0, 0x2C8($sp)
    /* B0BD8 800C03D8 E802BD27 */  addiu      $sp, $sp, 0x2E8
    /* B0BDC 800C03DC 0800E003 */  jr         $ra
    /* B0BE0 800C03E0 00000000 */   nop
endlabel func_800BFE58
