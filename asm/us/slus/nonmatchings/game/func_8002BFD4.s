.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BFD4, 0xB8

glabel func_8002BFD4
    /* 1C7D4 8002BFD4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1C7D8 8002BFD8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1C7DC 8002BFDC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1C7E0 8002BFE0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1C7E4 8002BFE4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C7E8 8002BFE8 2190A000 */  addu       $s2, $a1, $zero
    /* 1C7EC 8002BFEC 2188C000 */  addu       $s1, $a2, $zero
    /* 1C7F0 8002BFF0 00008490 */  lbu        $a0, 0x0($a0)
    /* 1C7F4 8002BFF4 62AF000C */  jal        func_8002BD88
    /* 1C7F8 8002BFF8 2180E000 */   addu      $s0, $a3, $zero
    /* 1C7FC 8002BFFC 21404000 */  addu       $t0, $v0, $zero
    /* 1C800 8002C000 15000011 */  beqz       $t0, .L8002C058
    /* 1C804 8002C004 21300000 */   addu      $a2, $zero, $zero
    /* 1C808 8002C008 21284002 */  addu       $a1, $s2, $zero
  .L8002C00C:
    /* 1C80C 8002C00C 07000424 */  addiu      $a0, $zero, 0x7
  .L8002C010:
    /* 1C810 8002C010 2138A000 */  addu       $a3, $a1, $zero
    /* 1C814 8002C014 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1C818 8002C018 00000291 */  lbu        $v0, 0x0($t0)
    /* 1C81C 8002C01C 00000000 */  nop
    /* 1C820 8002C020 07108200 */  srav       $v0, $v0, $a0
    /* 1C824 8002C024 01004230 */  andi       $v0, $v0, 0x1
    /* 1C828 8002C028 02004014 */  bnez       $v0, .L8002C034
    /* 1C82C 8002C02C 21182002 */   addu      $v1, $s1, $zero
    /* 1C830 8002C030 21180002 */  addu       $v1, $s0, $zero
  .L8002C034:
    /* 1C834 8002C034 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 1C838 8002C038 F5FF8104 */  bgez       $a0, .L8002C010
    /* 1C83C 8002C03C 0000E3A0 */   sb        $v1, 0x0($a3)
    /* 1C840 8002C040 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1C844 8002C044 0F00C228 */  slti       $v0, $a2, 0xF
    /* 1C848 8002C048 F0FF4014 */  bnez       $v0, .L8002C00C
    /* 1C84C 8002C04C 01000825 */   addiu     $t0, $t0, 0x1
    /* 1C850 8002C050 1CB00008 */  j          .L8002C070
    /* 1C854 8002C054 00000000 */   nop
  .L8002C058:
    /* 1C858 8002C058 21284002 */  addu       $a1, $s2, $zero
  .L8002C05C:
    /* 1C85C 8002C05C 0000B0A0 */  sb         $s0, 0x0($a1)
    /* 1C860 8002C060 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1C864 8002C064 0001C228 */  slti       $v0, $a2, 0x100
    /* 1C868 8002C068 FCFF4014 */  bnez       $v0, .L8002C05C
    /* 1C86C 8002C06C 0100A524 */   addiu     $a1, $a1, 0x1
  .L8002C070:
    /* 1C870 8002C070 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1C874 8002C074 1800B28F */  lw         $s2, 0x18($sp)
    /* 1C878 8002C078 1400B18F */  lw         $s1, 0x14($sp)
    /* 1C87C 8002C07C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1C880 8002C080 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1C884 8002C084 0800E003 */  jr         $ra
    /* 1C888 8002C088 00000000 */   nop
endlabel func_8002BFD4
