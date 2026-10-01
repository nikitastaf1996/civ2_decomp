.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C860, 0x18C

glabel func_8001C860
    /* D060 8001C860 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D064 8001C864 1800BFAF */  sw         $ra, 0x18($sp)
    /* D068 8001C868 1400B1AF */  sw         $s1, 0x14($sp)
    /* D06C 8001C86C 1000B0AF */  sw         $s0, 0x10($sp)
    /* D070 8001C870 01001124 */  addiu      $s1, $zero, 0x1
    /* D074 8001C874 FF061024 */  addiu      $s0, $zero, 0x6FF
    /* D078 8001C878 00141000 */  sll        $v0, $s0, 16
  .L8001C87C:
    /* D07C 8001C87C 03140200 */  sra        $v0, $v0, 16
    /* D080 8001C880 C0180200 */  sll        $v1, $v0, 3
    /* D084 8001C884 21186200 */  addu       $v1, $v1, $v0
    /* D088 8001C888 80180300 */  sll        $v1, $v1, 2
    /* D08C 8001C88C 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* D090 8001C890 21082300 */  addu       $at, $at, $v1
    /* D094 8001C894 E0A0228C */  lw         $v0, %lo(D_8012A0E0)($at)
    /* D098 8001C898 00000000 */  nop
    /* D09C 8001C89C 1D004004 */  bltz       $v0, .L8001C914
    /* D0A0 8001C8A0 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* D0A4 8001C8A4 1380013C */  lui        $at, %hi(D_8012A0E8)
    /* D0A8 8001C8A8 21082300 */  addu       $at, $at, $v1
    /* D0AC 8001C8AC E8A02294 */  lhu        $v0, %lo(D_8012A0E8)($at)
    /* D0B0 8001C8B0 00000000 */  nop
    /* D0B4 8001C8B4 17004010 */  beqz       $v0, .L8001C914
    /* D0B8 8001C8B8 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* D0BC 8001C8BC 1380013C */  lui        $at, %hi(D_8012A0EA)
    /* D0C0 8001C8C0 21082300 */  addu       $at, $at, $v1
    /* D0C4 8001C8C4 EAA02294 */  lhu        $v0, %lo(D_8012A0EA)($at)
    /* D0C8 8001C8C8 00000000 */  nop
    /* D0CC 8001C8CC 11004010 */  beqz       $v0, .L8001C914
    /* D0D0 8001C8D0 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* D0D4 8001C8D4 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* D0D8 8001C8D8 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* D0DC 8001C8DC 0580023C */  lui        $v0, %hi(D_80056524)
    /* D0E0 8001C8E0 2465428C */  lw         $v0, %lo(D_80056524)($v0)
    /* D0E4 8001C8E4 00000000 */  nop
    /* D0E8 8001C8E8 80280200 */  sll        $a1, $v0, 2
    /* D0EC 8001C8EC 2128A200 */  addu       $a1, $a1, $v0
    /* D0F0 8001C8F0 80280500 */  sll        $a1, $a1, 2
    /* D0F4 8001C8F4 0D80023C */  lui        $v0, %hi(D_800CC1F8)
    /* D0F8 8001C8F8 F8C14224 */  addiu      $v0, $v0, %lo(D_800CC1F8)
    /* D0FC 8001C8FC 21206400 */  addu       $a0, $v1, $a0
    /* D100 8001C900 2128A200 */  addu       $a1, $a1, $v0
    /* D104 8001C904 33DE000C */  jal        GsSortSprite
    /* D108 8001C908 FFFF2632 */   andi      $a2, $s1, 0xFFFF
    /* D10C 8001C90C 01003126 */  addiu      $s1, $s1, 0x1
    /* D110 8001C910 FFFF0226 */  addiu      $v0, $s0, -0x1
  .L8001C914:
    /* D114 8001C914 21804000 */  addu       $s0, $v0, $zero
    /* D118 8001C918 00140200 */  sll        $v0, $v0, 16
    /* D11C 8001C91C D7FF4104 */  bgez       $v0, .L8001C87C
    /* D120 8001C920 00141000 */   sll       $v0, $s0, 16
    /* D124 8001C924 03001024 */  addiu      $s0, $zero, 0x3
    /* D128 8001C928 00141000 */  sll        $v0, $s0, 16
  .L8001C92C:
    /* D12C 8001C92C 03140200 */  sra        $v0, $v0, 16
    /* D130 8001C930 C0180200 */  sll        $v1, $v0, 3
    /* D134 8001C934 21186200 */  addu       $v1, $v1, $v0
    /* D138 8001C938 80180300 */  sll        $v1, $v1, 2
    /* D13C 8001C93C 1780013C */  lui        $at, %hi(D_80172E88)
    /* D140 8001C940 21082300 */  addu       $at, $at, $v1
    /* D144 8001C944 882E228C */  lw         $v0, %lo(D_80172E88)($at)
    /* D148 8001C948 00000000 */  nop
    /* D14C 8001C94C 1D004004 */  bltz       $v0, .L8001C9C4
    /* D150 8001C950 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* D154 8001C954 1780013C */  lui        $at, %hi(D_80172E90)
    /* D158 8001C958 21082300 */  addu       $at, $at, $v1
    /* D15C 8001C95C 902E2284 */  lh         $v0, %lo(D_80172E90)($at)
    /* D160 8001C960 00000000 */  nop
    /* D164 8001C964 17004010 */  beqz       $v0, .L8001C9C4
    /* D168 8001C968 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* D16C 8001C96C 1780013C */  lui        $at, %hi(D_80172E92)
    /* D170 8001C970 21082300 */  addu       $at, $at, $v1
    /* D174 8001C974 922E2284 */  lh         $v0, %lo(D_80172E92)($at)
    /* D178 8001C978 00000000 */  nop
    /* D17C 8001C97C 11004010 */  beqz       $v0, .L8001C9C4
    /* D180 8001C980 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* D184 8001C984 1780043C */  lui        $a0, %hi(D_80172E88)
    /* D188 8001C988 882E8424 */  addiu      $a0, $a0, %lo(D_80172E88)
    /* D18C 8001C98C 0580023C */  lui        $v0, %hi(D_80056524)
    /* D190 8001C990 2465428C */  lw         $v0, %lo(D_80056524)($v0)
    /* D194 8001C994 00000000 */  nop
    /* D198 8001C998 80280200 */  sll        $a1, $v0, 2
    /* D19C 8001C99C 2128A200 */  addu       $a1, $a1, $v0
    /* D1A0 8001C9A0 80280500 */  sll        $a1, $a1, 2
    /* D1A4 8001C9A4 0D80023C */  lui        $v0, %hi(D_800CC1F8)
    /* D1A8 8001C9A8 F8C14224 */  addiu      $v0, $v0, %lo(D_800CC1F8)
    /* D1AC 8001C9AC 21206400 */  addu       $a0, $v1, $a0
    /* D1B0 8001C9B0 2128A200 */  addu       $a1, $a1, $v0
    /* D1B4 8001C9B4 AFDA000C */  jal        GsSortBg
    /* D1B8 8001C9B8 FFFF2632 */   andi      $a2, $s1, 0xFFFF
    /* D1BC 8001C9BC 01003126 */  addiu      $s1, $s1, 0x1
    /* D1C0 8001C9C0 FFFF0226 */  addiu      $v0, $s0, -0x1
  .L8001C9C4:
    /* D1C4 8001C9C4 21804000 */  addu       $s0, $v0, $zero
    /* D1C8 8001C9C8 00140200 */  sll        $v0, $v0, 16
    /* D1CC 8001C9CC D7FF4104 */  bgez       $v0, .L8001C92C
    /* D1D0 8001C9D0 00141000 */   sll       $v0, $s0, 16
    /* D1D4 8001C9D4 1800BF8F */  lw         $ra, 0x18($sp)
    /* D1D8 8001C9D8 1400B18F */  lw         $s1, 0x14($sp)
    /* D1DC 8001C9DC 1000B08F */  lw         $s0, 0x10($sp)
    /* D1E0 8001C9E0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* D1E4 8001C9E4 0800E003 */  jr         $ra
    /* D1E8 8001C9E8 00000000 */   nop
endlabel func_8001C860
