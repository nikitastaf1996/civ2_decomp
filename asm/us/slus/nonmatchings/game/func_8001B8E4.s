.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B8E4, 0xBC

glabel func_8001B8E4
    /* C0E4 8001B8E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C0E8 8001B8E8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* C0EC 8001B8EC 1800B2AF */  sw         $s2, 0x18($sp)
    /* C0F0 8001B8F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* C0F4 8001B8F4 1000B0AF */  sw         $s0, 0x10($sp)
    /* C0F8 8001B8F8 21800000 */  addu       $s0, $zero, $zero
    /* C0FC 8001B8FC 1780123C */  lui        $s2, %hi(D_80172F18)
    /* C100 8001B900 182F5226 */  addiu      $s2, $s2, %lo(D_80172F18)
    /* C104 8001B904 FF001124 */  addiu      $s1, $zero, 0xFF
    /* C108 8001B908 00141000 */  sll        $v0, $s0, 16
  .L8001B90C:
    /* C10C 8001B90C C3130200 */  sra        $v0, $v0, 15
    /* C110 8001B910 21105200 */  addu       $v0, $v0, $s2
    /* C114 8001B914 00004484 */  lh         $a0, 0x0($v0)
    /* C118 8001B918 00000000 */  nop
    /* C11C 8001B91C 04009110 */  beq        $a0, $s1, .L8001B930
    /* C120 8001B920 01000226 */   addiu     $v0, $s0, 0x1
    /* C124 8001B924 1315010C */  jal        SsVabClose
    /* C128 8001B928 00000000 */   nop
    /* C12C 8001B92C 01000226 */  addiu      $v0, $s0, 0x1
  .L8001B930:
    /* C130 8001B930 21804000 */  addu       $s0, $v0, $zero
    /* C134 8001B934 00140200 */  sll        $v0, $v0, 16
    /* C138 8001B938 03140200 */  sra        $v0, $v0, 16
    /* C13C 8001B93C 08004228 */  slti       $v0, $v0, 0x8
    /* C140 8001B940 F2FF4014 */  bnez       $v0, .L8001B90C
    /* C144 8001B944 00141000 */   sll       $v0, $s0, 16
    /* C148 8001B948 21800000 */  addu       $s0, $zero, $zero
    /* C14C 8001B94C 1780043C */  lui        $a0, %hi(D_80172F18)
    /* C150 8001B950 182F8424 */  addiu      $a0, $a0, %lo(D_80172F18)
    /* C154 8001B954 FF000324 */  addiu      $v1, $zero, 0xFF
    /* C158 8001B958 00141000 */  sll        $v0, $s0, 16
  .L8001B95C:
    /* C15C 8001B95C C3130200 */  sra        $v0, $v0, 15
    /* C160 8001B960 21104400 */  addu       $v0, $v0, $a0
    /* C164 8001B964 000043A4 */  sh         $v1, 0x0($v0)
    /* C168 8001B968 01000226 */  addiu      $v0, $s0, 0x1
    /* C16C 8001B96C 21804000 */  addu       $s0, $v0, $zero
    /* C170 8001B970 00140200 */  sll        $v0, $v0, 16
    /* C174 8001B974 03140200 */  sra        $v0, $v0, 16
    /* C178 8001B978 08004228 */  slti       $v0, $v0, 0x8
    /* C17C 8001B97C F7FF4014 */  bnez       $v0, .L8001B95C
    /* C180 8001B980 00141000 */   sll       $v0, $s0, 16
    /* C184 8001B984 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* C188 8001B988 1800B28F */  lw         $s2, 0x18($sp)
    /* C18C 8001B98C 1400B18F */  lw         $s1, 0x14($sp)
    /* C190 8001B990 1000B08F */  lw         $s0, 0x10($sp)
    /* C194 8001B994 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C198 8001B998 0800E003 */  jr         $ra
    /* C19C 8001B99C 00000000 */   nop
endlabel func_8001B8E4
