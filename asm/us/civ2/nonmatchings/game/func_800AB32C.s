.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AB32C, 0x298

glabel func_800AB32C
    /* 9BB2C 800AB32C 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 9BB30 800AB330 6000BFAF */  sw         $ra, 0x60($sp)
    /* 9BB34 800AB334 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* 9BB38 800AB338 5800B2AF */  sw         $s2, 0x58($sp)
    /* 9BB3C 800AB33C 5400B1AF */  sw         $s1, 0x54($sp)
    /* 9BB40 800AB340 5000B0AF */  sw         $s0, 0x50($sp)
    /* 9BB44 800AB344 8009828F */  lw         $v0, %gp_rel(D_80158E58)($gp)
    /* 9BB48 800AB348 00000000 */  nop
    /* 9BB4C 800AB34C 95004010 */  beqz       $v0, .L800AB5A4
    /* 9BB50 800AB350 00000000 */   nop
    /* 9BB54 800AB354 1C00428C */  lw         $v0, 0x1C($v0)
    /* 9BB58 800AB358 00000000 */  nop
    /* 9BB5C 800AB35C 0C004284 */  lh         $v0, 0xC($v0)
    /* 9BB60 800AB360 00000000 */  nop
    /* 9BB64 800AB364 8F004018 */  blez       $v0, .L800AB5A4
    /* 9BB68 800AB368 3000A427 */   addiu     $a0, $sp, 0x30
    /* 9BB6C 800AB36C 3400A0A7 */  sh         $zero, 0x34($sp)
    /* 9BB70 800AB370 3000A0A7 */  sh         $zero, 0x30($sp)
    /* 9BB74 800AB374 84098297 */  lhu        $v0, %gp_rel(D_80158E5C)($gp)
    /* 9BB78 800AB378 00000000 */  nop
    /* 9BB7C 800AB37C 3200A2A7 */  sh         $v0, 0x32($sp)
    /* 9BB80 800AB380 A182030C */  jal        RotMatrix
    /* 9BB84 800AB384 1000A527 */   addiu     $a1, $sp, 0x10
    /* 9BB88 800AB388 3C00A0AF */  sw         $zero, 0x3C($sp)
    /* 9BB8C 800AB38C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 9BB90 800AB390 8809828F */  lw         $v0, %gp_rel(D_80158E60)($gp)
    /* 9BB94 800AB394 00000000 */  nop
    /* 9BB98 800AB398 4000A2AF */  sw         $v0, 0x40($sp)
    /* 9BB9C 800AB39C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9BBA0 800AB3A0 7582030C */  jal        TransMatrix
    /* 9BBA4 800AB3A4 3800A527 */   addiu     $a1, $sp, 0x38
    /* 9BBA8 800AB3A8 8182030C */  jal        SetRotMatrix
    /* 9BBAC 800AB3AC 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9BBB0 800AB3B0 8D82030C */  jal        SetTransMatrix
    /* 9BBB4 800AB3B4 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9BBB8 800AB3B8 1280113C */  lui        $s1, %hi(D_801201C8)
    /* 9BBBC 800AB3BC C8013126 */  addiu      $s1, $s1, %lo(D_801201C8)
    /* 9BBC0 800AB3C0 F009908F */  lw         $s0, %gp_rel(D_80158EC8)($gp)
    /* 9BBC4 800AB3C4 21900000 */  addu       $s2, $zero, $zero
  .L800AB3C8:
    /* 9BBC8 800AB3C8 21202002 */  addu       $a0, $s1, $zero
    /* 9BBCC 800AB3CC 21280002 */  addu       $a1, $s0, $zero
    /* 9BBD0 800AB3D0 4800A627 */  addiu      $a2, $sp, 0x48
    /* 9BBD4 800AB3D4 9582030C */  jal        RotTransPers
    /* 9BBD8 800AB3D8 4C00A727 */   addiu     $a3, $sp, 0x4C
    /* 9BBDC 800AB3DC 040002A6 */  sh         $v0, 0x4($s0)
    /* 9BBE0 800AB3E0 08003126 */  addiu      $s1, $s1, 0x8
    /* 9BBE4 800AB3E4 01005226 */  addiu      $s2, $s2, 0x1
    /* 9BBE8 800AB3E8 1D00422A */  slti       $v0, $s2, 0x1D
    /* 9BBEC 800AB3EC F6FF4014 */  bnez       $v0, .L800AB3C8
    /* 9BBF0 800AB3F0 08001026 */   addiu     $s0, $s0, 0x8
    /* 9BBF4 800AB3F4 21900000 */  addu       $s2, $zero, $zero
    /* 9BBF8 800AB3F8 1280113C */  lui        $s1, %hi(D_801202B0)
    /* 9BBFC 800AB3FC B0023126 */  addiu      $s1, $s1, %lo(D_801202B0)
    /* 9BC00 800AB400 1280133C */  lui        $s3, %hi(D_801202B6)
    /* 9BC04 800AB404 B6027326 */  addiu      $s3, $s3, %lo(D_801202B6)
    /* 9BC08 800AB408 1400422A */  slti       $v0, $s2, 0x14
  .L800AB40C:
    /* 9BC0C 800AB40C 65004010 */  beqz       $v0, .L800AB5A4
    /* 9BC10 800AB410 80181200 */   sll       $v1, $s2, 2
    /* 9BC14 800AB414 F409848F */  lw         $a0, %gp_rel(D_80158ECC)($gp)
    /* 9BC18 800AB418 21807200 */  addu       $s0, $v1, $s2
    /* 9BC1C 800AB41C C0801000 */  sll        $s0, $s0, 3
    /* 9BC20 800AB420 21200402 */  addu       $a0, $s0, $a0
    /* 9BC24 800AB424 C0301200 */  sll        $a2, $s2, 3
    /* 9BC28 800AB428 2118D100 */  addu       $v1, $a2, $s1
    /* 9BC2C 800AB42C 00006284 */  lh         $v0, 0x0($v1)
    /* 9BC30 800AB430 F009858F */  lw         $a1, %gp_rel(D_80158EC8)($gp)
    /* 9BC34 800AB434 C0100200 */  sll        $v0, $v0, 3
    /* 9BC38 800AB438 21104500 */  addu       $v0, $v0, $a1
    /* 9BC3C 800AB43C 00004294 */  lhu        $v0, 0x0($v0)
    /* 9BC40 800AB440 00000000 */  nop
    /* 9BC44 800AB444 A0004224 */  addiu      $v0, $v0, 0xA0
    /* 9BC48 800AB448 080082A4 */  sh         $v0, 0x8($a0)
    /* 9BC4C 800AB44C 00006284 */  lh         $v0, 0x0($v1)
    /* 9BC50 800AB450 00000000 */  nop
    /* 9BC54 800AB454 C0100200 */  sll        $v0, $v0, 3
    /* 9BC58 800AB458 21104500 */  addu       $v0, $v0, $a1
    /* 9BC5C 800AB45C 02004294 */  lhu        $v0, 0x2($v0)
    /* 9BC60 800AB460 00000000 */  nop
    /* 9BC64 800AB464 78004224 */  addiu      $v0, $v0, 0x78
    /* 9BC68 800AB468 0A0082A4 */  sh         $v0, 0xA($a0)
    /* 9BC6C 800AB46C 02002326 */  addiu      $v1, $s1, 0x2
    /* 9BC70 800AB470 2118C300 */  addu       $v1, $a2, $v1
    /* 9BC74 800AB474 00006284 */  lh         $v0, 0x0($v1)
    /* 9BC78 800AB478 00000000 */  nop
    /* 9BC7C 800AB47C C0100200 */  sll        $v0, $v0, 3
    /* 9BC80 800AB480 21104500 */  addu       $v0, $v0, $a1
    /* 9BC84 800AB484 00004294 */  lhu        $v0, 0x0($v0)
    /* 9BC88 800AB488 00000000 */  nop
    /* 9BC8C 800AB48C A0004224 */  addiu      $v0, $v0, 0xA0
    /* 9BC90 800AB490 100082A4 */  sh         $v0, 0x10($a0)
    /* 9BC94 800AB494 00006284 */  lh         $v0, 0x0($v1)
    /* 9BC98 800AB498 00000000 */  nop
    /* 9BC9C 800AB49C C0100200 */  sll        $v0, $v0, 3
    /* 9BCA0 800AB4A0 21104500 */  addu       $v0, $v0, $a1
    /* 9BCA4 800AB4A4 02004294 */  lhu        $v0, 0x2($v0)
    /* 9BCA8 800AB4A8 00000000 */  nop
    /* 9BCAC 800AB4AC 78004224 */  addiu      $v0, $v0, 0x78
    /* 9BCB0 800AB4B0 120082A4 */  sh         $v0, 0x12($a0)
    /* 9BCB4 800AB4B4 04002326 */  addiu      $v1, $s1, 0x4
    /* 9BCB8 800AB4B8 2118C300 */  addu       $v1, $a2, $v1
    /* 9BCBC 800AB4BC 00006284 */  lh         $v0, 0x0($v1)
    /* 9BCC0 800AB4C0 00000000 */  nop
    /* 9BCC4 800AB4C4 C0100200 */  sll        $v0, $v0, 3
    /* 9BCC8 800AB4C8 21104500 */  addu       $v0, $v0, $a1
    /* 9BCCC 800AB4CC 00004294 */  lhu        $v0, 0x0($v0)
    /* 9BCD0 800AB4D0 00000000 */  nop
    /* 9BCD4 800AB4D4 A0004224 */  addiu      $v0, $v0, 0xA0
    /* 9BCD8 800AB4D8 180082A4 */  sh         $v0, 0x18($a0)
    /* 9BCDC 800AB4DC 00006284 */  lh         $v0, 0x0($v1)
    /* 9BCE0 800AB4E0 00000000 */  nop
    /* 9BCE4 800AB4E4 C0100200 */  sll        $v0, $v0, 3
    /* 9BCE8 800AB4E8 21104500 */  addu       $v0, $v0, $a1
    /* 9BCEC 800AB4EC 02004294 */  lhu        $v0, 0x2($v0)
    /* 9BCF0 800AB4F0 00000000 */  nop
    /* 9BCF4 800AB4F4 78004224 */  addiu      $v0, $v0, 0x78
    /* 9BCF8 800AB4F8 1A0082A4 */  sh         $v0, 0x1A($a0)
    /* 9BCFC 800AB4FC 2130D300 */  addu       $a2, $a2, $s3
    /* 9BD00 800AB500 0000C284 */  lh         $v0, 0x0($a2)
    /* 9BD04 800AB504 00000000 */  nop
    /* 9BD08 800AB508 C0100200 */  sll        $v0, $v0, 3
    /* 9BD0C 800AB50C 21104500 */  addu       $v0, $v0, $a1
    /* 9BD10 800AB510 00004294 */  lhu        $v0, 0x0($v0)
    /* 9BD14 800AB514 00000000 */  nop
    /* 9BD18 800AB518 A0004224 */  addiu      $v0, $v0, 0xA0
    /* 9BD1C 800AB51C 200082A4 */  sh         $v0, 0x20($a0)
    /* 9BD20 800AB520 0000C284 */  lh         $v0, 0x0($a2)
    /* 9BD24 800AB524 00000000 */  nop
    /* 9BD28 800AB528 C0100200 */  sll        $v0, $v0, 3
    /* 9BD2C 800AB52C 21104500 */  addu       $v0, $v0, $a1
    /* 9BD30 800AB530 02004294 */  lhu        $v0, 0x2($v0)
    /* 9BD34 800AB534 00000000 */  nop
    /* 9BD38 800AB538 78004224 */  addiu      $v0, $v0, 0x78
    /* 9BD3C 800AB53C 220082A4 */  sh         $v0, 0x22($a0)
    /* 9BD40 800AB540 40101200 */  sll        $v0, $s2, 1
    /* 9BD44 800AB544 1280013C */  lui        $at, %hi(D_801208B8)
    /* 9BD48 800AB548 21082200 */  addu       $at, $at, $v0
    /* 9BD4C 800AB54C B8082484 */  lh         $a0, %lo(D_801208B8)($at)
    /* 9BD50 800AB550 88E9030C */  jal        func_800FA620
    /* 9BD54 800AB554 01005226 */   addiu     $s2, $s2, 0x1
    /* 9BD58 800AB558 00140200 */  sll        $v0, $v0, 16
    /* 9BD5C 800AB55C 031C0200 */  sra        $v1, $v0, 16
    /* 9BD60 800AB560 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9BD64 800AB564 00000000 */  nop
    /* 9BD68 800AB568 21100202 */  addu       $v0, $s0, $v0
    /* 9BD6C 800AB56C 040043A0 */  sb         $v1, 0x4($v0)
    /* 9BD70 800AB570 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9BD74 800AB574 00000000 */  nop
    /* 9BD78 800AB578 21100202 */  addu       $v0, $s0, $v0
    /* 9BD7C 800AB57C 050043A0 */  sb         $v1, 0x5($v0)
    /* 9BD80 800AB580 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9BD84 800AB584 00000000 */  nop
    /* 9BD88 800AB588 21100202 */  addu       $v0, $s0, $v0
    /* 9BD8C 800AB58C 060043A0 */  sb         $v1, 0x6($v0)
    /* 9BD90 800AB590 F409848F */  lw         $a0, %gp_rel(D_80158ECC)($gp)
    /* 9BD94 800AB594 928E030C */  jal        DrawPrim
    /* 9BD98 800AB598 21200402 */   addu      $a0, $s0, $a0
    /* 9BD9C 800AB59C 03AD0208 */  j          .L800AB40C
    /* 9BDA0 800AB5A0 1400422A */   slti      $v0, $s2, 0x14
  .L800AB5A4:
    /* 9BDA4 800AB5A4 6000BF8F */  lw         $ra, 0x60($sp)
    /* 9BDA8 800AB5A8 5C00B38F */  lw         $s3, 0x5C($sp)
    /* 9BDAC 800AB5AC 5800B28F */  lw         $s2, 0x58($sp)
    /* 9BDB0 800AB5B0 5400B18F */  lw         $s1, 0x54($sp)
    /* 9BDB4 800AB5B4 5000B08F */  lw         $s0, 0x50($sp)
    /* 9BDB8 800AB5B8 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 9BDBC 800AB5BC 0800E003 */  jr         $ra
    /* 9BDC0 800AB5C0 00000000 */   nop
endlabel func_800AB32C
