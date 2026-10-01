.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B9350, 0x154

glabel func_800B9350
    /* A9B50 800B9350 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A9B54 800B9354 1400B1AF */  sw         $s1, 0x14($sp)
    /* A9B58 800B9358 21888000 */  addu       $s1, $a0, $zero
    /* A9B5C 800B935C 1800BFAF */  sw         $ra, 0x18($sp)
    /* A9B60 800B9360 9AE0030C */  jal        func_800F8268
    /* A9B64 800B9364 1000B0AF */   sw        $s0, 0x10($sp)
    /* A9B68 800B9368 EFE9030C */  jal        func_800FA7BC
    /* A9B6C 800B936C 2C002426 */   addiu     $a0, $s1, 0x2C
    /* A9B70 800B9370 28022426 */  addiu      $a0, $s1, 0x228
    /* A9B74 800B9374 00400224 */  addiu      $v0, $zero, 0x4000
    /* A9B78 800B9378 01001024 */  addiu      $s0, $zero, 0x1
    /* A9B7C 800B937C 9C0022A6 */  sh         $v0, 0x9C($s1)
    /* A9B80 800B9380 9E0022A6 */  sh         $v0, 0x9E($s1)
    /* A9B84 800B9384 01000224 */  addiu      $v0, $zero, 0x1
    /* A9B88 800B9388 3C0020AE */  sw         $zero, 0x3C($s1)
    /* A9B8C 800B938C 400020AE */  sw         $zero, 0x40($s1)
    /* A9B90 800B9390 440020AE */  sw         $zero, 0x44($s1)
    /* A9B94 800B9394 480020AE */  sw         $zero, 0x48($s1)
    /* A9B98 800B9398 4C0020AE */  sw         $zero, 0x4C($s1)
    /* A9B9C 800B939C 500020AE */  sw         $zero, 0x50($s1)
    /* A9BA0 800B93A0 540020AE */  sw         $zero, 0x54($s1)
    /* A9BA4 800B93A4 580020AE */  sw         $zero, 0x58($s1)
    /* A9BA8 800B93A8 5C0020AE */  sw         $zero, 0x5C($s1)
    /* A9BAC 800B93AC 600020AE */  sw         $zero, 0x60($s1)
    /* A9BB0 800B93B0 640020AE */  sw         $zero, 0x64($s1)
    /* A9BB4 800B93B4 680020AE */  sw         $zero, 0x68($s1)
    /* A9BB8 800B93B8 6C0020AE */  sw         $zero, 0x6C($s1)
    /* A9BBC 800B93BC 700020AE */  sw         $zero, 0x70($s1)
    /* A9BC0 800B93C0 740020AE */  sw         $zero, 0x74($s1)
    /* A9BC4 800B93C4 780020AE */  sw         $zero, 0x78($s1)
    /* A9BC8 800B93C8 7C0020AE */  sw         $zero, 0x7C($s1)
    /* A9BCC 800B93CC 800020AE */  sw         $zero, 0x80($s1)
    /* A9BD0 800B93D0 840020AE */  sw         $zero, 0x84($s1)
    /* A9BD4 800B93D4 880020AE */  sw         $zero, 0x88($s1)
    /* A9BD8 800B93D8 8C0020AE */  sw         $zero, 0x8C($s1)
    /* A9BDC 800B93DC 900020AE */  sw         $zero, 0x90($s1)
    /* A9BE0 800B93E0 940020AE */  sw         $zero, 0x94($s1)
    /* A9BE4 800B93E4 980020A6 */  sh         $zero, 0x98($s1)
    /* A9BE8 800B93E8 9A0020A6 */  sh         $zero, 0x9A($s1)
    /* A9BEC 800B93EC A60020A6 */  sh         $zero, 0xA6($s1)
    /* A9BF0 800B93F0 A80020A6 */  sh         $zero, 0xA8($s1)
    /* A9BF4 800B93F4 A00020A6 */  sh         $zero, 0xA0($s1)
    /* A9BF8 800B93F8 A20030A6 */  sh         $s0, 0xA2($s1)
    /* A9BFC 800B93FC A40030A6 */  sh         $s0, 0xA4($s1)
    /* A9C00 800B9400 B00020AE */  sw         $zero, 0xB0($s1)
    /* A9C04 800B9404 B40020AE */  sw         $zero, 0xB4($s1)
    /* A9C08 800B9408 BC0022A2 */  sb         $v0, 0xBC($s1)
    /* A9C0C 800B940C 0180023C */  lui        $v0, %hi(D_800138BC)
    /* A9C10 800B9410 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* A9C14 800B9414 280022AE */  sw         $v0, 0x28($s1)
    /* A9C18 800B9418 0180023C */  lui        $v0, %hi(D_80012658)
    /* A9C1C 800B941C 58264224 */  addiu      $v0, $v0, %lo(D_80012658)
    /* A9C20 800B9420 B80020AE */  sw         $zero, 0xB8($s1)
    /* A9C24 800B9424 B00020AE */  sw         $zero, 0xB0($s1)
    /* A9C28 800B9428 C00020AE */  sw         $zero, 0xC0($s1)
    /* A9C2C 800B942C 9AE0030C */  jal        func_800F8268
    /* A9C30 800B9430 280022AE */   sw        $v0, 0x28($s1)
    /* A9C34 800B9434 0DDA030C */  jal        func_800F6834
    /* A9C38 800B9438 54022426 */   addiu     $a0, $s1, 0x254
    /* A9C3C 800B943C 0DDA030C */  jal        func_800F6834
    /* A9C40 800B9440 80022426 */   addiu     $a0, $s1, 0x280
    /* A9C44 800B9444 0DDA030C */  jal        func_800F6834
    /* A9C48 800B9448 AC022426 */   addiu     $a0, $s1, 0x2AC
    /* A9C4C 800B944C 0DDA030C */  jal        func_800F6834
    /* A9C50 800B9450 D8022426 */   addiu     $a0, $s1, 0x2D8
    /* A9C54 800B9454 C7D8030C */  jal        func_800F631C
    /* A9C58 800B9458 04032426 */   addiu     $a0, $s1, 0x304
    /* A9C5C 800B945C 09000324 */  addiu      $v1, $zero, 0x9
    /* A9C60 800B9460 24002226 */  addiu      $v0, $s1, 0x24
    /* A9C64 800B9464 2C0330A6 */  sh         $s0, 0x32C($s1)
    /* A9C68 800B9468 240320AE */  sw         $zero, 0x324($s1)
    /* A9C6C 800B946C 280320AE */  sw         $zero, 0x328($s1)
  .L800B9470:
    /* A9C70 800B9470 880340AC */  sw         $zero, 0x388($v0)
    /* A9C74 800B9474 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A9C78 800B9478 FDFF6104 */  bgez       $v1, .L800B9470
    /* A9C7C 800B947C FCFF4224 */   addiu     $v0, $v0, -0x4
    /* A9C80 800B9480 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A9C84 800B9484 340322AE */  sw         $v0, 0x334($s1)
    /* A9C88 800B9488 21102002 */  addu       $v0, $s1, $zero
    /* A9C8C 800B948C 1800BF8F */  lw         $ra, 0x18($sp)
    /* A9C90 800B9490 1400B18F */  lw         $s1, 0x14($sp)
    /* A9C94 800B9494 1000B08F */  lw         $s0, 0x10($sp)
    /* A9C98 800B9498 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A9C9C 800B949C 0800E003 */  jr         $ra
    /* A9CA0 800B94A0 00000000 */   nop
endlabel func_800B9350
