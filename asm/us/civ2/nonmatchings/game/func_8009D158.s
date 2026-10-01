.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009D158, 0x54

glabel func_8009D158
    /* 8D958 8009D158 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8D95C 8009D15C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8D960 8009D160 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* 8D964 8009D164 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* 8D968 8009D168 E85D030C */  jal        func_800D77A0
    /* 8D96C 8009D16C 00000000 */   nop
    /* 8D970 8009D170 1280023C */  lui        $v0, %hi(D_8011E748)
    /* 8D974 8009D174 48E7428C */  lw         $v0, %lo(D_8011E748)($v0)
    /* 8D978 8009D178 00000000 */  nop
    /* 8D97C 8009D17C 07004010 */  beqz       $v0, .L8009D19C
    /* 8D980 8009D180 00000000 */   nop
    /* 8D984 8009D184 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* 8D988 8009D188 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* 8D98C 8009D18C 1280053C */  lui        $a1, %hi(D_8011ACB4)
    /* 8D990 8009D190 B4ACA58C */  lw         $a1, %lo(D_8011ACB4)($a1)
    /* 8D994 8009D194 E16E020C */  jal        func_8009BB84
    /* 8D998 8009D198 01000624 */   addiu     $a2, $zero, 0x1
  .L8009D19C:
    /* 8D99C 8009D19C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8D9A0 8009D1A0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8D9A4 8009D1A4 0800E003 */  jr         $ra
    /* 8D9A8 8009D1A8 00000000 */   nop
endlabel func_8009D158
