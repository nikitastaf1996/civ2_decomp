.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A29C, 0xB8

glabel func_8001A29C
    /* AA9C 8001A29C 21200000 */  addu       $a0, $zero, $zero
    /* AAA0 8001A2A0 001C0400 */  sll        $v1, $a0, 16
  .L8001A2A4:
    /* AAA4 8001A2A4 031C0300 */  sra        $v1, $v1, 16
    /* AAA8 8001A2A8 C0100300 */  sll        $v0, $v1, 3
    /* AAAC 8001A2AC 21104300 */  addu       $v0, $v0, $v1
    /* AAB0 8001A2B0 80100200 */  sll        $v0, $v0, 2
    /* AAB4 8001A2B4 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* AAB8 8001A2B8 21082200 */  addu       $at, $at, $v0
    /* AABC 8001A2BC F4A020A0 */  sb         $zero, %lo(D_8012A0F4)($at)
    /* AAC0 8001A2C0 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* AAC4 8001A2C4 21082200 */  addu       $at, $at, $v0
    /* AAC8 8001A2C8 F5A020A0 */  sb         $zero, %lo(D_8012A0F5)($at)
    /* AACC 8001A2CC 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* AAD0 8001A2D0 21082200 */  addu       $at, $at, $v0
    /* AAD4 8001A2D4 F6A020A0 */  sb         $zero, %lo(D_8012A0F6)($at)
    /* AAD8 8001A2D8 01008224 */  addiu      $v0, $a0, 0x1
    /* AADC 8001A2DC 21204000 */  addu       $a0, $v0, $zero
    /* AAE0 8001A2E0 00140200 */  sll        $v0, $v0, 16
    /* AAE4 8001A2E4 03140200 */  sra        $v0, $v0, 16
    /* AAE8 8001A2E8 00074228 */  slti       $v0, $v0, 0x700
    /* AAEC 8001A2EC EDFF4014 */  bnez       $v0, .L8001A2A4
    /* AAF0 8001A2F0 001C0400 */   sll       $v1, $a0, 16
    /* AAF4 8001A2F4 21200000 */  addu       $a0, $zero, $zero
  .L8001A2F8:
    /* AAF8 8001A2F8 001C0400 */  sll        $v1, $a0, 16
    /* AAFC 8001A2FC 031C0300 */  sra        $v1, $v1, 16
    /* AB00 8001A300 C0100300 */  sll        $v0, $v1, 3
    /* AB04 8001A304 21104300 */  addu       $v0, $v0, $v1
    /* AB08 8001A308 80100200 */  sll        $v0, $v0, 2
    /* AB0C 8001A30C 1780013C */  lui        $at, %hi(D_80172E98)
    /* AB10 8001A310 21082200 */  addu       $at, $at, $v0
    /* AB14 8001A314 982E20A0 */  sb         $zero, %lo(D_80172E98)($at)
    /* AB18 8001A318 1780013C */  lui        $at, %hi(D_80172E99)
    /* AB1C 8001A31C 21082200 */  addu       $at, $at, $v0
    /* AB20 8001A320 992E20A0 */  sb         $zero, %lo(D_80172E99)($at)
    /* AB24 8001A324 1780013C */  lui        $at, %hi(D_80172E9A)
    /* AB28 8001A328 21082200 */  addu       $at, $at, $v0
    /* AB2C 8001A32C 9A2E20A0 */  sb         $zero, %lo(D_80172E9A)($at)
    /* AB30 8001A330 01008224 */  addiu      $v0, $a0, 0x1
    /* AB34 8001A334 21204000 */  addu       $a0, $v0, $zero
    /* AB38 8001A338 00140200 */  sll        $v0, $v0, 16
    /* AB3C 8001A33C 03140200 */  sra        $v0, $v0, 16
    /* AB40 8001A340 04004228 */  slti       $v0, $v0, 0x4
    /* AB44 8001A344 ECFF4014 */  bnez       $v0, .L8001A2F8
    /* AB48 8001A348 00000000 */   nop
    /* AB4C 8001A34C 0800E003 */  jr         $ra
    /* AB50 8001A350 00000000 */   nop
endlabel func_8001A29C
