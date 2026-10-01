.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009537C, 0xC8

glabel func_8009537C
    /* 85B7C 8009537C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 85B80 80095380 1400BFAF */  sw         $ra, 0x14($sp)
    /* 85B84 80095384 1000B0AF */  sw         $s0, 0x10($sp)
    /* 85B88 80095388 EFE9030C */  jal        func_800FA7BC
    /* 85B8C 8009538C 21808000 */   addu      $s0, $a0, $zero
    /* 85B90 80095390 100000AE */  sw         $zero, 0x10($s0)
    /* 85B94 80095394 140000AE */  sw         $zero, 0x14($s0)
    /* 85B98 80095398 180000AE */  sw         $zero, 0x18($s0)
    /* 85B9C 8009539C 1C0000AE */  sw         $zero, 0x1C($s0)
    /* 85BA0 800953A0 200000AE */  sw         $zero, 0x20($s0)
    /* 85BA4 800953A4 240000AE */  sw         $zero, 0x24($s0)
    /* 85BA8 800953A8 280000AE */  sw         $zero, 0x28($s0)
    /* 85BAC 800953AC 2C0000AE */  sw         $zero, 0x2C($s0)
    /* 85BB0 800953B0 300000AE */  sw         $zero, 0x30($s0)
    /* 85BB4 800953B4 340000AE */  sw         $zero, 0x34($s0)
    /* 85BB8 800953B8 380000AE */  sw         $zero, 0x38($s0)
    /* 85BBC 800953BC 3C0000AE */  sw         $zero, 0x3C($s0)
    /* 85BC0 800953C0 400000AE */  sw         $zero, 0x40($s0)
    /* 85BC4 800953C4 440000AE */  sw         $zero, 0x44($s0)
    /* 85BC8 800953C8 480000AE */  sw         $zero, 0x48($s0)
    /* 85BCC 800953CC 4C0000AE */  sw         $zero, 0x4C($s0)
    /* 85BD0 800953D0 500000AE */  sw         $zero, 0x50($s0)
    /* 85BD4 800953D4 540000AE */  sw         $zero, 0x54($s0)
    /* 85BD8 800953D8 580000AE */  sw         $zero, 0x58($s0)
    /* 85BDC 800953DC 5C0000AE */  sw         $zero, 0x5C($s0)
    /* 85BE0 800953E0 600000AE */  sw         $zero, 0x60($s0)
    /* 85BE4 800953E4 640000AE */  sw         $zero, 0x64($s0)
    /* 85BE8 800953E8 680000AE */  sw         $zero, 0x68($s0)
    /* 85BEC 800953EC 6C0000A6 */  sh         $zero, 0x6C($s0)
    /* 85BF0 800953F0 6E0000A6 */  sh         $zero, 0x6E($s0)
    /* 85BF4 800953F4 00400224 */  addiu      $v0, $zero, 0x4000
    /* 85BF8 800953F8 700002A6 */  sh         $v0, 0x70($s0)
    /* 85BFC 800953FC 720002A6 */  sh         $v0, 0x72($s0)
    /* 85C00 80095400 7A0000A6 */  sh         $zero, 0x7A($s0)
    /* 85C04 80095404 7C0000A6 */  sh         $zero, 0x7C($s0)
    /* 85C08 80095408 740000A6 */  sh         $zero, 0x74($s0)
    /* 85C0C 8009540C 01000224 */  addiu      $v0, $zero, 0x1
    /* 85C10 80095410 760002A6 */  sh         $v0, 0x76($s0)
    /* 85C14 80095414 780002A6 */  sh         $v0, 0x78($s0)
    /* 85C18 80095418 43D7030C */  jal        func_800F5D0C
    /* 85C1C 8009541C 84000426 */   addiu     $a0, $s0, 0x84
    /* 85C20 80095420 9AE0030C */  jal        func_800F8268
    /* 85C24 80095424 10060426 */   addiu     $a0, $s0, 0x610
    /* 85C28 80095428 0C0200AE */  sw         $zero, 0x20C($s0)
    /* 85C2C 8009542C 21100002 */  addu       $v0, $s0, $zero
    /* 85C30 80095430 1400BF8F */  lw         $ra, 0x14($sp)
    /* 85C34 80095434 1000B08F */  lw         $s0, 0x10($sp)
    /* 85C38 80095438 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 85C3C 8009543C 0800E003 */  jr         $ra
    /* 85C40 80095440 00000000 */   nop
endlabel func_8009537C
