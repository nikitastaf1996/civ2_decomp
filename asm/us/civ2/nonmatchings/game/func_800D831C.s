.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D831C, 0x164

glabel func_800D831C
    /* C8B1C 800D831C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* C8B20 800D8320 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* C8B24 800D8324 3800B6AF */  sw         $s6, 0x38($sp)
    /* C8B28 800D8328 3400B5AF */  sw         $s5, 0x34($sp)
    /* C8B2C 800D832C 3000B4AF */  sw         $s4, 0x30($sp)
    /* C8B30 800D8330 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* C8B34 800D8334 2800B2AF */  sw         $s2, 0x28($sp)
    /* C8B38 800D8338 2400B1AF */  sw         $s1, 0x24($sp)
    /* C8B3C 800D833C 2000B0AF */  sw         $s0, 0x20($sp)
    /* C8B40 800D8340 21A0A000 */  addu       $s4, $a1, $zero
    /* C8B44 800D8344 5400B58F */  lw         $s5, 0x54($sp)
    /* C8B48 800D8348 5800B68F */  lw         $s6, 0x58($sp)
    /* C8B4C 800D834C FFFF1124 */  addiu      $s1, $zero, -0x1
    /* C8B50 800D8350 3600C228 */  slti       $v0, $a2, 0x36
    /* C8B54 800D8354 03004010 */  beqz       $v0, .L800D8364
    /* C8B58 800D8358 FFFF1224 */   addiu     $s2, $zero, -0x1
    /* C8B5C 800D835C DA600308 */  j          .L800D8368
    /* C8B60 800D8360 2188C000 */   addu      $s1, $a2, $zero
  .L800D8364:
    /* C8B64 800D8364 CAFFD224 */  addiu      $s2, $a2, -0x36
  .L800D8368:
    /* C8B68 800D8368 5000B38F */  lw         $s3, 0x50($sp)
    /* C8B6C 800D836C 0100E230 */  andi       $v0, $a3, 0x1
    /* C8B70 800D8370 02004010 */  beqz       $v0, .L800D837C
    /* C8B74 800D8374 00000000 */   nop
    /* C8B78 800D8378 16007326 */  addiu      $s3, $s3, 0x16
  .L800D837C:
    /* C8B7C 800D837C 1D002006 */  bltz       $s1, .L800D83F4
    /* C8B80 800D8380 18000224 */   addiu     $v0, $zero, 0x18
    /* C8B84 800D8384 23185600 */  subu       $v1, $v0, $s6
    /* C8B88 800D8388 C2170300 */  srl        $v0, $v1, 31
    /* C8B8C 800D838C 21106200 */  addu       $v0, $v1, $v0
    /* C8B90 800D8390 43180200 */  sra        $v1, $v0, 1
    /* C8B94 800D8394 2380A302 */  subu       $s0, $s5, $v1
    /* C8B98 800D8398 06000424 */  addiu      $a0, $zero, 0x6
    /* C8B9C 800D839C D0EC030C */  jal        func_800FB340
    /* C8BA0 800D83A0 08000524 */   addiu     $a1, $zero, 0x8
    /* C8BA4 800D83A4 C0281100 */  sll        $a1, $s1, 3
    /* C8BA8 800D83A8 2128B100 */  addu       $a1, $a1, $s1
    /* C8BAC 800D83AC 80280500 */  sll        $a1, $a1, 2
    /* C8BB0 800D83B0 2128B100 */  addu       $a1, $a1, $s1
    /* C8BB4 800D83B4 80280500 */  sll        $a1, $a1, 2
    /* C8BB8 800D83B8 1380033C */  lui        $v1, %hi(D_8012BF80)
    /* C8BBC 800D83BC 80BF6324 */  addiu      $v1, $v1, %lo(D_8012BF80)
    /* C8BC0 800D83C0 F8FF6726 */  addiu      $a3, $s3, -0x8
    /* C8BC4 800D83C4 003C0700 */  sll        $a3, $a3, 16
    /* C8BC8 800D83C8 00141000 */  sll        $v0, $s0, 16
    /* C8BCC 800D83CC 03140200 */  sra        $v0, $v0, 16
    /* C8BD0 800D83D0 1000A2AF */  sw         $v0, 0x10($sp)
    /* C8BD4 800D83D4 1800A427 */  addiu      $a0, $sp, 0x18
    /* C8BD8 800D83D8 2128A300 */  addu       $a1, $a1, $v1
    /* C8BDC 800D83DC 21308002 */  addu       $a2, $s4, $zero
    /* C8BE0 800D83E0 89EE030C */  jal        func_800FBA24
    /* C8BE4 800D83E4 033C0700 */   sra       $a3, $a3, 16
    /* C8BE8 800D83E8 01000424 */  addiu      $a0, $zero, 0x1
    /* C8BEC 800D83EC D0EC030C */  jal        func_800FB340
    /* C8BF0 800D83F0 01000524 */   addiu     $a1, $zero, 0x1
  .L800D83F4:
    /* C8BF4 800D83F4 16004006 */  bltz       $s2, .L800D8450
    /* C8BF8 800D83F8 0C000224 */   addiu     $v0, $zero, 0xC
    /* C8BFC 800D83FC 23185600 */  subu       $v1, $v0, $s6
    /* C8C00 800D8400 C2170300 */  srl        $v0, $v1, 31
    /* C8C04 800D8404 21106200 */  addu       $v0, $v1, $v0
    /* C8C08 800D8408 43180200 */  sra        $v1, $v0, 1
    /* C8C0C 800D840C 2380A302 */  subu       $s0, $s5, $v1
    /* C8C10 800D8410 C0281200 */  sll        $a1, $s2, 3
    /* C8C14 800D8414 2128B200 */  addu       $a1, $a1, $s2
    /* C8C18 800D8418 80280500 */  sll        $a1, $a1, 2
    /* C8C1C 800D841C 2128B200 */  addu       $a1, $a1, $s2
    /* C8C20 800D8420 80280500 */  sll        $a1, $a1, 2
    /* C8C24 800D8424 1380033C */  lui        $v1, %hi(D_80131638)
    /* C8C28 800D8428 38166324 */  addiu      $v1, $v1, %lo(D_80131638)
    /* C8C2C 800D842C 003C1300 */  sll        $a3, $s3, 16
    /* C8C30 800D8430 00141000 */  sll        $v0, $s0, 16
    /* C8C34 800D8434 03140200 */  sra        $v0, $v0, 16
    /* C8C38 800D8438 1000A2AF */  sw         $v0, 0x10($sp)
    /* C8C3C 800D843C 1800A427 */  addiu      $a0, $sp, 0x18
    /* C8C40 800D8440 2128A300 */  addu       $a1, $a1, $v1
    /* C8C44 800D8444 21308002 */  addu       $a2, $s4, $zero
    /* C8C48 800D8448 89EE030C */  jal        func_800FBA24
    /* C8C4C 800D844C 033C0700 */   sra       $a3, $a3, 16
  .L800D8450:
    /* C8C50 800D8450 21100000 */  addu       $v0, $zero, $zero
    /* C8C54 800D8454 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* C8C58 800D8458 3800B68F */  lw         $s6, 0x38($sp)
    /* C8C5C 800D845C 3400B58F */  lw         $s5, 0x34($sp)
    /* C8C60 800D8460 3000B48F */  lw         $s4, 0x30($sp)
    /* C8C64 800D8464 2C00B38F */  lw         $s3, 0x2C($sp)
    /* C8C68 800D8468 2800B28F */  lw         $s2, 0x28($sp)
    /* C8C6C 800D846C 2400B18F */  lw         $s1, 0x24($sp)
    /* C8C70 800D8470 2000B08F */  lw         $s0, 0x20($sp)
    /* C8C74 800D8474 4000BD27 */  addiu      $sp, $sp, 0x40
    /* C8C78 800D8478 0800E003 */  jr         $ra
    /* C8C7C 800D847C 00000000 */   nop
endlabel func_800D831C
