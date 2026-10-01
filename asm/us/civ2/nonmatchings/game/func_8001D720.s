.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D720, 0x160

glabel func_8001D720
    /* DF20 8001D720 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* DF24 8001D724 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* DF28 8001D728 1800B2AF */  sw         $s2, 0x18($sp)
    /* DF2C 8001D72C 1400B1AF */  sw         $s1, 0x14($sp)
    /* DF30 8001D730 1000B0AF */  sw         $s0, 0x10($sp)
    /* DF34 8001D734 2190A000 */  addu       $s2, $a1, $zero
    /* DF38 8001D738 C0101200 */  sll        $v0, $s2, 3
    /* DF3C 8001D73C 1180013C */  lui        $at, %hi(D_8010D069)
    /* DF40 8001D740 21082200 */  addu       $at, $at, $v0
    /* DF44 8001D744 69D03090 */  lbu        $s0, %lo(D_8010D069)($at)
    /* DF48 8001D748 02000224 */  addiu      $v0, $zero, 0x2
    /* DF4C 8001D74C 27004216 */  bne        $s2, $v0, .L8001D7EC
    /* DF50 8001D750 21888000 */   addu      $s1, $a0, $zero
    /* DF54 8001D754 1280023C */  lui        $v0, %hi(D_8011A272)
    /* DF58 8001D758 72A24290 */  lbu        $v0, %lo(D_8011A272)($v0)
    /* DF5C 8001D75C 00000000 */  nop
    /* DF60 8001D760 0200422C */  sltiu      $v0, $v0, 0x2
    /* DF64 8001D764 04004010 */  beqz       $v0, .L8001D778
    /* DF68 8001D768 00000000 */   nop
    /* DF6C 8001D76C 03000012 */  beqz       $s0, .L8001D77C
    /* DF70 8001D770 21202002 */   addu      $a0, $s1, $zero
    /* DF74 8001D774 FFFF1026 */  addiu      $s0, $s0, -0x1
  .L8001D778:
    /* DF78 8001D778 21202002 */  addu       $a0, $s1, $zero
  .L8001D77C:
    /* DF7C 8001D77C 8ACA010C */  jal        func_80072A28
    /* DF80 8001D780 23000524 */   addiu     $a1, $zero, 0x23
    /* DF84 8001D784 02004010 */  beqz       $v0, .L8001D790
    /* DF88 8001D788 00000000 */   nop
    /* DF8C 8001D78C 01001026 */  addiu      $s0, $s0, 0x1
  .L8001D790:
    /* DF90 8001D790 1180023C */  lui        $v0, %hi(D_8010C5F5)
    /* DF94 8001D794 F5C54290 */  lbu        $v0, %lo(D_8010C5F5)($v0)
    /* DF98 8001D798 00000000 */  nop
    /* DF9C 8001D79C 0E004014 */  bnez       $v0, .L8001D7D8
    /* DFA0 8001D7A0 35000524 */   addiu     $a1, $zero, 0x35
    /* DFA4 8001D7A4 00110500 */  sll        $v0, $a1, 4
  .L8001D7A8:
    /* DFA8 8001D7A8 1180013C */  lui        $at, %hi(D_8010C2AA)
    /* DFAC 8001D7AC 21082200 */  addu       $at, $at, $v0
    /* DFB0 8001D7B0 AAC22580 */  lb         $a1, %lo(D_8010C2AA)($at)
    /* DFB4 8001D7B4 00000000 */  nop
    /* DFB8 8001D7B8 0700A004 */  bltz       $a1, .L8001D7D8
    /* DFBC 8001D7BC 00110500 */   sll       $v0, $a1, 4
    /* DFC0 8001D7C0 1180013C */  lui        $at, %hi(D_8010C2A5)
    /* DFC4 8001D7C4 21082200 */  addu       $at, $at, $v0
    /* DFC8 8001D7C8 A5C22290 */  lbu        $v0, %lo(D_8010C2A5)($at)
    /* DFCC 8001D7CC 00000000 */  nop
    /* DFD0 8001D7D0 F5FF4010 */  beqz       $v0, .L8001D7A8
    /* DFD4 8001D7D4 00110500 */   sll       $v0, $a1, 4
  .L8001D7D8:
    /* DFD8 8001D7D8 8ACA010C */  jal        func_80072A28
    /* DFDC 8001D7DC 21202002 */   addu      $a0, $s1, $zero
    /* DFE0 8001D7E0 03004010 */  beqz       $v0, .L8001D7F0
    /* DFE4 8001D7E4 01000224 */   addiu     $v0, $zero, 0x1
    /* DFE8 8001D7E8 01001026 */  addiu      $s0, $s0, 0x1
  .L8001D7EC:
    /* DFEC 8001D7EC 01000224 */  addiu      $v0, $zero, 0x1
  .L8001D7F0:
    /* DFF0 8001D7F0 06000216 */  bne        $s0, $v0, .L8001D80C
    /* DFF4 8001D7F4 21202002 */   addu      $a0, $s1, $zero
    /* DFF8 8001D7F8 C17B030C */  jal        func_800DEF04
    /* DFFC 8001D7FC 11000524 */   addiu     $a1, $zero, 0x11
    /* E000 8001D800 02004010 */  beqz       $v0, .L8001D80C
    /* E004 8001D804 00000000 */   nop
    /* E008 8001D808 21800000 */  addu       $s0, $zero, $zero
  .L8001D80C:
    /* E00C 8001D80C 14000012 */  beqz       $s0, .L8001D860
    /* E010 8001D810 40101100 */   sll       $v0, $s1, 1
    /* E014 8001D814 21105100 */  addu       $v0, $v0, $s1
    /* E018 8001D818 80100200 */  sll        $v0, $v0, 2
    /* E01C 8001D81C 23105100 */  subu       $v0, $v0, $s1
    /* E020 8001D820 00110200 */  sll        $v0, $v0, 4
    /* E024 8001D824 23105100 */  subu       $v0, $v0, $s1
    /* E028 8001D828 C0100200 */  sll        $v0, $v0, 3
    /* E02C 8001D82C 1180013C */  lui        $at, %hi(D_801176A7)
    /* E030 8001D830 21082200 */  addu       $at, $at, $v0
    /* E034 8001D834 A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* E038 8001D838 04000224 */  addiu      $v0, $zero, 0x4
    /* E03C 8001D83C 08006214 */  bne        $v1, $v0, .L8001D860
    /* E040 8001D840 00000000 */   nop
    /* E044 8001D844 05004312 */  beq        $s2, $v1, .L8001D85C
    /* E048 8001D848 0E000224 */   addiu     $v0, $zero, 0xE
    /* E04C 8001D84C 03004212 */  beq        $s2, $v0, .L8001D85C
    /* E050 8001D850 0B000224 */   addiu     $v0, $zero, 0xB
    /* E054 8001D854 03004216 */  bne        $s2, $v0, .L8001D864
    /* E058 8001D858 21100002 */   addu      $v0, $s0, $zero
  .L8001D85C:
    /* E05C 8001D85C 21800000 */  addu       $s0, $zero, $zero
  .L8001D860:
    /* E060 8001D860 21100002 */  addu       $v0, $s0, $zero
  .L8001D864:
    /* E064 8001D864 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* E068 8001D868 1800B28F */  lw         $s2, 0x18($sp)
    /* E06C 8001D86C 1400B18F */  lw         $s1, 0x14($sp)
    /* E070 8001D870 1000B08F */  lw         $s0, 0x10($sp)
    /* E074 8001D874 2000BD27 */  addiu      $sp, $sp, 0x20
    /* E078 8001D878 0800E003 */  jr         $ra
    /* E07C 8001D87C 00000000 */   nop
endlabel func_8001D720
