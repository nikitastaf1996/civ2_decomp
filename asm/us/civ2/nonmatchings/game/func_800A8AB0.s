.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A8AB0, 0x274

glabel func_800A8AB0
    /* 992B0 800A8AB0 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 992B4 800A8AB4 5000BFAF */  sw         $ra, 0x50($sp)
    /* 992B8 800A8AB8 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 992BC 800A8ABC 4800B4AF */  sw         $s4, 0x48($sp)
    /* 992C0 800A8AC0 4400B3AF */  sw         $s3, 0x44($sp)
    /* 992C4 800A8AC4 4000B2AF */  sw         $s2, 0x40($sp)
    /* 992C8 800A8AC8 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 992CC 800A8ACC 3800B0AF */  sw         $s0, 0x38($sp)
    /* 992D0 800A8AD0 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 992D4 800A8AD4 1200A0A7 */  sh         $zero, 0x12($sp)
    /* 992D8 800A8AD8 40010224 */  addiu      $v0, $zero, 0x140
    /* 992DC 800A8ADC 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 992E0 800A8AE0 F0000224 */  addiu      $v0, $zero, 0xF0
    /* 992E4 800A8AE4 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 992E8 800A8AE8 6C08858F */  lw         $a1, %gp_rel(D_80158D44)($gp)
    /* 992EC 800A8AEC 00000000 */  nop
    /* 992F0 800A8AF0 9000A424 */  addiu      $a0, $a1, 0x90
    /* 992F4 800A8AF4 BC00A524 */  addiu      $a1, $a1, 0xBC
    /* 992F8 800A8AF8 1000A627 */  addiu      $a2, $sp, 0x10
    /* 992FC 800A8AFC 1FE4030C */  jal        func_800F907C
    /* 99300 800A8B00 2138C000 */   addu      $a3, $a2, $zero
    /* 99304 800A8B04 6C08828F */  lw         $v0, %gp_rel(D_80158D44)($gp)
    /* 99308 800A8B08 00000000 */  nop
    /* 9930C 800A8B0C B010448C */  lw         $a0, 0x10B0($v0)
    /* 99310 800A8B10 00000000 */  nop
    /* 99314 800A8B14 79008010 */  beqz       $a0, .L800A8CFC
    /* 99318 800A8B18 00000000 */   nop
    /* 9931C 800A8B1C 7D11040C */  jal        func_801045F4
    /* 99320 800A8B20 21900000 */   addu      $s2, $zero, $zero
    /* 99324 800A8B24 1800B027 */  addiu      $s0, $sp, 0x18
    /* 99328 800A8B28 BD9E030C */  jal        SetTile
    /* 9932C 800A8B2C 21200002 */   addu      $a0, $s0, $zero
    /* 99330 800A8B30 FD8C020C */  jal        func_800A33F4
    /* 99334 800A8B34 21200002 */   addu      $a0, $s0, $zero
    /* 99338 800A8B38 26000224 */  addiu      $v0, $zero, 0x26
    /* 9933C 800A8B3C 2400A2A7 */  sh         $v0, 0x24($sp)
    /* 99340 800A8B40 0C000224 */  addiu      $v0, $zero, 0xC
    /* 99344 800A8B44 2600A2A7 */  sh         $v0, 0x26($sp)
    /* 99348 800A8B48 08000224 */  addiu      $v0, $zero, 0x8
    /* 9934C 800A8B4C 2000A2A7 */  sh         $v0, 0x20($sp)
    /* 99350 800A8B50 7A088387 */  lh         $v1, %gp_rel(D_80158D52)($gp)
    /* 99354 800A8B54 00000000 */  nop
    /* 99358 800A8B58 40100300 */  sll        $v0, $v1, 1
    /* 9935C 800A8B5C 21104300 */  addu       $v0, $v0, $v1
    /* 99360 800A8B60 80100200 */  sll        $v0, $v0, 2
    /* 99364 800A8B64 28004224 */  addiu      $v0, $v0, 0x28
    /* 99368 800A8B68 2200A2A7 */  sh         $v0, 0x22($sp)
    /* 9936C 800A8B6C 21200002 */  addu       $a0, $s0, $zero
    /* 99370 800A8B70 999E030C */  jal        SetSemiTrans
    /* 99374 800A8B74 01000524 */   addiu     $a1, $zero, 0x1
    /* 99378 800A8B78 928E030C */  jal        DrawPrim
    /* 9937C 800A8B7C 21200002 */   addu      $a0, $s0, $zero
    /* 99380 800A8B80 1280153C */  lui        $s5, %hi(D_8011FBFC)
    /* 99384 800A8B84 FCFBB526 */  addiu      $s5, $s5, %lo(D_8011FBFC)
    /* 99388 800A8B88 2800B327 */  addiu      $s3, $sp, 0x28
    /* 9938C 800A8B8C 5555143C */  lui        $s4, (0x55555556 >> 16)
    /* 99390 800A8B90 56559436 */  ori        $s4, $s4, (0x55555556 & 0xFFFF)
  .L800A8B94:
    /* 99394 800A8B94 2300422A */  slti       $v0, $s2, 0x23
    /* 99398 800A8B98 58004010 */  beqz       $v0, .L800A8CFC
    /* 9939C 800A8B9C 00000000 */   nop
    /* 993A0 800A8BA0 6C08848F */  lw         $a0, %gp_rel(D_80158D44)($gp)
    /* 993A4 800A8BA4 00000000 */  nop
    /* 993A8 800A8BA8 060E8284 */  lh         $v0, 0xE06($a0)
    /* 993AC 800A8BAC 00000000 */  nop
    /* 993B0 800A8BB0 08004014 */  bnez       $v0, .L800A8BD4
    /* 993B4 800A8BB4 40181200 */   sll       $v1, $s2, 1
    /* 993B8 800A8BB8 21187500 */  addu       $v1, $v1, $s5
    /* 993BC 800A8BBC 7A088287 */  lh         $v0, %gp_rel(D_80158D52)($gp)
    /* 993C0 800A8BC0 00000000 */  nop
    /* 993C4 800A8BC4 40100200 */  sll        $v0, $v0, 1
    /* 993C8 800A8BC8 00006384 */  lh         $v1, 0x0($v1)
    /* 993CC 800A8BCC FEA20208 */  j          .L800A8BF8
    /* 993D0 800A8BD0 21104400 */   addu      $v0, $v0, $a0
  .L800A8BD4:
    /* 993D4 800A8BD4 40101200 */  sll        $v0, $s2, 1
    /* 993D8 800A8BD8 21105500 */  addu       $v0, $v0, $s5
    /* 993DC 800A8BDC 00004384 */  lh         $v1, 0x0($v0)
    /* 993E0 800A8BE0 00000000 */  nop
    /* 993E4 800A8BE4 F6FF6324 */  addiu      $v1, $v1, -0xA
    /* 993E8 800A8BE8 7A088287 */  lh         $v0, %gp_rel(D_80158D52)($gp)
    /* 993EC 800A8BEC 00000000 */  nop
    /* 993F0 800A8BF0 40100200 */  sll        $v0, $v0, 1
    /* 993F4 800A8BF4 21104400 */  addu       $v0, $v0, $a0
  .L800A8BF8:
    /* 993F8 800A8BF8 B4104284 */  lh         $v0, 0x10B4($v0)
    /* 993FC 800A8BFC 00000000 */  nop
    /* 99400 800A8C00 3C006214 */  bne        $v1, $v0, .L800A8CF4
    /* 99404 800A8C04 00000000 */   nop
    /* 99408 800A8C08 C0201200 */  sll        $a0, $s2, 3
    /* 9940C 800A8C0C 1280013C */  lui        $at, %hi(D_8011FAE4)
    /* 99410 800A8C10 21082400 */  addu       $at, $at, $a0
    /* 99414 800A8C14 E4FA3184 */  lh         $s1, %lo(D_8011FAE4)($at)
    /* 99418 800A8C18 1280013C */  lui        $at, %hi(D_8011FAE8)
    /* 9941C 800A8C1C 21082400 */  addu       $at, $at, $a0
    /* 99420 800A8C20 E8FA2294 */  lhu        $v0, %lo(D_8011FAE8)($at)
    /* 99424 800A8C24 00000000 */  nop
    /* 99428 800A8C28 00140200 */  sll        $v0, $v0, 16
    /* 9942C 800A8C2C 031C0200 */  sra        $v1, $v0, 16
    /* 99430 800A8C30 C2170200 */  srl        $v0, $v0, 31
    /* 99434 800A8C34 21186200 */  addu       $v1, $v1, $v0
    /* 99438 800A8C38 43180300 */  sra        $v1, $v1, 1
    /* 9943C 800A8C3C 21882302 */  addu       $s1, $s1, $v1
    /* 99440 800A8C40 1280013C */  lui        $at, %hi(D_8011FAE6)
    /* 99444 800A8C44 21082400 */  addu       $at, $at, $a0
    /* 99448 800A8C48 E6FA3084 */  lh         $s0, %lo(D_8011FAE6)($at)
    /* 9944C 800A8C4C 1280013C */  lui        $at, %hi(D_8011FAEA)
    /* 99450 800A8C50 21082400 */  addu       $at, $at, $a0
    /* 99454 800A8C54 EAFA2294 */  lhu        $v0, %lo(D_8011FAEA)($at)
    /* 99458 800A8C58 00000000 */  nop
    /* 9945C 800A8C5C 00140200 */  sll        $v0, $v0, 16
    /* 99460 800A8C60 031C0200 */  sra        $v1, $v0, 16
    /* 99464 800A8C64 C2170200 */  srl        $v0, $v0, 31
    /* 99468 800A8C68 21186200 */  addu       $v1, $v1, $v0
    /* 9946C 800A8C6C 43180300 */  sra        $v1, $v1, 1
    /* 99470 800A8C70 21800302 */  addu       $s0, $s0, $v1
    /* 99474 800A8C74 C59E030C */  jal        SetLineF2
    /* 99478 800A8C78 21206002 */   addu      $a0, $s3, $zero
    /* 9947C 800A8C7C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 99480 800A8C80 2C00A2A3 */  sb         $v0, 0x2C($sp)
    /* 99484 800A8C84 2D00A0A3 */  sb         $zero, 0x2D($sp)
    /* 99488 800A8C88 20000224 */  addiu      $v0, $zero, 0x20
    /* 9948C 800A8C8C 2E00A2A3 */  sb         $v0, 0x2E($sp)
    /* 99490 800A8C90 2E000224 */  addiu      $v0, $zero, 0x2E
    /* 99494 800A8C94 3000A2A7 */  sh         $v0, 0x30($sp)
    /* 99498 800A8C98 7A088387 */  lh         $v1, %gp_rel(D_80158D52)($gp)
    /* 9949C 800A8C9C 00000000 */  nop
    /* 994A0 800A8CA0 40100300 */  sll        $v0, $v1, 1
    /* 994A4 800A8CA4 21104300 */  addu       $v0, $v0, $v1
    /* 994A8 800A8CA8 80100200 */  sll        $v0, $v0, 2
    /* 994AC 800A8CAC 2E004224 */  addiu      $v0, $v0, 0x2E
    /* 994B0 800A8CB0 3200A2A7 */  sh         $v0, 0x32($sp)
    /* 994B4 800A8CB4 18003402 */  mult       $s1, $s4
    /* 994B8 800A8CB8 C38F1100 */  sra        $s1, $s1, 31
    /* 994BC 800A8CBC 10400000 */  mfhi       $t0
    /* 994C0 800A8CC0 23881101 */  subu       $s1, $t0, $s1
    /* 994C4 800A8CC4 35003126 */  addiu      $s1, $s1, 0x35
    /* 994C8 800A8CC8 3400B1A7 */  sh         $s1, 0x34($sp)
    /* 994CC 800A8CCC 18001402 */  mult       $s0, $s4
    /* 994D0 800A8CD0 C3871000 */  sra        $s0, $s0, 31
    /* 994D4 800A8CD4 10400000 */  mfhi       $t0
    /* 994D8 800A8CD8 23801001 */  subu       $s0, $t0, $s0
    /* 994DC 800A8CDC 27001026 */  addiu      $s0, $s0, 0x27
    /* 994E0 800A8CE0 3600B0A7 */  sh         $s0, 0x36($sp)
    /* 994E4 800A8CE4 928E030C */  jal        DrawPrim
    /* 994E8 800A8CE8 21206002 */   addu      $a0, $s3, $zero
    /* 994EC 800A8CEC 2C8D030C */  jal        DrawSync
    /* 994F0 800A8CF0 21200000 */   addu      $a0, $zero, $zero
  .L800A8CF4:
    /* 994F4 800A8CF4 E5A20208 */  j          .L800A8B94
    /* 994F8 800A8CF8 01005226 */   addiu     $s2, $s2, 0x1
  .L800A8CFC:
    /* 994FC 800A8CFC 5000BF8F */  lw         $ra, 0x50($sp)
    /* 99500 800A8D00 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 99504 800A8D04 4800B48F */  lw         $s4, 0x48($sp)
    /* 99508 800A8D08 4400B38F */  lw         $s3, 0x44($sp)
    /* 9950C 800A8D0C 4000B28F */  lw         $s2, 0x40($sp)
    /* 99510 800A8D10 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 99514 800A8D14 3800B08F */  lw         $s0, 0x38($sp)
    /* 99518 800A8D18 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 9951C 800A8D1C 0800E003 */  jr         $ra
    /* 99520 800A8D20 00000000 */   nop
endlabel func_800A8AB0
