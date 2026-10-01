.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007B810, 0x10C

glabel func_8007B810
    /* 6C010 8007B810 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6C014 8007B814 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6C018 8007B818 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6C01C 8007B81C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6C020 8007B820 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6C024 8007B824 21908000 */  addu       $s2, $a0, $zero
    /* 6C028 8007B828 2188A000 */  addu       $s1, $a1, $zero
    /* 6C02C 8007B82C FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 6C030 8007B830 0D002006 */  bltz       $s1, .L8007B868
    /* 6C034 8007B834 21180000 */   addu      $v1, $zero, $zero
    /* 6C038 8007B838 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6C03C 8007B83C 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6C040 8007B840 00000000 */  nop
    /* 6C044 8007B844 2A102202 */  slt        $v0, $s1, $v0
    /* 6C048 8007B848 07004010 */  beqz       $v0, .L8007B868
    /* 6C04C 8007B84C 00000000 */   nop
    /* 6C050 8007B850 05004006 */  bltz       $s2, .L8007B868
    /* 6C054 8007B854 00000000 */   nop
    /* 6C058 8007B858 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6C05C 8007B85C 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6C060 8007B860 00000000 */  nop
    /* 6C064 8007B864 2A184202 */  slt        $v1, $s2, $v0
  .L8007B868:
    /* 6C068 8007B868 06006010 */  beqz       $v1, .L8007B884
    /* 6C06C 8007B86C 00000000 */   nop
    /* 6C070 8007B870 21204002 */  addu       $a0, $s2, $zero
    /* 6C074 8007B874 3A62020C */  jal        func_800988E8
    /* 6C078 8007B878 21282002 */   addu      $a1, $s1, $zero
    /* 6C07C 8007B87C 20004004 */  bltz       $v0, .L8007B900
    /* 6C080 8007B880 21100002 */   addu      $v0, $s0, $zero
  .L8007B884:
    /* 6C084 8007B884 1A000106 */  bgez       $s0, .L8007B8F0
    /* 6C088 8007B888 21200000 */   addu      $a0, $zero, $zero
    /* 6C08C 8007B88C 1280053C */  lui        $a1, %hi(D_8011A280)
    /* 6C090 8007B890 80A2A584 */  lh         $a1, %lo(D_8011A280)($a1)
  .L8007B894:
    /* 6C094 8007B894 00000000 */  nop
    /* 6C098 8007B898 2A108500 */  slt        $v0, $a0, $a1
    /* 6C09C 8007B89C 14004010 */  beqz       $v0, .L8007B8F0
    /* 6C0A0 8007B8A0 40100400 */   sll       $v0, $a0, 1
    /* 6C0A4 8007B8A4 21104400 */  addu       $v0, $v0, $a0
    /* 6C0A8 8007B8A8 80100200 */  sll        $v0, $v0, 2
    /* 6C0AC 8007B8AC 21104400 */  addu       $v0, $v0, $a0
    /* 6C0B0 8007B8B0 40180200 */  sll        $v1, $v0, 1
    /* 6C0B4 8007B8B4 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6C0B8 8007B8B8 21082300 */  addu       $at, $at, $v1
    /* 6C0BC 8007B8BC B4D62284 */  lh         $v0, %lo(D_8010D6B4)($at)
    /* 6C0C0 8007B8C0 00000000 */  nop
    /* 6C0C4 8007B8C4 08005214 */  bne        $v0, $s2, .L8007B8E8
    /* 6C0C8 8007B8C8 00000000 */   nop
    /* 6C0CC 8007B8CC 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6C0D0 8007B8D0 21082300 */  addu       $at, $at, $v1
    /* 6C0D4 8007B8D4 B6D62284 */  lh         $v0, %lo(D_8010D6B6)($at)
    /* 6C0D8 8007B8D8 00000000 */  nop
    /* 6C0DC 8007B8DC 02005114 */  bne        $v0, $s1, .L8007B8E8
    /* 6C0E0 8007B8E0 00000000 */   nop
    /* 6C0E4 8007B8E4 21808000 */  addu       $s0, $a0, $zero
  .L8007B8E8:
    /* 6C0E8 8007B8E8 EAFF0006 */  bltz       $s0, .L8007B894
    /* 6C0EC 8007B8EC 01008424 */   addiu     $a0, $a0, 0x1
  .L8007B8F0:
    /* 6C0F0 8007B8F0 E6ED010C */  jal        func_8007B798
    /* 6C0F4 8007B8F4 21200002 */   addu      $a0, $s0, $zero
    /* 6C0F8 8007B8F8 21804000 */  addu       $s0, $v0, $zero
    /* 6C0FC 8007B8FC 21100002 */  addu       $v0, $s0, $zero
  .L8007B900:
    /* 6C100 8007B900 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 6C104 8007B904 1800B28F */  lw         $s2, 0x18($sp)
    /* 6C108 8007B908 1400B18F */  lw         $s1, 0x14($sp)
    /* 6C10C 8007B90C 1000B08F */  lw         $s0, 0x10($sp)
    /* 6C110 8007B910 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6C114 8007B914 0800E003 */  jr         $ra
    /* 6C118 8007B918 00000000 */   nop
endlabel func_8007B810
