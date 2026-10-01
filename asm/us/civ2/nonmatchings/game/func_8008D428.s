.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008D428, 0xA0

glabel func_8008D428
    /* 7DC28 8008D428 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7DC2C 8008D42C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 7DC30 8008D430 1800B2AF */  sw         $s2, 0x18($sp)
    /* 7DC34 8008D434 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7DC38 8008D438 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7DC3C 8008D43C 2190A000 */  addu       $s2, $a1, $zero
    /* 7DC40 8008D440 40880400 */  sll        $s1, $a0, 1
    /* 7DC44 8008D444 21882402 */  addu       $s1, $s1, $a0
    /* 7DC48 8008D448 80881100 */  sll        $s1, $s1, 2
    /* 7DC4C 8008D44C 23882402 */  subu       $s1, $s1, $a0
    /* 7DC50 8008D450 C0881100 */  sll        $s1, $s1, 3
    /* 7DC54 8008D454 1180103C */  lui        $s0, %hi(D_80113F18)
    /* 7DC58 8008D458 183F1026 */  addiu      $s0, $s0, %lo(D_80113F18)
    /* 7DC5C 8008D45C 40101200 */  sll        $v0, $s2, 1
    /* 7DC60 8008D460 21183002 */  addu       $v1, $s1, $s0
    /* 7DC64 8008D464 21104300 */  addu       $v0, $v0, $v1
    /* 7DC68 8008D468 000046A4 */  sh         $a2, 0x0($v0)
    /* 7DC6C 8008D46C 2120E000 */  addu       $a0, $a3, $zero
    /* 7DC70 8008D470 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 7DC74 8008D474 F53A030C */  jal        func_800CEBD4
    /* 7DC78 8008D478 0F000624 */   addiu     $a2, $zero, 0xF
    /* 7DC7C 8008D47C FDFF1026 */  addiu      $s0, $s0, -0x3
    /* 7DC80 8008D480 21803002 */  addu       $s0, $s1, $s0
    /* 7DC84 8008D484 21801202 */  addu       $s0, $s0, $s2
    /* 7DC88 8008D488 000002A2 */  sb         $v0, 0x0($s0)
    /* 7DC8C 8008D48C 1180013C */  lui        $at, %hi(D_80113ED4)
    /* 7DC90 8008D490 21083100 */  addu       $at, $at, $s1
    /* 7DC94 8008D494 D43E228C */  lw         $v0, %lo(D_80113ED4)($at)
    /* 7DC98 8008D498 0200033C */  lui        $v1, (0x20000 >> 16)
    /* 7DC9C 8008D49C 25104300 */  or         $v0, $v0, $v1
    /* 7DCA0 8008D4A0 1180013C */  lui        $at, %hi(D_80113ED4)
    /* 7DCA4 8008D4A4 21083100 */  addu       $at, $at, $s1
    /* 7DCA8 8008D4A8 D43E22AC */  sw         $v0, %lo(D_80113ED4)($at)
    /* 7DCAC 8008D4AC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 7DCB0 8008D4B0 1800B28F */  lw         $s2, 0x18($sp)
    /* 7DCB4 8008D4B4 1400B18F */  lw         $s1, 0x14($sp)
    /* 7DCB8 8008D4B8 1000B08F */  lw         $s0, 0x10($sp)
    /* 7DCBC 8008D4BC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 7DCC0 8008D4C0 0800E003 */  jr         $ra
    /* 7DCC4 8008D4C4 00000000 */   nop
endlabel func_8008D428
