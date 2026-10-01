.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009893C, 0x44

glabel func_8009893C
    /* 8913C 8009893C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 89140 80098940 1800BFAF */  sw         $ra, 0x18($sp)
    /* 89144 80098944 1400B1AF */  sw         $s1, 0x14($sp)
    /* 89148 80098948 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8914C 8009894C 21808000 */  addu       $s0, $a0, $zero
    /* 89150 80098950 1262020C */  jal        func_80098848
    /* 89154 80098954 2188A000 */   addu      $s1, $a1, $zero
    /* 89158 80098958 03004104 */  bgez       $v0, .L80098968
    /* 8915C 8009895C 21200002 */   addu      $a0, $s0, $zero
    /* 89160 80098960 3A62020C */  jal        func_800988E8
    /* 89164 80098964 21282002 */   addu      $a1, $s1, $zero
  .L80098968:
    /* 89168 80098968 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8916C 8009896C 1400B18F */  lw         $s1, 0x14($sp)
    /* 89170 80098970 1000B08F */  lw         $s0, 0x10($sp)
    /* 89174 80098974 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 89178 80098978 0800E003 */  jr         $ra
    /* 8917C 8009897C 00000000 */   nop
endlabel func_8009893C
