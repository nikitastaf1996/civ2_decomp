.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009B084, 0x90

glabel func_8009B084
    /* 8B884 8009B084 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 8B888 8009B088 4000BFAF */  sw         $ra, 0x40($sp)
    /* 8B88C 8009B08C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 8B890 8009B090 3800B2AF */  sw         $s2, 0x38($sp)
    /* 8B894 8009B094 3400B1AF */  sw         $s1, 0x34($sp)
    /* 8B898 8009B098 3000B0AF */  sw         $s0, 0x30($sp)
    /* 8B89C 8009B09C 21808000 */  addu       $s0, $a0, $zero
    /* 8B8A0 8009B0A0 2188A000 */  addu       $s1, $a1, $zero
    /* 8B8A4 8009B0A4 2190C000 */  addu       $s2, $a2, $zero
    /* 8B8A8 8009B0A8 2198E000 */  addu       $s3, $a3, $zero
    /* 8B8AC 8009B0AC 1000B2AF */  sw         $s2, 0x10($sp)
    /* 8B8B0 8009B0B0 2800A527 */  addiu      $a1, $sp, 0x28
    /* 8B8B4 8009B0B4 2C00A627 */  addiu      $a2, $sp, 0x2C
    /* 8B8B8 8009B0B8 0A66020C */  jal        func_80099828
    /* 8B8BC 8009B0BC 21382002 */   addu      $a3, $s1, $zero
    /* 8B8C0 8009B0C0 1000B1AF */  sw         $s1, 0x10($sp)
    /* 8B8C4 8009B0C4 1400B2AF */  sw         $s2, 0x14($sp)
    /* 8B8C8 8009B0C8 1800B3AF */  sw         $s3, 0x18($sp)
    /* 8B8CC 8009B0CC 32020286 */  lh         $v0, 0x232($s0)
    /* 8B8D0 8009B0D0 00000000 */  nop
    /* 8B8D4 8009B0D4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 8B8D8 8009B0D8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8B8DC 8009B0DC 2000A2AF */  sw         $v0, 0x20($sp)
    /* 8B8E0 8009B0E0 21200002 */  addu       $a0, $s0, $zero
    /* 8B8E4 8009B0E4 2800A68F */  lw         $a2, 0x28($sp)
    /* 8B8E8 8009B0E8 2C00A78F */  lw         $a3, 0x2C($sp)
    /* 8B8EC 8009B0EC B166020C */  jal        func_80099AC4
    /* 8B8F0 8009B0F0 21280002 */   addu      $a1, $s0, $zero
    /* 8B8F4 8009B0F4 4000BF8F */  lw         $ra, 0x40($sp)
    /* 8B8F8 8009B0F8 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 8B8FC 8009B0FC 3800B28F */  lw         $s2, 0x38($sp)
    /* 8B900 8009B100 3400B18F */  lw         $s1, 0x34($sp)
    /* 8B904 8009B104 3000B08F */  lw         $s0, 0x30($sp)
    /* 8B908 8009B108 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 8B90C 8009B10C 0800E003 */  jr         $ra
    /* 8B910 8009B110 00000000 */   nop
endlabel func_8009B084
