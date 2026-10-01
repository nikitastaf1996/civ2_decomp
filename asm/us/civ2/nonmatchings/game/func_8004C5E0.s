.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C5E0, 0x3C0

glabel func_8004C5E0
    /* 3CDE0 8004C5E0 18FDBD27 */  addiu      $sp, $sp, -0x2E8
    /* 3CDE4 8004C5E4 E402BFAF */  sw         $ra, 0x2E4($sp)
    /* 3CDE8 8004C5E8 E002B6AF */  sw         $s6, 0x2E0($sp)
    /* 3CDEC 8004C5EC DC02B5AF */  sw         $s5, 0x2DC($sp)
    /* 3CDF0 8004C5F0 D802B4AF */  sw         $s4, 0x2D8($sp)
    /* 3CDF4 8004C5F4 D402B3AF */  sw         $s3, 0x2D4($sp)
    /* 3CDF8 8004C5F8 D002B2AF */  sw         $s2, 0x2D0($sp)
    /* 3CDFC 8004C5FC CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* 3CE00 8004C600 C802B0AF */  sw         $s0, 0x2C8($sp)
    /* 3CE04 8004C604 21908000 */  addu       $s2, $a0, $zero
    /* 3CE08 8004C608 2180A000 */  addu       $s0, $a1, $zero
    /* 3CE0C 8004C60C 21A8C000 */  addu       $s5, $a2, $zero
    /* 3CE10 8004C610 21A0E000 */  addu       $s4, $a3, $zero
    /* 3CE14 8004C614 21B00000 */  addu       $s6, $zero, $zero
    /* 3CE18 8004C618 2800A427 */  addiu      $a0, $sp, 0x28
    /* 3CE1C 8004C61C ADC5020C */  jal        func_800B16B4
    /* 3CE20 8004C620 00200524 */   addiu     $a1, $zero, 0x2000
    /* 3CE24 8004C624 6001828F */  lw         $v0, %gp_rel(D_80158638)($gp)
    /* 3CE28 8004C628 00000000 */  nop
    /* 3CE2C 8004C62C C9004014 */  bnez       $v0, .L8004C954
    /* 3CE30 8004C630 01000224 */   addiu     $v0, $zero, 0x1
    /* 3CE34 8004C634 600182AF */  sw         $v0, %gp_rel(D_80158638)($gp)
  .L8004C638:
    /* 3CE38 8004C638 6401828F */  lw         $v0, %gp_rel(D_8015863C)($gp)
    /* 3CE3C 8004C63C 00000000 */  nop
    /* 3CE40 8004C640 BE004014 */  bnez       $v0, .L8004C93C
    /* 3CE44 8004C644 40101000 */   sll       $v0, $s0, 1
    /* 3CE48 8004C648 21105000 */  addu       $v0, $v0, $s0
    /* 3CE4C 8004C64C 80100200 */  sll        $v0, $v0, 2
    /* 3CE50 8004C650 23105000 */  subu       $v0, $v0, $s0
    /* 3CE54 8004C654 00110200 */  sll        $v0, $v0, 4
    /* 3CE58 8004C658 23105000 */  subu       $v0, $v0, $s0
    /* 3CE5C 8004C65C C0200200 */  sll        $a0, $v0, 3
    /* 3CE60 8004C660 1180013C */  lui        $at, %hi(D_80117790)
    /* 3CE64 8004C664 21082400 */  addu       $at, $at, $a0
    /* 3CE68 8004C668 90772290 */  lbu        $v0, %lo(D_80117790)($at)
    /* 3CE6C 8004C66C 00000000 */  nop
    /* 3CE70 8004C670 0C004010 */  beqz       $v0, .L8004C6A4
    /* 3CE74 8004C674 00000000 */   nop
    /* 3CE78 8004C678 1180023C */  lui        $v0, %hi(D_801176B4)
    /* 3CE7C 8004C67C B4764224 */  addiu      $v0, $v0, %lo(D_801176B4)
    /* 3CE80 8004C680 80181200 */  sll        $v1, $s2, 2
    /* 3CE84 8004C684 21108200 */  addu       $v0, $a0, $v0
    /* 3CE88 8004C688 21186200 */  addu       $v1, $v1, $v0
    /* 3CE8C 8004C68C 0000628C */  lw         $v0, 0x0($v1)
    /* 3CE90 8004C690 00000000 */  nop
    /* 3CE94 8004C694 00014230 */  andi       $v0, $v0, 0x100
    /* 3CE98 8004C698 03004014 */  bnez       $v0, .L8004C6A8
    /* 3CE9C 8004C69C 21204002 */   addu      $a0, $s2, $zero
    /* 3CEA0 8004C6A0 01001624 */  addiu      $s6, $zero, 0x1
  .L8004C6A4:
    /* 3CEA4 8004C6A4 21204002 */  addu       $a0, $s2, $zero
  .L8004C6A8:
    /* 3CEA8 8004C6A8 6928010C */  jal        func_8004A1A4
    /* 3CEAC 8004C6AC 21280002 */   addu      $a1, $s0, $zero
    /* 3CEB0 8004C6B0 0D008006 */  bltz       $s4, .L8004C6E8
    /* 3CEB4 8004C6B4 21180000 */   addu      $v1, $zero, $zero
    /* 3CEB8 8004C6B8 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 3CEBC 8004C6BC 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 3CEC0 8004C6C0 00000000 */  nop
    /* 3CEC4 8004C6C4 2A108202 */  slt        $v0, $s4, $v0
    /* 3CEC8 8004C6C8 07004010 */  beqz       $v0, .L8004C6E8
    /* 3CECC 8004C6CC 00000000 */   nop
    /* 3CED0 8004C6D0 0500A006 */  bltz       $s5, .L8004C6E8
    /* 3CED4 8004C6D4 00000000 */   nop
    /* 3CED8 8004C6D8 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 3CEDC 8004C6DC 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 3CEE0 8004C6E0 00000000 */  nop
    /* 3CEE4 8004C6E4 2A18A202 */  slt        $v1, $s5, $v0
  .L8004C6E8:
    /* 3CEE8 8004C6E8 09006010 */  beqz       $v1, .L8004C710
    /* 3CEEC 8004C6EC 2120A002 */   addu      $a0, $s5, $zero
    /* 3CEF0 8004C6F0 21288002 */  addu       $a1, $s4, $zero
    /* 3CEF4 8004C6F4 6D7C020C */  jal        func_8009F1B4
    /* 3CEF8 8004C6F8 21304002 */   addu      $a2, $s2, $zero
    /* 3CEFC 8004C6FC 05004014 */  bnez       $v0, .L8004C714
    /* 3CF00 8004C700 21204002 */   addu      $a0, $s2, $zero
    /* 3CF04 8004C704 2120A002 */  addu       $a0, $s5, $zero
    /* 3CF08 8004C708 426F020C */  jal        func_8009BD08
    /* 3CF0C 8004C70C 21288002 */   addu      $a1, $s4, $zero
  .L8004C710:
    /* 3CF10 8004C710 21204002 */  addu       $a0, $s2, $zero
  .L8004C714:
    /* 3CF14 8004C714 4130010C */  jal        func_8004C104
    /* 3CF18 8004C718 21280002 */   addu      $a1, $s0, $zero
    /* 3CF1C 8004C71C 1200C012 */  beqz       $s6, .L8004C768
    /* 3CF20 8004C720 00000000 */   nop
    /* 3CF24 8004C724 8A54020C */  jal        func_80095228
    /* 3CF28 8004C728 21200002 */   addu      $a0, $s0, $zero
    /* 3CF2C 8004C72C 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 3CF30 8004C730 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 3CF34 8004C734 A587030C */  jal        func_800E1E94
    /* 3CF38 8004C738 21284000 */   addu      $a1, $v0, $zero
    /* 3CF3C 8004C73C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3CF40 8004C740 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3CF44 8004C744 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3CF48 8004C748 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3CF4C 8004C74C F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3CF50 8004C750 F7460524 */  addiu      $a1, $zero, 0x46F7
    /* 3CF54 8004C754 21300000 */  addu       $a2, $zero, $zero
    /* 3CF58 8004C758 B4E2020C */  jal        func_800B8AD0
    /* 3CF5C 8004C75C 21380000 */   addu      $a3, $zero, $zero
    /* 3CF60 8004C760 4F320108 */  j          .L8004C93C
    /* 3CF64 8004C764 00000000 */   nop
  .L8004C768:
    /* 3CF68 8004C768 2554020C */  jal        func_80095094
    /* 3CF6C 8004C76C 21200002 */   addu      $a0, $s0, $zero
    /* 3CF70 8004C770 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 3CF74 8004C774 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 3CF78 8004C778 A587030C */  jal        func_800E1E94
    /* 3CF7C 8004C77C 21284000 */   addu      $a1, $v0, $zero
    /* 3CF80 8004C780 F853020C */  jal        func_80094FE0
    /* 3CF84 8004C784 21200002 */   addu      $a0, $s0, $zero
    /* 3CF88 8004C788 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 3CF8C 8004C78C 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 3CF90 8004C790 A587030C */  jal        func_800E1E94
    /* 3CF94 8004C794 21284000 */   addu      $a1, $v0, $zero
    /* 3CF98 8004C798 5D54020C */  jal        func_80095174
    /* 3CF9C 8004C79C 21200002 */   addu      $a0, $s0, $zero
    /* 3CFA0 8004C7A0 1280043C */  lui        $a0, %hi(D_8011FDE8)
    /* 3CFA4 8004C7A4 E8FD8424 */  addiu      $a0, $a0, %lo(D_8011FDE8)
    /* 3CFA8 8004C7A8 A587030C */  jal        func_800E1E94
    /* 3CFAC 8004C7AC 21284000 */   addu      $a1, $v0, $zero
    /* 3CFB0 8004C7B0 40101000 */  sll        $v0, $s0, 1
    /* 3CFB4 8004C7B4 21105000 */  addu       $v0, $v0, $s0
    /* 3CFB8 8004C7B8 80100200 */  sll        $v0, $v0, 2
    /* 3CFBC 8004C7BC 23105000 */  subu       $v0, $v0, $s0
    /* 3CFC0 8004C7C0 00110200 */  sll        $v0, $v0, 4
    /* 3CFC4 8004C7C4 23105000 */  subu       $v0, $v0, $s0
    /* 3CFC8 8004C7C8 C0100200 */  sll        $v0, $v0, 3
    /* 3CFCC 8004C7CC 1180013C */  lui        $at, %hi(D_80117698)
    /* 3CFD0 8004C7D0 21082200 */  addu       $at, $at, $v0
    /* 3CFD4 8004C7D4 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* 3CFD8 8004C7D8 00000000 */  nop
    /* 3CFDC 8004C7DC 40100300 */  sll        $v0, $v1, 1
    /* 3CFE0 8004C7E0 21104300 */  addu       $v0, $v0, $v1
    /* 3CFE4 8004C7E4 00110200 */  sll        $v0, $v0, 4
    /* 3CFE8 8004C7E8 1180013C */  lui        $at, %hi(D_80116AD4)
    /* 3CFEC 8004C7EC 21082200 */  addu       $at, $at, $v0
    /* 3CFF0 8004C7F0 D46A2290 */  lbu        $v0, %lo(D_80116AD4)($at)
    /* 3CFF4 8004C7F4 00000000 */  nop
    /* 3CFF8 8004C7F8 05004010 */  beqz       $v0, .L8004C810
    /* 3CFFC 8004C7FC 00000000 */   nop
    /* 3D000 8004C800 1680023C */  lui        $v0, %hi(D_8015894C)
    /* 3D004 8004C804 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* 3D008 8004C808 08320108 */  j          .L8004C820
    /* 3D00C 8004C80C D8014224 */   addiu     $v0, $v0, 0x1D8
  .L8004C810:
    /* 3D010 8004C810 1680023C */  lui        $v0, %hi(D_8015894C)
    /* 3D014 8004C814 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* 3D018 8004C818 00000000 */  nop
    /* 3D01C 8004C81C D4014224 */  addiu      $v0, $v0, 0x1D4
  .L8004C820:
    /* 3D020 8004C820 0000458C */  lw         $a1, 0x0($v0)
    /* 3D024 8004C824 ABAC020C */  jal        func_800AB2AC
    /* 3D028 8004C828 04000424 */   addiu     $a0, $zero, 0x4
    /* 3D02C 8004C82C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3D030 8004C830 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3D034 8004C834 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3D038 8004C838 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3D03C 8004C83C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 3D040 8004C840 2800A427 */  addiu      $a0, $sp, 0x28
    /* 3D044 8004C844 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* 3D048 8004C848 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* 3D04C 8004C84C 15460624 */  addiu      $a2, $zero, 0x4615
    /* 3D050 8004C850 2CE0020C */  jal        func_800B80B0
    /* 3D054 8004C854 21380000 */   addu      $a3, $zero, $zero
    /* 3D058 8004C858 1280133C */  lui        $s3, %hi(D_8011ACB4)
    /* 3D05C 8004C85C B4AC7326 */  addiu      $s3, $s3, %lo(D_8011ACB4)
    /* 3D060 8004C860 0000658E */  lw         $a1, 0x0($s3)
    /* 3D064 8004C864 00000000 */  nop
    /* 3D068 8004C868 40100500 */  sll        $v0, $a1, 1
    /* 3D06C 8004C86C 21104500 */  addu       $v0, $v0, $a1
    /* 3D070 8004C870 80100200 */  sll        $v0, $v0, 2
    /* 3D074 8004C874 23104500 */  subu       $v0, $v0, $a1
    /* 3D078 8004C878 00110200 */  sll        $v0, $v0, 4
    /* 3D07C 8004C87C 23104500 */  subu       $v0, $v0, $a1
    /* 3D080 8004C880 C0100200 */  sll        $v0, $v0, 3
    /* 3D084 8004C884 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 3D088 8004C888 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 3D08C 8004C88C 80181000 */  sll        $v1, $s0, 2
    /* 3D090 8004C890 21104400 */  addu       $v0, $v0, $a0
    /* 3D094 8004C894 21186200 */  addu       $v1, $v1, $v0
    /* 3D098 8004C898 0000628C */  lw         $v0, 0x0($v1)
    /* 3D09C 8004C89C 00000000 */  nop
    /* 3D0A0 8004C8A0 80004230 */  andi       $v0, $v0, 0x80
    /* 3D0A4 8004C8A4 0B004014 */  bnez       $v0, .L8004C8D4
    /* 3D0A8 8004C8A8 21880000 */   addu      $s1, $zero, $zero
    /* 3D0AC 8004C8AC 2120A000 */  addu       $a0, $a1, $zero
    /* 3D0B0 8004C8B0 C17B030C */  jal        func_800DEF04
    /* 3D0B4 8004C8B4 18000524 */   addiu     $a1, $zero, 0x18
    /* 3D0B8 8004C8B8 06004014 */  bnez       $v0, .L8004C8D4
    /* 3D0BC 8004C8BC 00000000 */   nop
    /* 3D0C0 8004C8C0 0000648E */  lw         $a0, 0x0($s3)
    /* 3D0C4 8004C8C4 C17B030C */  jal        func_800DEF04
    /* 3D0C8 8004C8C8 09000524 */   addiu     $a1, $zero, 0x9
    /* 3D0CC 8004C8CC 02004010 */  beqz       $v0, .L8004C8D8
    /* 3D0D0 8004C8D0 00000000 */   nop
  .L8004C8D4:
    /* 3D0D4 8004C8D4 01001124 */  addiu      $s1, $zero, 0x1
  .L8004C8D8:
    /* 3D0D8 8004C8D8 0C002012 */  beqz       $s1, .L8004C90C
    /* 3D0DC 8004C8DC 2800A427 */   addiu     $a0, $sp, 0x28
    /* 3D0E0 8004C8E0 1680023C */  lui        $v0, %hi(D_8015894C)
    /* 3D0E4 8004C8E4 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* 3D0E8 8004C8E8 00000000 */  nop
    /* 3D0EC 8004C8EC A001448C */  lw         $a0, 0x1A0($v0)
    /* 3D0F0 8004C8F0 A63A030C */  jal        func_800CEA98
    /* 3D0F4 8004C8F4 00000000 */   nop
    /* 3D0F8 8004C8F8 2800A427 */  addiu      $a0, $sp, 0x28
    /* 3D0FC 8004C8FC 21284000 */  addu       $a1, $v0, $zero
    /* 3D100 8004C900 A8C9020C */  jal        func_800B26A0
    /* 3D104 8004C904 02000624 */   addiu     $a2, $zero, 0x2
    /* 3D108 8004C908 2800A427 */  addiu      $a0, $sp, 0x28
  .L8004C90C:
    /* 3D10C 8004C90C 52DF020C */  jal        func_800B7D48
    /* 3D110 8004C910 21280000 */   addu      $a1, $zero, $zero
    /* 3D114 8004C914 23100200 */  negu       $v0, $v0
    /* 3D118 8004C918 640182AF */  sw         $v0, %gp_rel(D_8015863C)($gp)
    /* 3D11C 8004C91C FEFF0324 */  addiu      $v1, $zero, -0x2
    /* 3D120 8004C920 06004314 */  bne        $v0, $v1, .L8004C93C
    /* 3D124 8004C924 21204002 */   addu      $a0, $s2, $zero
    /* 3D128 8004C928 1BFF020C */  jal        func_800BFC6C
    /* 3D12C 8004C92C 21280002 */   addu      $a1, $s0, $zero
    /* 3D130 8004C930 640180AF */  sw         $zero, %gp_rel(D_8015863C)($gp)
    /* 3D134 8004C934 8E310108 */  j          .L8004C638
    /* 3D138 8004C938 00000000 */   nop
  .L8004C93C:
    /* 3D13C 8004C93C 6401838F */  lw         $v1, %gp_rel(D_8015863C)($gp)
    /* 3D140 8004C940 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3D144 8004C944 03006210 */  beq        $v1, $v0, .L8004C954
    /* 3D148 8004C948 21204002 */   addu      $a0, $s2, $zero
    /* 3D14C 8004C94C 7330010C */  jal        func_8004C1CC
    /* 3D150 8004C950 21280002 */   addu      $a1, $s0, $zero
  .L8004C954:
    /* 3D154 8004C954 6401908F */  lw         $s0, %gp_rel(D_8015863C)($gp)
    /* 3D158 8004C958 00000000 */  nop
    /* 3D15C 8004C95C 27801000 */  nor        $s0, $zero, $s0
    /* 3D160 8004C960 2B801000 */  sltu       $s0, $zero, $s0
    /* 3D164 8004C964 2800A427 */  addiu      $a0, $sp, 0x28
    /* 3D168 8004C968 0AC7020C */  jal        func_800B1C28
    /* 3D16C 8004C96C 02000524 */   addiu     $a1, $zero, 0x2
    /* 3D170 8004C970 21100002 */  addu       $v0, $s0, $zero
    /* 3D174 8004C974 E402BF8F */  lw         $ra, 0x2E4($sp)
    /* 3D178 8004C978 E002B68F */  lw         $s6, 0x2E0($sp)
    /* 3D17C 8004C97C DC02B58F */  lw         $s5, 0x2DC($sp)
    /* 3D180 8004C980 D802B48F */  lw         $s4, 0x2D8($sp)
    /* 3D184 8004C984 D402B38F */  lw         $s3, 0x2D4($sp)
    /* 3D188 8004C988 D002B28F */  lw         $s2, 0x2D0($sp)
    /* 3D18C 8004C98C CC02B18F */  lw         $s1, 0x2CC($sp)
    /* 3D190 8004C990 C802B08F */  lw         $s0, 0x2C8($sp)
    /* 3D194 8004C994 E802BD27 */  addiu      $sp, $sp, 0x2E8
    /* 3D198 8004C998 0800E003 */  jr         $ra
    /* 3D19C 8004C99C 00000000 */   nop
endlabel func_8004C5E0
