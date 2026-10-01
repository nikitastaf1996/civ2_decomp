.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AEA88, 0x88

glabel func_800AEA88
    /* 9F288 800AEA88 28FDBD27 */  addiu      $sp, $sp, -0x2D8
    /* 9F28C 800AEA8C D002BFAF */  sw         $ra, 0x2D0($sp)
    /* 9F290 800AEA90 CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* 9F294 800AEA94 C802B0AF */  sw         $s0, 0x2C8($sp)
    /* 9F298 800AEA98 21808000 */  addu       $s0, $a0, $zero
    /* 9F29C 800AEA9C 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9F2A0 800AEAA0 ADC5020C */  jal        func_800B16B4
    /* 9F2A4 800AEAA4 00200524 */   addiu     $a1, $zero, 0x2000
    /* 9F2A8 800AEAA8 2800B127 */  addiu      $s1, $sp, 0x28
    /* 9F2AC 800AEAAC 4000023C */  lui        $v0, (0x404001 >> 16)
    /* 9F2B0 800AEAB0 01404234 */  ori        $v0, $v0, (0x404001 & 0xFFFF)
    /* 9F2B4 800AEAB4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9F2B8 800AEAB8 1400A0AF */  sw         $zero, 0x14($sp)
    /* 9F2BC 800AEABC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 9F2C0 800AEAC0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 9F2C4 800AEAC4 2000A2AF */  sw         $v0, 0x20($sp)
    /* 9F2C8 800AEAC8 21202002 */  addu       $a0, $s1, $zero
    /* 9F2CC 800AEACC 1680053C */  lui        $a1, %hi(D_80158EC0)
    /* 9F2D0 800AEAD0 C08EA524 */  addiu      $a1, $a1, %lo(D_80158EC0)
    /* 9F2D4 800AEAD4 21300002 */  addu       $a2, $s0, $zero
    /* 9F2D8 800AEAD8 2CE0020C */  jal        func_800B80B0
    /* 9F2DC 800AEADC 21380000 */   addu      $a3, $zero, $zero
    /* 9F2E0 800AEAE0 21202002 */  addu       $a0, $s1, $zero
    /* 9F2E4 800AEAE4 52DF020C */  jal        func_800B7D48
    /* 9F2E8 800AEAE8 21280000 */   addu      $a1, $zero, $zero
    /* 9F2EC 800AEAEC 21202002 */  addu       $a0, $s1, $zero
    /* 9F2F0 800AEAF0 0AC7020C */  jal        func_800B1C28
    /* 9F2F4 800AEAF4 02000524 */   addiu     $a1, $zero, 0x2
    /* 9F2F8 800AEAF8 D002BF8F */  lw         $ra, 0x2D0($sp)
    /* 9F2FC 800AEAFC CC02B18F */  lw         $s1, 0x2CC($sp)
    /* 9F300 800AEB00 C802B08F */  lw         $s0, 0x2C8($sp)
    /* 9F304 800AEB04 D802BD27 */  addiu      $sp, $sp, 0x2D8
    /* 9F308 800AEB08 0800E003 */  jr         $ra
    /* 9F30C 800AEB0C 00000000 */   nop
endlabel func_800AEA88
