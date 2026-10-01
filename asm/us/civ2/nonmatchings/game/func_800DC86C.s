.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DC86C, 0x30C

glabel func_800DC86C
    /* CD06C 800DC86C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* CD070 800DC870 3400BFAF */  sw         $ra, 0x34($sp)
    /* CD074 800DC874 3000B6AF */  sw         $s6, 0x30($sp)
    /* CD078 800DC878 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* CD07C 800DC87C 2800B4AF */  sw         $s4, 0x28($sp)
    /* CD080 800DC880 2400B3AF */  sw         $s3, 0x24($sp)
    /* CD084 800DC884 2000B2AF */  sw         $s2, 0x20($sp)
    /* CD088 800DC888 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* CD08C 800DC88C 1800B0AF */  sw         $s0, 0x18($sp)
    /* CD090 800DC890 21888000 */  addu       $s1, $a0, $zero
    /* CD094 800DC894 21B00000 */  addu       $s6, $zero, $zero
    /* CD098 800DC898 01000424 */  addiu      $a0, $zero, 0x1
    /* CD09C 800DC89C 40101100 */  sll        $v0, $s1, 1
    /* CD0A0 800DC8A0 21105100 */  addu       $v0, $v0, $s1
    /* CD0A4 800DC8A4 80100200 */  sll        $v0, $v0, 2
    /* CD0A8 800DC8A8 23105100 */  subu       $v0, $v0, $s1
    /* CD0AC 800DC8AC 00110200 */  sll        $v0, $v0, 4
    /* CD0B0 800DC8B0 23105100 */  subu       $v0, $v0, $s1
    /* CD0B4 800DC8B4 C0300200 */  sll        $a2, $v0, 3
  .L800DC8B8:
    /* CD0B8 800DC8B8 12002412 */  beq        $s1, $a0, .L800DC904
    /* CD0BC 800DC8BC 40100400 */   sll       $v0, $a0, 1
    /* CD0C0 800DC8C0 21104400 */  addu       $v0, $v0, $a0
    /* CD0C4 800DC8C4 80100200 */  sll        $v0, $v0, 2
    /* CD0C8 800DC8C8 23104400 */  subu       $v0, $v0, $a0
    /* CD0CC 800DC8CC 00110200 */  sll        $v0, $v0, 4
    /* CD0D0 800DC8D0 23104400 */  subu       $v0, $v0, $a0
    /* CD0D4 800DC8D4 C0100200 */  sll        $v0, $v0, 3
    /* CD0D8 800DC8D8 1180013C */  lui        $at, %hi(D_801176A2)
    /* CD0DC 800DC8DC 21082200 */  addu       $at, $at, $v0
    /* CD0E0 800DC8E0 A2762290 */  lbu        $v0, %lo(D_801176A2)($at)
    /* CD0E4 800DC8E4 1180013C */  lui        $at, %hi(D_801176A2)
    /* CD0E8 800DC8E8 21082600 */  addu       $at, $at, $a2
    /* CD0EC 800DC8EC A2762390 */  lbu        $v1, %lo(D_801176A2)($at)
    /* CD0F0 800DC8F0 00000000 */  nop
    /* CD0F4 800DC8F4 2B104300 */  sltu       $v0, $v0, $v1
    /* CD0F8 800DC8F8 02004014 */  bnez       $v0, .L800DC904
    /* CD0FC 800DC8FC 00000000 */   nop
    /* CD100 800DC900 0100D626 */  addiu      $s6, $s6, 0x1
  .L800DC904:
    /* CD104 800DC904 01008424 */  addiu      $a0, $a0, 0x1
    /* CD108 800DC908 08008228 */  slti       $v0, $a0, 0x8
    /* CD10C 800DC90C EAFF4014 */  bnez       $v0, .L800DC8B8
    /* CD110 800DC910 00000000 */   nop
    /* CD114 800DC914 0300C016 */  bnez       $s6, .L800DC924
    /* CD118 800DC918 40101100 */   sll       $v0, $s1, 1
    /* CD11C 800DC91C D3720308 */  j          .L800DCB4C
    /* CD120 800DC920 07000224 */   addiu     $v0, $zero, 0x7
  .L800DC924:
    /* CD124 800DC924 21105100 */  addu       $v0, $v0, $s1
    /* CD128 800DC928 80100200 */  sll        $v0, $v0, 2
    /* CD12C 800DC92C 23105100 */  subu       $v0, $v0, $s1
    /* CD130 800DC930 00110200 */  sll        $v0, $v0, 4
    /* CD134 800DC934 23105100 */  subu       $v0, $v0, $s1
    /* CD138 800DC938 C0180200 */  sll        $v1, $v0, 3
    /* CD13C 800DC93C 1180013C */  lui        $at, %hi(D_801176A7)
    /* CD140 800DC940 21082300 */  addu       $at, $at, $v1
    /* CD144 800DC944 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* CD148 800DC948 00000000 */  nop
    /* CD14C 800DC94C 0500422C */  sltiu      $v0, $v0, 0x5
    /* CD150 800DC950 06004014 */  bnez       $v0, .L800DC96C
    /* CD154 800DC954 00000000 */   nop
    /* CD158 800DC958 1180013C */  lui        $at, %hi(D_801176A5)
    /* CD15C 800DC95C 21082300 */  addu       $at, $at, $v1
    /* CD160 800DC960 A5762290 */  lbu        $v0, %lo(D_801176A5)($at)
    /* CD164 800DC964 6D720308 */  j          .L800DC9B4
    /* CD168 800DC968 0400422C */   sltiu     $v0, $v0, 0x4
  .L800DC96C:
    /* CD16C 800DC96C 40101100 */  sll        $v0, $s1, 1
    /* CD170 800DC970 21105100 */  addu       $v0, $v0, $s1
    /* CD174 800DC974 80100200 */  sll        $v0, $v0, 2
    /* CD178 800DC978 23105100 */  subu       $v0, $v0, $s1
    /* CD17C 800DC97C 00110200 */  sll        $v0, $v0, 4
    /* CD180 800DC980 23105100 */  subu       $v0, $v0, $s1
    /* CD184 800DC984 C0200200 */  sll        $a0, $v0, 3
    /* CD188 800DC988 1180013C */  lui        $at, %hi(D_801176A7)
    /* CD18C 800DC98C 21082400 */  addu       $at, $at, $a0
    /* CD190 800DC990 A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* CD194 800DC994 04000224 */  addiu      $v0, $zero, 0x4
    /* CD198 800DC998 09006210 */  beq        $v1, $v0, .L800DC9C0
    /* CD19C 800DC99C 21980000 */   addu      $s3, $zero, $zero
    /* CD1A0 800DC9A0 1180013C */  lui        $at, %hi(D_801176A5)
    /* CD1A4 800DC9A4 21082400 */  addu       $at, $at, $a0
    /* CD1A8 800DC9A8 A5762290 */  lbu        $v0, %lo(D_801176A5)($at)
    /* CD1AC 800DC9AC 00000000 */  nop
    /* CD1B0 800DC9B0 0600422C */  sltiu      $v0, $v0, 0x6
  .L800DC9B4:
    /* CD1B4 800DC9B4 65004014 */  bnez       $v0, .L800DCB4C
    /* CD1B8 800DC9B8 02000224 */   addiu     $v0, $zero, 0x2
    /* CD1BC 800DC9BC 21980000 */  addu       $s3, $zero, $zero
  .L800DC9C0:
    /* CD1C0 800DC9C0 21A80000 */  addu       $s5, $zero, $zero
    /* CD1C4 800DC9C4 40101100 */  sll        $v0, $s1, 1
    /* CD1C8 800DC9C8 21105100 */  addu       $v0, $v0, $s1
    /* CD1CC 800DC9CC 80100200 */  sll        $v0, $v0, 2
    /* CD1D0 800DC9D0 23105100 */  subu       $v0, $v0, $s1
    /* CD1D4 800DC9D4 00110200 */  sll        $v0, $v0, 4
    /* CD1D8 800DC9D8 23105100 */  subu       $v0, $v0, $s1
    /* CD1DC 800DC9DC C0100200 */  sll        $v0, $v0, 3
    /* CD1E0 800DC9E0 1180013C */  lui        $at, %hi(D_80117793)
    /* CD1E4 800DC9E4 21082200 */  addu       $at, $at, $v0
    /* CD1E8 800DC9E8 93773290 */  lbu        $s2, %lo(D_80117793)($at)
    /* CD1EC 800DC9EC 1180013C */  lui        $at, %hi(D_80117794)
    /* CD1F0 800DC9F0 21082200 */  addu       $at, $at, $v0
    /* CD1F4 800DC9F4 94772290 */  lbu        $v0, %lo(D_80117794)($at)
    /* CD1F8 800DC9F8 0300A014 */  bnez       $a1, .L800DCA08
    /* CD1FC 800DC9FC 21904202 */   addu      $s2, $s2, $v0
    /* CD200 800DCA00 86720308 */  j          .L800DCA18
    /* CD204 800DCA04 06001424 */   addiu     $s4, $zero, 0x6
  .L800DCA08:
    /* CD208 800DCA08 01000224 */  addiu      $v0, $zero, 0x1
    /* CD20C 800DCA0C 0200A214 */  bne        $a1, $v0, .L800DCA18
    /* CD210 800DCA10 1A001424 */   addiu     $s4, $zero, 0x1A
    /* CD214 800DCA14 0C001424 */  addiu      $s4, $zero, 0xC
  .L800DCA18:
    /* CD218 800DCA18 1280023C */  lui        $v0, %hi(D_8011A282)
    /* CD21C 800DCA1C 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* CD220 800DCA20 00000000 */  nop
    /* CD224 800DCA24 22004018 */  blez       $v0, .L800DCAB0
    /* CD228 800DCA28 21800000 */   addu      $s0, $zero, $zero
    /* CD22C 800DCA2C 40101000 */  sll        $v0, $s0, 1
  .L800DCA30:
    /* CD230 800DCA30 21105000 */  addu       $v0, $v0, $s0
    /* CD234 800DCA34 80100200 */  sll        $v0, $v0, 2
    /* CD238 800DCA38 23105000 */  subu       $v0, $v0, $s0
    /* CD23C 800DCA3C C0100200 */  sll        $v0, $v0, 3
    /* CD240 800DCA40 1180013C */  lui        $at, %hi(D_80113ED8)
    /* CD244 800DCA44 21082200 */  addu       $at, $at, $v0
    /* CD248 800DCA48 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* CD24C 800DCA4C 00000000 */  nop
    /* CD250 800DCA50 10005114 */  bne        $v0, $s1, .L800DCA94
    /* CD254 800DCA54 21200002 */   addu      $a0, $s0, $zero
    /* CD258 800DCA58 01007326 */  addiu      $s3, $s3, 0x1
    /* CD25C 800DCA5C C826020C */  jal        func_80089B20
    /* CD260 800DCA60 21288002 */   addu      $a1, $s4, $zero
    /* CD264 800DCA64 02004010 */  beqz       $v0, .L800DCA70
    /* CD268 800DCA68 40101000 */   sll       $v0, $s0, 1
    /* CD26C 800DCA6C 0100B526 */  addiu      $s5, $s5, 0x1
  .L800DCA70:
    /* CD270 800DCA70 21105000 */  addu       $v0, $v0, $s0
    /* CD274 800DCA74 80100200 */  sll        $v0, $v0, 2
    /* CD278 800DCA78 23105000 */  subu       $v0, $v0, $s0
    /* CD27C 800DCA7C C0100200 */  sll        $v0, $v0, 3
    /* CD280 800DCA80 1180013C */  lui        $at, %hi(D_80113F0E)
    /* CD284 800DCA84 21082200 */  addu       $at, $at, $v0
    /* CD288 800DCA88 0E3F2280 */  lb         $v0, %lo(D_80113F0E)($at)
    /* CD28C 800DCA8C 00000000 */  nop
    /* CD290 800DCA90 21904202 */  addu       $s2, $s2, $v0
  .L800DCA94:
    /* CD294 800DCA94 01001026 */  addiu      $s0, $s0, 0x1
    /* CD298 800DCA98 1280023C */  lui        $v0, %hi(D_8011A282)
    /* CD29C 800DCA9C 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* CD2A0 800DCAA0 00000000 */  nop
    /* CD2A4 800DCAA4 2A100202 */  slt        $v0, $s0, $v0
    /* CD2A8 800DCAA8 E1FF4014 */  bnez       $v0, .L800DCA30
    /* CD2AC 800DCAAC 40101000 */   sll       $v0, $s0, 1
  .L800DCAB0:
    /* CD2B0 800DCAB0 C0101400 */  sll        $v0, $s4, 3
    /* CD2B4 800DCAB4 1180013C */  lui        $at, %hi(D_8010D06A)
    /* CD2B8 800DCAB8 21082200 */  addu       $at, $at, $v0
    /* CD2BC 800DCABC 6AD02580 */  lb         $a1, %lo(D_8010D06A)($at)
    /* CD2C0 800DCAC0 8ACA010C */  jal        func_80072A28
    /* CD2C4 800DCAC4 21202002 */   addu      $a0, $s1, $zero
    /* CD2C8 800DCAC8 06004010 */  beqz       $v0, .L800DCAE4
    /* CD2CC 800DCACC C2171300 */   srl       $v0, $s3, 31
    /* CD2D0 800DCAD0 21106202 */  addu       $v0, $s3, $v0
    /* CD2D4 800DCAD4 43100200 */  sra        $v0, $v0, 1
    /* CD2D8 800DCAD8 2A10A202 */  slt        $v0, $s5, $v0
    /* CD2DC 800DCADC 1B004014 */  bnez       $v0, .L800DCB4C
    /* CD2E0 800DCAE0 03000224 */   addiu     $v0, $zero, 0x3
  .L800DCAE4:
    /* CD2E4 800DCAE4 21202002 */  addu       $a0, $s1, $zero
    /* CD2E8 800DCAE8 8ACA010C */  jal        func_80072A28
    /* CD2EC 800DCAEC 54000524 */   addiu     $a1, $zero, 0x54
    /* CD2F0 800DCAF0 0B004010 */  beqz       $v0, .L800DCB20
    /* CD2F4 800DCAF4 00000000 */   nop
    /* CD2F8 800DCAF8 21106002 */  addu       $v0, $s3, $zero
    /* CD2FC 800DCAFC 02004104 */  bgez       $v0, .L800DCB08
    /* CD300 800DCB00 00000000 */   nop
    /* CD304 800DCB04 03004224 */  addiu      $v0, $v0, 0x3
  .L800DCB08:
    /* CD308 800DCB08 83100200 */  sra        $v0, $v0, 2
    /* CD30C 800DCB0C 2A104202 */  slt        $v0, $s2, $v0
    /* CD310 800DCB10 03004010 */  beqz       $v0, .L800DCB20
    /* CD314 800DCB14 00000000 */   nop
    /* CD318 800DCB18 D3720308 */  j          .L800DCB4C
    /* CD31C 800DCB1C 04000224 */   addiu     $v0, $zero, 0x4
  .L800DCB20:
    /* CD320 800DCB20 1280043C */  lui        $a0, %hi(D_8011A274)
    /* CD324 800DCB24 74A28490 */  lbu        $a0, %lo(D_8011A274)($a0)
    /* CD328 800DCB28 0B3B030C */  jal        func_800CEC2C
    /* CD32C 800DCB2C 00000000 */   nop
    /* CD330 800DCB30 C21F0200 */  srl        $v1, $v0, 31
    /* CD334 800DCB34 21186200 */  addu       $v1, $v1, $v0
    /* CD338 800DCB38 43180300 */  sra        $v1, $v1, 1
    /* CD33C 800DCB3C 2A18C302 */  slt        $v1, $s6, $v1
    /* CD340 800DCB40 02006014 */  bnez       $v1, .L800DCB4C
    /* CD344 800DCB44 05000224 */   addiu     $v0, $zero, 0x5
    /* CD348 800DCB48 01000224 */  addiu      $v0, $zero, 0x1
  .L800DCB4C:
    /* CD34C 800DCB4C 3400BF8F */  lw         $ra, 0x34($sp)
    /* CD350 800DCB50 3000B68F */  lw         $s6, 0x30($sp)
    /* CD354 800DCB54 2C00B58F */  lw         $s5, 0x2C($sp)
    /* CD358 800DCB58 2800B48F */  lw         $s4, 0x28($sp)
    /* CD35C 800DCB5C 2400B38F */  lw         $s3, 0x24($sp)
    /* CD360 800DCB60 2000B28F */  lw         $s2, 0x20($sp)
    /* CD364 800DCB64 1C00B18F */  lw         $s1, 0x1C($sp)
    /* CD368 800DCB68 1800B08F */  lw         $s0, 0x18($sp)
    /* CD36C 800DCB6C 3800BD27 */  addiu      $sp, $sp, 0x38
    /* CD370 800DCB70 0800E003 */  jr         $ra
    /* CD374 800DCB74 00000000 */   nop
endlabel func_800DC86C
