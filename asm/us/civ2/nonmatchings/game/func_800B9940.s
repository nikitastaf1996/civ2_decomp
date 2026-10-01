.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B9940, 0xBC

glabel func_800B9940
    /* AA140 800B9940 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* AA144 800B9944 2400B1AF */  sw         $s1, 0x24($sp)
    /* AA148 800B9948 21888000 */  addu       $s1, $a0, $zero
    /* AA14C 800B994C 02000224 */  addiu      $v0, $zero, 0x2
    /* AA150 800B9950 1800A2A7 */  sh         $v0, 0x18($sp)
    /* AA154 800B9954 2A010224 */  addiu      $v0, $zero, 0x12A
    /* AA158 800B9958 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* AA15C 800B995C 18000224 */  addiu      $v0, $zero, 0x18
    /* AA160 800B9960 2800BFAF */  sw         $ra, 0x28($sp)
    /* AA164 800B9964 2000B0AF */  sw         $s0, 0x20($sp)
    /* AA168 800B9968 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* AA16C 800B996C 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* AA170 800B9970 D800248E */  lw         $a0, 0xD8($s1)
    /* AA174 800B9974 D400228E */  lw         $v0, 0xD4($s1)
    /* AA178 800B9978 AE008524 */  addiu      $a1, $a0, 0xAE
    /* AA17C 800B997C 02004324 */  addiu      $v1, $v0, 0x2
    /* AA180 800B9980 2A014224 */  addiu      $v0, $v0, 0x12A
    /* AA184 800B9984 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* AA188 800B9988 1680023C */  lui        $v0, %hi(D_8015894C)
    /* AA18C 800B998C 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* AA190 800B9990 C6008424 */  addiu      $a0, $a0, 0xC6
    /* AA194 800B9994 1800A3A7 */  sh         $v1, 0x18($sp)
    /* AA198 800B9998 1A00A5A7 */  sh         $a1, 0x1A($sp)
    /* AA19C 800B999C 1E00A4A7 */  sh         $a0, 0x1E($sp)
    /* AA1A0 800B99A0 1C05448C */  lw         $a0, 0x51C($v0)
    /* AA1A4 800B99A4 A63A030C */  jal        func_800CEA98
    /* AA1A8 800B99A8 54023026 */   addiu     $s0, $s1, 0x254
    /* AA1AC 800B99AC 21200002 */  addu       $a0, $s0, $zero
    /* AA1B0 800B99B0 2C002526 */  addiu      $a1, $s1, 0x2C
    /* AA1B4 800B99B4 1800A727 */  addiu      $a3, $sp, 0x18
    /* AA1B8 800B99B8 64000624 */  addiu      $a2, $zero, 0x64
    /* AA1BC 800B99BC 4FDA030C */  jal        func_800F693C
    /* AA1C0 800B99C0 1000A2AF */   sw        $v0, 0x10($sp)
    /* AA1C4 800B99C4 0C80053C */  lui        $a1, %hi(func_800B98D0)
    /* AA1C8 800B99C8 D098A524 */  addiu      $a1, $a1, %lo(func_800B98D0)
    /* AA1CC 800B99CC A3DA030C */  jal        func_800F6A8C
    /* AA1D0 800B99D0 21200002 */   addu      $a0, $s0, $zero
    /* AA1D4 800B99D4 8DDA030C */  jal        func_800F6A34
    /* AA1D8 800B99D8 21200002 */   addu      $a0, $s0, $zero
    /* AA1DC 800B99DC 98DA030C */  jal        func_800F6A60
    /* AA1E0 800B99E0 21200002 */   addu      $a0, $s0, $zero
    /* AA1E4 800B99E4 2800BF8F */  lw         $ra, 0x28($sp)
    /* AA1E8 800B99E8 2400B18F */  lw         $s1, 0x24($sp)
    /* AA1EC 800B99EC 2000B08F */  lw         $s0, 0x20($sp)
    /* AA1F0 800B99F0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* AA1F4 800B99F4 0800E003 */  jr         $ra
    /* AA1F8 800B99F8 00000000 */   nop
endlabel func_800B9940
