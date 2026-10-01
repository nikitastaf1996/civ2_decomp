.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001DE00, 0x2E4

glabel func_8001DE00
    /* E600 8001DE00 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* E604 8001DE04 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* E608 8001DE08 2800B4AF */  sw         $s4, 0x28($sp)
    /* E60C 8001DE0C 2400B3AF */  sw         $s3, 0x24($sp)
    /* E610 8001DE10 2000B2AF */  sw         $s2, 0x20($sp)
    /* E614 8001DE14 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* E618 8001DE18 1800B0AF */  sw         $s0, 0x18($sp)
    /* E61C 8001DE1C 21980000 */  addu       $s3, $zero, $zero
    /* E620 8001DE20 1680023C */  lui        $v0, %hi(D_80158864)
    /* E624 8001DE24 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* E628 8001DE28 00000000 */  nop
    /* E62C 8001DE2C 08005480 */  lb         $s4, 0x8($v0)
    /* E630 8001DE30 21900000 */  addu       $s2, $zero, $zero
  .L8001DE34:
    /* E634 8001DE34 1400422A */  slti       $v0, $s2, 0x14
    /* E638 8001DE38 39004010 */  beqz       $v0, .L8001DF20
    /* E63C 8001DE3C 00000000 */   nop
    /* E640 8001DE40 1680023C */  lui        $v0, %hi(D_80158864)
    /* E644 8001DE44 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* E648 8001DE48 00000000 */  nop
    /* E64C 8001DE4C 00004284 */  lh         $v0, 0x0($v0)
    /* E650 8001DE50 1280013C */  lui        $at, %hi(D_8011AC3C)
    /* E654 8001DE54 21083200 */  addu       $at, $at, $s2
    /* E658 8001DE58 3CAC2480 */  lb         $a0, %lo(D_8011AC3C)($at)
    /* E65C 8001DE5C 173B030C */  jal        func_800CEC5C
    /* E660 8001DE60 21204400 */   addu      $a0, $v0, $a0
    /* E664 8001DE64 21884000 */  addu       $s1, $v0, $zero
    /* E668 8001DE68 1680023C */  lui        $v0, %hi(D_80158864)
    /* E66C 8001DE6C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* E670 8001DE70 00000000 */  nop
    /* E674 8001DE74 02004384 */  lh         $v1, 0x2($v0)
    /* E678 8001DE78 1280013C */  lui        $at, %hi(D_8011AC6C)
    /* E67C 8001DE7C 21083200 */  addu       $at, $at, $s2
    /* E680 8001DE80 6CAC2280 */  lb         $v0, %lo(D_8011AC6C)($at)
    /* E684 8001DE84 00000000 */  nop
    /* E688 8001DE88 21806200 */  addu       $s0, $v1, $v0
    /* E68C 8001DE8C 0D000006 */  bltz       $s0, .L8001DEC4
    /* E690 8001DE90 21180000 */   addu      $v1, $zero, $zero
    /* E694 8001DE94 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* E698 8001DE98 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* E69C 8001DE9C 00000000 */  nop
    /* E6A0 8001DEA0 2A100202 */  slt        $v0, $s0, $v0
    /* E6A4 8001DEA4 07004010 */  beqz       $v0, .L8001DEC4
    /* E6A8 8001DEA8 00000000 */   nop
    /* E6AC 8001DEAC 05002006 */  bltz       $s1, .L8001DEC4
    /* E6B0 8001DEB0 00000000 */   nop
    /* E6B4 8001DEB4 1280023C */  lui        $v0, %hi(D_8011C308)
    /* E6B8 8001DEB8 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* E6BC 8001DEBC 00000000 */  nop
    /* E6C0 8001DEC0 2A182202 */  slt        $v1, $s1, $v0
  .L8001DEC4:
    /* E6C4 8001DEC4 14006010 */  beqz       $v1, .L8001DF18
    /* E6C8 8001DEC8 21202002 */   addu      $a0, $s1, $zero
    /* E6CC 8001DECC 6961020C */  jal        func_800985A4
    /* E6D0 8001DED0 21280002 */   addu      $a1, $s0, $zero
    /* E6D4 8001DED4 80004230 */  andi       $v0, $v0, 0x80
    /* E6D8 8001DED8 0F004010 */  beqz       $v0, .L8001DF18
    /* E6DC 8001DEDC 06000224 */   addiu     $v0, $zero, 0x6
    /* E6E0 8001DEE0 1000A2AF */  sw         $v0, 0x10($sp)
    /* E6E4 8001DEE4 21208002 */  addu       $a0, $s4, $zero
    /* E6E8 8001DEE8 21282002 */  addu       $a1, $s1, $zero
    /* E6EC 8001DEEC 21300002 */  addu       $a2, $s0, $zero
    /* E6F0 8001DEF0 E5C2020C */  jal        func_800B0B94
    /* E6F4 8001DEF4 15000724 */   addiu     $a3, $zero, 0x15
    /* E6F8 8001DEF8 1680043C */  lui        $a0, %hi(D_80158864)
    /* E6FC 8001DEFC 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* E700 8001DF00 00000000 */  nop
    /* E704 8001DF04 0400828C */  lw         $v0, 0x4($a0)
    /* E708 8001DF08 0800033C */  lui        $v1, (0x80000 >> 16)
    /* E70C 8001DF0C 25104300 */  or         $v0, $v0, $v1
    /* E710 8001DF10 040082AC */  sw         $v0, 0x4($a0)
    /* E714 8001DF14 01001324 */  addiu      $s3, $zero, 0x1
  .L8001DF18:
    /* E718 8001DF18 8D770008 */  j          .L8001DE34
    /* E71C 8001DF1C 01005226 */   addiu     $s2, $s2, 0x1
  .L8001DF20:
    /* E720 8001DF20 67006016 */  bnez       $s3, .L8001E0C0
    /* E724 8001DF24 21208002 */   addu      $a0, $s4, $zero
    /* E728 8001DF28 8ACA010C */  jal        func_80072A28
    /* E72C 8001DF2C 43000524 */   addiu     $a1, $zero, 0x43
    /* E730 8001DF30 19004010 */  beqz       $v0, .L8001DF98
    /* E734 8001DF34 00000000 */   nop
    /* E738 8001DF38 1280023C */  lui        $v0, %hi(D_8011A275)
    /* E73C 8001DF3C 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* E740 8001DF40 00000000 */  nop
    /* E744 8001DF44 07108202 */  srav       $v0, $v0, $s4
    /* E748 8001DF48 01004230 */  andi       $v0, $v0, 0x1
    /* E74C 8001DF4C 05004010 */  beqz       $v0, .L8001DF64
    /* E750 8001DF50 03000224 */   addiu     $v0, $zero, 0x3
    /* E754 8001DF54 3C00828F */  lw         $v0, %gp_rel(D_80158514)($gp)
    /* E758 8001DF58 00000000 */  nop
    /* E75C 8001DF5C 0E004014 */  bnez       $v0, .L8001DF98
    /* E760 8001DF60 03000224 */   addiu     $v0, $zero, 0x3
  .L8001DF64:
    /* E764 8001DF64 EC00848F */  lw         $a0, %gp_rel(D_801585C4)($gp)
    /* E768 8001DF68 00000000 */  nop
    /* E76C 8001DF6C 2A104400 */  slt        $v0, $v0, $a0
    /* E770 8001DF70 02004010 */  beqz       $v0, .L8001DF7C
    /* E774 8001DF74 03000324 */   addiu     $v1, $zero, 0x3
    /* E778 8001DF78 21188000 */  addu       $v1, $a0, $zero
  .L8001DF7C:
    /* E77C 8001DF7C EC0083AF */  sw         $v1, %gp_rel(D_801585C4)($gp)
    /* E780 8001DF80 8C76000C */  jal        func_8001DA30
    /* E784 8001DF84 00000000 */   nop
    /* E788 8001DF88 3C00828F */  lw         $v0, %gp_rel(D_80158514)($gp)
    /* E78C 8001DF8C 00000000 */  nop
    /* E790 8001DF90 4B004010 */  beqz       $v0, .L8001E0C0
    /* E794 8001DF94 00000000 */   nop
  .L8001DF98:
    /* E798 8001DF98 EC00828F */  lw         $v0, %gp_rel(D_801585C4)($gp)
    /* E79C 8001DF9C 00000000 */  nop
    /* E7A0 8001DFA0 02004224 */  addiu      $v0, $v0, 0x2
    /* E7A4 8001DFA4 EC0082AF */  sw         $v0, %gp_rel(D_801585C4)($gp)
    /* E7A8 8001DFA8 3C00828F */  lw         $v0, %gp_rel(D_80158514)($gp)
    /* E7AC 8001DFAC 00000000 */  nop
    /* E7B0 8001DFB0 08004014 */  bnez       $v0, .L8001DFD4
    /* E7B4 8001DFB4 02000224 */   addiu     $v0, $zero, 0x2
    /* E7B8 8001DFB8 EC0082AF */  sw         $v0, %gp_rel(D_801585C4)($gp)
    /* E7BC 8001DFBC 8C76000C */  jal        func_8001DA30
    /* E7C0 8001DFC0 00000000 */   nop
    /* E7C4 8001DFC4 3C00828F */  lw         $v0, %gp_rel(D_80158514)($gp)
    /* E7C8 8001DFC8 00000000 */  nop
    /* E7CC 8001DFCC 35004010 */  beqz       $v0, .L8001E0A4
    /* E7D0 8001DFD0 F7FF043C */   lui       $a0, (0xFFF7FFFF >> 16)
  .L8001DFD4:
    /* E7D4 8001DFD4 EC00838F */  lw         $v1, %gp_rel(D_801585C4)($gp)
    /* E7D8 8001DFD8 00000000 */  nop
    /* E7DC 8001DFDC 03006228 */  slti       $v0, $v1, 0x3
    /* E7E0 8001DFE0 14004014 */  bnez       $v0, .L8001E034
    /* E7E4 8001DFE4 00000000 */   nop
    /* E7E8 8001DFE8 1680023C */  lui        $v0, %hi(D_80158864)
    /* E7EC 8001DFEC 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* E7F0 8001DFF0 00000000 */  nop
    /* E7F4 8001DFF4 09004280 */  lb         $v0, 0x9($v0)
    /* E7F8 8001DFF8 00000000 */  nop
    /* E7FC 8001DFFC 05004228 */  slti       $v0, $v0, 0x5
    /* E800 8001E000 02004014 */  bnez       $v0, .L8001E00C
    /* E804 8001E004 01006224 */   addiu     $v0, $v1, 0x1
    /* E808 8001E008 EC0082AF */  sw         $v0, %gp_rel(D_801585C4)($gp)
  .L8001E00C:
    /* E80C 8001E00C 1680043C */  lui        $a0, %hi(D_80158860)
    /* E810 8001E010 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* E814 8001E014 C826020C */  jal        func_80089B20
    /* E818 8001E018 01000524 */   addiu     $a1, $zero, 0x1
    /* E81C 8001E01C 05004010 */  beqz       $v0, .L8001E034
    /* E820 8001E020 00000000 */   nop
    /* E824 8001E024 EC00828F */  lw         $v0, %gp_rel(D_801585C4)($gp)
    /* E828 8001E028 00000000 */  nop
    /* E82C 8001E02C 01004224 */  addiu      $v0, $v0, 0x1
    /* E830 8001E030 EC0082AF */  sw         $v0, %gp_rel(D_801585C4)($gp)
  .L8001E034:
    /* E834 8001E034 1680023C */  lui        $v0, %hi(D_80158864)
    /* E838 8001E038 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* E83C 8001E03C 00000000 */  nop
    /* E840 8001E040 09004280 */  lb         $v0, 0x9($v0)
    /* E844 8001E044 00000000 */  nop
    /* E848 8001E048 04004228 */  slti       $v0, $v0, 0x4
    /* E84C 8001E04C 05004010 */  beqz       $v0, .L8001E064
    /* E850 8001E050 00000000 */   nop
    /* E854 8001E054 EC00828F */  lw         $v0, %gp_rel(D_801585C4)($gp)
    /* E858 8001E058 00000000 */  nop
    /* E85C 8001E05C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* E860 8001E060 EC0082AF */  sw         $v0, %gp_rel(D_801585C4)($gp)
  .L8001E064:
    /* E864 8001E064 EC00828F */  lw         $v0, %gp_rel(D_801585C4)($gp)
    /* E868 8001E068 00000000 */  nop
    /* E86C 8001E06C 1000A2AF */  sw         $v0, 0x10($sp)
    /* E870 8001E070 21208002 */  addu       $a0, $s4, $zero
    /* E874 8001E074 E400858F */  lw         $a1, %gp_rel(D_801585BC)($gp)
    /* E878 8001E078 E800868F */  lw         $a2, %gp_rel(D_801585C0)($gp)
    /* E87C 8001E07C E5C2020C */  jal        func_800B0B94
    /* E880 8001E080 15000724 */   addiu     $a3, $zero, 0x15
    /* E884 8001E084 1680043C */  lui        $a0, %hi(D_80158864)
    /* E888 8001E088 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* E88C 8001E08C 00000000 */  nop
    /* E890 8001E090 0400828C */  lw         $v0, 0x4($a0)
    /* E894 8001E094 0800033C */  lui        $v1, (0x80000 >> 16)
    /* E898 8001E098 25104300 */  or         $v0, $v0, $v1
    /* E89C 8001E09C 30780008 */  j          .L8001E0C0
    /* E8A0 8001E0A0 040082AC */   sw        $v0, 0x4($a0)
  .L8001E0A4:
    /* E8A4 8001E0A4 1680023C */  lui        $v0, %hi(D_80158864)
    /* E8A8 8001E0A8 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* E8AC 8001E0AC 00000000 */  nop
    /* E8B0 8001E0B0 0400438C */  lw         $v1, 0x4($v0)
    /* E8B4 8001E0B4 FFFF8434 */  ori        $a0, $a0, (0xFFF7FFFF & 0xFFFF)
    /* E8B8 8001E0B8 24186400 */  and        $v1, $v1, $a0
    /* E8BC 8001E0BC 040043AC */  sw         $v1, 0x4($v0)
  .L8001E0C0:
    /* E8C0 8001E0C0 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* E8C4 8001E0C4 2800B48F */  lw         $s4, 0x28($sp)
    /* E8C8 8001E0C8 2400B38F */  lw         $s3, 0x24($sp)
    /* E8CC 8001E0CC 2000B28F */  lw         $s2, 0x20($sp)
    /* E8D0 8001E0D0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* E8D4 8001E0D4 1800B08F */  lw         $s0, 0x18($sp)
    /* E8D8 8001E0D8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* E8DC 8001E0DC 0800E003 */  jr         $ra
    /* E8E0 8001E0E0 00000000 */   nop
endlabel func_8001DE00
