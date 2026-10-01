.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D1040, 0x3C4

glabel func_800D1040
    /* C1840 800D1040 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* C1844 800D1044 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* C1848 800D1048 6800BEAF */  sw         $fp, 0x68($sp)
    /* C184C 800D104C 6400B7AF */  sw         $s7, 0x64($sp)
    /* C1850 800D1050 6000B6AF */  sw         $s6, 0x60($sp)
    /* C1854 800D1054 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* C1858 800D1058 5800B4AF */  sw         $s4, 0x58($sp)
    /* C185C 800D105C 5400B3AF */  sw         $s3, 0x54($sp)
    /* C1860 800D1060 5000B2AF */  sw         $s2, 0x50($sp)
    /* C1864 800D1064 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* C1868 800D1068 4800B0AF */  sw         $s0, 0x48($sp)
    /* C186C 800D106C 21A88000 */  addu       $s5, $a0, $zero
    /* C1870 800D1070 2198A000 */  addu       $s3, $a1, $zero
    /* C1874 800D1074 2000A6AF */  sw         $a2, 0x20($sp)
    /* C1878 800D1078 2180E000 */  addu       $s0, $a3, $zero
    /* C187C 800D107C 8000B68F */  lw         $s6, 0x80($sp)
    /* C1880 800D1080 8400B78F */  lw         $s7, 0x84($sp)
    /* C1884 800D1084 E40EA48E */  lw         $a0, 0xEE4($s5)
    /* C1888 800D1088 00000000 */  nop
    /* C188C 800D108C 80240400 */  sll        $a0, $a0, 18
    /* C1890 800D1090 03240400 */  sra        $a0, $a0, 16
    /* C1894 800D1094 D0EC030C */  jal        func_800FB340
    /* C1898 800D1098 08000524 */   addiu     $a1, $zero, 0x8
    /* C189C 800D109C 1680023C */  lui        $v0, %hi(D_80158864)
    /* C18A0 800D10A0 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C18A4 800D10A4 00000000 */  nop
    /* C18A8 800D10A8 09004480 */  lb         $a0, 0x9($v0)
    /* C18AC 800D10AC 1000A0AF */  sw         $zero, 0x10($sp)
    /* C18B0 800D10B0 0E000524 */  addiu      $a1, $zero, 0xE
    /* C18B4 800D10B4 21300002 */  addu       $a2, $s0, $zero
    /* C18B8 800D10B8 2A1A030C */  jal        func_800C68A8
    /* C18BC 800D10BC 21380000 */   addu      $a3, $zero, $zero
    /* C18C0 800D10C0 21A04000 */  addu       $s4, $v0, $zero
    /* C18C4 800D10C4 21900000 */  addu       $s2, $zero, $zero
    /* C18C8 800D10C8 2600C01A */  blez       $s6, .L800D1164
    /* C18CC 800D10CC 21880000 */   addu      $s1, $zero, $zero
    /* C18D0 800D10D0 2000A88F */  lw         $t0, 0x20($sp)
    /* C18D4 800D10D4 00000000 */  nop
    /* C18D8 800D10D8 00140800 */  sll        $v0, $t0, 16
    /* C18DC 800D10DC 03840200 */  sra        $s0, $v0, 16
  .L800D10E0:
    /* C18E0 800D10E0 1680023C */  lui        $v0, %hi(D_80158864)
    /* C18E4 800D10E4 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C18E8 800D10E8 00000000 */  nop
    /* C18EC 800D10EC 08004480 */  lb         $a0, 0x8($v0)
    /* C18F0 800D10F0 1663030C */  jal        func_800D8C58
    /* C18F4 800D10F4 01003126 */   addiu     $s1, $s1, 0x1
    /* C18F8 800D10F8 40300200 */  sll        $a2, $v0, 1
    /* C18FC 800D10FC 2130C200 */  addu       $a2, $a2, $v0
    /* C1900 800D1100 00190600 */  sll        $v1, $a2, 4
    /* C1904 800D1104 2130C300 */  addu       $a2, $a2, $v1
    /* C1908 800D1108 C0300600 */  sll        $a2, $a2, 3
    /* C190C 800D110C 2330C200 */  subu       $a2, $a2, $v0
    /* C1910 800D1110 80300600 */  sll        $a2, $a2, 2
    /* C1914 800D1114 1380023C */  lui        $v0, %hi(D_8012E3EC)
    /* C1918 800D1118 ECE34224 */  addiu      $v0, $v0, %lo(D_8012E3EC)
    /* C191C 800D111C 2130C200 */  addu       $a2, $a2, $v0
    /* C1920 800D1120 01004232 */  andi       $v0, $s2, 0x1
    /* C1924 800D1124 C0280200 */  sll        $a1, $v0, 3
    /* C1928 800D1128 2128A200 */  addu       $a1, $a1, $v0
    /* C192C 800D112C 80280500 */  sll        $a1, $a1, 2
    /* C1930 800D1130 2128A200 */  addu       $a1, $a1, $v0
    /* C1934 800D1134 80280500 */  sll        $a1, $a1, 2
    /* C1938 800D1138 003C1300 */  sll        $a3, $s3, 16
    /* C193C 800D113C 1000B0AF */  sw         $s0, 0x10($sp)
    /* C1940 800D1140 1800A427 */  addiu      $a0, $sp, 0x18
    /* C1944 800D1144 2128C500 */  addu       $a1, $a2, $a1
    /* C1948 800D1148 2130A002 */  addu       $a2, $s5, $zero
    /* C194C 800D114C 89EE030C */  jal        func_800FBA24
    /* C1950 800D1150 033C0700 */   sra       $a3, $a3, 16
    /* C1954 800D1154 21987402 */  addu       $s3, $s3, $s4
    /* C1958 800D1158 2A103602 */  slt        $v0, $s1, $s6
    /* C195C 800D115C E0FF4014 */  bnez       $v0, .L800D10E0
    /* C1960 800D1160 01005226 */   addiu     $s2, $s2, 0x1
  .L800D1164:
    /* C1964 800D1164 1680023C */  lui        $v0, %hi(D_80158864)
    /* C1968 800D1168 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C196C 800D116C 00000000 */  nop
    /* C1970 800D1170 21284000 */  addu       $a1, $v0, $zero
    /* C1974 800D1174 09004480 */  lb         $a0, 0x9($v0)
    /* C1978 800D1178 2110D702 */  addu       $v0, $s6, $s7
    /* C197C 800D117C 1680033C */  lui        $v1, %hi(D_8015858C)
    /* C1980 800D1180 8C85638C */  lw         $v1, %lo(D_8015858C)($v1)
    /* C1984 800D1184 00000000 */  nop
    /* C1988 800D1188 21104300 */  addu       $v0, $v0, $v1
    /* C198C 800D118C 23208200 */  subu       $a0, $a0, $v0
    /* C1990 800D1190 2D008018 */  blez       $a0, .L800D1248
    /* C1994 800D1194 21880000 */   addu      $s1, $zero, $zero
    /* C1998 800D1198 2000A88F */  lw         $t0, 0x20($sp)
    /* C199C 800D119C 00000000 */  nop
    /* C19A0 800D11A0 00140800 */  sll        $v0, $t0, 16
    /* C19A4 800D11A4 03F40200 */  sra        $fp, $v0, 16
    /* C19A8 800D11A8 2180D702 */  addu       $s0, $s6, $s7
  .L800D11AC:
    /* C19AC 800D11AC 0800A480 */  lb         $a0, 0x8($a1)
    /* C19B0 800D11B0 1663030C */  jal        func_800D8C58
    /* C19B4 800D11B4 01003126 */   addiu     $s1, $s1, 0x1
    /* C19B8 800D11B8 40300200 */  sll        $a2, $v0, 1
    /* C19BC 800D11BC 2130C200 */  addu       $a2, $a2, $v0
    /* C19C0 800D11C0 00190600 */  sll        $v1, $a2, 4
    /* C19C4 800D11C4 2130C300 */  addu       $a2, $a2, $v1
    /* C19C8 800D11C8 C0300600 */  sll        $a2, $a2, 3
    /* C19CC 800D11CC 2330C200 */  subu       $a2, $a2, $v0
    /* C19D0 800D11D0 80300600 */  sll        $a2, $a2, 2
    /* C19D4 800D11D4 1380023C */  lui        $v0, %hi(D_8012E514)
    /* C19D8 800D11D8 14E54224 */  addiu      $v0, $v0, %lo(D_8012E514)
    /* C19DC 800D11DC 2130C200 */  addu       $a2, $a2, $v0
    /* C19E0 800D11E0 01004232 */  andi       $v0, $s2, 0x1
    /* C19E4 800D11E4 C0280200 */  sll        $a1, $v0, 3
    /* C19E8 800D11E8 2128A200 */  addu       $a1, $a1, $v0
    /* C19EC 800D11EC 80280500 */  sll        $a1, $a1, 2
    /* C19F0 800D11F0 2128A200 */  addu       $a1, $a1, $v0
    /* C19F4 800D11F4 80280500 */  sll        $a1, $a1, 2
    /* C19F8 800D11F8 003C1300 */  sll        $a3, $s3, 16
    /* C19FC 800D11FC 1000BEAF */  sw         $fp, 0x10($sp)
    /* C1A00 800D1200 1800A427 */  addiu      $a0, $sp, 0x18
    /* C1A04 800D1204 2128C500 */  addu       $a1, $a2, $a1
    /* C1A08 800D1208 2130A002 */  addu       $a2, $s5, $zero
    /* C1A0C 800D120C 89EE030C */  jal        func_800FBA24
    /* C1A10 800D1210 033C0700 */   sra       $a3, $a3, 16
    /* C1A14 800D1214 21987402 */  addu       $s3, $s3, $s4
    /* C1A18 800D1218 1680053C */  lui        $a1, %hi(D_80158864)
    /* C1A1C 800D121C 6488A58C */  lw         $a1, %lo(D_80158864)($a1)
    /* C1A20 800D1220 00000000 */  nop
    /* C1A24 800D1224 0900A380 */  lb         $v1, 0x9($a1)
    /* C1A28 800D1228 1680023C */  lui        $v0, %hi(D_8015858C)
    /* C1A2C 800D122C 8C85428C */  lw         $v0, %lo(D_8015858C)($v0)
    /* C1A30 800D1230 00000000 */  nop
    /* C1A34 800D1234 21100202 */  addu       $v0, $s0, $v0
    /* C1A38 800D1238 23186200 */  subu       $v1, $v1, $v0
    /* C1A3C 800D123C 2A182302 */  slt        $v1, $s1, $v1
    /* C1A40 800D1240 DAFF6014 */  bnez       $v1, .L800D11AC
    /* C1A44 800D1244 01005226 */   addiu     $s2, $s2, 0x1
  .L800D1248:
    /* C1A48 800D1248 2E00E01A */  blez       $s7, .L800D1304
    /* C1A4C 800D124C 21880000 */   addu      $s1, $zero, $zero
    /* C1A50 800D1250 2000A88F */  lw         $t0, 0x20($sp)
    /* C1A54 800D1254 00000000 */  nop
    /* C1A58 800D1258 00140800 */  sll        $v0, $t0, 16
    /* C1A5C 800D125C 03B40200 */  sra        $s6, $v0, 16
  .L800D1260:
    /* C1A60 800D1260 8800A88F */  lw         $t0, 0x88($sp)
    /* C1A64 800D1264 00000000 */  nop
    /* C1A68 800D1268 2310E802 */  subu       $v0, $s7, $t0
    /* C1A6C 800D126C 2A102202 */  slt        $v0, $s1, $v0
    /* C1A70 800D1270 02004014 */  bnez       $v0, .L800D127C
    /* C1A74 800D1274 04001024 */   addiu     $s0, $zero, 0x4
    /* C1A78 800D1278 06001024 */  addiu      $s0, $zero, 0x6
  .L800D127C:
    /* C1A7C 800D127C 1680023C */  lui        $v0, %hi(D_80158864)
    /* C1A80 800D1280 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C1A84 800D1284 00000000 */  nop
    /* C1A88 800D1288 08004480 */  lb         $a0, 0x8($v0)
    /* C1A8C 800D128C 1663030C */  jal        func_800D8C58
    /* C1A90 800D1290 01003126 */   addiu     $s1, $s1, 0x1
    /* C1A94 800D1294 40300200 */  sll        $a2, $v0, 1
    /* C1A98 800D1298 2130C200 */  addu       $a2, $a2, $v0
    /* C1A9C 800D129C 00190600 */  sll        $v1, $a2, 4
    /* C1AA0 800D12A0 2130C300 */  addu       $a2, $a2, $v1
    /* C1AA4 800D12A4 C0300600 */  sll        $a2, $a2, 3
    /* C1AA8 800D12A8 2330C200 */  subu       $a2, $a2, $v0
    /* C1AAC 800D12AC 80300600 */  sll        $a2, $a2, 2
    /* C1AB0 800D12B0 1380023C */  lui        $v0, %hi(D_8012E3EC)
    /* C1AB4 800D12B4 ECE34224 */  addiu      $v0, $v0, %lo(D_8012E3EC)
    /* C1AB8 800D12B8 2130C200 */  addu       $a2, $a2, $v0
    /* C1ABC 800D12BC 01004232 */  andi       $v0, $s2, 0x1
    /* C1AC0 800D12C0 21100202 */  addu       $v0, $s0, $v0
    /* C1AC4 800D12C4 C0280200 */  sll        $a1, $v0, 3
    /* C1AC8 800D12C8 2128A200 */  addu       $a1, $a1, $v0
    /* C1ACC 800D12CC 80280500 */  sll        $a1, $a1, 2
    /* C1AD0 800D12D0 2128A200 */  addu       $a1, $a1, $v0
    /* C1AD4 800D12D4 80280500 */  sll        $a1, $a1, 2
    /* C1AD8 800D12D8 003C1300 */  sll        $a3, $s3, 16
    /* C1ADC 800D12DC 1000B6AF */  sw         $s6, 0x10($sp)
    /* C1AE0 800D12E0 1800A427 */  addiu      $a0, $sp, 0x18
    /* C1AE4 800D12E4 2128C500 */  addu       $a1, $a2, $a1
    /* C1AE8 800D12E8 2130A002 */  addu       $a2, $s5, $zero
    /* C1AEC 800D12EC 89EE030C */  jal        func_800FBA24
    /* C1AF0 800D12F0 033C0700 */   sra       $a3, $a3, 16
    /* C1AF4 800D12F4 21987402 */  addu       $s3, $s3, $s4
    /* C1AF8 800D12F8 2A103702 */  slt        $v0, $s1, $s7
    /* C1AFC 800D12FC D8FF4014 */  bnez       $v0, .L800D1260
    /* C1B00 800D1300 01005226 */   addiu     $s2, $s2, 0x1
  .L800D1304:
    /* C1B04 800D1304 1680023C */  lui        $v0, %hi(D_8015858C)
    /* C1B08 800D1308 8C85428C */  lw         $v0, %lo(D_8015858C)($v0)
    /* C1B0C 800D130C 00000000 */  nop
    /* C1B10 800D1310 2B004018 */  blez       $v0, .L800D13C0
    /* C1B14 800D1314 21880000 */   addu      $s1, $zero, $zero
    /* C1B18 800D1318 2000A88F */  lw         $t0, 0x20($sp)
    /* C1B1C 800D131C 00000000 */  nop
    /* C1B20 800D1320 00140800 */  sll        $v0, $t0, 16
    /* C1B24 800D1324 03940200 */  sra        $s2, $v0, 16
  .L800D1328:
    /* C1B28 800D1328 1680023C */  lui        $v0, %hi(D_80158864)
    /* C1B2C 800D132C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C1B30 800D1330 00000000 */  nop
    /* C1B34 800D1334 08004480 */  lb         $a0, 0x8($v0)
    /* C1B38 800D1338 1663030C */  jal        func_800D8C58
    /* C1B3C 800D133C 00000000 */   nop
    /* C1B40 800D1340 21804000 */  addu       $s0, $v0, $zero
    /* C1B44 800D1344 C351000C */  jal        func_8001470C
    /* C1B48 800D1348 21202002 */   addu      $a0, $s1, $zero
    /* C1B4C 800D134C 40301000 */  sll        $a2, $s0, 1
    /* C1B50 800D1350 2130D000 */  addu       $a2, $a2, $s0
    /* C1B54 800D1354 00190600 */  sll        $v1, $a2, 4
    /* C1B58 800D1358 2130C300 */  addu       $a2, $a2, $v1
    /* C1B5C 800D135C C0300600 */  sll        $a2, $a2, 3
    /* C1B60 800D1360 2330D000 */  subu       $a2, $a2, $s0
    /* C1B64 800D1364 80300600 */  sll        $a2, $a2, 2
    /* C1B68 800D1368 1380033C */  lui        $v1, %hi(D_8012E7F8)
    /* C1B6C 800D136C F8E76324 */  addiu      $v1, $v1, %lo(D_8012E7F8)
    /* C1B70 800D1370 2130C300 */  addu       $a2, $a2, $v1
    /* C1B74 800D1374 C0280200 */  sll        $a1, $v0, 3
    /* C1B78 800D1378 2128A200 */  addu       $a1, $a1, $v0
    /* C1B7C 800D137C 80280500 */  sll        $a1, $a1, 2
    /* C1B80 800D1380 2128A200 */  addu       $a1, $a1, $v0
    /* C1B84 800D1384 80280500 */  sll        $a1, $a1, 2
    /* C1B88 800D1388 003C1300 */  sll        $a3, $s3, 16
    /* C1B8C 800D138C 1000B2AF */  sw         $s2, 0x10($sp)
    /* C1B90 800D1390 1800A427 */  addiu      $a0, $sp, 0x18
    /* C1B94 800D1394 2128C500 */  addu       $a1, $a2, $a1
    /* C1B98 800D1398 2130A002 */  addu       $a2, $s5, $zero
    /* C1B9C 800D139C 89EE030C */  jal        func_800FBA24
    /* C1BA0 800D13A0 033C0700 */   sra       $a3, $a3, 16
    /* C1BA4 800D13A4 01003126 */  addiu      $s1, $s1, 0x1
    /* C1BA8 800D13A8 1680023C */  lui        $v0, %hi(D_8015858C)
    /* C1BAC 800D13AC 8C85428C */  lw         $v0, %lo(D_8015858C)($v0)
    /* C1BB0 800D13B0 00000000 */  nop
    /* C1BB4 800D13B4 2A102202 */  slt        $v0, $s1, $v0
    /* C1BB8 800D13B8 DBFF4014 */  bnez       $v0, .L800D1328
    /* C1BBC 800D13BC 21987402 */   addu      $s3, $s3, $s4
  .L800D13C0:
    /* C1BC0 800D13C0 01000424 */  addiu      $a0, $zero, 0x1
    /* C1BC4 800D13C4 D0EC030C */  jal        func_800FB340
    /* C1BC8 800D13C8 01000524 */   addiu     $a1, $zero, 0x1
    /* C1BCC 800D13CC 21108002 */  addu       $v0, $s4, $zero
    /* C1BD0 800D13D0 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* C1BD4 800D13D4 6800BE8F */  lw         $fp, 0x68($sp)
    /* C1BD8 800D13D8 6400B78F */  lw         $s7, 0x64($sp)
    /* C1BDC 800D13DC 6000B68F */  lw         $s6, 0x60($sp)
    /* C1BE0 800D13E0 5C00B58F */  lw         $s5, 0x5C($sp)
    /* C1BE4 800D13E4 5800B48F */  lw         $s4, 0x58($sp)
    /* C1BE8 800D13E8 5400B38F */  lw         $s3, 0x54($sp)
    /* C1BEC 800D13EC 5000B28F */  lw         $s2, 0x50($sp)
    /* C1BF0 800D13F0 4C00B18F */  lw         $s1, 0x4C($sp)
    /* C1BF4 800D13F4 4800B08F */  lw         $s0, 0x48($sp)
    /* C1BF8 800D13F8 7000BD27 */  addiu      $sp, $sp, 0x70
    /* C1BFC 800D13FC 0800E003 */  jr         $ra
    /* C1C00 800D1400 00000000 */   nop
endlabel func_800D1040
