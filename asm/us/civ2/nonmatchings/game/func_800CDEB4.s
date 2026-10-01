.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CDEB4, 0x28C

glabel func_800CDEB4
    /* BE6B4 800CDEB4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* BE6B8 800CDEB8 2400BFAF */  sw         $ra, 0x24($sp)
    /* BE6BC 800CDEBC 2000B2AF */  sw         $s2, 0x20($sp)
    /* BE6C0 800CDEC0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* BE6C4 800CDEC4 1800B0AF */  sw         $s0, 0x18($sp)
    /* BE6C8 800CDEC8 21908000 */  addu       $s2, $a0, $zero
    /* BE6CC 800CDECC 21880000 */  addu       $s1, $zero, $zero
    /* BE6D0 800CDED0 20D10424 */  addiu      $a0, $zero, -0x2EE0
  .L800CDED4:
    /* BE6D4 800CDED4 7253020C */  jal        func_80094DC8
    /* BE6D8 800CDED8 E02E0524 */   addiu     $a1, $zero, 0x2EE0
    /* BE6DC 800CDEDC 001C1100 */  sll        $v1, $s1, 16
    /* BE6E0 800CDEE0 031C0300 */  sra        $v1, $v1, 16
    /* BE6E4 800CDEE4 40800300 */  sll        $s0, $v1, 1
    /* BE6E8 800CDEE8 21800302 */  addu       $s0, $s0, $v1
    /* BE6EC 800CDEEC 80801000 */  sll        $s0, $s0, 2
    /* BE6F0 800CDEF0 21805002 */  addu       $s0, $s2, $s0
    /* BE6F4 800CDEF4 00140200 */  sll        $v0, $v0, 16
    /* BE6F8 800CDEF8 03140200 */  sra        $v0, $v0, 16
    /* BE6FC 800CDEFC 941502AE */  sw         $v0, 0x1594($s0)
    /* BE700 800CDF00 80C10424 */  addiu      $a0, $zero, -0x3E80
    /* BE704 800CDF04 7253020C */  jal        func_80094DC8
    /* BE708 800CDF08 803E0524 */   addiu     $a1, $zero, 0x3E80
    /* BE70C 800CDF0C 00140200 */  sll        $v0, $v0, 16
    /* BE710 800CDF10 03140200 */  sra        $v0, $v0, 16
    /* BE714 800CDF14 981502AE */  sw         $v0, 0x1598($s0)
    /* BE718 800CDF18 01000424 */  addiu      $a0, $zero, 0x1
    /* BE71C 800CDF1C 7253020C */  jal        func_80094DC8
    /* BE720 800CDF20 64000524 */   addiu     $a1, $zero, 0x64
    /* BE724 800CDF24 00140200 */  sll        $v0, $v0, 16
    /* BE728 800CDF28 03140200 */  sra        $v0, $v0, 16
    /* BE72C 800CDF2C 9C1502AE */  sw         $v0, 0x159C($s0)
    /* BE730 800CDF30 01002226 */  addiu      $v0, $s1, 0x1
    /* BE734 800CDF34 21884000 */  addu       $s1, $v0, $zero
    /* BE738 800CDF38 00140200 */  sll        $v0, $v0, 16
    /* BE73C 800CDF3C 03140200 */  sra        $v0, $v0, 16
    /* BE740 800CDF40 50004228 */  slti       $v0, $v0, 0x50
    /* BE744 800CDF44 E3FF4014 */  bnez       $v0, .L800CDED4
    /* BE748 800CDF48 20D10424 */   addiu     $a0, $zero, -0x2EE0
    /* BE74C 800CDF4C 21880000 */  addu       $s1, $zero, $zero
    /* BE750 800CDF50 00141100 */  sll        $v0, $s1, 16
  .L800CDF54:
    /* BE754 800CDF54 03140200 */  sra        $v0, $v0, 16
    /* BE758 800CDF58 40180200 */  sll        $v1, $v0, 1
    /* BE75C 800CDF5C 21186200 */  addu       $v1, $v1, $v0
    /* BE760 800CDF60 80180300 */  sll        $v1, $v1, 2
    /* BE764 800CDF64 21184302 */  addu       $v1, $s2, $v1
    /* BE768 800CDF68 9415648C */  lw         $a0, 0x1594($v1)
    /* BE76C 800CDF6C 9C15658C */  lw         $a1, 0x159C($v1)
    /* BE770 800CDF70 00000000 */  nop
    /* BE774 800CDF74 1A008500 */  div        $zero, $a0, $a1
    /* BE778 800CDF78 0200A014 */  bnez       $a1, .L800CDF84
    /* BE77C 800CDF7C 00000000 */   nop
    /* BE780 800CDF80 0D000700 */  break      7
  .L800CDF84:
    /* BE784 800CDF84 FFFF0124 */  addiu      $at, $zero, -0x1
    /* BE788 800CDF88 0400A114 */  bne        $a1, $at, .L800CDF9C
    /* BE78C 800CDF8C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* BE790 800CDF90 02008114 */  bne        $a0, $at, .L800CDF9C
    /* BE794 800CDF94 00000000 */   nop
    /* BE798 800CDF98 0D000600 */  break      6
  .L800CDF9C:
    /* BE79C 800CDF9C 12200000 */  mflo       $a0
    /* BE7A0 800CDFA0 00000000 */  nop
    /* BE7A4 800CDFA4 A0008424 */  addiu      $a0, $a0, 0xA0
    /* BE7A8 800CDFA8 9815628C */  lw         $v0, 0x1598($v1)
    /* BE7AC 800CDFAC 00000000 */  nop
    /* BE7B0 800CDFB0 1A004500 */  div        $zero, $v0, $a1
    /* BE7B4 800CDFB4 0200A014 */  bnez       $a1, .L800CDFC0
    /* BE7B8 800CDFB8 00000000 */   nop
    /* BE7BC 800CDFBC 0D000700 */  break      7
  .L800CDFC0:
    /* BE7C0 800CDFC0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* BE7C4 800CDFC4 0400A114 */  bne        $a1, $at, .L800CDFD8
    /* BE7C8 800CDFC8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* BE7CC 800CDFCC 02004114 */  bne        $v0, $at, .L800CDFD8
    /* BE7D0 800CDFD0 00000000 */   nop
    /* BE7D4 800CDFD4 0D000600 */  break      6
  .L800CDFD8:
    /* BE7D8 800CDFD8 12100000 */  mflo       $v0
    /* BE7DC 800CDFDC FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* BE7E0 800CDFE0 4101842C */  sltiu      $a0, $a0, 0x141
    /* BE7E4 800CDFE4 05008010 */  beqz       $a0, .L800CDFFC
    /* BE7E8 800CDFE8 78004224 */   addiu     $v0, $v0, 0x78
    /* BE7EC 800CDFEC FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* BE7F0 800CDFF0 F100422C */  sltiu      $v0, $v0, 0xF1
    /* BE7F4 800CDFF4 16004014 */  bnez       $v0, .L800CE050
    /* BE7F8 800CDFF8 01002226 */   addiu     $v0, $s1, 0x1
  .L800CDFFC:
    /* BE7FC 800CDFFC 20D10424 */  addiu      $a0, $zero, -0x2EE0
    /* BE800 800CE000 7253020C */  jal        func_80094DC8
    /* BE804 800CE004 E02E0524 */   addiu     $a1, $zero, 0x2EE0
    /* BE808 800CE008 001C1100 */  sll        $v1, $s1, 16
    /* BE80C 800CE00C 031C0300 */  sra        $v1, $v1, 16
    /* BE810 800CE010 40800300 */  sll        $s0, $v1, 1
    /* BE814 800CE014 21800302 */  addu       $s0, $s0, $v1
    /* BE818 800CE018 80801000 */  sll        $s0, $s0, 2
    /* BE81C 800CE01C 21805002 */  addu       $s0, $s2, $s0
    /* BE820 800CE020 00140200 */  sll        $v0, $v0, 16
    /* BE824 800CE024 03140200 */  sra        $v0, $v0, 16
    /* BE828 800CE028 941502AE */  sw         $v0, 0x1594($s0)
    /* BE82C 800CE02C 80C10424 */  addiu      $a0, $zero, -0x3E80
    /* BE830 800CE030 7253020C */  jal        func_80094DC8
    /* BE834 800CE034 803E0524 */   addiu     $a1, $zero, 0x3E80
    /* BE838 800CE038 00140200 */  sll        $v0, $v0, 16
    /* BE83C 800CE03C 03140200 */  sra        $v0, $v0, 16
    /* BE840 800CE040 981502AE */  sw         $v0, 0x1598($s0)
    /* BE844 800CE044 64000224 */  addiu      $v0, $zero, 0x64
    /* BE848 800CE048 9C1502AE */  sw         $v0, 0x159C($s0)
    /* BE84C 800CE04C 01002226 */  addiu      $v0, $s1, 0x1
  .L800CE050:
    /* BE850 800CE050 21884000 */  addu       $s1, $v0, $zero
    /* BE854 800CE054 00140200 */  sll        $v0, $v0, 16
    /* BE858 800CE058 03140200 */  sra        $v0, $v0, 16
    /* BE85C 800CE05C 50004228 */  slti       $v0, $v0, 0x50
    /* BE860 800CE060 BCFF4014 */  bnez       $v0, .L800CDF54
    /* BE864 800CE064 00141100 */   sll       $v0, $s1, 16
    /* BE868 800CE068 E60340A6 */  sh         $zero, 0x3E6($s2)
    /* BE86C 800CE06C 0A000224 */  addiu      $v0, $zero, 0xA
    /* BE870 800CE070 E20342A6 */  sh         $v0, 0x3E2($s2)
    /* BE874 800CE074 73000224 */  addiu      $v0, $zero, 0x73
    /* BE878 800CE078 E40342A6 */  sh         $v0, 0x3E4($s2)
    /* BE87C 800CE07C 01000224 */  addiu      $v0, $zero, 0x1
    /* BE880 800CE080 901542AE */  sw         $v0, 0x1590($s2)
  .L800CE084:
    /* BE884 800CE084 21204002 */  addu       $a0, $s2, $zero
    /* BE888 800CE088 B536030C */  jal        func_800CDAD4
    /* BE88C 800CE08C 21280000 */   addu      $a1, $zero, $zero
    /* BE890 800CE090 00140200 */  sll        $v0, $v0, 16
    /* BE894 800CE094 FBFF4014 */  bnez       $v0, .L800CE084
    /* BE898 800CE098 62035026 */   addiu     $s0, $s2, 0x362
    /* BE89C 800CE09C CB1A030C */  jal        func_800C6B2C
    /* BE8A0 800CE0A0 21200002 */   addu      $a0, $s0, $zero
    /* BE8A4 800CE0A4 1680023C */  lui        $v0, %hi(D_8015894C)
    /* BE8A8 800CE0A8 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* BE8AC 800CE0AC 00000000 */  nop
    /* BE8B0 800CE0B0 1807448C */  lw         $a0, 0x718($v0)
    /* BE8B4 800CE0B4 A63A030C */  jal        func_800CEA98
    /* BE8B8 800CE0B8 00000000 */   nop
    /* BE8BC 800CE0BC 21200002 */  addu       $a0, $s0, $zero
    /* BE8C0 800CE0C0 9987030C */  jal        func_800E1E64
    /* BE8C4 800CE0C4 21284000 */   addu      $a1, $v0, $zero
    /* BE8C8 800CE0C8 F71A030C */  jal        func_800C6BDC
    /* BE8CC 800CE0CC 21200002 */   addu      $a0, $s0, $zero
    /* BE8D0 800CE0D0 CD1A030C */  jal        func_800C6B34
    /* BE8D4 800CE0D4 21200002 */   addu      $a0, $s0, $zero
    /* BE8D8 800CE0D8 48014386 */  lh         $v1, 0x148($s2)
    /* BE8DC 800CE0DC 00000000 */  nop
    /* BE8E0 800CE0E0 40100300 */  sll        $v0, $v1, 1
    /* BE8E4 800CE0E4 21104300 */  addu       $v0, $v0, $v1
    /* BE8E8 800CE0E8 80100200 */  sll        $v0, $v0, 2
    /* BE8EC 800CE0EC 23104300 */  subu       $v0, $v0, $v1
    /* BE8F0 800CE0F0 00110200 */  sll        $v0, $v0, 4
    /* BE8F4 800CE0F4 23104300 */  subu       $v0, $v0, $v1
    /* BE8F8 800CE0F8 C0100200 */  sll        $v0, $v0, 3
    /* BE8FC 800CE0FC 1180013C */  lui        $at, %hi(D_80117A76)
    /* BE900 800CE100 21082200 */  addu       $at, $at, $v0
    /* BE904 800CE104 767A2584 */  lh         $a1, %lo(D_80117A76)($at)
    /* BE908 800CE108 AD98010C */  jal        func_800662B4
    /* BE90C 800CE10C 21200002 */   addu      $a0, $s0, $zero
    /* BE910 800CE110 FC08438E */  lw         $v1, 0x8FC($s2)
    /* BE914 800CE114 03000224 */  addiu      $v0, $zero, 0x3
    /* BE918 800CE118 02006214 */  bne        $v1, $v0, .L800CE124
    /* BE91C 800CE11C 8C000224 */   addiu     $v0, $zero, 0x8C
    /* BE920 800CE120 E40342A6 */  sh         $v0, 0x3E4($s2)
  .L800CE124:
    /* BE924 800CE124 2400BF8F */  lw         $ra, 0x24($sp)
    /* BE928 800CE128 2000B28F */  lw         $s2, 0x20($sp)
    /* BE92C 800CE12C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* BE930 800CE130 1800B08F */  lw         $s0, 0x18($sp)
    /* BE934 800CE134 2800BD27 */  addiu      $sp, $sp, 0x28
    /* BE938 800CE138 0800E003 */  jr         $ra
    /* BE93C 800CE13C 00000000 */   nop
endlabel func_800CDEB4
