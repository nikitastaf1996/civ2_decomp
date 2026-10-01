.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DB004, 0xB9C

glabel func_800DB004
    /* CB804 800DB004 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* CB808 800DB008 1800BFAF */  sw         $ra, 0x18($sp)
    /* CB80C 800DB00C 1400B1AF */  sw         $s1, 0x14($sp)
    /* CB810 800DB010 1000B0AF */  sw         $s0, 0x10($sp)
    /* CB814 800DB014 1680043C */  lui        $a0, %hi(D_8015EE88)
    /* CB818 800DB018 88EE8424 */  addiu      $a0, $a0, %lo(D_8015EE88)
    /* CB81C 800DB01C 4CE1030C */  jal        func_800F8530
    /* CB820 800DB020 02000524 */   addiu     $a1, $zero, 0x2
    /* CB824 800DB024 1480043C */  lui        $a0, %hi(D_80138720)
    /* CB828 800DB028 20878424 */  addiu      $a0, $a0, %lo(D_80138720)
    /* CB82C 800DB02C 4CE1030C */  jal        func_800F8530
    /* CB830 800DB030 02000524 */   addiu     $a1, $zero, 0x2
    /* CB834 800DB034 1480043C */  lui        $a0, %hi(D_801386F4)
    /* CB838 800DB038 F4868424 */  addiu      $a0, $a0, %lo(D_801386F4)
    /* CB83C 800DB03C 4CE1030C */  jal        func_800F8530
    /* CB840 800DB040 02000524 */   addiu     $a1, $zero, 0x2
    /* CB844 800DB044 1480023C */  lui        $v0, %hi(D_80138098)
    /* CB848 800DB048 98804224 */  addiu      $v0, $v0, %lo(D_80138098)
    /* CB84C 800DB04C 0D004010 */  beqz       $v0, .L800DB084
    /* CB850 800DB050 00000000 */   nop
    /* CB854 800DB054 5C065024 */  addiu      $s0, $v0, 0x65C
    /* CB858 800DB058 0A000212 */  beq        $s0, $v0, .L800DB084
    /* CB85C 800DB05C 00000000 */   nop
    /* CB860 800DB060 1480113C */  lui        $s1, %hi(D_80138098)
    /* CB864 800DB064 98803126 */  addiu      $s1, $s1, %lo(D_80138098)
    /* CB868 800DB068 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB06C:
    /* CB86C 800DB06C 21200002 */  addu       $a0, $s0, $zero
    /* CB870 800DB070 12ED030C */  jal        func_800FB448
    /* CB874 800DB074 02000524 */   addiu     $a1, $zero, 0x2
    /* CB878 800DB078 FCFF1116 */  bne        $s0, $s1, .L800DB06C
    /* CB87C 800DB07C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CB880 800DB080 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB084:
    /* CB884 800DB084 1380023C */  lui        $v0, %hi(D_801379A8)
    /* CB888 800DB088 A8794224 */  addiu      $v0, $v0, %lo(D_801379A8)
    /* CB88C 800DB08C 0D004010 */  beqz       $v0, .L800DB0C4
    /* CB890 800DB090 00000000 */   nop
    /* CB894 800DB094 F0065024 */  addiu      $s0, $v0, 0x6F0
    /* CB898 800DB098 0A000212 */  beq        $s0, $v0, .L800DB0C4
    /* CB89C 800DB09C 00000000 */   nop
    /* CB8A0 800DB0A0 1380113C */  lui        $s1, %hi(D_801379A8)
    /* CB8A4 800DB0A4 A8793126 */  addiu      $s1, $s1, %lo(D_801379A8)
    /* CB8A8 800DB0A8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB0AC:
    /* CB8AC 800DB0AC 21200002 */  addu       $a0, $s0, $zero
    /* CB8B0 800DB0B0 12ED030C */  jal        func_800FB448
    /* CB8B4 800DB0B4 02000524 */   addiu     $a1, $zero, 0x2
    /* CB8B8 800DB0B8 FCFF1116 */  bne        $s0, $s1, .L800DB0AC
    /* CB8BC 800DB0BC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CB8C0 800DB0C0 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB0C4:
    /* CB8C4 800DB0C4 1380023C */  lui        $v0, %hi(D_80137508)
    /* CB8C8 800DB0C8 08754224 */  addiu      $v0, $v0, %lo(D_80137508)
    /* CB8CC 800DB0CC 0D004010 */  beqz       $v0, .L800DB104
    /* CB8D0 800DB0D0 00000000 */   nop
    /* CB8D4 800DB0D4 A0045024 */  addiu      $s0, $v0, 0x4A0
    /* CB8D8 800DB0D8 0A000212 */  beq        $s0, $v0, .L800DB104
    /* CB8DC 800DB0DC 00000000 */   nop
    /* CB8E0 800DB0E0 1380113C */  lui        $s1, %hi(D_80137508)
    /* CB8E4 800DB0E4 08753126 */  addiu      $s1, $s1, %lo(D_80137508)
    /* CB8E8 800DB0E8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB0EC:
    /* CB8EC 800DB0EC 21200002 */  addu       $a0, $s0, $zero
    /* CB8F0 800DB0F0 12ED030C */  jal        func_800FB448
    /* CB8F4 800DB0F4 02000524 */   addiu     $a1, $zero, 0x2
    /* CB8F8 800DB0F8 FCFF1116 */  bne        $s0, $s1, .L800DB0EC
    /* CB8FC 800DB0FC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CB900 800DB100 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB104:
    /* CB904 800DB104 1380023C */  lui        $v0, %hi(D_80136978)
    /* CB908 800DB108 78694224 */  addiu      $v0, $v0, %lo(D_80136978)
    /* CB90C 800DB10C 0D004010 */  beqz       $v0, .L800DB144
    /* CB910 800DB110 00000000 */   nop
    /* CB914 800DB114 900B5024 */  addiu      $s0, $v0, 0xB90
    /* CB918 800DB118 0A000212 */  beq        $s0, $v0, .L800DB144
    /* CB91C 800DB11C 00000000 */   nop
    /* CB920 800DB120 1380113C */  lui        $s1, %hi(D_80136978)
    /* CB924 800DB124 78693126 */  addiu      $s1, $s1, %lo(D_80136978)
    /* CB928 800DB128 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB12C:
    /* CB92C 800DB12C 21200002 */  addu       $a0, $s0, $zero
    /* CB930 800DB130 12ED030C */  jal        func_800FB448
    /* CB934 800DB134 02000524 */   addiu     $a1, $zero, 0x2
    /* CB938 800DB138 FCFF1116 */  bne        $s0, $s1, .L800DB12C
    /* CB93C 800DB13C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CB940 800DB140 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB144:
    /* CB944 800DB144 1380023C */  lui        $v0, %hi(D_80135CC0)
    /* CB948 800DB148 C05C4224 */  addiu      $v0, $v0, %lo(D_80135CC0)
    /* CB94C 800DB14C 0D004010 */  beqz       $v0, .L800DB184
    /* CB950 800DB150 00000000 */   nop
    /* CB954 800DB154 B80C5024 */  addiu      $s0, $v0, 0xCB8
    /* CB958 800DB158 0A000212 */  beq        $s0, $v0, .L800DB184
    /* CB95C 800DB15C 00000000 */   nop
    /* CB960 800DB160 1380113C */  lui        $s1, %hi(D_80135CC0)
    /* CB964 800DB164 C05C3126 */  addiu      $s1, $s1, %lo(D_80135CC0)
    /* CB968 800DB168 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB16C:
    /* CB96C 800DB16C 21200002 */  addu       $a0, $s0, $zero
    /* CB970 800DB170 12ED030C */  jal        func_800FB448
    /* CB974 800DB174 02000524 */   addiu     $a1, $zero, 0x2
    /* CB978 800DB178 FCFF1116 */  bne        $s0, $s1, .L800DB16C
    /* CB97C 800DB17C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CB980 800DB180 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB184:
    /* CB984 800DB184 1380043C */  lui        $a0, %hi(D_80135C2C)
    /* CB988 800DB188 2C5C8424 */  addiu      $a0, $a0, %lo(D_80135C2C)
    /* CB98C 800DB18C 12ED030C */  jal        func_800FB448
    /* CB990 800DB190 02000524 */   addiu     $a1, $zero, 0x2
    /* CB994 800DB194 1380043C */  lui        $a0, %hi(D_80135B98)
    /* CB998 800DB198 985B8424 */  addiu      $a0, $a0, %lo(D_80135B98)
    /* CB99C 800DB19C 12ED030C */  jal        func_800FB448
    /* CB9A0 800DB1A0 02000524 */   addiu     $a1, $zero, 0x2
    /* CB9A4 800DB1A4 1380043C */  lui        $a0, %hi(D_80135B04)
    /* CB9A8 800DB1A8 045B8424 */  addiu      $a0, $a0, %lo(D_80135B04)
    /* CB9AC 800DB1AC 12ED030C */  jal        func_800FB448
    /* CB9B0 800DB1B0 02000524 */   addiu     $a1, $zero, 0x2
    /* CB9B4 800DB1B4 1380043C */  lui        $a0, %hi(D_80135A70)
    /* CB9B8 800DB1B8 705A8424 */  addiu      $a0, $a0, %lo(D_80135A70)
    /* CB9BC 800DB1BC 12ED030C */  jal        func_800FB448
    /* CB9C0 800DB1C0 02000524 */   addiu     $a1, $zero, 0x2
    /* CB9C4 800DB1C4 1380043C */  lui        $a0, %hi(D_801359DC)
    /* CB9C8 800DB1C8 DC598424 */  addiu      $a0, $a0, %lo(D_801359DC)
    /* CB9CC 800DB1CC 12ED030C */  jal        func_800FB448
    /* CB9D0 800DB1D0 02000524 */   addiu     $a1, $zero, 0x2
    /* CB9D4 800DB1D4 1380043C */  lui        $a0, %hi(D_80135948)
    /* CB9D8 800DB1D8 48598424 */  addiu      $a0, $a0, %lo(D_80135948)
    /* CB9DC 800DB1DC 12ED030C */  jal        func_800FB448
    /* CB9E0 800DB1E0 02000524 */   addiu     $a1, $zero, 0x2
    /* CB9E4 800DB1E4 1380043C */  lui        $a0, %hi(D_801358B4)
    /* CB9E8 800DB1E8 B4588424 */  addiu      $a0, $a0, %lo(D_801358B4)
    /* CB9EC 800DB1EC 12ED030C */  jal        func_800FB448
    /* CB9F0 800DB1F0 02000524 */   addiu     $a1, $zero, 0x2
    /* CB9F4 800DB1F4 1380023C */  lui        $v0, %hi(D_80135414)
    /* CB9F8 800DB1F8 14544224 */  addiu      $v0, $v0, %lo(D_80135414)
    /* CB9FC 800DB1FC 0D004010 */  beqz       $v0, .L800DB234
    /* CBA00 800DB200 00000000 */   nop
    /* CBA04 800DB204 A0045024 */  addiu      $s0, $v0, 0x4A0
    /* CBA08 800DB208 0A000212 */  beq        $s0, $v0, .L800DB234
    /* CBA0C 800DB20C 00000000 */   nop
    /* CBA10 800DB210 1380113C */  lui        $s1, %hi(D_80135414)
    /* CBA14 800DB214 14543126 */  addiu      $s1, $s1, %lo(D_80135414)
    /* CBA18 800DB218 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB21C:
    /* CBA1C 800DB21C 21200002 */  addu       $a0, $s0, $zero
    /* CBA20 800DB220 12ED030C */  jal        func_800FB448
    /* CBA24 800DB224 02000524 */   addiu     $a1, $zero, 0x2
    /* CBA28 800DB228 FCFF1116 */  bne        $s0, $s1, .L800DB21C
    /* CBA2C 800DB22C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBA30 800DB230 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB234:
    /* CBA34 800DB234 1380023C */  lui        $v0, %hi(D_80135008)
    /* CBA38 800DB238 08504224 */  addiu      $v0, $v0, %lo(D_80135008)
    /* CBA3C 800DB23C 0D004010 */  beqz       $v0, .L800DB274
    /* CBA40 800DB240 00000000 */   nop
    /* CBA44 800DB244 0C045024 */  addiu      $s0, $v0, 0x40C
    /* CBA48 800DB248 0A000212 */  beq        $s0, $v0, .L800DB274
    /* CBA4C 800DB24C 00000000 */   nop
    /* CBA50 800DB250 1380113C */  lui        $s1, %hi(D_80135008)
    /* CBA54 800DB254 08503126 */  addiu      $s1, $s1, %lo(D_80135008)
    /* CBA58 800DB258 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB25C:
    /* CBA5C 800DB25C 21200002 */  addu       $a0, $s0, $zero
    /* CBA60 800DB260 12ED030C */  jal        func_800FB448
    /* CBA64 800DB264 02000524 */   addiu     $a1, $zero, 0x2
    /* CBA68 800DB268 FCFF1116 */  bne        $s0, $s1, .L800DB25C
    /* CBA6C 800DB26C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBA70 800DB270 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB274:
    /* CBA74 800DB274 1380023C */  lui        $v0, %hi(D_80134DB8)
    /* CBA78 800DB278 B84D4224 */  addiu      $v0, $v0, %lo(D_80134DB8)
    /* CBA7C 800DB27C 0D004010 */  beqz       $v0, .L800DB2B4
    /* CBA80 800DB280 00000000 */   nop
    /* CBA84 800DB284 50025024 */  addiu      $s0, $v0, 0x250
    /* CBA88 800DB288 0A000212 */  beq        $s0, $v0, .L800DB2B4
    /* CBA8C 800DB28C 00000000 */   nop
    /* CBA90 800DB290 1380113C */  lui        $s1, %hi(D_80134DB8)
    /* CBA94 800DB294 B84D3126 */  addiu      $s1, $s1, %lo(D_80134DB8)
    /* CBA98 800DB298 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB29C:
    /* CBA9C 800DB29C 21200002 */  addu       $a0, $s0, $zero
    /* CBAA0 800DB2A0 12ED030C */  jal        func_800FB448
    /* CBAA4 800DB2A4 02000524 */   addiu     $a1, $zero, 0x2
    /* CBAA8 800DB2A8 FCFF1116 */  bne        $s0, $s1, .L800DB29C
    /* CBAAC 800DB2AC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBAB0 800DB2B0 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB2B4:
    /* CBAB4 800DB2B4 1380043C */  lui        $a0, %hi(D_80134D24)
    /* CBAB8 800DB2B8 244D8424 */  addiu      $a0, $a0, %lo(D_80134D24)
    /* CBABC 800DB2BC 12ED030C */  jal        func_800FB448
    /* CBAC0 800DB2C0 02000524 */   addiu     $a1, $zero, 0x2
    /* CBAC4 800DB2C4 1380023C */  lui        $v0, %hi(D_80134884)
    /* CBAC8 800DB2C8 84484224 */  addiu      $v0, $v0, %lo(D_80134884)
    /* CBACC 800DB2CC 0D004010 */  beqz       $v0, .L800DB304
    /* CBAD0 800DB2D0 00000000 */   nop
    /* CBAD4 800DB2D4 A0045024 */  addiu      $s0, $v0, 0x4A0
    /* CBAD8 800DB2D8 0A000212 */  beq        $s0, $v0, .L800DB304
    /* CBADC 800DB2DC 00000000 */   nop
    /* CBAE0 800DB2E0 1380113C */  lui        $s1, %hi(D_80134884)
    /* CBAE4 800DB2E4 84483126 */  addiu      $s1, $s1, %lo(D_80134884)
    /* CBAE8 800DB2E8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB2EC:
    /* CBAEC 800DB2EC 21200002 */  addu       $a0, $s0, $zero
    /* CBAF0 800DB2F0 12ED030C */  jal        func_800FB448
    /* CBAF4 800DB2F4 02000524 */   addiu     $a1, $zero, 0x2
    /* CBAF8 800DB2F8 FCFF1116 */  bne        $s0, $s1, .L800DB2EC
    /* CBAFC 800DB2FC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBB00 800DB300 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB304:
    /* CBB04 800DB304 1380023C */  lui        $v0, %hi(D_80133CF4)
    /* CBB08 800DB308 F43C4224 */  addiu      $v0, $v0, %lo(D_80133CF4)
    /* CBB0C 800DB30C 0D004010 */  beqz       $v0, .L800DB344
    /* CBB10 800DB310 00000000 */   nop
    /* CBB14 800DB314 900B5024 */  addiu      $s0, $v0, 0xB90
    /* CBB18 800DB318 0A000212 */  beq        $s0, $v0, .L800DB344
    /* CBB1C 800DB31C 00000000 */   nop
    /* CBB20 800DB320 1380113C */  lui        $s1, %hi(D_80133CF4)
    /* CBB24 800DB324 F43C3126 */  addiu      $s1, $s1, %lo(D_80133CF4)
    /* CBB28 800DB328 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB32C:
    /* CBB2C 800DB32C 21200002 */  addu       $a0, $s0, $zero
    /* CBB30 800DB330 12ED030C */  jal        func_800FB448
    /* CBB34 800DB334 02000524 */   addiu     $a1, $zero, 0x2
    /* CBB38 800DB338 FCFF1116 */  bne        $s0, $s1, .L800DB32C
    /* CBB3C 800DB33C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBB40 800DB340 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB344:
    /* CBB44 800DB344 1380023C */  lui        $v0, %hi(D_80132CC4)
    /* CBB48 800DB348 C42C4224 */  addiu      $v0, $v0, %lo(D_80132CC4)
    /* CBB4C 800DB34C 0D004010 */  beqz       $v0, .L800DB384
    /* CBB50 800DB350 00000000 */   nop
    /* CBB54 800DB354 30105024 */  addiu      $s0, $v0, 0x1030
    /* CBB58 800DB358 0A000212 */  beq        $s0, $v0, .L800DB384
    /* CBB5C 800DB35C 00000000 */   nop
    /* CBB60 800DB360 1380113C */  lui        $s1, %hi(D_80132CC4)
    /* CBB64 800DB364 C42C3126 */  addiu      $s1, $s1, %lo(D_80132CC4)
    /* CBB68 800DB368 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB36C:
    /* CBB6C 800DB36C 21200002 */  addu       $a0, $s0, $zero
    /* CBB70 800DB370 12ED030C */  jal        func_800FB448
    /* CBB74 800DB374 02000524 */   addiu     $a1, $zero, 0x2
    /* CBB78 800DB378 FCFF1116 */  bne        $s0, $s1, .L800DB36C
    /* CBB7C 800DB37C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBB80 800DB380 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB384:
    /* CBB84 800DB384 1380023C */  lui        $v0, %hi(D_80131638)
    /* CBB88 800DB388 38164224 */  addiu      $v0, $v0, %lo(D_80131638)
    /* CBB8C 800DB38C 0D004010 */  beqz       $v0, .L800DB3C4
    /* CBB90 800DB390 00000000 */   nop
    /* CBB94 800DB394 8C165024 */  addiu      $s0, $v0, 0x168C
    /* CBB98 800DB398 0A000212 */  beq        $s0, $v0, .L800DB3C4
    /* CBB9C 800DB39C 00000000 */   nop
    /* CBBA0 800DB3A0 1380113C */  lui        $s1, %hi(D_80131638)
    /* CBBA4 800DB3A4 38163126 */  addiu      $s1, $s1, %lo(D_80131638)
    /* CBBA8 800DB3A8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB3AC:
    /* CBBAC 800DB3AC 21200002 */  addu       $a0, $s0, $zero
    /* CBBB0 800DB3B0 12ED030C */  jal        func_800FB448
    /* CBBB4 800DB3B4 02000524 */   addiu     $a1, $zero, 0x2
    /* CBBB8 800DB3B8 FCFF1116 */  bne        $s0, $s1, .L800DB3AC
    /* CBBBC 800DB3BC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBBC0 800DB3C0 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB3C4:
    /* CBBC4 800DB3C4 1380043C */  lui        $a0, %hi(D_801315A4)
    /* CBBC8 800DB3C8 A4158424 */  addiu      $a0, $a0, %lo(D_801315A4)
    /* CBBCC 800DB3CC 12ED030C */  jal        func_800FB448
    /* CBBD0 800DB3D0 02000524 */   addiu     $a1, $zero, 0x2
    /* CBBD4 800DB3D4 1380023C */  lui        $v0, %hi(D_8013122C)
    /* CBBD8 800DB3D8 2C124224 */  addiu      $v0, $v0, %lo(D_8013122C)
    /* CBBDC 800DB3DC 0D004010 */  beqz       $v0, .L800DB414
    /* CBBE0 800DB3E0 00000000 */   nop
    /* CBBE4 800DB3E4 78035024 */  addiu      $s0, $v0, 0x378
    /* CBBE8 800DB3E8 0A000212 */  beq        $s0, $v0, .L800DB414
    /* CBBEC 800DB3EC 00000000 */   nop
    /* CBBF0 800DB3F0 1380113C */  lui        $s1, %hi(D_8013122C)
    /* CBBF4 800DB3F4 2C123126 */  addiu      $s1, $s1, %lo(D_8013122C)
    /* CBBF8 800DB3F8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB3FC:
    /* CBBFC 800DB3FC 21200002 */  addu       $a0, $s0, $zero
    /* CBC00 800DB400 12ED030C */  jal        func_800FB448
    /* CBC04 800DB404 02000524 */   addiu     $a1, $zero, 0x2
    /* CBC08 800DB408 FCFF1116 */  bne        $s0, $s1, .L800DB3FC
    /* CBC0C 800DB40C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBC10 800DB410 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB414:
    /* CBC14 800DB414 1380023C */  lui        $v0, %hi(D_80130FDC)
    /* CBC18 800DB418 DC0F4224 */  addiu      $v0, $v0, %lo(D_80130FDC)
    /* CBC1C 800DB41C 0D004010 */  beqz       $v0, .L800DB454
    /* CBC20 800DB420 00000000 */   nop
    /* CBC24 800DB424 50025024 */  addiu      $s0, $v0, 0x250
    /* CBC28 800DB428 0A000212 */  beq        $s0, $v0, .L800DB454
    /* CBC2C 800DB42C 00000000 */   nop
    /* CBC30 800DB430 1380113C */  lui        $s1, %hi(D_80130FDC)
    /* CBC34 800DB434 DC0F3126 */  addiu      $s1, $s1, %lo(D_80130FDC)
    /* CBC38 800DB438 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB43C:
    /* CBC3C 800DB43C 21200002 */  addu       $a0, $s0, $zero
    /* CBC40 800DB440 12ED030C */  jal        func_800FB448
    /* CBC44 800DB444 02000524 */   addiu     $a1, $zero, 0x2
    /* CBC48 800DB448 FCFF1116 */  bne        $s0, $s1, .L800DB43C
    /* CBC4C 800DB44C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBC50 800DB450 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB454:
    /* CBC54 800DB454 1380023C */  lui        $v0, %hi(D_80130D8C)
    /* CBC58 800DB458 8C0D4224 */  addiu      $v0, $v0, %lo(D_80130D8C)
    /* CBC5C 800DB45C 0D004010 */  beqz       $v0, .L800DB494
    /* CBC60 800DB460 00000000 */   nop
    /* CBC64 800DB464 50025024 */  addiu      $s0, $v0, 0x250
    /* CBC68 800DB468 0A000212 */  beq        $s0, $v0, .L800DB494
    /* CBC6C 800DB46C 00000000 */   nop
    /* CBC70 800DB470 1380113C */  lui        $s1, %hi(D_80130D8C)
    /* CBC74 800DB474 8C0D3126 */  addiu      $s1, $s1, %lo(D_80130D8C)
    /* CBC78 800DB478 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB47C:
    /* CBC7C 800DB47C 21200002 */  addu       $a0, $s0, $zero
    /* CBC80 800DB480 12ED030C */  jal        func_800FB448
    /* CBC84 800DB484 02000524 */   addiu     $a1, $zero, 0x2
    /* CBC88 800DB488 FCFF1116 */  bne        $s0, $s1, .L800DB47C
    /* CBC8C 800DB48C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBC90 800DB490 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB494:
    /* CBC94 800DB494 1380043C */  lui        $a0, %hi(D_80130CF8)
    /* CBC98 800DB498 F80C8424 */  addiu      $a0, $a0, %lo(D_80130CF8)
    /* CBC9C 800DB49C 12ED030C */  jal        func_800FB448
    /* CBCA0 800DB4A0 02000524 */   addiu     $a1, $zero, 0x2
    /* CBCA4 800DB4A4 1380043C */  lui        $a0, %hi(D_80130C64)
    /* CBCA8 800DB4A8 640C8424 */  addiu      $a0, $a0, %lo(D_80130C64)
    /* CBCAC 800DB4AC 12ED030C */  jal        func_800FB448
    /* CBCB0 800DB4B0 02000524 */   addiu     $a1, $zero, 0x2
    /* CBCB4 800DB4B4 1380023C */  lui        $v0, %hi(D_80130AA8)
    /* CBCB8 800DB4B8 A80A4224 */  addiu      $v0, $v0, %lo(D_80130AA8)
    /* CBCBC 800DB4BC 0D004010 */  beqz       $v0, .L800DB4F4
    /* CBCC0 800DB4C0 00000000 */   nop
    /* CBCC4 800DB4C4 BC015024 */  addiu      $s0, $v0, 0x1BC
    /* CBCC8 800DB4C8 0A000212 */  beq        $s0, $v0, .L800DB4F4
    /* CBCCC 800DB4CC 00000000 */   nop
    /* CBCD0 800DB4D0 1380113C */  lui        $s1, %hi(D_80130AA8)
    /* CBCD4 800DB4D4 A80A3126 */  addiu      $s1, $s1, %lo(D_80130AA8)
    /* CBCD8 800DB4D8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB4DC:
    /* CBCDC 800DB4DC 21200002 */  addu       $a0, $s0, $zero
    /* CBCE0 800DB4E0 12ED030C */  jal        func_800FB448
    /* CBCE4 800DB4E4 02000524 */   addiu     $a1, $zero, 0x2
    /* CBCE8 800DB4E8 FCFF1116 */  bne        $s0, $s1, .L800DB4DC
    /* CBCEC 800DB4EC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBCF0 800DB4F0 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB4F4:
    /* CBCF4 800DB4F4 1380023C */  lui        $v0, %hi(D_801308EC)
    /* CBCF8 800DB4F8 EC084224 */  addiu      $v0, $v0, %lo(D_801308EC)
    /* CBCFC 800DB4FC 0D004010 */  beqz       $v0, .L800DB534
    /* CBD00 800DB500 00000000 */   nop
    /* CBD04 800DB504 BC015024 */  addiu      $s0, $v0, 0x1BC
    /* CBD08 800DB508 0A000212 */  beq        $s0, $v0, .L800DB534
    /* CBD0C 800DB50C 00000000 */   nop
    /* CBD10 800DB510 1380113C */  lui        $s1, %hi(D_801308EC)
    /* CBD14 800DB514 EC083126 */  addiu      $s1, $s1, %lo(D_801308EC)
    /* CBD18 800DB518 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB51C:
    /* CBD1C 800DB51C 21200002 */  addu       $a0, $s0, $zero
    /* CBD20 800DB520 12ED030C */  jal        func_800FB448
    /* CBD24 800DB524 02000524 */   addiu     $a1, $zero, 0x2
    /* CBD28 800DB528 FCFF1116 */  bne        $s0, $s1, .L800DB51C
    /* CBD2C 800DB52C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBD30 800DB530 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB534:
    /* CBD34 800DB534 1380023C */  lui        $v0, %hi(D_80130730)
    /* CBD38 800DB538 30074224 */  addiu      $v0, $v0, %lo(D_80130730)
    /* CBD3C 800DB53C 0D004010 */  beqz       $v0, .L800DB574
    /* CBD40 800DB540 00000000 */   nop
    /* CBD44 800DB544 BC015024 */  addiu      $s0, $v0, 0x1BC
    /* CBD48 800DB548 0A000212 */  beq        $s0, $v0, .L800DB574
    /* CBD4C 800DB54C 00000000 */   nop
    /* CBD50 800DB550 1380113C */  lui        $s1, %hi(D_80130730)
    /* CBD54 800DB554 30073126 */  addiu      $s1, $s1, %lo(D_80130730)
    /* CBD58 800DB558 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB55C:
    /* CBD5C 800DB55C 21200002 */  addu       $a0, $s0, $zero
    /* CBD60 800DB560 12ED030C */  jal        func_800FB448
    /* CBD64 800DB564 02000524 */   addiu     $a1, $zero, 0x2
    /* CBD68 800DB568 FCFF1116 */  bne        $s0, $s1, .L800DB55C
    /* CBD6C 800DB56C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBD70 800DB570 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB574:
    /* CBD74 800DB574 1380023C */  lui        $v0, %hi(D_801303B8)
    /* CBD78 800DB578 B8034224 */  addiu      $v0, $v0, %lo(D_801303B8)
    /* CBD7C 800DB57C 0D004010 */  beqz       $v0, .L800DB5B4
    /* CBD80 800DB580 00000000 */   nop
    /* CBD84 800DB584 78035024 */  addiu      $s0, $v0, 0x378
    /* CBD88 800DB588 0A000212 */  beq        $s0, $v0, .L800DB5B4
    /* CBD8C 800DB58C 00000000 */   nop
    /* CBD90 800DB590 1380113C */  lui        $s1, %hi(D_801303B8)
    /* CBD94 800DB594 B8033126 */  addiu      $s1, $s1, %lo(D_801303B8)
    /* CBD98 800DB598 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB59C:
    /* CBD9C 800DB59C 21200002 */  addu       $a0, $s0, $zero
    /* CBDA0 800DB5A0 12ED030C */  jal        func_800FB448
    /* CBDA4 800DB5A4 02000524 */   addiu     $a1, $zero, 0x2
    /* CBDA8 800DB5A8 FCFF1116 */  bne        $s0, $s1, .L800DB59C
    /* CBDAC 800DB5AC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBDB0 800DB5B0 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB5B4:
    /* CBDB4 800DB5B4 1380023C */  lui        $v0, %hi(D_8012FD5C)
    /* CBDB8 800DB5B8 5CFD4224 */  addiu      $v0, $v0, %lo(D_8012FD5C)
    /* CBDBC 800DB5BC 0D004010 */  beqz       $v0, .L800DB5F4
    /* CBDC0 800DB5C0 00000000 */   nop
    /* CBDC4 800DB5C4 5C065024 */  addiu      $s0, $v0, 0x65C
    /* CBDC8 800DB5C8 0A000212 */  beq        $s0, $v0, .L800DB5F4
    /* CBDCC 800DB5CC 00000000 */   nop
    /* CBDD0 800DB5D0 1380113C */  lui        $s1, %hi(D_8012FD5C)
    /* CBDD4 800DB5D4 5CFD3126 */  addiu      $s1, $s1, %lo(D_8012FD5C)
    /* CBDD8 800DB5D8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB5DC:
    /* CBDDC 800DB5DC 21200002 */  addu       $a0, $s0, $zero
    /* CBDE0 800DB5E0 12ED030C */  jal        func_800FB448
    /* CBDE4 800DB5E4 02000524 */   addiu     $a1, $zero, 0x2
    /* CBDE8 800DB5E8 FCFF1116 */  bne        $s0, $s1, .L800DB5DC
    /* CBDEC 800DB5EC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBDF0 800DB5F0 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB5F4:
    /* CBDF4 800DB5F4 1380023C */  lui        $v0, %hi(D_8012E3EC)
    /* CBDF8 800DB5F8 ECE34224 */  addiu      $v0, $v0, %lo(D_8012E3EC)
    /* CBDFC 800DB5FC 0D004010 */  beqz       $v0, .L800DB634
    /* CBE00 800DB600 00000000 */   nop
    /* CBE04 800DB604 70195024 */  addiu      $s0, $v0, 0x1970
    /* CBE08 800DB608 0A000212 */  beq        $s0, $v0, .L800DB634
    /* CBE0C 800DB60C 00000000 */   nop
    /* CBE10 800DB610 1380113C */  lui        $s1, %hi(D_8012E3EC)
    /* CBE14 800DB614 ECE33126 */  addiu      $s1, $s1, %lo(D_8012E3EC)
    /* CBE18 800DB618 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB61C:
    /* CBE1C 800DB61C 21200002 */  addu       $a0, $s0, $zero
    /* CBE20 800DB620 12ED030C */  jal        func_800FB448
    /* CBE24 800DB624 02000524 */   addiu     $a1, $zero, 0x2
    /* CBE28 800DB628 FCFF1116 */  bne        $s0, $s1, .L800DB61C
    /* CBE2C 800DB62C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBE30 800DB630 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB634:
    /* CBE34 800DB634 1380023C */  lui        $v0, %hi(D_8012DF4C)
    /* CBE38 800DB638 4CDF4224 */  addiu      $v0, $v0, %lo(D_8012DF4C)
    /* CBE3C 800DB63C 0D004010 */  beqz       $v0, .L800DB674
    /* CBE40 800DB640 00000000 */   nop
    /* CBE44 800DB644 A0045024 */  addiu      $s0, $v0, 0x4A0
    /* CBE48 800DB648 0A000212 */  beq        $s0, $v0, .L800DB674
    /* CBE4C 800DB64C 00000000 */   nop
    /* CBE50 800DB650 1380113C */  lui        $s1, %hi(D_8012DF4C)
    /* CBE54 800DB654 4CDF3126 */  addiu      $s1, $s1, %lo(D_8012DF4C)
    /* CBE58 800DB658 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB65C:
    /* CBE5C 800DB65C 21200002 */  addu       $a0, $s0, $zero
    /* CBE60 800DB660 12ED030C */  jal        func_800FB448
    /* CBE64 800DB664 02000524 */   addiu     $a1, $zero, 0x2
    /* CBE68 800DB668 FCFF1116 */  bne        $s0, $s1, .L800DB65C
    /* CBE6C 800DB66C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBE70 800DB670 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB674:
    /* CBE74 800DB674 1380023C */  lui        $v0, %hi(D_8012BF80)
    /* CBE78 800DB678 80BF4224 */  addiu      $v0, $v0, %lo(D_8012BF80)
    /* CBE7C 800DB67C 0D004010 */  beqz       $v0, .L800DB6B4
    /* CBE80 800DB680 00000000 */   nop
    /* CBE84 800DB684 CC1F5024 */  addiu      $s0, $v0, 0x1FCC
    /* CBE88 800DB688 0A000212 */  beq        $s0, $v0, .L800DB6B4
    /* CBE8C 800DB68C 00000000 */   nop
    /* CBE90 800DB690 1380113C */  lui        $s1, %hi(D_8012BF80)
    /* CBE94 800DB694 80BF3126 */  addiu      $s1, $s1, %lo(D_8012BF80)
    /* CBE98 800DB698 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB69C:
    /* CBE9C 800DB69C 21200002 */  addu       $a0, $s0, $zero
    /* CBEA0 800DB6A0 12ED030C */  jal        func_800FB448
    /* CBEA4 800DB6A4 02000524 */   addiu     $a1, $zero, 0x2
    /* CBEA8 800DB6A8 FCFF1116 */  bne        $s0, $s1, .L800DB69C
    /* CBEAC 800DB6AC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBEB0 800DB6B0 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB6B4:
    /* CBEB4 800DB6B4 1380023C */  lui        $v0, %hi(D_8012B640)
    /* CBEB8 800DB6B8 40B64224 */  addiu      $v0, $v0, %lo(D_8012B640)
    /* CBEBC 800DB6BC 0D004010 */  beqz       $v0, .L800DB6F4
    /* CBEC0 800DB6C0 00000000 */   nop
    /* CBEC4 800DB6C4 40095024 */  addiu      $s0, $v0, 0x940
    /* CBEC8 800DB6C8 0A000212 */  beq        $s0, $v0, .L800DB6F4
    /* CBECC 800DB6CC 00000000 */   nop
    /* CBED0 800DB6D0 1380113C */  lui        $s1, %hi(D_8012B640)
    /* CBED4 800DB6D4 40B63126 */  addiu      $s1, $s1, %lo(D_8012B640)
    /* CBED8 800DB6D8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB6DC:
    /* CBEDC 800DB6DC 21200002 */  addu       $a0, $s0, $zero
    /* CBEE0 800DB6E0 12ED030C */  jal        func_800FB448
    /* CBEE4 800DB6E4 02000524 */   addiu     $a1, $zero, 0x2
    /* CBEE8 800DB6E8 FCFF1116 */  bne        $s0, $s1, .L800DB6DC
    /* CBEEC 800DB6EC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBEF0 800DB6F0 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB6F4:
    /* CBEF4 800DB6F4 1380023C */  lui        $v0, %hi(D_80129A80)
    /* CBEF8 800DB6F8 809A4224 */  addiu      $v0, $v0, %lo(D_80129A80)
    /* CBEFC 800DB6FC 0D004010 */  beqz       $v0, .L800DB734
    /* CBF00 800DB700 00000000 */   nop
    /* CBF04 800DB704 C01B5024 */  addiu      $s0, $v0, 0x1BC0
    /* CBF08 800DB708 0A000212 */  beq        $s0, $v0, .L800DB734
    /* CBF0C 800DB70C 00000000 */   nop
    /* CBF10 800DB710 1380113C */  lui        $s1, %hi(D_80129A80)
    /* CBF14 800DB714 809A3126 */  addiu      $s1, $s1, %lo(D_80129A80)
    /* CBF18 800DB718 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB71C:
    /* CBF1C 800DB71C 21200002 */  addu       $a0, $s0, $zero
    /* CBF20 800DB720 12ED030C */  jal        func_800FB448
    /* CBF24 800DB724 02000524 */   addiu     $a1, $zero, 0x2
    /* CBF28 800DB728 FCFF1116 */  bne        $s0, $s1, .L800DB71C
    /* CBF2C 800DB72C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBF30 800DB730 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB734:
    /* CBF34 800DB734 1380043C */  lui        $a0, %hi(D_801299EC)
    /* CBF38 800DB738 EC998424 */  addiu      $a0, $a0, %lo(D_801299EC)
    /* CBF3C 800DB73C 12ED030C */  jal        func_800FB448
    /* CBF40 800DB740 02000524 */   addiu     $a1, $zero, 0x2
    /* CBF44 800DB744 1380043C */  lui        $a0, %hi(D_80129958)
    /* CBF48 800DB748 58998424 */  addiu      $a0, $a0, %lo(D_80129958)
    /* CBF4C 800DB74C 12ED030C */  jal        func_800FB448
    /* CBF50 800DB750 02000524 */   addiu     $a1, $zero, 0x2
    /* CBF54 800DB754 1380023C */  lui        $v0, %hi(D_801292FC)
    /* CBF58 800DB758 FC924224 */  addiu      $v0, $v0, %lo(D_801292FC)
    /* CBF5C 800DB75C 0D004010 */  beqz       $v0, .L800DB794
    /* CBF60 800DB760 00000000 */   nop
    /* CBF64 800DB764 5C065024 */  addiu      $s0, $v0, 0x65C
    /* CBF68 800DB768 0A000212 */  beq        $s0, $v0, .L800DB794
    /* CBF6C 800DB76C 00000000 */   nop
    /* CBF70 800DB770 1380113C */  lui        $s1, %hi(D_801292FC)
    /* CBF74 800DB774 FC923126 */  addiu      $s1, $s1, %lo(D_801292FC)
    /* CBF78 800DB778 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB77C:
    /* CBF7C 800DB77C 21200002 */  addu       $a0, $s0, $zero
    /* CBF80 800DB780 12ED030C */  jal        func_800FB448
    /* CBF84 800DB784 02000524 */   addiu     $a1, $zero, 0x2
    /* CBF88 800DB788 FCFF1116 */  bne        $s0, $s1, .L800DB77C
    /* CBF8C 800DB78C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CBF90 800DB790 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB794:
    /* CBF94 800DB794 1380043C */  lui        $a0, %hi(D_80129268)
    /* CBF98 800DB798 68928424 */  addiu      $a0, $a0, %lo(D_80129268)
    /* CBF9C 800DB79C 12ED030C */  jal        func_800FB448
    /* CBFA0 800DB7A0 02000524 */   addiu     $a1, $zero, 0x2
    /* CBFA4 800DB7A4 1380043C */  lui        $a0, %hi(D_801291D4)
    /* CBFA8 800DB7A8 D4918424 */  addiu      $a0, $a0, %lo(D_801291D4)
    /* CBFAC 800DB7AC 12ED030C */  jal        func_800FB448
    /* CBFB0 800DB7B0 02000524 */   addiu     $a1, $zero, 0x2
    /* CBFB4 800DB7B4 1380043C */  lui        $a0, %hi(D_80129140)
    /* CBFB8 800DB7B8 40918424 */  addiu      $a0, $a0, %lo(D_80129140)
    /* CBFBC 800DB7BC 12ED030C */  jal        func_800FB448
    /* CBFC0 800DB7C0 02000524 */   addiu     $a1, $zero, 0x2
    /* CBFC4 800DB7C4 1380043C */  lui        $a0, %hi(D_801290AC)
    /* CBFC8 800DB7C8 AC908424 */  addiu      $a0, $a0, %lo(D_801290AC)
    /* CBFCC 800DB7CC 12ED030C */  jal        func_800FB448
    /* CBFD0 800DB7D0 02000524 */   addiu     $a1, $zero, 0x2
    /* CBFD4 800DB7D4 1380043C */  lui        $a0, %hi(D_80129018)
    /* CBFD8 800DB7D8 18908424 */  addiu      $a0, $a0, %lo(D_80129018)
    /* CBFDC 800DB7DC 12ED030C */  jal        func_800FB448
    /* CBFE0 800DB7E0 02000524 */   addiu     $a1, $zero, 0x2
    /* CBFE4 800DB7E4 1380043C */  lui        $a0, %hi(D_80128F84)
    /* CBFE8 800DB7E8 848F8424 */  addiu      $a0, $a0, %lo(D_80128F84)
    /* CBFEC 800DB7EC 12ED030C */  jal        func_800FB448
    /* CBFF0 800DB7F0 02000524 */   addiu     $a1, $zero, 0x2
    /* CBFF4 800DB7F4 1380023C */  lui        $v0, %hi(D_80128E5C)
    /* CBFF8 800DB7F8 5C8E4224 */  addiu      $v0, $v0, %lo(D_80128E5C)
    /* CBFFC 800DB7FC 0D004010 */  beqz       $v0, .L800DB834
    /* CC000 800DB800 00000000 */   nop
    /* CC004 800DB804 28015024 */  addiu      $s0, $v0, 0x128
    /* CC008 800DB808 0A000212 */  beq        $s0, $v0, .L800DB834
    /* CC00C 800DB80C 00000000 */   nop
    /* CC010 800DB810 1380113C */  lui        $s1, %hi(D_80128E5C)
    /* CC014 800DB814 5C8E3126 */  addiu      $s1, $s1, %lo(D_80128E5C)
    /* CC018 800DB818 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB81C:
    /* CC01C 800DB81C 21200002 */  addu       $a0, $s0, $zero
    /* CC020 800DB820 12ED030C */  jal        func_800FB448
    /* CC024 800DB824 02000524 */   addiu     $a1, $zero, 0x2
    /* CC028 800DB828 FCFF1116 */  bne        $s0, $s1, .L800DB81C
    /* CC02C 800DB82C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC030 800DB830 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB834:
    /* CC034 800DB834 1380023C */  lui        $v0, %hi(D_801281A4)
    /* CC038 800DB838 A4814224 */  addiu      $v0, $v0, %lo(D_801281A4)
    /* CC03C 800DB83C 0D004010 */  beqz       $v0, .L800DB874
    /* CC040 800DB840 00000000 */   nop
    /* CC044 800DB844 B80C5024 */  addiu      $s0, $v0, 0xCB8
    /* CC048 800DB848 0A000212 */  beq        $s0, $v0, .L800DB874
    /* CC04C 800DB84C 00000000 */   nop
    /* CC050 800DB850 1380113C */  lui        $s1, %hi(D_801281A4)
    /* CC054 800DB854 A4813126 */  addiu      $s1, $s1, %lo(D_801281A4)
    /* CC058 800DB858 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB85C:
    /* CC05C 800DB85C 21200002 */  addu       $a0, $s0, $zero
    /* CC060 800DB860 12ED030C */  jal        func_800FB448
    /* CC064 800DB864 02000524 */   addiu     $a1, $zero, 0x2
    /* CC068 800DB868 FCFF1116 */  bne        $s0, $s1, .L800DB85C
    /* CC06C 800DB86C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC070 800DB870 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB874:
    /* CC074 800DB874 1380043C */  lui        $a0, %hi(D_80128110)
    /* CC078 800DB878 10818424 */  addiu      $a0, $a0, %lo(D_80128110)
    /* CC07C 800DB87C 12ED030C */  jal        func_800FB448
    /* CC080 800DB880 02000524 */   addiu     $a1, $zero, 0x2
    /* CC084 800DB884 1380043C */  lui        $a0, %hi(D_8012807C)
    /* CC088 800DB888 7C808424 */  addiu      $a0, $a0, %lo(D_8012807C)
    /* CC08C 800DB88C 12ED030C */  jal        func_800FB448
    /* CC090 800DB890 02000524 */   addiu     $a1, $zero, 0x2
    /* CC094 800DB894 1280023C */  lui        $v0, %hi(D_80127EC0)
    /* CC098 800DB898 C07E4224 */  addiu      $v0, $v0, %lo(D_80127EC0)
    /* CC09C 800DB89C 0D004010 */  beqz       $v0, .L800DB8D4
    /* CC0A0 800DB8A0 00000000 */   nop
    /* CC0A4 800DB8A4 BC015024 */  addiu      $s0, $v0, 0x1BC
    /* CC0A8 800DB8A8 0A000212 */  beq        $s0, $v0, .L800DB8D4
    /* CC0AC 800DB8AC 00000000 */   nop
    /* CC0B0 800DB8B0 1280113C */  lui        $s1, %hi(D_80127EC0)
    /* CC0B4 800DB8B4 C07E3126 */  addiu      $s1, $s1, %lo(D_80127EC0)
    /* CC0B8 800DB8B8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB8BC:
    /* CC0BC 800DB8BC 21200002 */  addu       $a0, $s0, $zero
    /* CC0C0 800DB8C0 12ED030C */  jal        func_800FB448
    /* CC0C4 800DB8C4 02000524 */   addiu     $a1, $zero, 0x2
    /* CC0C8 800DB8C8 FCFF1116 */  bne        $s0, $s1, .L800DB8BC
    /* CC0CC 800DB8CC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC0D0 800DB8D0 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB8D4:
    /* CC0D4 800DB8D4 1280023C */  lui        $v0, %hi(D_80127458)
    /* CC0D8 800DB8D8 58744224 */  addiu      $v0, $v0, %lo(D_80127458)
    /* CC0DC 800DB8DC 0D004010 */  beqz       $v0, .L800DB914
    /* CC0E0 800DB8E0 00000000 */   nop
    /* CC0E4 800DB8E4 680A5024 */  addiu      $s0, $v0, 0xA68
    /* CC0E8 800DB8E8 0A000212 */  beq        $s0, $v0, .L800DB914
    /* CC0EC 800DB8EC 00000000 */   nop
    /* CC0F0 800DB8F0 1280113C */  lui        $s1, %hi(D_80127458)
    /* CC0F4 800DB8F4 58743126 */  addiu      $s1, $s1, %lo(D_80127458)
    /* CC0F8 800DB8F8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB8FC:
    /* CC0FC 800DB8FC 21200002 */  addu       $a0, $s0, $zero
    /* CC100 800DB900 12ED030C */  jal        func_800FB448
    /* CC104 800DB904 02000524 */   addiu     $a1, $zero, 0x2
    /* CC108 800DB908 FCFF1116 */  bne        $s0, $s1, .L800DB8FC
    /* CC10C 800DB90C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC110 800DB910 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB914:
    /* CC114 800DB914 1280023C */  lui        $v0, %hi(D_80127208)
    /* CC118 800DB918 08724224 */  addiu      $v0, $v0, %lo(D_80127208)
    /* CC11C 800DB91C 0D004010 */  beqz       $v0, .L800DB954
    /* CC120 800DB920 00000000 */   nop
    /* CC124 800DB924 50025024 */  addiu      $s0, $v0, 0x250
    /* CC128 800DB928 0A000212 */  beq        $s0, $v0, .L800DB954
    /* CC12C 800DB92C 00000000 */   nop
    /* CC130 800DB930 1280113C */  lui        $s1, %hi(D_80127208)
    /* CC134 800DB934 08723126 */  addiu      $s1, $s1, %lo(D_80127208)
    /* CC138 800DB938 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB93C:
    /* CC13C 800DB93C 21200002 */  addu       $a0, $s0, $zero
    /* CC140 800DB940 12ED030C */  jal        func_800FB448
    /* CC144 800DB944 02000524 */   addiu     $a1, $zero, 0x2
    /* CC148 800DB948 FCFF1116 */  bne        $s0, $s1, .L800DB93C
    /* CC14C 800DB94C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC150 800DB950 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB954:
    /* CC154 800DB954 1280023C */  lui        $v0, %hi(D_80125F88)
    /* CC158 800DB958 885F4224 */  addiu      $v0, $v0, %lo(D_80125F88)
    /* CC15C 800DB95C 0D004010 */  beqz       $v0, .L800DB994
    /* CC160 800DB960 00000000 */   nop
    /* CC164 800DB964 80125024 */  addiu      $s0, $v0, 0x1280
    /* CC168 800DB968 0A000212 */  beq        $s0, $v0, .L800DB994
    /* CC16C 800DB96C 00000000 */   nop
    /* CC170 800DB970 1280113C */  lui        $s1, %hi(D_80125F88)
    /* CC174 800DB974 885F3126 */  addiu      $s1, $s1, %lo(D_80125F88)
    /* CC178 800DB978 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB97C:
    /* CC17C 800DB97C 21200002 */  addu       $a0, $s0, $zero
    /* CC180 800DB980 12ED030C */  jal        func_800FB448
    /* CC184 800DB984 02000524 */   addiu     $a1, $zero, 0x2
    /* CC188 800DB988 FCFF1116 */  bne        $s0, $s1, .L800DB97C
    /* CC18C 800DB98C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC190 800DB990 94001026 */  addiu      $s0, $s0, 0x94
  .L800DB994:
    /* CC194 800DB994 1280043C */  lui        $a0, %hi(D_80125EF4)
    /* CC198 800DB998 F45E8424 */  addiu      $a0, $a0, %lo(D_80125EF4)
    /* CC19C 800DB99C 12ED030C */  jal        func_800FB448
    /* CC1A0 800DB9A0 02000524 */   addiu     $a1, $zero, 0x2
    /* CC1A4 800DB9A4 1280043C */  lui        $a0, %hi(D_80125E60)
    /* CC1A8 800DB9A8 605E8424 */  addiu      $a0, $a0, %lo(D_80125E60)
    /* CC1AC 800DB9AC 12ED030C */  jal        func_800FB448
    /* CC1B0 800DB9B0 02000524 */   addiu     $a1, $zero, 0x2
    /* CC1B4 800DB9B4 1280043C */  lui        $a0, %hi(D_80125DCC)
    /* CC1B8 800DB9B8 CC5D8424 */  addiu      $a0, $a0, %lo(D_80125DCC)
    /* CC1BC 800DB9BC 12ED030C */  jal        func_800FB448
    /* CC1C0 800DB9C0 02000524 */   addiu     $a1, $zero, 0x2
    /* CC1C4 800DB9C4 1280023C */  lui        $v0, %hi(D_80125CA4)
    /* CC1C8 800DB9C8 A45C4224 */  addiu      $v0, $v0, %lo(D_80125CA4)
    /* CC1CC 800DB9CC 0D004010 */  beqz       $v0, .L800DBA04
    /* CC1D0 800DB9D0 00000000 */   nop
    /* CC1D4 800DB9D4 28015024 */  addiu      $s0, $v0, 0x128
    /* CC1D8 800DB9D8 0A000212 */  beq        $s0, $v0, .L800DBA04
    /* CC1DC 800DB9DC 00000000 */   nop
    /* CC1E0 800DB9E0 1280113C */  lui        $s1, %hi(D_80125CA4)
    /* CC1E4 800DB9E4 A45C3126 */  addiu      $s1, $s1, %lo(D_80125CA4)
    /* CC1E8 800DB9E8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DB9EC:
    /* CC1EC 800DB9EC 21200002 */  addu       $a0, $s0, $zero
    /* CC1F0 800DB9F0 12ED030C */  jal        func_800FB448
    /* CC1F4 800DB9F4 02000524 */   addiu     $a1, $zero, 0x2
    /* CC1F8 800DB9F8 FCFF1116 */  bne        $s0, $s1, .L800DB9EC
    /* CC1FC 800DB9FC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC200 800DBA00 94001026 */  addiu      $s0, $s0, 0x94
  .L800DBA04:
    /* CC204 800DBA04 1280043C */  lui        $a0, %hi(D_80125C10)
    /* CC208 800DBA08 105C8424 */  addiu      $a0, $a0, %lo(D_80125C10)
    /* CC20C 800DBA0C 12ED030C */  jal        func_800FB448
    /* CC210 800DBA10 02000524 */   addiu     $a1, $zero, 0x2
    /* CC214 800DBA14 1280023C */  lui        $v0, %hi(D_801252D0)
    /* CC218 800DBA18 D0524224 */  addiu      $v0, $v0, %lo(D_801252D0)
    /* CC21C 800DBA1C 0D004010 */  beqz       $v0, .L800DBA54
    /* CC220 800DBA20 00000000 */   nop
    /* CC224 800DBA24 40095024 */  addiu      $s0, $v0, 0x940
    /* CC228 800DBA28 0A000212 */  beq        $s0, $v0, .L800DBA54
    /* CC22C 800DBA2C 00000000 */   nop
    /* CC230 800DBA30 1280113C */  lui        $s1, %hi(D_801252D0)
    /* CC234 800DBA34 D0523126 */  addiu      $s1, $s1, %lo(D_801252D0)
    /* CC238 800DBA38 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DBA3C:
    /* CC23C 800DBA3C 21200002 */  addu       $a0, $s0, $zero
    /* CC240 800DBA40 12ED030C */  jal        func_800FB448
    /* CC244 800DBA44 02000524 */   addiu     $a1, $zero, 0x2
    /* CC248 800DBA48 FCFF1116 */  bne        $s0, $s1, .L800DBA3C
    /* CC24C 800DBA4C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC250 800DBA50 94001026 */  addiu      $s0, $s0, 0x94
  .L800DBA54:
    /* CC254 800DBA54 1280023C */  lui        $v0, %hi(D_80124990)
    /* CC258 800DBA58 90494224 */  addiu      $v0, $v0, %lo(D_80124990)
    /* CC25C 800DBA5C 0D004010 */  beqz       $v0, .L800DBA94
    /* CC260 800DBA60 00000000 */   nop
    /* CC264 800DBA64 40095024 */  addiu      $s0, $v0, 0x940
    /* CC268 800DBA68 0A000212 */  beq        $s0, $v0, .L800DBA94
    /* CC26C 800DBA6C 00000000 */   nop
    /* CC270 800DBA70 1280113C */  lui        $s1, %hi(D_80124990)
    /* CC274 800DBA74 90493126 */  addiu      $s1, $s1, %lo(D_80124990)
    /* CC278 800DBA78 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DBA7C:
    /* CC27C 800DBA7C 21200002 */  addu       $a0, $s0, $zero
    /* CC280 800DBA80 12ED030C */  jal        func_800FB448
    /* CC284 800DBA84 02000524 */   addiu     $a1, $zero, 0x2
    /* CC288 800DBA88 FCFF1116 */  bne        $s0, $s1, .L800DBA7C
    /* CC28C 800DBA8C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC290 800DBA90 94001026 */  addiu      $s0, $s0, 0x94
  .L800DBA94:
    /* CC294 800DBA94 1280023C */  lui        $v0, %hi(D_80124050)
    /* CC298 800DBA98 50404224 */  addiu      $v0, $v0, %lo(D_80124050)
    /* CC29C 800DBA9C 0D004010 */  beqz       $v0, .L800DBAD4
    /* CC2A0 800DBAA0 00000000 */   nop
    /* CC2A4 800DBAA4 40095024 */  addiu      $s0, $v0, 0x940
    /* CC2A8 800DBAA8 0A000212 */  beq        $s0, $v0, .L800DBAD4
    /* CC2AC 800DBAAC 00000000 */   nop
    /* CC2B0 800DBAB0 1280113C */  lui        $s1, %hi(D_80124050)
    /* CC2B4 800DBAB4 50403126 */  addiu      $s1, $s1, %lo(D_80124050)
    /* CC2B8 800DBAB8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DBABC:
    /* CC2BC 800DBABC 21200002 */  addu       $a0, $s0, $zero
    /* CC2C0 800DBAC0 12ED030C */  jal        func_800FB448
    /* CC2C4 800DBAC4 02000524 */   addiu     $a1, $zero, 0x2
    /* CC2C8 800DBAC8 FCFF1116 */  bne        $s0, $s1, .L800DBABC
    /* CC2CC 800DBACC 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC2D0 800DBAD0 94001026 */  addiu      $s0, $s0, 0x94
  .L800DBAD4:
    /* CC2D4 800DBAD4 1280023C */  lui        $v0, %hi(D_80123710)
    /* CC2D8 800DBAD8 10374224 */  addiu      $v0, $v0, %lo(D_80123710)
    /* CC2DC 800DBADC 0D004010 */  beqz       $v0, .L800DBB14
    /* CC2E0 800DBAE0 00000000 */   nop
    /* CC2E4 800DBAE4 40095024 */  addiu      $s0, $v0, 0x940
    /* CC2E8 800DBAE8 0A000212 */  beq        $s0, $v0, .L800DBB14
    /* CC2EC 800DBAEC 00000000 */   nop
    /* CC2F0 800DBAF0 1280113C */  lui        $s1, %hi(D_80123710)
    /* CC2F4 800DBAF4 10373126 */  addiu      $s1, $s1, %lo(D_80123710)
    /* CC2F8 800DBAF8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DBAFC:
    /* CC2FC 800DBAFC 21200002 */  addu       $a0, $s0, $zero
    /* CC300 800DBB00 12ED030C */  jal        func_800FB448
    /* CC304 800DBB04 02000524 */   addiu     $a1, $zero, 0x2
    /* CC308 800DBB08 FCFF1116 */  bne        $s0, $s1, .L800DBAFC
    /* CC30C 800DBB0C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC310 800DBB10 94001026 */  addiu      $s0, $s0, 0x94
  .L800DBB14:
    /* CC314 800DBB14 1280023C */  lui        $v0, %hi(D_8012367C)
    /* CC318 800DBB18 7C364224 */  addiu      $v0, $v0, %lo(D_8012367C)
    /* CC31C 800DBB1C 0D004010 */  beqz       $v0, .L800DBB54
    /* CC320 800DBB20 00000000 */   nop
    /* CC324 800DBB24 94005024 */  addiu      $s0, $v0, 0x94
    /* CC328 800DBB28 0A000212 */  beq        $s0, $v0, .L800DBB54
    /* CC32C 800DBB2C 00000000 */   nop
    /* CC330 800DBB30 1280113C */  lui        $s1, %hi(D_8012367C)
    /* CC334 800DBB34 7C363126 */  addiu      $s1, $s1, %lo(D_8012367C)
    /* CC338 800DBB38 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800DBB3C:
    /* CC33C 800DBB3C 21200002 */  addu       $a0, $s0, $zero
    /* CC340 800DBB40 12ED030C */  jal        func_800FB448
    /* CC344 800DBB44 02000524 */   addiu     $a1, $zero, 0x2
    /* CC348 800DBB48 FCFF1116 */  bne        $s0, $s1, .L800DBB3C
    /* CC34C 800DBB4C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC350 800DBB50 94001026 */  addiu      $s0, $s0, 0x94
  .L800DBB54:
    /* CC354 800DBB54 1280023C */  lui        $v0, %hi(D_80123020)
    /* CC358 800DBB58 20304224 */  addiu      $v0, $v0, %lo(D_80123020)
    /* CC35C 800DBB5C 0A004010 */  beqz       $v0, .L800DBB88
    /* CC360 800DBB60 5C065024 */   addiu     $s0, $v0, 0x65C
    /* CC364 800DBB64 08000212 */  beq        $s0, $v0, .L800DBB88
    /* CC368 800DBB68 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* CC36C 800DBB6C 1280113C */  lui        $s1, %hi(D_80123020)
    /* CC370 800DBB70 20303126 */  addiu      $s1, $s1, %lo(D_80123020)
  .L800DBB74:
    /* CC374 800DBB74 21200002 */  addu       $a0, $s0, $zero
    /* CC378 800DBB78 12ED030C */  jal        func_800FB448
    /* CC37C 800DBB7C 02000524 */   addiu     $a1, $zero, 0x2
    /* CC380 800DBB80 FCFF1116 */  bne        $s0, $s1, .L800DBB74
    /* CC384 800DBB84 6CFF1026 */   addiu     $s0, $s0, -0x94
  .L800DBB88:
    /* CC388 800DBB88 1800BF8F */  lw         $ra, 0x18($sp)
    /* CC38C 800DBB8C 1400B18F */  lw         $s1, 0x14($sp)
    /* CC390 800DBB90 1000B08F */  lw         $s0, 0x10($sp)
    /* CC394 800DBB94 2000BD27 */  addiu      $sp, $sp, 0x20
    /* CC398 800DBB98 0800E003 */  jr         $ra
    /* CC39C 800DBB9C 00000000 */   nop
endlabel func_800DB004
