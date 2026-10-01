.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DD7BC, 0x70

glabel func_800DD7BC
    /* CDFBC 800DD7BC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* CDFC0 800DD7C0 1800BFAF */  sw         $ra, 0x18($sp)
    /* CDFC4 800DD7C4 1400B1AF */  sw         $s1, 0x14($sp)
    /* CDFC8 800DD7C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* CDFCC 800DD7CC 21808000 */  addu       $s0, $a0, $zero
    /* CDFD0 800DD7D0 2188A000 */  addu       $s1, $a1, $zero
    /* CDFD4 800DD7D4 2120C000 */  addu       $a0, $a2, $zero
    /* CDFD8 800DD7D8 21280000 */  addu       $a1, $zero, $zero
    /* CDFDC 800DD7DC F53A030C */  jal        func_800CEBD4
    /* CDFE0 800DD7E0 64000624 */   addiu     $a2, $zero, 0x64
    /* CDFE4 800DD7E4 40181000 */  sll        $v1, $s0, 1
    /* CDFE8 800DD7E8 21187000 */  addu       $v1, $v1, $s0
    /* CDFEC 800DD7EC 80180300 */  sll        $v1, $v1, 2
    /* CDFF0 800DD7F0 23187000 */  subu       $v1, $v1, $s0
    /* CDFF4 800DD7F4 00190300 */  sll        $v1, $v1, 4
    /* CDFF8 800DD7F8 23187000 */  subu       $v1, $v1, $s0
    /* CDFFC 800DD7FC C0180300 */  sll        $v1, $v1, 3
    /* CE000 800DD800 1180043C */  lui        $a0, %hi(D_801176D4)
    /* CE004 800DD804 D4768424 */  addiu      $a0, $a0, %lo(D_801176D4)
    /* CE008 800DD808 21186400 */  addu       $v1, $v1, $a0
    /* CE00C 800DD80C 21187100 */  addu       $v1, $v1, $s1
    /* CE010 800DD810 000062A0 */  sb         $v0, 0x0($v1)
    /* CE014 800DD814 1800BF8F */  lw         $ra, 0x18($sp)
    /* CE018 800DD818 1400B18F */  lw         $s1, 0x14($sp)
    /* CE01C 800DD81C 1000B08F */  lw         $s0, 0x10($sp)
    /* CE020 800DD820 2000BD27 */  addiu      $sp, $sp, 0x20
    /* CE024 800DD824 0800E003 */  jr         $ra
    /* CE028 800DD828 00000000 */   nop
endlabel func_800DD7BC
