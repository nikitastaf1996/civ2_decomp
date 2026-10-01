.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E018, 0x1F4

glabel func_8001E018
    /* E818 8001E018 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* E81C 8001E01C 2800BFAF */  sw         $ra, 0x28($sp)
    /* E820 8001E020 2400B1AF */  sw         $s1, 0x24($sp)
    /* E824 8001E024 2000B0AF */  sw         $s0, 0x20($sp)
    /* E828 8001E028 21808000 */  addu       $s0, $a0, $zero
    /* E82C 8001E02C 1000B127 */  addiu      $s1, $sp, 0x10
    /* E830 8001E030 0180053C */  lui        $a1, %hi(D_80017158)
    /* E834 8001E034 5871A524 */  addiu      $a1, $a1, %lo(D_80017158)
    /* E838 8001E038 0300A288 */  lwl        $v0, 0x3($a1)
    /* E83C 8001E03C 0000A298 */  lwr        $v0, 0x0($a1)
    /* E840 8001E040 0700A388 */  lwl        $v1, 0x7($a1)
    /* E844 8001E044 0400A398 */  lwr        $v1, 0x4($a1)
    /* E848 8001E048 0B00A488 */  lwl        $a0, 0xB($a1)
    /* E84C 8001E04C 0800A498 */  lwr        $a0, 0x8($a1)
    /* E850 8001E050 1300A2AB */  swl        $v0, 0x13($sp)
    /* E854 8001E054 1000A2BB */  swr        $v0, 0x10($sp)
    /* E858 8001E058 1700A3AB */  swl        $v1, 0x17($sp)
    /* E85C 8001E05C 1400A3BB */  swr        $v1, 0x14($sp)
    /* E860 8001E060 1B00A4AB */  swl        $a0, 0x1B($sp)
    /* E864 8001E064 1800A4BB */  swr        $a0, 0x18($sp)
    /* E868 8001E068 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* E86C 8001E06C E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* E870 8001E070 1580053C */  lui        $a1, %hi(D_8014C1E4)
    /* E874 8001E074 E4C1A524 */  addiu      $a1, $a1, %lo(D_8014C1E4)
    /* E878 8001E078 1D6C000C */  jal        func_8001B074
    /* E87C 8001E07C 65000624 */   addiu     $a2, $zero, 0x65
    /* E880 8001E080 C00B8297 */  lhu        $v0, %gp_rel(D_800552D0)($gp)
    /* E884 8001E084 1380013C */  lui        $at, %hi(D_8012AF18)
    /* E888 8001E088 18AF22A4 */  sh         $v0, %lo(D_8012AF18)($at)
    /* E88C 8001E08C C20B8297 */  lhu        $v0, %gp_rel(D_800552D2)($gp)
    /* E890 8001E090 1380013C */  lui        $at, %hi(D_8012AF1A)
    /* E894 8001E094 1AAF22A4 */  sh         $v0, %lo(D_8012AF1A)($at)
    /* E898 8001E098 10000224 */  addiu      $v0, $zero, 0x10
    /* E89C 8001E09C 1380013C */  lui        $at, %hi(D_8012AF1C)
    /* E8A0 8001E0A0 1CAF22A4 */  sh         $v0, %lo(D_8012AF1C)($at)
    /* E8A4 8001E0A4 1380013C */  lui        $at, %hi(D_8012AF1E)
    /* E8A8 8001E0A8 1EAF22A4 */  sh         $v0, %lo(D_8012AF1E)($at)
    /* E8AC 8001E0AC F0000224 */  addiu      $v0, $zero, 0xF0
    /* E8B0 8001E0B0 1380013C */  lui        $at, %hi(D_8012AF22)
    /* E8B4 8001E0B4 22AF22A0 */  sb         $v0, %lo(D_8012AF22)($at)
    /* E8B8 8001E0B8 1380013C */  lui        $at, %hi(D_8012AF23)
    /* E8BC 8001E0BC 23AF20A0 */  sb         $zero, %lo(D_8012AF23)($at)
    /* E8C0 8001E0C0 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* E8C4 8001E0C4 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* E8C8 8001E0C8 1580053C */  lui        $a1, %hi(D_8014C1E4)
    /* E8CC 8001E0CC E4C1A524 */  addiu      $a1, $a1, %lo(D_8014C1E4)
    /* E8D0 8001E0D0 1D6C000C */  jal        func_8001B074
    /* E8D4 8001E0D4 66000624 */   addiu     $a2, $zero, 0x66
    /* E8D8 8001E0D8 11000224 */  addiu      $v0, $zero, 0x11
    /* E8DC 8001E0DC 1380013C */  lui        $at, %hi(D_8012AF3C)
    /* E8E0 8001E0E0 3CAF22A4 */  sh         $v0, %lo(D_8012AF3C)($at)
    /* E8E4 8001E0E4 00841000 */  sll        $s0, $s0, 16
    /* E8E8 8001E0E8 C3831000 */  sra        $s0, $s0, 15
    /* E8EC 8001E0EC 21801102 */  addu       $s0, $s0, $s1
    /* E8F0 8001E0F0 00000296 */  lhu        $v0, 0x0($s0)
    /* E8F4 8001E0F4 1380013C */  lui        $at, %hi(D_8012AF3E)
    /* E8F8 8001E0F8 3EAF22A4 */  sh         $v0, %lo(D_8012AF3E)($at)
    /* E8FC 8001E0FC 08000224 */  addiu      $v0, $zero, 0x8
    /* E900 8001E100 1380013C */  lui        $at, %hi(D_8012AF40)
    /* E904 8001E104 40AF22A4 */  sh         $v0, %lo(D_8012AF40)($at)
    /* E908 8001E108 1380013C */  lui        $at, %hi(D_8012AF42)
    /* E90C 8001E10C 42AF22A4 */  sh         $v0, %lo(D_8012AF42)($at)
    /* E910 8001E110 80000224 */  addiu      $v0, $zero, 0x80
    /* E914 8001E114 1380013C */  lui        $at, %hi(D_8012AF46)
    /* E918 8001E118 46AF22A0 */  sb         $v0, %lo(D_8012AF46)($at)
    /* E91C 8001E11C 1380013C */  lui        $at, %hi(D_8012AF47)
    /* E920 8001E120 47AF20A0 */  sb         $zero, %lo(D_8012AF47)($at)
    /* E924 8001E124 21800000 */  addu       $s0, $zero, $zero
    /* E928 8001E128 21880000 */  addu       $s1, $zero, $zero
  .L8001E12C:
    /* E92C 8001E12C E976000C */  jal        func_8001DBA4
    /* E930 8001E130 01000424 */   addiu     $a0, $zero, 0x1
    /* E934 8001E134 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* E938 8001E138 10004014 */  bnez       $v0, .L8001E17C
    /* E93C 8001E13C FFFF1026 */   addiu     $s0, $s0, -0x1
    /* E940 8001E140 FFFF2332 */  andi       $v1, $s1, 0xFFFF
    /* E944 8001E144 00110300 */  sll        $v0, $v1, 4
    /* E948 8001E148 1380013C */  lui        $at, %hi(D_8012AF23)
    /* E94C 8001E14C 23AF22A0 */  sb         $v0, %lo(D_8012AF23)($at)
    /* E950 8001E150 07006230 */  andi       $v0, $v1, 0x7
    /* E954 8001E154 C0100200 */  sll        $v0, $v0, 3
    /* E958 8001E158 80FF4224 */  addiu      $v0, $v0, -0x80
    /* E95C 8001E15C 1380013C */  lui        $at, %hi(D_8012AF46)
    /* E960 8001E160 46AF22A0 */  sb         $v0, %lo(D_8012AF46)($at)
    /* E964 8001E164 08006330 */  andi       $v1, $v1, 0x8
    /* E968 8001E168 1380013C */  lui        $at, %hi(D_8012AF47)
    /* E96C 8001E16C 47AF23A0 */  sb         $v1, %lo(D_8012AF47)($at)
    /* E970 8001E170 01002226 */  addiu      $v0, $s1, 0x1
    /* E974 8001E174 0F005130 */  andi       $s1, $v0, 0xF
    /* E978 8001E178 02001024 */  addiu      $s0, $zero, 0x2
  .L8001E17C:
    /* E97C 8001E17C 0580023C */  lui        $v0, %hi(D_80056504)
    /* E980 8001E180 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* E984 8001E184 00000000 */  nop
    /* E988 8001E188 10004230 */  andi       $v0, $v0, 0x10
    /* E98C 8001E18C 04004010 */  beqz       $v0, .L8001E1A0
    /* E990 8001E190 01000224 */   addiu     $v0, $zero, 0x1
    /* E994 8001E194 600B82AF */  sw         $v0, %gp_rel(D_80055270)($gp)
    /* E998 8001E198 6F780008 */  j          .L8001E1BC
    /* E99C 8001E19C 05000424 */   addiu     $a0, $zero, 0x5
  .L8001E1A0:
    /* E9A0 8001E1A0 0580023C */  lui        $v0, %hi(D_80056504)
    /* E9A4 8001E1A4 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* E9A8 8001E1A8 00000000 */  nop
    /* E9AC 8001E1AC 40004230 */  andi       $v0, $v0, 0x40
    /* E9B0 8001E1B0 DEFF4010 */  beqz       $v0, .L8001E12C
    /* E9B4 8001E1B4 04000424 */   addiu     $a0, $zero, 0x4
    /* E9B8 8001E1B8 600B80AF */  sw         $zero, %gp_rel(D_80055270)($gp)
  .L8001E1BC:
    /* E9BC 8001E1BC CE6D000C */  jal        func_8001B738
    /* E9C0 8001E1C0 00000000 */   nop
    /* E9C4 8001E1C4 1380023C */  lui        $v0, %hi(D_8012AF14)
    /* E9C8 8001E1C8 14AF428C */  lw         $v0, %lo(D_8012AF14)($v0)
    /* E9CC 8001E1CC 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* E9D0 8001E1D0 25104300 */  or         $v0, $v0, $v1
    /* E9D4 8001E1D4 1380013C */  lui        $at, %hi(D_8012AF14)
    /* E9D8 8001E1D8 14AF22AC */  sw         $v0, %lo(D_8012AF14)($at)
    /* E9DC 8001E1DC 1380023C */  lui        $v0, %hi(D_8012AF38)
    /* E9E0 8001E1E0 38AF428C */  lw         $v0, %lo(D_8012AF38)($v0)
    /* E9E4 8001E1E4 00000000 */  nop
    /* E9E8 8001E1E8 25104300 */  or         $v0, $v0, $v1
    /* E9EC 8001E1EC 1380013C */  lui        $at, %hi(D_8012AF38)
    /* E9F0 8001E1F0 38AF22AC */  sw         $v0, %lo(D_8012AF38)($at)
    /* E9F4 8001E1F4 2800BF8F */  lw         $ra, 0x28($sp)
    /* E9F8 8001E1F8 2400B18F */  lw         $s1, 0x24($sp)
    /* E9FC 8001E1FC 2000B08F */  lw         $s0, 0x20($sp)
    /* EA00 8001E200 3000BD27 */  addiu      $sp, $sp, 0x30
    /* EA04 8001E204 0800E003 */  jr         $ra
    /* EA08 8001E208 00000000 */   nop
endlabel func_8001E018
