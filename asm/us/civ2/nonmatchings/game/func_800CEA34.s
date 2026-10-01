.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEA34, 0x64

glabel func_800CEA34
    /* BF234 800CEA34 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* BF238 800CEA38 1800BFAF */  sw         $ra, 0x18($sp)
    /* BF23C 800CEA3C 1400B1AF */  sw         $s1, 0x14($sp)
    /* BF240 800CEA40 1000B0AF */  sw         $s0, 0x10($sp)
    /* BF244 800CEA44 AD87030C */  jal        func_800E1EB4
    /* BF248 800CEA48 21888000 */   addu      $s1, $a0, $zero
    /* BF24C 800CEA4C 01804224 */  addiu      $v0, $v0, -0x7FFF
    /* BF250 800CEA50 1280043C */  lui        $a0, %hi(D_80121BE4)
    /* BF254 800CEA54 E41B8424 */  addiu      $a0, $a0, %lo(D_80121BE4)
    /* BF258 800CEA58 F552020C */  jal        func_80094BD4
    /* BF25C 800CEA5C FFFF4530 */   andi      $a1, $v0, 0xFFFF
    /* BF260 800CEA60 21804000 */  addu       $s0, $v0, $zero
    /* BF264 800CEA64 21200002 */  addu       $a0, $s0, $zero
    /* BF268 800CEA68 A587030C */  jal        func_800E1E94
    /* BF26C 800CEA6C 21282002 */   addu      $a1, $s1, $zero
    /* BF270 800CEA70 1280023C */  lui        $v0, %hi(D_80121BEC)
    /* BF274 800CEA74 EC1B428C */  lw         $v0, %lo(D_80121BEC)($v0)
    /* BF278 800CEA78 00000000 */  nop
    /* BF27C 800CEA7C 23100202 */  subu       $v0, $s0, $v0
    /* BF280 800CEA80 1800BF8F */  lw         $ra, 0x18($sp)
    /* BF284 800CEA84 1400B18F */  lw         $s1, 0x14($sp)
    /* BF288 800CEA88 1000B08F */  lw         $s0, 0x10($sp)
    /* BF28C 800CEA8C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* BF290 800CEA90 0800E003 */  jr         $ra
    /* BF294 800CEA94 00000000 */   nop
endlabel func_800CEA34
