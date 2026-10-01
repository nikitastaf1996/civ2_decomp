.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007CF34, 0x1DC

glabel func_8007CF34
    /* 6D734 8007CF34 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 6D738 8007CF38 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 6D73C 8007CF3C 3800BEAF */  sw         $fp, 0x38($sp)
    /* 6D740 8007CF40 3400B7AF */  sw         $s7, 0x34($sp)
    /* 6D744 8007CF44 3000B6AF */  sw         $s6, 0x30($sp)
    /* 6D748 8007CF48 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 6D74C 8007CF4C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 6D750 8007CF50 2400B3AF */  sw         $s3, 0x24($sp)
    /* 6D754 8007CF54 2000B2AF */  sw         $s2, 0x20($sp)
    /* 6D758 8007CF58 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 6D75C 8007CF5C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 6D760 8007CF60 21F08000 */  addu       $fp, $a0, $zero
    /* 6D764 8007CF64 21B8A000 */  addu       $s7, $a1, $zero
    /* 6D768 8007CF68 F760020C */  jal        func_800983DC
    /* 6D76C 8007CF6C 21A8C000 */   addu      $s5, $a2, $zero
    /* 6D770 8007CF70 21A04000 */  addu       $s4, $v0, $zero
    /* 6D774 8007CF74 2120C003 */  addu       $a0, $fp, $zero
    /* 6D778 8007CF78 1262020C */  jal        func_80098848
    /* 6D77C 8007CF7C 2128E002 */   addu      $a1, $s7, $zero
    /* 6D780 8007CF80 27B00200 */  nor        $s6, $zero, $v0
    /* 6D784 8007CF84 C2B71600 */  srl        $s6, $s6, 31
    /* 6D788 8007CF88 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6D78C 8007CF8C 080382AF */  sw         $v0, %gp_rel(D_801587E0)($gp)
    /* 6D790 8007CF90 21980000 */  addu       $s3, $zero, $zero
    /* 6D794 8007CF94 40101500 */  sll        $v0, $s5, 1
    /* 6D798 8007CF98 21105500 */  addu       $v0, $v0, $s5
    /* 6D79C 8007CF9C 80100200 */  sll        $v0, $v0, 2
    /* 6D7A0 8007CFA0 23105500 */  subu       $v0, $v0, $s5
    /* 6D7A4 8007CFA4 00110200 */  sll        $v0, $v0, 4
    /* 6D7A8 8007CFA8 23105500 */  subu       $v0, $v0, $s5
    /* 6D7AC 8007CFAC C0100200 */  sll        $v0, $v0, 3
    /* 6D7B0 8007CFB0 1180033C */  lui        $v1, %hi(D_801176B4)
    /* 6D7B4 8007CFB4 B4766324 */  addiu      $v1, $v1, %lo(D_801176B4)
    /* 6D7B8 8007CFB8 21104300 */  addu       $v0, $v0, $v1
    /* 6D7BC 8007CFBC 1000A2AF */  sw         $v0, 0x10($sp)
  .L8007CFC0:
    /* 6D7C0 8007CFC0 0803828F */  lw         $v0, %gp_rel(D_801587E0)($gp)
    /* 6D7C4 8007CFC4 00000000 */  nop
    /* 6D7C8 8007CFC8 40004104 */  bgez       $v0, .L8007D0CC
    /* 6D7CC 8007CFCC 0800622A */   slti      $v0, $s3, 0x8
    /* 6D7D0 8007CFD0 3E004010 */  beqz       $v0, .L8007D0CC
    /* 6D7D4 8007CFD4 00000000 */   nop
    /* 6D7D8 8007CFD8 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 6D7DC 8007CFDC 21083300 */  addu       $at, $at, $s3
    /* 6D7E0 8007CFE0 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 6D7E4 8007CFE4 173B030C */  jal        func_800CEC5C
    /* 6D7E8 8007CFE8 2120C403 */   addu      $a0, $fp, $a0
    /* 6D7EC 8007CFEC 21904000 */  addu       $s2, $v0, $zero
    /* 6D7F0 8007CFF0 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 6D7F4 8007CFF4 21083300 */  addu       $at, $at, $s3
    /* 6D7F8 8007CFF8 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 6D7FC 8007CFFC 00000000 */  nop
    /* 6D800 8007D000 2188E202 */  addu       $s1, $s7, $v0
    /* 6D804 8007D004 0D002006 */  bltz       $s1, .L8007D03C
    /* 6D808 8007D008 21180000 */   addu      $v1, $zero, $zero
    /* 6D80C 8007D00C 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6D810 8007D010 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6D814 8007D014 00000000 */  nop
    /* 6D818 8007D018 2A102202 */  slt        $v0, $s1, $v0
    /* 6D81C 8007D01C 07004010 */  beqz       $v0, .L8007D03C
    /* 6D820 8007D020 00000000 */   nop
    /* 6D824 8007D024 05004006 */  bltz       $s2, .L8007D03C
    /* 6D828 8007D028 00000000 */   nop
    /* 6D82C 8007D02C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6D830 8007D030 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6D834 8007D034 00000000 */  nop
    /* 6D838 8007D038 2A184202 */  slt        $v1, $s2, $v0
  .L8007D03C:
    /* 6D83C 8007D03C 21006010 */  beqz       $v1, .L8007D0C4
    /* 6D840 8007D040 00000000 */   nop
    /* 6D844 8007D044 0500C016 */  bnez       $s6, .L8007D05C
    /* 6D848 8007D048 21808002 */   addu      $s0, $s4, $zero
    /* 6D84C 8007D04C 21204002 */  addu       $a0, $s2, $zero
    /* 6D850 8007D050 F760020C */  jal        func_800983DC
    /* 6D854 8007D054 21282002 */   addu      $a1, $s1, $zero
    /* 6D858 8007D058 21804000 */  addu       $s0, $v0, $zero
  .L8007D05C:
    /* 6D85C 8007D05C 21204002 */  addu       $a0, $s2, $zero
    /* 6D860 8007D060 1262020C */  jal        func_80098848
    /* 6D864 8007D064 21282002 */   addu      $a1, $s1, $zero
    /* 6D868 8007D068 21184000 */  addu       $v1, $v0, $zero
    /* 6D86C 8007D06C 05006104 */  bgez       $v1, .L8007D084
    /* 6D870 8007D070 21204002 */   addu      $a0, $s2, $zero
    /* 6D874 8007D074 3A62020C */  jal        func_800988E8
    /* 6D878 8007D078 21282002 */   addu      $a1, $s1, $zero
    /* 6D87C 8007D07C 22F40108 */  j          .L8007D088
    /* 6D880 8007D080 21184000 */   addu      $v1, $v0, $zero
  .L8007D084:
    /* 6D884 8007D084 21A00002 */  addu       $s4, $s0, $zero
  .L8007D088:
    /* 6D888 8007D088 0E006004 */  bltz       $v1, .L8007D0C4
    /* 6D88C 8007D08C 00000000 */   nop
    /* 6D890 8007D090 0C007510 */  beq        $v1, $s5, .L8007D0C4
    /* 6D894 8007D094 00000000 */   nop
    /* 6D898 8007D098 0A001416 */  bne        $s0, $s4, .L8007D0C4
    /* 6D89C 8007D09C 80100300 */   sll       $v0, $v1, 2
    /* 6D8A0 8007D0A0 1000A78F */  lw         $a3, 0x10($sp)
    /* 6D8A4 8007D0A4 00000000 */  nop
    /* 6D8A8 8007D0A8 21104700 */  addu       $v0, $v0, $a3
    /* 6D8AC 8007D0AC 0000428C */  lw         $v0, 0x0($v0)
    /* 6D8B0 8007D0B0 00000000 */  nop
    /* 6D8B4 8007D0B4 08004230 */  andi       $v0, $v0, 0x8
    /* 6D8B8 8007D0B8 02004014 */  bnez       $v0, .L8007D0C4
    /* 6D8BC 8007D0BC 00000000 */   nop
    /* 6D8C0 8007D0C0 080383AF */  sw         $v1, %gp_rel(D_801587E0)($gp)
  .L8007D0C4:
    /* 6D8C4 8007D0C4 F0F30108 */  j          .L8007CFC0
    /* 6D8C8 8007D0C8 01007326 */   addiu     $s3, $s3, 0x1
  .L8007D0CC:
    /* 6D8CC 8007D0CC 0803828F */  lw         $v0, %gp_rel(D_801587E0)($gp)
    /* 6D8D0 8007D0D0 00000000 */  nop
    /* 6D8D4 8007D0D4 27100200 */  nor        $v0, $zero, $v0
    /* 6D8D8 8007D0D8 C2170200 */  srl        $v0, $v0, 31
    /* 6D8DC 8007D0DC 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 6D8E0 8007D0E0 3800BE8F */  lw         $fp, 0x38($sp)
    /* 6D8E4 8007D0E4 3400B78F */  lw         $s7, 0x34($sp)
    /* 6D8E8 8007D0E8 3000B68F */  lw         $s6, 0x30($sp)
    /* 6D8EC 8007D0EC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 6D8F0 8007D0F0 2800B48F */  lw         $s4, 0x28($sp)
    /* 6D8F4 8007D0F4 2400B38F */  lw         $s3, 0x24($sp)
    /* 6D8F8 8007D0F8 2000B28F */  lw         $s2, 0x20($sp)
    /* 6D8FC 8007D0FC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 6D900 8007D100 1800B08F */  lw         $s0, 0x18($sp)
    /* 6D904 8007D104 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 6D908 8007D108 0800E003 */  jr         $ra
    /* 6D90C 8007D10C 00000000 */   nop
endlabel func_8007CF34
