.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B9840, 0x60

glabel func_800B9840
    /* AA040 800B9840 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* AA044 800B9844 21288000 */  addu       $a1, $a0, $zero
    /* AA048 800B9848 30010424 */  addiu      $a0, $zero, 0x130
    /* AA04C 800B984C E0000324 */  addiu      $v1, $zero, 0xE0
    /* AA050 800B9850 08000224 */  addiu      $v0, $zero, 0x8
    /* AA054 800B9854 1800A2A7 */  sh         $v0, 0x18($sp)
    /* AA058 800B9858 10000224 */  addiu      $v0, $zero, 0x10
    /* AA05C 800B985C 1400A4A7 */  sh         $a0, 0x14($sp)
    /* AA060 800B9860 1C00A4A7 */  sh         $a0, 0x1C($sp)
    /* AA064 800B9864 2802A424 */  addiu      $a0, $a1, 0x228
    /* AA068 800B9868 2C00A524 */  addiu      $a1, $a1, 0x2C
    /* AA06C 800B986C 1000A627 */  addiu      $a2, $sp, 0x10
    /* AA070 800B9870 1800A727 */  addiu      $a3, $sp, 0x18
    /* AA074 800B9874 2000BFAF */  sw         $ra, 0x20($sp)
    /* AA078 800B9878 1000A0A7 */  sh         $zero, 0x10($sp)
    /* AA07C 800B987C 1200A0A7 */  sh         $zero, 0x12($sp)
    /* AA080 800B9880 1600A3A7 */  sh         $v1, 0x16($sp)
    /* AA084 800B9884 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* AA088 800B9888 1FE4030C */  jal        func_800F907C
    /* AA08C 800B988C 1E00A3A7 */   sh        $v1, 0x1E($sp)
    /* AA090 800B9890 2000BF8F */  lw         $ra, 0x20($sp)
    /* AA094 800B9894 2800BD27 */  addiu      $sp, $sp, 0x28
    /* AA098 800B9898 0800E003 */  jr         $ra
    /* AA09C 800B989C 00000000 */   nop
endlabel func_800B9840
