.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80077BF8, 0x90

glabel func_80077BF8
    /* 683F8 80077BF8 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 683FC 80077BFC 6000BFAF */  sw         $ra, 0x60($sp)
    /* 68400 80077C00 DC02848F */  lw         $a0, %gp_rel(D_801587B4)($gp)
    /* 68404 80077C04 AFF4030C */  jal        func_800FD2BC
    /* 68408 80077C08 1000A527 */   addiu     $a1, $sp, 0x10
    /* 6840C 80077C0C 00140200 */  sll        $v0, $v0, 16
    /* 68410 80077C10 03140200 */  sra        $v0, $v0, 16
    /* 68414 80077C14 01000324 */  addiu      $v1, $zero, 0x1
    /* 68418 80077C18 15004314 */  bne        $v0, $v1, .L80077C70
    /* 6841C 80077C1C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 68420 80077C20 1280053C */  lui        $a1, %hi(D_8011A548)
    /* 68424 80077C24 48A5A524 */  addiu      $a1, $a1, %lo(D_8011A548)
    /* 68428 80077C28 F4F5030C */  jal        func_800FD7D0
    /* 6842C 80077C2C 4C000624 */   addiu     $a2, $zero, 0x4C
    /* 68430 80077C30 D8F5030C */  jal        func_800FD760
    /* 68434 80077C34 1000A427 */   addiu     $a0, $sp, 0x10
    /* 68438 80077C38 1280043C */  lui        $a0, %hi(D_8011A558)
    /* 6843C 80077C3C 58A58424 */  addiu      $a0, $a0, %lo(D_8011A558)
    /* 68440 80077C40 0000828C */  lw         $v0, 0x0($a0)
    /* 68444 80077C44 5F00033C */  lui        $v1, (0x5F5300 >> 16)
    /* 68448 80077C48 00536334 */  ori        $v1, $v1, (0x5F5300 & 0xFFFF)
    /* 6844C 80077C4C 25104300 */  or         $v0, $v0, $v1
    /* 68450 80077C50 000082AC */  sw         $v0, 0x0($a0)
    /* 68454 80077C54 02000224 */  addiu      $v0, $zero, 0x2
    /* 68458 80077C58 0E0082A4 */  sh         $v0, 0xE($a0)
    /* 6845C 80077C5C 01000224 */  addiu      $v0, $zero, 0x1
    /* 68460 80077C60 120082A4 */  sh         $v0, 0x12($a0)
    /* 68464 80077C64 100082A4 */  sh         $v0, 0x10($a0)
    /* 68468 80077C68 1EDF0108 */  j          .L80077C78
    /* 6846C 80077C6C 140082A4 */   sh        $v0, 0x14($a0)
  .L80077C70:
    /* 68470 80077C70 BCDE010C */  jal        func_80077AF0
    /* 68474 80077C74 00000000 */   nop
  .L80077C78:
    /* 68478 80077C78 6000BF8F */  lw         $ra, 0x60($sp)
    /* 6847C 80077C7C 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 68480 80077C80 0800E003 */  jr         $ra
    /* 68484 80077C84 00000000 */   nop
endlabel func_80077BF8
