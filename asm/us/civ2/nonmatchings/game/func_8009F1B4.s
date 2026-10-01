.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009F1B4, 0x114

glabel func_8009F1B4
    /* 8F9B4 8009F1B4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8F9B8 8009F1B8 2400BFAF */  sw         $ra, 0x24($sp)
    /* 8F9BC 8009F1BC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 8F9C0 8009F1C0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8F9C4 8009F1C4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8F9C8 8009F1C8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8F9CC 8009F1CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8F9D0 8009F1D0 21A08000 */  addu       $s4, $a0, $zero
    /* 8F9D4 8009F1D4 2198A000 */  addu       $s3, $a1, $zero
    /* 8F9D8 8009F1D8 0300C104 */  bgez       $a2, .L8009F1E8
    /* 8F9DC 8009F1DC 01001124 */   addiu     $s1, $zero, 0x1
    /* 8F9E0 8009F1E0 807C0208 */  j          .L8009F200
    /* 8F9E4 8009F1E4 03001224 */   addiu     $s2, $zero, 0x3
  .L8009F1E8:
    /* 8F9E8 8009F1E8 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 8F9EC 8009F1EC B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 8F9F0 8009F1F0 00000000 */  nop
    /* 8F9F4 8009F1F4 0200C214 */  bne        $a2, $v0, .L8009F200
    /* 8F9F8 8009F1F8 02001224 */   addiu     $s2, $zero, 0x2
    /* 8F9FC 8009F1FC 01001224 */  addiu      $s2, $zero, 0x1
  .L8009F200:
    /* 8FA00 8009F200 21800000 */  addu       $s0, $zero, $zero
  .L8009F204:
    /* 8FA04 8009F204 0B000012 */  beqz       $s0, .L8009F234
    /* 8FA08 8009F208 40101000 */   sll       $v0, $s0, 1
    /* 8FA0C 8009F20C 21105000 */  addu       $v0, $v0, $s0
    /* 8FA10 8009F210 80100200 */  sll        $v0, $v0, 2
    /* 8FA14 8009F214 23105000 */  subu       $v0, $v0, $s0
    /* 8FA18 8009F218 80110200 */  sll        $v0, $v0, 6
    /* 8FA1C 8009F21C 1280013C */  lui        $at, %hi(D_8011E956)
    /* 8FA20 8009F220 21082200 */  addu       $at, $at, $v0
    /* 8FA24 8009F224 56E92284 */  lh         $v0, %lo(D_8011E956)($at)
    /* 8FA28 8009F228 00000000 */  nop
    /* 8FA2C 8009F22C 1A004010 */  beqz       $v0, .L8009F298
    /* 8FA30 8009F230 00000000 */   nop
  .L8009F234:
    /* 8FA34 8009F234 40101000 */  sll        $v0, $s0, 1
    /* 8FA38 8009F238 21105000 */  addu       $v0, $v0, $s0
    /* 8FA3C 8009F23C 80100200 */  sll        $v0, $v0, 2
    /* 8FA40 8009F240 23105000 */  subu       $v0, $v0, $s0
    /* 8FA44 8009F244 80110200 */  sll        $v0, $v0, 6
    /* 8FA48 8009F248 1280013C */  lui        $at, %hi(D_8011E958)
    /* 8FA4C 8009F24C 21082200 */  addu       $at, $at, $v0
    /* 8FA50 8009F250 58E92284 */  lh         $v0, %lo(D_8011E958)($at)
    /* 8FA54 8009F254 00000000 */  nop
    /* 8FA58 8009F258 24104202 */  and        $v0, $s2, $v0
    /* 8FA5C 8009F25C 03004014 */  bnez       $v0, .L8009F26C
    /* 8FA60 8009F260 40201000 */   sll       $a0, $s0, 1
    /* 8FA64 8009F264 A67C0208 */  j          .L8009F298
    /* 8FA68 8009F268 21880000 */   addu      $s1, $zero, $zero
  .L8009F26C:
    /* 8FA6C 8009F26C 21209000 */  addu       $a0, $a0, $s0
    /* 8FA70 8009F270 80200400 */  sll        $a0, $a0, 2
    /* 8FA74 8009F274 23209000 */  subu       $a0, $a0, $s0
    /* 8FA78 8009F278 80210400 */  sll        $a0, $a0, 6
    /* 8FA7C 8009F27C 1280023C */  lui        $v0, %hi(D_8011E72C)
    /* 8FA80 8009F280 2CE74224 */  addiu      $v0, $v0, %lo(D_8011E72C)
    /* 8FA84 8009F284 21208200 */  addu       $a0, $a0, $v0
    /* 8FA88 8009F288 21288002 */  addu       $a1, $s4, $zero
    /* 8FA8C 8009F28C D37B020C */  jal        func_8009EF4C
    /* 8FA90 8009F290 21306002 */   addu      $a2, $s3, $zero
    /* 8FA94 8009F294 24882202 */  and        $s1, $s1, $v0
  .L8009F298:
    /* 8FA98 8009F298 01001026 */  addiu      $s0, $s0, 0x1
    /* 8FA9C 8009F29C D9FF001A */  blez       $s0, .L8009F204
    /* 8FAA0 8009F2A0 21102002 */   addu      $v0, $s1, $zero
    /* 8FAA4 8009F2A4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 8FAA8 8009F2A8 2000B48F */  lw         $s4, 0x20($sp)
    /* 8FAAC 8009F2AC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8FAB0 8009F2B0 1800B28F */  lw         $s2, 0x18($sp)
    /* 8FAB4 8009F2B4 1400B18F */  lw         $s1, 0x14($sp)
    /* 8FAB8 8009F2B8 1000B08F */  lw         $s0, 0x10($sp)
    /* 8FABC 8009F2BC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 8FAC0 8009F2C0 0800E003 */  jr         $ra
    /* 8FAC4 8009F2C4 00000000 */   nop
endlabel func_8009F1B4
