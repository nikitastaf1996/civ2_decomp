.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095A70, 0x64

glabel func_80095A70
    /* 86270 80095A70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 86274 80095A74 1000BFAF */  sw         $ra, 0x10($sp)
    /* 86278 80095A78 FF81030C */  jal        __main
    /* 8627C 80095A7C 00000000 */   nop
    /* 86280 80095A80 1680043C */  lui        $a0, (0x8016FF00 >> 16)
    /* 86284 80095A84 598A030C */  jal        SetSp
    /* 86288 80095A88 00FF8434 */   ori       $a0, $a0, (0x8016FF00 & 0xFFFF)
    /* 8628C 80095A8C 8456020C */  jal        func_80095A10
    /* 86290 80095A90 00000000 */   nop
    /* 86294 80095A94 1005040C */  jal        func_80101440
    /* 86298 80095A98 00000000 */   nop
    /* 8629C 80095A9C 0A000424 */  addiu      $a0, $zero, 0xA
    /* 862A0 80095AA0 21280000 */  addu       $a1, $zero, $zero
    /* 862A4 80095AA4 A950000C */  jal        func_800142A4
    /* 862A8 80095AA8 21300000 */   addu      $a2, $zero, $zero
    /* 862AC 80095AAC 0A000424 */  addiu      $a0, $zero, 0xA
    /* 862B0 80095AB0 21280000 */  addu       $a1, $zero, $zero
    /* 862B4 80095AB4 A950000C */  jal        func_800142A4
    /* 862B8 80095AB8 21300000 */   addu      $a2, $zero, $zero
    /* 862BC 80095ABC 5148020C */  jal        func_80092144
    /* 862C0 80095AC0 00000000 */   nop
    /* 862C4 80095AC4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 862C8 80095AC8 21100000 */  addu       $v0, $zero, $zero
    /* 862CC 80095ACC 0800E003 */  jr         $ra
    /* 862D0 80095AD0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80095A70
