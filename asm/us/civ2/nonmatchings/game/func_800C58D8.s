.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C58D8, 0xD8

glabel func_800C58D8
    /* B60D8 800C58D8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* B60DC 800C58DC 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* B60E0 800C58E0 21888000 */  addu       $s1, $a0, $zero
    /* B60E4 800C58E4 2800B0AF */  sw         $s0, 0x28($sp)
    /* B60E8 800C58E8 3000BFAF */  sw         $ra, 0x30($sp)
    /* B60EC 800C58EC B31E040C */  jal        func_80107ACC
    /* B60F0 800C58F0 2180A000 */   addu      $s0, $a1, $zero
    /* B60F4 800C58F4 05002106 */  bgez       $s1, .L800C590C
    /* B60F8 800C58F8 00000000 */   nop
    /* B60FC 800C58FC 7B16030C */  jal        func_800C59EC
    /* B6100 800C5900 21200002 */   addu      $a0, $s0, $zero
    /* B6104 800C5904 22004004 */  bltz       $v0, .L800C5990
    /* B6108 800C5908 00000000 */   nop
  .L800C590C:
    /* B610C 800C590C 1280103C */  lui        $s0, %hi(D_80120D84)
    /* B6110 800C5910 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* B6114 800C5914 21200002 */  addu       $a0, $s0, $zero
    /* B6118 800C5918 08000524 */  addiu      $a1, $zero, 0x8
    /* B611C 800C591C 2C010224 */  addiu      $v0, $zero, 0x12C
    /* B6120 800C5920 1000A2AF */  sw         $v0, 0x10($sp)
    /* B6124 800C5924 C8000224 */  addiu      $v0, $zero, 0xC8
    /* B6128 800C5928 08000624 */  addiu      $a2, $zero, 0x8
    /* B612C 800C592C 01000724 */  addiu      $a3, $zero, 0x1
    /* B6130 800C5930 1400A2AF */  sw         $v0, 0x14($sp)
    /* B6134 800C5934 1800A0AF */  sw         $zero, 0x18($sp)
    /* B6138 800C5938 6FE5020C */  jal        func_800B95BC
    /* B613C 800C593C 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* B6140 800C5940 1280013C */  lui        $at, %hi(D_80121104)
    /* B6144 800C5944 041131AC */  sw         $s1, %lo(D_80121104)($at)
    /* B6148 800C5948 1280013C */  lui        $at, %hi(D_801210C4)
    /* B614C 800C594C C41020AC */  sw         $zero, %lo(D_801210C4)($at)
    /* B6150 800C5950 50E6020C */  jal        func_800B9940
    /* B6154 800C5954 21200002 */   addu      $a0, $s0, $zero
    /* B6158 800C5958 0C80053C */  lui        $a1, %hi(func_800C4FE4)
    /* B615C 800C595C E44FA524 */  addiu      $a1, $a1, %lo(func_800C4FE4)
    /* B6160 800C5960 82DF030C */  jal        func_800F7E08
    /* B6164 800C5964 21200002 */   addu      $a0, $s0, $zero
    /* B6168 800C5968 E5DE030C */  jal        func_800F7B94
    /* B616C 800C596C 21200002 */   addu      $a0, $s0, $zero
    /* B6170 800C5970 F8EA030C */  jal        func_800FABE0
    /* B6174 800C5974 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B6178 800C5978 05DD030C */  jal        func_800F7414
    /* B617C 800C597C 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B6180 800C5980 14DE030C */  jal        func_800F7850
    /* B6184 800C5984 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B6188 800C5988 29E5020C */  jal        func_800B94A4
    /* B618C 800C598C 21200002 */   addu      $a0, $s0, $zero
  .L800C5990:
    /* B6190 800C5990 1280023C */  lui        $v0, %hi(D_801210C4)
    /* B6194 800C5994 C410428C */  lw         $v0, %lo(D_801210C4)($v0)
    /* B6198 800C5998 3000BF8F */  lw         $ra, 0x30($sp)
    /* B619C 800C599C 2C00B18F */  lw         $s1, 0x2C($sp)
    /* B61A0 800C59A0 2800B08F */  lw         $s0, 0x28($sp)
    /* B61A4 800C59A4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* B61A8 800C59A8 0800E003 */  jr         $ra
    /* B61AC 800C59AC 00000000 */   nop
endlabel func_800C58D8
