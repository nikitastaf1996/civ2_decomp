.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008E990, 0xC0

glabel func_8008E990
    /* 7F190 8008E990 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7F194 8008E994 1400BFAF */  sw         $ra, 0x14($sp)
    /* 7F198 8008E998 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7F19C 8008E99C 21808000 */  addu       $s0, $a0, $zero
    /* 7F1A0 8008E9A0 40101000 */  sll        $v0, $s0, 1
    /* 7F1A4 8008E9A4 21105000 */  addu       $v0, $v0, $s0
    /* 7F1A8 8008E9A8 80100200 */  sll        $v0, $v0, 2
    /* 7F1AC 8008E9AC 23105000 */  subu       $v0, $v0, $s0
    /* 7F1B0 8008E9B0 C0100200 */  sll        $v0, $v0, 3
    /* 7F1B4 8008E9B4 1180013C */  lui        $at, %hi(D_80113ED9)
    /* 7F1B8 8008E9B8 21082200 */  addu       $at, $at, $v0
    /* 7F1BC 8008E9BC D93E2280 */  lb         $v0, %lo(D_80113ED9)($at)
    /* 7F1C0 8008E9C0 1280033C */  lui        $v1, %hi(D_8011A5D1)
    /* 7F1C4 8008E9C4 D1A56390 */  lbu        $v1, %lo(D_8011A5D1)($v1)
    /* 7F1C8 8008E9C8 00000000 */  nop
    /* 7F1CC 8008E9CC 2A104300 */  slt        $v0, $v0, $v1
    /* 7F1D0 8008E9D0 07004014 */  bnez       $v0, .L8008E9F0
    /* 7F1D4 8008E9D4 40101000 */   sll       $v0, $s0, 1
    /* 7F1D8 8008E9D8 C826020C */  jal        func_80089B20
    /* 7F1DC 8008E9DC 09000524 */   addiu     $a1, $zero, 0x9
    /* 7F1E0 8008E9E0 03004014 */  bnez       $v0, .L8008E9F0
    /* 7F1E4 8008E9E4 40101000 */   sll       $v0, $s0, 1
    /* 7F1E8 8008E9E8 8F3A0208 */  j          .L8008EA3C
    /* 7F1EC 8008E9EC 09000224 */   addiu     $v0, $zero, 0x9
  .L8008E9F0:
    /* 7F1F0 8008E9F0 21105000 */  addu       $v0, $v0, $s0
    /* 7F1F4 8008E9F4 80100200 */  sll        $v0, $v0, 2
    /* 7F1F8 8008E9F8 23105000 */  subu       $v0, $v0, $s0
    /* 7F1FC 8008E9FC C0100200 */  sll        $v0, $v0, 3
    /* 7F200 8008EA00 1180013C */  lui        $at, %hi(D_80113ED9)
    /* 7F204 8008EA04 21082200 */  addu       $at, $at, $v0
    /* 7F208 8008EA08 D93E2280 */  lb         $v0, %lo(D_80113ED9)($at)
    /* 7F20C 8008EA0C 1280033C */  lui        $v1, %hi(D_8011A5D2)
    /* 7F210 8008EA10 D2A56390 */  lbu        $v1, %lo(D_8011A5D2)($v1)
    /* 7F214 8008EA14 00000000 */  nop
    /* 7F218 8008EA18 2A104300 */  slt        $v0, $v0, $v1
    /* 7F21C 8008EA1C 07004014 */  bnez       $v0, .L8008EA3C
    /* 7F220 8008EA20 21100000 */   addu      $v0, $zero, $zero
    /* 7F224 8008EA24 21200002 */  addu       $a0, $s0, $zero
    /* 7F228 8008EA28 C826020C */  jal        func_80089B20
    /* 7F22C 8008EA2C 17000524 */   addiu     $a1, $zero, 0x17
    /* 7F230 8008EA30 02004014 */  bnez       $v0, .L8008EA3C
    /* 7F234 8008EA34 21100000 */   addu      $v0, $zero, $zero
    /* 7F238 8008EA38 17000224 */  addiu      $v0, $zero, 0x17
  .L8008EA3C:
    /* 7F23C 8008EA3C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 7F240 8008EA40 1000B08F */  lw         $s0, 0x10($sp)
    /* 7F244 8008EA44 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 7F248 8008EA48 0800E003 */  jr         $ra
    /* 7F24C 8008EA4C 00000000 */   nop
endlabel func_8008E990
