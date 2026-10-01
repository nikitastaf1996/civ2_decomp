.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D77A8, 0x5A4

glabel func_800D77A8
    /* C7FA8 800D77A8 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* C7FAC 800D77AC 5800BFAF */  sw         $ra, 0x58($sp)
    /* C7FB0 800D77B0 5400B3AF */  sw         $s3, 0x54($sp)
    /* C7FB4 800D77B4 5000B2AF */  sw         $s2, 0x50($sp)
    /* C7FB8 800D77B8 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* C7FBC 800D77BC 4800B0AF */  sw         $s0, 0x48($sp)
    /* C7FC0 800D77C0 21988000 */  addu       $s3, $a0, $zero
    /* C7FC4 800D77C4 2180A000 */  addu       $s0, $a1, $zero
    /* C7FC8 800D77C8 2188C000 */  addu       $s1, $a2, $zero
    /* C7FCC 800D77CC 1280033C */  lui        $v1, %hi(D_8011A258)
    /* C7FD0 800D77D0 58A26324 */  addiu      $v1, $v1, %lo(D_8011A258)
    /* C7FD4 800D77D4 00006294 */  lhu        $v0, 0x0($v1)
    /* C7FD8 800D77D8 00000000 */  nop
    /* C7FDC 800D77DC 02004234 */  ori        $v0, $v0, 0x2
    /* C7FE0 800D77E0 000062A4 */  sh         $v0, 0x0($v1)
    /* C7FE4 800D77E4 AC0E70AE */  sw         $s0, 0xEAC($s3)
    /* C7FE8 800D77E8 0C25020C */  jal        func_80089430
    /* C7FEC 800D77EC 21200002 */   addu      $a0, $s0, $zero
    /* C7FF0 800D77F0 7B51000C */  jal        func_800145EC
    /* C7FF4 800D77F4 00000000 */   nop
    /* C7FF8 800D77F8 0C63000C */  jal        func_80018C30
    /* C7FFC 800D77FC 01000424 */   addiu     $a0, $zero, 0x1
    /* C8000 800D7800 C00E60AE */  sw         $zero, 0xEC0($s3)
    /* C8004 800D7804 C40E60AE */  sw         $zero, 0xEC4($s3)
    /* C8008 800D7808 01000224 */  addiu      $v0, $zero, 0x1
    /* C800C 800D780C C80E62AE */  sw         $v0, 0xEC8($s3)
    /* C8010 800D7810 B40E60AE */  sw         $zero, 0xEB4($s3)
    /* C8014 800D7814 B80E60AE */  sw         $zero, 0xEB8($s3)
    /* C8018 800D7818 02000224 */  addiu      $v0, $zero, 0x2
    /* C801C 800D781C E40E62AE */  sw         $v0, 0xEE4($s3)
    /* C8020 800D7820 07000224 */  addiu      $v0, $zero, 0x7
    /* C8024 800D7824 800F62AE */  sw         $v0, 0xF80($s3)
    /* C8028 800D7828 E268030C */  jal        func_800DA388
    /* C802C 800D782C 840F60AE */   sw        $zero, 0xF84($s3)
    /* C8030 800D7830 39002012 */  beqz       $s1, .L800D7918
    /* C8034 800D7834 21904000 */   addu      $s2, $v0, $zero
    /* C8038 800D7838 40101000 */  sll        $v0, $s0, 1
    /* C803C 800D783C 21105000 */  addu       $v0, $v0, $s0
    /* C8040 800D7840 80100200 */  sll        $v0, $v0, 2
    /* C8044 800D7844 23105000 */  subu       $v0, $v0, $s0
    /* C8048 800D7848 C0100200 */  sll        $v0, $v0, 3
    /* C804C 800D784C 1180013C */  lui        $at, %hi(D_80113ED0)
    /* C8050 800D7850 21082200 */  addu       $at, $at, $v0
    /* C8054 800D7854 D03E2784 */  lh         $a3, %lo(D_80113ED0)($at)
    /* C8058 800D7858 1180013C */  lui        $at, %hi(D_80113ED2)
    /* C805C 800D785C 21082200 */  addu       $at, $at, $v0
    /* C8060 800D7860 D23E2284 */  lh         $v0, %lo(D_80113ED2)($at)
    /* C8064 800D7864 00000000 */  nop
    /* C8068 800D7868 1000A2AF */  sw         $v0, 0x10($sp)
    /* C806C 800D786C 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* C8070 800D7870 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* C8074 800D7874 3000A527 */  addiu      $a1, $sp, 0x30
    /* C8078 800D7878 0A66020C */  jal        func_80099828
    /* C807C 800D787C 3400A627 */   addiu     $a2, $sp, 0x34
    /* C8080 800D7880 2800A0A7 */  sh         $zero, 0x28($sp)
    /* C8084 800D7884 08000224 */  addiu      $v0, $zero, 0x8
    /* C8088 800D7888 2A00A2A7 */  sh         $v0, 0x2A($sp)
    /* C808C 800D788C 40010224 */  addiu      $v0, $zero, 0x140
    /* C8090 800D7890 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* C8094 800D7894 E8000224 */  addiu      $v0, $zero, 0xE8
    /* C8098 800D7898 2E00A2A7 */  sh         $v0, 0x2E($sp)
    /* C809C 800D789C 3000A38F */  lw         $v1, 0x30($sp)
    /* C80A0 800D78A0 00000000 */  nop
    /* C80A4 800D78A4 C2170300 */  srl        $v0, $v1, 31
    /* C80A8 800D78A8 3400A58F */  lw         $a1, 0x34($sp)
    /* C80AC 800D78AC 00000000 */  nop
    /* C80B0 800D78B0 C2270500 */  srl        $a0, $a1, 31
    /* C80B4 800D78B4 25104400 */  or         $v0, $v0, $a0
    /* C80B8 800D78B8 41016328 */  slti       $v1, $v1, 0x141
    /* C80BC 800D78BC 01006338 */  xori       $v1, $v1, 0x1
    /* C80C0 800D78C0 25104300 */  or         $v0, $v0, $v1
    /* C80C4 800D78C4 F100A528 */  slti       $a1, $a1, 0xF1
    /* C80C8 800D78C8 0100A538 */  xori       $a1, $a1, 0x1
    /* C80CC 800D78CC 25104500 */  or         $v0, $v0, $a1
    /* C80D0 800D78D0 06004010 */  beqz       $v0, .L800D78EC
    /* C80D4 800D78D4 21280000 */   addu      $a1, $zero, $zero
    /* C80D8 800D78D8 1000A0AF */  sw         $zero, 0x10($sp)
    /* C80DC 800D78DC 2800A427 */  addiu      $a0, $sp, 0x28
    /* C80E0 800D78E0 78000624 */  addiu      $a2, $zero, 0x78
    /* C80E4 800D78E4 425E0308 */  j          .L800D7908
    /* C80E8 800D78E8 E8030724 */   addiu     $a3, $zero, 0x3E8
  .L800D78EC:
    /* C80EC 800D78EC 3000A58F */  lw         $a1, 0x30($sp)
    /* C80F0 800D78F0 3400A68F */  lw         $a2, 0x34($sp)
    /* C80F4 800D78F4 1000A0AF */  sw         $zero, 0x10($sp)
    /* C80F8 800D78F8 2800A427 */  addiu      $a0, $sp, 0x28
    /* C80FC 800D78FC 1000A524 */  addiu      $a1, $a1, 0x10
    /* C8100 800D7900 0800C624 */  addiu      $a2, $a2, 0x8
    /* C8104 800D7904 401F0724 */  addiu      $a3, $zero, 0x1F40
  .L800D7908:
    /* C8108 800D7908 7D1C040C */  jal        func_801071F4
    /* C810C 800D790C 00000000 */   nop
    /* C8110 800D7910 B31E040C */  jal        func_80107ACC
    /* C8114 800D7914 00000000 */   nop
  .L800D7918:
    /* C8118 800D7918 1680023C */  lui        $v0, %hi(D_8015894C)
    /* C811C 800D791C 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* C8120 800D7920 00000000 */  nop
    /* C8124 800D7924 1C00448C */  lw         $a0, 0x1C($v0)
    /* C8128 800D7928 A63A030C */  jal        func_800CEA98
    /* C812C 800D792C 00000000 */   nop
    /* C8130 800D7930 1000A0AF */  sw         $zero, 0x10($sp)
    /* C8134 800D7934 40010324 */  addiu      $v1, $zero, 0x140
    /* C8138 800D7938 1400A3AF */  sw         $v1, 0x14($sp)
    /* C813C 800D793C F0000324 */  addiu      $v1, $zero, 0xF0
    /* C8140 800D7940 1800A3AF */  sw         $v1, 0x18($sp)
    /* C8144 800D7944 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* C8148 800D7948 2000A0AF */  sw         $zero, 0x20($sp)
    /* C814C 800D794C 2400A0AF */  sw         $zero, 0x24($sp)
    /* C8150 800D7950 21206002 */  addu       $a0, $s3, $zero
    /* C8154 800D7954 21284000 */  addu       $a1, $v0, $zero
    /* C8158 800D7958 21300000 */  addu       $a2, $zero, $zero
    /* C815C 800D795C F84A020C */  jal        func_80092BE0
    /* C8160 800D7960 21380000 */   addu      $a3, $zero, $zero
    /* C8164 800D7964 0D80053C */  lui        $a1, %hi(func_800D7D4C)
    /* C8168 800D7968 4C7DA524 */  addiu      $a1, $a1, %lo(func_800D7D4C)
    /* C816C 800D796C 82DF030C */  jal        func_800F7E08
    /* C8170 800D7970 21206002 */   addu      $a0, $s3, $zero
    /* C8174 800D7974 0D80023C */  lui        $v0, %hi(func_800CF0C4)
    /* C8178 800D7978 C4F04224 */  addiu      $v0, $v0, %lo(func_800CF0C4)
    /* C817C 800D797C 640062AE */  sw         $v0, 0x64($s3)
    /* C8180 800D7980 21180000 */  addu       $v1, $zero, $zero
  .L800D7984:
    /* C8184 800D7984 80100300 */  sll        $v0, $v1, 2
    /* C8188 800D7988 21105300 */  addu       $v0, $v0, $s3
    /* C818C 800D798C C00F40AC */  sw         $zero, 0xFC0($v0)
    /* C8190 800D7990 01006324 */  addiu      $v1, $v1, 0x1
    /* C8194 800D7994 0A006228 */  slti       $v0, $v1, 0xA
    /* C8198 800D7998 FAFF4014 */  bnez       $v0, .L800D7984
    /* C819C 800D799C 00000000 */   nop
    /* C81A0 800D79A0 1680043C */  lui        $a0, %hi(D_801589F0)
    /* C81A4 800D79A4 F089848C */  lw         $a0, %lo(D_801589F0)($a0)
    /* C81A8 800D79A8 00000000 */  nop
    /* C81AC 800D79AC 05008010 */  beqz       $a0, .L800D79C4
    /* C81B0 800D79B0 00000000 */   nop
    /* C81B4 800D79B4 E511040C */  jal        func_80104794
    /* C81B8 800D79B8 00000000 */   nop
    /* C81BC 800D79BC 1680013C */  lui        $at, %hi(D_801589F0)
    /* C81C0 800D79C0 F08920AC */  sw         $zero, %lo(D_801589F0)($at)
  .L800D79C4:
    /* C81C4 800D79C4 1680043C */  lui        $a0, %hi(D_801589F4)
    /* C81C8 800D79C8 F489848C */  lw         $a0, %lo(D_801589F4)($a0)
    /* C81CC 800D79CC 00000000 */  nop
    /* C81D0 800D79D0 05008010 */  beqz       $a0, .L800D79E8
    /* C81D4 800D79D4 00000000 */   nop
    /* C81D8 800D79D8 E511040C */  jal        func_80104794
    /* C81DC 800D79DC 00000000 */   nop
    /* C81E0 800D79E0 1680013C */  lui        $at, %hi(D_801589F4)
    /* C81E4 800D79E4 F48920AC */  sw         $zero, %lo(D_801589F4)($at)
  .L800D79E8:
    /* C81E8 800D79E8 DB57030C */  jal        func_800D5F6C
    /* C81EC 800D79EC 21206002 */   addu      $a0, $s3, $zero
    /* C81F0 800D79F0 200D80AF */  sw         $zero, %gp_rel(D_801591F8)($gp)
    /* C81F4 800D79F4 1680023C */  lui        $v0, %hi(D_80158500)
    /* C81F8 800D79F8 0085428C */  lw         $v0, %lo(D_80158500)($v0)
    /* C81FC 800D79FC 00000000 */  nop
    /* C8200 800D7A00 46004010 */  beqz       $v0, .L800D7B1C
    /* C8204 800D7A04 00000000 */   nop
    /* C8208 800D7A08 1280023C */  lui        $v0, %hi(D_8011A254)
    /* C820C 800D7A0C 54A2428C */  lw         $v0, %lo(D_8011A254)($v0)
    /* C8210 800D7A10 00000000 */  nop
    /* C8214 800D7A14 00014230 */  andi       $v0, $v0, 0x100
    /* C8218 800D7A18 09004010 */  beqz       $v0, .L800D7A40
    /* C821C 800D7A1C 00000000 */   nop
    /* C8220 800D7A20 1680023C */  lui        $v0, %hi(D_80158864)
    /* C8224 800D7A24 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C8228 800D7A28 00000000 */  nop
    /* C822C 800D7A2C 0400428C */  lw         $v0, 0x4($v0)
    /* C8230 800D7A30 00000000 */  nop
    /* C8234 800D7A34 01004230 */  andi       $v0, $v0, 0x1
    /* C8238 800D7A38 0F004014 */  bnez       $v0, .L800D7A78
    /* C823C 800D7A3C 00000000 */   nop
  .L800D7A40:
    /* C8240 800D7A40 1680023C */  lui        $v0, %hi(D_80158864)
    /* C8244 800D7A44 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C8248 800D7A48 00000000 */  nop
    /* C824C 800D7A4C 0400428C */  lw         $v0, 0x4($v0)
    /* C8250 800D7A50 1000033C */  lui        $v1, (0x100000 >> 16)
    /* C8254 800D7A54 24104300 */  and        $v0, $v0, $v1
    /* C8258 800D7A58 56004010 */  beqz       $v0, .L800D7BB4
    /* C825C 800D7A5C 00000000 */   nop
    /* C8260 800D7A60 1280023C */  lui        $v0, %hi(D_8011A272)
    /* C8264 800D7A64 72A24290 */  lbu        $v0, %lo(D_8011A272)($v0)
    /* C8268 800D7A68 00000000 */  nop
    /* C826C 800D7A6C 0300422C */  sltiu      $v0, $v0, 0x3
    /* C8270 800D7A70 50004010 */  beqz       $v0, .L800D7BB4
    /* C8274 800D7A74 00000000 */   nop
  .L800D7A78:
    /* C8278 800D7A78 1680023C */  lui        $v0, %hi(D_80158864)
    /* C827C 800D7A7C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C8280 800D7A80 00000000 */  nop
    /* C8284 800D7A84 08004380 */  lb         $v1, 0x8($v0)
    /* C8288 800D7A88 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* C828C 800D7A8C B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* C8290 800D7A90 00000000 */  nop
    /* C8294 800D7A94 47006214 */  bne        $v1, $v0, .L800D7BB4
    /* C8298 800D7A98 E9120524 */   addiu     $a1, $zero, 0x12E9
    /* C829C 800D7A9C 1680043C */  lui        $a0, %hi(D_8015885C)
    /* C82A0 800D7AA0 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* C82A4 800D7AA4 1000A0AF */  sw         $zero, 0x10($sp)
    /* C82A8 800D7AA8 1400A0AF */  sw         $zero, 0x14($sp)
    /* C82AC 800D7AAC 1800A0AF */  sw         $zero, 0x18($sp)
    /* C82B0 800D7AB0 21300000 */  addu       $a2, $zero, $zero
    /* C82B4 800D7AB4 B4E2020C */  jal        func_800B8AD0
    /* C82B8 800D7AB8 21380000 */   addu      $a3, $zero, $zero
    /* C82BC 800D7ABC 1680023C */  lui        $v0, %hi(D_80158FD8)
    /* C82C0 800D7AC0 D88F428C */  lw         $v0, %lo(D_80158FD8)($v0)
    /* C82C4 800D7AC4 00000000 */  nop
    /* C82C8 800D7AC8 3A004010 */  beqz       $v0, .L800D7BB4
    /* C82CC 800D7ACC F1140524 */   addiu     $a1, $zero, 0x14F1
    /* C82D0 800D7AD0 1680043C */  lui        $a0, %hi(D_8015885C)
    /* C82D4 800D7AD4 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* C82D8 800D7AD8 1000A0AF */  sw         $zero, 0x10($sp)
    /* C82DC 800D7ADC 1400A0AF */  sw         $zero, 0x14($sp)
    /* C82E0 800D7AE0 1800A0AF */  sw         $zero, 0x18($sp)
    /* C82E4 800D7AE4 21300000 */  addu       $a2, $zero, $zero
    /* C82E8 800D7AE8 B4E2020C */  jal        func_800B8AD0
    /* C82EC 800D7AEC 21380000 */   addu      $a3, $zero, $zero
    /* C82F0 800D7AF0 1680043C */  lui        $a0, %hi(D_8015885C)
    /* C82F4 800D7AF4 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* C82F8 800D7AF8 1000A0AF */  sw         $zero, 0x10($sp)
    /* C82FC 800D7AFC 1400A0AF */  sw         $zero, 0x14($sp)
    /* C8300 800D7B00 1800A0AF */  sw         $zero, 0x18($sp)
    /* C8304 800D7B04 91180524 */  addiu      $a1, $zero, 0x1891
    /* C8308 800D7B08 21300000 */  addu       $a2, $zero, $zero
    /* C830C 800D7B0C B4E2020C */  jal        func_800B8AD0
    /* C8310 800D7B10 21380000 */   addu      $a3, $zero, $zero
    /* C8314 800D7B14 ED5E0308 */  j          .L800D7BB4
    /* C8318 800D7B18 00000000 */   nop
  .L800D7B1C:
    /* C831C 800D7B1C 1280103C */  lui        $s0, %hi(D_8011A254)
    /* C8320 800D7B20 54A21026 */  addiu      $s0, $s0, %lo(D_8011A254)
    /* C8324 800D7B24 0000028E */  lw         $v0, 0x0($s0)
    /* C8328 800D7B28 00000000 */  nop
    /* C832C 800D7B2C 00014230 */  andi       $v0, $v0, 0x100
    /* C8330 800D7B30 20004010 */  beqz       $v0, .L800D7BB4
    /* C8334 800D7B34 00000000 */   nop
    /* C8338 800D7B38 1680033C */  lui        $v1, %hi(D_80158864)
    /* C833C 800D7B3C 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* C8340 800D7B40 00000000 */  nop
    /* C8344 800D7B44 09006280 */  lb         $v0, 0x9($v1)
    /* C8348 800D7B48 00000000 */  nop
    /* C834C 800D7B4C 04004228 */  slti       $v0, $v0, 0x4
    /* C8350 800D7B50 18004014 */  bnez       $v0, .L800D7BB4
    /* C8354 800D7B54 00000000 */   nop
    /* C8358 800D7B58 0A000296 */  lhu        $v0, 0xA($s0)
    /* C835C 800D7B5C 00000000 */  nop
    /* C8360 800D7B60 01004230 */  andi       $v0, $v0, 0x1
    /* C8364 800D7B64 13004014 */  bnez       $v0, .L800D7BB4
    /* C8368 800D7B68 00000000 */   nop
    /* C836C 800D7B6C 08006380 */  lb         $v1, 0x8($v1)
    /* C8370 800D7B70 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* C8374 800D7B74 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* C8378 800D7B78 00000000 */  nop
    /* C837C 800D7B7C 0D006210 */  beq        $v1, $v0, .L800D7BB4
    /* C8380 800D7B80 C4090524 */   addiu     $a1, $zero, 0x9C4
    /* C8384 800D7B84 1680043C */  lui        $a0, %hi(D_8015885C)
    /* C8388 800D7B88 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* C838C 800D7B8C 1000A0AF */  sw         $zero, 0x10($sp)
    /* C8390 800D7B90 1400A0AF */  sw         $zero, 0x14($sp)
    /* C8394 800D7B94 1800A0AF */  sw         $zero, 0x18($sp)
    /* C8398 800D7B98 21300000 */  addu       $a2, $zero, $zero
    /* C839C 800D7B9C B4E2020C */  jal        func_800B8AD0
    /* C83A0 800D7BA0 21380000 */   addu      $a3, $zero, $zero
    /* C83A4 800D7BA4 0A000296 */  lhu        $v0, 0xA($s0)
    /* C83A8 800D7BA8 00000000 */  nop
    /* C83AC 800D7BAC 01004234 */  ori        $v0, $v0, 0x1
    /* C83B0 800D7BB0 0A0002A6 */  sh         $v0, 0xA($s0)
  .L800D7BB4:
    /* C83B4 800D7BB4 B40E628E */  lw         $v0, 0xEB4($s3)
    /* C83B8 800D7BB8 00000000 */  nop
    /* C83BC 800D7BBC 05004014 */  bnez       $v0, .L800D7BD4
    /* C83C0 800D7BC0 00000000 */   nop
    /* C83C4 800D7BC4 1E12040C */  jal        func_80104878
    /* C83C8 800D7BC8 00000000 */   nop
    /* C83CC 800D7BCC ED5E0308 */  j          .L800D7BB4
    /* C83D0 800D7BD0 00000000 */   nop
  .L800D7BD4:
    /* C83D4 800D7BD4 03004016 */  bnez       $s2, .L800D7BE4
    /* C83D8 800D7BD8 00000000 */   nop
    /* C83DC 800D7BDC 7F69030C */  jal        func_800DA5FC
    /* C83E0 800D7BE0 00000000 */   nop
  .L800D7BE4:
    /* C83E4 800D7BE4 5674020C */  jal        func_8009D158
    /* C83E8 800D7BE8 00000000 */   nop
    /* C83EC 800D7BEC 1680043C */  lui        $a0, %hi(D_801589F0)
    /* C83F0 800D7BF0 F089848C */  lw         $a0, %lo(D_801589F0)($a0)
    /* C83F4 800D7BF4 00000000 */  nop
    /* C83F8 800D7BF8 05008010 */  beqz       $a0, .L800D7C10
    /* C83FC 800D7BFC 00000000 */   nop
    /* C8400 800D7C00 E511040C */  jal        func_80104794
    /* C8404 800D7C04 00000000 */   nop
    /* C8408 800D7C08 1680013C */  lui        $at, %hi(D_801589F0)
    /* C840C 800D7C0C F08920AC */  sw         $zero, %lo(D_801589F0)($at)
  .L800D7C10:
    /* C8410 800D7C10 1680043C */  lui        $a0, %hi(D_801589F4)
    /* C8414 800D7C14 F489848C */  lw         $a0, %lo(D_801589F4)($a0)
    /* C8418 800D7C18 00000000 */  nop
    /* C841C 800D7C1C 05008010 */  beqz       $a0, .L800D7C34
    /* C8420 800D7C20 00000000 */   nop
    /* C8424 800D7C24 E511040C */  jal        func_80104794
    /* C8428 800D7C28 00000000 */   nop
    /* C842C 800D7C2C 1680013C */  lui        $at, %hi(D_801589F4)
    /* C8430 800D7C30 F48920AC */  sw         $zero, %lo(D_801589F4)($at)
  .L800D7C34:
    /* C8434 800D7C34 3D002012 */  beqz       $s1, .L800D7D2C
    /* C8438 800D7C38 08001224 */   addiu     $s2, $zero, 0x8
    /* C843C 800D7C3C 3800A0A7 */  sh         $zero, 0x38($sp)
    /* C8440 800D7C40 3A00B2A7 */  sh         $s2, 0x3A($sp)
    /* C8444 800D7C44 40011124 */  addiu      $s1, $zero, 0x140
    /* C8448 800D7C48 3C00B1A7 */  sh         $s1, 0x3C($sp)
    /* C844C 800D7C4C E8001024 */  addiu      $s0, $zero, 0xE8
    /* C8450 800D7C50 3E00B0A7 */  sh         $s0, 0x3E($sp)
    /* C8454 800D7C54 AC0E638E */  lw         $v1, 0xEAC($s3)
    /* C8458 800D7C58 00000000 */  nop
    /* C845C 800D7C5C 40100300 */  sll        $v0, $v1, 1
    /* C8460 800D7C60 21104300 */  addu       $v0, $v0, $v1
    /* C8464 800D7C64 80100200 */  sll        $v0, $v0, 2
    /* C8468 800D7C68 23104300 */  subu       $v0, $v0, $v1
    /* C846C 800D7C6C C0100200 */  sll        $v0, $v0, 3
    /* C8470 800D7C70 1180013C */  lui        $at, %hi(D_80113ED0)
    /* C8474 800D7C74 21082200 */  addu       $at, $at, $v0
    /* C8478 800D7C78 D03E2784 */  lh         $a3, %lo(D_80113ED0)($at)
    /* C847C 800D7C7C 1180013C */  lui        $at, %hi(D_80113ED2)
    /* C8480 800D7C80 21082200 */  addu       $at, $at, $v0
    /* C8484 800D7C84 D23E2284 */  lh         $v0, %lo(D_80113ED2)($at)
    /* C8488 800D7C88 00000000 */  nop
    /* C848C 800D7C8C 1000A2AF */  sw         $v0, 0x10($sp)
    /* C8490 800D7C90 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* C8494 800D7C94 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* C8498 800D7C98 4000A527 */  addiu      $a1, $sp, 0x40
    /* C849C 800D7C9C 0A66020C */  jal        func_80099828
    /* C84A0 800D7CA0 4400A627 */   addiu     $a2, $sp, 0x44
    /* C84A4 800D7CA4 3800A0A7 */  sh         $zero, 0x38($sp)
    /* C84A8 800D7CA8 3A00B2A7 */  sh         $s2, 0x3A($sp)
    /* C84AC 800D7CAC 3C00B1A7 */  sh         $s1, 0x3C($sp)
    /* C84B0 800D7CB0 3E00B0A7 */  sh         $s0, 0x3E($sp)
    /* C84B4 800D7CB4 4000A38F */  lw         $v1, 0x40($sp)
    /* C84B8 800D7CB8 00000000 */  nop
    /* C84BC 800D7CBC C2170300 */  srl        $v0, $v1, 31
    /* C84C0 800D7CC0 4400A58F */  lw         $a1, 0x44($sp)
    /* C84C4 800D7CC4 00000000 */  nop
    /* C84C8 800D7CC8 C2270500 */  srl        $a0, $a1, 31
    /* C84CC 800D7CCC 25104400 */  or         $v0, $v0, $a0
    /* C84D0 800D7CD0 41016328 */  slti       $v1, $v1, 0x141
    /* C84D4 800D7CD4 01006338 */  xori       $v1, $v1, 0x1
    /* C84D8 800D7CD8 25104300 */  or         $v0, $v0, $v1
    /* C84DC 800D7CDC F100A528 */  slti       $a1, $a1, 0xF1
    /* C84E0 800D7CE0 0100A538 */  xori       $a1, $a1, 0x1
    /* C84E4 800D7CE4 25104500 */  or         $v0, $v0, $a1
    /* C84E8 800D7CE8 06004010 */  beqz       $v0, .L800D7D04
    /* C84EC 800D7CEC 3800A427 */   addiu     $a0, $sp, 0x38
    /* C84F0 800D7CF0 1000A0AF */  sw         $zero, 0x10($sp)
    /* C84F4 800D7CF4 21280000 */  addu       $a1, $zero, $zero
    /* C84F8 800D7CF8 78000624 */  addiu      $a2, $zero, 0x78
    /* C84FC 800D7CFC 475F0308 */  j          .L800D7D1C
    /* C8500 800D7D00 E8030724 */   addiu     $a3, $zero, 0x3E8
  .L800D7D04:
    /* C8504 800D7D04 4000A58F */  lw         $a1, 0x40($sp)
    /* C8508 800D7D08 4400A68F */  lw         $a2, 0x44($sp)
    /* C850C 800D7D0C 1000A0AF */  sw         $zero, 0x10($sp)
    /* C8510 800D7D10 1000A524 */  addiu      $a1, $a1, 0x10
    /* C8514 800D7D14 0800C624 */  addiu      $a2, $a2, 0x8
    /* C8518 800D7D18 401F0724 */  addiu      $a3, $zero, 0x1F40
  .L800D7D1C:
    /* C851C 800D7D1C 011D040C */  jal        func_80107404
    /* C8520 800D7D20 00000000 */   nop
    /* C8524 800D7D24 B31E040C */  jal        func_80107ACC
    /* C8528 800D7D28 00000000 */   nop
  .L800D7D2C:
    /* C852C 800D7D2C 5800BF8F */  lw         $ra, 0x58($sp)
    /* C8530 800D7D30 5400B38F */  lw         $s3, 0x54($sp)
    /* C8534 800D7D34 5000B28F */  lw         $s2, 0x50($sp)
    /* C8538 800D7D38 4C00B18F */  lw         $s1, 0x4C($sp)
    /* C853C 800D7D3C 4800B08F */  lw         $s0, 0x48($sp)
    /* C8540 800D7D40 6000BD27 */  addiu      $sp, $sp, 0x60
    /* C8544 800D7D44 0800E003 */  jr         $ra
    /* C8548 800D7D48 00000000 */   nop
endlabel func_800D77A8
