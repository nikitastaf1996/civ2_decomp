.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B4BEC, 0x88

glabel func_800B4BEC
    /* A53EC 800B4BEC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A53F0 800B4BF0 1400BFAF */  sw         $ra, 0x14($sp)
    /* A53F4 800B4BF4 1000B0AF */  sw         $s0, 0x10($sp)
    /* A53F8 800B4BF8 21808000 */  addu       $s0, $a0, $zero
    /* A53FC 800B4BFC ED12040C */  jal        func_80104BB4
    /* A5400 800B4C00 21200000 */   addu      $a0, $zero, $zero
    /* A5404 800B4C04 08004230 */  andi       $v0, $v0, 0x8
    /* A5408 800B4C08 15004010 */  beqz       $v0, .L800B4C60
    /* A540C 800B4C0C 00000000 */   nop
    /* A5410 800B4C10 1680053C */  lui        $a1, %hi(D_80158F58)
    /* A5414 800B4C14 588FA524 */  addiu      $a1, $a1, %lo(D_80158F58)
    /* A5418 800B4C18 B987030C */  jal        func_800E1EE4
    /* A541C 800B4C1C 21200002 */   addu      $a0, $s0, $zero
    /* A5420 800B4C20 0F005014 */  bne        $v0, $s0, .L800B4C60
    /* A5424 800B4C24 00000000 */   nop
    /* A5428 800B4C28 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* A542C 800B4C2C B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* A5430 800B4C30 00000000 */  nop
    /* A5434 800B4C34 40180200 */  sll        $v1, $v0, 1
    /* A5438 800B4C38 21186200 */  addu       $v1, $v1, $v0
    /* A543C 800B4C3C 80180300 */  sll        $v1, $v1, 2
    /* A5440 800B4C40 23186200 */  subu       $v1, $v1, $v0
    /* A5444 800B4C44 00190300 */  sll        $v1, $v1, 4
    /* A5448 800B4C48 23186200 */  subu       $v1, $v1, $v0
    /* A544C 800B4C4C C0180300 */  sll        $v1, $v1, 3
    /* A5450 800B4C50 B2740224 */  addiu      $v0, $zero, 0x74B2
    /* A5454 800B4C54 1180013C */  lui        $at, %hi(D_80117694)
    /* A5458 800B4C58 21082300 */  addu       $at, $at, $v1
    /* A545C 800B4C5C 947622AC */  sw         $v0, %lo(D_80117694)($at)
  .L800B4C60:
    /* A5460 800B4C60 1400BF8F */  lw         $ra, 0x14($sp)
    /* A5464 800B4C64 1000B08F */  lw         $s0, 0x10($sp)
    /* A5468 800B4C68 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A546C 800B4C6C 0800E003 */  jr         $ra
    /* A5470 800B4C70 00000000 */   nop
endlabel func_800B4BEC
