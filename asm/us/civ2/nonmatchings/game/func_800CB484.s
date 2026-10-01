.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CB484, 0x120

glabel func_800CB484
    /* BBC84 800CB484 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* BBC88 800CB488 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* BBC8C 800CB48C 1800B0AF */  sw         $s0, 0x18($sp)
    /* BBC90 800CB490 21808000 */  addu       $s0, $a0, $zero
    /* BBC94 800CB494 1280043C */  lui        $a0, %hi(D_80121340)
    /* BBC98 800CB498 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BBC9C 800CB49C CB1A030C */  jal        func_800C6B2C
    /* BBCA0 800CB4A0 00000000 */   nop
    /* BBCA4 800CB4A4 1280043C */  lui        $a0, %hi(D_80121340)
    /* BBCA8 800CB4A8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BBCAC 800CB4AC 1680053C */  lui        $a1, %hi(D_80159194)
    /* BBCB0 800CB4B0 9491A524 */  addiu      $a1, $a1, %lo(D_80159194)
    /* BBCB4 800CB4B4 9987030C */  jal        func_800E1E64
    /* BBCB8 800CB4B8 00000000 */   nop
    /* BBCBC 800CB4BC F853020C */  jal        func_80094FE0
    /* BBCC0 800CB4C0 21200002 */   addu      $a0, $s0, $zero
    /* BBCC4 800CB4C4 1280043C */  lui        $a0, %hi(D_80121340)
    /* BBCC8 800CB4C8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BBCCC 800CB4CC 9987030C */  jal        func_800E1E64
    /* BBCD0 800CB4D0 21284000 */   addu      $a1, $v0, $zero
    /* BBCD4 800CB4D4 1280043C */  lui        $a0, %hi(D_80121340)
    /* BBCD8 800CB4D8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BBCDC 800CB4DC CD1A030C */  jal        func_800C6B34
    /* BBCE0 800CB4E0 00000000 */   nop
    /* BBCE4 800CB4E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* BBCE8 800CB4E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BBCEC 800CB4EC 1680053C */  lui        $a1, %hi(D_8015919C)
    /* BBCF0 800CB4F0 9C91A524 */  addiu      $a1, $a1, %lo(D_8015919C)
    /* BBCF4 800CB4F4 9987030C */  jal        func_800E1E64
    /* BBCF8 800CB4F8 00000000 */   nop
    /* BBCFC 800CB4FC 1280043C */  lui        $a0, %hi(D_80121340)
    /* BBD00 800CB500 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BBD04 800CB504 CD1A030C */  jal        func_800C6B34
    /* BBD08 800CB508 00000000 */   nop
    /* BBD0C 800CB50C 1280043C */  lui        $a0, %hi(D_80121340)
    /* BBD10 800CB510 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BBD14 800CB514 1680053C */  lui        $a1, %hi(D_801591A0)
    /* BBD18 800CB518 A091A524 */  addiu      $a1, $a1, %lo(D_801591A0)
    /* BBD1C 800CB51C 9987030C */  jal        func_800E1E64
    /* BBD20 800CB520 00000000 */   nop
    /* BBD24 800CB524 8A54020C */  jal        func_80095228
    /* BBD28 800CB528 21200002 */   addu      $a0, $s0, $zero
    /* BBD2C 800CB52C 1280043C */  lui        $a0, %hi(D_80121340)
    /* BBD30 800CB530 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BBD34 800CB534 9987030C */  jal        func_800E1E64
    /* BBD38 800CB538 21284000 */   addu      $a1, $v0, $zero
    /* BBD3C 800CB53C 1280043C */  lui        $a0, %hi(D_80121340)
    /* BBD40 800CB540 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BBD44 800CB544 1680053C */  lui        $a1, %hi(D_801591A4)
    /* BBD48 800CB548 A491A524 */  addiu      $a1, $a1, %lo(D_801591A4)
    /* BBD4C 800CB54C 9987030C */  jal        func_800E1E64
    /* BBD50 800CB550 00000000 */   nop
    /* BBD54 800CB554 3E0C040C */  jal        func_801030F8
    /* BBD58 800CB558 01000424 */   addiu     $a0, $zero, 0x1
    /* BBD5C 800CB55C 1000A427 */  addiu      $a0, $sp, 0x10
    /* BBD60 800CB560 1280053C */  lui        $a1, %hi(D_80121340)
    /* BBD64 800CB564 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* BBD68 800CB568 7FE6020C */  jal        func_800B99FC
    /* BBD6C 800CB56C 10000624 */   addiu     $a2, $zero, 0x10
    /* BBD70 800CB570 B80C848F */  lw         $a0, %gp_rel(D_80159190)($gp)
    /* BBD74 800CB574 00000000 */  nop
    /* BBD78 800CB578 84008424 */  addiu      $a0, $a0, 0x84
    /* BBD7C 800CB57C 1280053C */  lui        $a1, %hi(D_80121340)
    /* BBD80 800CB580 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* BBD84 800CB584 1000A627 */  addiu      $a2, $sp, 0x10
    /* BBD88 800CB588 6EE7030C */  jal        func_800F9DB8
    /* BBD8C 800CB58C 21380000 */   addu      $a3, $zero, $zero
    /* BBD90 800CB590 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* BBD94 800CB594 1800B08F */  lw         $s0, 0x18($sp)
    /* BBD98 800CB598 2000BD27 */  addiu      $sp, $sp, 0x20
    /* BBD9C 800CB59C 0800E003 */  jr         $ra
    /* BBDA0 800CB5A0 00000000 */   nop
endlabel func_800CB484
