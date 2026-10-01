.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007DBC8, 0xA4

glabel func_8007DBC8
    /* 6E3C8 8007DBC8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6E3CC 8007DBCC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 6E3D0 8007DBD0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6E3D4 8007DBD4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6E3D8 8007DBD8 2188A000 */  addu       $s1, $a1, $zero
    /* 6E3DC 8007DBDC E6ED010C */  jal        func_8007B798
    /* 6E3E0 8007DBE0 21800000 */   addu      $s0, $zero, $zero
    /* 6E3E4 8007DBE4 21204000 */  addu       $a0, $v0, $zero
    /* 6E3E8 8007DBE8 1A008004 */  bltz       $a0, .L8007DC54
    /* 6E3EC 8007DBEC 21100002 */   addu      $v0, $s0, $zero
    /* 6E3F0 8007DBF0 40100400 */  sll        $v0, $a0, 1
  .L8007DBF4:
    /* 6E3F4 8007DBF4 21104400 */  addu       $v0, $v0, $a0
    /* 6E3F8 8007DBF8 80100200 */  sll        $v0, $v0, 2
    /* 6E3FC 8007DBFC 21104400 */  addu       $v0, $v0, $a0
    /* 6E400 8007DC00 40100200 */  sll        $v0, $v0, 1
    /* 6E404 8007DC04 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6E408 8007DC08 21082200 */  addu       $at, $at, $v0
    /* 6E40C 8007DC0C BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6E410 8007DC10 00000000 */  nop
    /* 6E414 8007DC14 80100300 */  sll        $v0, $v1, 2
    /* 6E418 8007DC18 21104300 */  addu       $v0, $v0, $v1
    /* 6E41C 8007DC1C 80100200 */  sll        $v0, $v0, 2
    /* 6E420 8007DC20 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 6E424 8007DC24 21082200 */  addu       $at, $at, $v0
    /* 6E428 8007DC28 8ED22280 */  lb         $v0, %lo(D_8010D28E)($at)
    /* 6E42C 8007DC2C 00000000 */  nop
    /* 6E430 8007DC30 02005114 */  bne        $v0, $s1, .L8007DC3C
    /* 6E434 8007DC34 00000000 */   nop
    /* 6E438 8007DC38 01001026 */  addiu      $s0, $s0, 0x1
  .L8007DC3C:
    /* 6E43C 8007DC3C BFED010C */  jal        func_8007B6FC
    /* 6E440 8007DC40 00000000 */   nop
    /* 6E444 8007DC44 21204000 */  addu       $a0, $v0, $zero
    /* 6E448 8007DC48 EAFF8104 */  bgez       $a0, .L8007DBF4
    /* 6E44C 8007DC4C 40100400 */   sll       $v0, $a0, 1
    /* 6E450 8007DC50 21100002 */  addu       $v0, $s0, $zero
  .L8007DC54:
    /* 6E454 8007DC54 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6E458 8007DC58 1400B18F */  lw         $s1, 0x14($sp)
    /* 6E45C 8007DC5C 1000B08F */  lw         $s0, 0x10($sp)
    /* 6E460 8007DC60 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6E464 8007DC64 0800E003 */  jr         $ra
    /* 6E468 8007DC68 00000000 */   nop
endlabel func_8007DBC8
