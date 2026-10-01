.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009ABB8, 0xE4

glabel func_8009ABB8
    /* 8B3B8 8009ABB8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8B3BC 8009ABBC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 8B3C0 8009ABC0 2400B1AF */  sw         $s1, 0x24($sp)
    /* 8B3C4 8009ABC4 2000B0AF */  sw         $s0, 0x20($sp)
    /* 8B3C8 8009ABC8 21808000 */  addu       $s0, $a0, $zero
    /* 8B3CC 8009ABCC 1680023C */  lui        $v0, %hi(D_80158872)
    /* 8B3D0 8009ABD0 72884290 */  lbu        $v0, %lo(D_80158872)($v0)
    /* 8B3D4 8009ABD4 00000000 */  nop
    /* 8B3D8 8009ABD8 0B004010 */  beqz       $v0, .L8009AC08
    /* 8B3DC 8009ABDC 2188A000 */   addu      $s1, $a1, $zero
    /* 8B3E0 8009ABE0 1680023C */  lui        $v0, %hi(D_80158874)
    /* 8B3E4 8009ABE4 74884290 */  lbu        $v0, %lo(D_80158874)($v0)
    /* 8B3E8 8009ABE8 00000000 */  nop
    /* 8B3EC 8009ABEC 06004010 */  beqz       $v0, .L8009AC08
    /* 8B3F0 8009ABF0 01000224 */   addiu     $v0, $zero, 0x1
    /* 8B3F4 8009ABF4 1280033C */  lui        $v1, %hi(D_8011ACBC)
    /* 8B3F8 8009ABF8 BCAC638C */  lw         $v1, %lo(D_8011ACBC)($v1)
    /* 8B3FC 8009ABFC 00000000 */  nop
    /* 8B400 8009AC00 20006210 */  beq        $v1, $v0, .L8009AC84
    /* 8B404 8009AC04 00000000 */   nop
  .L8009AC08:
    /* 8B408 8009AC08 40101100 */  sll        $v0, $s1, 1
    /* 8B40C 8009AC0C 21105100 */  addu       $v0, $v0, $s1
    /* 8B410 8009AC10 80100200 */  sll        $v0, $v0, 2
    /* 8B414 8009AC14 21105100 */  addu       $v0, $v0, $s1
    /* 8B418 8009AC18 40100200 */  sll        $v0, $v0, 1
    /* 8B41C 8009AC1C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 8B420 8009AC20 21082200 */  addu       $at, $at, $v0
    /* 8B424 8009AC24 B4D62784 */  lh         $a3, %lo(D_8010D6B4)($at)
    /* 8B428 8009AC28 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 8B42C 8009AC2C 21082200 */  addu       $at, $at, $v0
    /* 8B430 8009AC30 B6D62284 */  lh         $v0, %lo(D_8010D6B6)($at)
    /* 8B434 8009AC34 00000000 */  nop
    /* 8B438 8009AC38 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8B43C 8009AC3C 21200002 */  addu       $a0, $s0, $zero
    /* 8B440 8009AC40 1800A527 */  addiu      $a1, $sp, 0x18
    /* 8B444 8009AC44 0A66020C */  jal        func_80099828
    /* 8B448 8009AC48 1C00A627 */   addiu     $a2, $sp, 0x1C
    /* 8B44C 8009AC4C 4A020386 */  lh         $v1, 0x24A($s0)
    /* 8B450 8009AC50 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 8B454 8009AC54 00000000 */  nop
    /* 8B458 8009AC58 23104300 */  subu       $v0, $v0, $v1
    /* 8B45C 8009AC5C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 8B460 8009AC60 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8B464 8009AC64 32020286 */  lh         $v0, 0x232($s0)
    /* 8B468 8009AC68 00000000 */  nop
    /* 8B46C 8009AC6C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8B470 8009AC70 21200002 */  addu       $a0, $s0, $zero
    /* 8B474 8009AC74 21282002 */  addu       $a1, $s1, $zero
    /* 8B478 8009AC78 1800A78F */  lw         $a3, 0x18($sp)
    /* 8B47C 8009AC7C 4CBB020C */  jal        func_800AED30
    /* 8B480 8009AC80 05000624 */   addiu     $a2, $zero, 0x5
  .L8009AC84:
    /* 8B484 8009AC84 2800BF8F */  lw         $ra, 0x28($sp)
    /* 8B488 8009AC88 2400B18F */  lw         $s1, 0x24($sp)
    /* 8B48C 8009AC8C 2000B08F */  lw         $s0, 0x20($sp)
    /* 8B490 8009AC90 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 8B494 8009AC94 0800E003 */  jr         $ra
    /* 8B498 8009AC98 00000000 */   nop
endlabel func_8009ABB8
