.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C104, 0xC8

glabel func_8004C104
    /* 3C904 8004C104 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3C908 8004C108 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3C90C 8004C10C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3C910 8004C110 1280043C */  lui        $a0, %hi(D_80121340)
    /* 3C914 8004C114 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 3C918 8004C118 CB1A030C */  jal        func_800C6B2C
    /* 3C91C 8004C11C 2180A000 */   addu      $s0, $a1, $zero
    /* 3C920 8004C120 7C01848F */  lw         $a0, %gp_rel(D_80158654)($gp)
    /* 3C924 8004C124 0B76030C */  jal        func_800DD82C
    /* 3C928 8004C128 00000000 */   nop
    /* 3C92C 8004C12C 80100200 */  sll        $v0, $v0, 2
    /* 3C930 8004C130 1280043C */  lui        $a0, %hi(D_80121340)
    /* 3C934 8004C134 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 3C938 8004C138 1280013C */  lui        $at, %hi(D_8011A708)
    /* 3C93C 8004C13C 21082200 */  addu       $at, $at, $v0
    /* 3C940 8004C140 08A7258C */  lw         $a1, %lo(D_8011A708)($at)
    /* 3C944 8004C144 651B030C */  jal        func_800C6D94
    /* 3C948 8004C148 00000000 */   nop
    /* 3C94C 8004C14C 1680033C */  lui        $v1, %hi(D_8015887C)
    /* 3C950 8004C150 7C88638C */  lw         $v1, %lo(D_8015887C)($v1)
    /* 3C954 8004C154 02000224 */  addiu      $v0, $zero, 0x2
    /* 3C958 8004C158 07006214 */  bne        $v1, $v0, .L8004C178
    /* 3C95C 8004C15C 00000000 */   nop
    /* 3C960 8004C160 1280043C */  lui        $a0, %hi(D_80121340)
    /* 3C964 8004C164 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 3C968 8004C168 1680053C */  lui        $a1, %hi(D_80158640)
    /* 3C96C 8004C16C 4086A524 */  addiu      $a1, $a1, %lo(D_80158640)
    /* 3C970 8004C170 9987030C */  jal        func_800E1E64
    /* 3C974 8004C174 00000000 */   nop
  .L8004C178:
    /* 3C978 8004C178 1280043C */  lui        $a0, %hi(D_80121340)
    /* 3C97C 8004C17C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 3C980 8004C180 CD1A030C */  jal        func_800C6B34
    /* 3C984 8004C184 00000000 */   nop
    /* 3C988 8004C188 8A54020C */  jal        func_80095228
    /* 3C98C 8004C18C 21200002 */   addu      $a0, $s0, $zero
    /* 3C990 8004C190 1280043C */  lui        $a0, %hi(D_80121340)
    /* 3C994 8004C194 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 3C998 8004C198 9987030C */  jal        func_800E1E64
    /* 3C99C 8004C19C 21284000 */   addu      $a1, $v0, $zero
    /* 3C9A0 8004C1A0 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 3C9A4 8004C1A4 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 3C9A8 8004C1A8 1280053C */  lui        $a1, %hi(D_80121340)
    /* 3C9AC 8004C1AC 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 3C9B0 8004C1B0 A587030C */  jal        func_800E1E94
    /* 3C9B4 8004C1B4 00000000 */   nop
    /* 3C9B8 8004C1B8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3C9BC 8004C1BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 3C9C0 8004C1C0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3C9C4 8004C1C4 0800E003 */  jr         $ra
    /* 3C9C8 8004C1C8 00000000 */   nop
endlabel func_8004C104
