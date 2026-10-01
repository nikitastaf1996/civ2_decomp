.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A8A40, 0x70

glabel func_800A8A40
    /* 99240 800A8A40 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99244 800A8A44 1400BFAF */  sw         $ra, 0x14($sp)
    /* 99248 800A8A48 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9924C 800A8A4C 98E9030C */  jal        func_800FA660
    /* 99250 800A8A50 21808000 */   addu      $s0, $a0, $zero
    /* 99254 800A8A54 80000224 */  addiu      $v0, $zero, 0x80
    /* 99258 800A8A58 1680013C */  lui        $at, %hi(D_801592E4)
    /* 9925C 800A8A5C E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* 99260 800A8A60 3E82030C */  jal        __builtin_new
    /* 99264 800A8A64 C8100424 */   addiu     $a0, $zero, 0x10C8
    /* 99268 800A8A68 00841000 */  sll        $s0, $s0, 16
    /* 9926C 800A8A6C 21204000 */  addu       $a0, $v0, $zero
    /* 99270 800A8A70 49A3020C */  jal        func_800A8D24
    /* 99274 800A8A74 032C1000 */   sra       $a1, $s0, 16
    /* 99278 800A8A78 21804000 */  addu       $s0, $v0, $zero
    /* 9927C 800A8A7C 7AA5020C */  jal        func_800A95E8
    /* 99280 800A8A80 21200002 */   addu      $a0, $s0, $zero
    /* 99284 800A8A84 03000012 */  beqz       $s0, .L800A8A94
    /* 99288 800A8A88 21200002 */   addu      $a0, $s0, $zero
    /* 9928C 800A8A8C E5A3020C */  jal        func_800A8F94
    /* 99290 800A8A90 03000524 */   addiu     $a1, $zero, 0x3
  .L800A8A94:
    /* 99294 800A8A94 A8E9030C */  jal        func_800FA6A0
    /* 99298 800A8A98 00000000 */   nop
    /* 9929C 800A8A9C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 992A0 800A8AA0 1000B08F */  lw         $s0, 0x10($sp)
    /* 992A4 800A8AA4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 992A8 800A8AA8 0800E003 */  jr         $ra
    /* 992AC 800A8AAC 00000000 */   nop
endlabel func_800A8A40
