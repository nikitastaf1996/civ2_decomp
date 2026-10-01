.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BFC6C, 0x1EC

glabel func_800BFC6C
    /* B046C 800BFC6C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* B0470 800BFC70 2800B0AF */  sw         $s0, 0x28($sp)
    /* B0474 800BFC74 21808000 */  addu       $s0, $a0, $zero
    /* B0478 800BFC78 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* B047C 800BFC7C 2188A000 */  addu       $s1, $a1, $zero
    /* B0480 800BFC80 3400B3AF */  sw         $s3, 0x34($sp)
    /* B0484 800BFC84 1280133C */  lui        $s3, %hi(D_80120D84)
    /* B0488 800BFC88 840D7326 */  addiu      $s3, $s3, %lo(D_80120D84)
    /* B048C 800BFC8C 21206002 */  addu       $a0, $s3, $zero
    /* B0490 800BFC90 03000524 */  addiu      $a1, $zero, 0x3
    /* B0494 800BFC94 03000624 */  addiu      $a2, $zero, 0x3
    /* B0498 800BFC98 01000724 */  addiu      $a3, $zero, 0x1
    /* B049C 800BFC9C 2C010224 */  addiu      $v0, $zero, 0x12C
    /* B04A0 800BFCA0 1000A2AF */  sw         $v0, 0x10($sp)
    /* B04A4 800BFCA4 C8000224 */  addiu      $v0, $zero, 0xC8
    /* B04A8 800BFCA8 3800BFAF */  sw         $ra, 0x38($sp)
    /* B04AC 800BFCAC 3000B2AF */  sw         $s2, 0x30($sp)
    /* B04B0 800BFCB0 1400A2AF */  sw         $v0, 0x14($sp)
    /* B04B4 800BFCB4 1800A0AF */  sw         $zero, 0x18($sp)
    /* B04B8 800BFCB8 6FE5020C */  jal        func_800B95BC
    /* B04BC 800BFCBC 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* B04C0 800BFCC0 1280043C */  lui        $a0, %hi(D_80120E5C)
    /* B04C4 800BFCC4 5C0E848C */  lw         $a0, %lo(D_80120E5C)($a0)
    /* B04C8 800BFCC8 1280033C */  lui        $v1, %hi(D_80120E58)
    /* B04CC 800BFCCC 580E638C */  lw         $v1, %lo(D_80120E58)($v1)
    /* B04D0 800BFCD0 02000224 */  addiu      $v0, $zero, 0x2
    /* B04D4 800BFCD4 2000A2A7 */  sh         $v0, 0x20($sp)
    /* B04D8 800BFCD8 95000224 */  addiu      $v0, $zero, 0x95
    /* B04DC 800BFCDC 2400A2A7 */  sh         $v0, 0x24($sp)
    /* B04E0 800BFCE0 18000224 */  addiu      $v0, $zero, 0x18
    /* B04E4 800BFCE4 1280013C */  lui        $at, %hi(D_801210C4)
    /* B04E8 800BFCE8 C41030AC */  sw         $s0, %lo(D_801210C4)($at)
    /* B04EC 800BFCEC 1280013C */  lui        $at, %hi(D_80121104)
    /* B04F0 800BFCF0 041131AC */  sw         $s1, %lo(D_80121104)($at)
    /* B04F4 800BFCF4 2200A0A7 */  sh         $zero, 0x22($sp)
    /* B04F8 800BFCF8 2600A2A7 */  sh         $v0, 0x26($sp)
    /* B04FC 800BFCFC AE008524 */  addiu      $a1, $a0, 0xAE
    /* B0500 800BFD00 02006224 */  addiu      $v0, $v1, 0x2
    /* B0504 800BFD04 2000A2A7 */  sh         $v0, 0x20($sp)
    /* B0508 800BFD08 95006224 */  addiu      $v0, $v1, 0x95
    /* B050C 800BFD0C C6008424 */  addiu      $a0, $a0, 0xC6
    /* B0510 800BFD10 2400A2A7 */  sh         $v0, 0x24($sp)
    /* B0514 800BFD14 97006224 */  addiu      $v0, $v1, 0x97
    /* B0518 800BFD18 2000A2A7 */  sh         $v0, 0x20($sp)
    /* B051C 800BFD1C 1680023C */  lui        $v0, %hi(D_8015894C)
    /* B0520 800BFD20 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* B0524 800BFD24 2A016324 */  addiu      $v1, $v1, 0x12A
    /* B0528 800BFD28 2200A5A7 */  sh         $a1, 0x22($sp)
    /* B052C 800BFD2C 2600A4A7 */  sh         $a0, 0x26($sp)
    /* B0530 800BFD30 2400A3A7 */  sh         $v1, 0x24($sp)
    /* B0534 800BFD34 2200A5A7 */  sh         $a1, 0x22($sp)
    /* B0538 800BFD38 2600A4A7 */  sh         $a0, 0x26($sp)
    /* B053C 800BFD3C 1C05448C */  lw         $a0, 0x51C($v0)
    /* B0540 800BFD40 A63A030C */  jal        func_800CEA98
    /* B0544 800BFD44 54027026 */   addiu     $s0, $s3, 0x254
    /* B0548 800BFD48 21200002 */  addu       $a0, $s0, $zero
    /* B054C 800BFD4C 2C007126 */  addiu      $s1, $s3, 0x2C
    /* B0550 800BFD50 21282002 */  addu       $a1, $s1, $zero
    /* B0554 800BFD54 64000624 */  addiu      $a2, $zero, 0x64
    /* B0558 800BFD58 2000B227 */  addiu      $s2, $sp, 0x20
    /* B055C 800BFD5C 21384002 */  addu       $a3, $s2, $zero
    /* B0560 800BFD60 4FDA030C */  jal        func_800F693C
    /* B0564 800BFD64 1000A2AF */   sw        $v0, 0x10($sp)
    /* B0568 800BFD68 0C80053C */  lui        $a1, %hi(func_800B98D0)
    /* B056C 800BFD6C D098A524 */  addiu      $a1, $a1, %lo(func_800B98D0)
    /* B0570 800BFD70 A3DA030C */  jal        func_800F6A8C
    /* B0574 800BFD74 21200002 */   addu      $a0, $s0, $zero
    /* B0578 800BFD78 8DDA030C */  jal        func_800F6A34
    /* B057C 800BFD7C 21200002 */   addu      $a0, $s0, $zero
    /* B0580 800BFD80 98DA030C */  jal        func_800F6A60
    /* B0584 800BFD84 21200002 */   addu      $a0, $s0, $zero
    /* B0588 800BFD88 80027026 */  addiu      $s0, $s3, 0x280
    /* B058C 800BFD8C 21200002 */  addu       $a0, $s0, $zero
    /* B0590 800BFD90 21282002 */  addu       $a1, $s1, $zero
    /* B0594 800BFD94 65000624 */  addiu      $a2, $zero, 0x65
    /* B0598 800BFD98 2000A297 */  lhu        $v0, 0x20($sp)
    /* B059C 800BFD9C 2200A397 */  lhu        $v1, 0x22($sp)
    /* B05A0 800BFDA0 2600A897 */  lhu        $t0, 0x26($sp)
    /* B05A4 800BFDA4 6BFF4224 */  addiu      $v0, $v0, -0x95
    /* B05A8 800BFDA8 2000A2A7 */  sh         $v0, 0x20($sp)
    /* B05AC 800BFDAC 2400A297 */  lhu        $v0, 0x24($sp)
    /* B05B0 800BFDB0 21384002 */  addu       $a3, $s2, $zero
    /* B05B4 800BFDB4 2200A3A7 */  sh         $v1, 0x22($sp)
    /* B05B8 800BFDB8 2600A8A7 */  sh         $t0, 0x26($sp)
    /* B05BC 800BFDBC 6BFF4224 */  addiu      $v0, $v0, -0x95
    /* B05C0 800BFDC0 2400A2A7 */  sh         $v0, 0x24($sp)
    /* B05C4 800BFDC4 0180023C */  lui        $v0, %hi(D_80012484)
    /* B05C8 800BFDC8 84244224 */  addiu      $v0, $v0, %lo(D_80012484)
    /* B05CC 800BFDCC 4FDA030C */  jal        func_800F693C
    /* B05D0 800BFDD0 1000A2AF */   sw        $v0, 0x10($sp)
    /* B05D4 800BFDD4 0C80053C */  lui        $a1, %hi(func_800BFA3C)
    /* B05D8 800BFDD8 3CFAA524 */  addiu      $a1, $a1, %lo(func_800BFA3C)
    /* B05DC 800BFDDC A3DA030C */  jal        func_800F6A8C
    /* B05E0 800BFDE0 21200002 */   addu      $a0, $s0, $zero
    /* B05E4 800BFDE4 0C80053C */  lui        $a1, %hi(func_800BEB60)
    /* B05E8 800BFDE8 60EBA524 */  addiu      $a1, $a1, %lo(func_800BEB60)
    /* B05EC 800BFDEC 82DF030C */  jal        func_800F7E08
    /* B05F0 800BFDF0 21206002 */   addu      $a0, $s3, $zero
    /* B05F4 800BFDF4 E5DE030C */  jal        func_800F7B94
    /* B05F8 800BFDF8 21206002 */   addu      $a0, $s3, $zero
    /* B05FC 800BFDFC F8EA030C */  jal        func_800FABE0
    /* B0600 800BFE00 21202002 */   addu      $a0, $s1, $zero
    /* B0604 800BFE04 05DD030C */  jal        func_800F7414
    /* B0608 800BFE08 21202002 */   addu      $a0, $s1, $zero
  .L800BFE0C:
    /* B060C 800BFE0C 1280103C */  lui        $s0, %hi(D_80120D84)
    /* B0610 800BFE10 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* B0614 800BFE14 300B80AF */  sw         $zero, %gp_rel(D_80159008)($gp)
    /* B0618 800BFE18 14DE030C */  jal        func_800F7850
    /* B061C 800BFE1C 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B0620 800BFE20 300B828F */  lw         $v0, %gp_rel(D_80159008)($gp)
    /* B0624 800BFE24 00000000 */  nop
    /* B0628 800BFE28 F8FF4014 */  bnez       $v0, .L800BFE0C
    /* B062C 800BFE2C 00000000 */   nop
    /* B0630 800BFE30 29E5020C */  jal        func_800B94A4
    /* B0634 800BFE34 21200002 */   addu      $a0, $s0, $zero
    /* B0638 800BFE38 3800BF8F */  lw         $ra, 0x38($sp)
    /* B063C 800BFE3C 3400B38F */  lw         $s3, 0x34($sp)
    /* B0640 800BFE40 3000B28F */  lw         $s2, 0x30($sp)
    /* B0644 800BFE44 2C00B18F */  lw         $s1, 0x2C($sp)
    /* B0648 800BFE48 2800B08F */  lw         $s0, 0x28($sp)
    /* B064C 800BFE4C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* B0650 800BFE50 0800E003 */  jr         $ra
    /* B0654 800BFE54 00000000 */   nop
endlabel func_800BFC6C
