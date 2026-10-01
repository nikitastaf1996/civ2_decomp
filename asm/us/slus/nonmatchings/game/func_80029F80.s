.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80029F80, 0x8FC

glabel func_80029F80
    /* 1A780 80029F80 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1A784 80029F84 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1A788 80029F88 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1A78C 80029F8C 1380023C */  lui        $v0, %hi(D_8012C696)
    /* 1A790 80029F90 96C64294 */  lhu        $v0, %lo(D_8012C696)($v0)
    /* 1A794 80029F94 00000000 */  nop
    /* 1A798 80029F98 08004224 */  addiu      $v0, $v0, 0x8
    /* 1A79C 80029F9C 1380013C */  lui        $at, %hi(D_8012C696)
    /* 1A7A0 80029FA0 96C622A4 */  sh         $v0, %lo(D_8012C696)($at)
    /* 1A7A4 80029FA4 08000324 */  addiu      $v1, $zero, 0x8
    /* 1A7A8 80029FA8 1380013C */  lui        $at, %hi(D_8012C6AA)
    /* 1A7AC 80029FAC AAC623A4 */  sh         $v1, %lo(D_8012C6AA)($at)
    /* 1A7B0 80029FB0 1380023C */  lui        $v0, %hi(D_8012C792)
    /* 1A7B4 80029FB4 92C74294 */  lhu        $v0, %lo(D_8012C792)($v0)
    /* 1A7B8 80029FB8 00000000 */  nop
    /* 1A7BC 80029FBC 08004224 */  addiu      $v0, $v0, 0x8
    /* 1A7C0 80029FC0 1380013C */  lui        $at, %hi(D_8012C792)
    /* 1A7C4 80029FC4 92C722A4 */  sh         $v0, %lo(D_8012C792)($at)
    /* 1A7C8 80029FC8 1380013C */  lui        $at, %hi(D_8012C7A6)
    /* 1A7CC 80029FCC A6C723A4 */  sh         $v1, %lo(D_8012C7A6)($at)
    /* 1A7D0 80029FD0 1380023C */  lui        $v0, %hi(D_8012C7B6)
    /* 1A7D4 80029FD4 B6C74294 */  lhu        $v0, %lo(D_8012C7B6)($v0)
    /* 1A7D8 80029FD8 00000000 */  nop
    /* 1A7DC 80029FDC 08004224 */  addiu      $v0, $v0, 0x8
    /* 1A7E0 80029FE0 1380013C */  lui        $at, %hi(D_8012C7B6)
    /* 1A7E4 80029FE4 B6C722A4 */  sh         $v0, %lo(D_8012C7B6)($at)
    /* 1A7E8 80029FE8 1380013C */  lui        $at, %hi(D_8012C7CA)
    /* 1A7EC 80029FEC CAC723A4 */  sh         $v1, %lo(D_8012C7CA)($at)
    /* 1A7F0 80029FF0 21800000 */  addu       $s0, $zero, $zero
  .L80029FF4:
    /* 1A7F4 80029FF4 1380023C */  lui        $v0, %hi(D_8012C6AE)
    /* 1A7F8 80029FF8 AEC64294 */  lhu        $v0, %lo(D_8012C6AE)($v0)
    /* 1A7FC 80029FFC 00000000 */  nop
    /* 1A800 8002A000 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1A804 8002A004 1380013C */  lui        $at, %hi(D_8012C6AE)
    /* 1A808 8002A008 AEC622A4 */  sh         $v0, %lo(D_8012C6AE)($at)
    /* 1A80C 8002A00C 1380023C */  lui        $v0, %hi(D_8012C7AA)
    /* 1A810 8002A010 AAC74294 */  lhu        $v0, %lo(D_8012C7AA)($v0)
    /* 1A814 8002A014 00000000 */  nop
    /* 1A818 8002A018 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1A81C 8002A01C 1380013C */  lui        $at, %hi(D_8012C7AA)
    /* 1A820 8002A020 AAC722A4 */  sh         $v0, %lo(D_8012C7AA)($at)
    /* 1A824 8002A024 1380023C */  lui        $v0, %hi(D_8012C7CE)
    /* 1A828 8002A028 CEC74294 */  lhu        $v0, %lo(D_8012C7CE)($v0)
    /* 1A82C 8002A02C 00000000 */  nop
    /* 1A830 8002A030 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1A834 8002A034 1380013C */  lui        $at, %hi(D_8012C7CE)
    /* 1A838 8002A038 CEC722A4 */  sh         $v0, %lo(D_8012C7CE)($at)
    /* 1A83C 8002A03C E976000C */  jal        func_8001DBA4
    /* 1A840 8002A040 01000424 */   addiu     $a0, $zero, 0x1
    /* 1A844 8002A044 01000226 */  addiu      $v0, $s0, 0x1
    /* 1A848 8002A048 21804000 */  addu       $s0, $v0, $zero
    /* 1A84C 8002A04C 00140200 */  sll        $v0, $v0, 16
    /* 1A850 8002A050 03140200 */  sra        $v0, $v0, 16
    /* 1A854 8002A054 10004228 */  slti       $v0, $v0, 0x10
    /* 1A858 8002A058 E6FF4014 */  bnez       $v0, .L80029FF4
    /* 1A85C 8002A05C 0080033C */   lui       $v1, (0x80000000 >> 16)
    /* 1A860 8002A060 1380023C */  lui        $v0, %hi(D_8012C690)
    /* 1A864 8002A064 90C6428C */  lw         $v0, %lo(D_8012C690)($v0)
    /* 1A868 8002A068 00000000 */  nop
    /* 1A86C 8002A06C 25104300 */  or         $v0, $v0, $v1
    /* 1A870 8002A070 1380013C */  lui        $at, %hi(D_8012C690)
    /* 1A874 8002A074 90C622AC */  sw         $v0, %lo(D_8012C690)($at)
    /* 1A878 8002A078 1380023C */  lui        $v0, %hi(D_8012C78C)
    /* 1A87C 8002A07C 8CC7428C */  lw         $v0, %lo(D_8012C78C)($v0)
    /* 1A880 8002A080 00000000 */  nop
    /* 1A884 8002A084 25104300 */  or         $v0, $v0, $v1
    /* 1A888 8002A088 1380013C */  lui        $at, %hi(D_8012C78C)
    /* 1A88C 8002A08C 8CC722AC */  sw         $v0, %lo(D_8012C78C)($at)
    /* 1A890 8002A090 1380023C */  lui        $v0, %hi(D_8012C7B0)
    /* 1A894 8002A094 B0C7428C */  lw         $v0, %lo(D_8012C7B0)($v0)
    /* 1A898 8002A098 00000000 */  nop
    /* 1A89C 8002A09C 25104300 */  or         $v0, $v0, $v1
    /* 1A8A0 8002A0A0 1380013C */  lui        $at, %hi(D_8012C7B0)
    /* 1A8A4 8002A0A4 B0C722AC */  sw         $v0, %lo(D_8012C7B0)($at)
    /* 1A8A8 8002A0A8 1380023C */  lui        $v0, %hi(D_8012C6BA)
    /* 1A8AC 8002A0AC BAC64294 */  lhu        $v0, %lo(D_8012C6BA)($v0)
    /* 1A8B0 8002A0B0 00000000 */  nop
    /* 1A8B4 8002A0B4 08004224 */  addiu      $v0, $v0, 0x8
    /* 1A8B8 8002A0B8 1380013C */  lui        $at, %hi(D_8012C6BA)
    /* 1A8BC 8002A0BC BAC622A4 */  sh         $v0, %lo(D_8012C6BA)($at)
    /* 1A8C0 8002A0C0 08000324 */  addiu      $v1, $zero, 0x8
    /* 1A8C4 8002A0C4 1380013C */  lui        $at, %hi(D_8012C6CE)
    /* 1A8C8 8002A0C8 CEC623A4 */  sh         $v1, %lo(D_8012C6CE)($at)
    /* 1A8CC 8002A0CC 1380023C */  lui        $v0, %hi(D_8012C7DA)
    /* 1A8D0 8002A0D0 DAC74294 */  lhu        $v0, %lo(D_8012C7DA)($v0)
    /* 1A8D4 8002A0D4 00000000 */  nop
    /* 1A8D8 8002A0D8 08004224 */  addiu      $v0, $v0, 0x8
    /* 1A8DC 8002A0DC 1380013C */  lui        $at, %hi(D_8012C7DA)
    /* 1A8E0 8002A0E0 DAC722A4 */  sh         $v0, %lo(D_8012C7DA)($at)
    /* 1A8E4 8002A0E4 1380013C */  lui        $at, %hi(D_8012C7EE)
    /* 1A8E8 8002A0E8 EEC723A4 */  sh         $v1, %lo(D_8012C7EE)($at)
    /* 1A8EC 8002A0EC 1380023C */  lui        $v0, %hi(D_8012C7FE)
    /* 1A8F0 8002A0F0 FEC74294 */  lhu        $v0, %lo(D_8012C7FE)($v0)
    /* 1A8F4 8002A0F4 00000000 */  nop
    /* 1A8F8 8002A0F8 08004224 */  addiu      $v0, $v0, 0x8
    /* 1A8FC 8002A0FC 1380013C */  lui        $at, %hi(D_8012C7FE)
    /* 1A900 8002A100 FEC722A4 */  sh         $v0, %lo(D_8012C7FE)($at)
    /* 1A904 8002A104 1380013C */  lui        $at, %hi(D_8012C812)
    /* 1A908 8002A108 12C823A4 */  sh         $v1, %lo(D_8012C812)($at)
    /* 1A90C 8002A10C 21800000 */  addu       $s0, $zero, $zero
  .L8002A110:
    /* 1A910 8002A110 1380023C */  lui        $v0, %hi(D_8012C6D0 + 0x2)
    /* 1A914 8002A114 D2C64294 */  lhu        $v0, %lo(D_8012C6D0 + 0x2)($v0)
    /* 1A918 8002A118 00000000 */  nop
    /* 1A91C 8002A11C 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1A920 8002A120 1380013C */  lui        $at, %hi(D_8012C6D0 + 0x2)
    /* 1A924 8002A124 D2C622A4 */  sh         $v0, %lo(D_8012C6D0 + 0x2)($at)
    /* 1A928 8002A128 1380023C */  lui        $v0, %hi(D_8012C7F2)
    /* 1A92C 8002A12C F2C74294 */  lhu        $v0, %lo(D_8012C7F2)($v0)
    /* 1A930 8002A130 00000000 */  nop
    /* 1A934 8002A134 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1A938 8002A138 1380013C */  lui        $at, %hi(D_8012C7F2)
    /* 1A93C 8002A13C F2C722A4 */  sh         $v0, %lo(D_8012C7F2)($at)
    /* 1A940 8002A140 1380023C */  lui        $v0, %hi(D_8012C816)
    /* 1A944 8002A144 16C84294 */  lhu        $v0, %lo(D_8012C816)($v0)
    /* 1A948 8002A148 00000000 */  nop
    /* 1A94C 8002A14C 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1A950 8002A150 1380013C */  lui        $at, %hi(D_8012C816)
    /* 1A954 8002A154 16C822A4 */  sh         $v0, %lo(D_8012C816)($at)
    /* 1A958 8002A158 E976000C */  jal        func_8001DBA4
    /* 1A95C 8002A15C 01000424 */   addiu     $a0, $zero, 0x1
    /* 1A960 8002A160 01000226 */  addiu      $v0, $s0, 0x1
    /* 1A964 8002A164 21804000 */  addu       $s0, $v0, $zero
    /* 1A968 8002A168 00140200 */  sll        $v0, $v0, 16
    /* 1A96C 8002A16C 03140200 */  sra        $v0, $v0, 16
    /* 1A970 8002A170 10004228 */  slti       $v0, $v0, 0x10
    /* 1A974 8002A174 E6FF4014 */  bnez       $v0, .L8002A110
    /* 1A978 8002A178 0080033C */   lui       $v1, (0x80000000 >> 16)
    /* 1A97C 8002A17C 1380023C */  lui        $v0, %hi(D_8012C6B4)
    /* 1A980 8002A180 B4C6428C */  lw         $v0, %lo(D_8012C6B4)($v0)
    /* 1A984 8002A184 00000000 */  nop
    /* 1A988 8002A188 25104300 */  or         $v0, $v0, $v1
    /* 1A98C 8002A18C 1380013C */  lui        $at, %hi(D_8012C6B4)
    /* 1A990 8002A190 B4C622AC */  sw         $v0, %lo(D_8012C6B4)($at)
    /* 1A994 8002A194 1380023C */  lui        $v0, %hi(D_8012C7D4)
    /* 1A998 8002A198 D4C7428C */  lw         $v0, %lo(D_8012C7D4)($v0)
    /* 1A99C 8002A19C 00000000 */  nop
    /* 1A9A0 8002A1A0 25104300 */  or         $v0, $v0, $v1
    /* 1A9A4 8002A1A4 1380013C */  lui        $at, %hi(D_8012C7D4)
    /* 1A9A8 8002A1A8 D4C722AC */  sw         $v0, %lo(D_8012C7D4)($at)
    /* 1A9AC 8002A1AC 1380023C */  lui        $v0, %hi(D_8012C7F8)
    /* 1A9B0 8002A1B0 F8C7428C */  lw         $v0, %lo(D_8012C7F8)($v0)
    /* 1A9B4 8002A1B4 00000000 */  nop
    /* 1A9B8 8002A1B8 25104300 */  or         $v0, $v0, $v1
    /* 1A9BC 8002A1BC 1380013C */  lui        $at, %hi(D_8012C7F8)
    /* 1A9C0 8002A1C0 F8C722AC */  sw         $v0, %lo(D_8012C7F8)($at)
    /* 1A9C4 8002A1C4 1380023C */  lui        $v0, %hi(D_8012C6DE)
    /* 1A9C8 8002A1C8 DEC64294 */  lhu        $v0, %lo(D_8012C6DE)($v0)
    /* 1A9CC 8002A1CC 00000000 */  nop
    /* 1A9D0 8002A1D0 10004224 */  addiu      $v0, $v0, 0x10
    /* 1A9D4 8002A1D4 1380013C */  lui        $at, %hi(D_8012C6DE)
    /* 1A9D8 8002A1D8 DEC622A4 */  sh         $v0, %lo(D_8012C6DE)($at)
    /* 1A9DC 8002A1DC 10000224 */  addiu      $v0, $zero, 0x10
    /* 1A9E0 8002A1E0 1380013C */  lui        $at, %hi(D_8012C6F2)
    /* 1A9E4 8002A1E4 F2C622A4 */  sh         $v0, %lo(D_8012C6F2)($at)
    /* 1A9E8 8002A1E8 1380023C */  lui        $v0, %hi(D_8012C822)
    /* 1A9EC 8002A1EC 22C84294 */  lhu        $v0, %lo(D_8012C822)($v0)
    /* 1A9F0 8002A1F0 00000000 */  nop
    /* 1A9F4 8002A1F4 08004224 */  addiu      $v0, $v0, 0x8
    /* 1A9F8 8002A1F8 1380013C */  lui        $at, %hi(D_8012C822)
    /* 1A9FC 8002A1FC 22C822A4 */  sh         $v0, %lo(D_8012C822)($at)
    /* 1AA00 8002A200 08000324 */  addiu      $v1, $zero, 0x8
    /* 1AA04 8002A204 1380013C */  lui        $at, %hi(D_8012C836)
    /* 1AA08 8002A208 36C823A4 */  sh         $v1, %lo(D_8012C836)($at)
    /* 1AA0C 8002A20C 1380023C */  lui        $v0, %hi(D_8012C846)
    /* 1AA10 8002A210 46C84294 */  lhu        $v0, %lo(D_8012C846)($v0)
    /* 1AA14 8002A214 00000000 */  nop
    /* 1AA18 8002A218 08004224 */  addiu      $v0, $v0, 0x8
    /* 1AA1C 8002A21C 1380013C */  lui        $at, %hi(D_8012C846)
    /* 1AA20 8002A220 46C822A4 */  sh         $v0, %lo(D_8012C846)($at)
    /* 1AA24 8002A224 1380013C */  lui        $at, %hi(D_8012C85A)
    /* 1AA28 8002A228 5AC823A4 */  sh         $v1, %lo(D_8012C85A)($at)
    /* 1AA2C 8002A22C 21800000 */  addu       $s0, $zero, $zero
  .L8002A230:
    /* 1AA30 8002A230 1380023C */  lui        $v0, %hi(D_8012C6F4 + 0x2)
    /* 1AA34 8002A234 F6C64294 */  lhu        $v0, %lo(D_8012C6F4 + 0x2)($v0)
    /* 1AA38 8002A238 00000000 */  nop
    /* 1AA3C 8002A23C 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AA40 8002A240 1380013C */  lui        $at, %hi(D_8012C6F4 + 0x2)
    /* 1AA44 8002A244 F6C622A4 */  sh         $v0, %lo(D_8012C6F4 + 0x2)($at)
    /* 1AA48 8002A248 1380023C */  lui        $v0, %hi(D_8012C83A)
    /* 1AA4C 8002A24C 3AC84294 */  lhu        $v0, %lo(D_8012C83A)($v0)
    /* 1AA50 8002A250 00000000 */  nop
    /* 1AA54 8002A254 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AA58 8002A258 1380013C */  lui        $at, %hi(D_8012C83A)
    /* 1AA5C 8002A25C 3AC822A4 */  sh         $v0, %lo(D_8012C83A)($at)
    /* 1AA60 8002A260 1380023C */  lui        $v0, %hi(D_8012C85E)
    /* 1AA64 8002A264 5EC84294 */  lhu        $v0, %lo(D_8012C85E)($v0)
    /* 1AA68 8002A268 00000000 */  nop
    /* 1AA6C 8002A26C 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AA70 8002A270 1380013C */  lui        $at, %hi(D_8012C85E)
    /* 1AA74 8002A274 5EC822A4 */  sh         $v0, %lo(D_8012C85E)($at)
    /* 1AA78 8002A278 E976000C */  jal        func_8001DBA4
    /* 1AA7C 8002A27C 01000424 */   addiu     $a0, $zero, 0x1
    /* 1AA80 8002A280 01000226 */  addiu      $v0, $s0, 0x1
    /* 1AA84 8002A284 21804000 */  addu       $s0, $v0, $zero
    /* 1AA88 8002A288 00140200 */  sll        $v0, $v0, 16
    /* 1AA8C 8002A28C 03140200 */  sra        $v0, $v0, 16
    /* 1AA90 8002A290 10004228 */  slti       $v0, $v0, 0x10
    /* 1AA94 8002A294 E6FF4014 */  bnez       $v0, .L8002A230
    /* 1AA98 8002A298 0080033C */   lui       $v1, (0x80000000 >> 16)
    /* 1AA9C 8002A29C 1380023C */  lui        $v0, %hi(D_8012C6D8)
    /* 1AAA0 8002A2A0 D8C6428C */  lw         $v0, %lo(D_8012C6D8)($v0)
    /* 1AAA4 8002A2A4 00000000 */  nop
    /* 1AAA8 8002A2A8 25104300 */  or         $v0, $v0, $v1
    /* 1AAAC 8002A2AC 1380013C */  lui        $at, %hi(D_8012C6D8)
    /* 1AAB0 8002A2B0 D8C622AC */  sw         $v0, %lo(D_8012C6D8)($at)
    /* 1AAB4 8002A2B4 1380023C */  lui        $v0, %hi(D_8012C81C)
    /* 1AAB8 8002A2B8 1CC8428C */  lw         $v0, %lo(D_8012C81C)($v0)
    /* 1AABC 8002A2BC 00000000 */  nop
    /* 1AAC0 8002A2C0 25104300 */  or         $v0, $v0, $v1
    /* 1AAC4 8002A2C4 1380013C */  lui        $at, %hi(D_8012C81C)
    /* 1AAC8 8002A2C8 1CC822AC */  sw         $v0, %lo(D_8012C81C)($at)
    /* 1AACC 8002A2CC 1380023C */  lui        $v0, %hi(D_8012C840)
    /* 1AAD0 8002A2D0 40C8428C */  lw         $v0, %lo(D_8012C840)($v0)
    /* 1AAD4 8002A2D4 00000000 */  nop
    /* 1AAD8 8002A2D8 25104300 */  or         $v0, $v0, $v1
    /* 1AADC 8002A2DC 1380013C */  lui        $at, %hi(D_8012C840)
    /* 1AAE0 8002A2E0 40C822AC */  sw         $v0, %lo(D_8012C840)($at)
    /* 1AAE4 8002A2E4 67000224 */  addiu      $v0, $zero, 0x67
    /* 1AAE8 8002A2E8 1380013C */  lui        $at, %hi(D_8012C702)
    /* 1AAEC 8002A2EC 02C722A4 */  sh         $v0, %lo(D_8012C702)($at)
    /* 1AAF0 8002A2F0 0C000224 */  addiu      $v0, $zero, 0xC
    /* 1AAF4 8002A2F4 1380013C */  lui        $at, %hi(D_8012C716)
    /* 1AAF8 8002A2F8 16C722A4 */  sh         $v0, %lo(D_8012C716)($at)
    /* 1AAFC 8002A2FC 1380023C */  lui        $v0, %hi(D_8012C86A)
    /* 1AB00 8002A300 6AC84294 */  lhu        $v0, %lo(D_8012C86A)($v0)
    /* 1AB04 8002A304 00000000 */  nop
    /* 1AB08 8002A308 08004224 */  addiu      $v0, $v0, 0x8
    /* 1AB0C 8002A30C 1380013C */  lui        $at, %hi(D_8012C86A)
    /* 1AB10 8002A310 6AC822A4 */  sh         $v0, %lo(D_8012C86A)($at)
    /* 1AB14 8002A314 08000324 */  addiu      $v1, $zero, 0x8
    /* 1AB18 8002A318 1380013C */  lui        $at, %hi(D_8012C87E)
    /* 1AB1C 8002A31C 7EC823A4 */  sh         $v1, %lo(D_8012C87E)($at)
    /* 1AB20 8002A320 1380023C */  lui        $v0, %hi(D_8012C88E)
    /* 1AB24 8002A324 8EC84294 */  lhu        $v0, %lo(D_8012C88E)($v0)
    /* 1AB28 8002A328 00000000 */  nop
    /* 1AB2C 8002A32C 08004224 */  addiu      $v0, $v0, 0x8
    /* 1AB30 8002A330 1380013C */  lui        $at, %hi(D_8012C88E)
    /* 1AB34 8002A334 8EC822A4 */  sh         $v0, %lo(D_8012C88E)($at)
    /* 1AB38 8002A338 1380013C */  lui        $at, %hi(D_8012C8A2)
    /* 1AB3C 8002A33C A2C823A4 */  sh         $v1, %lo(D_8012C8A2)($at)
    /* 1AB40 8002A340 21800000 */  addu       $s0, $zero, $zero
  .L8002A344:
    /* 1AB44 8002A344 1380023C */  lui        $v0, %hi(D_8012C71A)
    /* 1AB48 8002A348 1AC74294 */  lhu        $v0, %lo(D_8012C71A)($v0)
    /* 1AB4C 8002A34C 00000000 */  nop
    /* 1AB50 8002A350 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AB54 8002A354 1380013C */  lui        $at, %hi(D_8012C71A)
    /* 1AB58 8002A358 1AC722A4 */  sh         $v0, %lo(D_8012C71A)($at)
    /* 1AB5C 8002A35C 1380023C */  lui        $v0, %hi(D_8012C882)
    /* 1AB60 8002A360 82C84294 */  lhu        $v0, %lo(D_8012C882)($v0)
    /* 1AB64 8002A364 00000000 */  nop
    /* 1AB68 8002A368 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AB6C 8002A36C 1380013C */  lui        $at, %hi(D_8012C882)
    /* 1AB70 8002A370 82C822A4 */  sh         $v0, %lo(D_8012C882)($at)
    /* 1AB74 8002A374 1380023C */  lui        $v0, %hi(D_8012C8A6)
    /* 1AB78 8002A378 A6C84294 */  lhu        $v0, %lo(D_8012C8A6)($v0)
    /* 1AB7C 8002A37C 00000000 */  nop
    /* 1AB80 8002A380 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AB84 8002A384 1380013C */  lui        $at, %hi(D_8012C8A6)
    /* 1AB88 8002A388 A6C822A4 */  sh         $v0, %lo(D_8012C8A6)($at)
    /* 1AB8C 8002A38C E976000C */  jal        func_8001DBA4
    /* 1AB90 8002A390 01000424 */   addiu     $a0, $zero, 0x1
    /* 1AB94 8002A394 01000226 */  addiu      $v0, $s0, 0x1
    /* 1AB98 8002A398 21804000 */  addu       $s0, $v0, $zero
    /* 1AB9C 8002A39C 00140200 */  sll        $v0, $v0, 16
    /* 1ABA0 8002A3A0 03140200 */  sra        $v0, $v0, 16
    /* 1ABA4 8002A3A4 10004228 */  slti       $v0, $v0, 0x10
    /* 1ABA8 8002A3A8 E6FF4014 */  bnez       $v0, .L8002A344
    /* 1ABAC 8002A3AC 0080033C */   lui       $v1, (0x80000000 >> 16)
    /* 1ABB0 8002A3B0 1380023C */  lui        $v0, %hi(D_8012C6FC)
    /* 1ABB4 8002A3B4 FCC6428C */  lw         $v0, %lo(D_8012C6FC)($v0)
    /* 1ABB8 8002A3B8 00000000 */  nop
    /* 1ABBC 8002A3BC 25104300 */  or         $v0, $v0, $v1
    /* 1ABC0 8002A3C0 1380013C */  lui        $at, %hi(D_8012C6FC)
    /* 1ABC4 8002A3C4 FCC622AC */  sw         $v0, %lo(D_8012C6FC)($at)
    /* 1ABC8 8002A3C8 1380023C */  lui        $v0, %hi(D_8012C864)
    /* 1ABCC 8002A3CC 64C8428C */  lw         $v0, %lo(D_8012C864)($v0)
    /* 1ABD0 8002A3D0 00000000 */  nop
    /* 1ABD4 8002A3D4 25104300 */  or         $v0, $v0, $v1
    /* 1ABD8 8002A3D8 1380013C */  lui        $at, %hi(D_8012C864)
    /* 1ABDC 8002A3DC 64C822AC */  sw         $v0, %lo(D_8012C864)($at)
    /* 1ABE0 8002A3E0 1380023C */  lui        $v0, %hi(D_8012C888)
    /* 1ABE4 8002A3E4 88C8428C */  lw         $v0, %lo(D_8012C888)($v0)
    /* 1ABE8 8002A3E8 00000000 */  nop
    /* 1ABEC 8002A3EC 25104300 */  or         $v0, $v0, $v1
    /* 1ABF0 8002A3F0 1380013C */  lui        $at, %hi(D_8012C888)
    /* 1ABF4 8002A3F4 88C822AC */  sw         $v0, %lo(D_8012C888)($at)
    /* 1ABF8 8002A3F8 7B000224 */  addiu      $v0, $zero, 0x7B
    /* 1ABFC 8002A3FC 1380013C */  lui        $at, %hi(D_8012C726)
    /* 1AC00 8002A400 26C722A4 */  sh         $v0, %lo(D_8012C726)($at)
    /* 1AC04 8002A404 0C000224 */  addiu      $v0, $zero, 0xC
    /* 1AC08 8002A408 1380013C */  lui        $at, %hi(D_8012C73A)
    /* 1AC0C 8002A40C 3AC722A4 */  sh         $v0, %lo(D_8012C73A)($at)
    /* 1AC10 8002A410 1380023C */  lui        $v0, %hi(D_8012C8B2)
    /* 1AC14 8002A414 B2C84294 */  lhu        $v0, %lo(D_8012C8B2)($v0)
    /* 1AC18 8002A418 00000000 */  nop
    /* 1AC1C 8002A41C 08004224 */  addiu      $v0, $v0, 0x8
    /* 1AC20 8002A420 1380013C */  lui        $at, %hi(D_8012C8B2)
    /* 1AC24 8002A424 B2C822A4 */  sh         $v0, %lo(D_8012C8B2)($at)
    /* 1AC28 8002A428 08000324 */  addiu      $v1, $zero, 0x8
    /* 1AC2C 8002A42C 1380013C */  lui        $at, %hi(D_8012C8C6)
    /* 1AC30 8002A430 C6C823A4 */  sh         $v1, %lo(D_8012C8C6)($at)
    /* 1AC34 8002A434 1380023C */  lui        $v0, %hi(D_8012C8D6)
    /* 1AC38 8002A438 D6C84294 */  lhu        $v0, %lo(D_8012C8D6)($v0)
    /* 1AC3C 8002A43C 00000000 */  nop
    /* 1AC40 8002A440 08004224 */  addiu      $v0, $v0, 0x8
    /* 1AC44 8002A444 1380013C */  lui        $at, %hi(D_8012C8D6)
    /* 1AC48 8002A448 D6C822A4 */  sh         $v0, %lo(D_8012C8D6)($at)
    /* 1AC4C 8002A44C 1380013C */  lui        $at, %hi(D_8012C8EA)
    /* 1AC50 8002A450 EAC823A4 */  sh         $v1, %lo(D_8012C8EA)($at)
    /* 1AC54 8002A454 21800000 */  addu       $s0, $zero, $zero
  .L8002A458:
    /* 1AC58 8002A458 1380023C */  lui        $v0, %hi(D_8012C73E)
    /* 1AC5C 8002A45C 3EC74294 */  lhu        $v0, %lo(D_8012C73E)($v0)
    /* 1AC60 8002A460 00000000 */  nop
    /* 1AC64 8002A464 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AC68 8002A468 1380013C */  lui        $at, %hi(D_8012C73E)
    /* 1AC6C 8002A46C 3EC722A4 */  sh         $v0, %lo(D_8012C73E)($at)
    /* 1AC70 8002A470 1380023C */  lui        $v0, %hi(D_8012C8CA)
    /* 1AC74 8002A474 CAC84294 */  lhu        $v0, %lo(D_8012C8CA)($v0)
    /* 1AC78 8002A478 00000000 */  nop
    /* 1AC7C 8002A47C 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AC80 8002A480 1380013C */  lui        $at, %hi(D_8012C8CA)
    /* 1AC84 8002A484 CAC822A4 */  sh         $v0, %lo(D_8012C8CA)($at)
    /* 1AC88 8002A488 1380023C */  lui        $v0, %hi(D_8012C8EE)
    /* 1AC8C 8002A48C EEC84294 */  lhu        $v0, %lo(D_8012C8EE)($v0)
    /* 1AC90 8002A490 00000000 */  nop
    /* 1AC94 8002A494 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AC98 8002A498 1380013C */  lui        $at, %hi(D_8012C8EE)
    /* 1AC9C 8002A49C EEC822A4 */  sh         $v0, %lo(D_8012C8EE)($at)
    /* 1ACA0 8002A4A0 E976000C */  jal        func_8001DBA4
    /* 1ACA4 8002A4A4 01000424 */   addiu     $a0, $zero, 0x1
    /* 1ACA8 8002A4A8 01000226 */  addiu      $v0, $s0, 0x1
    /* 1ACAC 8002A4AC 21804000 */  addu       $s0, $v0, $zero
    /* 1ACB0 8002A4B0 00140200 */  sll        $v0, $v0, 16
    /* 1ACB4 8002A4B4 03140200 */  sra        $v0, $v0, 16
    /* 1ACB8 8002A4B8 10004228 */  slti       $v0, $v0, 0x10
    /* 1ACBC 8002A4BC E6FF4014 */  bnez       $v0, .L8002A458
    /* 1ACC0 8002A4C0 0080033C */   lui       $v1, (0x80000000 >> 16)
    /* 1ACC4 8002A4C4 1380023C */  lui        $v0, %hi(D_8012C720)
    /* 1ACC8 8002A4C8 20C7428C */  lw         $v0, %lo(D_8012C720)($v0)
    /* 1ACCC 8002A4CC 00000000 */  nop
    /* 1ACD0 8002A4D0 25104300 */  or         $v0, $v0, $v1
    /* 1ACD4 8002A4D4 1380013C */  lui        $at, %hi(D_8012C720)
    /* 1ACD8 8002A4D8 20C722AC */  sw         $v0, %lo(D_8012C720)($at)
    /* 1ACDC 8002A4DC 1380023C */  lui        $v0, %hi(D_8012C8AC)
    /* 1ACE0 8002A4E0 ACC8428C */  lw         $v0, %lo(D_8012C8AC)($v0)
    /* 1ACE4 8002A4E4 00000000 */  nop
    /* 1ACE8 8002A4E8 25104300 */  or         $v0, $v0, $v1
    /* 1ACEC 8002A4EC 1380013C */  lui        $at, %hi(D_8012C8AC)
    /* 1ACF0 8002A4F0 ACC822AC */  sw         $v0, %lo(D_8012C8AC)($at)
    /* 1ACF4 8002A4F4 1380023C */  lui        $v0, %hi(D_8012C8D0)
    /* 1ACF8 8002A4F8 D0C8428C */  lw         $v0, %lo(D_8012C8D0)($v0)
    /* 1ACFC 8002A4FC 00000000 */  nop
    /* 1AD00 8002A500 25104300 */  or         $v0, $v0, $v1
    /* 1AD04 8002A504 1380013C */  lui        $at, %hi(D_8012C8D0)
    /* 1AD08 8002A508 D0C822AC */  sw         $v0, %lo(D_8012C8D0)($at)
    /* 1AD0C 8002A50C 8E000224 */  addiu      $v0, $zero, 0x8E
    /* 1AD10 8002A510 1380013C */  lui        $at, %hi(D_8012C74A)
    /* 1AD14 8002A514 4AC722A4 */  sh         $v0, %lo(D_8012C74A)($at)
    /* 1AD18 8002A518 0A000224 */  addiu      $v0, $zero, 0xA
    /* 1AD1C 8002A51C 1380013C */  lui        $at, %hi(D_8012C75E)
    /* 1AD20 8002A520 5EC722A4 */  sh         $v0, %lo(D_8012C75E)($at)
    /* 1AD24 8002A524 1380023C */  lui        $v0, %hi(D_8012C8FA)
    /* 1AD28 8002A528 FAC84294 */  lhu        $v0, %lo(D_8012C8FA)($v0)
    /* 1AD2C 8002A52C 00000000 */  nop
    /* 1AD30 8002A530 08004224 */  addiu      $v0, $v0, 0x8
    /* 1AD34 8002A534 1380013C */  lui        $at, %hi(D_8012C8FA)
    /* 1AD38 8002A538 FAC822A4 */  sh         $v0, %lo(D_8012C8FA)($at)
    /* 1AD3C 8002A53C 08000324 */  addiu      $v1, $zero, 0x8
    /* 1AD40 8002A540 1380013C */  lui        $at, %hi(D_8012C90E)
    /* 1AD44 8002A544 0EC923A4 */  sh         $v1, %lo(D_8012C90E)($at)
    /* 1AD48 8002A548 1380023C */  lui        $v0, %hi(D_8012C91C + 0x2)
    /* 1AD4C 8002A54C 1EC94294 */  lhu        $v0, %lo(D_8012C91C + 0x2)($v0)
    /* 1AD50 8002A550 00000000 */  nop
    /* 1AD54 8002A554 08004224 */  addiu      $v0, $v0, 0x8
    /* 1AD58 8002A558 1380013C */  lui        $at, %hi(D_8012C91C + 0x2)
    /* 1AD5C 8002A55C 1EC922A4 */  sh         $v0, %lo(D_8012C91C + 0x2)($at)
    /* 1AD60 8002A560 1380013C */  lui        $at, %hi(D_8012C932)
    /* 1AD64 8002A564 32C923A4 */  sh         $v1, %lo(D_8012C932)($at)
    /* 1AD68 8002A568 21800000 */  addu       $s0, $zero, $zero
  .L8002A56C:
    /* 1AD6C 8002A56C 1380023C */  lui        $v0, %hi(D_8012C762)
    /* 1AD70 8002A570 62C74294 */  lhu        $v0, %lo(D_8012C762)($v0)
    /* 1AD74 8002A574 00000000 */  nop
    /* 1AD78 8002A578 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AD7C 8002A57C 1380013C */  lui        $at, %hi(D_8012C762)
    /* 1AD80 8002A580 62C722A4 */  sh         $v0, %lo(D_8012C762)($at)
    /* 1AD84 8002A584 1380023C */  lui        $v0, %hi(D_8012C912)
    /* 1AD88 8002A588 12C94294 */  lhu        $v0, %lo(D_8012C912)($v0)
    /* 1AD8C 8002A58C 00000000 */  nop
    /* 1AD90 8002A590 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AD94 8002A594 1380013C */  lui        $at, %hi(D_8012C912)
    /* 1AD98 8002A598 12C922A4 */  sh         $v0, %lo(D_8012C912)($at)
    /* 1AD9C 8002A59C 1380023C */  lui        $v0, %hi(D_8012C936)
    /* 1ADA0 8002A5A0 36C94294 */  lhu        $v0, %lo(D_8012C936)($v0)
    /* 1ADA4 8002A5A4 00000000 */  nop
    /* 1ADA8 8002A5A8 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1ADAC 8002A5AC 1380013C */  lui        $at, %hi(D_8012C936)
    /* 1ADB0 8002A5B0 36C922A4 */  sh         $v0, %lo(D_8012C936)($at)
    /* 1ADB4 8002A5B4 E976000C */  jal        func_8001DBA4
    /* 1ADB8 8002A5B8 01000424 */   addiu     $a0, $zero, 0x1
    /* 1ADBC 8002A5BC 01000226 */  addiu      $v0, $s0, 0x1
    /* 1ADC0 8002A5C0 21804000 */  addu       $s0, $v0, $zero
    /* 1ADC4 8002A5C4 00140200 */  sll        $v0, $v0, 16
    /* 1ADC8 8002A5C8 03140200 */  sra        $v0, $v0, 16
    /* 1ADCC 8002A5CC 10004228 */  slti       $v0, $v0, 0x10
    /* 1ADD0 8002A5D0 E6FF4014 */  bnez       $v0, .L8002A56C
    /* 1ADD4 8002A5D4 0080033C */   lui       $v1, (0x80000000 >> 16)
    /* 1ADD8 8002A5D8 1380023C */  lui        $v0, %hi(D_8012C744)
    /* 1ADDC 8002A5DC 44C7428C */  lw         $v0, %lo(D_8012C744)($v0)
    /* 1ADE0 8002A5E0 00000000 */  nop
    /* 1ADE4 8002A5E4 25104300 */  or         $v0, $v0, $v1
    /* 1ADE8 8002A5E8 1380013C */  lui        $at, %hi(D_8012C744)
    /* 1ADEC 8002A5EC 44C722AC */  sw         $v0, %lo(D_8012C744)($at)
    /* 1ADF0 8002A5F0 1380023C */  lui        $v0, %hi(D_8012C8F4)
    /* 1ADF4 8002A5F4 F4C8428C */  lw         $v0, %lo(D_8012C8F4)($v0)
    /* 1ADF8 8002A5F8 00000000 */  nop
    /* 1ADFC 8002A5FC 25104300 */  or         $v0, $v0, $v1
    /* 1AE00 8002A600 1380013C */  lui        $at, %hi(D_8012C8F4)
    /* 1AE04 8002A604 F4C822AC */  sw         $v0, %lo(D_8012C8F4)($at)
    /* 1AE08 8002A608 1380023C */  lui        $v0, %hi(D_8012C918)
    /* 1AE0C 8002A60C 18C9428C */  lw         $v0, %lo(D_8012C918)($v0)
    /* 1AE10 8002A610 00000000 */  nop
    /* 1AE14 8002A614 25104300 */  or         $v0, $v0, $v1
    /* 1AE18 8002A618 1380013C */  lui        $at, %hi(D_8012C918)
    /* 1AE1C 8002A61C 18C922AC */  sw         $v0, %lo(D_8012C918)($at)
    /* 1AE20 8002A620 1380023C */  lui        $v0, %hi(D_8012C76E)
    /* 1AE24 8002A624 6EC74294 */  lhu        $v0, %lo(D_8012C76E)($v0)
    /* 1AE28 8002A628 00000000 */  nop
    /* 1AE2C 8002A62C 08004224 */  addiu      $v0, $v0, 0x8
    /* 1AE30 8002A630 1380013C */  lui        $at, %hi(D_8012C76E)
    /* 1AE34 8002A634 6EC722A4 */  sh         $v0, %lo(D_8012C76E)($at)
    /* 1AE38 8002A638 08000324 */  addiu      $v1, $zero, 0x8
    /* 1AE3C 8002A63C 1380013C */  lui        $at, %hi(D_8012C782)
    /* 1AE40 8002A640 82C723A4 */  sh         $v1, %lo(D_8012C782)($at)
    /* 1AE44 8002A644 1380023C */  lui        $v0, %hi(D_8012C942)
    /* 1AE48 8002A648 42C94294 */  lhu        $v0, %lo(D_8012C942)($v0)
    /* 1AE4C 8002A64C 00000000 */  nop
    /* 1AE50 8002A650 08004224 */  addiu      $v0, $v0, 0x8
    /* 1AE54 8002A654 1380013C */  lui        $at, %hi(D_8012C942)
    /* 1AE58 8002A658 42C922A4 */  sh         $v0, %lo(D_8012C942)($at)
    /* 1AE5C 8002A65C 1380013C */  lui        $at, %hi(D_8012C956)
    /* 1AE60 8002A660 56C923A4 */  sh         $v1, %lo(D_8012C956)($at)
    /* 1AE64 8002A664 1380023C */  lui        $v0, %hi(D_8012C966)
    /* 1AE68 8002A668 66C94294 */  lhu        $v0, %lo(D_8012C966)($v0)
    /* 1AE6C 8002A66C 00000000 */  nop
    /* 1AE70 8002A670 08004224 */  addiu      $v0, $v0, 0x8
    /* 1AE74 8002A674 1380013C */  lui        $at, %hi(D_8012C966)
    /* 1AE78 8002A678 66C922A4 */  sh         $v0, %lo(D_8012C966)($at)
    /* 1AE7C 8002A67C 1380013C */  lui        $at, %hi(D_8012C97A)
    /* 1AE80 8002A680 7AC923A4 */  sh         $v1, %lo(D_8012C97A)($at)
    /* 1AE84 8002A684 21800000 */  addu       $s0, $zero, $zero
  .L8002A688:
    /* 1AE88 8002A688 1380023C */  lui        $v0, %hi(D_8012C786)
    /* 1AE8C 8002A68C 86C74294 */  lhu        $v0, %lo(D_8012C786)($v0)
    /* 1AE90 8002A690 00000000 */  nop
    /* 1AE94 8002A694 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AE98 8002A698 1380013C */  lui        $at, %hi(D_8012C786)
    /* 1AE9C 8002A69C 86C722A4 */  sh         $v0, %lo(D_8012C786)($at)
    /* 1AEA0 8002A6A0 1380023C */  lui        $v0, %hi(D_8012C95A)
    /* 1AEA4 8002A6A4 5AC94294 */  lhu        $v0, %lo(D_8012C95A)($v0)
    /* 1AEA8 8002A6A8 00000000 */  nop
    /* 1AEAC 8002A6AC 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AEB0 8002A6B0 1380013C */  lui        $at, %hi(D_8012C95A)
    /* 1AEB4 8002A6B4 5AC922A4 */  sh         $v0, %lo(D_8012C95A)($at)
    /* 1AEB8 8002A6B8 1380023C */  lui        $v0, %hi(D_8012C97E)
    /* 1AEBC 8002A6BC 7EC94294 */  lhu        $v0, %lo(D_8012C97E)($v0)
    /* 1AEC0 8002A6C0 00000000 */  nop
    /* 1AEC4 8002A6C4 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AEC8 8002A6C8 1380013C */  lui        $at, %hi(D_8012C97E)
    /* 1AECC 8002A6CC 7EC922A4 */  sh         $v0, %lo(D_8012C97E)($at)
    /* 1AED0 8002A6D0 E976000C */  jal        func_8001DBA4
    /* 1AED4 8002A6D4 01000424 */   addiu     $a0, $zero, 0x1
    /* 1AED8 8002A6D8 01000226 */  addiu      $v0, $s0, 0x1
    /* 1AEDC 8002A6DC 21804000 */  addu       $s0, $v0, $zero
    /* 1AEE0 8002A6E0 00140200 */  sll        $v0, $v0, 16
    /* 1AEE4 8002A6E4 03140200 */  sra        $v0, $v0, 16
    /* 1AEE8 8002A6E8 10004228 */  slti       $v0, $v0, 0x10
    /* 1AEEC 8002A6EC E6FF4014 */  bnez       $v0, .L8002A688
    /* 1AEF0 8002A6F0 0080033C */   lui       $v1, (0x80000000 >> 16)
    /* 1AEF4 8002A6F4 1380023C */  lui        $v0, %hi(D_8012C768)
    /* 1AEF8 8002A6F8 68C7428C */  lw         $v0, %lo(D_8012C768)($v0)
    /* 1AEFC 8002A6FC 00000000 */  nop
    /* 1AF00 8002A700 25104300 */  or         $v0, $v0, $v1
    /* 1AF04 8002A704 1380013C */  lui        $at, %hi(D_8012C768)
    /* 1AF08 8002A708 68C722AC */  sw         $v0, %lo(D_8012C768)($at)
    /* 1AF0C 8002A70C 1380023C */  lui        $v0, %hi(D_8012C93C)
    /* 1AF10 8002A710 3CC9428C */  lw         $v0, %lo(D_8012C93C)($v0)
    /* 1AF14 8002A714 00000000 */  nop
    /* 1AF18 8002A718 25104300 */  or         $v0, $v0, $v1
    /* 1AF1C 8002A71C 1380013C */  lui        $at, %hi(D_8012C93C)
    /* 1AF20 8002A720 3CC922AC */  sw         $v0, %lo(D_8012C93C)($at)
    /* 1AF24 8002A724 1380023C */  lui        $v0, %hi(D_8012C960)
    /* 1AF28 8002A728 60C9428C */  lw         $v0, %lo(D_8012C960)($v0)
    /* 1AF2C 8002A72C 00000000 */  nop
    /* 1AF30 8002A730 25104300 */  or         $v0, $v0, $v1
    /* 1AF34 8002A734 1380013C */  lui        $at, %hi(D_8012C960)
    /* 1AF38 8002A738 60C922AC */  sw         $v0, %lo(D_8012C960)($at)
    /* 1AF3C 8002A73C 1380023C */  lui        $v0, %hi(D_8012C98A)
    /* 1AF40 8002A740 8AC94294 */  lhu        $v0, %lo(D_8012C98A)($v0)
    /* 1AF44 8002A744 00000000 */  nop
    /* 1AF48 8002A748 08004224 */  addiu      $v0, $v0, 0x8
    /* 1AF4C 8002A74C 1380013C */  lui        $at, %hi(D_8012C98A)
    /* 1AF50 8002A750 8AC922A4 */  sh         $v0, %lo(D_8012C98A)($at)
    /* 1AF54 8002A754 08000324 */  addiu      $v1, $zero, 0x8
    /* 1AF58 8002A758 1380013C */  lui        $at, %hi(D_8012C99E)
    /* 1AF5C 8002A75C 9EC923A4 */  sh         $v1, %lo(D_8012C99E)($at)
    /* 1AF60 8002A760 1380023C */  lui        $v0, %hi(D_8012C9AE)
    /* 1AF64 8002A764 AEC94294 */  lhu        $v0, %lo(D_8012C9AE)($v0)
    /* 1AF68 8002A768 00000000 */  nop
    /* 1AF6C 8002A76C 08004224 */  addiu      $v0, $v0, 0x8
    /* 1AF70 8002A770 1380013C */  lui        $at, %hi(D_8012C9AE)
    /* 1AF74 8002A774 AEC922A4 */  sh         $v0, %lo(D_8012C9AE)($at)
    /* 1AF78 8002A778 1380013C */  lui        $at, %hi(D_8012C9C2)
    /* 1AF7C 8002A77C C2C923A4 */  sh         $v1, %lo(D_8012C9C2)($at)
    /* 1AF80 8002A780 21800000 */  addu       $s0, $zero, $zero
  .L8002A784:
    /* 1AF84 8002A784 1380023C */  lui        $v0, %hi(D_8012C9A2)
    /* 1AF88 8002A788 A2C94294 */  lhu        $v0, %lo(D_8012C9A2)($v0)
    /* 1AF8C 8002A78C 00000000 */  nop
    /* 1AF90 8002A790 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AF94 8002A794 1380013C */  lui        $at, %hi(D_8012C9A2)
    /* 1AF98 8002A798 A2C922A4 */  sh         $v0, %lo(D_8012C9A2)($at)
    /* 1AF9C 8002A79C 1380023C */  lui        $v0, %hi(D_8012C9C6)
    /* 1AFA0 8002A7A0 C6C94294 */  lhu        $v0, %lo(D_8012C9C6)($v0)
    /* 1AFA4 8002A7A4 00000000 */  nop
    /* 1AFA8 8002A7A8 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 1AFAC 8002A7AC 1380013C */  lui        $at, %hi(D_8012C9C6)
    /* 1AFB0 8002A7B0 C6C922A4 */  sh         $v0, %lo(D_8012C9C6)($at)
    /* 1AFB4 8002A7B4 E976000C */  jal        func_8001DBA4
    /* 1AFB8 8002A7B8 01000424 */   addiu     $a0, $zero, 0x1
    /* 1AFBC 8002A7BC 01000226 */  addiu      $v0, $s0, 0x1
    /* 1AFC0 8002A7C0 21804000 */  addu       $s0, $v0, $zero
    /* 1AFC4 8002A7C4 00140200 */  sll        $v0, $v0, 16
    /* 1AFC8 8002A7C8 03140200 */  sra        $v0, $v0, 16
    /* 1AFCC 8002A7CC 10004228 */  slti       $v0, $v0, 0x10
    /* 1AFD0 8002A7D0 ECFF4014 */  bnez       $v0, .L8002A784
    /* 1AFD4 8002A7D4 0080033C */   lui       $v1, (0x80000000 >> 16)
    /* 1AFD8 8002A7D8 1380023C */  lui        $v0, %hi(D_8012C984)
    /* 1AFDC 8002A7DC 84C9428C */  lw         $v0, %lo(D_8012C984)($v0)
    /* 1AFE0 8002A7E0 00000000 */  nop
    /* 1AFE4 8002A7E4 25104300 */  or         $v0, $v0, $v1
    /* 1AFE8 8002A7E8 1380013C */  lui        $at, %hi(D_8012C984)
    /* 1AFEC 8002A7EC 84C922AC */  sw         $v0, %lo(D_8012C984)($at)
    /* 1AFF0 8002A7F0 1380023C */  lui        $v0, %hi(D_8012C9A8)
    /* 1AFF4 8002A7F4 A8C9428C */  lw         $v0, %lo(D_8012C9A8)($v0)
    /* 1AFF8 8002A7F8 00000000 */  nop
    /* 1AFFC 8002A7FC 25104300 */  or         $v0, $v0, $v1
    /* 1B000 8002A800 1380013C */  lui        $at, %hi(D_8012C9A8)
    /* 1B004 8002A804 A8C922AC */  sw         $v0, %lo(D_8012C9A8)($at)
    /* 1B008 8002A808 21800000 */  addu       $s0, $zero, $zero
  .L8002A80C:
    /* 1B00C 8002A80C 1380023C */  lui        $v0, %hi(D_8012C664)
    /* 1B010 8002A810 64C64294 */  lhu        $v0, %lo(D_8012C664)($v0)
    /* 1B014 8002A814 00000000 */  nop
    /* 1B018 8002A818 80FF4224 */  addiu      $v0, $v0, -0x80
    /* 1B01C 8002A81C 1380013C */  lui        $at, %hi(D_8012C664)
    /* 1B020 8002A820 64C622A4 */  sh         $v0, %lo(D_8012C664)($at)
    /* 1B024 8002A824 E976000C */  jal        func_8001DBA4
    /* 1B028 8002A828 01000424 */   addiu     $a0, $zero, 0x1
    /* 1B02C 8002A82C 01000226 */  addiu      $v0, $s0, 0x1
    /* 1B030 8002A830 21804000 */  addu       $s0, $v0, $zero
    /* 1B034 8002A834 00140200 */  sll        $v0, $v0, 16
    /* 1B038 8002A838 03140200 */  sra        $v0, $v0, 16
    /* 1B03C 8002A83C 30004228 */  slti       $v0, $v0, 0x30
    /* 1B040 8002A840 F2FF4014 */  bnez       $v0, .L8002A80C
    /* 1B044 8002A844 0080033C */   lui       $v1, (0x80000000 >> 16)
    /* 1B048 8002A848 1380023C */  lui        $v0, %hi(D_8012C648)
    /* 1B04C 8002A84C 48C6428C */  lw         $v0, %lo(D_8012C648)($v0)
    /* 1B050 8002A850 00000000 */  nop
    /* 1B054 8002A854 25104300 */  or         $v0, $v0, $v1
    /* 1B058 8002A858 1380013C */  lui        $at, %hi(D_8012C648)
    /* 1B05C 8002A85C 48C622AC */  sw         $v0, %lo(D_8012C648)($at)
    /* 1B060 8002A860 E976000C */  jal        func_8001DBA4
    /* 1B064 8002A864 02000424 */   addiu     $a0, $zero, 0x2
    /* 1B068 8002A868 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1B06C 8002A86C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1B070 8002A870 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1B074 8002A874 0800E003 */  jr         $ra
    /* 1B078 8002A878 00000000 */   nop
endlabel func_80029F80
