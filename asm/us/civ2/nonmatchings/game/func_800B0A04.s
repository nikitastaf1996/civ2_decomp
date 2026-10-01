.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B0A04, 0x190

glabel func_800B0A04
    /* A1204 800B0A04 21480000 */  addu       $t1, $zero, $zero
    /* A1208 800B0A08 21400000 */  addu       $t0, $zero, $zero
    /* A120C 800B0A0C 40100400 */  sll        $v0, $a0, 1
    /* A1210 800B0A10 21104400 */  addu       $v0, $v0, $a0
    /* A1214 800B0A14 80100200 */  sll        $v0, $v0, 2
    /* A1218 800B0A18 23104400 */  subu       $v0, $v0, $a0
    /* A121C 800B0A1C 00110200 */  sll        $v0, $v0, 4
    /* A1220 800B0A20 23104400 */  subu       $v0, $v0, $a0
    /* A1224 800B0A24 C0700200 */  sll        $t6, $v0, 3
    /* A1228 800B0A28 003E0700 */  sll        $a3, $a3, 24
    /* A122C 800B0A2C 033E0700 */  sra        $a3, $a3, 24
    /* A1230 800B0A30 40100400 */  sll        $v0, $a0, 1
    /* A1234 800B0A34 21104400 */  addu       $v0, $v0, $a0
    /* A1238 800B0A38 80100200 */  sll        $v0, $v0, 2
    /* A123C 800B0A3C 23104400 */  subu       $v0, $v0, $a0
    /* A1240 800B0A40 00690200 */  sll        $t5, $v0, 4
    /* A1244 800B0A44 2368A401 */  subu       $t5, $t5, $a0
    /* A1248 800B0A48 40100400 */  sll        $v0, $a0, 1
    /* A124C 800B0A4C 21104400 */  addu       $v0, $v0, $a0
    /* A1250 800B0A50 80100200 */  sll        $v0, $v0, 2
    /* A1254 800B0A54 23104400 */  subu       $v0, $v0, $a0
    /* A1258 800B0A58 00610200 */  sll        $t4, $v0, 4
    /* A125C 800B0A5C 23608401 */  subu       $t4, $t4, $a0
    /* A1260 800B0A60 40100400 */  sll        $v0, $a0, 1
    /* A1264 800B0A64 21104400 */  addu       $v0, $v0, $a0
    /* A1268 800B0A68 80580200 */  sll        $t3, $v0, 2
    /* A126C 800B0A6C 23586401 */  subu       $t3, $t3, $a0
  .L800B0A70:
    /* A1270 800B0A70 40100800 */  sll        $v0, $t0, 1
    /* A1274 800B0A74 21104800 */  addu       $v0, $v0, $t0
    /* A1278 800B0A78 40100200 */  sll        $v0, $v0, 1
    /* A127C 800B0A7C 21184E00 */  addu       $v1, $v0, $t6
    /* A1280 800B0A80 1180013C */  lui        $at, %hi(D_80117A88)
    /* A1284 800B0A84 21082300 */  addu       $at, $at, $v1
    /* A1288 800B0A88 887A2284 */  lh         $v0, %lo(D_80117A88)($at)
    /* A128C 800B0A8C 00000000 */  nop
    /* A1290 800B0A90 3A004514 */  bne        $v0, $a1, .L800B0B7C
    /* A1294 800B0A94 00000000 */   nop
    /* A1298 800B0A98 1180013C */  lui        $at, %hi(D_80117A8A)
    /* A129C 800B0A9C 21082300 */  addu       $at, $at, $v1
    /* A12A0 800B0AA0 8A7A2284 */  lh         $v0, %lo(D_80117A8A)($at)
    /* A12A4 800B0AA4 00000000 */  nop
    /* A12A8 800B0AA8 34004614 */  bne        $v0, $a2, .L800B0B7C
    /* A12AC 800B0AAC 00000000 */   nop
    /* A12B0 800B0AB0 1180013C */  lui        $at, %hi(D_80117A8C)
    /* A12B4 800B0AB4 21082300 */  addu       $at, $at, $v1
    /* A12B8 800B0AB8 8C7A2280 */  lb         $v0, %lo(D_80117A8C)($at)
    /* A12BC 800B0ABC 00000000 */  nop
    /* A12C0 800B0AC0 2E004714 */  bne        $v0, $a3, .L800B0B7C
    /* A12C4 800B0AC4 00160900 */   sll       $v0, $t1, 24
    /* A12C8 800B0AC8 03560200 */  sra        $t2, $v0, 24
    /* A12CC 800B0ACC 1180013C */  lui        $at, %hi(D_80117A8D)
    /* A12D0 800B0AD0 21082300 */  addu       $at, $at, $v1
    /* A12D4 800B0AD4 8D7A2280 */  lb         $v0, %lo(D_80117A8D)($at)
    /* A12D8 800B0AD8 00000000 */  nop
    /* A12DC 800B0ADC 0D00401C */  bgtz       $v0, .L800B0B14
    /* A12E0 800B0AE0 2A104A00 */   slt       $v0, $v0, $t2
    /* A12E4 800B0AE4 40100800 */  sll        $v0, $t0, 1
    /* A12E8 800B0AE8 21104800 */  addu       $v0, $v0, $t0
    /* A12EC 800B0AEC 40100200 */  sll        $v0, $v0, 1
    /* A12F0 800B0AF0 C0180D00 */  sll        $v1, $t5, 3
    /* A12F4 800B0AF4 21104300 */  addu       $v0, $v0, $v1
    /* A12F8 800B0AF8 1180013C */  lui        $at, %hi(D_80117A8D)
    /* A12FC 800B0AFC 21082200 */  addu       $at, $at, $v0
    /* A1300 800B0B00 8D7A2280 */  lb         $v0, %lo(D_80117A8D)($at)
    /* A1304 800B0B04 00000000 */  nop
    /* A1308 800B0B08 27100200 */  nor        $v0, $zero, $v0
    /* A130C 800B0B0C 01004224 */  addiu      $v0, $v0, 0x1
    /* A1310 800B0B10 2A104A00 */  slt        $v0, $v0, $t2
  .L800B0B14:
    /* A1314 800B0B14 01004238 */  xori       $v0, $v0, 0x1
    /* A1318 800B0B18 18004010 */  beqz       $v0, .L800B0B7C
    /* A131C 800B0B1C 40100800 */   sll       $v0, $t0, 1
    /* A1320 800B0B20 21104800 */  addu       $v0, $v0, $t0
    /* A1324 800B0B24 40100200 */  sll        $v0, $v0, 1
    /* A1328 800B0B28 C0180C00 */  sll        $v1, $t4, 3
    /* A132C 800B0B2C 21104300 */  addu       $v0, $v0, $v1
    /* A1330 800B0B30 1180013C */  lui        $at, %hi(D_80117A8D)
    /* A1334 800B0B34 21082200 */  addu       $at, $at, $v0
    /* A1338 800B0B38 8D7A2280 */  lb         $v0, %lo(D_80117A8D)($at)
    /* A133C 800B0B3C 00000000 */  nop
    /* A1340 800B0B40 0E00401C */  bgtz       $v0, .L800B0B7C
    /* A1344 800B0B44 21484000 */   addu      $t1, $v0, $zero
    /* A1348 800B0B48 40180800 */  sll        $v1, $t0, 1
    /* A134C 800B0B4C 21186800 */  addu       $v1, $v1, $t0
    /* A1350 800B0B50 40180300 */  sll        $v1, $v1, 1
    /* A1354 800B0B54 00110B00 */  sll        $v0, $t3, 4
    /* A1358 800B0B58 23104400 */  subu       $v0, $v0, $a0
    /* A135C 800B0B5C C0100200 */  sll        $v0, $v0, 3
    /* A1360 800B0B60 21186200 */  addu       $v1, $v1, $v0
    /* A1364 800B0B64 1180013C */  lui        $at, %hi(D_80117A8D)
    /* A1368 800B0B68 21082300 */  addu       $at, $at, $v1
    /* A136C 800B0B6C 8D7A2980 */  lb         $t1, %lo(D_80117A8D)($at)
    /* A1370 800B0B70 00000000 */  nop
    /* A1374 800B0B74 27480900 */  nor        $t1, $zero, $t1
    /* A1378 800B0B78 01002925 */  addiu      $t1, $t1, 0x1
  .L800B0B7C:
    /* A137C 800B0B7C 01000825 */  addiu      $t0, $t0, 0x1
    /* A1380 800B0B80 30000229 */  slti       $v0, $t0, 0x30
    /* A1384 800B0B84 BAFF4014 */  bnez       $v0, .L800B0A70
    /* A1388 800B0B88 00000000 */   nop
    /* A138C 800B0B8C 0800E003 */  jr         $ra
    /* A1390 800B0B90 21102001 */   addu      $v0, $t1, $zero
endlabel func_800B0A04
