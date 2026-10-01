.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007AE08, 0x52C

glabel func_8007AE08
    /* 6B608 8007AE08 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6B60C 8007AE0C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 6B610 8007AE10 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6B614 8007AE14 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6B618 8007AE18 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6B61C 8007AE1C E697010C */  jal        func_80065F98
    /* 6B620 8007AE20 1000B0AF */   sw        $s0, 0x10($sp)
    /* 6B624 8007AE24 A9DF010C */  jal        func_80077EA4
    /* 6B628 8007AE28 00000000 */   nop
    /* 6B62C 8007AE2C 21200000 */  addu       $a0, $zero, $zero
    /* 6B630 8007AE30 C0100400 */  sll        $v0, $a0, 3
  .L8007AE34:
    /* 6B634 8007AE34 1180013C */  lui        $at, %hi(D_80117656)
    /* 6B638 8007AE38 21082200 */  addu       $at, $at, $v0
    /* 6B63C 8007AE3C 567620A4 */  sh         $zero, %lo(D_80117656)($at)
    /* 6B640 8007AE40 01008424 */  addiu      $a0, $a0, 0x1
    /* 6B644 8007AE44 08008228 */  slti       $v0, $a0, 0x8
    /* 6B648 8007AE48 FAFF4014 */  bnez       $v0, .L8007AE34
    /* 6B64C 8007AE4C C0100400 */   sll       $v0, $a0, 3
    /* 6B650 8007AE50 21200000 */  addu       $a0, $zero, $zero
    /* 6B654 8007AE54 40100400 */  sll        $v0, $a0, 1
  .L8007AE58:
    /* 6B658 8007AE58 21104400 */  addu       $v0, $v0, $a0
    /* 6B65C 8007AE5C 00110200 */  sll        $v0, $v0, 4
    /* 6B660 8007AE60 1180013C */  lui        $at, %hi(D_80116AD3)
    /* 6B664 8007AE64 21082200 */  addu       $at, $at, $v0
    /* 6B668 8007AE68 D36A20A0 */  sb         $zero, %lo(D_80116AD3)($at)
    /* 6B66C 8007AE6C 01008424 */  addiu      $a0, $a0, 0x1
    /* 6B670 8007AE70 15008228 */  slti       $v0, $a0, 0x15
    /* 6B674 8007AE74 F8FF4014 */  bnez       $v0, .L8007AE58
    /* 6B678 8007AE78 40100400 */   sll       $v0, $a0, 1
    /* 6B67C 8007AE7C 1280043C */  lui        $a0, %hi(D_8011A262)
    /* 6B680 8007AE80 62A28424 */  addiu      $a0, $a0, %lo(D_8011A262)
    /* 6B684 8007AE84 000080A4 */  sh         $zero, 0x0($a0)
    /* 6B688 8007AE88 60F00224 */  addiu      $v0, $zero, -0xFA0
    /* 6B68C 8007AE8C 020082A4 */  sh         $v0, 0x2($a0)
    /* 6B690 8007AE90 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6B694 8007AE94 040082A4 */  sh         $v0, 0x4($a0)
    /* 6B698 8007AE98 1280033C */  lui        $v1, %hi(D_8011A558)
    /* 6B69C 8007AE9C 58A5638C */  lw         $v1, %lo(D_8011A558)($v1)
    /* 6B6A0 8007AEA0 FFFF023C */  lui        $v0, (0xFFFF7FFF >> 16)
    /* 6B6A4 8007AEA4 FF7F4234 */  ori        $v0, $v0, (0xFFFF7FFF & 0xFFFF)
    /* 6B6A8 8007AEA8 24186200 */  and        $v1, $v1, $v0
    /* 6B6AC 8007AEAC F2FF83AC */  sw         $v1, -0xE($a0)
    /* 6B6B0 8007AEB0 10008290 */  lbu        $v0, 0x10($a0)
    /* 6B6B4 8007AEB4 00000000 */  nop
    /* 6B6B8 8007AEB8 03004014 */  bnez       $v0, .L8007AEC8
    /* 6B6BC 8007AEBC 00036234 */   ori       $v0, $v1, 0x300
    /* 6B6C0 8007AEC0 B8EB0108 */  j          .L8007AEE0
    /* 6B6C4 8007AEC4 F2FF82AC */   sw        $v0, -0xE($a0)
  .L8007AEC8:
    /* 6B6C8 8007AEC8 1280023C */  lui        $v0, %hi(D_8011A254)
    /* 6B6CC 8007AECC 54A24224 */  addiu      $v0, $v0, %lo(D_8011A254)
    /* 6B6D0 8007AED0 0000438C */  lw         $v1, 0x0($v0)
    /* 6B6D4 8007AED4 FFFE0424 */  addiu      $a0, $zero, -0x101
    /* 6B6D8 8007AED8 24186400 */  and        $v1, $v1, $a0
    /* 6B6DC 8007AEDC 000043AC */  sw         $v1, 0x0($v0)
  .L8007AEE0:
    /* 6B6E0 8007AEE0 1280023C */  lui        $v0, %hi(D_8011A258)
    /* 6B6E4 8007AEE4 58A24224 */  addiu      $v0, $v0, %lo(D_8011A258)
    /* 6B6E8 8007AEE8 000040A4 */  sh         $zero, 0x0($v0)
    /* 6B6EC 8007AEEC 1280033C */  lui        $v1, %hi(D_8011A55C)
    /* 6B6F0 8007AEF0 5CA56394 */  lhu        $v1, %lo(D_8011A55C)($v1)
    /* 6B6F4 8007AEF4 00000000 */  nop
    /* 6B6F8 8007AEF8 040043A4 */  sh         $v1, 0x4($v0)
    /* 6B6FC 8007AEFC 060040A4 */  sh         $zero, 0x6($v0)
    /* 6B700 8007AF00 01000324 */  addiu      $v1, $zero, 0x1
    /* 6B704 8007AF04 1280013C */  lui        $at, %hi(D_8011ACBC)
    /* 6B708 8007AF08 BCAC23AC */  sw         $v1, %lo(D_8011ACBC)($at)
    /* 6B70C 8007AF0C 280040A4 */  sh         $zero, 0x28($v0)
    /* 6B710 8007AF10 2A0040A4 */  sh         $zero, 0x2A($v0)
    /* 6B714 8007AF14 100040A4 */  sh         $zero, 0x10($v0)
    /* 6B718 8007AF18 170040A0 */  sb         $zero, 0x17($v0)
    /* 6B71C 8007AF1C 2E0040A4 */  sh         $zero, 0x2E($v0)
    /* 6B720 8007AF20 190040A0 */  sb         $zero, 0x19($v0)
    /* 6B724 8007AF24 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 6B728 8007AF28 180043A0 */  sb         $v1, 0x18($v0)
    /* 6B72C 8007AF2C 240040A4 */  sh         $zero, 0x24($v0)
    /* 6B730 8007AF30 200040A0 */  sb         $zero, 0x20($v0)
    /* 6B734 8007AF34 210040A0 */  sb         $zero, 0x21($v0)
    /* 6B738 8007AF38 220040A4 */  sh         $zero, 0x22($v0)
    /* 6B73C 8007AF3C 21200000 */  addu       $a0, $zero, $zero
  .L8007AF40:
    /* 6B740 8007AF40 1280013C */  lui        $at, %hi(D_8011A288)
    /* 6B744 8007AF44 21082400 */  addu       $at, $at, $a0
    /* 6B748 8007AF48 88A220A0 */  sb         $zero, %lo(D_8011A288)($at)
    /* 6B74C 8007AF4C 1280013C */  lui        $at, %hi(D_8011A2E5)
    /* 6B750 8007AF50 21082400 */  addu       $at, $at, $a0
    /* 6B754 8007AF54 E5A220A0 */  sb         $zero, %lo(D_8011A2E5)($at)
    /* 6B758 8007AF58 01008424 */  addiu      $a0, $a0, 0x1
    /* 6B75C 8007AF5C 5D008228 */  slti       $v0, $a0, 0x5D
    /* 6B760 8007AF60 F7FF4014 */  bnez       $v0, .L8007AF40
    /* 6B764 8007AF64 FFFF0324 */   addiu     $v1, $zero, -0x1
    /* 6B768 8007AF68 21200000 */  addu       $a0, $zero, $zero
    /* 6B76C 8007AF6C 1280053C */  lui        $a1, %hi(D_8011A342)
    /* 6B770 8007AF70 42A3A524 */  addiu      $a1, $a1, %lo(D_8011A342)
    /* 6B774 8007AF74 40100400 */  sll        $v0, $a0, 1
  .L8007AF78:
    /* 6B778 8007AF78 21104500 */  addu       $v0, $v0, $a1
    /* 6B77C 8007AF7C 000043A4 */  sh         $v1, 0x0($v0)
    /* 6B780 8007AF80 01008424 */  addiu      $a0, $a0, 0x1
    /* 6B784 8007AF84 1C008228 */  slti       $v0, $a0, 0x1C
    /* 6B788 8007AF88 FBFF4014 */  bnez       $v0, .L8007AF78
    /* 6B78C 8007AF8C 40100400 */   sll       $v0, $a0, 1
    /* 6B790 8007AF90 21800000 */  addu       $s0, $zero, $zero
    /* 6B794 8007AF94 1180133C */  lui        $s3, %hi(D_80117806)
    /* 6B798 8007AF98 06787326 */  addiu      $s3, $s3, %lo(D_80117806)
    /* 6B79C 8007AF9C 1180123C */  lui        $s2, %hi(D_80117886)
    /* 6B7A0 8007AFA0 86785226 */  addiu      $s2, $s2, %lo(D_80117886)
    /* 6B7A4 8007AFA4 1180113C */  lui        $s1, %hi(D_80117906)
    /* 6B7A8 8007AFA8 06793126 */  addiu      $s1, $s1, %lo(D_80117906)
  .L8007AFAC:
    /* 6B7AC 8007AFAC 24DF010C */  jal        func_80077C90
    /* 6B7B0 8007AFB0 21200002 */   addu      $a0, $s0, $zero
    /* 6B7B4 8007AFB4 40101000 */  sll        $v0, $s0, 1
    /* 6B7B8 8007AFB8 21105000 */  addu       $v0, $v0, $s0
    /* 6B7BC 8007AFBC 80100200 */  sll        $v0, $v0, 2
    /* 6B7C0 8007AFC0 23105000 */  subu       $v0, $v0, $s0
    /* 6B7C4 8007AFC4 00110200 */  sll        $v0, $v0, 4
    /* 6B7C8 8007AFC8 23105000 */  subu       $v0, $v0, $s0
    /* 6B7CC 8007AFCC C0100200 */  sll        $v0, $v0, 3
    /* 6B7D0 8007AFD0 1180013C */  lui        $at, %hi(D_801176FA)
    /* 6B7D4 8007AFD4 21082200 */  addu       $at, $at, $v0
    /* 6B7D8 8007AFD8 FA7620A4 */  sh         $zero, %lo(D_801176FA)($at)
    /* 6B7DC 8007AFDC 1180013C */  lui        $at, %hi(D_801176F8)
    /* 6B7E0 8007AFE0 21082200 */  addu       $at, $at, $v0
    /* 6B7E4 8007AFE4 F87620A4 */  sh         $zero, %lo(D_801176F8)($at)
    /* 6B7E8 8007AFE8 1180013C */  lui        $at, %hi(D_801176FC)
    /* 6B7EC 8007AFEC 21082200 */  addu       $at, $at, $v0
    /* 6B7F0 8007AFF0 FC7620A4 */  sh         $zero, %lo(D_801176FC)($at)
    /* 6B7F4 8007AFF4 1180013C */  lui        $at, %hi(D_801176FE)
    /* 6B7F8 8007AFF8 21082200 */  addu       $at, $at, $v0
    /* 6B7FC 8007AFFC FE7620A4 */  sh         $zero, %lo(D_801176FE)($at)
    /* 6B800 8007B000 1180013C */  lui        $at, %hi(D_80117700)
    /* 6B804 8007B004 21082200 */  addu       $at, $at, $v0
    /* 6B808 8007B008 007720A4 */  sh         $zero, %lo(D_80117700)($at)
    /* 6B80C 8007B00C 1180013C */  lui        $at, %hi(D_80117702)
    /* 6B810 8007B010 21082200 */  addu       $at, $at, $v0
    /* 6B814 8007B014 027720A4 */  sh         $zero, %lo(D_80117702)($at)
    /* 6B818 8007B018 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 6B81C 8007B01C 1180013C */  lui        $at, %hi(D_8011769C)
    /* 6B820 8007B020 21082200 */  addu       $at, $at, $v0
    /* 6B824 8007B024 9C7623A4 */  sh         $v1, %lo(D_8011769C)($at)
    /* 6B828 8007B028 21200000 */  addu       $a0, $zero, $zero
    /* 6B82C 8007B02C 40101000 */  sll        $v0, $s0, 1
    /* 6B830 8007B030 21105000 */  addu       $v0, $v0, $s0
    /* 6B834 8007B034 80100200 */  sll        $v0, $v0, 2
    /* 6B838 8007B038 23105000 */  subu       $v0, $v0, $s0
    /* 6B83C 8007B03C 00110200 */  sll        $v0, $v0, 4
    /* 6B840 8007B040 23105000 */  subu       $v0, $v0, $s0
    /* 6B844 8007B044 C0100200 */  sll        $v0, $v0, 3
    /* 6B848 8007B048 21405300 */  addu       $t0, $v0, $s3
    /* 6B84C 8007B04C 21385200 */  addu       $a3, $v0, $s2
    /* 6B850 8007B050 21305100 */  addu       $a2, $v0, $s1
    /* 6B854 8007B054 1180033C */  lui        $v1, %hi(D_80117946)
    /* 6B858 8007B058 46796324 */  addiu      $v1, $v1, %lo(D_80117946)
    /* 6B85C 8007B05C 21284300 */  addu       $a1, $v0, $v1
  .L8007B060:
    /* 6B860 8007B060 40180400 */  sll        $v1, $a0, 1
    /* 6B864 8007B064 21106800 */  addu       $v0, $v1, $t0
    /* 6B868 8007B068 000040A4 */  sh         $zero, 0x0($v0)
    /* 6B86C 8007B06C 21186700 */  addu       $v1, $v1, $a3
    /* 6B870 8007B070 000060A4 */  sh         $zero, 0x0($v1)
    /* 6B874 8007B074 2110C400 */  addu       $v0, $a2, $a0
    /* 6B878 8007B078 000040A0 */  sb         $zero, 0x0($v0)
    /* 6B87C 8007B07C 2110A400 */  addu       $v0, $a1, $a0
    /* 6B880 8007B080 000040A0 */  sb         $zero, 0x0($v0)
    /* 6B884 8007B084 01008424 */  addiu      $a0, $a0, 0x1
    /* 6B888 8007B088 40008228 */  slti       $v0, $a0, 0x40
    /* 6B88C 8007B08C F4FF4014 */  bnez       $v0, .L8007B060
    /* 6B890 8007B090 00000000 */   nop
    /* 6B894 8007B094 01001026 */  addiu      $s0, $s0, 0x1
    /* 6B898 8007B098 0800022A */  slti       $v0, $s0, 0x8
    /* 6B89C 8007B09C C3FF4014 */  bnez       $v0, .L8007AFAC
    /* 6B8A0 8007B0A0 00000000 */   nop
    /* 6B8A4 8007B0A4 E6E9030C */  jal        func_800FA798
    /* 6B8A8 8007B0A8 00000000 */   nop
    /* 6B8AC 8007B0AC 00140200 */  sll        $v0, $v0, 16
    /* 6B8B0 8007B0B0 03240200 */  sra        $a0, $v0, 16
    /* 6B8B4 8007B0B4 EB51033C */  lui        $v1, (0x51EB851F >> 16)
    /* 6B8B8 8007B0B8 1F856334 */  ori        $v1, $v1, (0x51EB851F & 0xFFFF)
    /* 6B8BC 8007B0BC 18008300 */  mult       $a0, $v1
    /* 6B8C0 8007B0C0 10480000 */  mfhi       $t1
    /* 6B8C4 8007B0C4 03190900 */  sra        $v1, $t1, 4
    /* 6B8C8 8007B0C8 C3170200 */  sra        $v0, $v0, 31
    /* 6B8CC 8007B0CC 23186200 */  subu       $v1, $v1, $v0
    /* 6B8D0 8007B0D0 40100300 */  sll        $v0, $v1, 1
    /* 6B8D4 8007B0D4 21104300 */  addu       $v0, $v0, $v1
    /* 6B8D8 8007B0D8 C0100200 */  sll        $v0, $v0, 3
    /* 6B8DC 8007B0DC 21104300 */  addu       $v0, $v0, $v1
    /* 6B8E0 8007B0E0 40100200 */  sll        $v0, $v0, 1
    /* 6B8E4 8007B0E4 23208200 */  subu       $a0, $a0, $v0
    /* 6B8E8 8007B0E8 01008424 */  addiu      $a0, $a0, 0x1
    /* 6B8EC 8007B0EC 1280013C */  lui        $at, %hi(D_8011A37A)
    /* 6B8F0 8007B0F0 7AA324A4 */  sh         $a0, %lo(D_8011A37A)($at)
    /* 6B8F4 8007B0F4 21200000 */  addu       $a0, $zero, $zero
    /* 6B8F8 8007B0F8 1280063C */  lui        $a2, %hi(D_8011A748)
    /* 6B8FC 8007B0FC 48A7C624 */  addiu      $a2, $a2, %lo(D_8011A748)
    /* 6B900 8007B100 21180000 */  addu       $v1, $zero, $zero
  .L8007B104:
    /* 6B904 8007B104 C0100400 */  sll        $v0, $a0, 3
    /* 6B908 8007B108 21284600 */  addu       $a1, $v0, $a2
    /* 6B90C 8007B10C 2110A300 */  addu       $v0, $a1, $v1
  .L8007B110:
    /* 6B910 8007B110 000040A0 */  sb         $zero, 0x0($v0)
    /* 6B914 8007B114 01006324 */  addiu      $v1, $v1, 0x1
    /* 6B918 8007B118 08006228 */  slti       $v0, $v1, 0x8
    /* 6B91C 8007B11C FCFF4014 */  bnez       $v0, .L8007B110
    /* 6B920 8007B120 2110A300 */   addu      $v0, $a1, $v1
    /* 6B924 8007B124 01008424 */  addiu      $a0, $a0, 0x1
    /* 6B928 8007B128 96008228 */  slti       $v0, $a0, 0x96
    /* 6B92C 8007B12C F5FF4014 */  bnez       $v0, .L8007B104
    /* 6B930 8007B130 21180000 */   addu      $v1, $zero, $zero
    /* 6B934 8007B134 21800000 */  addu       $s0, $zero, $zero
  .L8007B138:
    /* 6B938 8007B138 2DE1010C */  jal        func_800784B4
    /* 6B93C 8007B13C 21200002 */   addu      $a0, $s0, $zero
    /* 6B940 8007B140 01001026 */  addiu      $s0, $s0, 0x1
    /* 6B944 8007B144 0800022A */  slti       $v0, $s0, 0x8
    /* 6B948 8007B148 FBFF4014 */  bnez       $v0, .L8007B138
    /* 6B94C 8007B14C 00000000 */   nop
    /* 6B950 8007B150 1280033C */  lui        $v1, %hi(D_8011A276)
    /* 6B954 8007B154 76A26324 */  addiu      $v1, $v1, %lo(D_8011A276)
    /* 6B958 8007B158 FEFF6290 */  lbu        $v0, -0x2($v1)
    /* 6B95C 8007B15C BFDF010C */  jal        func_80077EFC
    /* 6B960 8007B160 000062A0 */   sb        $v0, 0x0($v1)
    /* 6B964 8007B164 1280023C */  lui        $v0, %hi(D_8011A552)
    /* 6B968 8007B168 52A54224 */  addiu      $v0, $v0, %lo(D_8011A552)
    /* 6B96C 8007B16C 00004484 */  lh         $a0, 0x0($v0)
    /* 6B970 8007B170 02004384 */  lh         $v1, 0x2($v0)
    /* 6B974 8007B174 00000000 */  nop
    /* 6B978 8007B178 21108300 */  addu       $v0, $a0, $v1
    /* 6B97C 8007B17C 0B004228 */  slti       $v0, $v0, 0xB
    /* 6B980 8007B180 05004010 */  beqz       $v0, .L8007B198
    /* 6B984 8007B184 07008228 */   slti      $v0, $a0, 0x7
    /* 6B988 8007B188 03004010 */  beqz       $v0, .L8007B198
    /* 6B98C 8007B18C 07006228 */   slti      $v0, $v1, 0x7
    /* 6B990 8007B190 07004014 */  bnez       $v0, .L8007B1B0
    /* 6B994 8007B194 00000000 */   nop
  .L8007B198:
    /* 6B998 8007B198 1280023C */  lui        $v0, %hi(D_8011A552)
    /* 6B99C 8007B19C 52A54224 */  addiu      $v0, $v0, %lo(D_8011A552)
    /* 6B9A0 8007B1A0 06000324 */  addiu      $v1, $zero, 0x6
    /* 6B9A4 8007B1A4 000043A4 */  sh         $v1, 0x0($v0)
    /* 6B9A8 8007B1A8 04000324 */  addiu      $v1, $zero, 0x4
    /* 6B9AC 8007B1AC 020043A4 */  sh         $v1, 0x2($v0)
  .L8007B1B0:
    /* 6B9B0 8007B1B0 1280103C */  lui        $s0, %hi(D_8011A275)
    /* 6B9B4 8007B1B4 75A21026 */  addiu      $s0, $s0, %lo(D_8011A275)
    /* 6B9B8 8007B1B8 00000492 */  lbu        $a0, 0x0($s0)
    /* 6B9BC 8007B1BC 0B3B030C */  jal        func_800CEC2C
    /* 6B9C0 8007B1C0 00000000 */   nop
    /* 6B9C4 8007B1C4 01000324 */  addiu      $v1, $zero, 0x1
    /* 6B9C8 8007B1C8 30004314 */  bne        $v0, $v1, .L8007B28C
    /* 6B9CC 8007B1CC 06000724 */   addiu     $a3, $zero, 0x6
    /* 6B9D0 8007B1D0 F8FF0382 */  lb         $v1, -0x8($s0)
    /* 6B9D4 8007B1D4 00000000 */  nop
    /* 6B9D8 8007B1D8 40100300 */  sll        $v0, $v1, 1
    /* 6B9DC 8007B1DC 21104300 */  addu       $v0, $v0, $v1
    /* 6B9E0 8007B1E0 80100200 */  sll        $v0, $v0, 2
    /* 6B9E4 8007B1E4 23104300 */  subu       $v0, $v0, $v1
    /* 6B9E8 8007B1E8 00110200 */  sll        $v0, $v0, 4
    /* 6B9EC 8007B1EC 23104300 */  subu       $v0, $v0, $v1
    /* 6B9F0 8007B1F0 C0100200 */  sll        $v0, $v0, 3
    /* 6B9F4 8007B1F4 1280043C */  lui        $a0, %hi(D_8011A552)
    /* 6B9F8 8007B1F8 52A58424 */  addiu      $a0, $a0, %lo(D_8011A552)
    /* 6B9FC 8007B1FC 00008390 */  lbu        $v1, 0x0($a0)
    /* 6BA00 8007B200 1180013C */  lui        $at, %hi(D_801176A5)
    /* 6BA04 8007B204 21082200 */  addu       $at, $at, $v0
    /* 6BA08 8007B208 A57623A0 */  sb         $v1, %lo(D_801176A5)($at)
    /* 6BA0C 8007B20C F8FF0382 */  lb         $v1, -0x8($s0)
    /* 6BA10 8007B210 00000000 */  nop
    /* 6BA14 8007B214 40100300 */  sll        $v0, $v1, 1
    /* 6BA18 8007B218 21104300 */  addu       $v0, $v0, $v1
    /* 6BA1C 8007B21C 80100200 */  sll        $v0, $v0, 2
    /* 6BA20 8007B220 23104300 */  subu       $v0, $v0, $v1
    /* 6BA24 8007B224 00110200 */  sll        $v0, $v0, 4
    /* 6BA28 8007B228 23104300 */  subu       $v0, $v0, $v1
    /* 6BA2C 8007B22C C0100200 */  sll        $v0, $v0, 3
    /* 6BA30 8007B230 02008390 */  lbu        $v1, 0x2($a0)
    /* 6BA34 8007B234 1180013C */  lui        $at, %hi(D_801176A6)
    /* 6BA38 8007B238 21082200 */  addu       $at, $at, $v0
    /* 6BA3C 8007B23C A67623A0 */  sb         $v1, %lo(D_801176A6)($at)
    /* 6BA40 8007B240 FDFF0292 */  lbu        $v0, -0x3($s0)
    /* 6BA44 8007B244 00000000 */  nop
    /* 6BA48 8007B248 32004014 */  bnez       $v0, .L8007B314
    /* 6BA4C 8007B24C 00000000 */   nop
    /* 6BA50 8007B250 F8FF0282 */  lb         $v0, -0x8($s0)
    /* 6BA54 8007B254 00000000 */  nop
    /* 6BA58 8007B258 40180200 */  sll        $v1, $v0, 1
    /* 6BA5C 8007B25C 21186200 */  addu       $v1, $v1, $v0
    /* 6BA60 8007B260 80180300 */  sll        $v1, $v1, 2
    /* 6BA64 8007B264 23186200 */  subu       $v1, $v1, $v0
    /* 6BA68 8007B268 00190300 */  sll        $v1, $v1, 4
    /* 6BA6C 8007B26C 23186200 */  subu       $v1, $v1, $v0
    /* 6BA70 8007B270 C0180300 */  sll        $v1, $v1, 3
    /* 6BA74 8007B274 32000224 */  addiu      $v0, $zero, 0x32
    /* 6BA78 8007B278 1180013C */  lui        $at, %hi(D_80117694)
    /* 6BA7C 8007B27C 21082300 */  addu       $at, $at, $v1
    /* 6BA80 8007B280 947622AC */  sw         $v0, %lo(D_80117694)($at)
    /* 6BA84 8007B284 C5EC0108 */  j          .L8007B314
    /* 6BA88 8007B288 00000000 */   nop
  .L8007B28C:
    /* 6BA8C 8007B28C 01001024 */  addiu      $s0, $zero, 0x1
    /* 6BA90 8007B290 1280043C */  lui        $a0, %hi(D_8011A275)
    /* 6BA94 8007B294 75A28424 */  addiu      $a0, $a0, %lo(D_8011A275)
    /* 6BA98 8007B298 04000624 */  addiu      $a2, $zero, 0x4
    /* 6BA9C 8007B29C 32000524 */  addiu      $a1, $zero, 0x32
  .L8007B2A0:
    /* 6BAA0 8007B2A0 00008290 */  lbu        $v0, 0x0($a0)
    /* 6BAA4 8007B2A4 00000000 */  nop
    /* 6BAA8 8007B2A8 07100202 */  srav       $v0, $v0, $s0
    /* 6BAAC 8007B2AC 01004230 */  andi       $v0, $v0, 0x1
    /* 6BAB0 8007B2B0 14004010 */  beqz       $v0, .L8007B304
    /* 6BAB4 8007B2B4 40101000 */   sll       $v0, $s0, 1
    /* 6BAB8 8007B2B8 21105000 */  addu       $v0, $v0, $s0
    /* 6BABC 8007B2BC 80100200 */  sll        $v0, $v0, 2
    /* 6BAC0 8007B2C0 23105000 */  subu       $v0, $v0, $s0
    /* 6BAC4 8007B2C4 00110200 */  sll        $v0, $v0, 4
    /* 6BAC8 8007B2C8 23105000 */  subu       $v0, $v0, $s0
    /* 6BACC 8007B2CC C0180200 */  sll        $v1, $v0, 3
    /* 6BAD0 8007B2D0 1180013C */  lui        $at, %hi(D_801176A5)
    /* 6BAD4 8007B2D4 21082300 */  addu       $at, $at, $v1
    /* 6BAD8 8007B2D8 A57627A0 */  sb         $a3, %lo(D_801176A5)($at)
    /* 6BADC 8007B2DC 1180013C */  lui        $at, %hi(D_801176A6)
    /* 6BAE0 8007B2E0 21082300 */  addu       $at, $at, $v1
    /* 6BAE4 8007B2E4 A67626A0 */  sb         $a2, %lo(D_801176A6)($at)
    /* 6BAE8 8007B2E8 FDFF8290 */  lbu        $v0, -0x3($a0)
    /* 6BAEC 8007B2EC 00000000 */  nop
    /* 6BAF0 8007B2F0 04004014 */  bnez       $v0, .L8007B304
    /* 6BAF4 8007B2F4 00000000 */   nop
    /* 6BAF8 8007B2F8 1180013C */  lui        $at, %hi(D_80117694)
    /* 6BAFC 8007B2FC 21082300 */  addu       $at, $at, $v1
    /* 6BB00 8007B300 947625AC */  sw         $a1, %lo(D_80117694)($at)
  .L8007B304:
    /* 6BB04 8007B304 01001026 */  addiu      $s0, $s0, 0x1
    /* 6BB08 8007B308 0800022A */  slti       $v0, $s0, 0x8
    /* 6BB0C 8007B30C E4FF4014 */  bnez       $v0, .L8007B2A0
    /* 6BB10 8007B310 00000000 */   nop
  .L8007B314:
    /* 6BB14 8007B314 2000BF8F */  lw         $ra, 0x20($sp)
    /* 6BB18 8007B318 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6BB1C 8007B31C 1800B28F */  lw         $s2, 0x18($sp)
    /* 6BB20 8007B320 1400B18F */  lw         $s1, 0x14($sp)
    /* 6BB24 8007B324 1000B08F */  lw         $s0, 0x10($sp)
    /* 6BB28 8007B328 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6BB2C 8007B32C 0800E003 */  jr         $ra
    /* 6BB30 8007B330 00000000 */   nop
endlabel func_8007AE08
