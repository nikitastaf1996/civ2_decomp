.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80046688, 0x5C

glabel func_80046688
    /* 36E88 80046688 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 36E8C 8004668C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 36E90 80046690 1400B1AF */  sw         $s1, 0x14($sp)
    /* 36E94 80046694 1000B0AF */  sw         $s0, 0x10($sp)
    /* 36E98 80046698 21808000 */  addu       $s0, $a0, $zero
    /* 36E9C 8004669C 2110A000 */  addu       $v0, $a1, $zero
    /* 36EA0 800466A0 2188C000 */  addu       $s1, $a2, $zero
    /* 36EA4 800466A4 1180043C */  lui        $a0, %hi(D_8010BC94)
    /* 36EA8 800466A8 94BC8424 */  addiu      $a0, $a0, %lo(D_8010BC94)
    /* 36EAC 800466AC 21280002 */  addu       $a1, $s0, $zero
    /* 36EB0 800466B0 0A8B020C */  jal        func_800A2C28
    /* 36EB4 800466B4 21304000 */   addu      $a2, $v0, $zero
    /* 36EB8 800466B8 1180043C */  lui        $a0, %hi(D_8010BC94)
    /* 36EBC 800466BC 94BC8424 */  addiu      $a0, $a0, %lo(D_8010BC94)
    /* 36EC0 800466C0 21280002 */  addu       $a1, $s0, $zero
    /* 36EC4 800466C4 9A8A020C */  jal        func_800A2A68
    /* 36EC8 800466C8 21302002 */   addu      $a2, $s1, $zero
    /* 36ECC 800466CC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 36ED0 800466D0 1400B18F */  lw         $s1, 0x14($sp)
    /* 36ED4 800466D4 1000B08F */  lw         $s0, 0x10($sp)
    /* 36ED8 800466D8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 36EDC 800466DC 0800E003 */  jr         $ra
    /* 36EE0 800466E0 00000000 */   nop
endlabel func_80046688
