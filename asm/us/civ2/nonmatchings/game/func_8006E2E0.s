.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006E2E0, 0x5C

glabel func_8006E2E0
    /* 5EAE0 8006E2E0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5EAE4 8006E2E4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5EAE8 8006E2E8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5EAEC 8006E2EC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5EAF0 8006E2F0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5EAF4 8006E2F4 21880000 */  addu       $s1, $zero, $zero
    /* 5EAF8 8006E2F8 1680123C */  lui        $s2, %hi(D_80158748)
    /* 5EAFC 8006E2FC 48875226 */  addiu      $s2, $s2, %lo(D_80158748)
  .L8006E300:
    /* 5EB00 8006E300 80801100 */  sll        $s0, $s1, 2
    /* 5EB04 8006E304 21801202 */  addu       $s0, $s0, $s2
    /* 5EB08 8006E308 0000048E */  lw         $a0, 0x0($s0)
    /* 5EB0C 8006E30C E511040C */  jal        func_80104794
    /* 5EB10 8006E310 01003126 */   addiu     $s1, $s1, 0x1
    /* 5EB14 8006E314 0200222A */  slti       $v0, $s1, 0x2
    /* 5EB18 8006E318 F9FF4014 */  bnez       $v0, .L8006E300
    /* 5EB1C 8006E31C 000000AE */   sw        $zero, 0x0($s0)
    /* 5EB20 8006E320 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5EB24 8006E324 1800B28F */  lw         $s2, 0x18($sp)
    /* 5EB28 8006E328 1400B18F */  lw         $s1, 0x14($sp)
    /* 5EB2C 8006E32C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5EB30 8006E330 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5EB34 8006E334 0800E003 */  jr         $ra
    /* 5EB38 8006E338 00000000 */   nop
endlabel func_8006E2E0
