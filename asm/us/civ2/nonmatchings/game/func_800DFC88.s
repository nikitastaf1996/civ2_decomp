.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DFC88, 0x2B0

glabel func_800DFC88
    /* D0488 800DFC88 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* D048C 800DFC8C 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* D0490 800DFC90 3800BEAF */  sw         $fp, 0x38($sp)
    /* D0494 800DFC94 3400B7AF */  sw         $s7, 0x34($sp)
    /* D0498 800DFC98 3000B6AF */  sw         $s6, 0x30($sp)
    /* D049C 800DFC9C 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* D04A0 800DFCA0 2800B4AF */  sw         $s4, 0x28($sp)
    /* D04A4 800DFCA4 2400B3AF */  sw         $s3, 0x24($sp)
    /* D04A8 800DFCA8 2000B2AF */  sw         $s2, 0x20($sp)
    /* D04AC 800DFCAC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* D04B0 800DFCB0 1800B0AF */  sw         $s0, 0x18($sp)
    /* D04B4 800DFCB4 1480023C */  lui        $v0, %hi(D_801388EC)
    /* D04B8 800DFCB8 EC88428C */  lw         $v0, %lo(D_801388EC)($v0)
    /* D04BC 800DFCBC 00000000 */  nop
    /* D04C0 800DFCC0 90004010 */  beqz       $v0, .L800DFF04
    /* D04C4 800DFCC4 00000000 */   nop
    /* D04C8 800DFCC8 6C7D030C */  jal        func_800DF5B0
    /* D04CC 800DFCCC 21880000 */   addu      $s1, $zero, $zero
    /* D04D0 800DFCD0 1280103C */  lui        $s0, %hi(D_8011C308)
    /* D04D4 800DFCD4 08C31026 */  addiu      $s0, $s0, %lo(D_8011C308)
    /* D04D8 800DFCD8 00000386 */  lh         $v1, 0x0($s0)
    /* D04DC 800DFCDC 02000286 */  lh         $v0, 0x2($s0)
    /* D04E0 800DFCE0 00000000 */  nop
    /* D04E4 800DFCE4 18006200 */  mult       $v1, $v0
    /* D04E8 800DFCE8 12300000 */  mflo       $a2
    /* D04EC 800DFCEC FED4030C */  jal        func_800F53F8
    /* D04F0 800DFCF0 40200600 */   sll       $a0, $a2, 1
    /* D04F4 800DFCF4 21F04000 */  addu       $fp, $v0, $zero
    /* D04F8 800DFCF8 7CD6030C */  jal        func_800F59F0
    /* D04FC 800DFCFC 2120C003 */   addu      $a0, $fp, $zero
    /* D0500 800DFD00 21A84000 */  addu       $s5, $v0, $zero
    /* D0504 800DFD04 00000386 */  lh         $v1, 0x0($s0)
    /* D0508 800DFD08 02000286 */  lh         $v0, 0x2($s0)
    /* D050C 800DFD0C 00000000 */  nop
    /* D0510 800DFD10 18006200 */  mult       $v1, $v0
    /* D0514 800DFD14 12300000 */  mflo       $a2
    /* D0518 800DFD18 0E00C018 */  blez       $a2, .L800DFD54
    /* D051C 800DFD1C 40101100 */   sll       $v0, $s1, 1
    /* D0520 800DFD20 1280043C */  lui        $a0, %hi(D_8011C308)
    /* D0524 800DFD24 08C38424 */  addiu      $a0, $a0, %lo(D_8011C308)
  .L800DFD28:
    /* D0528 800DFD28 21105500 */  addu       $v0, $v0, $s5
    /* D052C 800DFD2C 000040A4 */  sh         $zero, 0x0($v0)
    /* D0530 800DFD30 01003126 */  addiu      $s1, $s1, 0x1
    /* D0534 800DFD34 00008384 */  lh         $v1, 0x0($a0)
    /* D0538 800DFD38 02008284 */  lh         $v0, 0x2($a0)
    /* D053C 800DFD3C 00000000 */  nop
    /* D0540 800DFD40 18006200 */  mult       $v1, $v0
    /* D0544 800DFD44 12300000 */  mflo       $a2
    /* D0548 800DFD48 2A102602 */  slt        $v0, $s1, $a2
    /* D054C 800DFD4C F6FF4014 */  bnez       $v0, .L800DFD28
    /* D0550 800DFD50 40101100 */   sll       $v0, $s1, 1
  .L800DFD54:
    /* D0554 800DFD54 5010938F */  lw         $s3, %gp_rel(D_80159528)($gp)
    /* D0558 800DFD58 21B00000 */  addu       $s6, $zero, $zero
    /* D055C 800DFD5C 1280173C */  lui        $s7, %hi(D_8011C308)
    /* D0560 800DFD60 08C3F726 */  addiu      $s7, $s7, %lo(D_8011C308)
  .L800DFD64:
    /* D0564 800DFD64 4010828F */  lw         $v0, %gp_rel(D_80159518)($gp)
    /* D0568 800DFD68 00000000 */  nop
    /* D056C 800DFD6C 2A10C202 */  slt        $v0, $s6, $v0
    /* D0570 800DFD70 55004010 */  beqz       $v0, .L800DFEC8
    /* D0574 800DFD74 00000000 */   nop
    /* D0578 800DFD78 4810828F */  lw         $v0, %gp_rel(D_80159520)($gp)
    /* D057C 800DFD7C 00000000 */  nop
    /* D0580 800DFD80 2190C202 */  addu       $s2, $s6, $v0
    /* D0584 800DFD84 4C10908F */  lw         $s0, %gp_rel(D_80159524)($gp)
    /* D0588 800DFD88 01004232 */  andi       $v0, $s2, 0x1
    /* D058C 800DFD8C 05004010 */  beqz       $v0, .L800DFDA4
    /* D0590 800DFD90 21880000 */   addu      $s1, $zero, $zero
    /* D0594 800DFD94 3410828F */  lw         $v0, %gp_rel(D_8015950C)($gp)
    /* D0598 800DFD98 00000000 */  nop
    /* D059C 800DFD9C 43100200 */  sra        $v0, $v0, 1
    /* D05A0 800DFDA0 21800202 */  addu       $s0, $s0, $v0
  .L800DFDA4:
    /* D05A4 800DFDA4 01005432 */  andi       $s4, $s2, 0x1
  .L800DFDA8:
    /* D05A8 800DFDA8 3C10828F */  lw         $v0, %gp_rel(D_80159514)($gp)
    /* D05AC 800DFDAC 00000000 */  nop
    /* D05B0 800DFDB0 2A102202 */  slt        $v0, $s1, $v0
    /* D05B4 800DFDB4 3F004010 */  beqz       $v0, .L800DFEB4
    /* D05B8 800DFDB8 40101100 */   sll       $v0, $s1, 1
    /* D05BC 800DFDBC 4410848F */  lw         $a0, %gp_rel(D_8015951C)($gp)
    /* D05C0 800DFDC0 173B030C */  jal        func_800CEC5C
    /* D05C4 800DFDC4 21204400 */   addu      $a0, $v0, $a0
    /* D05C8 800DFDC8 21204000 */  addu       $a0, $v0, $zero
    /* D05CC 800DFDCC 01008230 */  andi       $v0, $a0, 0x1
    /* D05D0 800DFDD0 02004010 */  beqz       $v0, .L800DFDDC
    /* D05D4 800DFDD4 00000000 */   nop
    /* D05D8 800DFDD8 FFFF8424 */  addiu      $a0, $a0, -0x1
  .L800DFDDC:
    /* D05DC 800DFDDC 02008012 */  beqz       $s4, .L800DFDE8
    /* D05E0 800DFDE0 00000000 */   nop
    /* D05E4 800DFDE4 01008424 */  addiu      $a0, $a0, 0x1
  .L800DFDE8:
    /* D05E8 800DFDE8 0D004006 */  bltz       $s2, .L800DFE20
    /* D05EC 800DFDEC 21180000 */   addu      $v1, $zero, $zero
    /* D05F0 800DFDF0 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* D05F4 800DFDF4 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* D05F8 800DFDF8 00000000 */  nop
    /* D05FC 800DFDFC 2A104202 */  slt        $v0, $s2, $v0
    /* D0600 800DFE00 07004010 */  beqz       $v0, .L800DFE20
    /* D0604 800DFE04 00000000 */   nop
    /* D0608 800DFE08 05008004 */  bltz       $a0, .L800DFE20
    /* D060C 800DFE0C 00000000 */   nop
    /* D0610 800DFE10 1280023C */  lui        $v0, %hi(D_8011C308)
    /* D0614 800DFE14 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* D0618 800DFE18 00000000 */  nop
    /* D061C 800DFE1C 2A188200 */  slt        $v1, $a0, $v0
  .L800DFE20:
    /* D0620 800DFE20 22006010 */  beqz       $v1, .L800DFEAC
    /* D0624 800DFE24 00000000 */   nop
    /* D0628 800DFE28 187E030C */  jal        func_800DF860
    /* D062C 800DFE2C 21284002 */   addu      $a1, $s2, $zero
    /* D0630 800DFE30 21184000 */  addu       $v1, $v0, $zero
    /* D0634 800DFE34 0000E286 */  lh         $v0, 0x0($s7)
    /* D0638 800DFE38 00000000 */  nop
    /* D063C 800DFE3C 18006202 */  mult       $s3, $v0
    /* D0640 800DFE40 12300000 */  mflo       $a2
    /* D0644 800DFE44 2110D000 */  addu       $v0, $a2, $s0
    /* D0648 800DFE48 40100200 */  sll        $v0, $v0, 1
    /* D064C 800DFE4C 21105500 */  addu       $v0, $v0, $s5
    /* D0650 800DFE50 0A008012 */  beqz       $s4, .L800DFE7C
    /* D0654 800DFE54 000043A4 */   sh        $v1, 0x0($v0)
    /* D0658 800DFE58 0000E286 */  lh         $v0, 0x0($s7)
    /* D065C 800DFE5C 00000000 */  nop
    /* D0660 800DFE60 18006202 */  mult       $s3, $v0
    /* D0664 800DFE64 12300000 */  mflo       $a2
    /* D0668 800DFE68 2110D000 */  addu       $v0, $a2, $s0
    /* D066C 800DFE6C 40100200 */  sll        $v0, $v0, 1
    /* D0670 800DFE70 21105500 */  addu       $v0, $v0, $s5
    /* D0674 800DFE74 A87F0308 */  j          .L800DFEA0
    /* D0678 800DFE78 FEFF43A4 */   sh        $v1, -0x2($v0)
  .L800DFE7C:
    /* D067C 800DFE7C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* D0680 800DFE80 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* D0684 800DFE84 00000000 */  nop
    /* D0688 800DFE88 18006202 */  mult       $s3, $v0
    /* D068C 800DFE8C 12300000 */  mflo       $a2
    /* D0690 800DFE90 2110D000 */  addu       $v0, $a2, $s0
    /* D0694 800DFE94 40100200 */  sll        $v0, $v0, 1
    /* D0698 800DFE98 21105500 */  addu       $v0, $v0, $s5
    /* D069C 800DFE9C 020043A4 */  sh         $v1, 0x2($v0)
  .L800DFEA0:
    /* D06A0 800DFEA0 3410828F */  lw         $v0, %gp_rel(D_8015950C)($gp)
    /* D06A4 800DFEA4 00000000 */  nop
    /* D06A8 800DFEA8 21800202 */  addu       $s0, $s0, $v0
  .L800DFEAC:
    /* D06AC 800DFEAC 6A7F0308 */  j          .L800DFDA8
    /* D06B0 800DFEB0 01003126 */   addiu     $s1, $s1, 0x1
  .L800DFEB4:
    /* D06B4 800DFEB4 3810828F */  lw         $v0, %gp_rel(D_80159510)($gp)
    /* D06B8 800DFEB8 00000000 */  nop
    /* D06BC 800DFEBC 21986202 */  addu       $s3, $s3, $v0
    /* D06C0 800DFEC0 597F0308 */  j          .L800DFD64
    /* D06C4 800DFEC4 0100D626 */   addiu     $s6, $s6, 0x1
  .L800DFEC8:
    /* D06C8 800DFEC8 1480103C */  lui        $s0, %hi(D_801388EC)
    /* D06CC 800DFECC EC881026 */  addiu      $s0, $s0, %lo(D_801388EC)
    /* D06D0 800DFED0 0000048E */  lw         $a0, 0x0($s0)
    /* D06D4 800DFED4 00000000 */  nop
    /* D06D8 800DFED8 0C008424 */  addiu      $a0, $a0, 0xC
    /* D06DC 800DFEDC D78D030C */  jal        LoadImage
    /* D06E0 800DFEE0 2128A002 */   addu      $a1, $s5, $zero
    /* D06E4 800DFEE4 C0000224 */  addiu      $v0, $zero, 0xC0
    /* D06E8 800DFEE8 F7FF02A2 */  sb         $v0, -0x9($s0)
    /* D06EC 800DFEEC F8FF02A2 */  sb         $v0, -0x8($s0)
    /* D06F0 800DFEF0 F9FF02A2 */  sb         $v0, -0x7($s0)
    /* D06F4 800DFEF4 89D6030C */  jal        func_800F5A24
    /* D06F8 800DFEF8 2120C003 */   addu      $a0, $fp, $zero
    /* D06FC 800DFEFC C6D5030C */  jal        func_800F5718
    /* D0700 800DFF00 2120C003 */   addu      $a0, $fp, $zero
  .L800DFF04:
    /* D0704 800DFF04 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* D0708 800DFF08 3800BE8F */  lw         $fp, 0x38($sp)
    /* D070C 800DFF0C 3400B78F */  lw         $s7, 0x34($sp)
    /* D0710 800DFF10 3000B68F */  lw         $s6, 0x30($sp)
    /* D0714 800DFF14 2C00B58F */  lw         $s5, 0x2C($sp)
    /* D0718 800DFF18 2800B48F */  lw         $s4, 0x28($sp)
    /* D071C 800DFF1C 2400B38F */  lw         $s3, 0x24($sp)
    /* D0720 800DFF20 2000B28F */  lw         $s2, 0x20($sp)
    /* D0724 800DFF24 1C00B18F */  lw         $s1, 0x1C($sp)
    /* D0728 800DFF28 1800B08F */  lw         $s0, 0x18($sp)
    /* D072C 800DFF2C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* D0730 800DFF30 0800E003 */  jr         $ra
    /* D0734 800DFF34 00000000 */   nop
endlabel func_800DFC88
