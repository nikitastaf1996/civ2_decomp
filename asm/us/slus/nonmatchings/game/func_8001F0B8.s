.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001F0B8, 0x7C0

glabel func_8001F0B8
    /* F8B8 8001F0B8 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* F8BC 8001F0BC 5400BFAF */  sw         $ra, 0x54($sp)
    /* F8C0 8001F0C0 5000BEAF */  sw         $fp, 0x50($sp)
    /* F8C4 8001F0C4 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* F8C8 8001F0C8 4800B6AF */  sw         $s6, 0x48($sp)
    /* F8CC 8001F0CC 4400B5AF */  sw         $s5, 0x44($sp)
    /* F8D0 8001F0D0 4000B4AF */  sw         $s4, 0x40($sp)
    /* F8D4 8001F0D4 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* F8D8 8001F0D8 3800B2AF */  sw         $s2, 0x38($sp)
    /* F8DC 8001F0DC 3400B1AF */  sw         $s1, 0x34($sp)
    /* F8E0 8001F0E0 3000B0AF */  sw         $s0, 0x30($sp)
    /* F8E4 8001F0E4 BB0B8393 */  lbu        $v1, %gp_rel(D_800552CB)($gp)
    /* F8E8 8001F0E8 01000224 */  addiu      $v0, $zero, 0x1
    /* F8EC 8001F0EC D5016210 */  beq        $v1, $v0, .L8001F844
    /* F8F0 8001F0F0 21908000 */   addu      $s2, $a0, $zero
    /* F8F4 8001F0F4 21880000 */  addu       $s1, $zero, $zero
    /* F8F8 8001F0F8 00141100 */  sll        $v0, $s1, 16
  .L8001F0FC:
    /* F8FC 8001F0FC 03140200 */  sra        $v0, $v0, 16
    /* F900 8001F100 8A005024 */  addiu      $s0, $v0, 0x8A
    /* F904 8001F104 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* F908 8001F108 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* F90C 8001F10C 1580053C */  lui        $a1, %hi(D_8014C118)
    /* F910 8001F110 18C1A524 */  addiu      $a1, $a1, %lo(D_8014C118)
    /* F914 8001F114 1D6C000C */  jal        func_8001B074
    /* F918 8001F118 21300002 */   addu      $a2, $s0, $zero
    /* F91C 8001F11C 01002232 */  andi       $v0, $s1, 0x1
    /* F920 8001F120 08004014 */  bnez       $v0, .L8001F144
    /* F924 8001F124 C0101000 */   sll       $v0, $s0, 3
    /* F928 8001F128 21105000 */  addu       $v0, $v0, $s0
    /* F92C 8001F12C 03004012 */  beqz       $s2, .L8001F13C
    /* F930 8001F130 80180200 */   sll       $v1, $v0, 2
    /* F934 8001F134 577C0008 */  j          .L8001F15C
    /* F938 8001F138 D0010224 */   addiu     $v0, $zero, 0x1D0
  .L8001F13C:
    /* F93C 8001F13C 577C0008 */  j          .L8001F15C
    /* F940 8001F140 88010224 */   addiu     $v0, $zero, 0x188
  .L8001F144:
    /* F944 8001F144 21105000 */  addu       $v0, $v0, $s0
    /* F948 8001F148 03004012 */  beqz       $s2, .L8001F158
    /* F94C 8001F14C 80180200 */   sll       $v1, $v0, 2
    /* F950 8001F150 577C0008 */  j          .L8001F15C
    /* F954 8001F154 F0010224 */   addiu     $v0, $zero, 0x1F0
  .L8001F158:
    /* F958 8001F158 A8010224 */  addiu      $v0, $zero, 0x1A8
  .L8001F15C:
    /* F95C 8001F15C 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* F960 8001F160 21082300 */  addu       $at, $at, $v1
    /* F964 8001F164 E4A022A4 */  sh         $v0, %lo(D_8012A0E4)($at)
    /* F968 8001F168 C0181000 */  sll        $v1, $s0, 3
    /* F96C 8001F16C 21187000 */  addu       $v1, $v1, $s0
    /* F970 8001F170 80180300 */  sll        $v1, $v1, 2
    /* F974 8001F174 00241100 */  sll        $a0, $s1, 16
    /* F978 8001F178 C3230400 */  sra        $a0, $a0, 15
    /* F97C 8001F17C D0000224 */  addiu      $v0, $zero, 0xD0
    /* F980 8001F180 23104400 */  subu       $v0, $v0, $a0
    /* F984 8001F184 1380013C */  lui        $at, %hi(D_8012A0E6)
    /* F988 8001F188 21082300 */  addu       $at, $at, $v1
    /* F98C 8001F18C E6A022A4 */  sh         $v0, %lo(D_8012A0E6)($at)
    /* F990 8001F190 90000224 */  addiu      $v0, $zero, 0x90
    /* F994 8001F194 1380013C */  lui        $at, %hi(D_8012A0E8)
    /* F998 8001F198 21082300 */  addu       $at, $at, $v1
    /* F99C 8001F19C E8A022A4 */  sh         $v0, %lo(D_8012A0E8)($at)
    /* F9A0 8001F1A0 02000224 */  addiu      $v0, $zero, 0x2
    /* F9A4 8001F1A4 1380013C */  lui        $at, %hi(D_8012A0EA)
    /* F9A8 8001F1A8 21082300 */  addu       $at, $at, $v1
    /* F9AC 8001F1AC EAA022A4 */  sh         $v0, %lo(D_8012A0EA)($at)
    /* F9B0 8001F1B0 1380013C */  lui        $at, %hi(D_8012A0EE)
    /* F9B4 8001F1B4 21082300 */  addu       $at, $at, $v1
    /* F9B8 8001F1B8 EEA020A0 */  sb         $zero, %lo(D_8012A0EE)($at)
    /* F9BC 8001F1BC 02004016 */  bnez       $s2, .L8001F1C8
    /* F9C0 8001F1C0 80000224 */   addiu     $v0, $zero, 0x80
    /* F9C4 8001F1C4 00010224 */  addiu      $v0, $zero, 0x100
  .L8001F1C8:
    /* F9C8 8001F1C8 23104400 */  subu       $v0, $v0, $a0
    /* F9CC 8001F1CC 1380013C */  lui        $at, %hi(D_8012A0EF)
    /* F9D0 8001F1D0 21082300 */  addu       $at, $at, $v1
    /* F9D4 8001F1D4 EFA022A0 */  sb         $v0, %lo(D_8012A0EF)($at)
    /* F9D8 8001F1D8 C0181000 */  sll        $v1, $s0, 3
    /* F9DC 8001F1DC 21187000 */  addu       $v1, $v1, $s0
    /* F9E0 8001F1E0 80180300 */  sll        $v1, $v1, 2
    /* F9E4 8001F1E4 1380023C */  lui        $v0, %hi(D_8012A0E0)
    /* F9E8 8001F1E8 E0A04224 */  addiu      $v0, $v0, %lo(D_8012A0E0)
    /* F9EC 8001F1EC 21106200 */  addu       $v0, $v1, $v0
    /* F9F0 8001F1F0 160040A0 */  sb         $zero, 0x16($v0)
    /* F9F4 8001F1F4 150040A0 */  sb         $zero, 0x15($v0)
    /* F9F8 8001F1F8 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* F9FC 8001F1FC 21082300 */  addu       $at, $at, $v1
    /* FA00 8001F200 F4A020A0 */  sb         $zero, %lo(D_8012A0F4)($at)
    /* FA04 8001F204 01002226 */  addiu      $v0, $s1, 0x1
    /* FA08 8001F208 21884000 */  addu       $s1, $v0, $zero
    /* FA0C 8001F20C 00140200 */  sll        $v0, $v0, 16
    /* FA10 8001F210 03140200 */  sra        $v0, $v0, 16
    /* FA14 8001F214 40004228 */  slti       $v0, $v0, 0x40
    /* FA18 8001F218 B8FF4014 */  bnez       $v0, .L8001F0FC
    /* FA1C 8001F21C 00141100 */   sll       $v0, $s1, 16
    /* FA20 8001F220 21880000 */  addu       $s1, $zero, $zero
    /* FA24 8001F224 21B00000 */  addu       $s6, $zero, $zero
    /* FA28 8001F228 01001524 */  addiu      $s5, $zero, 0x1
    /* FA2C 8001F22C 02001424 */  addiu      $s4, $zero, 0x2
    /* FA30 8001F230 03001324 */  addiu      $s3, $zero, 0x3
    /* FA34 8001F234 A0001E24 */  addiu      $fp, $zero, 0xA0
    /* FA38 8001F238 58001724 */  addiu      $s7, $zero, 0x58
    /* FA3C 8001F23C 00141600 */  sll        $v0, $s6, 16
  .L8001F240:
    /* FA40 8001F240 031C0200 */  sra        $v1, $v0, 16
    /* FA44 8001F244 40006228 */  slti       $v0, $v1, 0x40
    /* FA48 8001F248 46004010 */  beqz       $v0, .L8001F364
    /* FA4C 8001F24C 8A007024 */   addiu     $s0, $v1, 0x8A
    /* FA50 8001F250 C0101000 */  sll        $v0, $s0, 3
    /* FA54 8001F254 21105000 */  addu       $v0, $v0, $s0
    /* FA58 8001F258 80200200 */  sll        $a0, $v0, 2
    /* FA5C 8001F25C 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FA60 8001F260 21082400 */  addu       $at, $at, $a0
    /* FA64 8001F264 E4A02284 */  lh         $v0, %lo(D_8012A0E4)($at)
    /* FA68 8001F268 00000000 */  nop
    /* FA6C 8001F26C 21184000 */  addu       $v1, $v0, $zero
    /* FA70 8001F270 41014228 */  slti       $v0, $v0, 0x141
    /* FA74 8001F274 04004014 */  bnez       $v0, .L8001F288
    /* FA78 8001F278 C0FE6224 */   addiu     $v0, $v1, -0x140
    /* FA7C 8001F27C 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FA80 8001F280 21082400 */  addu       $at, $at, $a0
    /* FA84 8001F284 E4A022A4 */  sh         $v0, %lo(D_8012A0E4)($at)
  .L8001F288:
    /* FA88 8001F288 C0181000 */  sll        $v1, $s0, 3
    /* FA8C 8001F28C 21187000 */  addu       $v1, $v1, $s0
    /* FA90 8001F290 80180300 */  sll        $v1, $v1, 2
    /* FA94 8001F294 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FA98 8001F298 21082300 */  addu       $at, $at, $v1
    /* FA9C 8001F29C E4A02294 */  lhu        $v0, %lo(D_8012A0E4)($at)
    /* FAA0 8001F2A0 00000000 */  nop
    /* FAA4 8001F2A4 04004224 */  addiu      $v0, $v0, 0x4
    /* FAA8 8001F2A8 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FAAC 8001F2AC 21082300 */  addu       $at, $at, $v1
    /* FAB0 8001F2B0 E4A022A4 */  sh         $v0, %lo(D_8012A0E4)($at)
    /* FAB4 8001F2B4 1380013C */  lui        $at, %hi(D_8012A0E6)
    /* FAB8 8001F2B8 21082300 */  addu       $at, $at, $v1
    /* FABC 8001F2BC E6A02294 */  lhu        $v0, %lo(D_8012A0E6)($at)
    /* FAC0 8001F2C0 00000000 */  nop
    /* FAC4 8001F2C4 08004224 */  addiu      $v0, $v0, 0x8
    /* FAC8 8001F2C8 1380013C */  lui        $at, %hi(D_8012A0E6)
    /* FACC 8001F2CC 21082300 */  addu       $at, $at, $v1
    /* FAD0 8001F2D0 E6A022A4 */  sh         $v0, %lo(D_8012A0E6)($at)
    /* FAD4 8001F2D4 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* FAD8 8001F2D8 21082300 */  addu       $at, $at, $v1
    /* FADC 8001F2DC F4A02290 */  lbu        $v0, %lo(D_8012A0F4)($at)
    /* FAE0 8001F2E0 00000000 */  nop
    /* FAE4 8001F2E4 20004224 */  addiu      $v0, $v0, 0x20
    /* FAE8 8001F2E8 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* FAEC 8001F2EC 21082300 */  addu       $at, $at, $v1
    /* FAF0 8001F2F0 F4A022A0 */  sb         $v0, %lo(D_8012A0F4)($at)
    /* FAF4 8001F2F4 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* FAF8 8001F2F8 21082300 */  addu       $at, $at, $v1
    /* FAFC 8001F2FC F5A02290 */  lbu        $v0, %lo(D_8012A0F5)($at)
    /* FB00 8001F300 00000000 */  nop
    /* FB04 8001F304 20004224 */  addiu      $v0, $v0, 0x20
    /* FB08 8001F308 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* FB0C 8001F30C 21082300 */  addu       $at, $at, $v1
    /* FB10 8001F310 F5A022A0 */  sb         $v0, %lo(D_8012A0F5)($at)
    /* FB14 8001F314 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* FB18 8001F318 21082300 */  addu       $at, $at, $v1
    /* FB1C 8001F31C F6A02290 */  lbu        $v0, %lo(D_8012A0F6)($at)
    /* FB20 8001F320 00000000 */  nop
    /* FB24 8001F324 20004224 */  addiu      $v0, $v0, 0x20
    /* FB28 8001F328 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* FB2C 8001F32C 21082300 */  addu       $at, $at, $v1
    /* FB30 8001F330 F6A022A0 */  sb         $v0, %lo(D_8012A0F6)($at)
    /* FB34 8001F334 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FB38 8001F338 21082300 */  addu       $at, $at, $v1
    /* FB3C 8001F33C E4A02284 */  lh         $v0, %lo(D_8012A0E4)($at)
    /* FB40 8001F340 05004012 */  beqz       $s2, .L8001F358
    /* FB44 8001F344 00000000 */   nop
    /* FB48 8001F348 05005E10 */  beq        $v0, $fp, .L8001F360
    /* FB4C 8001F34C 00141500 */   sll       $v0, $s5, 16
    /* FB50 8001F350 DA7C0008 */  j          .L8001F368
    /* FB54 8001F354 00000000 */   nop
  .L8001F358:
    /* FB58 8001F358 03005714 */  bne        $v0, $s7, .L8001F368
    /* FB5C 8001F35C 00141500 */   sll       $v0, $s5, 16
  .L8001F360:
    /* FB60 8001F360 0400D626 */  addiu      $s6, $s6, 0x4
  .L8001F364:
    /* FB64 8001F364 00141500 */  sll        $v0, $s5, 16
  .L8001F368:
    /* FB68 8001F368 031C0200 */  sra        $v1, $v0, 16
    /* FB6C 8001F36C 40006228 */  slti       $v0, $v1, 0x40
    /* FB70 8001F370 4B004010 */  beqz       $v0, .L8001F4A0
    /* FB74 8001F374 00141100 */   sll       $v0, $s1, 16
    /* FB78 8001F378 03140200 */  sra        $v0, $v0, 16
    /* FB7C 8001F37C 02004228 */  slti       $v0, $v0, 0x2
    /* FB80 8001F380 48004014 */  bnez       $v0, .L8001F4A4
    /* FB84 8001F384 00141400 */   sll       $v0, $s4, 16
    /* FB88 8001F388 8A007024 */  addiu      $s0, $v1, 0x8A
    /* FB8C 8001F38C C0101000 */  sll        $v0, $s0, 3
    /* FB90 8001F390 21105000 */  addu       $v0, $v0, $s0
    /* FB94 8001F394 80200200 */  sll        $a0, $v0, 2
    /* FB98 8001F398 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FB9C 8001F39C 21082400 */  addu       $at, $at, $a0
    /* FBA0 8001F3A0 E4A02284 */  lh         $v0, %lo(D_8012A0E4)($at)
    /* FBA4 8001F3A4 00000000 */  nop
    /* FBA8 8001F3A8 21184000 */  addu       $v1, $v0, $zero
    /* FBAC 8001F3AC 41014228 */  slti       $v0, $v0, 0x141
    /* FBB0 8001F3B0 04004014 */  bnez       $v0, .L8001F3C4
    /* FBB4 8001F3B4 C0FE6224 */   addiu     $v0, $v1, -0x140
    /* FBB8 8001F3B8 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FBBC 8001F3BC 21082400 */  addu       $at, $at, $a0
    /* FBC0 8001F3C0 E4A022A4 */  sh         $v0, %lo(D_8012A0E4)($at)
  .L8001F3C4:
    /* FBC4 8001F3C4 C0181000 */  sll        $v1, $s0, 3
    /* FBC8 8001F3C8 21187000 */  addu       $v1, $v1, $s0
    /* FBCC 8001F3CC 80180300 */  sll        $v1, $v1, 2
    /* FBD0 8001F3D0 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FBD4 8001F3D4 21082300 */  addu       $at, $at, $v1
    /* FBD8 8001F3D8 E4A02294 */  lhu        $v0, %lo(D_8012A0E4)($at)
    /* FBDC 8001F3DC 00000000 */  nop
    /* FBE0 8001F3E0 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* FBE4 8001F3E4 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FBE8 8001F3E8 21082300 */  addu       $at, $at, $v1
    /* FBEC 8001F3EC E4A022A4 */  sh         $v0, %lo(D_8012A0E4)($at)
    /* FBF0 8001F3F0 1380013C */  lui        $at, %hi(D_8012A0E6)
    /* FBF4 8001F3F4 21082300 */  addu       $at, $at, $v1
    /* FBF8 8001F3F8 E6A02294 */  lhu        $v0, %lo(D_8012A0E6)($at)
    /* FBFC 8001F3FC 00000000 */  nop
    /* FC00 8001F400 08004224 */  addiu      $v0, $v0, 0x8
    /* FC04 8001F404 1380013C */  lui        $at, %hi(D_8012A0E6)
    /* FC08 8001F408 21082300 */  addu       $at, $at, $v1
    /* FC0C 8001F40C E6A022A4 */  sh         $v0, %lo(D_8012A0E6)($at)
    /* FC10 8001F410 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* FC14 8001F414 21082300 */  addu       $at, $at, $v1
    /* FC18 8001F418 F4A02290 */  lbu        $v0, %lo(D_8012A0F4)($at)
    /* FC1C 8001F41C 00000000 */  nop
    /* FC20 8001F420 20004224 */  addiu      $v0, $v0, 0x20
    /* FC24 8001F424 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* FC28 8001F428 21082300 */  addu       $at, $at, $v1
    /* FC2C 8001F42C F4A022A0 */  sb         $v0, %lo(D_8012A0F4)($at)
    /* FC30 8001F430 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* FC34 8001F434 21082300 */  addu       $at, $at, $v1
    /* FC38 8001F438 F5A02290 */  lbu        $v0, %lo(D_8012A0F5)($at)
    /* FC3C 8001F43C 00000000 */  nop
    /* FC40 8001F440 20004224 */  addiu      $v0, $v0, 0x20
    /* FC44 8001F444 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* FC48 8001F448 21082300 */  addu       $at, $at, $v1
    /* FC4C 8001F44C F5A022A0 */  sb         $v0, %lo(D_8012A0F5)($at)
    /* FC50 8001F450 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* FC54 8001F454 21082300 */  addu       $at, $at, $v1
    /* FC58 8001F458 F6A02290 */  lbu        $v0, %lo(D_8012A0F6)($at)
    /* FC5C 8001F45C 00000000 */  nop
    /* FC60 8001F460 20004224 */  addiu      $v0, $v0, 0x20
    /* FC64 8001F464 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* FC68 8001F468 21082300 */  addu       $at, $at, $v1
    /* FC6C 8001F46C F6A022A0 */  sb         $v0, %lo(D_8012A0F6)($at)
    /* FC70 8001F470 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FC74 8001F474 21082300 */  addu       $at, $at, $v1
    /* FC78 8001F478 E4A02284 */  lh         $v0, %lo(D_8012A0E4)($at)
    /* FC7C 8001F47C 05004012 */  beqz       $s2, .L8001F494
    /* FC80 8001F480 00000000 */   nop
    /* FC84 8001F484 05005E10 */  beq        $v0, $fp, .L8001F49C
    /* FC88 8001F488 00141400 */   sll       $v0, $s4, 16
    /* FC8C 8001F48C 297D0008 */  j          .L8001F4A4
    /* FC90 8001F490 00000000 */   nop
  .L8001F494:
    /* FC94 8001F494 03005714 */  bne        $v0, $s7, .L8001F4A4
    /* FC98 8001F498 00141400 */   sll       $v0, $s4, 16
  .L8001F49C:
    /* FC9C 8001F49C 0400B526 */  addiu      $s5, $s5, 0x4
  .L8001F4A0:
    /* FCA0 8001F4A0 00141400 */  sll        $v0, $s4, 16
  .L8001F4A4:
    /* FCA4 8001F4A4 031C0200 */  sra        $v1, $v0, 16
    /* FCA8 8001F4A8 40006228 */  slti       $v0, $v1, 0x40
    /* FCAC 8001F4AC 4B004010 */  beqz       $v0, .L8001F5DC
    /* FCB0 8001F4B0 00141100 */   sll       $v0, $s1, 16
    /* FCB4 8001F4B4 03140200 */  sra        $v0, $v0, 16
    /* FCB8 8001F4B8 03004228 */  slti       $v0, $v0, 0x3
    /* FCBC 8001F4BC 48004014 */  bnez       $v0, .L8001F5E0
    /* FCC0 8001F4C0 00141300 */   sll       $v0, $s3, 16
    /* FCC4 8001F4C4 8A007024 */  addiu      $s0, $v1, 0x8A
    /* FCC8 8001F4C8 C0101000 */  sll        $v0, $s0, 3
    /* FCCC 8001F4CC 21105000 */  addu       $v0, $v0, $s0
    /* FCD0 8001F4D0 80200200 */  sll        $a0, $v0, 2
    /* FCD4 8001F4D4 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FCD8 8001F4D8 21082400 */  addu       $at, $at, $a0
    /* FCDC 8001F4DC E4A02284 */  lh         $v0, %lo(D_8012A0E4)($at)
    /* FCE0 8001F4E0 00000000 */  nop
    /* FCE4 8001F4E4 21184000 */  addu       $v1, $v0, $zero
    /* FCE8 8001F4E8 41014228 */  slti       $v0, $v0, 0x141
    /* FCEC 8001F4EC 04004014 */  bnez       $v0, .L8001F500
    /* FCF0 8001F4F0 C0FE6224 */   addiu     $v0, $v1, -0x140
    /* FCF4 8001F4F4 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FCF8 8001F4F8 21082400 */  addu       $at, $at, $a0
    /* FCFC 8001F4FC E4A022A4 */  sh         $v0, %lo(D_8012A0E4)($at)
  .L8001F500:
    /* FD00 8001F500 C0181000 */  sll        $v1, $s0, 3
    /* FD04 8001F504 21187000 */  addu       $v1, $v1, $s0
    /* FD08 8001F508 80180300 */  sll        $v1, $v1, 2
    /* FD0C 8001F50C 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FD10 8001F510 21082300 */  addu       $at, $at, $v1
    /* FD14 8001F514 E4A02294 */  lhu        $v0, %lo(D_8012A0E4)($at)
    /* FD18 8001F518 00000000 */  nop
    /* FD1C 8001F51C 04004224 */  addiu      $v0, $v0, 0x4
    /* FD20 8001F520 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FD24 8001F524 21082300 */  addu       $at, $at, $v1
    /* FD28 8001F528 E4A022A4 */  sh         $v0, %lo(D_8012A0E4)($at)
    /* FD2C 8001F52C 1380013C */  lui        $at, %hi(D_8012A0E6)
    /* FD30 8001F530 21082300 */  addu       $at, $at, $v1
    /* FD34 8001F534 E6A02294 */  lhu        $v0, %lo(D_8012A0E6)($at)
    /* FD38 8001F538 00000000 */  nop
    /* FD3C 8001F53C 08004224 */  addiu      $v0, $v0, 0x8
    /* FD40 8001F540 1380013C */  lui        $at, %hi(D_8012A0E6)
    /* FD44 8001F544 21082300 */  addu       $at, $at, $v1
    /* FD48 8001F548 E6A022A4 */  sh         $v0, %lo(D_8012A0E6)($at)
    /* FD4C 8001F54C 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* FD50 8001F550 21082300 */  addu       $at, $at, $v1
    /* FD54 8001F554 F4A02290 */  lbu        $v0, %lo(D_8012A0F4)($at)
    /* FD58 8001F558 00000000 */  nop
    /* FD5C 8001F55C 20004224 */  addiu      $v0, $v0, 0x20
    /* FD60 8001F560 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* FD64 8001F564 21082300 */  addu       $at, $at, $v1
    /* FD68 8001F568 F4A022A0 */  sb         $v0, %lo(D_8012A0F4)($at)
    /* FD6C 8001F56C 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* FD70 8001F570 21082300 */  addu       $at, $at, $v1
    /* FD74 8001F574 F5A02290 */  lbu        $v0, %lo(D_8012A0F5)($at)
    /* FD78 8001F578 00000000 */  nop
    /* FD7C 8001F57C 20004224 */  addiu      $v0, $v0, 0x20
    /* FD80 8001F580 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* FD84 8001F584 21082300 */  addu       $at, $at, $v1
    /* FD88 8001F588 F5A022A0 */  sb         $v0, %lo(D_8012A0F5)($at)
    /* FD8C 8001F58C 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* FD90 8001F590 21082300 */  addu       $at, $at, $v1
    /* FD94 8001F594 F6A02290 */  lbu        $v0, %lo(D_8012A0F6)($at)
    /* FD98 8001F598 00000000 */  nop
    /* FD9C 8001F59C 20004224 */  addiu      $v0, $v0, 0x20
    /* FDA0 8001F5A0 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* FDA4 8001F5A4 21082300 */  addu       $at, $at, $v1
    /* FDA8 8001F5A8 F6A022A0 */  sb         $v0, %lo(D_8012A0F6)($at)
    /* FDAC 8001F5AC 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FDB0 8001F5B0 21082300 */  addu       $at, $at, $v1
    /* FDB4 8001F5B4 E4A02284 */  lh         $v0, %lo(D_8012A0E4)($at)
    /* FDB8 8001F5B8 05004012 */  beqz       $s2, .L8001F5D0
    /* FDBC 8001F5BC 00000000 */   nop
    /* FDC0 8001F5C0 05005E10 */  beq        $v0, $fp, .L8001F5D8
    /* FDC4 8001F5C4 00141300 */   sll       $v0, $s3, 16
    /* FDC8 8001F5C8 787D0008 */  j          .L8001F5E0
    /* FDCC 8001F5CC 00000000 */   nop
  .L8001F5D0:
    /* FDD0 8001F5D0 03005714 */  bne        $v0, $s7, .L8001F5E0
    /* FDD4 8001F5D4 00141300 */   sll       $v0, $s3, 16
  .L8001F5D8:
    /* FDD8 8001F5D8 04009426 */  addiu      $s4, $s4, 0x4
  .L8001F5DC:
    /* FDDC 8001F5DC 00141300 */  sll        $v0, $s3, 16
  .L8001F5E0:
    /* FDE0 8001F5E0 031C0200 */  sra        $v1, $v0, 16
    /* FDE4 8001F5E4 40006228 */  slti       $v0, $v1, 0x40
    /* FDE8 8001F5E8 54004010 */  beqz       $v0, .L8001F73C
    /* FDEC 8001F5EC 00141100 */   sll       $v0, $s1, 16
    /* FDF0 8001F5F0 03140200 */  sra        $v0, $v0, 16
    /* FDF4 8001F5F4 04004228 */  slti       $v0, $v0, 0x4
    /* FDF8 8001F5F8 48004014 */  bnez       $v0, .L8001F71C
    /* FDFC 8001F5FC 00141300 */   sll       $v0, $s3, 16
    /* FE00 8001F600 8A007024 */  addiu      $s0, $v1, 0x8A
    /* FE04 8001F604 C0101000 */  sll        $v0, $s0, 3
    /* FE08 8001F608 21105000 */  addu       $v0, $v0, $s0
    /* FE0C 8001F60C 80200200 */  sll        $a0, $v0, 2
    /* FE10 8001F610 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FE14 8001F614 21082400 */  addu       $at, $at, $a0
    /* FE18 8001F618 E4A02284 */  lh         $v0, %lo(D_8012A0E4)($at)
    /* FE1C 8001F61C 00000000 */  nop
    /* FE20 8001F620 21184000 */  addu       $v1, $v0, $zero
    /* FE24 8001F624 41014228 */  slti       $v0, $v0, 0x141
    /* FE28 8001F628 04004014 */  bnez       $v0, .L8001F63C
    /* FE2C 8001F62C C0FE6224 */   addiu     $v0, $v1, -0x140
    /* FE30 8001F630 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FE34 8001F634 21082400 */  addu       $at, $at, $a0
    /* FE38 8001F638 E4A022A4 */  sh         $v0, %lo(D_8012A0E4)($at)
  .L8001F63C:
    /* FE3C 8001F63C C0181000 */  sll        $v1, $s0, 3
    /* FE40 8001F640 21187000 */  addu       $v1, $v1, $s0
    /* FE44 8001F644 80180300 */  sll        $v1, $v1, 2
    /* FE48 8001F648 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FE4C 8001F64C 21082300 */  addu       $at, $at, $v1
    /* FE50 8001F650 E4A02294 */  lhu        $v0, %lo(D_8012A0E4)($at)
    /* FE54 8001F654 00000000 */  nop
    /* FE58 8001F658 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* FE5C 8001F65C 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FE60 8001F660 21082300 */  addu       $at, $at, $v1
    /* FE64 8001F664 E4A022A4 */  sh         $v0, %lo(D_8012A0E4)($at)
    /* FE68 8001F668 1380013C */  lui        $at, %hi(D_8012A0E6)
    /* FE6C 8001F66C 21082300 */  addu       $at, $at, $v1
    /* FE70 8001F670 E6A02294 */  lhu        $v0, %lo(D_8012A0E6)($at)
    /* FE74 8001F674 00000000 */  nop
    /* FE78 8001F678 08004224 */  addiu      $v0, $v0, 0x8
    /* FE7C 8001F67C 1380013C */  lui        $at, %hi(D_8012A0E6)
    /* FE80 8001F680 21082300 */  addu       $at, $at, $v1
    /* FE84 8001F684 E6A022A4 */  sh         $v0, %lo(D_8012A0E6)($at)
    /* FE88 8001F688 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* FE8C 8001F68C 21082300 */  addu       $at, $at, $v1
    /* FE90 8001F690 F4A02290 */  lbu        $v0, %lo(D_8012A0F4)($at)
    /* FE94 8001F694 00000000 */  nop
    /* FE98 8001F698 20004224 */  addiu      $v0, $v0, 0x20
    /* FE9C 8001F69C 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* FEA0 8001F6A0 21082300 */  addu       $at, $at, $v1
    /* FEA4 8001F6A4 F4A022A0 */  sb         $v0, %lo(D_8012A0F4)($at)
    /* FEA8 8001F6A8 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* FEAC 8001F6AC 21082300 */  addu       $at, $at, $v1
    /* FEB0 8001F6B0 F5A02290 */  lbu        $v0, %lo(D_8012A0F5)($at)
    /* FEB4 8001F6B4 00000000 */  nop
    /* FEB8 8001F6B8 20004224 */  addiu      $v0, $v0, 0x20
    /* FEBC 8001F6BC 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* FEC0 8001F6C0 21082300 */  addu       $at, $at, $v1
    /* FEC4 8001F6C4 F5A022A0 */  sb         $v0, %lo(D_8012A0F5)($at)
    /* FEC8 8001F6C8 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* FECC 8001F6CC 21082300 */  addu       $at, $at, $v1
    /* FED0 8001F6D0 F6A02290 */  lbu        $v0, %lo(D_8012A0F6)($at)
    /* FED4 8001F6D4 00000000 */  nop
    /* FED8 8001F6D8 20004224 */  addiu      $v0, $v0, 0x20
    /* FEDC 8001F6DC 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* FEE0 8001F6E0 21082300 */  addu       $at, $at, $v1
    /* FEE4 8001F6E4 F6A022A0 */  sb         $v0, %lo(D_8012A0F6)($at)
    /* FEE8 8001F6E8 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* FEEC 8001F6EC 21082300 */  addu       $at, $at, $v1
    /* FEF0 8001F6F0 E4A02284 */  lh         $v0, %lo(D_8012A0E4)($at)
    /* FEF4 8001F6F4 05004012 */  beqz       $s2, .L8001F70C
    /* FEF8 8001F6F8 00000000 */   nop
    /* FEFC 8001F6FC 05005E10 */  beq        $v0, $fp, .L8001F714
    /* FF00 8001F700 00141300 */   sll       $v0, $s3, 16
    /* FF04 8001F704 C77D0008 */  j          .L8001F71C
    /* FF08 8001F708 00000000 */   nop
  .L8001F70C:
    /* FF0C 8001F70C 03005714 */  bne        $v0, $s7, .L8001F71C
    /* FF10 8001F710 00141300 */   sll       $v0, $s3, 16
  .L8001F714:
    /* FF14 8001F714 04007326 */  addiu      $s3, $s3, 0x4
    /* FF18 8001F718 00141300 */  sll        $v0, $s3, 16
  .L8001F71C:
    /* FF1C 8001F71C 03140200 */  sra        $v0, $v0, 16
    /* FF20 8001F720 40004228 */  slti       $v0, $v0, 0x40
    /* FF24 8001F724 05004010 */  beqz       $v0, .L8001F73C
    /* FF28 8001F728 01003126 */   addiu     $s1, $s1, 0x1
    /* FF2C 8001F72C E976000C */  jal        func_8001DBA4
    /* FF30 8001F730 01000424 */   addiu     $a0, $zero, 0x1
    /* FF34 8001F734 907C0008 */  j          .L8001F240
    /* FF38 8001F738 00141600 */   sll       $v0, $s6, 16
  .L8001F73C:
    /* FF3C 8001F73C 89001024 */  addiu      $s0, $zero, 0x89
    /* FF40 8001F740 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* FF44 8001F744 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* FF48 8001F748 1580053C */  lui        $a1, %hi(D_8014C118)
    /* FF4C 8001F74C 18C1A524 */  addiu      $a1, $a1, %lo(D_8014C118)
    /* FF50 8001F750 1D6C000C */  jal        func_8001B074
    /* FF54 8001F754 89000624 */   addiu     $a2, $zero, 0x89
    /* FF58 8001F758 02004016 */  bnez       $s2, .L8001F764
    /* FF5C 8001F75C A0000224 */   addiu     $v0, $zero, 0xA0
    /* FF60 8001F760 58000224 */  addiu      $v0, $zero, 0x58
  .L8001F764:
    /* FF64 8001F764 1380013C */  lui        $at, %hi(D_8012B428)
    /* FF68 8001F768 28B422A4 */  sh         $v0, %lo(D_8012B428)($at)
    /* FF6C 8001F76C C0101000 */  sll        $v0, $s0, 3
    /* FF70 8001F770 21105000 */  addu       $v0, $v0, $s0
    /* FF74 8001F774 80100200 */  sll        $v0, $v0, 2
    /* FF78 8001F778 70000324 */  addiu      $v1, $zero, 0x70
    /* FF7C 8001F77C 1380013C */  lui        $at, %hi(D_8012A0E6)
    /* FF80 8001F780 21082200 */  addu       $at, $at, $v0
    /* FF84 8001F784 E6A023A4 */  sh         $v1, %lo(D_8012A0E6)($at)
    /* FF88 8001F788 90000324 */  addiu      $v1, $zero, 0x90
    /* FF8C 8001F78C 1380013C */  lui        $at, %hi(D_8012A0E8)
    /* FF90 8001F790 21082200 */  addu       $at, $at, $v0
    /* FF94 8001F794 E8A023A4 */  sh         $v1, %lo(D_8012A0E8)($at)
    /* FF98 8001F798 80000324 */  addiu      $v1, $zero, 0x80
    /* FF9C 8001F79C 1380013C */  lui        $at, %hi(D_8012A0EA)
    /* FFA0 8001F7A0 21082200 */  addu       $at, $at, $v0
    /* FFA4 8001F7A4 EAA023A4 */  sh         $v1, %lo(D_8012A0EA)($at)
    /* FFA8 8001F7A8 1380013C */  lui        $at, %hi(D_8012A0EE)
    /* FFAC 8001F7AC 21082200 */  addu       $at, $at, $v0
    /* FFB0 8001F7B0 EEA020A0 */  sb         $zero, %lo(D_8012A0EE)($at)
    /* FFB4 8001F7B4 07004016 */  bnez       $s2, .L8001F7D4
    /* FFB8 8001F7B8 21184000 */   addu      $v1, $v0, $zero
    /* FFBC 8001F7BC 80000224 */  addiu      $v0, $zero, 0x80
    /* FFC0 8001F7C0 1380013C */  lui        $at, %hi(D_8012A0EF)
    /* FFC4 8001F7C4 21082300 */  addu       $at, $at, $v1
    /* FFC8 8001F7C8 EFA022A0 */  sb         $v0, %lo(D_8012A0EF)($at)
    /* FFCC 8001F7CC F97D0008 */  j          .L8001F7E4
    /* FFD0 8001F7D0 21880000 */   addu      $s1, $zero, $zero
  .L8001F7D4:
    /* FFD4 8001F7D4 1380013C */  lui        $at, %hi(D_8012A0EF)
    /* FFD8 8001F7D8 21082300 */  addu       $at, $at, $v1
    /* FFDC 8001F7DC EFA020A0 */  sb         $zero, %lo(D_8012A0EF)($at)
    /* FFE0 8001F7E0 21880000 */  addu       $s1, $zero, $zero
  .L8001F7E4:
    /* FFE4 8001F7E4 0080043C */  lui        $a0, (0x80000000 >> 16)
    /* FFE8 8001F7E8 00141100 */  sll        $v0, $s1, 16
  .L8001F7EC:
    /* FFEC 8001F7EC 03140200 */  sra        $v0, $v0, 16
    /* FFF0 8001F7F0 8A005024 */  addiu      $s0, $v0, 0x8A
    /* FFF4 8001F7F4 C0181000 */  sll        $v1, $s0, 3
    /* FFF8 8001F7F8 21187000 */  addu       $v1, $v1, $s0
    /* FFFC 8001F7FC 80180300 */  sll        $v1, $v1, 2
    /* 10000 8001F800 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* 10004 8001F804 21082300 */  addu       $at, $at, $v1
    /* 10008 8001F808 E0A0228C */  lw         $v0, %lo(D_8012A0E0)($at)
    /* 1000C 8001F80C 00000000 */  nop
    /* 10010 8001F810 25104400 */  or         $v0, $v0, $a0
    /* 10014 8001F814 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* 10018 8001F818 21082300 */  addu       $at, $at, $v1
    /* 1001C 8001F81C E0A022AC */  sw         $v0, %lo(D_8012A0E0)($at)
    /* 10020 8001F820 01002226 */  addiu      $v0, $s1, 0x1
    /* 10024 8001F824 21884000 */  addu       $s1, $v0, $zero
    /* 10028 8001F828 00140200 */  sll        $v0, $v0, 16
    /* 1002C 8001F82C 03140200 */  sra        $v0, $v0, 16
    /* 10030 8001F830 40004228 */  slti       $v0, $v0, 0x40
    /* 10034 8001F834 EDFF4014 */  bnez       $v0, .L8001F7EC
    /* 10038 8001F838 00141100 */   sll       $v0, $s1, 16
    /* 1003C 8001F83C 01000224 */  addiu      $v0, $zero, 0x1
    /* 10040 8001F840 BB0B82A3 */  sb         $v0, %gp_rel(D_800552CB)($gp)
  .L8001F844:
    /* 10044 8001F844 5400BF8F */  lw         $ra, 0x54($sp)
    /* 10048 8001F848 5000BE8F */  lw         $fp, 0x50($sp)
    /* 1004C 8001F84C 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 10050 8001F850 4800B68F */  lw         $s6, 0x48($sp)
    /* 10054 8001F854 4400B58F */  lw         $s5, 0x44($sp)
    /* 10058 8001F858 4000B48F */  lw         $s4, 0x40($sp)
    /* 1005C 8001F85C 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 10060 8001F860 3800B28F */  lw         $s2, 0x38($sp)
    /* 10064 8001F864 3400B18F */  lw         $s1, 0x34($sp)
    /* 10068 8001F868 3000B08F */  lw         $s0, 0x30($sp)
    /* 1006C 8001F86C 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 10070 8001F870 0800E003 */  jr         $ra
    /* 10074 8001F874 00000000 */   nop
endlabel func_8001F0B8
