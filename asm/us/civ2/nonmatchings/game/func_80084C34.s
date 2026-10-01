.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80084C34, 0xB8

glabel func_80084C34
    /* 75434 80084C34 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 75438 80084C38 2000BFAF */  sw         $ra, 0x20($sp)
    /* 7543C 80084C3C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 75440 80084C40 1800B2AF */  sw         $s2, 0x18($sp)
    /* 75444 80084C44 1400B1AF */  sw         $s1, 0x14($sp)
    /* 75448 80084C48 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7544C 80084C4C 1680053C */  lui        $a1, %hi(D_801587EC)
    /* 75450 80084C50 EC87A524 */  addiu      $a1, $a1, %lo(D_801587EC)
    /* 75454 80084C54 AA3A030C */  jal        func_800CEAA8
    /* 75458 80084C58 21888000 */   addu      $s1, $a0, $zero
    /* 7545C 80084C5C 1B004010 */  beqz       $v0, .L80084CCC
    /* 75460 80084C60 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 75464 80084C64 1680053C */  lui        $a1, %hi(D_801587F4)
    /* 75468 80084C68 F487A524 */  addiu      $a1, $a1, %lo(D_801587F4)
    /* 7546C 80084C6C AA3A030C */  jal        func_800CEAA8
    /* 75470 80084C70 21202002 */   addu      $a0, $s1, $zero
    /* 75474 80084C74 05004014 */  bnez       $v0, .L80084C8C
    /* 75478 80084C78 FDFF1224 */   addiu     $s2, $zero, -0x3
    /* 7547C 80084C7C 33130208 */  j          .L80084CCC
    /* 75480 80084C80 FEFF0224 */   addiu     $v0, $zero, -0x2
  .L80084C84:
    /* 75484 80084C84 32130208 */  j          .L80084CC8
    /* 75488 80084C88 21900002 */   addu      $s2, $s0, $zero
  .L80084C8C:
    /* 7548C 80084C8C 21800000 */  addu       $s0, $zero, $zero
    /* 75490 80084C90 1180133C */  lui        $s3, %hi(D_8010C86C)
    /* 75494 80084C94 6CC87326 */  addiu      $s3, $s3, %lo(D_8010C86C)
  .L80084C98:
    /* 75498 80084C98 80281000 */  sll        $a1, $s0, 2
    /* 7549C 80084C9C 2128B000 */  addu       $a1, $a1, $s0
    /* 754A0 80084CA0 80280500 */  sll        $a1, $a1, 2
    /* 754A4 80084CA4 21202002 */  addu       $a0, $s1, $zero
    /* 754A8 80084CA8 9D87030C */  jal        func_800E1E74
    /* 754AC 80084CAC 2128B300 */   addu      $a1, $a1, $s3
    /* 754B0 80084CB0 F4FF4010 */  beqz       $v0, .L80084C84
    /* 754B4 80084CB4 00000000 */   nop
    /* 754B8 80084CB8 01001026 */  addiu      $s0, $s0, 0x1
    /* 754BC 80084CBC 0B00022A */  slti       $v0, $s0, 0xB
    /* 754C0 80084CC0 F5FF4014 */  bnez       $v0, .L80084C98
    /* 754C4 80084CC4 00000000 */   nop
  .L80084CC8:
    /* 754C8 80084CC8 21104002 */  addu       $v0, $s2, $zero
  .L80084CCC:
    /* 754CC 80084CCC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 754D0 80084CD0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 754D4 80084CD4 1800B28F */  lw         $s2, 0x18($sp)
    /* 754D8 80084CD8 1400B18F */  lw         $s1, 0x14($sp)
    /* 754DC 80084CDC 1000B08F */  lw         $s0, 0x10($sp)
    /* 754E0 80084CE0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 754E4 80084CE4 0800E003 */  jr         $ra
    /* 754E8 80084CE8 00000000 */   nop
endlabel func_80084C34
