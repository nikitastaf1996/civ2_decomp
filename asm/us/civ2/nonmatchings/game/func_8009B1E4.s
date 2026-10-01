.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009B1E4, 0x5C

glabel func_8009B1E4
    /* 8B9E4 8009B1E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8B9E8 8009B1E8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8B9EC 8009B1EC 34028884 */  lh         $t0, 0x234($a0)
    /* 8B9F0 8009B1F0 36028784 */  lh         $a3, 0x236($a0)
    /* 8B9F4 8009B1F4 3C028284 */  lh         $v0, 0x23C($a0)
    /* 8B9F8 8009B1F8 40028384 */  lh         $v1, 0x240($a0)
    /* 8B9FC 8009B1FC 00000000 */  nop
    /* 8BA00 8009B200 21104300 */  addu       $v0, $v0, $v1
    /* 8BA04 8009B204 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8BA08 8009B208 3E028284 */  lh         $v0, 0x23E($a0)
    /* 8BA0C 8009B20C 42028384 */  lh         $v1, 0x242($a0)
    /* 8BA10 8009B210 00000000 */  nop
    /* 8BA14 8009B214 21104300 */  addu       $v0, $v0, $v1
    /* 8BA18 8009B218 01004224 */  addiu      $v0, $v0, 0x1
    /* 8BA1C 8009B21C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8BA20 8009B220 2120A000 */  addu       $a0, $a1, $zero
    /* 8BA24 8009B224 2128C000 */  addu       $a1, $a2, $zero
    /* 8BA28 8009B228 606C020C */  jal        func_8009B180
    /* 8BA2C 8009B22C 21300001 */   addu      $a2, $t0, $zero
    /* 8BA30 8009B230 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8BA34 8009B234 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8BA38 8009B238 0800E003 */  jr         $ra
    /* 8BA3C 8009B23C 00000000 */   nop
endlabel func_8009B1E4
