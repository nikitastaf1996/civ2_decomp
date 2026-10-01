.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B20E4, 0x7C

glabel func_800B20E4
    /* A28E4 800B20E4 6400878C */  lw         $a3, 0x64($a0)
    /* A28E8 800B20E8 6800868C */  lw         $a2, 0x68($a0)
    /* A28EC 800B20EC 00000000 */  nop
    /* A28F0 800B20F0 1500E610 */  beq        $a3, $a2, .L800B2148
    /* A28F4 800B20F4 0800033C */   lui       $v1, (0x80000 >> 16)
    /* A28F8 800B20F8 3000828C */  lw         $v0, 0x30($a0)
    /* A28FC 800B20FC 00000000 */  nop
    /* A2900 800B2100 24104300 */  and        $v0, $v0, $v1
    /* A2904 800B2104 12004014 */  bnez       $v0, .L800B2150
    /* A2908 800B2108 C2170500 */   srl       $v0, $a1, 31
    /* A290C 800B210C 1800A700 */  mult       $a1, $a3
    /* A2910 800B2110 12280000 */  mflo       $a1
    /* A2914 800B2114 00000000 */  nop
    /* A2918 800B2118 00000000 */  nop
    /* A291C 800B211C 1A00A600 */  div        $zero, $a1, $a2
    /* A2920 800B2120 0200C014 */  bnez       $a2, .L800B212C
    /* A2924 800B2124 00000000 */   nop
    /* A2928 800B2128 0D000700 */  break      7
  .L800B212C:
    /* A292C 800B212C FFFF0124 */  addiu      $at, $zero, -0x1
    /* A2930 800B2130 0400C114 */  bne        $a2, $at, .L800B2144
    /* A2934 800B2134 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A2938 800B2138 0200A114 */  bne        $a1, $at, .L800B2144
    /* A293C 800B213C 00000000 */   nop
    /* A2940 800B2140 0D000600 */  break      6
  .L800B2144:
    /* A2944 800B2144 12280000 */  mflo       $a1
  .L800B2148:
    /* A2948 800B2148 00000000 */  nop
    /* A294C 800B214C C2170500 */  srl        $v0, $a1, 31
  .L800B2150:
    /* A2950 800B2150 2110A200 */  addu       $v0, $a1, $v0
    /* A2954 800B2154 43100200 */  sra        $v0, $v0, 1
    /* A2958 800B2158 0800E003 */  jr         $ra
    /* A295C 800B215C 000182AC */   sw        $v0, 0x100($a0)
endlabel func_800B20E4
