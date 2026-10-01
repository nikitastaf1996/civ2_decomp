.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DBBA0, 0x82C

glabel func_800DBBA0
    /* CC3A0 800DBBA0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* CC3A4 800DBBA4 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* CC3A8 800DBBA8 2800B6AF */  sw         $s6, 0x28($sp)
    /* CC3AC 800DBBAC 2400B5AF */  sw         $s5, 0x24($sp)
    /* CC3B0 800DBBB0 2000B4AF */  sw         $s4, 0x20($sp)
    /* CC3B4 800DBBB4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* CC3B8 800DBBB8 1800B2AF */  sw         $s2, 0x18($sp)
    /* CC3BC 800DBBBC 1400B1AF */  sw         $s1, 0x14($sp)
    /* CC3C0 800DBBC0 1000B0AF */  sw         $s0, 0x10($sp)
    /* CC3C4 800DBBC4 1280113C */  lui        $s1, %hi(D_80123020)
    /* CC3C8 800DBBC8 20303126 */  addiu      $s1, $s1, %lo(D_80123020)
    /* CC3CC 800DBBCC 0A001024 */  addiu      $s0, $zero, 0xA
    /* CC3D0 800DBBD0 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DBBD4:
    /* CC3D4 800DBBD4 FCEC030C */  jal        func_800FB3F0
    /* CC3D8 800DBBD8 21202002 */   addu      $a0, $s1, $zero
    /* CC3DC 800DBBDC FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC3E0 800DBBE0 FCFF1216 */  bne        $s0, $s2, .L800DBBD4
    /* CC3E4 800DBBE4 94003126 */   addiu     $s1, $s1, 0x94
    /* CC3E8 800DBBE8 1280133C */  lui        $s3, %hi(D_8012367C)
    /* CC3EC 800DBBEC 7C367326 */  addiu      $s3, $s3, %lo(D_8012367C)
    /* CC3F0 800DBBF0 21900000 */  addu       $s2, $zero, $zero
    /* CC3F4 800DBBF4 FFFF1424 */  addiu      $s4, $zero, -0x1
  .L800DBBF8:
    /* CC3F8 800DBBF8 21886002 */  addu       $s1, $s3, $zero
    /* CC3FC 800DBBFC 21800000 */  addu       $s0, $zero, $zero
  .L800DBC00:
    /* CC400 800DBC00 FCEC030C */  jal        func_800FB3F0
    /* CC404 800DBC04 21202002 */   addu      $a0, $s1, $zero
    /* CC408 800DBC08 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC40C 800DBC0C FCFF1416 */  bne        $s0, $s4, .L800DBC00
    /* CC410 800DBC10 94003126 */   addiu     $s1, $s1, 0x94
    /* CC414 800DBC14 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* CC418 800DBC18 F7FF5416 */  bne        $s2, $s4, .L800DBBF8
    /* CC41C 800DBC1C 94007326 */   addiu     $s3, $s3, 0x94
    /* CC420 800DBC20 1280113C */  lui        $s1, %hi(D_80123710)
    /* CC424 800DBC24 10373126 */  addiu      $s1, $s1, %lo(D_80123710)
    /* CC428 800DBC28 0F001024 */  addiu      $s0, $zero, 0xF
    /* CC42C 800DBC2C FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DBC30:
    /* CC430 800DBC30 FCEC030C */  jal        func_800FB3F0
    /* CC434 800DBC34 21202002 */   addu      $a0, $s1, $zero
    /* CC438 800DBC38 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC43C 800DBC3C FCFF1216 */  bne        $s0, $s2, .L800DBC30
    /* CC440 800DBC40 94003126 */   addiu     $s1, $s1, 0x94
    /* CC444 800DBC44 1280113C */  lui        $s1, %hi(D_80124050)
    /* CC448 800DBC48 50403126 */  addiu      $s1, $s1, %lo(D_80124050)
    /* CC44C 800DBC4C 0F001024 */  addiu      $s0, $zero, 0xF
    /* CC450 800DBC50 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DBC54:
    /* CC454 800DBC54 FCEC030C */  jal        func_800FB3F0
    /* CC458 800DBC58 21202002 */   addu      $a0, $s1, $zero
    /* CC45C 800DBC5C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC460 800DBC60 FCFF1216 */  bne        $s0, $s2, .L800DBC54
    /* CC464 800DBC64 94003126 */   addiu     $s1, $s1, 0x94
    /* CC468 800DBC68 1280113C */  lui        $s1, %hi(D_80124990)
    /* CC46C 800DBC6C 90493126 */  addiu      $s1, $s1, %lo(D_80124990)
    /* CC470 800DBC70 0F001024 */  addiu      $s0, $zero, 0xF
    /* CC474 800DBC74 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DBC78:
    /* CC478 800DBC78 FCEC030C */  jal        func_800FB3F0
    /* CC47C 800DBC7C 21202002 */   addu      $a0, $s1, $zero
    /* CC480 800DBC80 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC484 800DBC84 FCFF1216 */  bne        $s0, $s2, .L800DBC78
    /* CC488 800DBC88 94003126 */   addiu     $s1, $s1, 0x94
    /* CC48C 800DBC8C 1280113C */  lui        $s1, %hi(D_801252D0)
    /* CC490 800DBC90 D0523126 */  addiu      $s1, $s1, %lo(D_801252D0)
    /* CC494 800DBC94 0F001024 */  addiu      $s0, $zero, 0xF
    /* CC498 800DBC98 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DBC9C:
    /* CC49C 800DBC9C FCEC030C */  jal        func_800FB3F0
    /* CC4A0 800DBCA0 21202002 */   addu      $a0, $s1, $zero
    /* CC4A4 800DBCA4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC4A8 800DBCA8 FCFF1216 */  bne        $s0, $s2, .L800DBC9C
    /* CC4AC 800DBCAC 94003126 */   addiu     $s1, $s1, 0x94
    /* CC4B0 800DBCB0 1280043C */  lui        $a0, %hi(D_80125C10)
    /* CC4B4 800DBCB4 105C8424 */  addiu      $a0, $a0, %lo(D_80125C10)
    /* CC4B8 800DBCB8 FCEC030C */  jal        func_800FB3F0
    /* CC4BC 800DBCBC 01001024 */   addiu     $s0, $zero, 0x1
    /* CC4C0 800DBCC0 1280113C */  lui        $s1, %hi(D_80125CA4)
    /* CC4C4 800DBCC4 A45C3126 */  addiu      $s1, $s1, %lo(D_80125CA4)
    /* CC4C8 800DBCC8 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DBCCC:
    /* CC4CC 800DBCCC FCEC030C */  jal        func_800FB3F0
    /* CC4D0 800DBCD0 21202002 */   addu      $a0, $s1, $zero
    /* CC4D4 800DBCD4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC4D8 800DBCD8 FCFF1216 */  bne        $s0, $s2, .L800DBCCC
    /* CC4DC 800DBCDC 94003126 */   addiu     $s1, $s1, 0x94
    /* CC4E0 800DBCE0 1280043C */  lui        $a0, %hi(D_80125DCC)
    /* CC4E4 800DBCE4 CC5D8424 */  addiu      $a0, $a0, %lo(D_80125DCC)
    /* CC4E8 800DBCE8 FCEC030C */  jal        func_800FB3F0
    /* CC4EC 800DBCEC 07001224 */   addiu     $s2, $zero, 0x7
    /* CC4F0 800DBCF0 1280043C */  lui        $a0, %hi(D_80125E60)
    /* CC4F4 800DBCF4 605E8424 */  addiu      $a0, $a0, %lo(D_80125E60)
    /* CC4F8 800DBCF8 FCEC030C */  jal        func_800FB3F0
    /* CC4FC 800DBCFC FFFF1424 */   addiu     $s4, $zero, -0x1
    /* CC500 800DBD00 1280043C */  lui        $a0, %hi(D_80125EF4)
    /* CC504 800DBD04 F45E8424 */  addiu      $a0, $a0, %lo(D_80125EF4)
    /* CC508 800DBD08 FCEC030C */  jal        func_800FB3F0
    /* CC50C 800DBD0C 00000000 */   nop
    /* CC510 800DBD10 1280133C */  lui        $s3, %hi(D_80125F88)
    /* CC514 800DBD14 885F7326 */  addiu      $s3, $s3, %lo(D_80125F88)
  .L800DBD18:
    /* CC518 800DBD18 21886002 */  addu       $s1, $s3, $zero
    /* CC51C 800DBD1C 03001024 */  addiu      $s0, $zero, 0x3
  .L800DBD20:
    /* CC520 800DBD20 FCEC030C */  jal        func_800FB3F0
    /* CC524 800DBD24 21202002 */   addu      $a0, $s1, $zero
    /* CC528 800DBD28 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC52C 800DBD2C FCFF1416 */  bne        $s0, $s4, .L800DBD20
    /* CC530 800DBD30 94003126 */   addiu     $s1, $s1, 0x94
    /* CC534 800DBD34 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* CC538 800DBD38 F7FF5416 */  bne        $s2, $s4, .L800DBD18
    /* CC53C 800DBD3C 50027326 */   addiu     $s3, $s3, 0x250
    /* CC540 800DBD40 1280113C */  lui        $s1, %hi(D_80127208)
    /* CC544 800DBD44 08723126 */  addiu      $s1, $s1, %lo(D_80127208)
    /* CC548 800DBD48 03001024 */  addiu      $s0, $zero, 0x3
    /* CC54C 800DBD4C FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DBD50:
    /* CC550 800DBD50 FCEC030C */  jal        func_800FB3F0
    /* CC554 800DBD54 21202002 */   addu      $a0, $s1, $zero
    /* CC558 800DBD58 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC55C 800DBD5C FCFF1216 */  bne        $s0, $s2, .L800DBD50
    /* CC560 800DBD60 94003126 */   addiu     $s1, $s1, 0x94
    /* CC564 800DBD64 1280133C */  lui        $s3, %hi(D_80127458)
    /* CC568 800DBD68 58747326 */  addiu      $s3, $s3, %lo(D_80127458)
    /* CC56C 800DBD6C 01001224 */  addiu      $s2, $zero, 0x1
    /* CC570 800DBD70 FFFF1424 */  addiu      $s4, $zero, -0x1
  .L800DBD74:
    /* CC574 800DBD74 21886002 */  addu       $s1, $s3, $zero
    /* CC578 800DBD78 08001024 */  addiu      $s0, $zero, 0x8
  .L800DBD7C:
    /* CC57C 800DBD7C FCEC030C */  jal        func_800FB3F0
    /* CC580 800DBD80 21202002 */   addu      $a0, $s1, $zero
    /* CC584 800DBD84 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC588 800DBD88 FCFF1416 */  bne        $s0, $s4, .L800DBD7C
    /* CC58C 800DBD8C 94003126 */   addiu     $s1, $s1, 0x94
    /* CC590 800DBD90 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* CC594 800DBD94 F7FF5416 */  bne        $s2, $s4, .L800DBD74
    /* CC598 800DBD98 34057326 */   addiu     $s3, $s3, 0x534
    /* CC59C 800DBD9C 1280113C */  lui        $s1, %hi(D_80127EC0)
    /* CC5A0 800DBDA0 C07E3126 */  addiu      $s1, $s1, %lo(D_80127EC0)
    /* CC5A4 800DBDA4 02001024 */  addiu      $s0, $zero, 0x2
    /* CC5A8 800DBDA8 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DBDAC:
    /* CC5AC 800DBDAC FCEC030C */  jal        func_800FB3F0
    /* CC5B0 800DBDB0 21202002 */   addu      $a0, $s1, $zero
    /* CC5B4 800DBDB4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC5B8 800DBDB8 FCFF1216 */  bne        $s0, $s2, .L800DBDAC
    /* CC5BC 800DBDBC 94003126 */   addiu     $s1, $s1, 0x94
    /* CC5C0 800DBDC0 1380043C */  lui        $a0, %hi(D_8012807C)
    /* CC5C4 800DBDC4 7C808424 */  addiu      $a0, $a0, %lo(D_8012807C)
    /* CC5C8 800DBDC8 FCEC030C */  jal        func_800FB3F0
    /* CC5CC 800DBDCC 0A001224 */   addiu     $s2, $zero, 0xA
    /* CC5D0 800DBDD0 1380043C */  lui        $a0, %hi(D_80128110)
    /* CC5D4 800DBDD4 10818424 */  addiu      $a0, $a0, %lo(D_80128110)
    /* CC5D8 800DBDD8 FCEC030C */  jal        func_800FB3F0
    /* CC5DC 800DBDDC FFFF1424 */   addiu     $s4, $zero, -0x1
    /* CC5E0 800DBDE0 1380133C */  lui        $s3, %hi(D_801281A4)
    /* CC5E4 800DBDE4 A4817326 */  addiu      $s3, $s3, %lo(D_801281A4)
  .L800DBDE8:
    /* CC5E8 800DBDE8 21886002 */  addu       $s1, $s3, $zero
    /* CC5EC 800DBDEC 01001024 */  addiu      $s0, $zero, 0x1
  .L800DBDF0:
    /* CC5F0 800DBDF0 FCEC030C */  jal        func_800FB3F0
    /* CC5F4 800DBDF4 21202002 */   addu      $a0, $s1, $zero
    /* CC5F8 800DBDF8 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC5FC 800DBDFC FCFF1416 */  bne        $s0, $s4, .L800DBDF0
    /* CC600 800DBE00 94003126 */   addiu     $s1, $s1, 0x94
    /* CC604 800DBE04 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* CC608 800DBE08 F7FF5416 */  bne        $s2, $s4, .L800DBDE8
    /* CC60C 800DBE0C 28017326 */   addiu     $s3, $s3, 0x128
    /* CC610 800DBE10 1380113C */  lui        $s1, %hi(D_80128E5C)
    /* CC614 800DBE14 5C8E3126 */  addiu      $s1, $s1, %lo(D_80128E5C)
    /* CC618 800DBE18 01001024 */  addiu      $s0, $zero, 0x1
    /* CC61C 800DBE1C FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DBE20:
    /* CC620 800DBE20 FCEC030C */  jal        func_800FB3F0
    /* CC624 800DBE24 21202002 */   addu      $a0, $s1, $zero
    /* CC628 800DBE28 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC62C 800DBE2C FCFF1216 */  bne        $s0, $s2, .L800DBE20
    /* CC630 800DBE30 94003126 */   addiu     $s1, $s1, 0x94
    /* CC634 800DBE34 1380043C */  lui        $a0, %hi(D_80128F84)
    /* CC638 800DBE38 848F8424 */  addiu      $a0, $a0, %lo(D_80128F84)
    /* CC63C 800DBE3C FCEC030C */  jal        func_800FB3F0
    /* CC640 800DBE40 0A001024 */   addiu     $s0, $zero, 0xA
    /* CC644 800DBE44 1380043C */  lui        $a0, %hi(D_80129018)
    /* CC648 800DBE48 18908424 */  addiu      $a0, $a0, %lo(D_80129018)
    /* CC64C 800DBE4C FCEC030C */  jal        func_800FB3F0
    /* CC650 800DBE50 FFFF1224 */   addiu     $s2, $zero, -0x1
    /* CC654 800DBE54 1380043C */  lui        $a0, %hi(D_801290AC)
    /* CC658 800DBE58 AC908424 */  addiu      $a0, $a0, %lo(D_801290AC)
    /* CC65C 800DBE5C FCEC030C */  jal        func_800FB3F0
    /* CC660 800DBE60 00000000 */   nop
    /* CC664 800DBE64 1380043C */  lui        $a0, %hi(D_80129140)
    /* CC668 800DBE68 40918424 */  addiu      $a0, $a0, %lo(D_80129140)
    /* CC66C 800DBE6C FCEC030C */  jal        func_800FB3F0
    /* CC670 800DBE70 00000000 */   nop
    /* CC674 800DBE74 1380043C */  lui        $a0, %hi(D_801291D4)
    /* CC678 800DBE78 D4918424 */  addiu      $a0, $a0, %lo(D_801291D4)
    /* CC67C 800DBE7C FCEC030C */  jal        func_800FB3F0
    /* CC680 800DBE80 00000000 */   nop
    /* CC684 800DBE84 1380043C */  lui        $a0, %hi(D_80129268)
    /* CC688 800DBE88 68928424 */  addiu      $a0, $a0, %lo(D_80129268)
    /* CC68C 800DBE8C FCEC030C */  jal        func_800FB3F0
    /* CC690 800DBE90 00000000 */   nop
    /* CC694 800DBE94 1380113C */  lui        $s1, %hi(D_801292FC)
    /* CC698 800DBE98 FC923126 */  addiu      $s1, $s1, %lo(D_801292FC)
  .L800DBE9C:
    /* CC69C 800DBE9C FCEC030C */  jal        func_800FB3F0
    /* CC6A0 800DBEA0 21202002 */   addu      $a0, $s1, $zero
    /* CC6A4 800DBEA4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC6A8 800DBEA8 FCFF1216 */  bne        $s0, $s2, .L800DBE9C
    /* CC6AC 800DBEAC 94003126 */   addiu     $s1, $s1, 0x94
    /* CC6B0 800DBEB0 1380043C */  lui        $a0, %hi(D_80129958)
    /* CC6B4 800DBEB4 58998424 */  addiu      $a0, $a0, %lo(D_80129958)
    /* CC6B8 800DBEB8 FCEC030C */  jal        func_800FB3F0
    /* CC6BC 800DBEBC 05001524 */   addiu     $s5, $zero, 0x5
    /* CC6C0 800DBEC0 1380043C */  lui        $a0, %hi(D_801299EC)
    /* CC6C4 800DBEC4 EC998424 */  addiu      $a0, $a0, %lo(D_801299EC)
    /* CC6C8 800DBEC8 FCEC030C */  jal        func_800FB3F0
    /* CC6CC 800DBECC FFFF1424 */   addiu     $s4, $zero, -0x1
    /* CC6D0 800DBED0 1380163C */  lui        $s6, %hi(D_80129A80)
    /* CC6D4 800DBED4 809AD626 */  addiu      $s6, $s6, %lo(D_80129A80)
  .L800DBED8:
    /* CC6D8 800DBED8 2198C002 */  addu       $s3, $s6, $zero
    /* CC6DC 800DBEDC 03001224 */  addiu      $s2, $zero, 0x3
  .L800DBEE0:
    /* CC6E0 800DBEE0 21886002 */  addu       $s1, $s3, $zero
    /* CC6E4 800DBEE4 01001024 */  addiu      $s0, $zero, 0x1
  .L800DBEE8:
    /* CC6E8 800DBEE8 FCEC030C */  jal        func_800FB3F0
    /* CC6EC 800DBEEC 21202002 */   addu      $a0, $s1, $zero
    /* CC6F0 800DBEF0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC6F4 800DBEF4 FCFF1416 */  bne        $s0, $s4, .L800DBEE8
    /* CC6F8 800DBEF8 94003126 */   addiu     $s1, $s1, 0x94
    /* CC6FC 800DBEFC FFFF5226 */  addiu      $s2, $s2, -0x1
    /* CC700 800DBF00 F7FF5416 */  bne        $s2, $s4, .L800DBEE0
    /* CC704 800DBF04 28017326 */   addiu     $s3, $s3, 0x128
    /* CC708 800DBF08 FFFFB526 */  addiu      $s5, $s5, -0x1
    /* CC70C 800DBF0C F2FFB416 */  bne        $s5, $s4, .L800DBED8
    /* CC710 800DBF10 A004D626 */   addiu     $s6, $s6, 0x4A0
    /* CC714 800DBF14 1380133C */  lui        $s3, %hi(D_8012B640)
    /* CC718 800DBF18 40B67326 */  addiu      $s3, $s3, %lo(D_8012B640)
    /* CC71C 800DBF1C 07001224 */  addiu      $s2, $zero, 0x7
    /* CC720 800DBF20 FFFF1424 */  addiu      $s4, $zero, -0x1
  .L800DBF24:
    /* CC724 800DBF24 21886002 */  addu       $s1, $s3, $zero
    /* CC728 800DBF28 01001024 */  addiu      $s0, $zero, 0x1
  .L800DBF2C:
    /* CC72C 800DBF2C FCEC030C */  jal        func_800FB3F0
    /* CC730 800DBF30 21202002 */   addu      $a0, $s1, $zero
    /* CC734 800DBF34 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC738 800DBF38 FCFF1416 */  bne        $s0, $s4, .L800DBF2C
    /* CC73C 800DBF3C 94003126 */   addiu     $s1, $s1, 0x94
    /* CC740 800DBF40 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* CC744 800DBF44 F7FF5416 */  bne        $s2, $s4, .L800DBF24
    /* CC748 800DBF48 28017326 */   addiu     $s3, $s3, 0x128
    /* CC74C 800DBF4C 1380113C */  lui        $s1, %hi(D_8012BF80)
    /* CC750 800DBF50 80BF3126 */  addiu      $s1, $s1, %lo(D_8012BF80)
    /* CC754 800DBF54 36001024 */  addiu      $s0, $zero, 0x36
    /* CC758 800DBF58 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DBF5C:
    /* CC75C 800DBF5C FCEC030C */  jal        func_800FB3F0
    /* CC760 800DBF60 21202002 */   addu      $a0, $s1, $zero
    /* CC764 800DBF64 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC768 800DBF68 FCFF1216 */  bne        $s0, $s2, .L800DBF5C
    /* CC76C 800DBF6C 94003126 */   addiu     $s1, $s1, 0x94
    /* CC770 800DBF70 1380113C */  lui        $s1, %hi(D_8012DF4C)
    /* CC774 800DBF74 4CDF3126 */  addiu      $s1, $s1, %lo(D_8012DF4C)
    /* CC778 800DBF78 07001024 */  addiu      $s0, $zero, 0x7
    /* CC77C 800DBF7C FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DBF80:
    /* CC780 800DBF80 FCEC030C */  jal        func_800FB3F0
    /* CC784 800DBF84 21202002 */   addu      $a0, $s1, $zero
    /* CC788 800DBF88 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC78C 800DBF8C FCFF1216 */  bne        $s0, $s2, .L800DBF80
    /* CC790 800DBF90 94003126 */   addiu     $s1, $s1, 0x94
    /* CC794 800DBF94 1380133C */  lui        $s3, %hi(D_8012E3EC)
    /* CC798 800DBF98 ECE37326 */  addiu      $s3, $s3, %lo(D_8012E3EC)
    /* CC79C 800DBF9C 03001224 */  addiu      $s2, $zero, 0x3
    /* CC7A0 800DBFA0 FFFF1424 */  addiu      $s4, $zero, -0x1
  .L800DBFA4:
    /* CC7A4 800DBFA4 21886002 */  addu       $s1, $s3, $zero
    /* CC7A8 800DBFA8 0A001024 */  addiu      $s0, $zero, 0xA
  .L800DBFAC:
    /* CC7AC 800DBFAC FCEC030C */  jal        func_800FB3F0
    /* CC7B0 800DBFB0 21202002 */   addu      $a0, $s1, $zero
    /* CC7B4 800DBFB4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC7B8 800DBFB8 FCFF1416 */  bne        $s0, $s4, .L800DBFAC
    /* CC7BC 800DBFBC 94003126 */   addiu     $s1, $s1, 0x94
    /* CC7C0 800DBFC0 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* CC7C4 800DBFC4 F7FF5416 */  bne        $s2, $s4, .L800DBFA4
    /* CC7C8 800DBFC8 5C067326 */   addiu     $s3, $s3, 0x65C
    /* CC7CC 800DBFCC 1380113C */  lui        $s1, %hi(D_8012FD5C)
    /* CC7D0 800DBFD0 5CFD3126 */  addiu      $s1, $s1, %lo(D_8012FD5C)
    /* CC7D4 800DBFD4 0A001024 */  addiu      $s0, $zero, 0xA
    /* CC7D8 800DBFD8 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DBFDC:
    /* CC7DC 800DBFDC FCEC030C */  jal        func_800FB3F0
    /* CC7E0 800DBFE0 21202002 */   addu      $a0, $s1, $zero
    /* CC7E4 800DBFE4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC7E8 800DBFE8 FCFF1216 */  bne        $s0, $s2, .L800DBFDC
    /* CC7EC 800DBFEC 94003126 */   addiu     $s1, $s1, 0x94
    /* CC7F0 800DBFF0 1380133C */  lui        $s3, %hi(D_801303B8)
    /* CC7F4 800DBFF4 B8037326 */  addiu      $s3, $s3, %lo(D_801303B8)
    /* CC7F8 800DBFF8 02001224 */  addiu      $s2, $zero, 0x2
    /* CC7FC 800DBFFC FFFF1424 */  addiu      $s4, $zero, -0x1
  .L800DC000:
    /* CC800 800DC000 21886002 */  addu       $s1, $s3, $zero
    /* CC804 800DC004 01001024 */  addiu      $s0, $zero, 0x1
  .L800DC008:
    /* CC808 800DC008 FCEC030C */  jal        func_800FB3F0
    /* CC80C 800DC00C 21202002 */   addu      $a0, $s1, $zero
    /* CC810 800DC010 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC814 800DC014 FCFF1416 */  bne        $s0, $s4, .L800DC008
    /* CC818 800DC018 94003126 */   addiu     $s1, $s1, 0x94
    /* CC81C 800DC01C FFFF5226 */  addiu      $s2, $s2, -0x1
    /* CC820 800DC020 F7FF5416 */  bne        $s2, $s4, .L800DC000
    /* CC824 800DC024 28017326 */   addiu     $s3, $s3, 0x128
    /* CC828 800DC028 1380113C */  lui        $s1, %hi(D_80130730)
    /* CC82C 800DC02C 30073126 */  addiu      $s1, $s1, %lo(D_80130730)
    /* CC830 800DC030 02001024 */  addiu      $s0, $zero, 0x2
    /* CC834 800DC034 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC038:
    /* CC838 800DC038 FCEC030C */  jal        func_800FB3F0
    /* CC83C 800DC03C 21202002 */   addu      $a0, $s1, $zero
    /* CC840 800DC040 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC844 800DC044 FCFF1216 */  bne        $s0, $s2, .L800DC038
    /* CC848 800DC048 94003126 */   addiu     $s1, $s1, 0x94
    /* CC84C 800DC04C 1380113C */  lui        $s1, %hi(D_801308EC)
    /* CC850 800DC050 EC083126 */  addiu      $s1, $s1, %lo(D_801308EC)
    /* CC854 800DC054 02001024 */  addiu      $s0, $zero, 0x2
    /* CC858 800DC058 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC05C:
    /* CC85C 800DC05C FCEC030C */  jal        func_800FB3F0
    /* CC860 800DC060 21202002 */   addu      $a0, $s1, $zero
    /* CC864 800DC064 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC868 800DC068 FCFF1216 */  bne        $s0, $s2, .L800DC05C
    /* CC86C 800DC06C 94003126 */   addiu     $s1, $s1, 0x94
    /* CC870 800DC070 1380113C */  lui        $s1, %hi(D_80130AA8)
    /* CC874 800DC074 A80A3126 */  addiu      $s1, $s1, %lo(D_80130AA8)
    /* CC878 800DC078 02001024 */  addiu      $s0, $zero, 0x2
    /* CC87C 800DC07C FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC080:
    /* CC880 800DC080 FCEC030C */  jal        func_800FB3F0
    /* CC884 800DC084 21202002 */   addu      $a0, $s1, $zero
    /* CC888 800DC088 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC88C 800DC08C FCFF1216 */  bne        $s0, $s2, .L800DC080
    /* CC890 800DC090 94003126 */   addiu     $s1, $s1, 0x94
    /* CC894 800DC094 1380043C */  lui        $a0, %hi(D_80130C64)
    /* CC898 800DC098 640C8424 */  addiu      $a0, $a0, %lo(D_80130C64)
    /* CC89C 800DC09C FCEC030C */  jal        func_800FB3F0
    /* CC8A0 800DC0A0 03001024 */   addiu     $s0, $zero, 0x3
    /* CC8A4 800DC0A4 1380043C */  lui        $a0, %hi(D_80130CF8)
    /* CC8A8 800DC0A8 F80C8424 */  addiu      $a0, $a0, %lo(D_80130CF8)
    /* CC8AC 800DC0AC FCEC030C */  jal        func_800FB3F0
    /* CC8B0 800DC0B0 FFFF1224 */   addiu     $s2, $zero, -0x1
    /* CC8B4 800DC0B4 1380113C */  lui        $s1, %hi(D_80130D8C)
    /* CC8B8 800DC0B8 8C0D3126 */  addiu      $s1, $s1, %lo(D_80130D8C)
  .L800DC0BC:
    /* CC8BC 800DC0BC FCEC030C */  jal        func_800FB3F0
    /* CC8C0 800DC0C0 21202002 */   addu      $a0, $s1, $zero
    /* CC8C4 800DC0C4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC8C8 800DC0C8 FCFF1216 */  bne        $s0, $s2, .L800DC0BC
    /* CC8CC 800DC0CC 94003126 */   addiu     $s1, $s1, 0x94
    /* CC8D0 800DC0D0 1380113C */  lui        $s1, %hi(D_80130FDC)
    /* CC8D4 800DC0D4 DC0F3126 */  addiu      $s1, $s1, %lo(D_80130FDC)
    /* CC8D8 800DC0D8 03001024 */  addiu      $s0, $zero, 0x3
    /* CC8DC 800DC0DC FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC0E0:
    /* CC8E0 800DC0E0 FCEC030C */  jal        func_800FB3F0
    /* CC8E4 800DC0E4 21202002 */   addu      $a0, $s1, $zero
    /* CC8E8 800DC0E8 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC8EC 800DC0EC FCFF1216 */  bne        $s0, $s2, .L800DC0E0
    /* CC8F0 800DC0F0 94003126 */   addiu     $s1, $s1, 0x94
    /* CC8F4 800DC0F4 1380133C */  lui        $s3, %hi(D_8013122C)
    /* CC8F8 800DC0F8 2C127326 */  addiu      $s3, $s3, %lo(D_8013122C)
    /* CC8FC 800DC0FC 02001224 */  addiu      $s2, $zero, 0x2
    /* CC900 800DC100 FFFF1424 */  addiu      $s4, $zero, -0x1
  .L800DC104:
    /* CC904 800DC104 21886002 */  addu       $s1, $s3, $zero
    /* CC908 800DC108 01001024 */  addiu      $s0, $zero, 0x1
  .L800DC10C:
    /* CC90C 800DC10C FCEC030C */  jal        func_800FB3F0
    /* CC910 800DC110 21202002 */   addu      $a0, $s1, $zero
    /* CC914 800DC114 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC918 800DC118 FCFF1416 */  bne        $s0, $s4, .L800DC10C
    /* CC91C 800DC11C 94003126 */   addiu     $s1, $s1, 0x94
    /* CC920 800DC120 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* CC924 800DC124 F7FF5416 */  bne        $s2, $s4, .L800DC104
    /* CC928 800DC128 28017326 */   addiu     $s3, $s3, 0x128
    /* CC92C 800DC12C 1380043C */  lui        $a0, %hi(D_801315A4)
    /* CC930 800DC130 A4158424 */  addiu      $a0, $a0, %lo(D_801315A4)
    /* CC934 800DC134 FCEC030C */  jal        func_800FB3F0
    /* CC938 800DC138 26001024 */   addiu     $s0, $zero, 0x26
    /* CC93C 800DC13C 1380113C */  lui        $s1, %hi(D_80131638)
    /* CC940 800DC140 38163126 */  addiu      $s1, $s1, %lo(D_80131638)
    /* CC944 800DC144 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC148:
    /* CC948 800DC148 FCEC030C */  jal        func_800FB3F0
    /* CC94C 800DC14C 21202002 */   addu      $a0, $s1, $zero
    /* CC950 800DC150 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC954 800DC154 FCFF1216 */  bne        $s0, $s2, .L800DC148
    /* CC958 800DC158 94003126 */   addiu     $s1, $s1, 0x94
    /* CC95C 800DC15C 1380113C */  lui        $s1, %hi(D_80132CC4)
    /* CC960 800DC160 C42C3126 */  addiu      $s1, $s1, %lo(D_80132CC4)
    /* CC964 800DC164 1B001024 */  addiu      $s0, $zero, 0x1B
    /* CC968 800DC168 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC16C:
    /* CC96C 800DC16C FCEC030C */  jal        func_800FB3F0
    /* CC970 800DC170 21202002 */   addu      $a0, $s1, $zero
    /* CC974 800DC174 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC978 800DC178 FCFF1216 */  bne        $s0, $s2, .L800DC16C
    /* CC97C 800DC17C 94003126 */   addiu     $s1, $s1, 0x94
    /* CC980 800DC180 1380133C */  lui        $s3, %hi(D_80133CF4)
    /* CC984 800DC184 F43C7326 */  addiu      $s3, $s3, %lo(D_80133CF4)
    /* CC988 800DC188 04001224 */  addiu      $s2, $zero, 0x4
    /* CC98C 800DC18C FFFF1424 */  addiu      $s4, $zero, -0x1
  .L800DC190:
    /* CC990 800DC190 21886002 */  addu       $s1, $s3, $zero
    /* CC994 800DC194 03001024 */  addiu      $s0, $zero, 0x3
  .L800DC198:
    /* CC998 800DC198 FCEC030C */  jal        func_800FB3F0
    /* CC99C 800DC19C 21202002 */   addu      $a0, $s1, $zero
    /* CC9A0 800DC1A0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC9A4 800DC1A4 FCFF1416 */  bne        $s0, $s4, .L800DC198
    /* CC9A8 800DC1A8 94003126 */   addiu     $s1, $s1, 0x94
    /* CC9AC 800DC1AC FFFF5226 */  addiu      $s2, $s2, -0x1
    /* CC9B0 800DC1B0 F7FF5416 */  bne        $s2, $s4, .L800DC190
    /* CC9B4 800DC1B4 50027326 */   addiu     $s3, $s3, 0x250
    /* CC9B8 800DC1B8 1380113C */  lui        $s1, %hi(D_80134884)
    /* CC9BC 800DC1BC 84483126 */  addiu      $s1, $s1, %lo(D_80134884)
    /* CC9C0 800DC1C0 07001024 */  addiu      $s0, $zero, 0x7
    /* CC9C4 800DC1C4 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC1C8:
    /* CC9C8 800DC1C8 FCEC030C */  jal        func_800FB3F0
    /* CC9CC 800DC1CC 21202002 */   addu      $a0, $s1, $zero
    /* CC9D0 800DC1D0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CC9D4 800DC1D4 FCFF1216 */  bne        $s0, $s2, .L800DC1C8
    /* CC9D8 800DC1D8 94003126 */   addiu     $s1, $s1, 0x94
    /* CC9DC 800DC1DC 1380043C */  lui        $a0, %hi(D_80134D24)
    /* CC9E0 800DC1E0 244D8424 */  addiu      $a0, $a0, %lo(D_80134D24)
    /* CC9E4 800DC1E4 FCEC030C */  jal        func_800FB3F0
    /* CC9E8 800DC1E8 03001024 */   addiu     $s0, $zero, 0x3
    /* CC9EC 800DC1EC 1380113C */  lui        $s1, %hi(D_80134DB8)
    /* CC9F0 800DC1F0 B84D3126 */  addiu      $s1, $s1, %lo(D_80134DB8)
    /* CC9F4 800DC1F4 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC1F8:
    /* CC9F8 800DC1F8 FCEC030C */  jal        func_800FB3F0
    /* CC9FC 800DC1FC 21202002 */   addu      $a0, $s1, $zero
    /* CCA00 800DC200 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CCA04 800DC204 FCFF1216 */  bne        $s0, $s2, .L800DC1F8
    /* CCA08 800DC208 94003126 */   addiu     $s1, $s1, 0x94
    /* CCA0C 800DC20C 1380113C */  lui        $s1, %hi(D_80135008)
    /* CCA10 800DC210 08503126 */  addiu      $s1, $s1, %lo(D_80135008)
    /* CCA14 800DC214 06001024 */  addiu      $s0, $zero, 0x6
    /* CCA18 800DC218 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC21C:
    /* CCA1C 800DC21C FCEC030C */  jal        func_800FB3F0
    /* CCA20 800DC220 21202002 */   addu      $a0, $s1, $zero
    /* CCA24 800DC224 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CCA28 800DC228 FCFF1216 */  bne        $s0, $s2, .L800DC21C
    /* CCA2C 800DC22C 94003126 */   addiu     $s1, $s1, 0x94
    /* CCA30 800DC230 1380113C */  lui        $s1, %hi(D_80135414)
    /* CCA34 800DC234 14543126 */  addiu      $s1, $s1, %lo(D_80135414)
    /* CCA38 800DC238 07001024 */  addiu      $s0, $zero, 0x7
    /* CCA3C 800DC23C FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC240:
    /* CCA40 800DC240 FCEC030C */  jal        func_800FB3F0
    /* CCA44 800DC244 21202002 */   addu      $a0, $s1, $zero
    /* CCA48 800DC248 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CCA4C 800DC24C FCFF1216 */  bne        $s0, $s2, .L800DC240
    /* CCA50 800DC250 94003126 */   addiu     $s1, $s1, 0x94
    /* CCA54 800DC254 1380043C */  lui        $a0, %hi(D_801358B4)
    /* CCA58 800DC258 B4588424 */  addiu      $a0, $a0, %lo(D_801358B4)
    /* CCA5C 800DC25C FCEC030C */  jal        func_800FB3F0
    /* CCA60 800DC260 15001024 */   addiu     $s0, $zero, 0x15
    /* CCA64 800DC264 1380043C */  lui        $a0, %hi(D_80135948)
    /* CCA68 800DC268 48598424 */  addiu      $a0, $a0, %lo(D_80135948)
    /* CCA6C 800DC26C FCEC030C */  jal        func_800FB3F0
    /* CCA70 800DC270 FFFF1224 */   addiu     $s2, $zero, -0x1
    /* CCA74 800DC274 1380043C */  lui        $a0, %hi(D_801359DC)
    /* CCA78 800DC278 DC598424 */  addiu      $a0, $a0, %lo(D_801359DC)
    /* CCA7C 800DC27C FCEC030C */  jal        func_800FB3F0
    /* CCA80 800DC280 00000000 */   nop
    /* CCA84 800DC284 1380043C */  lui        $a0, %hi(D_80135A70)
    /* CCA88 800DC288 705A8424 */  addiu      $a0, $a0, %lo(D_80135A70)
    /* CCA8C 800DC28C FCEC030C */  jal        func_800FB3F0
    /* CCA90 800DC290 00000000 */   nop
    /* CCA94 800DC294 1380043C */  lui        $a0, %hi(D_80135B04)
    /* CCA98 800DC298 045B8424 */  addiu      $a0, $a0, %lo(D_80135B04)
    /* CCA9C 800DC29C FCEC030C */  jal        func_800FB3F0
    /* CCAA0 800DC2A0 00000000 */   nop
    /* CCAA4 800DC2A4 1380043C */  lui        $a0, %hi(D_80135B98)
    /* CCAA8 800DC2A8 985B8424 */  addiu      $a0, $a0, %lo(D_80135B98)
    /* CCAAC 800DC2AC FCEC030C */  jal        func_800FB3F0
    /* CCAB0 800DC2B0 00000000 */   nop
    /* CCAB4 800DC2B4 1380043C */  lui        $a0, %hi(D_80135C2C)
    /* CCAB8 800DC2B8 2C5C8424 */  addiu      $a0, $a0, %lo(D_80135C2C)
    /* CCABC 800DC2BC FCEC030C */  jal        func_800FB3F0
    /* CCAC0 800DC2C0 00000000 */   nop
    /* CCAC4 800DC2C4 1380113C */  lui        $s1, %hi(D_80135CC0)
    /* CCAC8 800DC2C8 C05C3126 */  addiu      $s1, $s1, %lo(D_80135CC0)
  .L800DC2CC:
    /* CCACC 800DC2CC FCEC030C */  jal        func_800FB3F0
    /* CCAD0 800DC2D0 21202002 */   addu      $a0, $s1, $zero
    /* CCAD4 800DC2D4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CCAD8 800DC2D8 FCFF1216 */  bne        $s0, $s2, .L800DC2CC
    /* CCADC 800DC2DC 94003126 */   addiu     $s1, $s1, 0x94
    /* CCAE0 800DC2E0 1380113C */  lui        $s1, %hi(D_80136978)
    /* CCAE4 800DC2E4 78693126 */  addiu      $s1, $s1, %lo(D_80136978)
    /* CCAE8 800DC2E8 13001024 */  addiu      $s0, $zero, 0x13
    /* CCAEC 800DC2EC FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC2F0:
    /* CCAF0 800DC2F0 FCEC030C */  jal        func_800FB3F0
    /* CCAF4 800DC2F4 21202002 */   addu      $a0, $s1, $zero
    /* CCAF8 800DC2F8 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CCAFC 800DC2FC FCFF1216 */  bne        $s0, $s2, .L800DC2F0
    /* CCB00 800DC300 94003126 */   addiu     $s1, $s1, 0x94
    /* CCB04 800DC304 1380113C */  lui        $s1, %hi(D_80137508)
    /* CCB08 800DC308 08753126 */  addiu      $s1, $s1, %lo(D_80137508)
    /* CCB0C 800DC30C 07001024 */  addiu      $s0, $zero, 0x7
    /* CCB10 800DC310 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC314:
    /* CCB14 800DC314 FCEC030C */  jal        func_800FB3F0
    /* CCB18 800DC318 21202002 */   addu      $a0, $s1, $zero
    /* CCB1C 800DC31C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CCB20 800DC320 FCFF1216 */  bne        $s0, $s2, .L800DC314
    /* CCB24 800DC324 94003126 */   addiu     $s1, $s1, 0x94
    /* CCB28 800DC328 1380113C */  lui        $s1, %hi(D_801379A8)
    /* CCB2C 800DC32C A8793126 */  addiu      $s1, $s1, %lo(D_801379A8)
    /* CCB30 800DC330 0B001024 */  addiu      $s0, $zero, 0xB
    /* CCB34 800DC334 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC338:
    /* CCB38 800DC338 FCEC030C */  jal        func_800FB3F0
    /* CCB3C 800DC33C 21202002 */   addu      $a0, $s1, $zero
    /* CCB40 800DC340 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CCB44 800DC344 FCFF1216 */  bne        $s0, $s2, .L800DC338
    /* CCB48 800DC348 94003126 */   addiu     $s1, $s1, 0x94
    /* CCB4C 800DC34C 1480113C */  lui        $s1, %hi(D_80138098)
    /* CCB50 800DC350 98803126 */  addiu      $s1, $s1, %lo(D_80138098)
    /* CCB54 800DC354 0A001024 */  addiu      $s0, $zero, 0xA
    /* CCB58 800DC358 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800DC35C:
    /* CCB5C 800DC35C FCEC030C */  jal        func_800FB3F0
    /* CCB60 800DC360 21202002 */   addu      $a0, $s1, $zero
    /* CCB64 800DC364 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* CCB68 800DC368 FCFF1216 */  bne        $s0, $s2, .L800DC35C
    /* CCB6C 800DC36C 94003126 */   addiu     $s1, $s1, 0x94
    /* CCB70 800DC370 1480043C */  lui        $a0, %hi(D_801386F4)
    /* CCB74 800DC374 F4868424 */  addiu      $a0, $a0, %lo(D_801386F4)
    /* CCB78 800DC378 9AE0030C */  jal        func_800F8268
    /* CCB7C 800DC37C 00000000 */   nop
    /* CCB80 800DC380 1480043C */  lui        $a0, %hi(D_80138720)
    /* CCB84 800DC384 20878424 */  addiu      $a0, $a0, %lo(D_80138720)
    /* CCB88 800DC388 9AE0030C */  jal        func_800F8268
    /* CCB8C 800DC38C 00000000 */   nop
    /* CCB90 800DC390 1680043C */  lui        $a0, %hi(D_8015EE88)
    /* CCB94 800DC394 88EE8424 */  addiu      $a0, $a0, %lo(D_8015EE88)
    /* CCB98 800DC398 9AE0030C */  jal        func_800F8268
    /* CCB9C 800DC39C 00000000 */   nop
    /* CCBA0 800DC3A0 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* CCBA4 800DC3A4 2800B68F */  lw         $s6, 0x28($sp)
    /* CCBA8 800DC3A8 2400B58F */  lw         $s5, 0x24($sp)
    /* CCBAC 800DC3AC 2000B48F */  lw         $s4, 0x20($sp)
    /* CCBB0 800DC3B0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* CCBB4 800DC3B4 1800B28F */  lw         $s2, 0x18($sp)
    /* CCBB8 800DC3B8 1400B18F */  lw         $s1, 0x14($sp)
    /* CCBBC 800DC3BC 1000B08F */  lw         $s0, 0x10($sp)
    /* CCBC0 800DC3C0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* CCBC4 800DC3C4 0800E003 */  jr         $ra
    /* CCBC8 800DC3C8 00000000 */   nop
endlabel func_800DBBA0
