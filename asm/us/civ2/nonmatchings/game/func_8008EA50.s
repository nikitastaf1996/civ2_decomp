.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008EA50, 0x98C

glabel func_8008EA50
    /* 7F250 8008EA50 00FDBD27 */  addiu      $sp, $sp, -0x300
    /* 7F254 8008EA54 F802BFAF */  sw         $ra, 0x2F8($sp)
    /* 7F258 8008EA58 F402B7AF */  sw         $s7, 0x2F4($sp)
    /* 7F25C 8008EA5C F002B6AF */  sw         $s6, 0x2F0($sp)
    /* 7F260 8008EA60 EC02B5AF */  sw         $s5, 0x2EC($sp)
    /* 7F264 8008EA64 E802B4AF */  sw         $s4, 0x2E8($sp)
    /* 7F268 8008EA68 E402B3AF */  sw         $s3, 0x2E4($sp)
    /* 7F26C 8008EA6C E002B2AF */  sw         $s2, 0x2E0($sp)
    /* 7F270 8008EA70 DC02B1AF */  sw         $s1, 0x2DC($sp)
    /* 7F274 8008EA74 D802B0AF */  sw         $s0, 0x2D8($sp)
    /* 7F278 8008EA78 21908000 */  addu       $s2, $a0, $zero
    /* 7F27C 8008EA7C 2180A000 */  addu       $s0, $a1, $zero
    /* 7F280 8008EA80 2800A427 */  addiu      $a0, $sp, 0x28
    /* 7F284 8008EA84 ADC5020C */  jal        func_800B16B4
    /* 7F288 8008EA88 00200524 */   addiu     $a1, $zero, 0x2000
    /* 7F28C 8008EA8C 40101200 */  sll        $v0, $s2, 1
    /* 7F290 8008EA90 21105200 */  addu       $v0, $v0, $s2
    /* 7F294 8008EA94 80100200 */  sll        $v0, $v0, 2
    /* 7F298 8008EA98 23105200 */  subu       $v0, $v0, $s2
    /* 7F29C 8008EA9C C0100200 */  sll        $v0, $v0, 3
    /* 7F2A0 8008EAA0 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7F2A4 8008EAA4 21082200 */  addu       $at, $at, $v0
    /* 7F2A8 8008EAA8 0D3F3590 */  lbu        $s5, %lo(D_80113F0D)($at)
    /* 7F2AC 8008EAAC 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 7F2B0 8008EAB0 21082200 */  addu       $at, $at, $v0
    /* 7F2B4 8008EAB4 D83E3480 */  lb         $s4, %lo(D_80113ED8)($at)
    /* 7F2B8 8008EAB8 3600A22E */  sltiu      $v0, $s5, 0x36
    /* 7F2BC 8008EABC 11004010 */  beqz       $v0, .L8008EB04
    /* 7F2C0 8008EAC0 40101400 */   sll       $v0, $s4, 1
    /* 7F2C4 8008EAC4 21105400 */  addu       $v0, $v0, $s4
    /* 7F2C8 8008EAC8 80100200 */  sll        $v0, $v0, 2
    /* 7F2CC 8008EACC 23105400 */  subu       $v0, $v0, $s4
    /* 7F2D0 8008EAD0 00110200 */  sll        $v0, $v0, 4
    /* 7F2D4 8008EAD4 23105400 */  subu       $v0, $v0, $s4
    /* 7F2D8 8008EAD8 C0100200 */  sll        $v0, $v0, 3
    /* 7F2DC 8008EADC 001E1500 */  sll        $v1, $s5, 24
    /* 7F2E0 8008EAE0 031E0300 */  sra        $v1, $v1, 24
    /* 7F2E4 8008EAE4 1180043C */  lui        $a0, %hi(D_801177CF)
    /* 7F2E8 8008EAE8 CF778424 */  addiu      $a0, $a0, %lo(D_801177CF)
    /* 7F2EC 8008EAEC 21104400 */  addu       $v0, $v0, $a0
    /* 7F2F0 8008EAF0 21104300 */  addu       $v0, $v0, $v1
    /* 7F2F4 8008EAF4 00004390 */  lbu        $v1, 0x0($v0)
    /* 7F2F8 8008EAF8 00000000 */  nop
    /* 7F2FC 8008EAFC FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 7F300 8008EB00 000043A0 */  sb         $v1, 0x0($v0)
  .L8008EB04:
    /* 7F304 8008EB04 6300022A */  slti       $v0, $s0, 0x63
    /* 7F308 8008EB08 08004014 */  bnez       $v0, .L8008EB2C
    /* 7F30C 8008EB0C 21204002 */   addu      $a0, $s2, $zero
    /* 7F310 8008EB10 21280000 */  addu       $a1, $zero, $zero
    /* 7F314 8008EB14 5D7A000C */  jal        func_8001E974
    /* 7F318 8008EB18 21300000 */   addu      $a2, $zero, $zero
    /* 7F31C 8008EB1C 21804000 */  addu       $s0, $v0, $zero
    /* 7F320 8008EB20 6300022A */  slti       $v0, $s0, 0x63
    /* 7F324 8008EB24 27004010 */  beqz       $v0, .L8008EBC4
    /* 7F328 8008EB28 40101200 */   sll       $v0, $s2, 1
  .L8008EB2C:
    /* 7F32C 8008EB2C 1680023C */  lui        $v0, %hi(D_80158860)
    /* 7F330 8008EB30 6088428C */  lw         $v0, %lo(D_80158860)($v0)
    /* 7F334 8008EB34 00000000 */  nop
    /* 7F338 8008EB38 1A004216 */  bne        $s2, $v0, .L8008EBA4
    /* 7F33C 8008EB3C 40101200 */   sll       $v0, $s2, 1
    /* 7F340 8008EB40 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 7F344 8008EB44 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 7F348 8008EB48 00000000 */  nop
    /* 7F34C 8008EB4C 07108202 */  srav       $v0, $v0, $s4
    /* 7F350 8008EB50 01004230 */  andi       $v0, $v0, 0x1
    /* 7F354 8008EB54 13004010 */  beqz       $v0, .L8008EBA4
    /* 7F358 8008EB58 40101200 */   sll       $v0, $s2, 1
    /* 7F35C 8008EB5C 1680023C */  lui        $v0, %hi(D_80158684)
    /* 7F360 8008EB60 8486428C */  lw         $v0, %lo(D_80158684)($v0)
    /* 7F364 8008EB64 00000000 */  nop
    /* 7F368 8008EB68 0E004014 */  bnez       $v0, .L8008EBA4
    /* 7F36C 8008EB6C 40101200 */   sll       $v0, $s2, 1
    /* 7F370 8008EB70 0C25020C */  jal        func_80089430
    /* 7F374 8008EB74 21204002 */   addu      $a0, $s2, $zero
    /* 7F378 8008EB78 8E51000C */  jal        func_80014638
    /* 7F37C 8008EB7C 21200002 */   addu      $a0, $s0, $zero
    /* 7F380 8008EB80 40181200 */  sll        $v1, $s2, 1
    /* 7F384 8008EB84 21187200 */  addu       $v1, $v1, $s2
    /* 7F388 8008EB88 80180300 */  sll        $v1, $v1, 2
    /* 7F38C 8008EB8C 23187200 */  subu       $v1, $v1, $s2
    /* 7F390 8008EB90 C0180300 */  sll        $v1, $v1, 3
    /* 7F394 8008EB94 1180013C */  lui        $at, %hi(D_80113EEE)
    /* 7F398 8008EB98 21082300 */  addu       $at, $at, $v1
    /* 7F39C 8008EB9C EE3E22A4 */  sh         $v0, %lo(D_80113EEE)($at)
    /* 7F3A0 8008EBA0 40101200 */  sll        $v0, $s2, 1
  .L8008EBA4:
    /* 7F3A4 8008EBA4 21105200 */  addu       $v0, $v0, $s2
    /* 7F3A8 8008EBA8 80100200 */  sll        $v0, $v0, 2
    /* 7F3AC 8008EBAC 23105200 */  subu       $v0, $v0, $s2
    /* 7F3B0 8008EBB0 C0100200 */  sll        $v0, $v0, 3
    /* 7F3B4 8008EBB4 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7F3B8 8008EBB8 21082200 */  addu       $at, $at, $v0
    /* 7F3BC 8008EBBC 0D3F30A0 */  sb         $s0, %lo(D_80113F0D)($at)
    /* 7F3C0 8008EBC0 40101200 */  sll        $v0, $s2, 1
  .L8008EBC4:
    /* 7F3C4 8008EBC4 21105200 */  addu       $v0, $v0, $s2
    /* 7F3C8 8008EBC8 80100200 */  sll        $v0, $v0, 2
    /* 7F3CC 8008EBCC 23105200 */  subu       $v0, $v0, $s2
    /* 7F3D0 8008EBD0 C0100200 */  sll        $v0, $v0, 3
    /* 7F3D4 8008EBD4 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7F3D8 8008EBD8 21082200 */  addu       $at, $at, $v0
    /* 7F3DC 8008EBDC 0D3F2380 */  lb         $v1, %lo(D_80113F0D)($at)
    /* 7F3E0 8008EBE0 00161500 */  sll        $v0, $s5, 24
    /* 7F3E4 8008EBE4 03260200 */  sra        $a0, $v0, 24
    /* 7F3E8 8008EBE8 D2016410 */  beq        $v1, $a0, .L8008F334
    /* 7F3EC 8008EBEC 40101200 */   sll       $v0, $s2, 1
    /* 7F3F0 8008EBF0 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 7F3F4 8008EBF4 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 7F3F8 8008EBF8 00000000 */  nop
    /* 7F3FC 8008EBFC 07108202 */  srav       $v0, $v0, $s4
    /* 7F400 8008EC00 01004230 */  andi       $v0, $v0, 0x1
    /* 7F404 8008EC04 CB014014 */  bnez       $v0, .L8008F334
    /* 7F408 8008EC08 40101200 */   sll       $v0, $s2, 1
    /* 7F40C 8008EC0C DAFF6228 */  slti       $v0, $v1, -0x26
    /* 7F410 8008EC10 03004014 */  bnez       $v0, .L8008EC20
    /* 7F414 8008EC14 DAFF8228 */   slti      $v0, $a0, -0x26
    /* 7F418 8008EC18 40004010 */  beqz       $v0, .L8008ED1C
    /* 7F41C 8008EC1C 40101200 */   sll       $v0, $s2, 1
  .L8008EC20:
    /* 7F420 8008EC20 21B80000 */  addu       $s7, $zero, $zero
    /* 7F424 8008EC24 21200000 */  addu       $a0, $zero, $zero
    /* 7F428 8008EC28 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 7F42C 8008EC2C 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 7F430 8008EC30 00000000 */  nop
    /* 7F434 8008EC34 38004018 */  blez       $v0, .L8008ED18
    /* 7F438 8008EC38 21B00000 */   addu      $s6, $zero, $zero
    /* 7F43C 8008EC3C 40101200 */  sll        $v0, $s2, 1
    /* 7F440 8008EC40 21105200 */  addu       $v0, $v0, $s2
    /* 7F444 8008EC44 80100200 */  sll        $v0, $v0, 2
    /* 7F448 8008EC48 23105200 */  subu       $v0, $v0, $s2
    /* 7F44C 8008EC4C C0100200 */  sll        $v0, $v0, 3
    /* 7F450 8008EC50 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 7F454 8008EC54 21082200 */  addu       $at, $at, $v0
    /* 7F458 8008EC58 D83E2880 */  lb         $t0, %lo(D_80113ED8)($at)
    /* 7F45C 8008EC5C 00161500 */  sll        $v0, $s5, 24
    /* 7F460 8008EC60 033E0200 */  sra        $a3, $v0, 24
    /* 7F464 8008EC64 40101200 */  sll        $v0, $s2, 1
    /* 7F468 8008EC68 21105200 */  addu       $v0, $v0, $s2
    /* 7F46C 8008EC6C 80100200 */  sll        $v0, $v0, 2
    /* 7F470 8008EC70 23105200 */  subu       $v0, $v0, $s2
    /* 7F474 8008EC74 C0300200 */  sll        $a2, $v0, 3
    /* 7F478 8008EC78 1280053C */  lui        $a1, %hi(D_8011A282)
    /* 7F47C 8008EC7C 82A2A584 */  lh         $a1, %lo(D_8011A282)($a1)
    /* 7F480 8008EC80 40100400 */  sll        $v0, $a0, 1
  .L8008EC84:
    /* 7F484 8008EC84 21104400 */  addu       $v0, $v0, $a0
    /* 7F488 8008EC88 80100200 */  sll        $v0, $v0, 2
    /* 7F48C 8008EC8C 23104400 */  subu       $v0, $v0, $a0
    /* 7F490 8008EC90 C0180200 */  sll        $v1, $v0, 3
    /* 7F494 8008EC94 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 7F498 8008EC98 21082300 */  addu       $at, $at, $v1
    /* 7F49C 8008EC9C D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* 7F4A0 8008ECA0 00000000 */  nop
    /* 7F4A4 8008ECA4 18004814 */  bne        $v0, $t0, .L8008ED08
    /* 7F4A8 8008ECA8 00000000 */   nop
    /* 7F4AC 8008ECAC 16009210 */  beq        $a0, $s2, .L8008ED08
    /* 7F4B0 8008ECB0 00000000 */   nop
    /* 7F4B4 8008ECB4 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7F4B8 8008ECB8 21082300 */  addu       $at, $at, $v1
    /* 7F4BC 8008ECBC 0D3F2280 */  lb         $v0, %lo(D_80113F0D)($at)
    /* 7F4C0 8008ECC0 00000000 */  nop
    /* 7F4C4 8008ECC4 02004714 */  bne        $v0, $a3, .L8008ECD0
    /* 7F4C8 8008ECC8 40100400 */   sll       $v0, $a0, 1
    /* 7F4CC 8008ECCC 0100D626 */  addiu      $s6, $s6, 0x1
  .L8008ECD0:
    /* 7F4D0 8008ECD0 21104400 */  addu       $v0, $v0, $a0
    /* 7F4D4 8008ECD4 80100200 */  sll        $v0, $v0, 2
    /* 7F4D8 8008ECD8 23104400 */  subu       $v0, $v0, $a0
    /* 7F4DC 8008ECDC C0100200 */  sll        $v0, $v0, 3
    /* 7F4E0 8008ECE0 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7F4E4 8008ECE4 21082200 */  addu       $at, $at, $v0
    /* 7F4E8 8008ECE8 0D3F2380 */  lb         $v1, %lo(D_80113F0D)($at)
    /* 7F4EC 8008ECEC 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7F4F0 8008ECF0 21082600 */  addu       $at, $at, $a2
    /* 7F4F4 8008ECF4 0D3F2280 */  lb         $v0, %lo(D_80113F0D)($at)
    /* 7F4F8 8008ECF8 00000000 */  nop
    /* 7F4FC 8008ECFC 02006214 */  bne        $v1, $v0, .L8008ED08
    /* 7F500 8008ED00 00000000 */   nop
    /* 7F504 8008ED04 0100F726 */  addiu      $s7, $s7, 0x1
  .L8008ED08:
    /* 7F508 8008ED08 01008424 */  addiu      $a0, $a0, 0x1
    /* 7F50C 8008ED0C 2A108500 */  slt        $v0, $a0, $a1
    /* 7F510 8008ED10 DCFF4014 */  bnez       $v0, .L8008EC84
    /* 7F514 8008ED14 40100400 */   sll       $v0, $a0, 1
  .L8008ED18:
    /* 7F518 8008ED18 40101200 */  sll        $v0, $s2, 1
  .L8008ED1C:
    /* 7F51C 8008ED1C 21105200 */  addu       $v0, $v0, $s2
    /* 7F520 8008ED20 80100200 */  sll        $v0, $v0, 2
    /* 7F524 8008ED24 23105200 */  subu       $v0, $v0, $s2
    /* 7F528 8008ED28 C0200200 */  sll        $a0, $v0, 3
    /* 7F52C 8008ED2C 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7F530 8008ED30 21082400 */  addu       $at, $at, $a0
    /* 7F534 8008ED34 0D3F2280 */  lb         $v0, %lo(D_80113F0D)($at)
    /* 7F538 8008ED38 00000000 */  nop
    /* 7F53C 8008ED3C DAFF4228 */  slti       $v0, $v0, -0x26
    /* 7F540 8008ED40 2C014010 */  beqz       $v0, .L8008F1F4
    /* 7F544 8008ED44 00161500 */   sll       $v0, $s5, 24
    /* 7F548 8008ED48 03160200 */  sra        $v0, $v0, 24
    /* 7F54C 8008ED4C DAFF4228 */  slti       $v0, $v0, -0x26
    /* 7F550 8008ED50 0E004014 */  bnez       $v0, .L8008ED8C
    /* 7F554 8008ED54 40101200 */   sll       $v0, $s2, 1
    /* 7F558 8008ED58 1180013C */  lui        $at, %hi(D_80113EEE)
    /* 7F55C 8008ED5C 21082400 */  addu       $at, $at, $a0
    /* 7F560 8008ED60 EE3E2294 */  lhu        $v0, %lo(D_80113EEE)($at)
    /* 7F564 8008ED64 00000000 */  nop
    /* 7F568 8008ED68 00140200 */  sll        $v0, $v0, 16
    /* 7F56C 8008ED6C 031C0200 */  sra        $v1, $v0, 16
    /* 7F570 8008ED70 C2170200 */  srl        $v0, $v0, 31
    /* 7F574 8008ED74 21186200 */  addu       $v1, $v1, $v0
    /* 7F578 8008ED78 43180300 */  sra        $v1, $v1, 1
    /* 7F57C 8008ED7C 1180013C */  lui        $at, %hi(D_80113EEE)
    /* 7F580 8008ED80 21082400 */  addu       $at, $at, $a0
    /* 7F584 8008ED84 EE3E23A4 */  sh         $v1, %lo(D_80113EEE)($at)
    /* 7F588 8008ED88 40101200 */  sll        $v0, $s2, 1
  .L8008ED8C:
    /* 7F58C 8008ED8C 21105200 */  addu       $v0, $v0, $s2
    /* 7F590 8008ED90 80100200 */  sll        $v0, $v0, 2
    /* 7F594 8008ED94 23105200 */  subu       $v0, $v0, $s2
    /* 7F598 8008ED98 C0100200 */  sll        $v0, $v0, 3
    /* 7F59C 8008ED9C 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7F5A0 8008EDA0 21082200 */  addu       $at, $at, $v0
    /* 7F5A4 8008EDA4 0D3F2280 */  lb         $v0, %lo(D_80113F0D)($at)
    /* 7F5A8 8008EDA8 00000000 */  nop
    /* 7F5AC 8008EDAC 0C00401C */  bgtz       $v0, .L8008EDE0
    /* 7F5B0 8008EDB0 21984000 */   addu      $s3, $v0, $zero
    /* 7F5B4 8008EDB4 40101200 */  sll        $v0, $s2, 1
    /* 7F5B8 8008EDB8 21105200 */  addu       $v0, $v0, $s2
    /* 7F5BC 8008EDBC 80100200 */  sll        $v0, $v0, 2
    /* 7F5C0 8008EDC0 23105200 */  subu       $v0, $v0, $s2
    /* 7F5C4 8008EDC4 C0100200 */  sll        $v0, $v0, 3
    /* 7F5C8 8008EDC8 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7F5CC 8008EDCC 21082200 */  addu       $at, $at, $v0
    /* 7F5D0 8008EDD0 0D3F3380 */  lb         $s3, %lo(D_80113F0D)($at)
    /* 7F5D4 8008EDD4 00000000 */  nop
    /* 7F5D8 8008EDD8 27981300 */  nor        $s3, $zero, $s3
    /* 7F5DC 8008EDDC 01007326 */  addiu      $s3, $s3, 0x1
  .L8008EDE0:
    /* 7F5E0 8008EDE0 00161500 */  sll        $v0, $s5, 24
    /* 7F5E4 8008EDE4 031E0200 */  sra        $v1, $v0, 24
    /* 7F5E8 8008EDE8 DAFF6228 */  slti       $v0, $v1, -0x26
    /* 7F5EC 8008EDEC 04004010 */  beqz       $v0, .L8008EE00
    /* 7F5F0 8008EDF0 D9FF7126 */   addiu     $s1, $s3, -0x27
    /* 7F5F4 8008EDF4 23800300 */  negu       $s0, $v1
    /* 7F5F8 8008EDF8 813B0208 */  j          .L8008EE04
    /* 7F5FC 8008EDFC D9FF1026 */   addiu     $s0, $s0, -0x27
  .L8008EE00:
    /* 7F600 8008EE00 21800000 */  addu       $s0, $zero, $zero
  .L8008EE04:
    /* 7F604 8008EE04 5D54020C */  jal        func_80095174
    /* 7F608 8008EE08 21208002 */   addu      $a0, $s4, $zero
    /* 7F60C 8008EE0C 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 7F610 8008EE10 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 7F614 8008EE14 A587030C */  jal        func_800E1E94
    /* 7F618 8008EE18 21284000 */   addu      $a1, $v0, $zero
    /* 7F61C 8008EE1C 8C00E016 */  bnez       $s7, .L8008F050
    /* 7F620 8008EE20 40101200 */   sll       $v0, $s2, 1
    /* 7F624 8008EE24 00161500 */  sll        $v0, $s5, 24
    /* 7F628 8008EE28 03160200 */  sra        $v0, $v0, 24
    /* 7F62C 8008EE2C DAFF4228 */  slti       $v0, $v0, -0x26
    /* 7F630 8008EE30 09004010 */  beqz       $v0, .L8008EE58
    /* 7F634 8008EE34 00000000 */   nop
    /* 7F638 8008EE38 5300C012 */  beqz       $s6, .L8008EF88
    /* 7F63C 8008EE3C 40101000 */   sll       $v0, $s0, 1
    /* 7F640 8008EE40 1280013C */  lui        $at, %hi(D_8011A342)
    /* 7F644 8008EE44 21082200 */  addu       $at, $at, $v0
    /* 7F648 8008EE48 42A32384 */  lh         $v1, %lo(D_8011A342)($at)
    /* 7F64C 8008EE4C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 7F650 8008EE50 20006214 */  bne        $v1, $v0, .L8008EED4
    /* 7F654 8008EE54 00000000 */   nop
  .L8008EE58:
    /* 7F658 8008EE58 1180023C */  lui        $v0, %hi(D_8010C1BC)
    /* 7F65C 8008EE5C BCC14224 */  addiu      $v0, $v0, %lo(D_8010C1BC)
    /* 7F660 8008EE60 C0181400 */  sll        $v1, $s4, 3
    /* 7F664 8008EE64 23187400 */  subu       $v1, $v1, $s4
    /* 7F668 8008EE68 80180300 */  sll        $v1, $v1, 2
    /* 7F66C 8008EE6C 21186200 */  addu       $v1, $v1, $v0
    /* 7F670 8008EE70 21187100 */  addu       $v1, $v1, $s1
    /* 7F674 8008EE74 00006490 */  lbu        $a0, 0x0($v1)
    /* 7F678 8008EE78 00000000 */  nop
    /* 7F67C 8008EE7C 01008230 */  andi       $v0, $a0, 0x1
    /* 7F680 8008EE80 73004014 */  bnez       $v0, .L8008F050
    /* 7F684 8008EE84 40101200 */   sll       $v0, $s2, 1
    /* 7F688 8008EE88 01008234 */  ori        $v0, $a0, 0x1
    /* 7F68C 8008EE8C 000062A0 */  sb         $v0, 0x0($v1)
    /* 7F690 8008EE90 C0801300 */  sll        $s0, $s3, 3
    /* 7F694 8008EE94 1180013C */  lui        $at, %hi(D_8010D064)
    /* 7F698 8008EE98 21083000 */  addu       $at, $at, $s0
    /* 7F69C 8008EE9C 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* 7F6A0 8008EEA0 ABAC020C */  jal        func_800AB2AC
    /* 7F6A4 8008EEA4 02000424 */   addiu     $a0, $zero, 0x2
    /* 7F6A8 8008EEA8 2800B127 */  addiu      $s1, $sp, 0x28
    /* 7F6AC 8008EEAC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 7F6B0 8008EEB0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7F6B4 8008EEB4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7F6B8 8008EEB8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 7F6BC 8008EEBC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 7F6C0 8008EEC0 21202002 */  addu       $a0, $s1, $zero
    /* 7F6C4 8008EEC4 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* 7F6C8 8008EEC8 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* 7F6CC 8008EECC 003C0208 */  j          .L8008F000
    /* 7F6D0 8008EED0 15E60634 */   ori       $a2, $zero, 0xE615
  .L8008EED4:
    /* 7F6D4 8008EED4 2D00C012 */  beqz       $s6, .L8008EF8C
    /* 7F6D8 8008EED8 00161500 */   sll       $v0, $s5, 24
    /* 7F6DC 8008EEDC 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 7F6E0 8008EEE0 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 7F6E4 8008EEE4 00000000 */  nop
    /* 7F6E8 8008EEE8 27004018 */  blez       $v0, .L8008EF88
    /* 7F6EC 8008EEEC 21200000 */   addu      $a0, $zero, $zero
    /* 7F6F0 8008EEF0 00161500 */  sll        $v0, $s5, 24
    /* 7F6F4 8008EEF4 03360200 */  sra        $a2, $v0, 24
    /* 7F6F8 8008EEF8 40101200 */  sll        $v0, $s2, 1
    /* 7F6FC 8008EEFC 21105200 */  addu       $v0, $v0, $s2
    /* 7F700 8008EF00 80100200 */  sll        $v0, $v0, 2
    /* 7F704 8008EF04 23105200 */  subu       $v0, $v0, $s2
    /* 7F708 8008EF08 C0280200 */  sll        $a1, $v0, 3
    /* 7F70C 8008EF0C 1280073C */  lui        $a3, %hi(D_8011A282)
    /* 7F710 8008EF10 82A2E724 */  addiu      $a3, $a3, %lo(D_8011A282)
    /* 7F714 8008EF14 40100400 */  sll        $v0, $a0, 1
  .L8008EF18:
    /* 7F718 8008EF18 21104400 */  addu       $v0, $v0, $a0
    /* 7F71C 8008EF1C 80100200 */  sll        $v0, $v0, 2
    /* 7F720 8008EF20 23104400 */  subu       $v0, $v0, $a0
    /* 7F724 8008EF24 C0180200 */  sll        $v1, $v0, 3
    /* 7F728 8008EF28 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 7F72C 8008EF2C 21082300 */  addu       $at, $at, $v1
    /* 7F730 8008EF30 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* 7F734 8008EF34 00000000 */  nop
    /* 7F738 8008EF38 0D005414 */  bne        $v0, $s4, .L8008EF70
    /* 7F73C 8008EF3C 00000000 */   nop
    /* 7F740 8008EF40 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7F744 8008EF44 21082300 */  addu       $at, $at, $v1
    /* 7F748 8008EF48 0D3F2280 */  lb         $v0, %lo(D_80113F0D)($at)
    /* 7F74C 8008EF4C 00000000 */  nop
    /* 7F750 8008EF50 07004614 */  bne        $v0, $a2, .L8008EF70
    /* 7F754 8008EF54 00000000 */   nop
    /* 7F758 8008EF58 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7F75C 8008EF5C 21082500 */  addu       $at, $at, $a1
    /* 7F760 8008EF60 0D3F2290 */  lbu        $v0, %lo(D_80113F0D)($at)
    /* 7F764 8008EF64 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7F768 8008EF68 21082300 */  addu       $at, $at, $v1
    /* 7F76C 8008EF6C 0D3F22A0 */  sb         $v0, %lo(D_80113F0D)($at)
  .L8008EF70:
    /* 7F770 8008EF70 01008424 */  addiu      $a0, $a0, 0x1
    /* 7F774 8008EF74 0000E284 */  lh         $v0, 0x0($a3)
    /* 7F778 8008EF78 00000000 */  nop
    /* 7F77C 8008EF7C 2A108200 */  slt        $v0, $a0, $v0
    /* 7F780 8008EF80 E5FF4014 */  bnez       $v0, .L8008EF18
    /* 7F784 8008EF84 40100400 */   sll       $v0, $a0, 1
  .L8008EF88:
    /* 7F788 8008EF88 00161500 */  sll        $v0, $s5, 24
  .L8008EF8C:
    /* 7F78C 8008EF8C 03160200 */  sra        $v0, $v0, 24
    /* 7F790 8008EF90 0600401C */  bgtz       $v0, .L8008EFAC
    /* 7F794 8008EF94 C0100200 */   sll       $v0, $v0, 3
    /* 7F798 8008EF98 00161500 */  sll        $v0, $s5, 24
    /* 7F79C 8008EF9C 03160200 */  sra        $v0, $v0, 24
    /* 7F7A0 8008EFA0 27100200 */  nor        $v0, $zero, $v0
    /* 7F7A4 8008EFA4 01004224 */  addiu      $v0, $v0, 0x1
    /* 7F7A8 8008EFA8 C0100200 */  sll        $v0, $v0, 3
  .L8008EFAC:
    /* 7F7AC 8008EFAC 1180013C */  lui        $at, %hi(D_8010D064)
    /* 7F7B0 8008EFB0 21082200 */  addu       $at, $at, $v0
    /* 7F7B4 8008EFB4 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* 7F7B8 8008EFB8 ABAC020C */  jal        func_800AB2AC
    /* 7F7BC 8008EFBC 02000424 */   addiu     $a0, $zero, 0x2
    /* 7F7C0 8008EFC0 C0801300 */  sll        $s0, $s3, 3
    /* 7F7C4 8008EFC4 1180013C */  lui        $at, %hi(D_8010D064)
    /* 7F7C8 8008EFC8 21083000 */  addu       $at, $at, $s0
    /* 7F7CC 8008EFCC 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* 7F7D0 8008EFD0 ABAC020C */  jal        func_800AB2AC
    /* 7F7D4 8008EFD4 03000424 */   addiu     $a0, $zero, 0x3
    /* 7F7D8 8008EFD8 2800B127 */  addiu      $s1, $sp, 0x28
    /* 7F7DC 8008EFDC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 7F7E0 8008EFE0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7F7E4 8008EFE4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7F7E8 8008EFE8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 7F7EC 8008EFEC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 7F7F0 8008EFF0 21202002 */  addu       $a0, $s1, $zero
    /* 7F7F4 8008EFF4 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* 7F7F8 8008EFF8 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* 7F7FC 8008EFFC 88E60634 */  ori        $a2, $zero, 0xE688
  .L8008F000:
    /* 7F800 8008F000 2CE0020C */  jal        func_800B80B0
    /* 7F804 8008F004 21380000 */   addu      $a3, $zero, $zero
    /* 7F808 8008F008 21801302 */  addu       $s0, $s0, $s3
    /* 7F80C 8008F00C 80801000 */  sll        $s0, $s0, 2
    /* 7F810 8008F010 21801302 */  addu       $s0, $s0, $s3
    /* 7F814 8008F014 80801000 */  sll        $s0, $s0, 2
    /* 7F818 8008F018 1380053C */  lui        $a1, %hi(D_80131638)
    /* 7F81C 8008F01C 3816A524 */  addiu      $a1, $a1, %lo(D_80131638)
    /* 7F820 8008F020 21202002 */  addu       $a0, $s1, $zero
    /* 7F824 8008F024 21280502 */  addu       $a1, $s0, $a1
    /* 7F828 8008F028 21300000 */  addu       $a2, $zero, $zero
    /* 7F82C 8008F02C 3DC9020C */  jal        func_800B24F4
    /* 7F830 8008F030 21380000 */   addu      $a3, $zero, $zero
    /* 7F834 8008F034 21202002 */  addu       $a0, $s1, $zero
    /* 7F838 8008F038 3BC9020C */  jal        func_800B24EC
    /* 7F83C 8008F03C 08000524 */   addiu     $a1, $zero, 0x8
    /* 7F840 8008F040 21202002 */  addu       $a0, $s1, $zero
    /* 7F844 8008F044 52DF020C */  jal        func_800B7D48
    /* 7F848 8008F048 21280000 */   addu      $a1, $zero, $zero
    /* 7F84C 8008F04C 40101200 */  sll        $v0, $s2, 1
  .L8008F050:
    /* 7F850 8008F050 21105200 */  addu       $v0, $v0, $s2
    /* 7F854 8008F054 80100200 */  sll        $v0, $v0, 2
    /* 7F858 8008F058 23105200 */  subu       $v0, $v0, $s2
    /* 7F85C 8008F05C C0100200 */  sll        $v0, $v0, 3
    /* 7F860 8008F060 1180013C */  lui        $at, %hi(D_80113EEE)
    /* 7F864 8008F064 21082200 */  addu       $at, $at, $v0
    /* 7F868 8008F068 EE3E2284 */  lh         $v0, %lo(D_80113EEE)($at)
    /* 7F86C 8008F06C 00000000 */  nop
    /* 7F870 8008F070 B0004014 */  bnez       $v0, .L8008F334
    /* 7F874 8008F074 40101200 */   sll       $v0, $s2, 1
    /* 7F878 8008F078 D9FF6626 */  addiu      $a2, $s3, -0x27
    /* 7F87C 8008F07C 4992023C */  lui        $v0, (0x92492493 >> 16)
    /* 7F880 8008F080 93244234 */  ori        $v0, $v0, (0x92492493 & 0xFFFF)
    /* 7F884 8008F084 1800C200 */  mult       $a2, $v0
    /* 7F888 8008F088 10480000 */  mfhi       $t1
    /* 7F88C 8008F08C 21102601 */  addu       $v0, $t1, $a2
    /* 7F890 8008F090 83100200 */  sra        $v0, $v0, 2
    /* 7F894 8008F094 C31F0600 */  sra        $v1, $a2, 31
    /* 7F898 8008F098 23304300 */  subu       $a2, $v0, $v1
    /* 7F89C 8008F09C 40101400 */  sll        $v0, $s4, 1
    /* 7F8A0 8008F0A0 21105400 */  addu       $v0, $v0, $s4
    /* 7F8A4 8008F0A4 80100200 */  sll        $v0, $v0, 2
    /* 7F8A8 8008F0A8 23105400 */  subu       $v0, $v0, $s4
    /* 7F8AC 8008F0AC 00110200 */  sll        $v0, $v0, 4
    /* 7F8B0 8008F0B0 23105400 */  subu       $v0, $v0, $s4
    /* 7F8B4 8008F0B4 C0100200 */  sll        $v0, $v0, 3
    /* 7F8B8 8008F0B8 1180033C */  lui        $v1, %hi(D_801176A9)
    /* 7F8BC 8008F0BC A9766324 */  addiu      $v1, $v1, %lo(D_801176A9)
    /* 7F8C0 8008F0C0 21104300 */  addu       $v0, $v0, $v1
    /* 7F8C4 8008F0C4 21104600 */  addu       $v0, $v0, $a2
    /* 7F8C8 8008F0C8 00004290 */  lbu        $v0, 0x0($v0)
    /* 7F8CC 8008F0CC 00000000 */  nop
    /* 7F8D0 8008F0D0 98004014 */  bnez       $v0, .L8008F334
    /* 7F8D4 8008F0D4 40101200 */   sll       $v0, $s2, 1
    /* 7F8D8 8008F0D8 01000424 */  addiu      $a0, $zero, 0x1
    /* 7F8DC 8008F0DC 01000324 */  addiu      $v1, $zero, 0x1
    /* 7F8E0 8008F0E0 1280053C */  lui        $a1, %hi(D_8011A275)
    /* 7F8E4 8008F0E4 75A2A590 */  lbu        $a1, %lo(D_8011A275)($a1)
    /* 7F8E8 8008F0E8 1180073C */  lui        $a3, %hi(D_801176A9)
    /* 7F8EC 8008F0EC A976E724 */  addiu      $a3, $a3, %lo(D_801176A9)
  .L8008F0F0:
    /* 7F8F0 8008F0F0 07106500 */  srav       $v0, $a1, $v1
    /* 7F8F4 8008F0F4 01004230 */  andi       $v0, $v0, 0x1
    /* 7F8F8 8008F0F8 10004010 */  beqz       $v0, .L8008F13C
    /* 7F8FC 8008F0FC 00000000 */   nop
    /* 7F900 8008F100 0D008010 */  beqz       $a0, .L8008F138
    /* 7F904 8008F104 21100000 */   addu      $v0, $zero, $zero
    /* 7F908 8008F108 40100300 */  sll        $v0, $v1, 1
    /* 7F90C 8008F10C 21104300 */  addu       $v0, $v0, $v1
    /* 7F910 8008F110 80100200 */  sll        $v0, $v0, 2
    /* 7F914 8008F114 23104300 */  subu       $v0, $v0, $v1
    /* 7F918 8008F118 00110200 */  sll        $v0, $v0, 4
    /* 7F91C 8008F11C 23104300 */  subu       $v0, $v0, $v1
    /* 7F920 8008F120 C0100200 */  sll        $v0, $v0, 3
    /* 7F924 8008F124 21104700 */  addu       $v0, $v0, $a3
    /* 7F928 8008F128 21104600 */  addu       $v0, $v0, $a2
    /* 7F92C 8008F12C 00004290 */  lbu        $v0, 0x0($v0)
    /* 7F930 8008F130 00000000 */  nop
    /* 7F934 8008F134 2B100200 */  sltu       $v0, $zero, $v0
  .L8008F138:
    /* 7F938 8008F138 21204000 */  addu       $a0, $v0, $zero
  .L8008F13C:
    /* 7F93C 8008F13C 01006324 */  addiu      $v1, $v1, 0x1
    /* 7F940 8008F140 08006228 */  slti       $v0, $v1, 0x8
    /* 7F944 8008F144 EAFF4014 */  bnez       $v0, .L8008F0F0
    /* 7F948 8008F148 00000000 */   nop
    /* 7F94C 8008F14C 78008010 */  beqz       $a0, .L8008F330
    /* 7F950 8008F150 40101400 */   sll       $v0, $s4, 1
    /* 7F954 8008F154 1280053C */  lui        $a1, %hi(D_8011A272)
    /* 7F958 8008F158 72A2A590 */  lbu        $a1, %lo(D_8011A272)($a1)
    /* 7F95C 8008F15C 21105400 */  addu       $v0, $v0, $s4
    /* 7F960 8008F160 80100200 */  sll        $v0, $v0, 2
    /* 7F964 8008F164 23105400 */  subu       $v0, $v0, $s4
    /* 7F968 8008F168 00110200 */  sll        $v0, $v0, 4
    /* 7F96C 8008F16C 23105400 */  subu       $v0, $v0, $s4
    /* 7F970 8008F170 C0100200 */  sll        $v0, $v0, 3
    /* 7F974 8008F174 1180033C */  lui        $v1, %hi(D_801176A9)
    /* 7F978 8008F178 A9766324 */  addiu      $v1, $v1, %lo(D_801176A9)
    /* 7F97C 8008F17C 21104300 */  addu       $v0, $v0, $v1
    /* 7F980 8008F180 21104600 */  addu       $v0, $v0, $a2
    /* 7F984 8008F184 00004290 */  lbu        $v0, 0x0($v0)
    /* 7F988 8008F188 00000000 */  nop
    /* 7F98C 8008F18C 40100200 */  sll        $v0, $v0, 1
    /* 7F990 8008F190 2328A200 */  subu       $a1, $a1, $v0
    /* 7F994 8008F194 2A200500 */  slt        $a0, $zero, $a1
    /* 7F998 8008F198 23200400 */  negu       $a0, $a0
    /* 7F99C 8008F19C 24208500 */  and        $a0, $a0, $a1
    /* 7F9A0 8008F1A0 40181200 */  sll        $v1, $s2, 1
    /* 7F9A4 8008F1A4 21187200 */  addu       $v1, $v1, $s2
    /* 7F9A8 8008F1A8 80180300 */  sll        $v1, $v1, 2
    /* 7F9AC 8008F1AC 23187200 */  subu       $v1, $v1, $s2
    /* 7F9B0 8008F1B0 C0180300 */  sll        $v1, $v1, 3
    /* 7F9B4 8008F1B4 C0101300 */  sll        $v0, $s3, 3
    /* 7F9B8 8008F1B8 1180013C */  lui        $at, %hi(D_8010D068)
    /* 7F9BC 8008F1BC 21082200 */  addu       $at, $at, $v0
    /* 7F9C0 8008F1C0 68D02290 */  lbu        $v0, %lo(D_8010D068)($at)
    /* 7F9C4 8008F1C4 00000000 */  nop
    /* 7F9C8 8008F1C8 18004400 */  mult       $v0, $a0
    /* 7F9CC 8008F1CC 1180013C */  lui        $at, %hi(D_80113EEE)
    /* 7F9D0 8008F1D0 21082300 */  addu       $at, $at, $v1
    /* 7F9D4 8008F1D4 EE3E2294 */  lhu        $v0, %lo(D_80113EEE)($at)
    /* 7F9D8 8008F1D8 12480000 */  mflo       $t1
    /* 7F9DC 8008F1DC 21104900 */  addu       $v0, $v0, $t1
    /* 7F9E0 8008F1E0 1180013C */  lui        $at, %hi(D_80113EEE)
    /* 7F9E4 8008F1E4 21082300 */  addu       $at, $at, $v1
    /* 7F9E8 8008F1E8 EE3E22A4 */  sh         $v0, %lo(D_80113EEE)($at)
    /* 7F9EC 8008F1EC CD3C0208 */  j          .L8008F334
    /* 7F9F0 8008F1F0 40101200 */   sll       $v0, $s2, 1
  .L8008F1F4:
    /* 7F9F4 8008F1F4 03860200 */  sra        $s0, $v0, 24
    /* 7F9F8 8008F1F8 DAFF022A */  slti       $v0, $s0, -0x26
    /* 7F9FC 8008F1FC 4C004010 */  beqz       $v0, .L8008F330
    /* 7FA00 8008F200 00000000 */   nop
    /* 7FA04 8008F204 4A00C016 */  bnez       $s6, .L8008F330
    /* 7FA08 8008F208 00000000 */   nop
    /* 7FA0C 8008F20C 0500001E */  bgtz       $s0, .L8008F224
    /* 7FA10 8008F210 21980002 */   addu      $s3, $s0, $zero
    /* 7FA14 8008F214 00161500 */  sll        $v0, $s5, 24
    /* 7FA18 8008F218 039E0200 */  sra        $s3, $v0, 24
    /* 7FA1C 8008F21C 27981300 */  nor        $s3, $zero, $s3
    /* 7FA20 8008F220 01007326 */  addiu      $s3, $s3, 0x1
  .L8008F224:
    /* 7FA24 8008F224 40101300 */  sll        $v0, $s3, 1
    /* 7FA28 8008F228 1280013C */  lui        $at, %hi(D_8011A2F4)
    /* 7FA2C 8008F22C 21082200 */  addu       $at, $at, $v0
    /* 7FA30 8008F230 F4A22284 */  lh         $v0, %lo(D_8011A2F4)($at)
    /* 7FA34 8008F234 00000000 */  nop
    /* 7FA38 8008F238 3D005210 */  beq        $v0, $s2, .L8008F330
    /* 7FA3C 8008F23C D9FF7126 */   addiu     $s1, $s3, -0x27
    /* 7FA40 8008F240 21208002 */  addu       $a0, $s4, $zero
    /* 7FA44 8008F244 C17B030C */  jal        func_800DEF04
    /* 7FA48 8008F248 21282002 */   addu      $a1, $s1, $zero
    /* 7FA4C 8008F24C 39004014 */  bnez       $v0, .L8008F334
    /* 7FA50 8008F250 40101200 */   sll       $v0, $s2, 1
    /* 7FA54 8008F254 1180023C */  lui        $v0, %hi(D_8010C1BC)
    /* 7FA58 8008F258 BCC14224 */  addiu      $v0, $v0, %lo(D_8010C1BC)
    /* 7FA5C 8008F25C C0181400 */  sll        $v1, $s4, 3
    /* 7FA60 8008F260 23187400 */  subu       $v1, $v1, $s4
    /* 7FA64 8008F264 80180300 */  sll        $v1, $v1, 2
    /* 7FA68 8008F268 21186200 */  addu       $v1, $v1, $v0
    /* 7FA6C 8008F26C 21187100 */  addu       $v1, $v1, $s1
    /* 7FA70 8008F270 00006490 */  lbu        $a0, 0x0($v1)
    /* 7FA74 8008F274 00000000 */  nop
    /* 7FA78 8008F278 02008230 */  andi       $v0, $a0, 0x2
    /* 7FA7C 8008F27C 2D004014 */  bnez       $v0, .L8008F334
    /* 7FA80 8008F280 40101200 */   sll       $v0, $s2, 1
    /* 7FA84 8008F284 02008234 */  ori        $v0, $a0, 0x2
    /* 7FA88 8008F288 000062A0 */  sb         $v0, 0x0($v1)
    /* 7FA8C 8008F28C 5D54020C */  jal        func_80095174
    /* 7FA90 8008F290 21208002 */   addu      $a0, $s4, $zero
    /* 7FA94 8008F294 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 7FA98 8008F298 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 7FA9C 8008F29C A587030C */  jal        func_800E1E94
    /* 7FAA0 8008F2A0 21284000 */   addu      $a1, $v0, $zero
    /* 7FAA4 8008F2A4 C0801300 */  sll        $s0, $s3, 3
    /* 7FAA8 8008F2A8 1180013C */  lui        $at, %hi(D_8010D064)
    /* 7FAAC 8008F2AC 21083000 */  addu       $at, $at, $s0
    /* 7FAB0 8008F2B0 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* 7FAB4 8008F2B4 ABAC020C */  jal        func_800AB2AC
    /* 7FAB8 8008F2B8 02000424 */   addiu     $a0, $zero, 0x2
    /* 7FABC 8008F2BC 2800B127 */  addiu      $s1, $sp, 0x28
    /* 7FAC0 8008F2C0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 7FAC4 8008F2C4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7FAC8 8008F2C8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7FACC 8008F2CC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 7FAD0 8008F2D0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 7FAD4 8008F2D4 21202002 */  addu       $a0, $s1, $zero
    /* 7FAD8 8008F2D8 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* 7FADC 8008F2DC F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* 7FAE0 8008F2E0 FFE60634 */  ori        $a2, $zero, 0xE6FF
    /* 7FAE4 8008F2E4 2CE0020C */  jal        func_800B80B0
    /* 7FAE8 8008F2E8 21380000 */   addu      $a3, $zero, $zero
    /* 7FAEC 8008F2EC 21801302 */  addu       $s0, $s0, $s3
    /* 7FAF0 8008F2F0 80801000 */  sll        $s0, $s0, 2
    /* 7FAF4 8008F2F4 21801302 */  addu       $s0, $s0, $s3
    /* 7FAF8 8008F2F8 80801000 */  sll        $s0, $s0, 2
    /* 7FAFC 8008F2FC 1380053C */  lui        $a1, %hi(D_80131638)
    /* 7FB00 8008F300 3816A524 */  addiu      $a1, $a1, %lo(D_80131638)
    /* 7FB04 8008F304 21202002 */  addu       $a0, $s1, $zero
    /* 7FB08 8008F308 21280502 */  addu       $a1, $s0, $a1
    /* 7FB0C 8008F30C 21300000 */  addu       $a2, $zero, $zero
    /* 7FB10 8008F310 3DC9020C */  jal        func_800B24F4
    /* 7FB14 8008F314 21380000 */   addu      $a3, $zero, $zero
    /* 7FB18 8008F318 21202002 */  addu       $a0, $s1, $zero
    /* 7FB1C 8008F31C 3BC9020C */  jal        func_800B24EC
    /* 7FB20 8008F320 08000524 */   addiu     $a1, $zero, 0x8
    /* 7FB24 8008F324 21202002 */  addu       $a0, $s1, $zero
    /* 7FB28 8008F328 52DF020C */  jal        func_800B7D48
    /* 7FB2C 8008F32C 21280000 */   addu      $a1, $zero, $zero
  .L8008F330:
    /* 7FB30 8008F330 40101200 */  sll        $v0, $s2, 1
  .L8008F334:
    /* 7FB34 8008F334 21105200 */  addu       $v0, $v0, $s2
    /* 7FB38 8008F338 80100200 */  sll        $v0, $v0, 2
    /* 7FB3C 8008F33C 23105200 */  subu       $v0, $v0, $s2
    /* 7FB40 8008F340 C0100200 */  sll        $v0, $v0, 3
    /* 7FB44 8008F344 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 7FB48 8008F348 21082200 */  addu       $at, $at, $v0
    /* 7FB4C 8008F34C 0D3F2390 */  lbu        $v1, %lo(D_80113F0D)($at)
    /* 7FB50 8008F350 00000000 */  nop
    /* 7FB54 8008F354 3600622C */  sltiu      $v0, $v1, 0x36
    /* 7FB58 8008F358 11004010 */  beqz       $v0, .L8008F3A0
    /* 7FB5C 8008F35C 40101400 */   sll       $v0, $s4, 1
    /* 7FB60 8008F360 21105400 */  addu       $v0, $v0, $s4
    /* 7FB64 8008F364 80100200 */  sll        $v0, $v0, 2
    /* 7FB68 8008F368 23105400 */  subu       $v0, $v0, $s4
    /* 7FB6C 8008F36C 00110200 */  sll        $v0, $v0, 4
    /* 7FB70 8008F370 23105400 */  subu       $v0, $v0, $s4
    /* 7FB74 8008F374 C0100200 */  sll        $v0, $v0, 3
    /* 7FB78 8008F378 001E0300 */  sll        $v1, $v1, 24
    /* 7FB7C 8008F37C 031E0300 */  sra        $v1, $v1, 24
    /* 7FB80 8008F380 1180043C */  lui        $a0, %hi(D_801177CF)
    /* 7FB84 8008F384 CF778424 */  addiu      $a0, $a0, %lo(D_801177CF)
    /* 7FB88 8008F388 21104400 */  addu       $v0, $v0, $a0
    /* 7FB8C 8008F38C 21104300 */  addu       $v0, $v0, $v1
    /* 7FB90 8008F390 00004390 */  lbu        $v1, 0x0($v0)
    /* 7FB94 8008F394 00000000 */  nop
    /* 7FB98 8008F398 01006324 */  addiu      $v1, $v1, 0x1
    /* 7FB9C 8008F39C 000043A0 */  sb         $v1, 0x0($v0)
  .L8008F3A0:
    /* 7FBA0 8008F3A0 2800A427 */  addiu      $a0, $sp, 0x28
    /* 7FBA4 8008F3A4 0AC7020C */  jal        func_800B1C28
    /* 7FBA8 8008F3A8 02000524 */   addiu     $a1, $zero, 0x2
    /* 7FBAC 8008F3AC F802BF8F */  lw         $ra, 0x2F8($sp)
    /* 7FBB0 8008F3B0 F402B78F */  lw         $s7, 0x2F4($sp)
    /* 7FBB4 8008F3B4 F002B68F */  lw         $s6, 0x2F0($sp)
    /* 7FBB8 8008F3B8 EC02B58F */  lw         $s5, 0x2EC($sp)
    /* 7FBBC 8008F3BC E802B48F */  lw         $s4, 0x2E8($sp)
    /* 7FBC0 8008F3C0 E402B38F */  lw         $s3, 0x2E4($sp)
    /* 7FBC4 8008F3C4 E002B28F */  lw         $s2, 0x2E0($sp)
    /* 7FBC8 8008F3C8 DC02B18F */  lw         $s1, 0x2DC($sp)
    /* 7FBCC 8008F3CC D802B08F */  lw         $s0, 0x2D8($sp)
    /* 7FBD0 8008F3D0 0003BD27 */  addiu      $sp, $sp, 0x300
    /* 7FBD4 8008F3D4 0800E003 */  jr         $ra
    /* 7FBD8 8008F3D8 00000000 */   nop
endlabel func_8008EA50
