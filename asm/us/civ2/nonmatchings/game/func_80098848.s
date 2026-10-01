.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098848, 0x50

glabel func_80098848
    /* 89048 80098848 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8904C 8009884C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 89050 80098850 1400B1AF */  sw         $s1, 0x14($sp)
    /* 89054 80098854 1000B0AF */  sw         $s0, 0x10($sp)
    /* 89058 80098858 21808000 */  addu       $s0, $a0, $zero
    /* 8905C 8009885C 6961020C */  jal        func_800985A4
    /* 89060 80098860 2188A000 */   addu      $s1, $a1, $zero
    /* 89064 80098864 42004230 */  andi       $v0, $v0, 0x42
    /* 89068 80098868 02000324 */  addiu      $v1, $zero, 0x2
    /* 8906C 8009886C 04004314 */  bne        $v0, $v1, .L80098880
    /* 89070 80098870 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 89074 80098874 21200002 */  addu       $a0, $s0, $zero
    /* 89078 80098878 0161020C */  jal        func_80098404
    /* 8907C 8009887C 21282002 */   addu      $a1, $s1, $zero
  .L80098880:
    /* 89080 80098880 1800BF8F */  lw         $ra, 0x18($sp)
    /* 89084 80098884 1400B18F */  lw         $s1, 0x14($sp)
    /* 89088 80098888 1000B08F */  lw         $s0, 0x10($sp)
    /* 8908C 8009888C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 89090 80098890 0800E003 */  jr         $ra
    /* 89094 80098894 00000000 */   nop
endlabel func_80098848
