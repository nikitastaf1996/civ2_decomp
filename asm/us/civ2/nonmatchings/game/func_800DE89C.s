.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DE89C, 0x5A8

glabel func_800DE89C
    /* CF09C 800DE89C B8FCBD27 */  addiu      $sp, $sp, -0x348
    /* CF0A0 800DE8A0 4403BFAF */  sw         $ra, 0x344($sp)
    /* CF0A4 800DE8A4 4003B2AF */  sw         $s2, 0x340($sp)
    /* CF0A8 800DE8A8 3C03B1AF */  sw         $s1, 0x33C($sp)
    /* CF0AC 800DE8AC 3803B0AF */  sw         $s0, 0x338($sp)
    /* CF0B0 800DE8B0 21908000 */  addu       $s2, $a0, $zero
    /* CF0B4 800DE8B4 9AE0030C */  jal        func_800F8268
    /* CF0B8 800DE8B8 2000A427 */   addiu     $a0, $sp, 0x20
    /* CF0BC 800DE8BC EFE9030C */  jal        func_800FA7BC
    /* CF0C0 800DE8C0 4C00A427 */   addiu     $a0, $sp, 0x4C
    /* CF0C4 800DE8C4 5C00A0AF */  sw         $zero, 0x5C($sp)
    /* CF0C8 800DE8C8 6000A0AF */  sw         $zero, 0x60($sp)
    /* CF0CC 800DE8CC 6400A0AF */  sw         $zero, 0x64($sp)
    /* CF0D0 800DE8D0 6800A0AF */  sw         $zero, 0x68($sp)
    /* CF0D4 800DE8D4 6C00A0AF */  sw         $zero, 0x6C($sp)
    /* CF0D8 800DE8D8 7000A0AF */  sw         $zero, 0x70($sp)
    /* CF0DC 800DE8DC 7400A0AF */  sw         $zero, 0x74($sp)
    /* CF0E0 800DE8E0 7800A0AF */  sw         $zero, 0x78($sp)
    /* CF0E4 800DE8E4 7C00A0AF */  sw         $zero, 0x7C($sp)
    /* CF0E8 800DE8E8 8000A0AF */  sw         $zero, 0x80($sp)
    /* CF0EC 800DE8EC 8400A0AF */  sw         $zero, 0x84($sp)
    /* CF0F0 800DE8F0 8800A0AF */  sw         $zero, 0x88($sp)
    /* CF0F4 800DE8F4 8C00A0AF */  sw         $zero, 0x8C($sp)
    /* CF0F8 800DE8F8 9000A0AF */  sw         $zero, 0x90($sp)
    /* CF0FC 800DE8FC 9400A0AF */  sw         $zero, 0x94($sp)
    /* CF100 800DE900 9800A0AF */  sw         $zero, 0x98($sp)
    /* CF104 800DE904 9C00A0AF */  sw         $zero, 0x9C($sp)
    /* CF108 800DE908 A000A0AF */  sw         $zero, 0xA0($sp)
    /* CF10C 800DE90C A400A0AF */  sw         $zero, 0xA4($sp)
    /* CF110 800DE910 A800A0AF */  sw         $zero, 0xA8($sp)
    /* CF114 800DE914 AC00A0AF */  sw         $zero, 0xAC($sp)
    /* CF118 800DE918 B000A0AF */  sw         $zero, 0xB0($sp)
    /* CF11C 800DE91C B400A0AF */  sw         $zero, 0xB4($sp)
    /* CF120 800DE920 B800A0A7 */  sh         $zero, 0xB8($sp)
    /* CF124 800DE924 BA00A0A7 */  sh         $zero, 0xBA($sp)
    /* CF128 800DE928 00401124 */  addiu      $s1, $zero, 0x4000
    /* CF12C 800DE92C BC00B1A7 */  sh         $s1, 0xBC($sp)
    /* CF130 800DE930 BE00B1A7 */  sh         $s1, 0xBE($sp)
    /* CF134 800DE934 C600A0A7 */  sh         $zero, 0xC6($sp)
    /* CF138 800DE938 C800A0A7 */  sh         $zero, 0xC8($sp)
    /* CF13C 800DE93C C000A0A7 */  sh         $zero, 0xC0($sp)
    /* CF140 800DE940 01001024 */  addiu      $s0, $zero, 0x1
    /* CF144 800DE944 C200B0A7 */  sh         $s0, 0xC2($sp)
    /* CF148 800DE948 C400B0A7 */  sh         $s0, 0xC4($sp)
    /* CF14C 800DE94C D000A0AF */  sw         $zero, 0xD0($sp)
    /* CF150 800DE950 D400A0AF */  sw         $zero, 0xD4($sp)
    /* CF154 800DE954 D800A0AF */  sw         $zero, 0xD8($sp)
    /* CF158 800DE958 01000224 */  addiu      $v0, $zero, 0x1
    /* CF15C 800DE95C DC00A2A3 */  sb         $v0, 0xDC($sp)
    /* CF160 800DE960 0180023C */  lui        $v0, %hi(D_800138BC)
    /* CF164 800DE964 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* CF168 800DE968 4800A2AF */  sw         $v0, 0x48($sp)
    /* CF16C 800DE96C D000A0AF */  sw         $zero, 0xD0($sp)
    /* CF170 800DE970 E000A0AF */  sw         $zero, 0xE0($sp)
    /* CF174 800DE974 7001A0AF */  sw         $zero, 0x170($sp)
    /* CF178 800DE978 EFE9030C */  jal        func_800FA7BC
    /* CF17C 800DE97C 7801A427 */   addiu     $a0, $sp, 0x178
    /* CF180 800DE980 8801A0AF */  sw         $zero, 0x188($sp)
    /* CF184 800DE984 8C01A0AF */  sw         $zero, 0x18C($sp)
    /* CF188 800DE988 9001A0AF */  sw         $zero, 0x190($sp)
    /* CF18C 800DE98C 9401A0AF */  sw         $zero, 0x194($sp)
    /* CF190 800DE990 9801A0AF */  sw         $zero, 0x198($sp)
    /* CF194 800DE994 9C01A0AF */  sw         $zero, 0x19C($sp)
    /* CF198 800DE998 A001A0AF */  sw         $zero, 0x1A0($sp)
    /* CF19C 800DE99C A401A0AF */  sw         $zero, 0x1A4($sp)
    /* CF1A0 800DE9A0 A801A0AF */  sw         $zero, 0x1A8($sp)
    /* CF1A4 800DE9A4 AC01A0AF */  sw         $zero, 0x1AC($sp)
    /* CF1A8 800DE9A8 B001A0AF */  sw         $zero, 0x1B0($sp)
    /* CF1AC 800DE9AC B401A0AF */  sw         $zero, 0x1B4($sp)
    /* CF1B0 800DE9B0 B801A0AF */  sw         $zero, 0x1B8($sp)
    /* CF1B4 800DE9B4 BC01A0AF */  sw         $zero, 0x1BC($sp)
    /* CF1B8 800DE9B8 C001A0AF */  sw         $zero, 0x1C0($sp)
    /* CF1BC 800DE9BC C401A0AF */  sw         $zero, 0x1C4($sp)
    /* CF1C0 800DE9C0 C801A0AF */  sw         $zero, 0x1C8($sp)
    /* CF1C4 800DE9C4 CC01A0AF */  sw         $zero, 0x1CC($sp)
    /* CF1C8 800DE9C8 D001A0AF */  sw         $zero, 0x1D0($sp)
    /* CF1CC 800DE9CC D401A0AF */  sw         $zero, 0x1D4($sp)
    /* CF1D0 800DE9D0 D801A0AF */  sw         $zero, 0x1D8($sp)
    /* CF1D4 800DE9D4 DC01A0AF */  sw         $zero, 0x1DC($sp)
    /* CF1D8 800DE9D8 E001A0AF */  sw         $zero, 0x1E0($sp)
    /* CF1DC 800DE9DC E401A0A7 */  sh         $zero, 0x1E4($sp)
    /* CF1E0 800DE9E0 E601A0A7 */  sh         $zero, 0x1E6($sp)
    /* CF1E4 800DE9E4 E801B1A7 */  sh         $s1, 0x1E8($sp)
    /* CF1E8 800DE9E8 EA01B1A7 */  sh         $s1, 0x1EA($sp)
    /* CF1EC 800DE9EC F201A0A7 */  sh         $zero, 0x1F2($sp)
    /* CF1F0 800DE9F0 F401A0A7 */  sh         $zero, 0x1F4($sp)
    /* CF1F4 800DE9F4 EC01A0A7 */  sh         $zero, 0x1EC($sp)
    /* CF1F8 800DE9F8 EE01B0A7 */  sh         $s0, 0x1EE($sp)
    /* CF1FC 800DE9FC F001B0A7 */  sh         $s0, 0x1F0($sp)
    /* CF200 800DEA00 9AE0030C */  jal        func_800F8268
    /* CF204 800DEA04 0802A427 */   addiu     $a0, $sp, 0x208
    /* CF208 800DEA08 0300401E */  bgtz       $s2, .L800DEA18
    /* CF20C 800DEA0C 21104002 */   addu      $v0, $s2, $zero
    /* CF210 800DEA10 27101200 */  nor        $v0, $zero, $s2
    /* CF214 800DEA14 01004224 */  addiu      $v0, $v0, 0x1
  .L800DEA18:
    /* CF218 800DEA18 21904000 */  addu       $s2, $v0, $zero
    /* CF21C 800DEA1C 221B040C */  jal        func_80106C88
    /* CF220 800DEA20 E800A427 */   addiu     $a0, $sp, 0xE8
    /* CF224 800DEA24 0002A0A7 */  sh         $zero, 0x200($sp)
    /* CF228 800DEA28 0202A0A7 */  sh         $zero, 0x202($sp)
    /* CF22C 800DEA2C 80020224 */  addiu      $v0, $zero, 0x280
    /* CF230 800DEA30 0402A2A7 */  sh         $v0, 0x204($sp)
    /* CF234 800DEA34 F0000224 */  addiu      $v0, $zero, 0xF0
    /* CF238 800DEA38 0602A2A7 */  sh         $v0, 0x206($sp)
    /* CF23C 800DEA3C 0002A427 */  addiu      $a0, $sp, 0x200
    /* CF240 800DEA40 0A000524 */  addiu      $a1, $zero, 0xA
    /* CF244 800DEA44 82D4030C */  jal        func_800F5208
    /* CF248 800DEA48 21300000 */   addu      $a2, $zero, $zero
    /* CF24C 800DEA4C 1000A0AF */  sw         $zero, 0x10($sp)
    /* CF250 800DEA50 40010224 */  addiu      $v0, $zero, 0x140
    /* CF254 800DEA54 1400A2AF */  sw         $v0, 0x14($sp)
    /* CF258 800DEA58 F0000224 */  addiu      $v0, $zero, 0xF0
    /* CF25C 800DEA5C 1800A2AF */  sw         $v0, 0x18($sp)
    /* CF260 800DEA60 2000A427 */  addiu      $a0, $sp, 0x20
    /* CF264 800DEA64 1680053C */  lui        $a1, %hi(D_80159258)
    /* CF268 800DEA68 5892A524 */  addiu      $a1, $a1, %lo(D_80159258)
    /* CF26C 800DEA6C 00080624 */  addiu      $a2, $zero, 0x800
    /* CF270 800DEA70 83DE030C */  jal        func_800F7A0C
    /* CF274 800DEA74 21380000 */   addu      $a3, $zero, $zero
    /* CF278 800DEA78 2000A427 */  addiu      $a0, $sp, 0x20
    /* CF27C 800DEA7C 30750524 */  addiu      $a1, $zero, 0x7530
    /* CF280 800DEA80 0A000624 */  addiu      $a2, $zero, 0xA
    /* CF284 800DEA84 44E3030C */  jal        func_800F8D10
    /* CF288 800DEA88 EC000724 */   addiu     $a3, $zero, 0xEC
    /* CF28C 800DEA8C F8EA030C */  jal        func_800FABE0
    /* CF290 800DEA90 7801A427 */   addiu     $a0, $sp, 0x178
    /* CF294 800DEA94 BF12040C */  jal        func_80104AFC
    /* CF298 800DEA98 21880000 */   addu      $s1, $zero, $zero
    /* CF29C 800DEA9C 4C00B027 */  addiu      $s0, $sp, 0x4C
    /* CF2A0 800DEAA0 F8EA030C */  jal        func_800FABE0
    /* CF2A4 800DEAA4 21200002 */   addu      $a0, $s0, $zero
    /* CF2A8 800DEAA8 05DD030C */  jal        func_800F7414
    /* CF2AC 800DEAAC 21200002 */   addu      $a0, $s0, $zero
    /* CF2B0 800DEAB0 BF12040C */  jal        func_80104AFC
    /* CF2B4 800DEAB4 00000000 */   nop
    /* CF2B8 800DEAB8 E9EA030C */  jal        func_800FABA4
    /* CF2BC 800DEABC 21200002 */   addu      $a0, $s0, $zero
    /* CF2C0 800DEAC0 4F1B040C */  jal        func_80106D3C
    /* CF2C4 800DEAC4 21204000 */   addu      $a0, $v0, $zero
    /* CF2C8 800DEAC8 54E9030C */  jal        func_800FA550
    /* CF2CC 800DEACC FF000424 */   addiu     $a0, $zero, 0xFF
    /* CF2D0 800DEAD0 1280043C */  lui        $a0, %hi(D_80121340)
    /* CF2D4 800DEAD4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CF2D8 800DEAD8 CB1A030C */  jal        func_800C6B2C
    /* CF2DC 800DEADC 40801200 */   sll       $s0, $s2, 1
    /* CF2E0 800DEAE0 21801202 */  addu       $s0, $s0, $s2
    /* CF2E4 800DEAE4 80801000 */  sll        $s0, $s0, 2
    /* CF2E8 800DEAE8 23801202 */  subu       $s0, $s0, $s2
    /* CF2EC 800DEAEC 00811000 */  sll        $s0, $s0, 4
    /* CF2F0 800DEAF0 23801202 */  subu       $s0, $s0, $s2
    /* CF2F4 800DEAF4 C0801000 */  sll        $s0, $s0, 3
    /* CF2F8 800DEAF8 1280043C */  lui        $a0, %hi(D_80121340)
    /* CF2FC 800DEAFC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CF300 800DEB00 1180013C */  lui        $at, %hi(D_80117A78)
    /* CF304 800DEB04 21083000 */  addu       $at, $at, $s0
    /* CF308 800DEB08 787A2584 */  lh         $a1, %lo(D_80117A78)($at)
    /* CF30C 800DEB0C AD98010C */  jal        func_800662B4
    /* CF310 800DEB10 00000000 */   nop
    /* CF314 800DEB14 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* CF318 800DEB18 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* CF31C 800DEB1C 1280053C */  lui        $a1, %hi(D_80121340)
    /* CF320 800DEB20 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* CF324 800DEB24 A587030C */  jal        func_800E1E94
    /* CF328 800DEB28 00000000 */   nop
    /* CF32C 800DEB2C 1280043C */  lui        $a0, %hi(D_80121340)
    /* CF330 800DEB30 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CF334 800DEB34 CB1A030C */  jal        func_800C6B2C
    /* CF338 800DEB38 00000000 */   nop
    /* CF33C 800DEB3C 1280043C */  lui        $a0, %hi(D_80121340)
    /* CF340 800DEB40 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CF344 800DEB44 1180013C */  lui        $at, %hi(D_80117A7A)
    /* CF348 800DEB48 21083000 */  addu       $at, $at, $s0
    /* CF34C 800DEB4C 7A7A2584 */  lh         $a1, %lo(D_80117A7A)($at)
    /* CF350 800DEB50 9C1B030C */  jal        func_800C6E70
    /* CF354 800DEB54 00000000 */   nop
    /* CF358 800DEB58 1280043C */  lui        $a0, %hi(D_80121340)
    /* CF35C 800DEB5C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CF360 800DEB60 1680053C */  lui        $a1, %hi(D_8015925C)
    /* CF364 800DEB64 5C92A524 */  addiu      $a1, $a1, %lo(D_8015925C)
    /* CF368 800DEB68 9987030C */  jal        func_800E1E64
    /* CF36C 800DEB6C 00000000 */   nop
    /* CF370 800DEB70 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* CF374 800DEB74 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* CF378 800DEB78 1280053C */  lui        $a1, %hi(D_80121340)
    /* CF37C 800DEB7C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* CF380 800DEB80 A587030C */  jal        func_800E1E94
    /* CF384 800DEB84 00000000 */   nop
    /* CF388 800DEB88 8A54020C */  jal        func_80095228
    /* CF38C 800DEB8C 21204002 */   addu      $a0, $s2, $zero
    /* CF390 800DEB90 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* CF394 800DEB94 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* CF398 800DEB98 A587030C */  jal        func_800E1E94
    /* CF39C 800DEB9C 21284000 */   addu      $a1, $v0, $zero
    /* CF3A0 800DEBA0 1280043C */  lui        $a0, %hi(D_80121340)
    /* CF3A4 800DEBA4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CF3A8 800DEBA8 CB1A030C */  jal        func_800C6B2C
    /* CF3AC 800DEBAC 40001224 */   addiu     $s2, $zero, 0x40
    /* CF3B0 800DEBB0 1280043C */  lui        $a0, %hi(D_80121340)
    /* CF3B4 800DEBB4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CF3B8 800DEBB8 1180013C */  lui        $at, %hi(D_80117A76)
    /* CF3BC 800DEBBC 21083000 */  addu       $at, $at, $s0
    /* CF3C0 800DEBC0 767A2584 */  lh         $a1, %lo(D_80117A76)($at)
    /* CF3C4 800DEBC4 AD98010C */  jal        func_800662B4
    /* CF3C8 800DEBC8 00000000 */   nop
    /* CF3CC 800DEBCC 1280043C */  lui        $a0, %hi(D_8011FDE8)
    /* CF3D0 800DEBD0 E8FD8424 */  addiu      $a0, $a0, %lo(D_8011FDE8)
    /* CF3D4 800DEBD4 1280053C */  lui        $a1, %hi(D_80121340)
    /* CF3D8 800DEBD8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* CF3DC 800DEBDC A587030C */  jal        func_800E1E94
    /* CF3E0 800DEBE0 00000000 */   nop
    /* CF3E4 800DEBE4 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* CF3E8 800DEBE8 B4AC848C */  lw         $a0, %lo(D_8011ACB4)($a0)
    /* CF3EC 800DEBEC F853020C */  jal        func_80094FE0
    /* CF3F0 800DEBF0 00000000 */   nop
    /* CF3F4 800DEBF4 1280043C */  lui        $a0, %hi(D_8011FE38)
    /* CF3F8 800DEBF8 38FE8424 */  addiu      $a0, $a0, %lo(D_8011FE38)
    /* CF3FC 800DEBFC A587030C */  jal        func_800E1E94
    /* CF400 800DEC00 21284000 */   addu      $a1, $v0, $zero
    /* CF404 800DEC04 0602A287 */  lh         $v0, 0x206($sp)
    /* CF408 800DEC08 00000000 */  nop
    /* CF40C 800DEC0C E8FF4224 */  addiu      $v0, $v0, -0x18
    /* CF410 800DEC10 43100200 */  sra        $v0, $v0, 1
    /* CF414 800DEC14 0202A2A7 */  sh         $v0, 0x202($sp)
    /* CF418 800DEC18 0002B027 */  addiu      $s0, $sp, 0x200
  .L800DEC1C:
    /* CF41C 800DEC1C 0500222A */  slti       $v0, $s1, 0x5
    /* CF420 800DEC20 63004010 */  beqz       $v0, .L800DEDB0
    /* CF424 800DEC24 00000000 */   nop
    /* CF428 800DEC28 CB1A030C */  jal        func_800C6B2C
    /* CF42C 800DEC2C 3802A427 */   addiu     $a0, $sp, 0x238
    /* CF430 800DEC30 80101100 */  sll        $v0, $s1, 2
    /* CF434 800DEC34 1680043C */  lui        $a0, %hi(D_80158840)
    /* CF438 800DEC38 4088848C */  lw         $a0, %lo(D_80158840)($a0)
    /* CF43C 800DEC3C 1480013C */  lui        $at, %hi(D_801388BC)
    /* CF440 800DEC40 21082200 */  addu       $at, $at, $v0
    /* CF444 800DEC44 BC88258C */  lw         $a1, %lo(D_801388BC)($at)
    /* CF448 800DEC48 FCA0020C */  jal        func_800A83F0
    /* CF44C 800DEC4C 00000000 */   nop
    /* CF450 800DEC50 55004014 */  bnez       $v0, .L800DEDA8
    /* CF454 800DEC54 00000000 */   nop
  .L800DEC58:
    /* CF458 800DEC58 58A1020C */  jal        func_800A8560
    /* CF45C 800DEC5C 00000000 */   nop
    /* CF460 800DEC60 00004280 */  lb         $v0, 0x0($v0)
    /* CF464 800DEC64 00000000 */  nop
    /* CF468 800DEC68 0B005210 */  beq        $v0, $s2, .L800DEC98
    /* CF46C 800DEC6C 00000000 */   nop
    /* CF470 800DEC70 1680053C */  lui        $a1, %hi(D_80158D40)
    /* CF474 800DEC74 408DA58C */  lw         $a1, %lo(D_80158D40)($a1)
    /* CF478 800DEC78 9987030C */  jal        func_800E1E64
    /* CF47C 800DEC7C 3802A427 */   addiu     $a0, $sp, 0x238
    /* CF480 800DEC80 1680053C */  lui        $a1, %hi(D_80159268)
    /* CF484 800DEC84 6892A524 */  addiu      $a1, $a1, %lo(D_80159268)
    /* CF488 800DEC88 9987030C */  jal        func_800E1E64
    /* CF48C 800DEC8C 3802A427 */   addiu     $a0, $sp, 0x238
    /* CF490 800DEC90 167B0308 */  j          .L800DEC58
    /* CF494 800DEC94 00000000 */   nop
  .L800DEC98:
    /* CF498 800DEC98 1280043C */  lui        $a0, %hi(D_80121340)
    /* CF49C 800DEC9C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CF4A0 800DECA0 CB1A030C */  jal        func_800C6B2C
    /* CF4A4 800DECA4 00000000 */   nop
    /* CF4A8 800DECA8 1280053C */  lui        $a1, %hi(D_80121340)
    /* CF4AC 800DECAC 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* CF4B0 800DECB0 33AC020C */  jal        func_800AB0CC
    /* CF4B4 800DECB4 3802A427 */   addiu     $a0, $sp, 0x238
    /* CF4B8 800DECB8 0802A427 */  addiu      $a0, $sp, 0x208
    /* CF4BC 800DECBC 2000A527 */  addiu      $a1, $sp, 0x20
    /* CF4C0 800DECC0 21300002 */  addu       $a2, $s0, $zero
    /* CF4C4 800DECC4 EDE3030C */  jal        func_800F8FB4
    /* CF4C8 800DECC8 21380002 */   addu      $a3, $s0, $zero
    /* CF4CC 800DECCC 0002A297 */  lhu        $v0, 0x200($sp)
    /* CF4D0 800DECD0 00000000 */  nop
    /* CF4D4 800DECD4 01004224 */  addiu      $v0, $v0, 0x1
    /* CF4D8 800DECD8 0002A2A7 */  sh         $v0, 0x200($sp)
    /* CF4DC 800DECDC 0402A297 */  lhu        $v0, 0x204($sp)
    /* CF4E0 800DECE0 00000000 */  nop
    /* CF4E4 800DECE4 01004224 */  addiu      $v0, $v0, 0x1
    /* CF4E8 800DECE8 0402A2A7 */  sh         $v0, 0x204($sp)
    /* CF4EC 800DECEC 0202A297 */  lhu        $v0, 0x202($sp)
    /* CF4F0 800DECF0 00000000 */  nop
    /* CF4F4 800DECF4 01004224 */  addiu      $v0, $v0, 0x1
    /* CF4F8 800DECF8 0202A2A7 */  sh         $v0, 0x202($sp)
    /* CF4FC 800DECFC 0602A297 */  lhu        $v0, 0x206($sp)
    /* CF500 800DED00 00000000 */  nop
    /* CF504 800DED04 01004224 */  addiu      $v0, $v0, 0x1
    /* CF508 800DED08 0602A2A7 */  sh         $v0, 0x206($sp)
    /* CF50C 800DED0C 54E9030C */  jal        func_800FA550
    /* CF510 800DED10 21200000 */   addu      $a0, $zero, $zero
    /* CF514 800DED14 2000A427 */  addiu      $a0, $sp, 0x20
    /* CF518 800DED18 1280053C */  lui        $a1, %hi(D_80121340)
    /* CF51C 800DED1C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* CF520 800DED20 21300002 */  addu       $a2, $s0, $zero
    /* CF524 800DED24 7AE7030C */  jal        func_800F9DE8
    /* CF528 800DED28 21380000 */   addu      $a3, $zero, $zero
    /* CF52C 800DED2C 0002A297 */  lhu        $v0, 0x200($sp)
    /* CF530 800DED30 00000000 */  nop
    /* CF534 800DED34 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* CF538 800DED38 0002A2A7 */  sh         $v0, 0x200($sp)
    /* CF53C 800DED3C 0402A297 */  lhu        $v0, 0x204($sp)
    /* CF540 800DED40 00000000 */  nop
    /* CF544 800DED44 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* CF548 800DED48 0402A2A7 */  sh         $v0, 0x204($sp)
    /* CF54C 800DED4C 0202A297 */  lhu        $v0, 0x202($sp)
    /* CF550 800DED50 00000000 */  nop
    /* CF554 800DED54 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* CF558 800DED58 0202A2A7 */  sh         $v0, 0x202($sp)
    /* CF55C 800DED5C 0602A297 */  lhu        $v0, 0x206($sp)
    /* CF560 800DED60 00000000 */  nop
    /* CF564 800DED64 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* CF568 800DED68 0602A2A7 */  sh         $v0, 0x206($sp)
    /* CF56C 800DED6C 54E9030C */  jal        func_800FA550
    /* CF570 800DED70 FF000424 */   addiu     $a0, $zero, 0xFF
    /* CF574 800DED74 2000A427 */  addiu      $a0, $sp, 0x20
    /* CF578 800DED78 1280053C */  lui        $a1, %hi(D_80121340)
    /* CF57C 800DED7C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* CF580 800DED80 21300002 */  addu       $a2, $s0, $zero
    /* CF584 800DED84 7AE7030C */  jal        func_800F9DE8
    /* CF588 800DED88 21380000 */   addu      $a3, $zero, $zero
    /* CF58C 800DED8C 2000A427 */  addiu      $a0, $sp, 0x20
    /* CF590 800DED90 21280002 */  addu       $a1, $s0, $zero
    /* CF594 800DED94 04000624 */  addiu      $a2, $zero, 0x4
    /* CF598 800DED98 6946020C */  jal        func_800919A4
    /* CF59C 800DED9C 05000724 */   addiu     $a3, $zero, 0x5
    /* CF5A0 800DEDA0 E9A0020C */  jal        func_800A83A4
    /* CF5A4 800DEDA4 00000000 */   nop
  .L800DEDA8:
    /* CF5A8 800DEDA8 077B0308 */  j          .L800DEC1C
    /* CF5AC 800DEDAC 01003126 */   addiu     $s1, $s1, 0x1
  .L800DEDB0:
    /* CF5B0 800DEDB0 E9EA030C */  jal        func_800FABA4
    /* CF5B4 800DEDB4 4C00A427 */   addiu     $a0, $sp, 0x4C
    /* CF5B8 800DEDB8 511B040C */  jal        func_80106D44
    /* CF5BC 800DEDBC 21204000 */   addu      $a0, $v0, $zero
    /* CF5C0 800DEDC0 4C00B127 */  addiu      $s1, $sp, 0x4C
    /* CF5C4 800DEDC4 EFEA030C */  jal        func_800FABBC
    /* CF5C8 800DEDC8 21202002 */   addu      $a0, $s1, $zero
    /* CF5CC 800DEDCC BF12040C */  jal        func_80104AFC
    /* CF5D0 800DEDD0 00000000 */   nop
    /* CF5D4 800DEDD4 7801B027 */  addiu      $s0, $sp, 0x178
    /* CF5D8 800DEDD8 EFEA030C */  jal        func_800FABBC
    /* CF5DC 800DEDDC 21200002 */   addu      $a0, $s0, $zero
    /* CF5E0 800DEDE0 BF12040C */  jal        func_80104AFC
    /* CF5E4 800DEDE4 00000000 */   nop
    /* CF5E8 800DEDE8 0802A427 */  addiu      $a0, $sp, 0x208
    /* CF5EC 800DEDEC 4CE1030C */  jal        func_800F8530
    /* CF5F0 800DEDF0 02000524 */   addiu     $a1, $zero, 0x2
    /* CF5F4 800DEDF4 21200002 */  addu       $a0, $s0, $zero
    /* CF5F8 800DEDF8 F5E9030C */  jal        func_800FA7D4
    /* CF5FC 800DEDFC 02000524 */   addiu     $a1, $zero, 0x2
    /* CF600 800DEE00 2000B027 */  addiu      $s0, $sp, 0x20
    /* CF604 800DEE04 0180023C */  lui        $v0, %hi(D_800138BC)
    /* CF608 800DEE08 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* CF60C 800DEE0C 4800A2AF */  sw         $v0, 0x48($sp)
    /* CF610 800DEE10 21202002 */  addu       $a0, $s1, $zero
    /* CF614 800DEE14 F5E9030C */  jal        func_800FA7D4
    /* CF618 800DEE18 21280000 */   addu      $a1, $zero, $zero
    /* CF61C 800DEE1C 21200002 */  addu       $a0, $s0, $zero
    /* CF620 800DEE20 4CE1030C */  jal        func_800F8530
    /* CF624 800DEE24 02000524 */   addiu     $a1, $zero, 0x2
    /* CF628 800DEE28 4403BF8F */  lw         $ra, 0x344($sp)
    /* CF62C 800DEE2C 4003B28F */  lw         $s2, 0x340($sp)
    /* CF630 800DEE30 3C03B18F */  lw         $s1, 0x33C($sp)
    /* CF634 800DEE34 3803B08F */  lw         $s0, 0x338($sp)
    /* CF638 800DEE38 4803BD27 */  addiu      $sp, $sp, 0x348
    /* CF63C 800DEE3C 0800E003 */  jr         $ra
    /* CF640 800DEE40 00000000 */   nop
endlabel func_800DE89C
