.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AF6E0, 0x97C

glabel func_800AF6E0
    /* 9FEE0 800AF6E0 F0FEBD27 */  addiu      $sp, $sp, -0x110
    /* 9FEE4 800AF6E4 0C01BFAF */  sw         $ra, 0x10C($sp)
    /* 9FEE8 800AF6E8 0801BEAF */  sw         $fp, 0x108($sp)
    /* 9FEEC 800AF6EC 0401B7AF */  sw         $s7, 0x104($sp)
    /* 9FEF0 800AF6F0 0001B6AF */  sw         $s6, 0x100($sp)
    /* 9FEF4 800AF6F4 FC00B5AF */  sw         $s5, 0xFC($sp)
    /* 9FEF8 800AF6F8 F800B4AF */  sw         $s4, 0xF8($sp)
    /* 9FEFC 800AF6FC F400B3AF */  sw         $s3, 0xF4($sp)
    /* 9FF00 800AF700 F000B2AF */  sw         $s2, 0xF0($sp)
    /* 9FF04 800AF704 EC00B1AF */  sw         $s1, 0xEC($sp)
    /* 9FF08 800AF708 E800B0AF */  sw         $s0, 0xE8($sp)
    /* 9FF0C 800AF70C B000A4AF */  sw         $a0, 0xB0($sp)
    /* 9FF10 800AF710 21F0A000 */  addu       $fp, $a1, $zero
    /* 9FF14 800AF714 21B8C000 */  addu       $s7, $a2, $zero
    /* 9FF18 800AF718 2198E000 */  addu       $s3, $a3, $zero
    /* 9FF1C 800AF71C D800A0AF */  sw         $zero, 0xD8($sp)
    /* 9FF20 800AF720 4000B127 */  addiu      $s1, $sp, 0x40
    /* 9FF24 800AF724 21800000 */  addu       $s0, $zero, $zero
    /* 9FF28 800AF728 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800AF72C:
    /* 9FF2C 800AF72C 9AE0030C */  jal        func_800F8268
    /* 9FF30 800AF730 21202002 */   addu      $a0, $s1, $zero
    /* 9FF34 800AF734 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 9FF38 800AF738 FCFF1216 */  bne        $s0, $s2, .L800AF72C
    /* 9FF3C 800AF73C 2C003126 */   addiu     $s1, $s1, 0x2C
    /* 9FF40 800AF740 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 9FF44 800AF744 21083300 */  addu       $at, $at, $s3
    /* 9FF48 800AF748 24AC2980 */  lb         $t1, %lo(D_8011AC24)($at)
    /* 9FF4C 800AF74C 00000000 */  nop
    /* 9FF50 800AF750 C800A9AF */  sw         $t1, 0xC8($sp)
    /* 9FF54 800AF754 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 9FF58 800AF758 21083300 */  addu       $at, $at, $s3
    /* 9FF5C 800AF75C 30AC3380 */  lb         $s3, %lo(D_8011AC30)($at)
    /* 9FF60 800AF760 00000000 */  nop
    /* 9FF64 800AF764 D000B3AF */  sw         $s3, 0xD0($sp)
    /* 9FF68 800AF768 173B030C */  jal        func_800CEC5C
    /* 9FF6C 800AF76C 2120C903 */   addu      $a0, $fp, $t1
    /* 9FF70 800AF770 B800A2AF */  sw         $v0, 0xB8($sp)
    /* 9FF74 800AF774 2150F302 */  addu       $t2, $s7, $s3
    /* 9FF78 800AF778 C000AAAF */  sw         $t2, 0xC0($sp)
    /* 9FF7C 800AF77C 1280103C */  lui        $s0, %hi(D_8011ACB4)
    /* 9FF80 800AF780 B4AC1026 */  addiu      $s0, $s0, %lo(D_8011ACB4)
    /* 9FF84 800AF784 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9FF88 800AF788 2120C003 */  addu       $a0, $fp, $zero
    /* 9FF8C 800AF78C 2128E002 */  addu       $a1, $s7, $zero
    /* 9FF90 800AF790 0000078E */  lw         $a3, 0x0($s0)
    /* 9FF94 800AF794 0B6F020C */  jal        func_8009BC2C
    /* 9FF98 800AF798 21300000 */   addu      $a2, $zero, $zero
    /* 9FF9C 800AF79C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9FFA0 800AF7A0 B800A48F */  lw         $a0, 0xB8($sp)
    /* 9FFA4 800AF7A4 C000A58F */  lw         $a1, 0xC0($sp)
    /* 9FFA8 800AF7A8 0000078E */  lw         $a3, 0x0($s0)
    /* 9FFAC 800AF7AC 0B6F020C */  jal        func_8009BC2C
    /* 9FFB0 800AF7B0 21300000 */   addu      $a2, $zero, $zero
    /* 9FFB4 800AF7B4 21A00000 */  addu       $s4, $zero, $zero
    /* 9FFB8 800AF7B8 1280153C */  lui        $s5, %hi(D_8011E72C)
    /* 9FFBC 800AF7BC 2CE7B526 */  addiu      $s5, $s5, %lo(D_8011E72C)
    /* 9FFC0 800AF7C0 3000B327 */  addiu      $s3, $sp, 0x30
    /* 9FFC4 800AF7C4 B000A98F */  lw         $t1, 0xB0($sp)
    /* 9FFC8 800AF7C8 00000000 */  nop
    /* 9FFCC 800AF7CC 40100900 */  sll        $v0, $t1, 1
    /* 9FFD0 800AF7D0 21104900 */  addu       $v0, $v0, $t1
    /* 9FFD4 800AF7D4 80100200 */  sll        $v0, $v0, 2
    /* 9FFD8 800AF7D8 E000A2AF */  sw         $v0, 0xE0($sp)
    /* 9FFDC 800AF7DC 21504000 */  addu       $t2, $v0, $zero
    /* 9FFE0 800AF7E0 21504901 */  addu       $t2, $t2, $t1
    /* 9FFE4 800AF7E4 E000AAAF */  sw         $t2, 0xE0($sp)
  .L800AF7E8:
    /* 9FFE8 800AF7E8 5701801E */  bgtz       $s4, .L800AFD48
    /* 9FFEC 800AF7EC 7000A227 */   addiu     $v0, $sp, 0x70
    /* 9FFF0 800AF7F0 21105400 */  addu       $v0, $v0, $s4
    /* 9FFF4 800AF7F4 0C008012 */  beqz       $s4, .L800AF828
    /* 9FFF8 800AF7F8 000040A0 */   sb        $zero, 0x0($v0)
    /* 9FFFC 800AF7FC 40101400 */  sll        $v0, $s4, 1
    /* A0000 800AF800 21105400 */  addu       $v0, $v0, $s4
    /* A0004 800AF804 80100200 */  sll        $v0, $v0, 2
    /* A0008 800AF808 23105400 */  subu       $v0, $v0, $s4
    /* A000C 800AF80C 80110200 */  sll        $v0, $v0, 6
    /* A0010 800AF810 1280013C */  lui        $at, %hi(D_8011E956)
    /* A0014 800AF814 21082200 */  addu       $at, $at, $v0
    /* A0018 800AF818 56E92284 */  lh         $v0, %lo(D_8011E956)($at)
    /* A001C 800AF81C 00000000 */  nop
    /* A0020 800AF820 47014010 */  beqz       $v0, .L800AFD40
    /* A0024 800AF824 00000000 */   nop
  .L800AF828:
    /* A0028 800AF828 21880000 */  addu       $s1, $zero, $zero
    /* A002C 800AF82C 40101400 */  sll        $v0, $s4, 1
    /* A0030 800AF830 21105400 */  addu       $v0, $v0, $s4
    /* A0034 800AF834 80100200 */  sll        $v0, $v0, 2
    /* A0038 800AF838 23105400 */  subu       $v0, $v0, $s4
    /* A003C 800AF83C 80110200 */  sll        $v0, $v0, 6
    /* A0040 800AF840 21805500 */  addu       $s0, $v0, $s5
    /* A0044 800AF844 21200002 */  addu       $a0, $s0, $zero
    /* A0048 800AF848 2128C003 */  addu       $a1, $fp, $zero
    /* A004C 800AF84C 796C020C */  jal        func_8009B1E4
    /* A0050 800AF850 2130E002 */   addu      $a2, $s7, $zero
    /* A0054 800AF854 06004014 */  bnez       $v0, .L800AF870
    /* A0058 800AF858 00000000 */   nop
    /* A005C 800AF85C B800A58F */  lw         $a1, 0xB8($sp)
    /* A0060 800AF860 C000A68F */  lw         $a2, 0xC0($sp)
    /* A0064 800AF864 796C020C */  jal        func_8009B1E4
    /* A0068 800AF868 21200002 */   addu      $a0, $s0, $zero
    /* A006C 800AF86C 0100512C */  sltiu      $s1, $v0, 0x1
  .L800AF870:
    /* A0070 800AF870 33012016 */  bnez       $s1, .L800AFD40
    /* A0074 800AF874 7000A227 */   addiu     $v0, $sp, 0x70
    /* A0078 800AF878 21105400 */  addu       $v0, $v0, $s4
    /* A007C 800AF87C 01000324 */  addiu      $v1, $zero, 0x1
    /* A0080 800AF880 000043A0 */  sb         $v1, 0x0($v0)
    /* A0084 800AF884 40801400 */  sll        $s0, $s4, 1
    /* A0088 800AF888 21801402 */  addu       $s0, $s0, $s4
    /* A008C 800AF88C 80801000 */  sll        $s0, $s0, 2
    /* A0090 800AF890 23801402 */  subu       $s0, $s0, $s4
    /* A0094 800AF894 80811000 */  sll        $s0, $s0, 6
    /* A0098 800AF898 21881502 */  addu       $s1, $s0, $s5
    /* A009C 800AF89C 1000B7AF */  sw         $s7, 0x10($sp)
    /* A00A0 800AF8A0 21202002 */  addu       $a0, $s1, $zero
    /* A00A4 800AF8A4 7400A527 */  addiu      $a1, $sp, 0x74
    /* A00A8 800AF8A8 7800A627 */  addiu      $a2, $sp, 0x78
    /* A00AC 800AF8AC 0A66020C */  jal        func_80099828
    /* A00B0 800AF8B0 2138C003 */   addu      $a3, $fp, $zero
    /* A00B4 800AF8B4 C000A98F */  lw         $t1, 0xC0($sp)
    /* A00B8 800AF8B8 00000000 */  nop
    /* A00BC 800AF8BC 1000A9AF */  sw         $t1, 0x10($sp)
    /* A00C0 800AF8C0 21202002 */  addu       $a0, $s1, $zero
    /* A00C4 800AF8C4 7C00A527 */  addiu      $a1, $sp, 0x7C
    /* A00C8 800AF8C8 B800A78F */  lw         $a3, 0xB8($sp)
    /* A00CC 800AF8CC 0A66020C */  jal        func_80099828
    /* A00D0 800AF8D0 8000A627 */   addiu     $a2, $sp, 0x80
    /* A00D4 800AF8D4 1280013C */  lui        $at, %hi(D_8011E976)
    /* A00D8 800AF8D8 21083000 */  addu       $at, $at, $s0
    /* A00DC 800AF8DC 76E92384 */  lh         $v1, %lo(D_8011E976)($at)
    /* A00E0 800AF8E0 7800A28F */  lw         $v0, 0x78($sp)
    /* A00E4 800AF8E4 00000000 */  nop
    /* A00E8 800AF8E8 23104300 */  subu       $v0, $v0, $v1
    /* A00EC 800AF8EC 7800A2AF */  sw         $v0, 0x78($sp)
    /* A00F0 800AF8F0 1280013C */  lui        $at, %hi(D_8011E976)
    /* A00F4 800AF8F4 21083000 */  addu       $at, $at, $s0
    /* A00F8 800AF8F8 76E92384 */  lh         $v1, %lo(D_8011E976)($at)
    /* A00FC 800AF8FC 8000A28F */  lw         $v0, 0x80($sp)
    /* A0100 800AF900 00000000 */  nop
    /* A0104 800AF904 23104300 */  subu       $v0, $v0, $v1
    /* A0108 800AF908 8000A2AF */  sw         $v0, 0x80($sp)
    /* A010C 800AF90C 7400A28F */  lw         $v0, 0x74($sp)
    /* A0110 800AF910 7C00A48F */  lw         $a0, 0x7C($sp)
    /* A0114 800AF914 00000000 */  nop
    /* A0118 800AF918 2A188200 */  slt        $v1, $a0, $v0
    /* A011C 800AF91C 02006010 */  beqz       $v1, .L800AF928
    /* A0120 800AF920 21284000 */   addu      $a1, $v0, $zero
    /* A0124 800AF924 21288000 */  addu       $a1, $a0, $zero
  .L800AF928:
    /* A0128 800AF928 80101400 */  sll        $v0, $s4, 2
    /* A012C 800AF92C 21105300 */  addu       $v0, $v0, $s3
    /* A0130 800AF930 540045AC */  sw         $a1, 0x54($v0)
    /* A0134 800AF934 7800A28F */  lw         $v0, 0x78($sp)
    /* A0138 800AF938 8000A48F */  lw         $a0, 0x80($sp)
    /* A013C 800AF93C 00000000 */  nop
    /* A0140 800AF940 2A188200 */  slt        $v1, $a0, $v0
    /* A0144 800AF944 02006010 */  beqz       $v1, .L800AF950
    /* A0148 800AF948 21284000 */   addu      $a1, $v0, $zero
    /* A014C 800AF94C 21288000 */  addu       $a1, $a0, $zero
  .L800AF950:
    /* A0150 800AF950 80101400 */  sll        $v0, $s4, 2
    /* A0154 800AF954 21105300 */  addu       $v0, $v0, $s3
    /* A0158 800AF958 580045AC */  sw         $a1, 0x58($v0)
    /* A015C 800AF95C 7400A28F */  lw         $v0, 0x74($sp)
    /* A0160 800AF960 7C00A48F */  lw         $a0, 0x7C($sp)
    /* A0164 800AF964 00000000 */  nop
    /* A0168 800AF968 2A184400 */  slt        $v1, $v0, $a0
    /* A016C 800AF96C 02006010 */  beqz       $v1, .L800AF978
    /* A0170 800AF970 21284000 */   addu      $a1, $v0, $zero
    /* A0174 800AF974 21288000 */  addu       $a1, $a0, $zero
  .L800AF978:
    /* A0178 800AF978 80181400 */  sll        $v1, $s4, 2
    /* A017C 800AF97C 21187300 */  addu       $v1, $v1, $s3
    /* A0180 800AF980 40101400 */  sll        $v0, $s4, 1
    /* A0184 800AF984 21105400 */  addu       $v0, $v0, $s4
    /* A0188 800AF988 80100200 */  sll        $v0, $v0, 2
    /* A018C 800AF98C 23105400 */  subu       $v0, $v0, $s4
    /* A0190 800AF990 80110200 */  sll        $v0, $v0, 6
    /* A0194 800AF994 1280013C */  lui        $at, %hi(D_8011E970)
    /* A0198 800AF998 21082200 */  addu       $at, $at, $v0
    /* A019C 800AF99C 70E92284 */  lh         $v0, %lo(D_8011E970)($at)
    /* A01A0 800AF9A0 00000000 */  nop
    /* A01A4 800AF9A4 2110A200 */  addu       $v0, $a1, $v0
    /* A01A8 800AF9A8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A01AC 800AF9AC 5C0062AC */  sw         $v0, 0x5C($v1)
    /* A01B0 800AF9B0 7800A28F */  lw         $v0, 0x78($sp)
    /* A01B4 800AF9B4 8000A48F */  lw         $a0, 0x80($sp)
    /* A01B8 800AF9B8 00000000 */  nop
    /* A01BC 800AF9BC 2A184400 */  slt        $v1, $v0, $a0
    /* A01C0 800AF9C0 02006010 */  beqz       $v1, .L800AF9CC
    /* A01C4 800AF9C4 21304000 */   addu      $a2, $v0, $zero
    /* A01C8 800AF9C8 21308000 */  addu       $a2, $a0, $zero
  .L800AF9CC:
    /* A01CC 800AF9CC 80281400 */  sll        $a1, $s4, 2
    /* A01D0 800AF9D0 2128B300 */  addu       $a1, $a1, $s3
    /* A01D4 800AF9D4 40101400 */  sll        $v0, $s4, 1
    /* A01D8 800AF9D8 21105400 */  addu       $v0, $v0, $s4
    /* A01DC 800AF9DC 80100200 */  sll        $v0, $v0, 2
    /* A01E0 800AF9E0 23105400 */  subu       $v0, $v0, $s4
    /* A01E4 800AF9E4 80390200 */  sll        $a3, $v0, 6
    /* A01E8 800AF9E8 1280013C */  lui        $at, %hi(D_8011E97E)
    /* A01EC 800AF9EC 21082700 */  addu       $at, $at, $a3
    /* A01F0 800AF9F0 7EE92284 */  lh         $v0, %lo(D_8011E97E)($at)
    /* A01F4 800AF9F4 00000000 */  nop
    /* A01F8 800AF9F8 2110C200 */  addu       $v0, $a2, $v0
    /* A01FC 800AF9FC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A0200 800AFA00 6000A2AC */  sw         $v0, 0x60($a1)
    /* A0204 800AFA04 7400A28F */  lw         $v0, 0x74($sp)
    /* A0208 800AFA08 00000000 */  nop
    /* A020C 800AFA0C 6400A2AC */  sw         $v0, 0x64($a1)
    /* A0210 800AFA10 7800A28F */  lw         $v0, 0x78($sp)
    /* A0214 800AFA14 00000000 */  nop
    /* A0218 800AFA18 6800A2AC */  sw         $v0, 0x68($a1)
    /* A021C 800AFA1C 5400A48C */  lw         $a0, 0x54($a1)
    /* A0220 800AFA20 5800A68C */  lw         $a2, 0x58($a1)
    /* A0224 800AFA24 5C00A28C */  lw         $v0, 0x5C($a1)
    /* A0228 800AFA28 00000000 */  nop
    /* A022C 800AFA2C 01004224 */  addiu      $v0, $v0, 0x1
    /* A0230 800AFA30 6000A38C */  lw         $v1, 0x60($a1)
    /* A0234 800AFA34 00000000 */  nop
    /* A0238 800AFA38 01006324 */  addiu      $v1, $v1, 0x1
    /* A023C 800AFA3C 3000A4A7 */  sh         $a0, 0x30($sp)
    /* A0240 800AFA40 3200A6A7 */  sh         $a2, 0x32($sp)
    /* A0244 800AFA44 3400A2A7 */  sh         $v0, 0x34($sp)
    /* A0248 800AFA48 3600A3A7 */  sh         $v1, 0x36($sp)
    /* A024C 800AFA4C 00140200 */  sll        $v0, $v0, 16
    /* A0250 800AFA50 03140200 */  sra        $v0, $v0, 16
    /* A0254 800AFA54 00240400 */  sll        $a0, $a0, 16
    /* A0258 800AFA58 03240400 */  sra        $a0, $a0, 16
    /* A025C 800AFA5C 23104400 */  subu       $v0, $v0, $a0
    /* A0260 800AFA60 00140200 */  sll        $v0, $v0, 16
    /* A0264 800AFA64 03140200 */  sra        $v0, $v0, 16
    /* A0268 800AFA68 6C00A2AC */  sw         $v0, 0x6C($a1)
    /* A026C 800AFA6C 3600A287 */  lh         $v0, 0x36($sp)
    /* A0270 800AFA70 3200A387 */  lh         $v1, 0x32($sp)
    /* A0274 800AFA74 00000000 */  nop
    /* A0278 800AFA78 23104300 */  subu       $v0, $v0, $v1
    /* A027C 800AFA7C 00140200 */  sll        $v0, $v0, 16
    /* A0280 800AFA80 03140200 */  sra        $v0, $v0, 16
    /* A0284 800AFA84 7000A2AC */  sw         $v0, 0x70($a1)
    /* A0288 800AFA88 D800AA8F */  lw         $t2, 0xD8($sp)
    /* A028C 800AFA8C 00000000 */  nop
    /* A0290 800AFA90 61004015 */  bnez       $t2, .L800AFC18
    /* A0294 800AFA94 40101400 */   sll       $v0, $s4, 1
    /* A0298 800AFA98 01000924 */  addiu      $t1, $zero, 0x1
    /* A029C 800AFA9C D800A9AF */  sw         $t1, 0xD8($sp)
    /* A02A0 800AFAA0 2110F500 */  addu       $v0, $a3, $s5
    /* A02A4 800AFAA4 32024284 */  lh         $v0, 0x232($v0)
    /* A02A8 800AFAA8 00000000 */  nop
    /* A02AC 800AFAAC 08004224 */  addiu      $v0, $v0, 0x8
    /* A02B0 800AFAB0 40100200 */  sll        $v0, $v0, 1
    /* A02B4 800AFAB4 04004324 */  addiu      $v1, $v0, 0x4
    /* A02B8 800AFAB8 03006104 */  bgez       $v1, .L800AFAC8
    /* A02BC 800AFABC C3200300 */   sra       $a0, $v1, 3
    /* A02C0 800AFAC0 0B004324 */  addiu      $v1, $v0, 0xB
    /* A02C4 800AFAC4 C3200300 */  sra        $a0, $v1, 3
  .L800AFAC8:
    /* A02C8 800AFAC8 80101400 */  sll        $v0, $s4, 2
    /* A02CC 800AFACC 21105300 */  addu       $v0, $v0, $s3
    /* A02D0 800AFAD0 740044AC */  sw         $a0, 0x74($v0)
    /* A02D4 800AFAD4 01000224 */  addiu      $v0, $zero, 0x1
    /* A02D8 800AFAD8 2A104400 */  slt        $v0, $v0, $a0
    /* A02DC 800AFADC 02004010 */  beqz       $v0, .L800AFAE8
    /* A02E0 800AFAE0 01000324 */   addiu     $v1, $zero, 0x1
    /* A02E4 800AFAE4 21188000 */  addu       $v1, $a0, $zero
  .L800AFAE8:
    /* A02E8 800AFAE8 80101400 */  sll        $v0, $s4, 2
    /* A02EC 800AFAEC 21205300 */  addu       $a0, $v0, $s3
    /* A02F0 800AFAF0 03000224 */  addiu      $v0, $zero, 0x3
    /* A02F4 800AFAF4 03006214 */  bne        $v1, $v0, .L800AFB04
    /* A02F8 800AFAF8 740083AC */   sw        $v1, 0x74($a0)
    /* A02FC 800AFAFC 04000224 */  addiu      $v0, $zero, 0x4
    /* A0300 800AFB00 740082AC */  sw         $v0, 0x74($a0)
  .L800AFB04:
    /* A0304 800AFB04 40101400 */  sll        $v0, $s4, 1
    /* A0308 800AFB08 21105400 */  addu       $v0, $v0, $s4
    /* A030C 800AFB0C 80100200 */  sll        $v0, $v0, 2
    /* A0310 800AFB10 23105400 */  subu       $v0, $v0, $s4
    /* A0314 800AFB14 80390200 */  sll        $a3, $v0, 6
    /* A0318 800AFB18 1280013C */  lui        $at, %hi(D_8011E972)
    /* A031C 800AFB1C 21082700 */  addu       $at, $at, $a3
    /* A0320 800AFB20 72E93684 */  lh         $s6, %lo(D_8011E972)($at)
    /* A0324 800AFB24 80101400 */  sll        $v0, $s4, 2
    /* A0328 800AFB28 21305300 */  addu       $a2, $v0, $s3
    /* A032C 800AFB2C 7400C48C */  lw         $a0, 0x74($a2)
    /* A0330 800AFB30 00000000 */  nop
    /* A0334 800AFB34 1A00C402 */  div        $zero, $s6, $a0
    /* A0338 800AFB38 02008014 */  bnez       $a0, .L800AFB44
    /* A033C 800AFB3C 00000000 */   nop
    /* A0340 800AFB40 0D000700 */  break      7
  .L800AFB44:
    /* A0344 800AFB44 FFFF0124 */  addiu      $at, $zero, -0x1
    /* A0348 800AFB48 04008114 */  bne        $a0, $at, .L800AFB5C
    /* A034C 800AFB4C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A0350 800AFB50 0200C116 */  bne        $s6, $at, .L800AFB5C
    /* A0354 800AFB54 00000000 */   nop
    /* A0358 800AFB58 0D000600 */  break      6
  .L800AFB5C:
    /* A035C 800AFB5C 12100000 */  mflo       $v0
    /* A0360 800AFB60 00000000 */  nop
    /* A0364 800AFB64 01005624 */  addiu      $s6, $v0, 0x1
    /* A0368 800AFB68 E000AA8F */  lw         $t2, 0xE0($sp)
    /* A036C 800AFB6C 00000000 */  nop
    /* A0370 800AFB70 40280A00 */  sll        $a1, $t2, 1
    /* A0374 800AFB74 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* A0378 800AFB78 21082500 */  addu       $at, $at, $a1
    /* A037C 800AFB7C BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* A0380 800AFB80 00000000 */  nop
    /* A0384 800AFB84 80100300 */  sll        $v0, $v1, 2
    /* A0388 800AFB88 21104300 */  addu       $v0, $v0, $v1
    /* A038C 800AFB8C 80100200 */  sll        $v0, $v0, 2
    /* A0390 800AFB90 1180013C */  lui        $at, %hi(D_8010D285)
    /* A0394 800AFB94 21082200 */  addu       $at, $at, $v0
    /* A0398 800AFB98 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* A039C 800AFB9C 01000224 */  addiu      $v0, $zero, 0x1
    /* A03A0 800AFBA0 34006214 */  bne        $v1, $v0, .L800AFC74
    /* A03A4 800AFBA4 00000000 */   nop
    /* A03A8 800AFBA8 1280023C */  lui        $v0, %hi(D_8011A275)
    /* A03AC 800AFBAC 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* A03B0 800AFBB0 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* A03B4 800AFBB4 21082500 */  addu       $at, $at, $a1
    /* A03B8 800AFBB8 BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* A03BC 800AFBBC 00000000 */  nop
    /* A03C0 800AFBC0 07106200 */  srav       $v0, $v0, $v1
    /* A03C4 800AFBC4 01004230 */  andi       $v0, $v0, 0x1
    /* A03C8 800AFBC8 2A004010 */  beqz       $v0, .L800AFC74
    /* A03CC 800AFBCC 40100400 */   sll       $v0, $a0, 1
    /* A03D0 800AFBD0 7400C2AC */  sw         $v0, 0x74($a2)
    /* A03D4 800AFBD4 1280013C */  lui        $at, %hi(D_8011E972)
    /* A03D8 800AFBD8 21082700 */  addu       $at, $at, $a3
    /* A03DC 800AFBDC 72E93684 */  lh         $s6, %lo(D_8011E972)($at)
    /* A03E0 800AFBE0 00000000 */  nop
    /* A03E4 800AFBE4 1A00C202 */  div        $zero, $s6, $v0
    /* A03E8 800AFBE8 02004014 */  bnez       $v0, .L800AFBF4
    /* A03EC 800AFBEC 00000000 */   nop
    /* A03F0 800AFBF0 0D000700 */  break      7
  .L800AFBF4:
    /* A03F4 800AFBF4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* A03F8 800AFBF8 04004114 */  bne        $v0, $at, .L800AFC0C
    /* A03FC 800AFBFC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A0400 800AFC00 0200C116 */  bne        $s6, $at, .L800AFC0C
    /* A0404 800AFC04 00000000 */   nop
    /* A0408 800AFC08 0D000600 */  break      6
  .L800AFC0C:
    /* A040C 800AFC0C 12100000 */  mflo       $v0
    /* A0410 800AFC10 1DBF0208 */  j          .L800AFC74
    /* A0414 800AFC14 01005624 */   addiu     $s6, $v0, 0x1
  .L800AFC18:
    /* A0418 800AFC18 80201400 */  sll        $a0, $s4, 2
    /* A041C 800AFC1C 21209300 */  addu       $a0, $a0, $s3
    /* A0420 800AFC20 21105400 */  addu       $v0, $v0, $s4
    /* A0424 800AFC24 80100200 */  sll        $v0, $v0, 2
    /* A0428 800AFC28 23105400 */  subu       $v0, $v0, $s4
    /* A042C 800AFC2C 80110200 */  sll        $v0, $v0, 6
    /* A0430 800AFC30 1280013C */  lui        $at, %hi(D_8011E972)
    /* A0434 800AFC34 21082200 */  addu       $at, $at, $v0
    /* A0438 800AFC38 72E92284 */  lh         $v0, %lo(D_8011E972)($at)
    /* A043C 800AFC3C 00000000 */  nop
    /* A0440 800AFC40 1A005600 */  div        $zero, $v0, $s6
    /* A0444 800AFC44 0200C016 */  bnez       $s6, .L800AFC50
    /* A0448 800AFC48 00000000 */   nop
    /* A044C 800AFC4C 0D000700 */  break      7
  .L800AFC50:
    /* A0450 800AFC50 FFFF0124 */  addiu      $at, $zero, -0x1
    /* A0454 800AFC54 0400C116 */  bne        $s6, $at, .L800AFC68
    /* A0458 800AFC58 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A045C 800AFC5C 02004114 */  bne        $v0, $at, .L800AFC68
    /* A0460 800AFC60 00000000 */   nop
    /* A0464 800AFC64 0D000600 */  break      6
  .L800AFC68:
    /* A0468 800AFC68 12100000 */  mflo       $v0
    /* A046C 800AFC6C 00000000 */  nop
    /* A0470 800AFC70 740082AC */  sw         $v0, 0x74($a0)
  .L800AFC74:
    /* A0474 800AFC74 4000B227 */  addiu      $s2, $sp, 0x40
    /* A0478 800AFC78 40801400 */  sll        $s0, $s4, 1
    /* A047C 800AFC7C 21801402 */  addu       $s0, $s0, $s4
    /* A0480 800AFC80 80801000 */  sll        $s0, $s0, 2
    /* A0484 800AFC84 23801402 */  subu       $s0, $s0, $s4
    /* A0488 800AFC88 80101000 */  sll        $v0, $s0, 2
    /* A048C 800AFC8C 21904202 */  addu       $s2, $s2, $v0
    /* A0490 800AFC90 80881400 */  sll        $s1, $s4, 2
    /* A0494 800AFC94 21883302 */  addu       $s1, $s1, $s3
    /* A0498 800AFC98 6C002586 */  lh         $a1, 0x6C($s1)
    /* A049C 800AFC9C 70002686 */  lh         $a2, 0x70($s1)
    /* A04A0 800AFCA0 F3E0030C */  jal        func_800F83CC
    /* A04A4 800AFCA4 21204002 */   addu      $a0, $s2, $zero
    /* A04A8 800AFCA8 80811000 */  sll        $s0, $s0, 6
    /* A04AC 800AFCAC 21801502 */  addu       $s0, $s0, $s5
    /* A04B0 800AFCB0 D400028E */  lw         $v0, 0xD4($s0)
    /* A04B4 800AFCB4 00000000 */  nop
    /* A04B8 800AFCB8 1000A2AF */  sw         $v0, 0x10($sp)
    /* A04BC 800AFCBC D800028E */  lw         $v0, 0xD8($s0)
    /* A04C0 800AFCC0 00000000 */  nop
    /* A04C4 800AFCC4 1400A2AF */  sw         $v0, 0x14($sp)
    /* A04C8 800AFCC8 1800A0AF */  sw         $zero, 0x18($sp)
    /* A04CC 800AFCCC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* A04D0 800AFCD0 2000A0AF */  sw         $zero, 0x20($sp)
    /* A04D4 800AFCD4 2400A0AF */  sw         $zero, 0x24($sp)
    /* A04D8 800AFCD8 6C00228E */  lw         $v0, 0x6C($s1)
    /* A04DC 800AFCDC 00000000 */  nop
    /* A04E0 800AFCE0 2800A2AF */  sw         $v0, 0x28($sp)
    /* A04E4 800AFCE4 7000228E */  lw         $v0, 0x70($s1)
    /* A04E8 800AFCE8 00000000 */  nop
    /* A04EC 800AFCEC 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* A04F0 800AFCF0 21200002 */  addu       $a0, $s0, $zero
    /* A04F4 800AFCF4 5400268E */  lw         $a2, 0x54($s1)
    /* A04F8 800AFCF8 5800278E */  lw         $a3, 0x58($s1)
    /* A04FC 800AFCFC 73BD020C */  jal        func_800AF5CC
    /* A0500 800AFD00 21284002 */   addu      $a1, $s2, $zero
    /* A0504 800AFD04 7400228E */  lw         $v0, 0x74($s1)
    /* A0508 800AFD08 C800A98F */  lw         $t1, 0xC8($sp)
    /* A050C 800AFD0C 00000000 */  nop
    /* A0510 800AFD10 18002201 */  mult       $t1, $v0
    /* A0514 800AFD14 12180000 */  mflo       $v1
    /* A0518 800AFD18 780023AE */  sw         $v1, 0x78($s1)
    /* A051C 800AFD1C 7400228E */  lw         $v0, 0x74($s1)
    /* A0520 800AFD20 D000A98F */  lw         $t1, 0xD0($sp)
    /* A0524 800AFD24 00000000 */  nop
    /* A0528 800AFD28 18002201 */  mult       $t1, $v0
    /* A052C 800AFD2C 12100000 */  mflo       $v0
    /* A0530 800AFD30 C21F0200 */  srl        $v1, $v0, 31
    /* A0534 800AFD34 21104300 */  addu       $v0, $v0, $v1
    /* A0538 800AFD38 43100200 */  sra        $v0, $v0, 1
    /* A053C 800AFD3C 7C0022AE */  sw         $v0, 0x7C($s1)
  .L800AFD40:
    /* A0540 800AFD40 FABD0208 */  j          .L800AF7E8
    /* A0544 800AFD44 01009426 */   addiu     $s4, $s4, 0x1
  .L800AFD48:
    /* A0548 800AFD48 D800AA8F */  lw         $t2, 0xD8($sp)
    /* A054C 800AFD4C 00000000 */  nop
    /* A0550 800AFD50 0D004015 */  bnez       $t2, .L800AFD88
    /* A0554 800AFD54 21B80000 */   addu      $s7, $zero, $zero
    /* A0558 800AFD58 4000A227 */  addiu      $v0, $sp, 0x40
    /* A055C 800AFD5C 6C00B027 */  addiu      $s0, $sp, 0x6C
    /* A0560 800AFD60 B1005010 */  beq        $v0, $s0, .L800B0028
    /* A0564 800AFD64 4000B127 */   addiu     $s1, $sp, 0x40
    /* A0568 800AFD68 D4FF1026 */  addiu      $s0, $s0, -0x2C
  .L800AFD6C:
    /* A056C 800AFD6C 21200002 */  addu       $a0, $s0, $zero
    /* A0570 800AFD70 4CE1030C */  jal        func_800F8530
    /* A0574 800AFD74 02000524 */   addiu     $a1, $zero, 0x2
    /* A0578 800AFD78 FCFF3016 */  bne        $s1, $s0, .L800AFD6C
    /* A057C 800AFD7C D4FF1026 */   addiu     $s0, $s0, -0x2C
    /* A0580 800AFD80 0AC00208 */  j          .L800B0028
    /* A0584 800AFD84 00000000 */   nop
  .L800AFD88:
    /* A0588 800AFD88 3000B527 */  addiu      $s5, $sp, 0x30
  .L800AFD8C:
    /* A058C 800AFD8C 2A10F602 */  slt        $v0, $s7, $s6
    /* A0590 800AFD90 9B004010 */  beqz       $v0, .L800B0000
    /* A0594 800AFD94 21A00000 */   addu      $s4, $zero, $zero
  .L800AFD98:
    /* A0598 800AFD98 9700801E */  bgtz       $s4, .L800AFFF8
    /* A059C 800AFD9C 2110B403 */   addu      $v0, $sp, $s4
    /* A05A0 800AFDA0 70004290 */  lbu        $v0, 0x70($v0)
    /* A05A4 800AFDA4 00000000 */  nop
    /* A05A8 800AFDA8 91004010 */  beqz       $v0, .L800AFFF0
    /* A05AC 800AFDAC 40801400 */   sll       $s0, $s4, 1
    /* A05B0 800AFDB0 21801402 */  addu       $s0, $s0, $s4
    /* A05B4 800AFDB4 80801000 */  sll        $s0, $s0, 2
    /* A05B8 800AFDB8 23801402 */  subu       $s0, $s0, $s4
    /* A05BC 800AFDBC 80811000 */  sll        $s0, $s0, 6
    /* A05C0 800AFDC0 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* A05C4 800AFDC4 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* A05C8 800AFDC8 80881400 */  sll        $s1, $s4, 2
    /* A05CC 800AFDCC 21883502 */  addu       $s1, $s1, $s5
    /* A05D0 800AFDD0 6800228E */  lw         $v0, 0x68($s1)
    /* A05D4 800AFDD4 00000000 */  nop
    /* A05D8 800AFDD8 1000A2AF */  sw         $v0, 0x10($sp)
    /* A05DC 800AFDDC 1280013C */  lui        $at, %hi(D_8011E95E)
    /* A05E0 800AFDE0 21083000 */  addu       $at, $at, $s0
    /* A05E4 800AFDE4 5EE92284 */  lh         $v0, %lo(D_8011E95E)($at)
    /* A05E8 800AFDE8 00000000 */  nop
    /* A05EC 800AFDEC 1400A2AF */  sw         $v0, 0x14($sp)
    /* A05F0 800AFDF0 21200402 */  addu       $a0, $s0, $a0
    /* A05F4 800AFDF4 B000A58F */  lw         $a1, 0xB0($sp)
    /* A05F8 800AFDF8 6400278E */  lw         $a3, 0x64($s1)
    /* A05FC 800AFDFC 4CBB020C */  jal        func_800AED30
    /* A0600 800AFE00 05000624 */   addiu     $a2, $zero, 0x5
    /* A0604 800AFE04 7400248E */  lw         $a0, 0x74($s1)
    /* A0608 800AFE08 00000000 */  nop
    /* A060C 800AFE0C 40100400 */  sll        $v0, $a0, 1
    /* A0610 800AFE10 6400258E */  lw         $a1, 0x64($s1)
    /* A0614 800AFE14 00000000 */  nop
    /* A0618 800AFE18 2328A200 */  subu       $a1, $a1, $v0
    /* A061C 800AFE1C 6800238E */  lw         $v1, 0x68($s1)
    /* A0620 800AFE20 00000000 */  nop
    /* A0624 800AFE24 23186200 */  subu       $v1, $v1, $v0
    /* A0628 800AFE28 1280013C */  lui        $at, %hi(D_8011E970)
    /* A062C 800AFE2C 21083000 */  addu       $at, $at, $s0
    /* A0630 800AFE30 70E92284 */  lh         $v0, %lo(D_8011E970)($at)
    /* A0634 800AFE34 1280013C */  lui        $at, %hi(D_8011E97E)
    /* A0638 800AFE38 21083000 */  addu       $at, $at, $s0
    /* A063C 800AFE3C 7EE92684 */  lh         $a2, %lo(D_8011E97E)($at)
    /* A0640 800AFE40 80200400 */  sll        $a0, $a0, 2
    /* A0644 800AFE44 21108200 */  addu       $v0, $a0, $v0
    /* A0648 800AFE48 21208600 */  addu       $a0, $a0, $a2
    /* A064C 800AFE4C 3800A5A7 */  sh         $a1, 0x38($sp)
    /* A0650 800AFE50 3A00A3A7 */  sh         $v1, 0x3A($sp)
    /* A0654 800AFE54 2110A200 */  addu       $v0, $a1, $v0
    /* A0658 800AFE58 3C00A2A7 */  sh         $v0, 0x3C($sp)
    /* A065C 800AFE5C 21186400 */  addu       $v1, $v1, $a0
    /* A0660 800AFE60 3E00A3A7 */  sh         $v1, 0x3E($sp)
    /* A0664 800AFE64 002C0500 */  sll        $a1, $a1, 16
    /* A0668 800AFE68 032C0500 */  sra        $a1, $a1, 16
    /* A066C 800AFE6C 5400228E */  lw         $v0, 0x54($s1)
    /* A0670 800AFE70 00000000 */  nop
    /* A0674 800AFE74 2A184500 */  slt        $v1, $v0, $a1
    /* A0678 800AFE78 02006010 */  beqz       $v1, .L800AFE84
    /* A067C 800AFE7C 00000000 */   nop
    /* A0680 800AFE80 2110A000 */  addu       $v0, $a1, $zero
  .L800AFE84:
    /* A0684 800AFE84 3800A2A7 */  sh         $v0, 0x38($sp)
    /* A0688 800AFE88 80101400 */  sll        $v0, $s4, 2
    /* A068C 800AFE8C 21105500 */  addu       $v0, $v0, $s5
    /* A0690 800AFE90 3A00A487 */  lh         $a0, 0x3A($sp)
    /* A0694 800AFE94 5800428C */  lw         $v0, 0x58($v0)
    /* A0698 800AFE98 00000000 */  nop
    /* A069C 800AFE9C 2A184400 */  slt        $v1, $v0, $a0
    /* A06A0 800AFEA0 02006010 */  beqz       $v1, .L800AFEAC
    /* A06A4 800AFEA4 00000000 */   nop
    /* A06A8 800AFEA8 21108000 */  addu       $v0, $a0, $zero
  .L800AFEAC:
    /* A06AC 800AFEAC 3A00A2A7 */  sh         $v0, 0x3A($sp)
    /* A06B0 800AFEB0 80101400 */  sll        $v0, $s4, 2
    /* A06B4 800AFEB4 21105500 */  addu       $v0, $v0, $s5
    /* A06B8 800AFEB8 3C00A487 */  lh         $a0, 0x3C($sp)
    /* A06BC 800AFEBC 5C00428C */  lw         $v0, 0x5C($v0)
    /* A06C0 800AFEC0 00000000 */  nop
    /* A06C4 800AFEC4 01004224 */  addiu      $v0, $v0, 0x1
    /* A06C8 800AFEC8 2A188200 */  slt        $v1, $a0, $v0
    /* A06CC 800AFECC 02006010 */  beqz       $v1, .L800AFED8
    /* A06D0 800AFED0 00000000 */   nop
    /* A06D4 800AFED4 21108000 */  addu       $v0, $a0, $zero
  .L800AFED8:
    /* A06D8 800AFED8 3C00A2A7 */  sh         $v0, 0x3C($sp)
    /* A06DC 800AFEDC 80101400 */  sll        $v0, $s4, 2
    /* A06E0 800AFEE0 21105500 */  addu       $v0, $v0, $s5
    /* A06E4 800AFEE4 3E00A487 */  lh         $a0, 0x3E($sp)
    /* A06E8 800AFEE8 6000428C */  lw         $v0, 0x60($v0)
    /* A06EC 800AFEEC 00000000 */  nop
    /* A06F0 800AFEF0 01004224 */  addiu      $v0, $v0, 0x1
    /* A06F4 800AFEF4 2A188200 */  slt        $v1, $a0, $v0
    /* A06F8 800AFEF8 02006010 */  beqz       $v1, .L800AFF04
    /* A06FC 800AFEFC 00000000 */   nop
    /* A0700 800AFF00 21108000 */  addu       $v0, $a0, $zero
  .L800AFF04:
    /* A0704 800AFF04 3E00A2A7 */  sh         $v0, 0x3E($sp)
    /* A0708 800AFF08 40881400 */  sll        $s1, $s4, 1
    /* A070C 800AFF0C 21883402 */  addu       $s1, $s1, $s4
    /* A0710 800AFF10 80881100 */  sll        $s1, $s1, 2
    /* A0714 800AFF14 23883402 */  subu       $s1, $s1, $s4
    /* A0718 800AFF18 80991100 */  sll        $s3, $s1, 6
    /* A071C 800AFF1C 1280123C */  lui        $s2, %hi(D_8011E72C)
    /* A0720 800AFF20 2CE75226 */  addiu      $s2, $s2, %lo(D_8011E72C)
    /* A0724 800AFF24 21907202 */  addu       $s2, $s3, $s2
    /* A0728 800AFF28 21204002 */  addu       $a0, $s2, $zero
    /* A072C 800AFF2C B47B020C */  jal        func_8009EED0
    /* A0730 800AFF30 3800A527 */   addiu     $a1, $sp, 0x38
    /* A0734 800AFF34 4000A427 */  addiu      $a0, $sp, 0x40
    /* A0738 800AFF38 80881100 */  sll        $s1, $s1, 2
    /* A073C 800AFF3C 80801400 */  sll        $s0, $s4, 2
    /* A0740 800AFF40 21801502 */  addu       $s0, $s0, $s5
    /* A0744 800AFF44 6400088E */  lw         $t0, 0x64($s0)
    /* A0748 800AFF48 5400068E */  lw         $a2, 0x54($s0)
    /* A074C 800AFF4C 6800038E */  lw         $v1, 0x68($s0)
    /* A0750 800AFF50 5800078E */  lw         $a3, 0x58($s0)
    /* A0754 800AFF54 1000A0AF */  sw         $zero, 0x10($sp)
    /* A0758 800AFF58 1400A0AF */  sw         $zero, 0x14($sp)
    /* A075C 800AFF5C 6400028E */  lw         $v0, 0x64($s0)
    /* A0760 800AFF60 00000000 */  nop
    /* A0764 800AFF64 1800A2AF */  sw         $v0, 0x18($sp)
    /* A0768 800AFF68 6800028E */  lw         $v0, 0x68($s0)
    /* A076C 800AFF6C 00000000 */  nop
    /* A0770 800AFF70 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* A0774 800AFF74 D400428E */  lw         $v0, 0xD4($s2)
    /* A0778 800AFF78 00000000 */  nop
    /* A077C 800AFF7C 2000A2AF */  sw         $v0, 0x20($sp)
    /* A0780 800AFF80 D800428E */  lw         $v0, 0xD8($s2)
    /* A0784 800AFF84 00000000 */  nop
    /* A0788 800AFF88 2400A2AF */  sw         $v0, 0x24($sp)
    /* A078C 800AFF8C 1280013C */  lui        $at, %hi(D_8011E970)
    /* A0790 800AFF90 21083300 */  addu       $at, $at, $s3
    /* A0794 800AFF94 70E92284 */  lh         $v0, %lo(D_8011E970)($at)
    /* A0798 800AFF98 00000000 */  nop
    /* A079C 800AFF9C 2800A2AF */  sw         $v0, 0x28($sp)
    /* A07A0 800AFFA0 1280013C */  lui        $at, %hi(D_8011E97E)
    /* A07A4 800AFFA4 21083300 */  addu       $at, $at, $s3
    /* A07A8 800AFFA8 7EE92284 */  lh         $v0, %lo(D_8011E97E)($at)
    /* A07AC 800AFFAC 00000000 */  nop
    /* A07B0 800AFFB0 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* A07B4 800AFFB4 21209100 */  addu       $a0, $a0, $s1
    /* A07B8 800AFFB8 21284002 */  addu       $a1, $s2, $zero
    /* A07BC 800AFFBC 23300601 */  subu       $a2, $t0, $a2
    /* A07C0 800AFFC0 73BD020C */  jal        func_800AF5CC
    /* A07C4 800AFFC4 23386700 */   subu      $a3, $v1, $a3
    /* A07C8 800AFFC8 6400028E */  lw         $v0, 0x64($s0)
    /* A07CC 800AFFCC 7800038E */  lw         $v1, 0x78($s0)
    /* A07D0 800AFFD0 00000000 */  nop
    /* A07D4 800AFFD4 21104300 */  addu       $v0, $v0, $v1
    /* A07D8 800AFFD8 640002AE */  sw         $v0, 0x64($s0)
    /* A07DC 800AFFDC 6800028E */  lw         $v0, 0x68($s0)
    /* A07E0 800AFFE0 7C00038E */  lw         $v1, 0x7C($s0)
    /* A07E4 800AFFE4 00000000 */  nop
    /* A07E8 800AFFE8 21104300 */  addu       $v0, $v0, $v1
    /* A07EC 800AFFEC 680002AE */  sw         $v0, 0x68($s0)
  .L800AFFF0:
    /* A07F0 800AFFF0 66BF0208 */  j          .L800AFD98
    /* A07F4 800AFFF4 01009426 */   addiu     $s4, $s4, 0x1
  .L800AFFF8:
    /* A07F8 800AFFF8 63BF0208 */  j          .L800AFD8C
    /* A07FC 800AFFFC 0100F726 */   addiu     $s7, $s7, 0x1
  .L800B0000:
    /* A0800 800B0000 4000A227 */  addiu      $v0, $sp, 0x40
    /* A0804 800B0004 6C00B027 */  addiu      $s0, $sp, 0x6C
    /* A0808 800B0008 07005010 */  beq        $v0, $s0, .L800B0028
    /* A080C 800B000C 4000B127 */   addiu     $s1, $sp, 0x40
    /* A0810 800B0010 D4FF1026 */  addiu      $s0, $s0, -0x2C
  .L800B0014:
    /* A0814 800B0014 21200002 */  addu       $a0, $s0, $zero
    /* A0818 800B0018 4CE1030C */  jal        func_800F8530
    /* A081C 800B001C 02000524 */   addiu     $a1, $zero, 0x2
    /* A0820 800B0020 FCFF3016 */  bne        $s1, $s0, .L800B0014
    /* A0824 800B0024 D4FF1026 */   addiu     $s0, $s0, -0x2C
  .L800B0028:
    /* A0828 800B0028 0C01BF8F */  lw         $ra, 0x10C($sp)
    /* A082C 800B002C 0801BE8F */  lw         $fp, 0x108($sp)
    /* A0830 800B0030 0401B78F */  lw         $s7, 0x104($sp)
    /* A0834 800B0034 0001B68F */  lw         $s6, 0x100($sp)
    /* A0838 800B0038 FC00B58F */  lw         $s5, 0xFC($sp)
    /* A083C 800B003C F800B48F */  lw         $s4, 0xF8($sp)
    /* A0840 800B0040 F400B38F */  lw         $s3, 0xF4($sp)
    /* A0844 800B0044 F000B28F */  lw         $s2, 0xF0($sp)
    /* A0848 800B0048 EC00B18F */  lw         $s1, 0xEC($sp)
    /* A084C 800B004C E800B08F */  lw         $s0, 0xE8($sp)
    /* A0850 800B0050 1001BD27 */  addiu      $sp, $sp, 0x110
    /* A0854 800B0054 0800E003 */  jr         $ra
    /* A0858 800B0058 00000000 */   nop
endlabel func_800AF6E0
