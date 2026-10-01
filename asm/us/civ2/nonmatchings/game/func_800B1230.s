.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1230, 0x64

glabel func_800B1230
    /* A1A30 800B1230 21180000 */  addu       $v1, $zero, $zero
    /* A1A34 800B1234 40100400 */  sll        $v0, $a0, 1
    /* A1A38 800B1238 21104400 */  addu       $v0, $v0, $a0
    /* A1A3C 800B123C 80100200 */  sll        $v0, $v0, 2
    /* A1A40 800B1240 23104400 */  subu       $v0, $v0, $a0
    /* A1A44 800B1244 00110200 */  sll        $v0, $v0, 4
    /* A1A48 800B1248 23104400 */  subu       $v0, $v0, $a0
    /* A1A4C 800B124C C0200200 */  sll        $a0, $v0, 3
    /* A1A50 800B1250 FFFF0524 */  addiu      $a1, $zero, -0x1
  .L800B1254:
    /* A1A54 800B1254 40100300 */  sll        $v0, $v1, 1
    /* A1A58 800B1258 21104300 */  addu       $v0, $v0, $v1
    /* A1A5C 800B125C 40100200 */  sll        $v0, $v0, 1
    /* A1A60 800B1260 21104400 */  addu       $v0, $v0, $a0
    /* A1A64 800B1264 1180013C */  lui        $at, %hi(D_80117BAC)
    /* A1A68 800B1268 21082200 */  addu       $at, $at, $v0
    /* A1A6C 800B126C AC7B25A0 */  sb         $a1, %lo(D_80117BAC)($at)
    /* A1A70 800B1270 1180013C */  lui        $at, %hi(D_80117BAD)
    /* A1A74 800B1274 21082200 */  addu       $at, $at, $v0
    /* A1A78 800B1278 AD7B20A0 */  sb         $zero, %lo(D_80117BAD)($at)
    /* A1A7C 800B127C 01006324 */  addiu      $v1, $v1, 0x1
    /* A1A80 800B1280 10006228 */  slti       $v0, $v1, 0x10
    /* A1A84 800B1284 F3FF4014 */  bnez       $v0, .L800B1254
    /* A1A88 800B1288 00000000 */   nop
    /* A1A8C 800B128C 0800E003 */  jr         $ra
    /* A1A90 800B1290 00000000 */   nop
endlabel func_800B1230
