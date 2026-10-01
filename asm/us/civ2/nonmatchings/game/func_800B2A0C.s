.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2A0C, 0x98

glabel func_800B2A0C
    /* A320C 800B2A0C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A3210 800B2A10 1800BFAF */  sw         $ra, 0x18($sp)
    /* A3214 800B2A14 1400B1AF */  sw         $s1, 0x14($sp)
    /* A3218 800B2A18 1000B0AF */  sw         $s0, 0x10($sp)
    /* A321C 800B2A1C 21808000 */  addu       $s0, $a0, $zero
    /* A3220 800B2A20 2800028E */  lw         $v0, 0x28($s0)
    /* A3224 800B2A24 00000000 */  nop
    /* A3228 800B2A28 06004228 */  slti       $v0, $v0, 0x6
    /* A322C 800B2A2C 17004010 */  beqz       $v0, .L800B2A8C
    /* A3230 800B2A30 2188A000 */   addu      $s1, $a1, $zero
    /* A3234 800B2A34 AD87030C */  jal        func_800E1EB4
    /* A3238 800B2A38 21202002 */   addu      $a0, $s1, $zero
    /* A323C 800B2A3C 01804224 */  addiu      $v0, $v0, -0x7FFF
    /* A3240 800B2A40 98010426 */  addiu      $a0, $s0, 0x198
    /* A3244 800B2A44 F552020C */  jal        func_80094BD4
    /* A3248 800B2A48 FFFF4530 */   andi      $a1, $v0, 0xFFFF
    /* A324C 800B2A4C 2800038E */  lw         $v1, 0x28($s0)
    /* A3250 800B2A50 00000000 */  nop
    /* A3254 800B2A54 80180300 */  sll        $v1, $v1, 2
    /* A3258 800B2A58 21187000 */  addu       $v1, $v1, $s0
    /* A325C 800B2A5C 3C0262AC */  sw         $v0, 0x23C($v1)
    /* A3260 800B2A60 2800028E */  lw         $v0, 0x28($s0)
    /* A3264 800B2A64 00000000 */  nop
    /* A3268 800B2A68 80100200 */  sll        $v0, $v0, 2
    /* A326C 800B2A6C 21105000 */  addu       $v0, $v0, $s0
    /* A3270 800B2A70 3C02448C */  lw         $a0, 0x23C($v0)
    /* A3274 800B2A74 A587030C */  jal        func_800E1E94
    /* A3278 800B2A78 21282002 */   addu      $a1, $s1, $zero
    /* A327C 800B2A7C 2800028E */  lw         $v0, 0x28($s0)
    /* A3280 800B2A80 00000000 */  nop
    /* A3284 800B2A84 01004224 */  addiu      $v0, $v0, 0x1
    /* A3288 800B2A88 280002AE */  sw         $v0, 0x28($s0)
  .L800B2A8C:
    /* A328C 800B2A8C 1800BF8F */  lw         $ra, 0x18($sp)
    /* A3290 800B2A90 1400B18F */  lw         $s1, 0x14($sp)
    /* A3294 800B2A94 1000B08F */  lw         $s0, 0x10($sp)
    /* A3298 800B2A98 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A329C 800B2A9C 0800E003 */  jr         $ra
    /* A32A0 800B2AA0 00000000 */   nop
endlabel func_800B2A0C
