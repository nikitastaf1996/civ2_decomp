.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80079F64, 0xBAC

glabel func_80079F64
    /* 6A764 80079F64 38FFBD27 */  addiu      $sp, $sp, -0xC8
    /* 6A768 80079F68 C400BFAF */  sw         $ra, 0xC4($sp)
    /* 6A76C 80079F6C C000BEAF */  sw         $fp, 0xC0($sp)
    /* 6A770 80079F70 BC00B7AF */  sw         $s7, 0xBC($sp)
    /* 6A774 80079F74 B800B6AF */  sw         $s6, 0xB8($sp)
    /* 6A778 80079F78 B400B5AF */  sw         $s5, 0xB4($sp)
    /* 6A77C 80079F7C B000B4AF */  sw         $s4, 0xB0($sp)
    /* 6A780 80079F80 AC00B3AF */  sw         $s3, 0xAC($sp)
    /* 6A784 80079F84 A800B2AF */  sw         $s2, 0xA8($sp)
    /* 6A788 80079F88 A400B1AF */  sw         $s1, 0xA4($sp)
    /* 6A78C 80079F8C A000B0AF */  sw         $s0, 0xA0($sp)
    /* 6A790 80079F90 5800A4AF */  sw         $a0, 0x58($sp)
    /* 6A794 80079F94 21980000 */  addu       $s3, $zero, $zero
    /* 6A798 80079F98 1800A427 */  addiu      $a0, $sp, 0x18
    /* 6A79C 80079F9C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 6A7A0 80079FA0 80101300 */  sll        $v0, $s3, 2
  .L80079FA4:
    /* 6A7A4 80079FA4 21104400 */  addu       $v0, $v0, $a0
    /* 6A7A8 80079FA8 200043AC */  sw         $v1, 0x20($v0)
    /* 6A7AC 80079FAC 000043AC */  sw         $v1, 0x0($v0)
    /* 6A7B0 80079FB0 01007326 */  addiu      $s3, $s3, 0x1
    /* 6A7B4 80079FB4 0800622A */  slti       $v0, $s3, 0x8
    /* 6A7B8 80079FB8 FAFF4014 */  bnez       $v0, .L80079FA4
    /* 6A7BC 80079FBC 80101300 */   sll       $v0, $s3, 2
    /* 6A7C0 80079FC0 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 6A7C4 80079FC4 80A24224 */  addiu      $v0, $v0, %lo(D_8011A280)
    /* 6A7C8 80079FC8 21204000 */  addu       $a0, $v0, $zero
    /* 6A7CC 80079FCC 00004284 */  lh         $v0, 0x0($v0)
    /* 6A7D0 80079FD0 00000000 */  nop
    /* 6A7D4 80079FD4 1B004018 */  blez       $v0, .L8007A044
    /* 6A7D8 80079FD8 21880000 */   addu      $s1, $zero, $zero
    /* 6A7DC 80079FDC 1800A327 */  addiu      $v1, $sp, 0x18
    /* 6A7E0 80079FE0 40101100 */  sll        $v0, $s1, 1
  .L80079FE4:
    /* 6A7E4 80079FE4 21105100 */  addu       $v0, $v0, $s1
    /* 6A7E8 80079FE8 80100200 */  sll        $v0, $v0, 2
    /* 6A7EC 80079FEC 21105100 */  addu       $v0, $v0, $s1
    /* 6A7F0 80079FF0 40100200 */  sll        $v0, $v0, 1
    /* 6A7F4 80079FF4 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6A7F8 80079FF8 21082200 */  addu       $at, $at, $v0
    /* 6A7FC 80079FFC B4D63E84 */  lh         $fp, %lo(D_8010D6B4)($at)
    /* 6A800 8007A000 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6A804 8007A004 21082200 */  addu       $at, $at, $v0
    /* 6A808 8007A008 B6D63784 */  lh         $s7, %lo(D_8010D6B6)($at)
    /* 6A80C 8007A00C 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6A810 8007A010 21082200 */  addu       $at, $at, $v0
    /* 6A814 8007A014 BBD63380 */  lb         $s3, %lo(D_8010D6BB)($at)
    /* 6A818 8007A018 00000000 */  nop
    /* 6A81C 8007A01C 80101300 */  sll        $v0, $s3, 2
    /* 6A820 8007A020 21104300 */  addu       $v0, $v0, $v1
    /* 6A824 8007A024 00005EAC */  sw         $fp, 0x0($v0)
    /* 6A828 8007A028 200057AC */  sw         $s7, 0x20($v0)
    /* 6A82C 8007A02C 01003126 */  addiu      $s1, $s1, 0x1
    /* 6A830 8007A030 00008284 */  lh         $v0, 0x0($a0)
    /* 6A834 8007A034 00000000 */  nop
    /* 6A838 8007A038 2A102202 */  slt        $v0, $s1, $v0
    /* 6A83C 8007A03C E9FF4014 */  bnez       $v0, .L80079FE4
    /* 6A840 8007A040 40101100 */   sll       $v0, $s1, 1
  .L8007A044:
    /* 6A844 8007A044 01001324 */  addiu      $s3, $zero, 0x1
  .L8007A048:
    /* 6A848 8007A048 0800622A */  slti       $v0, $s3, 0x8
    /* 6A84C 8007A04C 9A024010 */  beqz       $v0, .L8007AAB8
    /* 6A850 8007A050 80181300 */   sll       $v1, $s3, 2
    /* 6A854 8007A054 1800A227 */  addiu      $v0, $sp, 0x18
    /* 6A858 8007A058 21186200 */  addu       $v1, $v1, $v0
    /* 6A85C 8007A05C 00007E8C */  lw         $fp, 0x0($v1)
    /* 6A860 8007A060 2000778C */  lw         $s7, 0x20($v1)
    /* 6A864 8007A064 00000000 */  nop
    /* 6A868 8007A068 0D00E006 */  bltz       $s7, .L8007A0A0
    /* 6A86C 8007A06C 21180000 */   addu      $v1, $zero, $zero
    /* 6A870 8007A070 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6A874 8007A074 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6A878 8007A078 00000000 */  nop
    /* 6A87C 8007A07C 2A10E202 */  slt        $v0, $s7, $v0
    /* 6A880 8007A080 07004010 */  beqz       $v0, .L8007A0A0
    /* 6A884 8007A084 00000000 */   nop
    /* 6A888 8007A088 0500C007 */  bltz       $fp, .L8007A0A0
    /* 6A88C 8007A08C 00000000 */   nop
    /* 6A890 8007A090 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6A894 8007A094 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6A898 8007A098 00000000 */  nop
    /* 6A89C 8007A09C 2A18C203 */  slt        $v1, $fp, $v0
  .L8007A0A0:
    /* 6A8A0 8007A0A0 83026010 */  beqz       $v1, .L8007AAB0
    /* 6A8A4 8007A0A4 21206002 */   addu      $a0, $s3, $zero
    /* 6A8A8 8007A0A8 24000524 */  addiu      $a1, $zero, 0x24
    /* 6A8AC 8007A0AC F5CF010C */  jal        func_80073FD4
    /* 6A8B0 8007A0B0 21300000 */   addu      $a2, $zero, $zero
    /* 6A8B4 8007A0B4 21206002 */  addu       $a0, $s3, $zero
    /* 6A8B8 8007A0B8 09000524 */  addiu      $a1, $zero, 0x9
    /* 6A8BC 8007A0BC F5CF010C */  jal        func_80073FD4
    /* 6A8C0 8007A0C0 21300000 */   addu      $a2, $zero, $zero
    /* 6A8C4 8007A0C4 21206002 */  addu       $a0, $s3, $zero
    /* 6A8C8 8007A0C8 01000524 */  addiu      $a1, $zero, 0x1
    /* 6A8CC 8007A0CC F5CF010C */  jal        func_80073FD4
    /* 6A8D0 8007A0D0 21300000 */   addu      $a2, $zero, $zero
    /* 6A8D4 8007A0D4 21206002 */  addu       $a0, $s3, $zero
    /* 6A8D8 8007A0D8 08000524 */  addiu      $a1, $zero, 0x8
    /* 6A8DC 8007A0DC F5CF010C */  jal        func_80073FD4
    /* 6A8E0 8007A0E0 21300000 */   addu      $a2, $zero, $zero
    /* 6A8E4 8007A0E4 40101300 */  sll        $v0, $s3, 1
    /* 6A8E8 8007A0E8 21105300 */  addu       $v0, $v0, $s3
    /* 6A8EC 8007A0EC 80100200 */  sll        $v0, $v0, 2
    /* 6A8F0 8007A0F0 23105300 */  subu       $v0, $v0, $s3
    /* 6A8F4 8007A0F4 00110200 */  sll        $v0, $v0, 4
    /* 6A8F8 8007A0F8 23105300 */  subu       $v0, $v0, $s3
    /* 6A8FC 8007A0FC C0100200 */  sll        $v0, $v0, 3
    /* 6A900 8007A100 04000324 */  addiu      $v1, $zero, 0x4
    /* 6A904 8007A104 1180013C */  lui        $at, %hi(D_801176A2)
    /* 6A908 8007A108 21082200 */  addu       $at, $at, $v0
    /* 6A90C 8007A10C A27623A0 */  sb         $v1, %lo(D_801176A2)($at)
    /* 6A910 8007A110 5800A88F */  lw         $t0, 0x58($sp)
    /* 6A914 8007A114 00000000 */  nop
    /* 6A918 8007A118 18000011 */  beqz       $t0, .L8007A17C
    /* 6A91C 8007A11C 40101300 */   sll       $v0, $s3, 1
    /* 6A920 8007A120 21A80000 */  addu       $s5, $zero, $zero
    /* 6A924 8007A124 21105300 */  addu       $v0, $v0, $s3
    /* 6A928 8007A128 80100200 */  sll        $v0, $v0, 2
    /* 6A92C 8007A12C 23105300 */  subu       $v0, $v0, $s3
    /* 6A930 8007A130 00110200 */  sll        $v0, $v0, 4
    /* 6A934 8007A134 23105300 */  subu       $v0, $v0, $s3
    /* 6A938 8007A138 C0800200 */  sll        $s0, $v0, 3
    /* 6A93C 8007A13C 1180023C */  lui        $v0, %hi(D_80117690)
    /* 6A940 8007A140 90764224 */  addiu      $v0, $v0, %lo(D_80117690)
    /* 6A944 8007A144 21880202 */  addu       $s1, $s0, $v0
    /* 6A948 8007A148 21206002 */  addu       $a0, $s3, $zero
  .L8007A14C:
    /* 6A94C 8007A14C B7DB010C */  jal        func_80076EDC
    /* 6A950 8007A150 21280000 */   addu      $a1, $zero, $zero
    /* 6A954 8007A154 1180013C */  lui        $at, %hi(D_801176A2)
    /* 6A958 8007A158 21083000 */  addu       $at, $at, $s0
    /* 6A95C 8007A15C A2762290 */  lbu        $v0, %lo(D_801176A2)($at)
    /* 6A960 8007A160 00000000 */  nop
    /* 6A964 8007A164 01004224 */  addiu      $v0, $v0, 0x1
    /* 6A968 8007A168 120022A2 */  sb         $v0, 0x12($s1)
    /* 6A96C 8007A16C 0100B526 */  addiu      $s5, $s5, 0x1
    /* 6A970 8007A170 0300A22A */  slti       $v0, $s5, 0x3
    /* 6A974 8007A174 F5FF4014 */  bnez       $v0, .L8007A14C
    /* 6A978 8007A178 21206002 */   addu      $a0, $s3, $zero
  .L8007A17C:
    /* 6A97C 8007A17C 2120C003 */  addu       $a0, $fp, $zero
    /* 6A980 8007A180 2128E002 */  addu       $a1, $s7, $zero
    /* 6A984 8007A184 9632020C */  jal        func_8008CA58
    /* 6A988 8007A188 21306002 */   addu      $a2, $s3, $zero
    /* 6A98C 8007A18C 21B04000 */  addu       $s6, $v0, $zero
    /* 6A990 8007A190 4702C006 */  bltz       $s6, .L8007AAB0
    /* 6A994 8007A194 00000000 */   nop
    /* 6A998 8007A198 E6E9030C */  jal        func_800FA798
    /* 6A99C 8007A19C 00000000 */   nop
    /* 6A9A0 8007A1A0 40281300 */  sll        $a1, $s3, 1
    /* 6A9A4 8007A1A4 2128B300 */  addu       $a1, $a1, $s3
    /* 6A9A8 8007A1A8 80280500 */  sll        $a1, $a1, 2
    /* 6A9AC 8007A1AC 2328B300 */  subu       $a1, $a1, $s3
    /* 6A9B0 8007A1B0 00290500 */  sll        $a1, $a1, 4
    /* 6A9B4 8007A1B4 2328B300 */  subu       $a1, $a1, $s3
    /* 6A9B8 8007A1B8 C0280500 */  sll        $a1, $a1, 3
    /* 6A9BC 8007A1BC 00140200 */  sll        $v0, $v0, 16
    /* 6A9C0 8007A1C0 03240200 */  sra        $a0, $v0, 16
    /* 6A9C4 8007A1C4 EB51033C */  lui        $v1, (0x51EB851F >> 16)
    /* 6A9C8 8007A1C8 1F856334 */  ori        $v1, $v1, (0x51EB851F & 0xFFFF)
    /* 6A9CC 8007A1CC 18008300 */  mult       $a0, $v1
    /* 6A9D0 8007A1D0 10400000 */  mfhi       $t0
    /* 6A9D4 8007A1D4 03190800 */  sra        $v1, $t0, 4
    /* 6A9D8 8007A1D8 C3170200 */  sra        $v0, $v0, 31
    /* 6A9DC 8007A1DC 23186200 */  subu       $v1, $v1, $v0
    /* 6A9E0 8007A1E0 40100300 */  sll        $v0, $v1, 1
    /* 6A9E4 8007A1E4 21104300 */  addu       $v0, $v0, $v1
    /* 6A9E8 8007A1E8 C0100200 */  sll        $v0, $v0, 3
    /* 6A9EC 8007A1EC 21104300 */  addu       $v0, $v0, $v1
    /* 6A9F0 8007A1F0 40100200 */  sll        $v0, $v0, 1
    /* 6A9F4 8007A1F4 23208200 */  subu       $a0, $a0, $v0
    /* 6A9F8 8007A1F8 00240400 */  sll        $a0, $a0, 16
    /* 6A9FC 8007A1FC 03240400 */  sra        $a0, $a0, 16
    /* 6AA00 8007A200 19008424 */  addiu      $a0, $a0, 0x19
    /* 6AA04 8007A204 5800A88F */  lw         $t0, 0x58($sp)
    /* 6AA08 8007A208 00000000 */  nop
    /* 6AA0C 8007A20C 01000225 */  addiu      $v0, $t0, 0x1
    /* 6AA10 8007A210 18008200 */  mult       $a0, $v0
    /* 6AA14 8007A214 12400000 */  mflo       $t0
    /* 6AA18 8007A218 1180013C */  lui        $at, %hi(D_80117694)
    /* 6AA1C 8007A21C 21082500 */  addu       $at, $at, $a1
    /* 6AA20 8007A220 947628AC */  sw         $t0, %lo(D_80117694)($at)
    /* 6AA24 8007A224 40101600 */  sll        $v0, $s6, 1
    /* 6AA28 8007A228 21105600 */  addu       $v0, $v0, $s6
    /* 6AA2C 8007A22C 80100200 */  sll        $v0, $v0, 2
    /* 6AA30 8007A230 23105600 */  subu       $v0, $v0, $s6
    /* 6AA34 8007A234 5800A88F */  lw         $t0, 0x58($sp)
    /* 6AA38 8007A238 00000000 */  nop
    /* 6AA3C 8007A23C 03000011 */  beqz       $t0, .L8007A24C
    /* 6AA40 8007A240 C0180200 */   sll       $v1, $v0, 3
    /* 6AA44 8007A244 94E80108 */  j          .L8007A250
    /* 6AA48 8007A248 05000224 */   addiu     $v0, $zero, 0x5
  .L8007A24C:
    /* 6AA4C 8007A24C 03000224 */  addiu      $v0, $zero, 0x3
  .L8007A250:
    /* 6AA50 8007A250 1180013C */  lui        $at, %hi(D_80113ED9)
    /* 6AA54 8007A254 21082300 */  addu       $at, $at, $v1
    /* 6AA58 8007A258 D93E22A0 */  sb         $v0, %lo(D_80113ED9)($at)
    /* 6AA5C 8007A25C 2120C003 */  addu       $a0, $fp, $zero
    /* 6AA60 8007A260 04EE010C */  jal        func_8007B810
    /* 6AA64 8007A264 2128E002 */   addu      $a1, $s7, $zero
    /* 6AA68 8007A268 21884000 */  addu       $s1, $v0, $zero
    /* 6AA6C 8007A26C 21202002 */  addu       $a0, $s1, $zero
    /* 6AA70 8007A270 F7F5010C */  jal        func_8007D7DC
    /* 6AA74 8007A274 02000524 */   addiu     $a1, $zero, 0x2
    /* 6AA78 8007A278 02004228 */  slti       $v0, $v0, 0x2
    /* 6AA7C 8007A27C 0A004014 */  bnez       $v0, .L8007A2A8
    /* 6AA80 8007A280 40101600 */   sll       $v0, $s6, 1
    /* 6AA84 8007A284 40101100 */  sll        $v0, $s1, 1
    /* 6AA88 8007A288 21105100 */  addu       $v0, $v0, $s1
    /* 6AA8C 8007A28C 80100200 */  sll        $v0, $v0, 2
    /* 6AA90 8007A290 21105100 */  addu       $v0, $v0, $s1
    /* 6AA94 8007A294 40100200 */  sll        $v0, $v0, 1
    /* 6AA98 8007A298 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 6AA9C 8007A29C 21082200 */  addu       $at, $at, $v0
    /* 6AAA0 8007A2A0 C4D636A0 */  sb         $s6, %lo(D_8010D6C4)($at)
    /* 6AAA4 8007A2A4 40101600 */  sll        $v0, $s6, 1
  .L8007A2A8:
    /* 6AAA8 8007A2A8 21105600 */  addu       $v0, $v0, $s6
    /* 6AAAC 8007A2AC 80100200 */  sll        $v0, $v0, 2
    /* 6AAB0 8007A2B0 23105600 */  subu       $v0, $v0, $s6
    /* 6AAB4 8007A2B4 C0100200 */  sll        $v0, $v0, 3
    /* 6AAB8 8007A2B8 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 6AABC 8007A2BC 21082200 */  addu       $at, $at, $v0
    /* 6AAC0 8007A2C0 0D3F3080 */  lb         $s0, %lo(D_80113F0D)($at)
    /* 6AAC4 8007A2C4 E6E9030C */  jal        func_800FA798
    /* 6AAC8 8007A2C8 00000000 */   nop
    /* 6AACC 8007A2CC 06000224 */  addiu      $v0, $zero, 0x6
    /* 6AAD0 8007A2D0 02000212 */  beq        $s0, $v0, .L8007A2DC
    /* 6AAD4 8007A2D4 00000000 */   nop
    /* 6AAD8 8007A2D8 04001024 */  addiu      $s0, $zero, 0x4
  .L8007A2DC:
    /* 6AADC 8007A2DC 21200002 */  addu       $a0, $s0, $zero
    /* 6AAE0 8007A2E0 21286002 */  addu       $a1, $s3, $zero
    /* 6AAE4 8007A2E4 2130C003 */  addu       $a2, $fp, $zero
    /* 6AAE8 8007A2E8 8DF0010C */  jal        func_8007C234
    /* 6AAEC 8007A2EC 2138E002 */   addu      $a3, $s7, $zero
    /* 6AAF0 8007A2F0 21884000 */  addu       $s1, $v0, $zero
    /* 6AAF4 8007A2F4 40101100 */  sll        $v0, $s1, 1
    /* 6AAF8 8007A2F8 21105100 */  addu       $v0, $v0, $s1
    /* 6AAFC 8007A2FC 80100200 */  sll        $v0, $v0, 2
    /* 6AB00 8007A300 21105100 */  addu       $v0, $v0, $s1
    /* 6AB04 8007A304 40100200 */  sll        $v0, $v0, 1
    /* 6AB08 8007A308 02000824 */  addiu      $t0, $zero, 0x2
    /* 6AB0C 8007A30C 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6AB10 8007A310 21082200 */  addu       $at, $at, $v0
    /* 6AB14 8007A314 C3D628A0 */  sb         $t0, %lo(D_8010D6C3)($at)
    /* 6AB18 8007A318 03000424 */  addiu      $a0, $zero, 0x3
    /* 6AB1C 8007A31C 21286002 */  addu       $a1, $s3, $zero
    /* 6AB20 8007A320 2130C003 */  addu       $a2, $fp, $zero
    /* 6AB24 8007A324 8DF0010C */  jal        func_8007C234
    /* 6AB28 8007A328 2138E002 */   addu      $a3, $s7, $zero
    /* 6AB2C 8007A32C 21884000 */  addu       $s1, $v0, $zero
    /* 6AB30 8007A330 40101100 */  sll        $v0, $s1, 1
    /* 6AB34 8007A334 21105100 */  addu       $v0, $v0, $s1
    /* 6AB38 8007A338 80100200 */  sll        $v0, $v0, 2
    /* 6AB3C 8007A33C 21105100 */  addu       $v0, $v0, $s1
    /* 6AB40 8007A340 40100200 */  sll        $v0, $v0, 1
    /* 6AB44 8007A344 02000824 */  addiu      $t0, $zero, 0x2
    /* 6AB48 8007A348 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6AB4C 8007A34C 21082200 */  addu       $at, $at, $v0
    /* 6AB50 8007A350 C3D628A0 */  sb         $t0, %lo(D_8010D6C3)($at)
    /* 6AB54 8007A354 21206002 */  addu       $a0, $s3, $zero
    /* 6AB58 8007A358 8ACA010C */  jal        func_80072A28
    /* 6AB5C 8007A35C 57000524 */   addiu     $a1, $zero, 0x57
    /* 6AB60 8007A360 02004010 */  beqz       $v0, .L8007A36C
    /* 6AB64 8007A364 0F000424 */   addiu     $a0, $zero, 0xF
    /* 6AB68 8007A368 10000424 */  addiu      $a0, $zero, 0x10
  .L8007A36C:
    /* 6AB6C 8007A36C 21286002 */  addu       $a1, $s3, $zero
    /* 6AB70 8007A370 2130C003 */  addu       $a2, $fp, $zero
    /* 6AB74 8007A374 8DF0010C */  jal        func_8007C234
    /* 6AB78 8007A378 2138E002 */   addu      $a3, $s7, $zero
    /* 6AB7C 8007A37C 5800A88F */  lw         $t0, 0x58($sp)
    /* 6AB80 8007A380 00000000 */  nop
    /* 6AB84 8007A384 0A000011 */  beqz       $t0, .L8007A3B0
    /* 6AB88 8007A388 21206002 */   addu      $a0, $s3, $zero
    /* 6AB8C 8007A38C 8ACA010C */  jal        func_80072A28
    /* 6AB90 8007A390 40000524 */   addiu     $a1, $zero, 0x40
    /* 6AB94 8007A394 02004010 */  beqz       $v0, .L8007A3A0
    /* 6AB98 8007A398 10000424 */   addiu     $a0, $zero, 0x10
    /* 6AB9C 8007A39C 11000424 */  addiu      $a0, $zero, 0x11
  .L8007A3A0:
    /* 6ABA0 8007A3A0 21286002 */  addu       $a1, $s3, $zero
    /* 6ABA4 8007A3A4 2130C003 */  addu       $a2, $fp, $zero
    /* 6ABA8 8007A3A8 8DF0010C */  jal        func_8007C234
    /* 6ABAC 8007A3AC 2138E002 */   addu      $a3, $s7, $zero
  .L8007A3B0:
    /* 6ABB0 8007A3B0 2120C002 */  addu       $a0, $s6, $zero
    /* 6ABB4 8007A3B4 04000524 */  addiu      $a1, $zero, 0x4
    /* 6ABB8 8007A3B8 E926020C */  jal        func_80089BA4
    /* 6ABBC 8007A3BC 01000624 */   addiu     $a2, $zero, 0x1
    /* 6ABC0 8007A3C0 5800A88F */  lw         $t0, 0x58($sp)
    /* 6ABC4 8007A3C4 00000000 */  nop
    /* 6ABC8 8007A3C8 13000011 */  beqz       $t0, .L8007A418
    /* 6ABCC 8007A3CC 21206002 */   addu      $a0, $s3, $zero
    /* 6ABD0 8007A3D0 8ACA010C */  jal        func_80072A28
    /* 6ABD4 8007A3D4 41000524 */   addiu     $a1, $zero, 0x41
    /* 6ABD8 8007A3D8 04004010 */  beqz       $v0, .L8007A3EC
    /* 6ABDC 8007A3DC 2120C002 */   addu      $a0, $s6, $zero
    /* 6ABE0 8007A3E0 03000524 */  addiu      $a1, $zero, 0x3
    /* 6ABE4 8007A3E4 E926020C */  jal        func_80089BA4
    /* 6ABE8 8007A3E8 01000624 */   addiu     $a2, $zero, 0x1
  .L8007A3EC:
    /* 6ABEC 8007A3EC 21206002 */  addu       $a0, $s3, $zero
    /* 6ABF0 8007A3F0 8ACA010C */  jal        func_80072A28
    /* 6ABF4 8007A3F4 14000524 */   addiu     $a1, $zero, 0x14
    /* 6ABF8 8007A3F8 03004010 */  beqz       $v0, .L8007A408
    /* 6ABFC 8007A3FC 2120C002 */   addu      $a0, $s6, $zero
    /* 6AC00 8007A400 03E90108 */  j          .L8007A40C
    /* 6AC04 8007A404 05000524 */   addiu     $a1, $zero, 0x5
  .L8007A408:
    /* 6AC08 8007A408 02000524 */  addiu      $a1, $zero, 0x2
  .L8007A40C:
    /* 6AC0C 8007A40C E926020C */  jal        func_80089BA4
    /* 6AC10 8007A410 01000624 */   addiu     $a2, $zero, 0x1
    /* 6AC14 8007A414 5800A88F */  lw         $t0, 0x58($sp)
  .L8007A418:
    /* 6AC18 8007A418 00000000 */  nop
    /* 6AC1C 8007A41C 02000011 */  beqz       $t0, .L8007A428
    /* 6AC20 8007A420 02000524 */   addiu     $a1, $zero, 0x2
    /* 6AC24 8007A424 04000524 */  addiu      $a1, $zero, 0x4
  .L8007A428:
    /* 6AC28 8007A428 CBE6010C */  jal        func_80079B2C
    /* 6AC2C 8007A42C 2120C002 */   addu      $a0, $s6, $zero
    /* 6AC30 8007A430 5800A88F */  lw         $t0, 0x58($sp)
    /* 6AC34 8007A434 00000000 */  nop
    /* 6AC38 8007A438 8E010011 */  beqz       $t0, .L8007AA74
    /* 6AC3C 8007A43C FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 6AC40 8007A440 6000A8AF */  sw         $t0, 0x60($sp)
    /* 6AC44 8007A444 6800A8AF */  sw         $t0, 0x68($sp)
    /* 6AC48 8007A448 2120C003 */  addu       $a0, $fp, $zero
    /* 6AC4C 8007A44C 2561020C */  jal        func_80098494
    /* 6AC50 8007A450 2128E002 */   addu      $a1, $s7, $zero
    /* 6AC54 8007A454 8800A2AF */  sw         $v0, 0x88($sp)
    /* 6AC58 8007A458 21A80000 */  addu       $s5, $zero, $zero
  .L8007A45C:
    /* 6AC5C 8007A45C 0800A22A */  slti       $v0, $s5, 0x8
    /* 6AC60 8007A460 82004010 */  beqz       $v0, .L8007A66C
    /* 6AC64 8007A464 00000000 */   nop
    /* 6AC68 8007A468 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 6AC6C 8007A46C 21083500 */  addu       $at, $at, $s5
    /* 6AC70 8007A470 24AC2280 */  lb         $v0, %lo(D_8011AC24)($at)
    /* 6AC74 8007A474 00000000 */  nop
    /* 6AC78 8007A478 80200200 */  sll        $a0, $v0, 2
    /* 6AC7C 8007A47C 21208200 */  addu       $a0, $a0, $v0
    /* 6AC80 8007A480 173B030C */  jal        func_800CEC5C
    /* 6AC84 8007A484 2120C403 */   addu      $a0, $fp, $a0
    /* 6AC88 8007A488 21A04000 */  addu       $s4, $v0, $zero
    /* 6AC8C 8007A48C 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 6AC90 8007A490 21083500 */  addu       $at, $at, $s5
    /* 6AC94 8007A494 30AC2380 */  lb         $v1, %lo(D_8011AC30)($at)
    /* 6AC98 8007A498 00000000 */  nop
    /* 6AC9C 8007A49C 80100300 */  sll        $v0, $v1, 2
    /* 6ACA0 8007A4A0 21104300 */  addu       $v0, $v0, $v1
    /* 6ACA4 8007A4A4 2190E202 */  addu       $s2, $s7, $v0
    /* 6ACA8 8007A4A8 0D004006 */  bltz       $s2, .L8007A4E0
    /* 6ACAC 8007A4AC 21180000 */   addu      $v1, $zero, $zero
    /* 6ACB0 8007A4B0 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6ACB4 8007A4B4 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6ACB8 8007A4B8 00000000 */  nop
    /* 6ACBC 8007A4BC 2A104202 */  slt        $v0, $s2, $v0
    /* 6ACC0 8007A4C0 07004010 */  beqz       $v0, .L8007A4E0
    /* 6ACC4 8007A4C4 00000000 */   nop
    /* 6ACC8 8007A4C8 05008006 */  bltz       $s4, .L8007A4E0
    /* 6ACCC 8007A4CC 00000000 */   nop
    /* 6ACD0 8007A4D0 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6ACD4 8007A4D4 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6ACD8 8007A4D8 00000000 */  nop
    /* 6ACDC 8007A4DC 2A188202 */  slt        $v1, $s4, $v0
  .L8007A4E0:
    /* 6ACE0 8007A4E0 60006010 */  beqz       $v1, .L8007A664
    /* 6ACE4 8007A4E4 21208002 */   addu      $a0, $s4, $zero
    /* 6ACE8 8007A4E8 F760020C */  jal        func_800983DC
    /* 6ACEC 8007A4EC 21284002 */   addu      $a1, $s2, $zero
    /* 6ACF0 8007A4F0 5C004014 */  bnez       $v0, .L8007A664
    /* 6ACF4 8007A4F4 21208002 */   addu      $a0, $s4, $zero
    /* 6ACF8 8007A4F8 2561020C */  jal        func_80098494
    /* 6ACFC 8007A4FC 21284002 */   addu      $a1, $s2, $zero
    /* 6AD00 8007A500 8800A88F */  lw         $t0, 0x88($sp)
    /* 6AD04 8007A504 00000000 */  nop
    /* 6AD08 8007A508 56004814 */  bne        $v0, $t0, .L8007A664
    /* 6AD0C 8007A50C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 6AD10 8007A510 1000A2AF */  sw         $v0, 0x10($sp)
    /* 6AD14 8007A514 21208002 */  addu       $a0, $s4, $zero
    /* 6AD18 8007A518 21284002 */  addu       $a1, $s2, $zero
    /* 6AD1C 8007A51C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 6AD20 8007A520 6026020C */  jal        func_80089980
    /* 6AD24 8007A524 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 6AD28 8007A528 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 6AD2C 8007A52C 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 6AD30 8007A530 00000000 */  nop
    /* 6AD34 8007A534 29004018 */  blez       $v0, .L8007A5DC
    /* 6AD38 8007A538 21880000 */   addu      $s1, $zero, $zero
    /* 6AD3C 8007A53C 40101100 */  sll        $v0, $s1, 1
  .L8007A540:
    /* 6AD40 8007A540 21105100 */  addu       $v0, $v0, $s1
    /* 6AD44 8007A544 80100200 */  sll        $v0, $v0, 2
    /* 6AD48 8007A548 21105100 */  addu       $v0, $v0, $s1
    /* 6AD4C 8007A54C 40800200 */  sll        $s0, $v0, 1
    /* 6AD50 8007A550 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6AD54 8007A554 21083000 */  addu       $at, $at, $s0
    /* 6AD58 8007A558 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 6AD5C 8007A55C 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6AD60 8007A560 21083000 */  addu       $at, $at, $s0
    /* 6AD64 8007A564 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 6AD68 8007A568 1262020C */  jal        func_80098848
    /* 6AD6C 8007A56C 00000000 */   nop
    /* 6AD70 8007A570 13004104 */  bgez       $v0, .L8007A5C0
    /* 6AD74 8007A574 21308002 */   addu      $a2, $s4, $zero
    /* 6AD78 8007A578 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6AD7C 8007A57C 21083000 */  addu       $at, $at, $s0
    /* 6AD80 8007A580 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 6AD84 8007A584 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6AD88 8007A588 21083000 */  addu       $at, $at, $s0
    /* 6AD8C 8007A58C B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 6AD90 8007A590 A73B030C */  jal        func_800CEE9C
    /* 6AD94 8007A594 21384002 */   addu      $a3, $s2, $zero
    /* 6AD98 8007A598 8000A2AF */  sw         $v0, 0x80($sp)
    /* 6AD9C 8007A59C 1680023C */  lui        $v0, %hi(D_80158824)
    /* 6ADA0 8007A5A0 2488428C */  lw         $v0, %lo(D_80158824)($v0)
    /* 6ADA4 8007A5A4 8000A88F */  lw         $t0, 0x80($sp)
    /* 6ADA8 8007A5A8 00000000 */  nop
    /* 6ADAC 8007A5AC 2A100201 */  slt        $v0, $t0, $v0
    /* 6ADB0 8007A5B0 03004010 */  beqz       $v0, .L8007A5C0
    /* 6ADB4 8007A5B4 00000000 */   nop
    /* 6ADB8 8007A5B8 1680013C */  lui        $at, %hi(D_80158824)
    /* 6ADBC 8007A5BC 248828AC */  sw         $t0, %lo(D_80158824)($at)
  .L8007A5C0:
    /* 6ADC0 8007A5C0 01003126 */  addiu      $s1, $s1, 0x1
    /* 6ADC4 8007A5C4 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 6ADC8 8007A5C8 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 6ADCC 8007A5CC 00000000 */  nop
    /* 6ADD0 8007A5D0 2A102202 */  slt        $v0, $s1, $v0
    /* 6ADD4 8007A5D4 DAFF4014 */  bnez       $v0, .L8007A540
    /* 6ADD8 8007A5D8 40101100 */   sll       $v0, $s1, 1
  .L8007A5DC:
    /* 6ADDC 8007A5DC 8000A88F */  lw         $t0, 0x80($sp)
    /* 6ADE0 8007A5E0 00000000 */  nop
    /* 6ADE4 8007A5E4 05000229 */  slti       $v0, $t0, 0x5
    /* 6ADE8 8007A5E8 1E004014 */  bnez       $v0, .L8007A664
    /* 6ADEC 8007A5EC 21208002 */   addu      $a0, $s4, $zero
    /* 6ADF0 8007A5F0 D560020C */  jal        func_80098354
    /* 6ADF4 8007A5F4 21284002 */   addu      $a1, $s2, $zero
    /* 6ADF8 8007A5F8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 6ADFC 8007A5FC 02004338 */  xori       $v1, $v0, 0x2
    /* 6AE00 8007A600 0100632C */  sltiu      $v1, $v1, 0x1
    /* 6AE04 8007A604 80800300 */  sll        $s0, $v1, 2
    /* 6AE08 8007A608 01000324 */  addiu      $v1, $zero, 0x1
    /* 6AE0C 8007A60C 02004314 */  bne        $v0, $v1, .L8007A618
    /* 6AE10 8007A610 00000000 */   nop
    /* 6AE14 8007A614 02001024 */  addiu      $s0, $zero, 0x2
  .L8007A618:
    /* 6AE18 8007A618 12000012 */  beqz       $s0, .L8007A664
    /* 6AE1C 8007A61C 21208002 */   addu      $a0, $s4, $zero
    /* 6AE20 8007A620 BD60020C */  jal        func_800982F4
    /* 6AE24 8007A624 21284002 */   addu      $a1, $s2, $zero
    /* 6AE28 8007A628 00004290 */  lbu        $v0, 0x0($v0)
    /* 6AE2C 8007A62C 00000000 */  nop
    /* 6AE30 8007A630 80004230 */  andi       $v0, $v0, 0x80
    /* 6AE34 8007A634 02004010 */  beqz       $v0, .L8007A640
    /* 6AE38 8007A638 00000000 */   nop
    /* 6AE3C 8007A63C 01001026 */  addiu      $s0, $s0, 0x1
  .L8007A640:
    /* 6AE40 8007A640 6000A88F */  lw         $t0, 0x60($sp)
    /* 6AE44 8007A644 00000000 */  nop
    /* 6AE48 8007A648 2A101001 */  slt        $v0, $t0, $s0
    /* 6AE4C 8007A64C 05004010 */  beqz       $v0, .L8007A664
    /* 6AE50 8007A650 00000000 */   nop
    /* 6AE54 8007A654 6000B0AF */  sw         $s0, 0x60($sp)
    /* 6AE58 8007A658 6800B5AF */  sw         $s5, 0x68($sp)
    /* 6AE5C 8007A65C 7000B4AF */  sw         $s4, 0x70($sp)
    /* 6AE60 8007A660 7800B2AF */  sw         $s2, 0x78($sp)
  .L8007A664:
    /* 6AE64 8007A664 17E90108 */  j          .L8007A45C
    /* 6AE68 8007A668 0100B526 */   addiu     $s5, $s5, 0x1
  .L8007A66C:
    /* 6AE6C 8007A66C 6800A88F */  lw         $t0, 0x68($sp)
    /* 6AE70 8007A670 00000000 */  nop
    /* 6AE74 8007A674 AE000005 */  bltz       $t0, .L8007A930
    /* 6AE78 8007A678 14000524 */   addiu     $a1, $zero, 0x14
    /* 6AE7C 8007A67C 7000A48F */  lw         $a0, 0x70($sp)
    /* 6AE80 8007A680 7800A58F */  lw         $a1, 0x78($sp)
    /* 6AE84 8007A684 9632020C */  jal        func_8008CA58
    /* 6AE88 8007A688 21306002 */   addu      $a2, $s3, $zero
    /* 6AE8C 8007A68C 21804000 */  addu       $s0, $v0, $zero
    /* 6AE90 8007A690 40101000 */  sll        $v0, $s0, 1
    /* 6AE94 8007A694 21105000 */  addu       $v0, $v0, $s0
    /* 6AE98 8007A698 80100200 */  sll        $v0, $v0, 2
    /* 6AE9C 8007A69C 23105000 */  subu       $v0, $v0, $s0
    /* 6AEA0 8007A6A0 C0100200 */  sll        $v0, $v0, 3
    /* 6AEA4 8007A6A4 03000324 */  addiu      $v1, $zero, 0x3
    /* 6AEA8 8007A6A8 1180013C */  lui        $at, %hi(D_80113ED9)
    /* 6AEAC 8007A6AC 21082200 */  addu       $at, $at, $v0
    /* 6AEB0 8007A6B0 D93E23A0 */  sb         $v1, %lo(D_80113ED9)($at)
    /* 6AEB4 8007A6B4 E6E9030C */  jal        func_800FA798
    /* 6AEB8 8007A6B8 00000000 */   nop
    /* 6AEBC 8007A6BC 00140200 */  sll        $v0, $v0, 16
    /* 6AEC0 8007A6C0 031C0200 */  sra        $v1, $v0, 16
    /* 6AEC4 8007A6C4 C2170200 */  srl        $v0, $v0, 31
    /* 6AEC8 8007A6C8 21106200 */  addu       $v0, $v1, $v0
    /* 6AECC 8007A6CC 43100200 */  sra        $v0, $v0, 1
    /* 6AED0 8007A6D0 40100200 */  sll        $v0, $v0, 1
    /* 6AED4 8007A6D4 23186200 */  subu       $v1, $v1, $v0
    /* 6AED8 8007A6D8 001C0300 */  sll        $v1, $v1, 16
    /* 6AEDC 8007A6DC 03940300 */  sra        $s2, $v1, 16
    /* 6AEE0 8007A6E0 02004012 */  beqz       $s2, .L8007A6EC
    /* 6AEE4 8007A6E4 02000424 */   addiu     $a0, $zero, 0x2
    /* 6AEE8 8007A6E8 03000424 */  addiu      $a0, $zero, 0x3
  .L8007A6EC:
    /* 6AEEC 8007A6EC 7000A68F */  lw         $a2, 0x70($sp)
    /* 6AEF0 8007A6F0 7800A78F */  lw         $a3, 0x78($sp)
    /* 6AEF4 8007A6F4 8DF0010C */  jal        func_8007C234
    /* 6AEF8 8007A6F8 21286002 */   addu      $a1, $s3, $zero
    /* 6AEFC 8007A6FC 21884000 */  addu       $s1, $v0, $zero
    /* 6AF00 8007A700 40101100 */  sll        $v0, $s1, 1
    /* 6AF04 8007A704 21105100 */  addu       $v0, $v0, $s1
    /* 6AF08 8007A708 80100200 */  sll        $v0, $v0, 2
    /* 6AF0C 8007A70C 21105100 */  addu       $v0, $v0, $s1
    /* 6AF10 8007A710 40100200 */  sll        $v0, $v0, 1
    /* 6AF14 8007A714 02000324 */  addiu      $v1, $zero, 0x2
    /* 6AF18 8007A718 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6AF1C 8007A71C 21082200 */  addu       $at, $at, $v0
    /* 6AF20 8007A720 C3D623A0 */  sb         $v1, %lo(D_8010D6C3)($at)
    /* 6AF24 8007A724 02004012 */  beqz       $s2, .L8007A730
    /* 6AF28 8007A728 04000424 */   addiu     $a0, $zero, 0x4
    /* 6AF2C 8007A72C 03000424 */  addiu      $a0, $zero, 0x3
  .L8007A730:
    /* 6AF30 8007A730 7000A68F */  lw         $a2, 0x70($sp)
    /* 6AF34 8007A734 7800A78F */  lw         $a3, 0x78($sp)
    /* 6AF38 8007A738 8DF0010C */  jal        func_8007C234
    /* 6AF3C 8007A73C 21286002 */   addu      $a1, $s3, $zero
    /* 6AF40 8007A740 21884000 */  addu       $s1, $v0, $zero
    /* 6AF44 8007A744 40101100 */  sll        $v0, $s1, 1
    /* 6AF48 8007A748 21105100 */  addu       $v0, $v0, $s1
    /* 6AF4C 8007A74C 80100200 */  sll        $v0, $v0, 2
    /* 6AF50 8007A750 21105100 */  addu       $v0, $v0, $s1
    /* 6AF54 8007A754 40100200 */  sll        $v0, $v0, 1
    /* 6AF58 8007A758 02000324 */  addiu      $v1, $zero, 0x2
    /* 6AF5C 8007A75C 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6AF60 8007A760 21082200 */  addu       $at, $at, $v0
    /* 6AF64 8007A764 C3D623A0 */  sb         $v1, %lo(D_8010D6C3)($at)
    /* 6AF68 8007A768 0F000424 */  addiu      $a0, $zero, 0xF
    /* 6AF6C 8007A76C 7000A68F */  lw         $a2, 0x70($sp)
    /* 6AF70 8007A770 7800A78F */  lw         $a3, 0x78($sp)
    /* 6AF74 8007A774 8DF0010C */  jal        func_8007C234
    /* 6AF78 8007A778 21286002 */   addu      $a1, $s3, $zero
    /* 6AF7C 8007A77C 21200002 */  addu       $a0, $s0, $zero
    /* 6AF80 8007A780 CBE6010C */  jal        func_80079B2C
    /* 6AF84 8007A784 02000524 */   addiu     $a1, $zero, 0x2
    /* 6AF88 8007A788 40101000 */  sll        $v0, $s0, 1
    /* 6AF8C 8007A78C 21105000 */  addu       $v0, $v0, $s0
    /* 6AF90 8007A790 80100200 */  sll        $v0, $v0, 2
    /* 6AF94 8007A794 23105000 */  subu       $v0, $v0, $s0
    /* 6AF98 8007A798 C0100200 */  sll        $v0, $v0, 3
    /* 6AF9C 8007A79C 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 6AFA0 8007A7A0 21082200 */  addu       $at, $at, $v0
    /* 6AFA4 8007A7A4 D03E3184 */  lh         $s1, %lo(D_80113ED0)($at)
    /* 6AFA8 8007A7A8 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 6AFAC 8007A7AC 21082200 */  addu       $at, $at, $v0
    /* 6AFB0 8007A7B0 D23E3284 */  lh         $s2, %lo(D_80113ED2)($at)
    /* 6AFB4 8007A7B4 21A00000 */  addu       $s4, $zero, $zero
    /* 6AFB8 8007A7B8 2120C003 */  addu       $a0, $fp, $zero
    /* 6AFBC 8007A7BC 2128E002 */  addu       $a1, $s7, $zero
    /* 6AFC0 8007A7C0 21302002 */  addu       $a2, $s1, $zero
    /* 6AFC4 8007A7C4 653B030C */  jal        func_800CED94
    /* 6AFC8 8007A7C8 21384002 */   addu      $a3, $s2, $zero
    /* 6AFCC 8007A7CC 17004228 */  slti       $v0, $v0, 0x17
    /* 6AFD0 8007A7D0 A8004010 */  beqz       $v0, .L8007AA74
    /* 6AFD4 8007A7D4 01000224 */   addiu     $v0, $zero, 0x1
    /* 6AFD8 8007A7D8 1680013C */  lui        $at, %hi(D_80158AC0)
    /* 6AFDC 8007A7DC C08A22AC */  sw         $v0, %lo(D_80158AC0)($at)
    /* 6AFE0 8007A7E0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6AFE4 8007A7E4 1680013C */  lui        $at, %hi(D_80158AC4)
    /* 6AFE8 8007A7E8 C48A22AC */  sw         $v0, %lo(D_80158AC4)($at)
    /* 6AFEC 8007A7EC 1680013C */  lui        $at, %hi(D_80158AD4)
    /* 6AFF0 8007A7F0 D48A3EAC */  sw         $fp, %lo(D_80158AD4)($at)
    /* 6AFF4 8007A7F4 1680013C */  lui        $at, %hi(D_80158AD8)
    /* 6AFF8 8007A7F8 D88A37AC */  sw         $s7, %lo(D_80158AD8)($at)
    /* 6AFFC 8007A7FC 02000824 */  addiu      $t0, $zero, 0x2
    /* 6B000 8007A800 1680013C */  lui        $at, %hi(D_80158ABC)
    /* 6B004 8007A804 BC8A28AC */  sw         $t0, %lo(D_80158ABC)($at)
    /* 6B008 8007A808 21202002 */  addu       $a0, $s1, $zero
  .L8007A80C:
    /* 6B00C 8007A80C 21284002 */  addu       $a1, $s2, $zero
    /* 6B010 8007A810 F092020C */  jal        func_800A4BC0
    /* 6B014 8007A814 63000624 */   addiu     $a2, $zero, 0x63
    /* 6B018 8007A818 21804000 */  addu       $s0, $v0, $zero
    /* 6B01C 8007A81C 40000006 */  bltz       $s0, .L8007A920
    /* 6B020 8007A820 08000224 */   addiu     $v0, $zero, 0x8
    /* 6B024 8007A824 3E000212 */  beq        $s0, $v0, .L8007A920
    /* 6B028 8007A828 00000000 */   nop
    /* 6B02C 8007A82C 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 6B030 8007A830 21083000 */  addu       $at, $at, $s0
    /* 6B034 8007A834 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 6B038 8007A838 173B030C */  jal        func_800CEC5C
    /* 6B03C 8007A83C 21202402 */   addu      $a0, $s1, $a0
    /* 6B040 8007A840 21884000 */  addu       $s1, $v0, $zero
    /* 6B044 8007A844 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 6B048 8007A848 21083000 */  addu       $at, $at, $s0
    /* 6B04C 8007A84C 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 6B050 8007A850 03003E16 */  bne        $s1, $fp, .L8007A860
    /* 6B054 8007A854 21904202 */   addu      $s2, $s2, $v0
    /* 6B058 8007A858 31005712 */  beq        $s2, $s7, .L8007A920
    /* 6B05C 8007A85C 00000000 */   nop
  .L8007A860:
    /* 6B060 8007A860 21202002 */  addu       $a0, $s1, $zero
    /* 6B064 8007A864 1262020C */  jal        func_80098848
    /* 6B068 8007A868 21284002 */   addu      $a1, $s2, $zero
    /* 6B06C 8007A86C 28004104 */  bgez       $v0, .L8007A910
    /* 6B070 8007A870 21202002 */   addu      $a0, $s1, $zero
    /* 6B074 8007A874 6961020C */  jal        func_800985A4
    /* 6B078 8007A878 21284002 */   addu      $a1, $s2, $zero
    /* 6B07C 8007A87C 10004230 */  andi       $v0, $v0, 0x10
    /* 6B080 8007A880 23004014 */  bnez       $v0, .L8007A910
    /* 6B084 8007A884 21800000 */   addu      $s0, $zero, $zero
    /* 6B088 8007A888 21202002 */  addu       $a0, $s1, $zero
    /* 6B08C 8007A88C BD60020C */  jal        func_800982F4
    /* 6B090 8007A890 21284002 */   addu      $a1, $s2, $zero
    /* 6B094 8007A894 00004290 */  lbu        $v0, 0x0($v0)
    /* 6B098 8007A898 00000000 */  nop
    /* 6B09C 8007A89C 80004230 */  andi       $v0, $v0, 0x80
    /* 6B0A0 8007A8A0 05004010 */  beqz       $v0, .L8007A8B8
    /* 6B0A4 8007A8A4 21206002 */   addu      $a0, $s3, $zero
    /* 6B0A8 8007A8A8 8ACA010C */  jal        func_80072A28
    /* 6B0AC 8007A8AC 07000524 */   addiu     $a1, $zero, 0x7
    /* 6B0B0 8007A8B0 02004010 */  beqz       $v0, .L8007A8BC
    /* 6B0B4 8007A8B4 00000000 */   nop
  .L8007A8B8:
    /* 6B0B8 8007A8B8 01001024 */  addiu      $s0, $zero, 0x1
  .L8007A8BC:
    /* 6B0BC 8007A8BC 14000012 */  beqz       $s0, .L8007A910
    /* 6B0C0 8007A8C0 21202002 */   addu      $a0, $s1, $zero
    /* 6B0C4 8007A8C4 4F62020C */  jal        func_8009893C
    /* 6B0C8 8007A8C8 21284002 */   addu      $a1, $s2, $zero
    /* 6B0CC 8007A8CC 10004104 */  bgez       $v0, .L8007A910
    /* 6B0D0 8007A8D0 21202002 */   addu      $a0, $s1, $zero
    /* 6B0D4 8007A8D4 21284002 */  addu       $a1, $s2, $zero
    /* 6B0D8 8007A8D8 6062020C */  jal        func_80098980
    /* 6B0DC 8007A8DC 21306002 */   addu      $a2, $s3, $zero
    /* 6B0E0 8007A8E0 0B004104 */  bgez       $v0, .L8007A910
    /* 6B0E4 8007A8E4 21202002 */   addu      $a0, $s1, $zero
    /* 6B0E8 8007A8E8 BD60020C */  jal        func_800982F4
    /* 6B0EC 8007A8EC 21284002 */   addu      $a1, $s2, $zero
    /* 6B0F0 8007A8F0 01004390 */  lbu        $v1, 0x1($v0)
    /* 6B0F4 8007A8F4 00000000 */  nop
    /* 6B0F8 8007A8F8 10006334 */  ori        $v1, $v1, 0x10
    /* 6B0FC 8007A8FC 010043A0 */  sb         $v1, 0x1($v0)
    /* 6B100 8007A900 21202002 */  addu       $a0, $s1, $zero
    /* 6B104 8007A904 21284002 */  addu       $a1, $s2, $zero
    /* 6B108 8007A908 8961020C */  jal        func_80098624
    /* 6B10C 8007A90C 21306002 */   addu      $a2, $s3, $zero
  .L8007A910:
    /* 6B110 8007A910 01009426 */  addiu      $s4, $s4, 0x1
    /* 6B114 8007A914 3200822A */  slti       $v0, $s4, 0x32
    /* 6B118 8007A918 BCFF4014 */  bnez       $v0, .L8007A80C
    /* 6B11C 8007A91C 21202002 */   addu      $a0, $s1, $zero
  .L8007A920:
    /* 6B120 8007A920 1680013C */  lui        $at, %hi(D_80158AC0)
    /* 6B124 8007A924 C08A20AC */  sw         $zero, %lo(D_80158AC0)($at)
    /* 6B128 8007A928 9EEA0108 */  j          .L8007AA78
    /* 6B12C 8007A92C 21206002 */   addu      $a0, $s3, $zero
  .L8007A930:
    /* 6B130 8007A930 21206002 */  addu       $a0, $s3, $zero
    /* 6B134 8007A934 F5CF010C */  jal        func_80073FD4
    /* 6B138 8007A938 21300000 */   addu      $a2, $zero, $zero
    /* 6B13C 8007A93C 21206002 */  addu       $a0, $s3, $zero
    /* 6B140 8007A940 2F000524 */  addiu      $a1, $zero, 0x2F
    /* 6B144 8007A944 F5CF010C */  jal        func_80073FD4
    /* 6B148 8007A948 21300000 */   addu      $a2, $zero, $zero
    /* 6B14C 8007A94C 21206002 */  addu       $a0, $s3, $zero
    /* 6B150 8007A950 12000524 */  addiu      $a1, $zero, 0x12
    /* 6B154 8007A954 F5CF010C */  jal        func_80073FD4
    /* 6B158 8007A958 21300000 */   addu      $a2, $zero, $zero
    /* 6B15C 8007A95C 21206002 */  addu       $a0, $s3, $zero
    /* 6B160 8007A960 38000524 */  addiu      $a1, $zero, 0x38
    /* 6B164 8007A964 F5CF010C */  jal        func_80073FD4
    /* 6B168 8007A968 21300000 */   addu      $a2, $zero, $zero
    /* 6B16C 8007A96C 21206002 */  addu       $a0, $s3, $zero
    /* 6B170 8007A970 0C000524 */  addiu      $a1, $zero, 0xC
    /* 6B174 8007A974 F5CF010C */  jal        func_80073FD4
    /* 6B178 8007A978 21300000 */   addu      $a2, $zero, $zero
    /* 6B17C 8007A97C 21206002 */  addu       $a0, $s3, $zero
    /* 6B180 8007A980 36000524 */  addiu      $a1, $zero, 0x36
    /* 6B184 8007A984 F5CF010C */  jal        func_80073FD4
    /* 6B188 8007A988 21300000 */   addu      $a2, $zero, $zero
    /* 6B18C 8007A98C 40801600 */  sll        $s0, $s6, 1
    /* 6B190 8007A990 21801602 */  addu       $s0, $s0, $s6
    /* 6B194 8007A994 80801000 */  sll        $s0, $s0, 2
    /* 6B198 8007A998 23801602 */  subu       $s0, $s0, $s6
    /* 6B19C 8007A99C C0801000 */  sll        $s0, $s0, 3
    /* 6B1A0 8007A9A0 07000224 */  addiu      $v0, $zero, 0x7
    /* 6B1A4 8007A9A4 1180013C */  lui        $at, %hi(D_80113ED9)
    /* 6B1A8 8007A9A8 21083000 */  addu       $at, $at, $s0
    /* 6B1AC 8007A9AC D93E22A0 */  sb         $v0, %lo(D_80113ED9)($at)
    /* 6B1B0 8007A9B0 2120C002 */  addu       $a0, $s6, $zero
    /* 6B1B4 8007A9B4 0E000524 */  addiu      $a1, $zero, 0xE
    /* 6B1B8 8007A9B8 E926020C */  jal        func_80089BA4
    /* 6B1BC 8007A9BC 01000624 */   addiu     $a2, $zero, 0x1
    /* 6B1C0 8007A9C0 40101300 */  sll        $v0, $s3, 1
    /* 6B1C4 8007A9C4 21105300 */  addu       $v0, $v0, $s3
    /* 6B1C8 8007A9C8 80100200 */  sll        $v0, $v0, 2
    /* 6B1CC 8007A9CC 23105300 */  subu       $v0, $v0, $s3
    /* 6B1D0 8007A9D0 00110200 */  sll        $v0, $v0, 4
    /* 6B1D4 8007A9D4 23105300 */  subu       $v0, $v0, $s3
    /* 6B1D8 8007A9D8 C0100200 */  sll        $v0, $v0, 3
    /* 6B1DC 8007A9DC 1180013C */  lui        $at, %hi(D_80117694)
    /* 6B1E0 8007A9E0 21082200 */  addu       $at, $at, $v0
    /* 6B1E4 8007A9E4 9476238C */  lw         $v1, %lo(D_80117694)($at)
    /* 6B1E8 8007A9E8 00000000 */  nop
    /* 6B1EC 8007A9EC 19006324 */  addiu      $v1, $v1, 0x19
    /* 6B1F0 8007A9F0 1180013C */  lui        $at, %hi(D_80117694)
    /* 6B1F4 8007A9F4 21082200 */  addu       $at, $at, $v0
    /* 6B1F8 8007A9F8 947623AC */  sw         $v1, %lo(D_80117694)($at)
    /* 6B1FC 8007A9FC 2120C002 */  addu       $a0, $s6, $zero
    /* 6B200 8007AA00 CBE6010C */  jal        func_80079B2C
    /* 6B204 8007AA04 02000524 */   addiu     $a1, $zero, 0x2
    /* 6B208 8007AA08 04000424 */  addiu      $a0, $zero, 0x4
    /* 6B20C 8007AA0C 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 6B210 8007AA10 21083000 */  addu       $at, $at, $s0
    /* 6B214 8007AA14 D03E2684 */  lh         $a2, %lo(D_80113ED0)($at)
    /* 6B218 8007AA18 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 6B21C 8007AA1C 21083000 */  addu       $at, $at, $s0
    /* 6B220 8007AA20 D23E2784 */  lh         $a3, %lo(D_80113ED2)($at)
    /* 6B224 8007AA24 8DF0010C */  jal        func_8007C234
    /* 6B228 8007AA28 21286002 */   addu      $a1, $s3, $zero
    /* 6B22C 8007AA2C 05000424 */  addiu      $a0, $zero, 0x5
    /* 6B230 8007AA30 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 6B234 8007AA34 21083000 */  addu       $at, $at, $s0
    /* 6B238 8007AA38 D03E2684 */  lh         $a2, %lo(D_80113ED0)($at)
    /* 6B23C 8007AA3C 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 6B240 8007AA40 21083000 */  addu       $at, $at, $s0
    /* 6B244 8007AA44 D23E2784 */  lh         $a3, %lo(D_80113ED2)($at)
    /* 6B248 8007AA48 8DF0010C */  jal        func_8007C234
    /* 6B24C 8007AA4C 21286002 */   addu      $a1, $s3, $zero
    /* 6B250 8007AA50 10000424 */  addiu      $a0, $zero, 0x10
    /* 6B254 8007AA54 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 6B258 8007AA58 21083000 */  addu       $at, $at, $s0
    /* 6B25C 8007AA5C D03E2684 */  lh         $a2, %lo(D_80113ED0)($at)
    /* 6B260 8007AA60 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 6B264 8007AA64 21083000 */  addu       $at, $at, $s0
    /* 6B268 8007AA68 D23E2784 */  lh         $a3, %lo(D_80113ED2)($at)
    /* 6B26C 8007AA6C 8DF0010C */  jal        func_8007C234
    /* 6B270 8007AA70 21286002 */   addu      $a1, $s3, $zero
  .L8007AA74:
    /* 6B274 8007AA74 21206002 */  addu       $a0, $s3, $zero
  .L8007AA78:
    /* 6B278 8007AA78 8ACA010C */  jal        func_80072A28
    /* 6B27C 8007AA7C 36000524 */   addiu     $a1, $zero, 0x36
    /* 6B280 8007AA80 0B004010 */  beqz       $v0, .L8007AAB0
    /* 6B284 8007AA84 40101300 */   sll       $v0, $s3, 1
    /* 6B288 8007AA88 21105300 */  addu       $v0, $v0, $s3
    /* 6B28C 8007AA8C 80100200 */  sll        $v0, $v0, 2
    /* 6B290 8007AA90 23105300 */  subu       $v0, $v0, $s3
    /* 6B294 8007AA94 00110200 */  sll        $v0, $v0, 4
    /* 6B298 8007AA98 23105300 */  subu       $v0, $v0, $s3
    /* 6B29C 8007AA9C C0100200 */  sll        $v0, $v0, 3
    /* 6B2A0 8007AAA0 02000324 */  addiu      $v1, $zero, 0x2
    /* 6B2A4 8007AAA4 1180013C */  lui        $at, %hi(D_801176A7)
    /* 6B2A8 8007AAA8 21082200 */  addu       $at, $at, $v0
    /* 6B2AC 8007AAAC A77623A0 */  sb         $v1, %lo(D_801176A7)($at)
  .L8007AAB0:
    /* 6B2B0 8007AAB0 12E80108 */  j          .L8007A048
    /* 6B2B4 8007AAB4 01007326 */   addiu     $s3, $s3, 0x1
  .L8007AAB8:
    /* 6B2B8 8007AAB8 5800A88F */  lw         $t0, 0x58($sp)
    /* 6B2BC 8007AABC 00000000 */  nop
    /* 6B2C0 8007AAC0 01000325 */  addiu      $v1, $t0, 0x1
    /* 6B2C4 8007AAC4 80100300 */  sll        $v0, $v1, 2
    /* 6B2C8 8007AAC8 21104300 */  addu       $v0, $v0, $v1
    /* 6B2CC 8007AACC 80100200 */  sll        $v0, $v0, 2
    /* 6B2D0 8007AAD0 01004224 */  addiu      $v0, $v0, 0x1
    /* 6B2D4 8007AAD4 1280013C */  lui        $at, %hi(D_8011A262)
    /* 6B2D8 8007AAD8 62A222A4 */  sh         $v0, %lo(D_8011A262)($at)
    /* 6B2DC 8007AADC C400BF8F */  lw         $ra, 0xC4($sp)
    /* 6B2E0 8007AAE0 C000BE8F */  lw         $fp, 0xC0($sp)
    /* 6B2E4 8007AAE4 BC00B78F */  lw         $s7, 0xBC($sp)
    /* 6B2E8 8007AAE8 B800B68F */  lw         $s6, 0xB8($sp)
    /* 6B2EC 8007AAEC B400B58F */  lw         $s5, 0xB4($sp)
    /* 6B2F0 8007AAF0 B000B48F */  lw         $s4, 0xB0($sp)
    /* 6B2F4 8007AAF4 AC00B38F */  lw         $s3, 0xAC($sp)
    /* 6B2F8 8007AAF8 A800B28F */  lw         $s2, 0xA8($sp)
    /* 6B2FC 8007AAFC A400B18F */  lw         $s1, 0xA4($sp)
    /* 6B300 8007AB00 A000B08F */  lw         $s0, 0xA0($sp)
    /* 6B304 8007AB04 C800BD27 */  addiu      $sp, $sp, 0xC8
    /* 6B308 8007AB08 0800E003 */  jr         $ra
    /* 6B30C 8007AB0C 00000000 */   nop
endlabel func_80079F64
