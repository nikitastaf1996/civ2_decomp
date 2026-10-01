.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095A10, 0x60

glabel func_80095A10
    /* 86210 80095A10 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 86214 80095A14 1000BFAF */  sw         $ra, 0x10($sp)
    /* 86218 80095A18 1A80053C */  lui        $a1, %hi(D_801A0000)
    /* 8621C 80095A1C 1180043C */  lui        $a0, %hi(D_8010C078)
    /* 86220 80095A20 78C08424 */  addiu      $a0, $a0, %lo(D_8010C078)
    /* 86224 80095A24 21180000 */  addu       $v1, $zero, $zero
  .L80095A28:
    /* 86228 80095A28 0000A290 */  lbu        $v0, %lo(D_801A0000)($a1)
    /* 8622C 80095A2C 00000000 */  nop
    /* 86230 80095A30 000082A0 */  sb         $v0, 0x0($a0)
    /* 86234 80095A34 0100A524 */  addiu      $a1, $a1, %lo(D_801A0001)
    /* 86238 80095A38 01006324 */  addiu      $v1, $v1, 0x1
    /* 8623C 80095A3C 1C00622C */  sltiu      $v0, $v1, 0x1C
    /* 86240 80095A40 F9FF4014 */  bnez       $v0, .L80095A28
    /* 86244 80095A44 01008424 */   addiu     $a0, $a0, 0x1
    /* 86248 80095A48 1180043C */  lui        $a0, %hi(D_8010C08C)
    /* 8624C 80095A4C 8CC0848C */  lw         $a0, %lo(D_8010C08C)($a0)
    /* 86250 80095A50 1680013C */  lui        $at, %hi(D_80159338)
    /* 86254 80095A54 389324AC */  sw         $a0, %lo(D_80159338)($at)
    /* 86258 80095A58 D187030C */  jal        func_800E1F44
    /* 8625C 80095A5C 00000000 */   nop
    /* 86260 80095A60 1000BF8F */  lw         $ra, 0x10($sp)
    /* 86264 80095A64 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 86268 80095A68 0800E003 */  jr         $ra
    /* 8626C 80095A6C 00000000 */   nop
endlabel func_80095A10
