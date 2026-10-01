.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094A2C, 0x78

glabel func_80094A2C
    /* 8522C 80094A2C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 85230 80094A30 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 85234 80094A34 1800B2AF */  sw         $s2, 0x18($sp)
    /* 85238 80094A38 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8523C 80094A3C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 85240 80094A40 21808000 */  addu       $s0, $a0, $zero
    /* 85244 80094A44 2188C000 */  addu       $s1, $a2, $zero
    /* 85248 80094A48 01001224 */  addiu      $s2, $zero, 0x1
    /* 8524C 80094A4C 000005A2 */  sb         $a1, 0x0($s0)
    /* 85250 80094A50 FED4030C */  jal        func_800F53F8
    /* 85254 80094A54 FFFF2432 */   andi      $a0, $s1, 0xFFFF
    /* 85258 80094A58 0A004010 */  beqz       $v0, .L80094A84
    /* 8525C 80094A5C 040002AE */   sw        $v0, 0x4($s0)
    /* 85260 80094A60 01000224 */  addiu      $v0, $zero, 0x1
    /* 85264 80094A64 010002A2 */  sb         $v0, 0x1($s0)
    /* 85268 80094A68 0C0000A6 */  sh         $zero, 0xC($s0)
    /* 8526C 80094A6C 100011A6 */  sh         $s1, 0x10($s0)
    /* 85270 80094A70 0E0011A6 */  sh         $s1, 0xE($s0)
    /* 85274 80094A74 0400048E */  lw         $a0, 0x4($s0)
    /* 85278 80094A78 7CD6030C */  jal        func_800F59F0
    /* 8527C 80094A7C 21900000 */   addu      $s2, $zero, $zero
    /* 85280 80094A80 080002AE */  sw         $v0, 0x8($s0)
  .L80094A84:
    /* 85284 80094A84 21104002 */  addu       $v0, $s2, $zero
    /* 85288 80094A88 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8528C 80094A8C 1800B28F */  lw         $s2, 0x18($sp)
    /* 85290 80094A90 1400B18F */  lw         $s1, 0x14($sp)
    /* 85294 80094A94 1000B08F */  lw         $s0, 0x10($sp)
    /* 85298 80094A98 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8529C 80094A9C 0800E003 */  jr         $ra
    /* 852A0 80094AA0 00000000 */   nop
endlabel func_80094A2C
