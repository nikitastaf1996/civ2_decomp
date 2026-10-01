.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009192C, 0x60

glabel func_8009192C
    /* 8212C 8009192C 98FEBD27 */  addiu      $sp, $sp, -0x168
    /* 82130 80091930 6001BFAF */  sw         $ra, 0x160($sp)
    /* 82134 80091934 5C01B1AF */  sw         $s1, 0x15C($sp)
    /* 82138 80091938 5801B0AF */  sw         $s0, 0x158($sp)
    /* 8213C 8009193C 9000B127 */  addiu      $s1, $sp, 0x90
    /* 82140 80091940 9AE0030C */  jal        func_800F8268
    /* 82144 80091944 21202002 */   addu      $a0, $s1, $zero
    /* 82148 80091948 C000B027 */  addiu      $s0, $sp, 0xC0
    /* 8214C 8009194C FCEC030C */  jal        func_800FB3F0
    /* 82150 80091950 21200002 */   addu      $a0, $s0, $zero
    /* 82154 80091954 6546020C */  jal        func_80091994
    /* 82158 80091958 00000000 */   nop
    /* 8215C 8009195C 21200002 */  addu       $a0, $s0, $zero
    /* 82160 80091960 12ED030C */  jal        func_800FB448
    /* 82164 80091964 02000524 */   addiu     $a1, $zero, 0x2
    /* 82168 80091968 21202002 */  addu       $a0, $s1, $zero
    /* 8216C 8009196C 4CE1030C */  jal        func_800F8530
    /* 82170 80091970 02000524 */   addiu     $a1, $zero, 0x2
    /* 82174 80091974 6001BF8F */  lw         $ra, 0x160($sp)
    /* 82178 80091978 5C01B18F */  lw         $s1, 0x15C($sp)
    /* 8217C 8009197C 5801B08F */  lw         $s0, 0x158($sp)
    /* 82180 80091980 6801BD27 */  addiu      $sp, $sp, 0x168
    /* 82184 80091984 0800E003 */  jr         $ra
    /* 82188 80091988 00000000 */   nop
endlabel func_8009192C
