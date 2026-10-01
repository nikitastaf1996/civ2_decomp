.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B864, 0x74

glabel func_8002B864
    /* 1C064 8002B864 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1C068 8002B868 2800BFAF */  sw         $ra, 0x28($sp)
    /* 1C06C 8002B86C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 1C070 8002B870 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1C074 8002B874 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1C078 8002B878 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1C07C 8002B87C 2190C000 */  addu       $s2, $a2, $zero
    /* 1C080 8002B880 2198E000 */  addu       $s3, $a3, $zero
    /* 1C084 8002B884 1280113C */  lui        $s1, %hi(D_8011ACB4)
    /* 1C088 8002B888 B4AC3126 */  addiu      $s1, $s1, %lo(D_8011ACB4)
    /* 1C08C 8002B88C 01001024 */  addiu      $s0, $zero, 0x1
    /* 1C090 8002B890 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C094 8002B894 0000278E */  lw         $a3, 0x0($s1)
    /* 1C098 8002B898 0B6F020C */  jal        func_8009BC2C
    /* 1C09C 8002B89C 21300000 */   addu      $a2, $zero, $zero
    /* 1C0A0 8002B8A0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C0A4 8002B8A4 21204002 */  addu       $a0, $s2, $zero
    /* 1C0A8 8002B8A8 21286002 */  addu       $a1, $s3, $zero
    /* 1C0AC 8002B8AC 0000278E */  lw         $a3, 0x0($s1)
    /* 1C0B0 8002B8B0 0B6F020C */  jal        func_8009BC2C
    /* 1C0B4 8002B8B4 21300000 */   addu      $a2, $zero, $zero
    /* 1C0B8 8002B8B8 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1C0BC 8002B8BC 2400B38F */  lw         $s3, 0x24($sp)
    /* 1C0C0 8002B8C0 2000B28F */  lw         $s2, 0x20($sp)
    /* 1C0C4 8002B8C4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1C0C8 8002B8C8 1800B08F */  lw         $s0, 0x18($sp)
    /* 1C0CC 8002B8CC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1C0D0 8002B8D0 0800E003 */  jr         $ra
    /* 1C0D4 8002B8D4 00000000 */   nop
endlabel func_8002B864
