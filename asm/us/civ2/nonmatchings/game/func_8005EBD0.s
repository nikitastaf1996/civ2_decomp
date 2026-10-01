.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005EBD0, 0x2BC

glabel func_8005EBD0
    /* 4F3D0 8005EBD0 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 4F3D4 8005EBD4 3400BFAF */  sw         $ra, 0x34($sp)
    /* 4F3D8 8005EBD8 3000B6AF */  sw         $s6, 0x30($sp)
    /* 4F3DC 8005EBDC 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 4F3E0 8005EBE0 2800B4AF */  sw         $s4, 0x28($sp)
    /* 4F3E4 8005EBE4 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4F3E8 8005EBE8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4F3EC 8005EBEC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4F3F0 8005EBF0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4F3F4 8005EBF4 21888000 */  addu       $s1, $a0, $zero
    /* 4F3F8 8005EBF8 2190A000 */  addu       $s2, $a1, $zero
    /* 4F3FC 8005EBFC 2198C000 */  addu       $s3, $a2, $zero
    /* 4F400 8005EC00 21A8E000 */  addu       $s5, $a3, $zero
    /* 4F404 8005EC04 4800B68F */  lw         $s6, 0x48($sp)
    /* 4F408 8005EC08 40101200 */  sll        $v0, $s2, 1
    /* 4F40C 8005EC0C 21105200 */  addu       $v0, $v0, $s2
    /* 4F410 8005EC10 80100200 */  sll        $v0, $v0, 2
    /* 4F414 8005EC14 23105200 */  subu       $v0, $v0, $s2
    /* 4F418 8005EC18 C0100200 */  sll        $v0, $v0, 3
    /* 4F41C 8005EC1C 1180013C */  lui        $at, %hi(D_80113ED4)
    /* 4F420 8005EC20 21082200 */  addu       $at, $at, $v0
    /* 4F424 8005EC24 D43E238C */  lw         $v1, %lo(D_80113ED4)($at)
    /* 4F428 8005EC28 0100043C */  lui        $a0, (0x10000 >> 16)
    /* 4F42C 8005EC2C 25186400 */  or         $v1, $v1, $a0
    /* 4F430 8005EC30 1180013C */  lui        $at, %hi(D_80113ED4)
    /* 4F434 8005EC34 21082200 */  addu       $at, $at, $v0
    /* 4F438 8005EC38 D43E23AC */  sw         $v1, %lo(D_80113ED4)($at)
    /* 4F43C 8005EC3C 40801300 */  sll        $s0, $s3, 1
    /* 4F440 8005EC40 21801302 */  addu       $s0, $s0, $s3
    /* 4F444 8005EC44 80801000 */  sll        $s0, $s0, 2
    /* 4F448 8005EC48 23801302 */  subu       $s0, $s0, $s3
    /* 4F44C 8005EC4C C0801000 */  sll        $s0, $s0, 3
    /* 4F450 8005EC50 1180013C */  lui        $at, %hi(D_80113ED4)
    /* 4F454 8005EC54 21083000 */  addu       $at, $at, $s0
    /* 4F458 8005EC58 D43E228C */  lw         $v0, %lo(D_80113ED4)($at)
    /* 4F45C 8005EC5C 00000000 */  nop
    /* 4F460 8005EC60 25104400 */  or         $v0, $v0, $a0
    /* 4F464 8005EC64 1180013C */  lui        $at, %hi(D_80113ED4)
    /* 4F468 8005EC68 21083000 */  addu       $at, $at, $s0
    /* 4F46C 8005EC6C D43E22AC */  sw         $v0, %lo(D_80113ED4)($at)
    /* 4F470 8005EC70 BEFA010C */  jal        func_8007EAF8
    /* 4F474 8005EC74 21202002 */   addu      $a0, $s1, $zero
    /* 4F478 8005EC78 40101100 */  sll        $v0, $s1, 1
    /* 4F47C 8005EC7C 21105100 */  addu       $v0, $v0, $s1
    /* 4F480 8005EC80 80100200 */  sll        $v0, $v0, 2
    /* 4F484 8005EC84 21105100 */  addu       $v0, $v0, $s1
    /* 4F488 8005EC88 40100200 */  sll        $v0, $v0, 1
    /* 4F48C 8005EC8C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 4F490 8005EC90 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 4F494 8005EC94 21082200 */  addu       $at, $at, $v0
    /* 4F498 8005EC98 C3D623A0 */  sb         $v1, %lo(D_8010D6C3)($at)
    /* 4F49C 8005EC9C 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 4F4A0 8005ECA0 21083000 */  addu       $at, $at, $s0
    /* 4F4A4 8005ECA4 D03E2584 */  lh         $a1, %lo(D_80113ED0)($at)
    /* 4F4A8 8005ECA8 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 4F4AC 8005ECAC 21083000 */  addu       $at, $at, $s0
    /* 4F4B0 8005ECB0 D23E2684 */  lh         $a2, %lo(D_80113ED2)($at)
    /* 4F4B4 8005ECB4 36EF010C */  jal        func_8007BCD8
    /* 4F4B8 8005ECB8 21202002 */   addu      $a0, $s1, $zero
    /* 4F4BC 8005ECBC 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* 4F4C0 8005ECC0 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* 4F4C4 8005ECC4 21282002 */  addu       $a1, $s1, $zero
    /* 4F4C8 8005ECC8 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 4F4CC 8005ECCC AD61030C */  jal        func_800D86B4
    /* 4F4D0 8005ECD0 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 4F4D4 8005ECD4 3B00A012 */  beqz       $s5, .L8005EDC4
    /* 4F4D8 8005ECD8 21800000 */   addu      $s0, $zero, $zero
    /* 4F4DC 8005ECDC 40101100 */  sll        $v0, $s1, 1
    /* 4F4E0 8005ECE0 21105100 */  addu       $v0, $v0, $s1
    /* 4F4E4 8005ECE4 80100200 */  sll        $v0, $v0, 2
    /* 4F4E8 8005ECE8 21105100 */  addu       $v0, $v0, $s1
    /* 4F4EC 8005ECEC 40A00200 */  sll        $s4, $v0, 1
  .L8005ECF0:
    /* 4F4F0 8005ECF0 2A101502 */  slt        $v0, $s0, $s5
    /* 4F4F4 8005ECF4 34004010 */  beqz       $v0, .L8005EDC8
    /* 4F4F8 8005ECF8 40101100 */   sll       $v0, $s1, 1
    /* 4F4FC 8005ECFC E6E9030C */  jal        func_800FA798
    /* 4F500 8005ED00 00000000 */   nop
    /* 4F504 8005ED04 00140200 */  sll        $v0, $v0, 16
    /* 4F508 8005ED08 03240200 */  sra        $a0, $v0, 16
    /* 4F50C 8005ED0C AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* 4F510 8005ED10 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 4F514 8005ED14 18008300 */  mult       $a0, $v1
    /* 4F518 8005ED18 C3170200 */  sra        $v0, $v0, 31
    /* 4F51C 8005ED1C 10400000 */  mfhi       $t0
    /* 4F520 8005ED20 23100201 */  subu       $v0, $t0, $v0
    /* 4F524 8005ED24 40180200 */  sll        $v1, $v0, 1
    /* 4F528 8005ED28 21186200 */  addu       $v1, $v1, $v0
    /* 4F52C 8005ED2C 40180300 */  sll        $v1, $v1, 1
    /* 4F530 8005ED30 23208300 */  subu       $a0, $a0, $v1
    /* 4F534 8005ED34 00240400 */  sll        $a0, $a0, 16
    /* 4F538 8005ED38 20008014 */  bnez       $a0, .L8005EDBC
    /* 4F53C 8005ED3C 00000000 */   nop
    /* 4F540 8005ED40 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4F544 8005ED44 21083400 */  addu       $at, $at, $s4
    /* 4F548 8005ED48 BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 4F54C 8005ED4C 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 4F550 8005ED50 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 4F554 8005ED54 00000000 */  nop
    /* 4F558 8005ED58 14006214 */  bne        $v1, $v0, .L8005EDAC
    /* 4F55C 8005ED5C 00000000 */   nop
    /* 4F560 8005ED60 5D54020C */  jal        func_80095174
    /* 4F564 8005ED64 2120C002 */   addu      $a0, $s6, $zero
    /* 4F568 8005ED68 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 4F56C 8005ED6C F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 4F570 8005ED70 A587030C */  jal        func_800E1E94
    /* 4F574 8005ED74 21284000 */   addu      $a1, $v0, $zero
    /* 4F578 8005ED78 1680023C */  lui        $v0, %hi(D_801588A4)
    /* 4F57C 8005ED7C A488428C */  lw         $v0, %lo(D_801588A4)($v0)
    /* 4F580 8005ED80 00000000 */  nop
    /* 4F584 8005ED84 2B100200 */  sltu       $v0, $zero, $v0
    /* 4F588 8005ED88 C0100200 */  sll        $v0, $v0, 3
    /* 4F58C 8005ED8C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4F590 8005ED90 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4F594 8005ED94 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4F598 8005ED98 0100053C */  lui        $a1, (0x108EA >> 16)
    /* 4F59C 8005ED9C EA08A534 */  ori        $a1, $a1, (0x108EA & 0xFFFF)
    /* 4F5A0 8005EDA0 21300000 */  addu       $a2, $zero, $zero
    /* 4F5A4 8005EDA4 DDE3020C */  jal        func_800B8F74
    /* 4F5A8 8005EDA8 1B000724 */   addiu     $a3, $zero, 0x1B
  .L8005EDAC:
    /* 4F5AC 8005EDAC 04F2010C */  jal        func_8007C810
    /* 4F5B0 8005EDB0 21202002 */   addu      $a0, $s1, $zero
    /* 4F5B4 8005EDB4 987B0108 */  j          .L8005EE60
    /* 4F5B8 8005EDB8 00000000 */   nop
  .L8005EDBC:
    /* 4F5BC 8005EDBC 3C7B0108 */  j          .L8005ECF0
    /* 4F5C0 8005EDC0 01001026 */   addiu     $s0, $s0, 0x1
  .L8005EDC4:
    /* 4F5C4 8005EDC4 40101100 */  sll        $v0, $s1, 1
  .L8005EDC8:
    /* 4F5C8 8005EDC8 21105100 */  addu       $v0, $v0, $s1
    /* 4F5CC 8005EDCC 80100200 */  sll        $v0, $v0, 2
    /* 4F5D0 8005EDD0 21105100 */  addu       $v0, $v0, $s1
    /* 4F5D4 8005EDD4 40100200 */  sll        $v0, $v0, 1
    /* 4F5D8 8005EDD8 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4F5DC 8005EDDC 21082200 */  addu       $at, $at, $v0
    /* 4F5E0 8005EDE0 BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 4F5E4 8005EDE4 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 4F5E8 8005EDE8 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 4F5EC 8005EDEC 00000000 */  nop
    /* 4F5F0 8005EDF0 1B006214 */  bne        $v1, $v0, .L8005EE60
    /* 4F5F4 8005EDF4 40281200 */   sll       $a1, $s2, 1
    /* 4F5F8 8005EDF8 2128B200 */  addu       $a1, $a1, $s2
    /* 4F5FC 8005EDFC 80280500 */  sll        $a1, $a1, 2
    /* 4F600 8005EE00 2328B200 */  subu       $a1, $a1, $s2
    /* 4F604 8005EE04 C0280500 */  sll        $a1, $a1, 3
    /* 4F608 8005EE08 1180103C */  lui        $s0, %hi(D_80113EF2)
    /* 4F60C 8005EE0C F23E1026 */  addiu      $s0, $s0, %lo(D_80113EF2)
    /* 4F610 8005EE10 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 4F614 8005EE14 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 4F618 8005EE18 A587030C */  jal        func_800E1E94
    /* 4F61C 8005EE1C 2128B000 */   addu      $a1, $a1, $s0
    /* 4F620 8005EE20 40281300 */  sll        $a1, $s3, 1
    /* 4F624 8005EE24 2128B300 */  addu       $a1, $a1, $s3
    /* 4F628 8005EE28 80280500 */  sll        $a1, $a1, 2
    /* 4F62C 8005EE2C 2328B300 */  subu       $a1, $a1, $s3
    /* 4F630 8005EE30 C0280500 */  sll        $a1, $a1, 3
    /* 4F634 8005EE34 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 4F638 8005EE38 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 4F63C 8005EE3C A587030C */  jal        func_800E1E94
    /* 4F640 8005EE40 2128B000 */   addu      $a1, $a1, $s0
    /* 4F644 8005EE44 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4F648 8005EE48 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4F64C 8005EE4C 0100053C */  lui        $a1, (0x10887 >> 16)
    /* 4F650 8005EE50 8708A534 */  ori        $a1, $a1, (0x10887 & 0xFFFF)
    /* 4F654 8005EE54 21300000 */  addu       $a2, $zero, $zero
    /* 4F658 8005EE58 63E4020C */  jal        func_800B918C
    /* 4F65C 8005EE5C 21382002 */   addu      $a3, $s1, $zero
  .L8005EE60:
    /* 4F660 8005EE60 3400BF8F */  lw         $ra, 0x34($sp)
    /* 4F664 8005EE64 3000B68F */  lw         $s6, 0x30($sp)
    /* 4F668 8005EE68 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 4F66C 8005EE6C 2800B48F */  lw         $s4, 0x28($sp)
    /* 4F670 8005EE70 2400B38F */  lw         $s3, 0x24($sp)
    /* 4F674 8005EE74 2000B28F */  lw         $s2, 0x20($sp)
    /* 4F678 8005EE78 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4F67C 8005EE7C 1800B08F */  lw         $s0, 0x18($sp)
    /* 4F680 8005EE80 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 4F684 8005EE84 0800E003 */  jr         $ra
    /* 4F688 8005EE88 00000000 */   nop
endlabel func_8005EBD0
