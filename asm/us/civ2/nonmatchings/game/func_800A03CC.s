.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A03CC, 0x13C

glabel func_800A03CC
    /* 90BCC 800A03CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90BD0 800A03D0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 90BD4 800A03D4 0D000224 */  addiu      $v0, $zero, 0xD
    /* 90BD8 800A03D8 06008210 */  beq        $a0, $v0, .L800A03F4
    /* 90BDC 800A03DC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 90BE0 800A03E0 20000224 */  addiu      $v0, $zero, 0x20
    /* 90BE4 800A03E4 41008210 */  beq        $a0, $v0, .L800A04EC
    /* 90BE8 800A03E8 00000000 */   nop
    /* 90BEC 800A03EC 3D810208 */  j          .L800A04F4
    /* 90BF0 800A03F0 00000000 */   nop
  .L800A03F4:
    /* 90BF4 800A03F4 1680043C */  lui        $a0, %hi(D_80158886)
    /* 90BF8 800A03F8 86888484 */  lh         $a0, %lo(D_80158886)($a0)
    /* 90BFC 800A03FC 1680053C */  lui        $a1, %hi(D_80158888)
    /* 90C00 800A0400 8888A584 */  lh         $a1, %lo(D_80158888)($a1)
    /* 90C04 800A0404 1E26020C */  jal        func_80089878
    /* 90C08 800A0408 00000000 */   nop
    /* 90C0C 800A040C 21804000 */  addu       $s0, $v0, $zero
    /* 90C10 800A0410 38000006 */  bltz       $s0, .L800A04F4
    /* 90C14 800A0414 40101000 */   sll       $v0, $s0, 1
    /* 90C18 800A0418 21105000 */  addu       $v0, $v0, $s0
    /* 90C1C 800A041C 80100200 */  sll        $v0, $v0, 2
    /* 90C20 800A0420 23105000 */  subu       $v0, $v0, $s0
    /* 90C24 800A0424 C0200200 */  sll        $a0, $v0, 3
    /* 90C28 800A0428 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 90C2C 800A042C 21082400 */  addu       $at, $at, $a0
    /* 90C30 800A0430 D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
    /* 90C34 800A0434 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 90C38 800A0438 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 90C3C 800A043C 00000000 */  nop
    /* 90C40 800A0440 0D006210 */  beq        $v1, $v0, .L800A0478
    /* 90C44 800A0444 00000000 */   nop
    /* 90C48 800A0448 1280023C */  lui        $v0, %hi(D_8011A271)
    /* 90C4C 800A044C 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* 90C50 800A0450 00000000 */  nop
    /* 90C54 800A0454 08004014 */  bnez       $v0, .L800A0478
    /* 90C58 800A0458 4000033C */   lui       $v1, (0x400000 >> 16)
    /* 90C5C 800A045C 1180013C */  lui        $at, %hi(D_80113ED4)
    /* 90C60 800A0460 21082400 */  addu       $at, $at, $a0
    /* 90C64 800A0464 D43E228C */  lw         $v0, %lo(D_80113ED4)($at)
    /* 90C68 800A0468 00000000 */  nop
    /* 90C6C 800A046C 24104300 */  and        $v0, $v0, $v1
    /* 90C70 800A0470 08004010 */  beqz       $v0, .L800A0494
    /* 90C74 800A0474 00000000 */   nop
  .L800A0478:
    /* 90C78 800A0478 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* 90C7C 800A047C F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* 90C80 800A0480 21280002 */  addu       $a1, $s0, $zero
    /* 90C84 800A0484 EA5D030C */  jal        func_800D77A8
    /* 90C88 800A0488 01000624 */   addiu     $a2, $zero, 0x1
    /* 90C8C 800A048C 3D810208 */  j          .L800A04F4
    /* 90C90 800A0490 00000000 */   nop
  .L800A0494:
    /* 90C94 800A0494 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* 90C98 800A0498 B4AC848C */  lw         $a0, %lo(D_8011ACB4)($a0)
    /* 90C9C 800A049C 8ACA010C */  jal        func_80072A28
    /* 90CA0 800A04A0 54000524 */   addiu     $a1, $zero, 0x54
    /* 90CA4 800A04A4 0D004014 */  bnez       $v0, .L800A04DC
    /* 90CA8 800A04A8 00000000 */   nop
    /* 90CAC 800A04AC 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* 90CB0 800A04B0 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* 90CB4 800A04B4 00000000 */  nop
    /* 90CB8 800A04B8 80004230 */  andi       $v0, $v0, 0x80
    /* 90CBC 800A04BC 0D004010 */  beqz       $v0, .L800A04F4
    /* 90CC0 800A04C0 00000000 */   nop
    /* 90CC4 800A04C4 1280023C */  lui        $v0, %hi(D_8011A390)
    /* 90CC8 800A04C8 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* 90CCC 800A04CC 00000000 */  nop
    /* 90CD0 800A04D0 08004230 */  andi       $v0, $v0, 0x8
    /* 90CD4 800A04D4 07004010 */  beqz       $v0, .L800A04F4
    /* 90CD8 800A04D8 00000000 */   nop
  .L800A04DC:
    /* 90CDC 800A04DC 3D73020C */  jal        func_8009CCF4
    /* 90CE0 800A04E0 21200002 */   addu      $a0, $s0, $zero
    /* 90CE4 800A04E4 3D810208 */  j          .L800A04F4
    /* 90CE8 800A04E8 00000000 */   nop
  .L800A04EC:
    /* 90CEC 800A04EC 091D010C */  jal        func_80047424
    /* 90CF0 800A04F0 00000000 */   nop
  .L800A04F4:
    /* 90CF4 800A04F4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 90CF8 800A04F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 90CFC 800A04FC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 90D00 800A0500 0800E003 */  jr         $ra
    /* 90D04 800A0504 00000000 */   nop
endlabel func_800A03CC
