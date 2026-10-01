.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CB988, 0x128

glabel func_800CB988
    /* BC188 800CB988 68FFBD27 */  addiu      $sp, $sp, -0x98
    /* BC18C 800CB98C 9400BFAF */  sw         $ra, 0x94($sp)
    /* BC190 800CB990 9000B0AF */  sw         $s0, 0x90($sp)
    /* BC194 800CB994 21808000 */  addu       $s0, $a0, $zero
    /* BC198 800CB998 48010486 */  lh         $a0, 0x148($s0)
    /* BC19C 800CB99C 0422030C */  jal        func_800C8810
    /* BC1A0 800CB9A0 01000524 */   addiu     $a1, $zero, 0x1
    /* BC1A4 800CB9A4 6C35030C */  jal        func_800CD5B0
    /* BC1A8 800CB9A8 21200002 */   addu      $a0, $s0, $zero
    /* BC1AC 800CB9AC 48010286 */  lh         $v0, 0x148($s0)
    /* BC1B0 800CB9B0 00000000 */  nop
    /* BC1B4 800CB9B4 40180200 */  sll        $v1, $v0, 1
    /* BC1B8 800CB9B8 21186200 */  addu       $v1, $v1, $v0
    /* BC1BC 800CB9BC 80180300 */  sll        $v1, $v1, 2
    /* BC1C0 800CB9C0 23186200 */  subu       $v1, $v1, $v0
    /* BC1C4 800CB9C4 00190300 */  sll        $v1, $v1, 4
    /* BC1C8 800CB9C8 23186200 */  subu       $v1, $v1, $v0
    /* BC1CC 800CB9CC C0180300 */  sll        $v1, $v1, 3
    /* BC1D0 800CB9D0 1180013C */  lui        $at, %hi(D_80117A82)
    /* BC1D4 800CB9D4 21082300 */  addu       $at, $at, $v1
    /* BC1D8 800CB9D8 827A2284 */  lh         $v0, %lo(D_80117A82)($at)
    /* BC1DC 800CB9DC 00000000 */  nop
    /* BC1E0 800CB9E0 07004010 */  beqz       $v0, .L800CBA00
    /* BC1E4 800CB9E4 00000000 */   nop
    /* BC1E8 800CB9E8 1680023C */  lui        $v0, %hi(D_80159178)
    /* BC1EC 800CB9EC 7891428C */  lw         $v0, %lo(D_80159178)($v0)
    /* BC1F0 800CB9F0 00000000 */  nop
    /* BC1F4 800CB9F4 02004010 */  beqz       $v0, .L800CBA00
    /* BC1F8 800CB9F8 01000224 */   addiu     $v0, $zero, 0x1
    /* BC1FC 800CB9FC FC0802AE */  sw         $v0, 0x8FC($s0)
  .L800CBA00:
    /* BC200 800CBA00 48010486 */  lh         $a0, 0x148($s0)
    /* BC204 800CBA04 4BDF010C */  jal        func_80077D2C
    /* BC208 800CBA08 00000000 */   nop
    /* BC20C 800CBA0C 02004010 */  beqz       $v0, .L800CBA18
    /* BC210 800CBA10 03000224 */   addiu     $v0, $zero, 0x3
    /* BC214 800CBA14 FC0802AE */  sw         $v0, 0x8FC($s0)
  .L800CBA18:
    /* BC218 800CBA18 642F030C */  jal        func_800CBD90
    /* BC21C 800CBA1C 21200002 */   addu      $a0, $s0, $zero
    /* BC220 800CBA20 00140200 */  sll        $v0, $v0, 16
    /* BC224 800CBA24 1D004010 */  beqz       $v0, .L800CBA9C
    /* BC228 800CBA28 21100000 */   addu      $v0, $zero, $zero
    /* BC22C 800CBA2C 5D37030C */  jal        func_800CDD74
    /* BC230 800CBA30 21200002 */   addu      $a0, $s0, $zero
    /* BC234 800CBA34 60010486 */  lh         $a0, 0x160($s0)
    /* BC238 800CBA38 00000000 */  nop
    /* BC23C 800CBA3C 04008010 */  beqz       $a0, .L800CBA50
    /* BC240 800CBA40 00000000 */   nop
    /* BC244 800CBA44 7DF3030C */  jal        func_800FCDF4
    /* BC248 800CBA48 00000000 */   nop
    /* BC24C 800CBA4C 600100A6 */  sh         $zero, 0x160($s0)
  .L800CBA50:
    /* BC250 800CBA50 5C010486 */  lh         $a0, 0x15C($s0)
    /* BC254 800CBA54 00000000 */  nop
    /* BC258 800CBA58 04008010 */  beqz       $a0, .L800CBA6C
    /* BC25C 800CBA5C 00000000 */   nop
    /* BC260 800CBA60 7DF3030C */  jal        func_800FCDF4
    /* BC264 800CBA64 00000000 */   nop
    /* BC268 800CBA68 5C0100A6 */  sh         $zero, 0x15C($s0)
  .L800CBA6C:
    /* BC26C 800CBA6C 5E010486 */  lh         $a0, 0x15E($s0)
    /* BC270 800CBA70 00000000 */  nop
    /* BC274 800CBA74 05008010 */  beqz       $a0, .L800CBA8C
    /* BC278 800CBA78 0A000224 */   addiu     $v0, $zero, 0xA
    /* BC27C 800CBA7C 7DF3030C */  jal        func_800FCDF4
    /* BC280 800CBA80 00000000 */   nop
    /* BC284 800CBA84 5E0100A6 */  sh         $zero, 0x15E($s0)
    /* BC288 800CBA88 0A000224 */  addiu      $v0, $zero, 0xA
  .L800CBA8C:
    /* BC28C 800CBA8C E20302A6 */  sh         $v0, 0x3E2($s0)
    /* BC290 800CBA90 28000224 */  addiu      $v0, $zero, 0x28
    /* BC294 800CBA94 E40302A6 */  sh         $v0, 0x3E4($s0)
    /* BC298 800CBA98 01000224 */  addiu      $v0, $zero, 0x1
  .L800CBA9C:
    /* BC29C 800CBA9C 9400BF8F */  lw         $ra, 0x94($sp)
    /* BC2A0 800CBAA0 9000B08F */  lw         $s0, 0x90($sp)
    /* BC2A4 800CBAA4 9800BD27 */  addiu      $sp, $sp, 0x98
    /* BC2A8 800CBAA8 0800E003 */  jr         $ra
    /* BC2AC 800CBAAC 00000000 */   nop
endlabel func_800CB988
