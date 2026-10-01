.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C80D4, 0xD0

glabel func_800C80D4
    /* B88D4 800C80D4 E0FEBD27 */  addiu      $sp, $sp, -0x120
    /* B88D8 800C80D8 1C01BFAF */  sw         $ra, 0x11C($sp)
    /* B88DC 800C80DC 1801B2AF */  sw         $s2, 0x118($sp)
    /* B88E0 800C80E0 1401B1AF */  sw         $s1, 0x114($sp)
    /* B88E4 800C80E4 1001B0AF */  sw         $s0, 0x110($sp)
    /* B88E8 800C80E8 21808000 */  addu       $s0, $a0, $zero
    /* B88EC 800C80EC 2190A000 */  addu       $s2, $a1, $zero
    /* B88F0 800C80F0 E000B127 */  addiu      $s1, $sp, 0xE0
    /* B88F4 800C80F4 9AE0030C */  jal        func_800F8268
    /* B88F8 800C80F8 21202002 */   addu      $a0, $s1, $zero
    /* B88FC 800C80FC B4020726 */  addiu      $a3, $s0, 0x2B4
    /* B8900 800C8100 48010426 */  addiu      $a0, $s0, 0x148
    /* B8904 800C8104 84000526 */  addiu      $a1, $s0, 0x84
    /* B8908 800C8108 EDE3030C */  jal        func_800F8FB4
    /* B890C 800C810C 2130E000 */   addu      $a2, $a3, $zero
    /* B8910 800C8110 1280013C */  lui        $at, %hi(D_8011A41A)
    /* B8914 800C8114 21083200 */  addu       $at, $at, $s2
    /* B8918 800C8118 1AA42590 */  lbu        $a1, %lo(D_8011A41A)($at)
    /* B891C 800C811C 21202002 */  addu       $a0, $s1, $zero
    /* B8920 800C8120 DC00A524 */  addiu      $a1, $a1, 0xDC
    /* B8924 800C8124 0A000624 */  addiu      $a2, $zero, 0xA
    /* B8928 800C8128 44E3030C */  jal        func_800F8D10
    /* B892C 800C812C EC000724 */   addiu     $a3, $zero, 0xEC
    /* B8930 800C8130 01000224 */  addiu      $v0, $zero, 0x1
    /* B8934 800C8134 1000A2AF */  sw         $v0, 0x10($sp)
    /* B8938 800C8138 70000224 */  addiu      $v0, $zero, 0x70
    /* B893C 800C813C 1400A2AF */  sw         $v0, 0x14($sp)
    /* B8940 800C8140 89000224 */  addiu      $v0, $zero, 0x89
    /* B8944 800C8144 1800A2AF */  sw         $v0, 0x18($sp)
    /* B8948 800C8148 08020426 */  addiu      $a0, $s0, 0x208
    /* B894C 800C814C 21282002 */  addu       $a1, $s1, $zero
    /* B8950 800C8150 09000624 */  addiu      $a2, $zero, 0x9
    /* B8954 800C8154 67ED030C */  jal        func_800FB59C
    /* B8958 800C8158 01000724 */   addiu     $a3, $zero, 0x1
    /* B895C 800C815C 68000224 */  addiu      $v0, $zero, 0x68
    /* B8960 800C8160 B40202A6 */  sh         $v0, 0x2B4($s0)
    /* B8964 800C8164 1C000224 */  addiu      $v0, $zero, 0x1C
    /* B8968 800C8168 B60202A6 */  sh         $v0, 0x2B6($s0)
    /* B896C 800C816C D8000224 */  addiu      $v0, $zero, 0xD8
    /* B8970 800C8170 B80202A6 */  sh         $v0, 0x2B8($s0)
    /* B8974 800C8174 A5000224 */  addiu      $v0, $zero, 0xA5
    /* B8978 800C8178 BA0202A6 */  sh         $v0, 0x2BA($s0)
    /* B897C 800C817C 21202002 */  addu       $a0, $s1, $zero
    /* B8980 800C8180 4CE1030C */  jal        func_800F8530
    /* B8984 800C8184 02000524 */   addiu     $a1, $zero, 0x2
    /* B8988 800C8188 1C01BF8F */  lw         $ra, 0x11C($sp)
    /* B898C 800C818C 1801B28F */  lw         $s2, 0x118($sp)
    /* B8990 800C8190 1401B18F */  lw         $s1, 0x114($sp)
    /* B8994 800C8194 1001B08F */  lw         $s0, 0x110($sp)
    /* B8998 800C8198 2001BD27 */  addiu      $sp, $sp, 0x120
    /* B899C 800C819C 0800E003 */  jr         $ra
    /* B89A0 800C81A0 00000000 */   nop
endlabel func_800C80D4
