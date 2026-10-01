.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005E954, 0x27C

glabel func_8005E954
    /* 4F154 8005E954 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4F158 8005E958 2400BFAF */  sw         $ra, 0x24($sp)
    /* 4F15C 8005E95C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 4F160 8005E960 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4F164 8005E964 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4F168 8005E968 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4F16C 8005E96C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4F170 8005E970 21988000 */  addu       $s3, $a0, $zero
    /* 4F174 8005E974 21A0A000 */  addu       $s4, $a1, $zero
    /* 4F178 8005E978 2188C000 */  addu       $s1, $a2, $zero
    /* 4F17C 8005E97C 21208002 */  addu       $a0, $s4, $zero
    /* 4F180 8005E980 F7F5010C */  jal        func_8007D7DC
    /* 4F184 8005E984 02000524 */   addiu     $a1, $zero, 0x2
    /* 4F188 8005E988 02004228 */  slti       $v0, $v0, 0x2
    /* 4F18C 8005E98C 87004010 */  beqz       $v0, .L8005EBAC
    /* 4F190 8005E990 21100000 */   addu      $v0, $zero, $zero
    /* 4F194 8005E994 1280043C */  lui        $a0, %hi(D_8011A275)
    /* 4F198 8005E998 75A28424 */  addiu      $a0, $a0, %lo(D_8011A275)
    /* 4F19C 8005E99C 00008290 */  lbu        $v0, 0x0($a0)
    /* 4F1A0 8005E9A0 00000000 */  nop
    /* 4F1A4 8005E9A4 07102202 */  srav       $v0, $v0, $s1
    /* 4F1A8 8005E9A8 01004230 */  andi       $v0, $v0, 0x1
    /* 4F1AC 8005E9AC 19004010 */  beqz       $v0, .L8005EA14
    /* 4F1B0 8005E9B0 40101300 */   sll       $v0, $s3, 1
    /* 4F1B4 8005E9B4 21105300 */  addu       $v0, $v0, $s3
    /* 4F1B8 8005E9B8 80100200 */  sll        $v0, $v0, 2
    /* 4F1BC 8005E9BC 21105300 */  addu       $v0, $v0, $s3
    /* 4F1C0 8005E9C0 40100200 */  sll        $v0, $v0, 1
    /* 4F1C4 8005E9C4 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4F1C8 8005E9C8 21082200 */  addu       $at, $at, $v0
    /* 4F1CC 8005E9CC BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4F1D0 8005E9D0 2F000224 */  addiu      $v0, $zero, 0x2F
    /* 4F1D4 8005E9D4 0F006214 */  bne        $v1, $v0, .L8005EA14
    /* 4F1D8 8005E9D8 00000000 */   nop
    /* 4F1DC 8005E9DC DBFF8294 */  lhu        $v0, -0x25($a0)
    /* 4F1E0 8005E9E0 00000000 */  nop
    /* 4F1E4 8005E9E4 10004230 */  andi       $v0, $v0, 0x10
    /* 4F1E8 8005E9E8 0A004010 */  beqz       $v0, .L8005EA14
    /* 4F1EC 8005E9EC DAC50534 */   ori       $a1, $zero, 0xC5DA
    /* 4F1F0 8005E9F0 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4F1F4 8005E9F4 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4F1F8 8005E9F8 01000624 */  addiu      $a2, $zero, 0x1
    /* 4F1FC 8005E9FC 63E4020C */  jal        func_800B918C
    /* 4F200 8005EA00 21386002 */   addu      $a3, $s3, $zero
    /* 4F204 8005EA04 06004004 */  bltz       $v0, .L8005EA20
    /* 4F208 8005EA08 00000000 */   nop
    /* 4F20C 8005EA0C 06004014 */  bnez       $v0, .L8005EA28
    /* 4F210 8005EA10 00000000 */   nop
  .L8005EA14:
    /* 4F214 8005EA14 21208002 */  addu       $a0, $s4, $zero
    /* 4F218 8005EA18 9878010C */  jal        func_8005E260
    /* 4F21C 8005EA1C 21282002 */   addu      $a1, $s1, $zero
  .L8005EA20:
    /* 4F220 8005EA20 EB7A0108 */  j          .L8005EBAC
    /* 4F224 8005EA24 21100000 */   addu      $v0, $zero, $zero
  .L8005EA28:
    /* 4F228 8005EA28 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 4F22C 8005EA2C B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 4F230 8005EA30 00000000 */  nop
    /* 4F234 8005EA34 04000212 */  beq        $s0, $v0, .L8005EA48
    /* 4F238 8005EA38 43000424 */   addiu     $a0, $zero, 0x43
    /* 4F23C 8005EA3C 07002216 */  bne        $s1, $v0, .L8005EA5C
    /* 4F240 8005EA40 40801400 */   sll       $s0, $s4, 1
    /* 4F244 8005EA44 43000424 */  addiu      $a0, $zero, 0x43
  .L8005EA48:
    /* 4F248 8005EA48 01000524 */  addiu      $a1, $zero, 0x1
    /* 4F24C 8005EA4C 21300000 */  addu       $a2, $zero, $zero
    /* 4F250 8005EA50 2B9D020C */  jal        func_800A74AC
    /* 4F254 8005EA54 21380000 */   addu      $a3, $zero, $zero
    /* 4F258 8005EA58 40801400 */  sll        $s0, $s4, 1
  .L8005EA5C:
    /* 4F25C 8005EA5C 21801402 */  addu       $s0, $s0, $s4
    /* 4F260 8005EA60 80801000 */  sll        $s0, $s0, 2
    /* 4F264 8005EA64 21801402 */  addu       $s0, $s0, $s4
    /* 4F268 8005EA68 40801000 */  sll        $s0, $s0, 1
    /* 4F26C 8005EA6C 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4F270 8005EA70 21083000 */  addu       $at, $at, $s0
    /* 4F274 8005EA74 BBD62480 */  lb         $a0, %lo(D_8010D6BB)($at)
    /* 4F278 8005EA78 8A54020C */  jal        func_80095228
    /* 4F27C 8005EA7C 00000000 */   nop
    /* 4F280 8005EA80 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 4F284 8005EA84 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 4F288 8005EA88 A587030C */  jal        func_800E1E94
    /* 4F28C 8005EA8C 21284000 */   addu      $a1, $v0, $zero
    /* 4F290 8005EA90 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4F294 8005EA94 21083000 */  addu       $at, $at, $s0
    /* 4F298 8005EA98 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4F29C 8005EA9C 00000000 */  nop
    /* 4F2A0 8005EAA0 80100300 */  sll        $v0, $v1, 2
    /* 4F2A4 8005EAA4 21104300 */  addu       $v0, $v0, $v1
    /* 4F2A8 8005EAA8 80100200 */  sll        $v0, $v0, 2
    /* 4F2AC 8005EAAC 1180013C */  lui        $at, %hi(D_8010D27C)
    /* 4F2B0 8005EAB0 21082200 */  addu       $at, $at, $v0
    /* 4F2B4 8005EAB4 7CD2258C */  lw         $a1, %lo(D_8010D27C)($at)
    /* 4F2B8 8005EAB8 ABAC020C */  jal        func_800AB2AC
    /* 4F2BC 8005EABC 01000424 */   addiu     $a0, $zero, 0x1
    /* 4F2C0 8005EAC0 8A54020C */  jal        func_80095228
    /* 4F2C4 8005EAC4 21202002 */   addu      $a0, $s1, $zero
    /* 4F2C8 8005EAC8 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 4F2CC 8005EACC 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 4F2D0 8005EAD0 A587030C */  jal        func_800E1E94
    /* 4F2D4 8005EAD4 21284000 */   addu      $a1, $v0, $zero
    /* 4F2D8 8005EAD8 40101300 */  sll        $v0, $s3, 1
    /* 4F2DC 8005EADC 21105300 */  addu       $v0, $v0, $s3
    /* 4F2E0 8005EAE0 80100200 */  sll        $v0, $v0, 2
    /* 4F2E4 8005EAE4 21105300 */  addu       $v0, $v0, $s3
    /* 4F2E8 8005EAE8 40100200 */  sll        $v0, $v0, 1
    /* 4F2EC 8005EAEC 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4F2F0 8005EAF0 21082200 */  addu       $at, $at, $v0
    /* 4F2F4 8005EAF4 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4F2F8 8005EAF8 00000000 */  nop
    /* 4F2FC 8005EAFC 80100300 */  sll        $v0, $v1, 2
    /* 4F300 8005EB00 21104300 */  addu       $v0, $v0, $v1
    /* 4F304 8005EB04 80100200 */  sll        $v0, $v0, 2
    /* 4F308 8005EB08 1180013C */  lui        $at, %hi(D_8010D27C)
    /* 4F30C 8005EB0C 21082200 */  addu       $at, $at, $v0
    /* 4F310 8005EB10 7CD2258C */  lw         $a1, %lo(D_8010D27C)($at)
    /* 4F314 8005EB14 ABAC020C */  jal        func_800AB2AC
    /* 4F318 8005EB18 03000424 */   addiu     $a0, $zero, 0x3
    /* 4F31C 8005EB1C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4F320 8005EB20 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4F324 8005EB24 2EC60534 */  ori        $a1, $zero, 0xC62E
    /* 4F328 8005EB28 21300000 */  addu       $a2, $zero, $zero
    /* 4F32C 8005EB2C 63E4020C */  jal        func_800B918C
    /* 4F330 8005EB30 21386002 */   addu      $a3, $s3, $zero
    /* 4F334 8005EB34 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4F338 8005EB38 21083000 */  addu       $at, $at, $s0
    /* 4F33C 8005EB3C B4D63184 */  lh         $s1, %lo(D_8010D6B4)($at)
    /* 4F340 8005EB40 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4F344 8005EB44 21083000 */  addu       $at, $at, $s0
    /* 4F348 8005EB48 B6D63284 */  lh         $s2, %lo(D_8010D6B6)($at)
    /* 4F34C 8005EB4C 21202002 */  addu       $a0, $s1, $zero
    /* 4F350 8005EB50 56AA000C */  jal        func_8002A958
    /* 4F354 8005EB54 21284002 */   addu      $a1, $s2, $zero
    /* 4F358 8005EB58 CDEC010C */  jal        func_8007B334
    /* 4F35C 8005EB5C 21208002 */   addu      $a0, $s4, $zero
    /* 4F360 8005EB60 C21F0200 */  srl        $v1, $v0, 31
    /* 4F364 8005EB64 21186200 */  addu       $v1, $v1, $v0
    /* 4F368 8005EB68 43180300 */  sra        $v1, $v1, 1
    /* 4F36C 8005EB6C 1180013C */  lui        $at, %hi(D_8010D6BE)
    /* 4F370 8005EB70 21083000 */  addu       $at, $at, $s0
    /* 4F374 8005EB74 BED62290 */  lbu        $v0, %lo(D_8010D6BE)($at)
    /* 4F378 8005EB78 00000000 */  nop
    /* 4F37C 8005EB7C 21104300 */  addu       $v0, $v0, $v1
    /* 4F380 8005EB80 1180013C */  lui        $at, %hi(D_8010D6BE)
    /* 4F384 8005EB84 21083000 */  addu       $at, $at, $s0
    /* 4F388 8005EB88 BED622A0 */  sb         $v0, %lo(D_8010D6BE)($at)
    /* 4F38C 8005EB8C 21202002 */  addu       $a0, $s1, $zero
    /* 4F390 8005EB90 426F020C */  jal        func_8009BD08
    /* 4F394 8005EB94 21284002 */   addu      $a1, $s2, $zero
    /* 4F398 8005EB98 21206002 */  addu       $a0, $s3, $zero
    /* 4F39C 8005EB9C 21280000 */  addu       $a1, $zero, $zero
    /* 4F3A0 8005EBA0 966C010C */  jal        func_8005B258
    /* 4F3A4 8005EBA4 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 4F3A8 8005EBA8 01000224 */  addiu      $v0, $zero, 0x1
  .L8005EBAC:
    /* 4F3AC 8005EBAC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 4F3B0 8005EBB0 2000B48F */  lw         $s4, 0x20($sp)
    /* 4F3B4 8005EBB4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4F3B8 8005EBB8 1800B28F */  lw         $s2, 0x18($sp)
    /* 4F3BC 8005EBBC 1400B18F */  lw         $s1, 0x14($sp)
    /* 4F3C0 8005EBC0 1000B08F */  lw         $s0, 0x10($sp)
    /* 4F3C4 8005EBC4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4F3C8 8005EBC8 0800E003 */  jr         $ra
    /* 4F3CC 8005EBCC 00000000 */   nop
endlabel func_8005E954
