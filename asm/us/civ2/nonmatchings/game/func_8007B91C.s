.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007B91C, 0x64

glabel func_8007B91C
    /* 6C11C 8007B91C 40100400 */  sll        $v0, $a0, 1
    /* 6C120 8007B920 21104400 */  addu       $v0, $v0, $a0
    /* 6C124 8007B924 80100200 */  sll        $v0, $v0, 2
    /* 6C128 8007B928 21104400 */  addu       $v0, $v0, $a0
    /* 6C12C 8007B92C 40280200 */  sll        $a1, $v0, 1
    /* 6C130 8007B930 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6C134 8007B934 21082500 */  addu       $at, $at, $a1
    /* 6C138 8007B938 C3D62380 */  lb         $v1, %lo(D_8010D6C3)($at)
    /* 6C13C 8007B93C 03000224 */  addiu      $v0, $zero, 0x3
    /* 6C140 8007B940 04006210 */  beq        $v1, $v0, .L8007B954
    /* 6C144 8007B944 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 6C148 8007B948 1180013C */  lui        $at, %hi(D_8010D6C6)
    /* 6C14C 8007B94C 21082500 */  addu       $at, $at, $a1
    /* 6C150 8007B950 C6D622A4 */  sh         $v0, %lo(D_8010D6C6)($at)
  .L8007B954:
    /* 6C154 8007B954 40100400 */  sll        $v0, $a0, 1
    /* 6C158 8007B958 21104400 */  addu       $v0, $v0, $a0
    /* 6C15C 8007B95C 80100200 */  sll        $v0, $v0, 2
    /* 6C160 8007B960 21104400 */  addu       $v0, $v0, $a0
    /* 6C164 8007B964 40100200 */  sll        $v0, $v0, 1
    /* 6C168 8007B968 03000324 */  addiu      $v1, $zero, 0x3
    /* 6C16C 8007B96C 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6C170 8007B970 21082200 */  addu       $at, $at, $v0
    /* 6C174 8007B974 C3D623A0 */  sb         $v1, %lo(D_8010D6C3)($at)
    /* 6C178 8007B978 0800E003 */  jr         $ra
    /* 6C17C 8007B97C 00000000 */   nop
endlabel func_8007B91C
