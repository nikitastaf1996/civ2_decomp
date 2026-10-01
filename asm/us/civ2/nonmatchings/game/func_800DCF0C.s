.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DCF0C, 0x358

glabel func_800DCF0C
    /* CD70C 800DCF0C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* CD710 800DCF10 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* CD714 800DCF14 3800BEAF */  sw         $fp, 0x38($sp)
    /* CD718 800DCF18 3400B7AF */  sw         $s7, 0x34($sp)
    /* CD71C 800DCF1C 3000B6AF */  sw         $s6, 0x30($sp)
    /* CD720 800DCF20 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* CD724 800DCF24 2800B4AF */  sw         $s4, 0x28($sp)
    /* CD728 800DCF28 2400B3AF */  sw         $s3, 0x24($sp)
    /* CD72C 800DCF2C 2000B2AF */  sw         $s2, 0x20($sp)
    /* CD730 800DCF30 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* CD734 800DCF34 1800B0AF */  sw         $s0, 0x18($sp)
    /* CD738 800DCF38 21808000 */  addu       $s0, $a0, $zero
    /* CD73C 800DCF3C 1000A5AF */  sw         $a1, 0x10($sp)
    /* CD740 800DCF40 21A80000 */  addu       $s5, $zero, $zero
    /* CD744 800DCF44 21F00000 */  addu       $fp, $zero, $zero
    /* CD748 800DCF48 21B80000 */  addu       $s7, $zero, $zero
    /* CD74C 800DCF4C 21A00000 */  addu       $s4, $zero, $zero
    /* CD750 800DCF50 01001124 */  addiu      $s1, $zero, 0x1
    /* CD754 800DCF54 40101000 */  sll        $v0, $s0, 1
    /* CD758 800DCF58 21105000 */  addu       $v0, $v0, $s0
    /* CD75C 800DCF5C 80100200 */  sll        $v0, $v0, 2
    /* CD760 800DCF60 23105000 */  subu       $v0, $v0, $s0
    /* CD764 800DCF64 00110200 */  sll        $v0, $v0, 4
    /* CD768 800DCF68 23105000 */  subu       $v0, $v0, $s0
    /* CD76C 800DCF6C C0100200 */  sll        $v0, $v0, 3
    /* CD770 800DCF70 1180063C */  lui        $a2, %hi(D_801176B4)
    /* CD774 800DCF74 B476C624 */  addiu      $a2, $a2, %lo(D_801176B4)
    /* CD778 800DCF78 21B04600 */  addu       $s6, $v0, $a2
  .L800DCF7C:
    /* CD77C 800DCF7C 42001112 */  beq        $s0, $s1, .L800DD088
    /* CD780 800DCF80 80101100 */   sll       $v0, $s1, 2
    /* CD784 800DCF84 21105600 */  addu       $v0, $v0, $s6
    /* CD788 800DCF88 0000428C */  lw         $v0, 0x0($v0)
    /* CD78C 800DCF8C 00000000 */  nop
    /* CD790 800DCF90 01004230 */  andi       $v0, $v0, 0x1
    /* CD794 800DCF94 02004010 */  beqz       $v0, .L800DCFA0
    /* CD798 800DCF98 80101100 */   sll       $v0, $s1, 2
    /* CD79C 800DCF9C 01009426 */  addiu      $s4, $s4, 0x1
  .L800DCFA0:
    /* CD7A0 800DCFA0 21105600 */  addu       $v0, $v0, $s6
    /* CD7A4 800DCFA4 0000428C */  lw         $v0, 0x0($v0)
    /* CD7A8 800DCFA8 00000000 */  nop
    /* CD7AC 800DCFAC 08004230 */  andi       $v0, $v0, 0x8
    /* CD7B0 800DCFB0 02004010 */  beqz       $v0, .L800DCFBC
    /* CD7B4 800DCFB4 40101000 */   sll       $v0, $s0, 1
    /* CD7B8 800DCFB8 0100F726 */  addiu      $s7, $s7, 0x1
  .L800DCFBC:
    /* CD7BC 800DCFBC 21105000 */  addu       $v0, $v0, $s0
    /* CD7C0 800DCFC0 80100200 */  sll        $v0, $v0, 2
    /* CD7C4 800DCFC4 23105000 */  subu       $v0, $v0, $s0
    /* CD7C8 800DCFC8 00110200 */  sll        $v0, $v0, 4
    /* CD7CC 800DCFCC 23105000 */  subu       $v0, $v0, $s0
    /* CD7D0 800DCFD0 C0100200 */  sll        $v0, $v0, 3
    /* CD7D4 800DCFD4 80181100 */  sll        $v1, $s1, 2
    /* CD7D8 800DCFD8 1180063C */  lui        $a2, %hi(D_801176B4)
    /* CD7DC 800DCFDC B476C624 */  addiu      $a2, $a2, %lo(D_801176B4)
    /* CD7E0 800DCFE0 21104600 */  addu       $v0, $v0, $a2
    /* CD7E4 800DCFE4 21186200 */  addu       $v1, $v1, $v0
    /* CD7E8 800DCFE8 0000628C */  lw         $v0, 0x0($v1)
    /* CD7EC 800DCFEC 00000000 */  nop
    /* CD7F0 800DCFF0 00204230 */  andi       $v0, $v0, 0x2000
    /* CD7F4 800DCFF4 02004010 */  beqz       $v0, .L800DD000
    /* CD7F8 800DCFF8 00000000 */   nop
    /* CD7FC 800DCFFC 0100B526 */  addiu      $s5, $s5, 0x1
  .L800DD000:
    /* CD800 800DD000 1280133C */  lui        $s3, %hi(D_8011ACB4)
    /* CD804 800DD004 B4AC7326 */  addiu      $s3, $s3, %lo(D_8011ACB4)
    /* CD808 800DD008 0000648E */  lw         $a0, 0x0($s3)
    /* CD80C 800DD00C 00000000 */  nop
    /* CD810 800DD010 40100400 */  sll        $v0, $a0, 1
    /* CD814 800DD014 21104400 */  addu       $v0, $v0, $a0
    /* CD818 800DD018 80100200 */  sll        $v0, $v0, 2
    /* CD81C 800DD01C 23104400 */  subu       $v0, $v0, $a0
    /* CD820 800DD020 00110200 */  sll        $v0, $v0, 4
    /* CD824 800DD024 23104400 */  subu       $v0, $v0, $a0
    /* CD828 800DD028 C0100200 */  sll        $v0, $v0, 3
    /* CD82C 800DD02C 80181100 */  sll        $v1, $s1, 2
    /* CD830 800DD030 1180063C */  lui        $a2, %hi(D_801176B4)
    /* CD834 800DD034 B476C624 */  addiu      $a2, $a2, %lo(D_801176B4)
    /* CD838 800DD038 21104600 */  addu       $v0, $v0, $a2
    /* CD83C 800DD03C 21186200 */  addu       $v1, $v1, $v0
    /* CD840 800DD040 0000628C */  lw         $v0, 0x0($v1)
    /* CD844 800DD044 00000000 */  nop
    /* CD848 800DD048 80004230 */  andi       $v0, $v0, 0x80
    /* CD84C 800DD04C 0A004014 */  bnez       $v0, .L800DD078
    /* CD850 800DD050 21900000 */   addu      $s2, $zero, $zero
    /* CD854 800DD054 C17B030C */  jal        func_800DEF04
    /* CD858 800DD058 18000524 */   addiu     $a1, $zero, 0x18
    /* CD85C 800DD05C 06004014 */  bnez       $v0, .L800DD078
    /* CD860 800DD060 00000000 */   nop
    /* CD864 800DD064 0000648E */  lw         $a0, 0x0($s3)
    /* CD868 800DD068 C17B030C */  jal        func_800DEF04
    /* CD86C 800DD06C 09000524 */   addiu     $a1, $zero, 0x9
    /* CD870 800DD070 02004010 */  beqz       $v0, .L800DD07C
    /* CD874 800DD074 00000000 */   nop
  .L800DD078:
    /* CD878 800DD078 01001224 */  addiu      $s2, $zero, 0x1
  .L800DD07C:
    /* CD87C 800DD07C 02004012 */  beqz       $s2, .L800DD088
    /* CD880 800DD080 00000000 */   nop
    /* CD884 800DD084 0100DE27 */  addiu      $fp, $fp, 0x1
  .L800DD088:
    /* CD888 800DD088 01003126 */  addiu      $s1, $s1, 0x1
    /* CD88C 800DD08C 0800222A */  slti       $v0, $s1, 0x8
    /* CD890 800DD090 BAFF4014 */  bnez       $v0, .L800DCF7C
    /* CD894 800DD094 00000000 */   nop
    /* CD898 800DD098 03008016 */  bnez       $s4, .L800DD0A8
    /* CD89C 800DD09C 02000224 */   addiu     $v0, $zero, 0x2
    /* CD8A0 800DD0A0 8C740308 */  j          .L800DD230
    /* CD8A4 800DD0A4 01000224 */   addiu     $v0, $zero, 0x1
  .L800DD0A8:
    /* CD8A8 800DD0A8 1000A68F */  lw         $a2, 0x10($sp)
    /* CD8AC 800DD0AC 00000000 */  nop
    /* CD8B0 800DD0B0 0200C214 */  bne        $a2, $v0, .L800DD0BC
    /* CD8B4 800DD0B4 58000524 */   addiu     $a1, $zero, 0x58
    /* CD8B8 800DD0B8 1B000524 */  addiu      $a1, $zero, 0x1B
  .L800DD0BC:
    /* CD8BC 800DD0BC 8ACA010C */  jal        func_80072A28
    /* CD8C0 800DD0C0 21200002 */   addu      $a0, $s0, $zero
    /* CD8C4 800DD0C4 03004014 */  bnez       $v0, .L800DD0D4
    /* CD8C8 800DD0C8 0200822A */   slti      $v0, $s4, 0x2
    /* CD8CC 800DD0CC 8C740308 */  j          .L800DD230
    /* CD8D0 800DD0D0 03000224 */   addiu     $v0, $zero, 0x3
  .L800DD0D4:
    /* CD8D4 800DD0D4 1F004014 */  bnez       $v0, .L800DD154
    /* CD8D8 800DD0D8 40101000 */   sll       $v0, $s0, 1
    /* CD8DC 800DD0DC 21105000 */  addu       $v0, $v0, $s0
    /* CD8E0 800DD0E0 80100200 */  sll        $v0, $v0, 2
    /* CD8E4 800DD0E4 23105000 */  subu       $v0, $v0, $s0
    /* CD8E8 800DD0E8 00110200 */  sll        $v0, $v0, 4
    /* CD8EC 800DD0EC 23105000 */  subu       $v0, $v0, $s0
    /* CD8F0 800DD0F0 C0180200 */  sll        $v1, $v0, 3
    /* CD8F4 800DD0F4 1180013C */  lui        $at, %hi(D_801176B0)
    /* CD8F8 800DD0F8 21082300 */  addu       $at, $at, $v1
    /* CD8FC 800DD0FC B0762290 */  lbu        $v0, %lo(D_801176B0)($at)
    /* CD900 800DD100 00000000 */  nop
    /* CD904 800DD104 0200422C */  sltiu      $v0, $v0, 0x2
    /* CD908 800DD108 11004010 */  beqz       $v0, .L800DD150
    /* CD90C 800DD10C 00000000 */   nop
    /* CD910 800DD110 1000E016 */  bnez       $s7, .L800DD154
    /* CD914 800DD114 40101000 */   sll       $v0, $s0, 1
    /* CD918 800DD118 1180013C */  lui        $at, %hi(D_80117690)
    /* CD91C 800DD11C 21082300 */  addu       $at, $at, $v1
    /* CD920 800DD120 90762294 */  lhu        $v0, %lo(D_80117690)($at)
    /* CD924 800DD124 00000000 */  nop
    /* CD928 800DD128 00014230 */  andi       $v0, $v0, 0x100
    /* CD92C 800DD12C 09004014 */  bnez       $v0, .L800DD154
    /* CD930 800DD130 40101000 */   sll       $v0, $s0, 1
    /* CD934 800DD134 1280013C */  lui        $at, %hi(D_8011A37E)
    /* CD938 800DD138 21083000 */  addu       $at, $at, $s0
    /* CD93C 800DD13C 7EA32290 */  lbu        $v0, %lo(D_8011A37E)($at)
    /* CD940 800DD140 00000000 */  nop
    /* CD944 800DD144 0700422C */  sltiu      $v0, $v0, 0x7
    /* CD948 800DD148 39004014 */  bnez       $v0, .L800DD230
    /* CD94C 800DD14C 02000224 */   addiu     $v0, $zero, 0x2
  .L800DD150:
    /* CD950 800DD150 40101000 */  sll        $v0, $s0, 1
  .L800DD154:
    /* CD954 800DD154 21105000 */  addu       $v0, $v0, $s0
    /* CD958 800DD158 80100200 */  sll        $v0, $v0, 2
    /* CD95C 800DD15C 23105000 */  subu       $v0, $v0, $s0
    /* CD960 800DD160 00110200 */  sll        $v0, $v0, 4
    /* CD964 800DD164 23105000 */  subu       $v0, $v0, $s0
    /* CD968 800DD168 C0100200 */  sll        $v0, $v0, 3
    /* CD96C 800DD16C 1180013C */  lui        $at, %hi(D_801176B0)
    /* CD970 800DD170 21082200 */  addu       $at, $at, $v0
    /* CD974 800DD174 B0762290 */  lbu        $v0, %lo(D_801176B0)($at)
    /* CD978 800DD178 00000000 */  nop
    /* CD97C 800DD17C 0300422C */  sltiu      $v0, $v0, 0x3
    /* CD980 800DD180 10004010 */  beqz       $v0, .L800DD1C4
    /* CD984 800DD184 00000000 */   nop
    /* CD988 800DD188 1000B416 */  bne        $s5, $s4, .L800DD1CC
    /* CD98C 800DD18C 40101000 */   sll       $v0, $s0, 1
    /* CD990 800DD190 21105000 */  addu       $v0, $v0, $s0
    /* CD994 800DD194 80100200 */  sll        $v0, $v0, 2
    /* CD998 800DD198 23105000 */  subu       $v0, $v0, $s0
    /* CD99C 800DD19C 00110200 */  sll        $v0, $v0, 4
    /* CD9A0 800DD1A0 23105000 */  subu       $v0, $v0, $s0
    /* CD9A4 800DD1A4 C0100200 */  sll        $v0, $v0, 3
    /* CD9A8 800DD1A8 1180013C */  lui        $at, %hi(D_801176B0)
    /* CD9AC 800DD1AC 21082200 */  addu       $at, $at, $v0
    /* CD9B0 800DD1B0 B0762290 */  lbu        $v0, %lo(D_801176B0)($at)
    /* CD9B4 800DD1B4 00000000 */  nop
    /* CD9B8 800DD1B8 0200422C */  sltiu      $v0, $v0, 0x2
    /* CD9BC 800DD1BC 03004014 */  bnez       $v0, .L800DD1CC
    /* CD9C0 800DD1C0 40101000 */   sll       $v0, $s0, 1
  .L800DD1C4:
    /* CD9C4 800DD1C4 8C740308 */  j          .L800DD230
    /* CD9C8 800DD1C8 04000224 */   addiu     $v0, $zero, 0x4
  .L800DD1CC:
    /* CD9CC 800DD1CC 21105000 */  addu       $v0, $v0, $s0
    /* CD9D0 800DD1D0 80100200 */  sll        $v0, $v0, 2
    /* CD9D4 800DD1D4 23105000 */  subu       $v0, $v0, $s0
    /* CD9D8 800DD1D8 00110200 */  sll        $v0, $v0, 4
    /* CD9DC 800DD1DC 23105000 */  subu       $v0, $v0, $s0
    /* CD9E0 800DD1E0 C0100200 */  sll        $v0, $v0, 3
    /* CD9E4 800DD1E4 1180013C */  lui        $at, %hi(D_80117690)
    /* CD9E8 800DD1E8 21082200 */  addu       $at, $at, $v0
    /* CD9EC 800DD1EC 90762294 */  lhu        $v0, %lo(D_80117690)($at)
    /* CD9F0 800DD1F0 00000000 */  nop
    /* CD9F4 800DD1F4 80004230 */  andi       $v0, $v0, 0x80
    /* CD9F8 800DD1F8 0D004010 */  beqz       $v0, .L800DD230
    /* CD9FC 800DD1FC 06000224 */   addiu     $v0, $zero, 0x6
    /* CDA00 800DD200 0B00C013 */  beqz       $fp, .L800DD230
    /* CDA04 800DD204 05000224 */   addiu     $v0, $zero, 0x5
    /* CDA08 800DD208 0600B416 */  bne        $s5, $s4, .L800DD224
    /* CDA0C 800DD20C 00000000 */   nop
    /* CDA10 800DD210 2A10D503 */  slt        $v0, $fp, $s5
    /* CDA14 800DD214 03004010 */  beqz       $v0, .L800DD224
    /* CDA18 800DD218 00000000 */   nop
    /* CDA1C 800DD21C 8C740308 */  j          .L800DD230
    /* CDA20 800DD220 05000224 */   addiu     $v0, $zero, 0x5
  .L800DD224:
    /* CDA24 800DD224 0200B412 */  beq        $s5, $s4, .L800DD230
    /* CDA28 800DD228 06000224 */   addiu     $v0, $zero, 0x6
    /* CDA2C 800DD22C 07000224 */  addiu      $v0, $zero, 0x7
  .L800DD230:
    /* CDA30 800DD230 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* CDA34 800DD234 3800BE8F */  lw         $fp, 0x38($sp)
    /* CDA38 800DD238 3400B78F */  lw         $s7, 0x34($sp)
    /* CDA3C 800DD23C 3000B68F */  lw         $s6, 0x30($sp)
    /* CDA40 800DD240 2C00B58F */  lw         $s5, 0x2C($sp)
    /* CDA44 800DD244 2800B48F */  lw         $s4, 0x28($sp)
    /* CDA48 800DD248 2400B38F */  lw         $s3, 0x24($sp)
    /* CDA4C 800DD24C 2000B28F */  lw         $s2, 0x20($sp)
    /* CDA50 800DD250 1C00B18F */  lw         $s1, 0x1C($sp)
    /* CDA54 800DD254 1800B08F */  lw         $s0, 0x18($sp)
    /* CDA58 800DD258 4000BD27 */  addiu      $sp, $sp, 0x40
    /* CDA5C 800DD25C 0800E003 */  jr         $ra
    /* CDA60 800DD260 00000000 */   nop
endlabel func_800DCF0C
