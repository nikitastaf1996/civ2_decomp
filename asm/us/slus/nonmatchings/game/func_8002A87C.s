.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002A87C, 0x16C

glabel func_8002A87C
    /* 1B07C 8002A87C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1B080 8002A880 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1B084 8002A884 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1B088 8002A888 21808000 */  addu       $s0, $a0, $zero
    /* 1B08C 8002A88C 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 1B090 8002A890 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 1B094 8002A894 1580053C */  lui        $a1, %hi(D_8014C1E4)
    /* 1B098 8002A898 E4C1A524 */  addiu      $a1, $a1, %lo(D_8014C1E4)
    /* 1B09C 8002A89C 1D6C000C */  jal        func_8001B074
    /* 1B0A0 8002A8A0 33010624 */   addiu     $a2, $zero, 0x133
    /* 1B0A4 8002A8A4 68000224 */  addiu      $v0, $zero, 0x68
    /* 1B0A8 8002A8A8 1380013C */  lui        $at, %hi(D_8012CC10)
    /* 1B0AC 8002A8AC 10CC22A4 */  sh         $v0, %lo(D_8012CC10)($at)
    /* 1B0B0 8002A8B0 BE000224 */  addiu      $v0, $zero, 0xBE
    /* 1B0B4 8002A8B4 1380013C */  lui        $at, %hi(D_8012CC12)
    /* 1B0B8 8002A8B8 12CC22A4 */  sh         $v0, %lo(D_8012CC12)($at)
    /* 1B0BC 8002A8BC 30000224 */  addiu      $v0, $zero, 0x30
    /* 1B0C0 8002A8C0 1380013C */  lui        $at, %hi(D_8012CC14)
    /* 1B0C4 8002A8C4 14CC22A4 */  sh         $v0, %lo(D_8012CC14)($at)
    /* 1B0C8 8002A8C8 18000224 */  addiu      $v0, $zero, 0x18
    /* 1B0CC 8002A8CC 1380013C */  lui        $at, %hi(D_8012CC16)
    /* 1B0D0 8002A8D0 16CC22A4 */  sh         $v0, %lo(D_8012CC16)($at)
    /* 1B0D4 8002A8D4 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 1B0D8 8002A8D8 1380013C */  lui        $at, %hi(D_8012CC1A)
    /* 1B0DC 8002A8DC 1ACC22A0 */  sb         $v0, %lo(D_8012CC1A)($at)
    /* 1B0E0 8002A8E0 1380013C */  lui        $at, %hi(D_8012CC1B)
    /* 1B0E4 8002A8E4 1BCC20A0 */  sb         $zero, %lo(D_8012CC1B)($at)
    /* 1B0E8 8002A8E8 1380033C */  lui        $v1, %hi(D_8012A0E0)
    /* 1B0EC 8002A8EC E0A06324 */  addiu      $v1, $v1, %lo(D_8012A0E0)
    /* 1B0F0 8002A8F0 40000224 */  addiu      $v0, $zero, 0x40
    /* 1B0F4 8002A8F4 422B62A0 */  sb         $v0, 0x2B42($v1)
    /* 1B0F8 8002A8F8 412B62A0 */  sb         $v0, 0x2B41($v1)
    /* 1B0FC 8002A8FC 1380013C */  lui        $at, %hi(D_8012CC20)
    /* 1B100 8002A900 20CC22A0 */  sb         $v0, %lo(D_8012CC20)($at)
    /* 1B104 8002A904 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* 1B108 8002A908 08004014 */  bnez       $v0, .L8002A92C
    /* 1B10C 8002A90C 18000224 */   addiu     $v0, $zero, 0x18
    /* 1B110 8002A910 1380013C */  lui        $at, %hi(D_8012CC1B)
    /* 1B114 8002A914 1BCC22A0 */  sb         $v0, %lo(D_8012CC1B)($at)
    /* 1B118 8002A918 80000224 */  addiu      $v0, $zero, 0x80
    /* 1B11C 8002A91C 422B62A0 */  sb         $v0, 0x2B42($v1)
    /* 1B120 8002A920 412B62A0 */  sb         $v0, 0x2B41($v1)
    /* 1B124 8002A924 1380013C */  lui        $at, %hi(D_8012CC20)
    /* 1B128 8002A928 20CC22A0 */  sb         $v0, %lo(D_8012CC20)($at)
  .L8002A92C:
    /* 1B12C 8002A92C 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 1B130 8002A930 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 1B134 8002A934 1580053C */  lui        $a1, %hi(D_8014C1E4)
    /* 1B138 8002A938 E4C1A524 */  addiu      $a1, $a1, %lo(D_8014C1E4)
    /* 1B13C 8002A93C 1D6C000C */  jal        func_8001B074
    /* 1B140 8002A940 34010624 */   addiu     $a2, $zero, 0x134
    /* 1B144 8002A944 A8000224 */  addiu      $v0, $zero, 0xA8
    /* 1B148 8002A948 1380013C */  lui        $at, %hi(D_8012CC34)
    /* 1B14C 8002A94C 34CC22A4 */  sh         $v0, %lo(D_8012CC34)($at)
    /* 1B150 8002A950 BE000224 */  addiu      $v0, $zero, 0xBE
    /* 1B154 8002A954 1380013C */  lui        $at, %hi(D_8012CC36)
    /* 1B158 8002A958 36CC22A4 */  sh         $v0, %lo(D_8012CC36)($at)
    /* 1B15C 8002A95C 30000224 */  addiu      $v0, $zero, 0x30
    /* 1B160 8002A960 1380013C */  lui        $at, %hi(D_8012CC38)
    /* 1B164 8002A964 38CC22A4 */  sh         $v0, %lo(D_8012CC38)($at)
    /* 1B168 8002A968 18000224 */  addiu      $v0, $zero, 0x18
    /* 1B16C 8002A96C 1380013C */  lui        $at, %hi(D_8012CC3A)
    /* 1B170 8002A970 3ACC22A4 */  sh         $v0, %lo(D_8012CC3A)($at)
    /* 1B174 8002A974 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 1B178 8002A978 1380013C */  lui        $at, %hi(D_8012CC3E)
    /* 1B17C 8002A97C 3ECC22A0 */  sb         $v0, %lo(D_8012CC3E)($at)
    /* 1B180 8002A980 30000224 */  addiu      $v0, $zero, 0x30
    /* 1B184 8002A984 1380013C */  lui        $at, %hi(D_8012CC3F)
    /* 1B188 8002A988 3FCC22A0 */  sb         $v0, %lo(D_8012CC3F)($at)
    /* 1B18C 8002A98C 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 1B190 8002A990 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 1B194 8002A994 40000224 */  addiu      $v0, $zero, 0x40
    /* 1B198 8002A998 662B82A0 */  sb         $v0, 0x2B66($a0)
    /* 1B19C 8002A99C 652B82A0 */  sb         $v0, 0x2B65($a0)
    /* 1B1A0 8002A9A0 1380013C */  lui        $at, %hi(D_8012CC44)
    /* 1B1A4 8002A9A4 44CC22A0 */  sb         $v0, %lo(D_8012CC44)($at)
    /* 1B1A8 8002A9A8 FFFF0332 */  andi       $v1, $s0, 0xFFFF
    /* 1B1AC 8002A9AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 1B1B0 8002A9B0 08006214 */  bne        $v1, $v0, .L8002A9D4
    /* 1B1B4 8002A9B4 48000224 */   addiu     $v0, $zero, 0x48
    /* 1B1B8 8002A9B8 1380013C */  lui        $at, %hi(D_8012CC3F)
    /* 1B1BC 8002A9BC 3FCC22A0 */  sb         $v0, %lo(D_8012CC3F)($at)
    /* 1B1C0 8002A9C0 80000224 */  addiu      $v0, $zero, 0x80
    /* 1B1C4 8002A9C4 662B82A0 */  sb         $v0, 0x2B66($a0)
    /* 1B1C8 8002A9C8 652B82A0 */  sb         $v0, 0x2B65($a0)
    /* 1B1CC 8002A9CC 1380013C */  lui        $at, %hi(D_8012CC44)
    /* 1B1D0 8002A9D0 44CC22A0 */  sb         $v0, %lo(D_8012CC44)($at)
  .L8002A9D4:
    /* 1B1D4 8002A9D4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1B1D8 8002A9D8 1000B08F */  lw         $s0, 0x10($sp)
    /* 1B1DC 8002A9DC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1B1E0 8002A9E0 0800E003 */  jr         $ra
    /* 1B1E4 8002A9E4 00000000 */   nop
endlabel func_8002A87C
