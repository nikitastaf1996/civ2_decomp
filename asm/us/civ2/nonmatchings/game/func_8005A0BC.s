.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005A0BC, 0x2A8

glabel func_8005A0BC
    /* 4A8BC 8005A0BC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4A8C0 8005A0C0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4A8C4 8005A0C4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4A8C8 8005A0C8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4A8CC 8005A0CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A8D0 8005A0D0 21808000 */  addu       $s0, $a0, $zero
    /* 4A8D4 8005A0D4 1680013C */  lui        $at, %hi(D_80158872)
    /* 4A8D8 8005A0D8 728820A0 */  sb         $zero, %lo(D_80158872)($at)
    /* 4A8DC 8005A0DC 40101000 */  sll        $v0, $s0, 1
    /* 4A8E0 8005A0E0 21105000 */  addu       $v0, $v0, $s0
    /* 4A8E4 8005A0E4 80100200 */  sll        $v0, $v0, 2
    /* 4A8E8 8005A0E8 21105000 */  addu       $v0, $v0, $s0
    /* 4A8EC 8005A0EC 40100200 */  sll        $v0, $v0, 1
    /* 4A8F0 8005A0F0 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4A8F4 8005A0F4 21082200 */  addu       $at, $at, $v0
    /* 4A8F8 8005A0F8 BBD63180 */  lb         $s1, %lo(D_8010D6BB)($at)
    /* 4A8FC 8005A0FC 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 4A900 8005A100 21082200 */  addu       $at, $at, $v0
    /* 4A904 8005A104 C3D63280 */  lb         $s2, %lo(D_8010D6C3)($at)
    /* 4A908 8005A108 00000000 */  nop
    /* 4A90C 8005A10C 10004232 */  andi       $v0, $s2, 0x10
    /* 4A910 8005A110 05004010 */  beqz       $v0, .L8005A128
    /* 4A914 8005A114 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 4A918 8005A118 1680013C */  lui        $at, %hi(D_80158AC4)
    /* 4A91C 8005A11C C48A22AC */  sw         $v0, %lo(D_80158AC4)($at)
    /* 4A920 8005A120 4C680108 */  j          .L8005A130
    /* 4A924 8005A124 00000000 */   nop
  .L8005A128:
    /* 4A928 8005A128 1680013C */  lui        $at, %hi(D_80158AC4)
    /* 4A92C 8005A12C C48A31AC */  sw         $s1, %lo(D_80158AC4)($at)
  .L8005A130:
    /* 4A930 8005A130 2A99020C */  jal        func_800A64A8
    /* 4A934 8005A134 21200002 */   addu      $a0, $s0, $zero
    /* 4A938 8005A138 21284000 */  addu       $a1, $v0, $zero
    /* 4A93C 8005A13C 6100A004 */  bltz       $a1, .L8005A2C4
    /* 4A940 8005A140 08000224 */   addiu     $v0, $zero, 0x8
    /* 4A944 8005A144 7D00A210 */  beq        $a1, $v0, .L8005A33C
    /* 4A948 8005A148 21200002 */   addu      $a0, $s0, $zero
    /* 4A94C 8005A14C 8504020C */  jal        func_80081214
    /* 4A950 8005A150 03000624 */   addiu     $a2, $zero, 0x3
    /* 4A954 8005A154 7C004010 */  beqz       $v0, .L8005A348
    /* 4A958 8005A158 40101000 */   sll       $v0, $s0, 1
    /* 4A95C 8005A15C 21105000 */  addu       $v0, $v0, $s0
    /* 4A960 8005A160 80100200 */  sll        $v0, $v0, 2
    /* 4A964 8005A164 21105000 */  addu       $v0, $v0, $s0
    /* 4A968 8005A168 40280200 */  sll        $a1, $v0, 1
    /* 4A96C 8005A16C 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 4A970 8005A170 21082500 */  addu       $at, $at, $a1
    /* 4A974 8005A174 B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* 4A978 8005A178 00000000 */  nop
    /* 4A97C 8005A17C 7FFF4230 */  andi       $v0, $v0, 0xFF7F
    /* 4A980 8005A180 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 4A984 8005A184 21082500 */  addu       $at, $at, $a1
    /* 4A988 8005A188 B8D622A4 */  sh         $v0, %lo(D_8010D6B8)($at)
    /* 4A98C 8005A18C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4A990 8005A190 21082500 */  addu       $at, $at, $a1
    /* 4A994 8005A194 B4D62384 */  lh         $v1, %lo(D_8010D6B4)($at)
    /* 4A998 8005A198 1180013C */  lui        $at, %hi(D_8010D6C6)
    /* 4A99C 8005A19C 21082500 */  addu       $at, $at, $a1
    /* 4A9A0 8005A1A0 C6D62284 */  lh         $v0, %lo(D_8010D6C6)($at)
    /* 4A9A4 8005A1A4 00000000 */  nop
    /* 4A9A8 8005A1A8 65006214 */  bne        $v1, $v0, .L8005A340
    /* 4A9AC 8005A1AC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 4A9B0 8005A1B0 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4A9B4 8005A1B4 21082500 */  addu       $at, $at, $a1
    /* 4A9B8 8005A1B8 B6D62384 */  lh         $v1, %lo(D_8010D6B6)($at)
    /* 4A9BC 8005A1BC 1180013C */  lui        $at, %hi(D_8010D6C8)
    /* 4A9C0 8005A1C0 21082500 */  addu       $at, $at, $a1
    /* 4A9C4 8005A1C4 C8D62284 */  lh         $v0, %lo(D_8010D6C8)($at)
    /* 4A9C8 8005A1C8 00000000 */  nop
    /* 4A9CC 8005A1CC 5C006214 */  bne        $v1, $v0, .L8005A340
    /* 4A9D0 8005A1D0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 4A9D4 8005A1D4 10004232 */  andi       $v0, $s2, 0x10
    /* 4A9D8 8005A1D8 59004014 */  bnez       $v0, .L8005A340
    /* 4A9DC 8005A1DC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 4A9E0 8005A1E0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4A9E4 8005A1E4 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 4A9E8 8005A1E8 21082500 */  addu       $at, $at, $a1
    /* 4A9EC 8005A1EC C3D622A0 */  sb         $v0, %lo(D_8010D6C3)($at)
    /* 4A9F0 8005A1F0 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 4A9F4 8005A1F4 21082500 */  addu       $at, $at, $a1
    /* 4A9F8 8005A1F8 B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* 4A9FC 8005A1FC 00000000 */  nop
    /* 4AA00 8005A200 80004234 */  ori        $v0, $v0, 0x80
    /* 4AA04 8005A204 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 4AA08 8005A208 21082500 */  addu       $at, $at, $a1
    /* 4AA0C 8005A20C B8D622A4 */  sh         $v0, %lo(D_8010D6B8)($at)
    /* 4AA10 8005A210 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4AA14 8005A214 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4AA18 8005A218 00000000 */  nop
    /* 4AA1C 8005A21C 07102202 */  srav       $v0, $v0, $s1
    /* 4AA20 8005A220 01004230 */  andi       $v0, $v0, 0x1
    /* 4AA24 8005A224 46004014 */  bnez       $v0, .L8005A340
    /* 4AA28 8005A228 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 4AA2C 8005A22C 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4AA30 8005A230 21082500 */  addu       $at, $at, $a1
    /* 4AA34 8005A234 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4AA38 8005A238 00000000 */  nop
    /* 4AA3C 8005A23C 80100300 */  sll        $v0, $v1, 2
    /* 4AA40 8005A240 21104300 */  addu       $v0, $v0, $v1
    /* 4AA44 8005A244 80100200 */  sll        $v0, $v0, 2
    /* 4AA48 8005A248 1180013C */  lui        $at, %hi(D_8010D285)
    /* 4AA4C 8005A24C 21082200 */  addu       $at, $at, $v0
    /* 4AA50 8005A250 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 4AA54 8005A254 02000224 */  addiu      $v0, $zero, 0x2
    /* 4AA58 8005A258 12006210 */  beq        $v1, $v0, .L8005A2A4
    /* 4AA5C 8005A25C 00000000 */   nop
    /* 4AA60 8005A260 1180013C */  lui        $at, %hi(D_8010D6C2)
    /* 4AA64 8005A264 21082500 */  addu       $at, $at, $a1
    /* 4AA68 8005A268 C2D62280 */  lb         $v0, %lo(D_8010D6C2)($at)
    /* 4AA6C 8005A26C 00000000 */  nop
    /* 4AA70 8005A270 0A004228 */  slti       $v0, $v0, 0xA
    /* 4AA74 8005A274 32004014 */  bnez       $v0, .L8005A340
    /* 4AA78 8005A278 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 4AA7C 8005A27C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4AA80 8005A280 21082500 */  addu       $at, $at, $a1
    /* 4AA84 8005A284 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 4AA88 8005A288 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4AA8C 8005A28C 21082500 */  addu       $at, $at, $a1
    /* 4AA90 8005A290 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 4AA94 8005A294 44F4010C */  jal        func_8007D110
    /* 4AA98 8005A298 21302002 */   addu      $a2, $s1, $zero
    /* 4AA9C 8005A29C 28004014 */  bnez       $v0, .L8005A340
    /* 4AAA0 8005A2A0 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8005A2A4:
    /* 4AAA4 8005A2A4 BEFA010C */  jal        func_8007EAF8
    /* 4AAA8 8005A2A8 21200002 */   addu      $a0, $s0, $zero
    /* 4AAAC 8005A2AC 40101000 */  sll        $v0, $s0, 1
    /* 4AAB0 8005A2B0 21105000 */  addu       $v0, $v0, $s0
    /* 4AAB4 8005A2B4 80100200 */  sll        $v0, $v0, 2
    /* 4AAB8 8005A2B8 21105000 */  addu       $v0, $v0, $s0
    /* 4AABC 8005A2BC BB680108 */  j          .L8005A2EC
    /* 4AAC0 8005A2C0 40200200 */   sll       $a0, $v0, 1
  .L8005A2C4:
    /* 4AAC4 8005A2C4 1D00A210 */  beq        $a1, $v0, .L8005A33C
    /* 4AAC8 8005A2C8 40101000 */   sll       $v0, $s0, 1
    /* 4AACC 8005A2CC 21105000 */  addu       $v0, $v0, $s0
    /* 4AAD0 8005A2D0 80100200 */  sll        $v0, $v0, 2
    /* 4AAD4 8005A2D4 21105000 */  addu       $v0, $v0, $s0
    /* 4AAD8 8005A2D8 40200200 */  sll        $a0, $v0, 1
    /* 4AADC 8005A2DC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4AAE0 8005A2E0 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 4AAE4 8005A2E4 21082400 */  addu       $at, $at, $a0
    /* 4AAE8 8005A2E8 C3D622A0 */  sb         $v0, %lo(D_8010D6C3)($at)
  .L8005A2EC:
    /* 4AAEC 8005A2EC 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4AAF0 8005A2F0 21082400 */  addu       $at, $at, $a0
    /* 4AAF4 8005A2F4 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4AAF8 8005A2F8 00000000 */  nop
    /* 4AAFC 8005A2FC 80100300 */  sll        $v0, $v1, 2
    /* 4AB00 8005A300 21104300 */  addu       $v0, $v0, $v1
    /* 4AB04 8005A304 80100200 */  sll        $v0, $v0, 2
    /* 4AB08 8005A308 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 4AB0C 8005A30C 21082200 */  addu       $at, $at, $v0
    /* 4AB10 8005A310 8ED22380 */  lb         $v1, %lo(D_8010D28E)($at)
    /* 4AB14 8005A314 04000224 */  addiu      $v0, $zero, 0x4
    /* 4AB18 8005A318 09006214 */  bne        $v1, $v0, .L8005A340
    /* 4AB1C 8005A31C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 4AB20 8005A320 1280023C */  lui        $v0, %hi(D_8011A262)
    /* 4AB24 8005A324 62A24290 */  lbu        $v0, %lo(D_8011A262)($v0)
    /* 4AB28 8005A328 00000000 */  nop
    /* 4AB2C 8005A32C 07004230 */  andi       $v0, $v0, 0x7
    /* 4AB30 8005A330 1180013C */  lui        $at, %hi(D_8010D6C1)
    /* 4AB34 8005A334 21082400 */  addu       $at, $at, $a0
    /* 4AB38 8005A338 C1D622A0 */  sb         $v0, %lo(D_8010D6C1)($at)
  .L8005A33C:
    /* 4AB3C 8005A33C FFFF0224 */  addiu      $v0, $zero, -0x1
  .L8005A340:
    /* 4AB40 8005A340 1680013C */  lui        $at, %hi(D_80158AC4)
    /* 4AB44 8005A344 C48A22AC */  sw         $v0, %lo(D_80158AC4)($at)
  .L8005A348:
    /* 4AB48 8005A348 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4AB4C 8005A34C 1800B28F */  lw         $s2, 0x18($sp)
    /* 4AB50 8005A350 1400B18F */  lw         $s1, 0x14($sp)
    /* 4AB54 8005A354 1000B08F */  lw         $s0, 0x10($sp)
    /* 4AB58 8005A358 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4AB5C 8005A35C 0800E003 */  jr         $ra
    /* 4AB60 8005A360 00000000 */   nop
endlabel func_8005A0BC
