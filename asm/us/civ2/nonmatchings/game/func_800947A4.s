.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800947A4, 0xA4

glabel func_800947A4
    /* 84FA4 800947A4 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 84FA8 800947A8 6800BFAF */  sw         $ra, 0x68($sp)
    /* 84FAC 800947AC 6400B1AF */  sw         $s1, 0x64($sp)
    /* 84FB0 800947B0 6000B0AF */  sw         $s0, 0x60($sp)
    /* 84FB4 800947B4 21808000 */  addu       $s0, $a0, $zero
    /* 84FB8 800947B8 2188C000 */  addu       $s1, $a2, $zero
    /* 84FBC 800947BC A587030C */  jal        func_800E1E94
    /* 84FC0 800947C0 1000A427 */   addiu     $a0, $sp, 0x10
    /* 84FC4 800947C4 1000A283 */  lb         $v0, 0x10($sp)
    /* 84FC8 800947C8 00000000 */  nop
    /* 84FCC 800947CC 07004010 */  beqz       $v0, .L800947EC
    /* 84FD0 800947D0 1000A327 */   addiu     $v1, $sp, 0x10
    /* 84FD4 800947D4 01006324 */  addiu      $v1, $v1, 0x1
  .L800947D8:
    /* 84FD8 800947D8 00006280 */  lb         $v0, 0x0($v1)
    /* 84FDC 800947DC 00000000 */  nop
    /* 84FE0 800947E0 FDFF4014 */  bnez       $v0, .L800947D8
    /* 84FE4 800947E4 01006324 */   addiu     $v1, $v1, 0x1
    /* 84FE8 800947E8 FFFF6324 */  addiu      $v1, $v1, -0x1
  .L800947EC:
    /* 84FEC 800947EC FFFF6380 */  lb         $v1, -0x1($v1)
    /* 84FF0 800947F0 5C000224 */  addiu      $v0, $zero, 0x5C
    /* 84FF4 800947F4 05006210 */  beq        $v1, $v0, .L8009480C
    /* 84FF8 800947F8 00000000 */   nop
    /* 84FFC 800947FC 1680053C */  lui        $a1, %hi(D_80158934)
    /* 85000 80094800 3489A524 */  addiu      $a1, $a1, %lo(D_80158934)
    /* 85004 80094804 9987030C */  jal        func_800E1E64
    /* 85008 80094808 1000A427 */   addiu     $a0, $sp, 0x10
  .L8009480C:
    /* 8500C 8009480C 21200002 */  addu       $a0, $s0, $zero
    /* 85010 80094810 A587030C */  jal        func_800E1E94
    /* 85014 80094814 1000A527 */   addiu     $a1, $sp, 0x10
    /* 85018 80094818 21200002 */  addu       $a0, $s0, $zero
    /* 8501C 8009481C 9987030C */  jal        func_800E1E64
    /* 85020 80094820 21282002 */   addu      $a1, $s1, $zero
    /* 85024 80094824 B30A040C */  jal        func_80102ACC
    /* 85028 80094828 21200002 */   addu      $a0, $s0, $zero
    /* 8502C 8009482C 21100002 */  addu       $v0, $s0, $zero
    /* 85030 80094830 6800BF8F */  lw         $ra, 0x68($sp)
    /* 85034 80094834 6400B18F */  lw         $s1, 0x64($sp)
    /* 85038 80094838 6000B08F */  lw         $s0, 0x60($sp)
    /* 8503C 8009483C 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 85040 80094840 0800E003 */  jr         $ra
    /* 85044 80094844 00000000 */   nop
endlabel func_800947A4
