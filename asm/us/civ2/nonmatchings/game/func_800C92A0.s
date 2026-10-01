.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C92A0, 0x914

glabel func_800C92A0
    /* B9AA0 800C92A0 18FDBD27 */  addiu      $sp, $sp, -0x2E8
    /* B9AA4 800C92A4 E002BFAF */  sw         $ra, 0x2E0($sp)
    /* B9AA8 800C92A8 DC02B5AF */  sw         $s5, 0x2DC($sp)
    /* B9AAC 800C92AC D802B4AF */  sw         $s4, 0x2D8($sp)
    /* B9AB0 800C92B0 D402B3AF */  sw         $s3, 0x2D4($sp)
    /* B9AB4 800C92B4 D002B2AF */  sw         $s2, 0x2D0($sp)
    /* B9AB8 800C92B8 CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* B9ABC 800C92BC C802B0AF */  sw         $s0, 0x2C8($sp)
    /* B9AC0 800C92C0 21908000 */  addu       $s2, $a0, $zero
    /* B9AC4 800C92C4 21A8A000 */  addu       $s5, $a1, $zero
    /* B9AC8 800C92C8 2800A427 */  addiu      $a0, $sp, 0x28
    /* B9ACC 800C92CC ADC5020C */  jal        func_800B16B4
    /* B9AD0 800C92D0 00200524 */   addiu     $a1, $zero, 0x2000
    /* B9AD4 800C92D4 21A00000 */  addu       $s4, $zero, $zero
    /* B9AD8 800C92D8 21204002 */  addu       $a0, $s2, $zero
    /* B9ADC 800C92DC 0422030C */  jal        func_800C8810
    /* B9AE0 800C92E0 01000524 */   addiu     $a1, $zero, 0x1
    /* B9AE4 800C92E4 40101200 */  sll        $v0, $s2, 1
    /* B9AE8 800C92E8 21105200 */  addu       $v0, $v0, $s2
    /* B9AEC 800C92EC 80100200 */  sll        $v0, $v0, 2
    /* B9AF0 800C92F0 23105200 */  subu       $v0, $v0, $s2
    /* B9AF4 800C92F4 00110200 */  sll        $v0, $v0, 4
    /* B9AF8 800C92F8 23105200 */  subu       $v0, $v0, $s2
    /* B9AFC 800C92FC C0100200 */  sll        $v0, $v0, 3
    /* B9B00 800C9300 1180013C */  lui        $at, %hi(D_80117A82)
    /* B9B04 800C9304 21082200 */  addu       $at, $at, $v0
    /* B9B08 800C9308 827A2284 */  lh         $v0, %lo(D_80117A82)($at)
    /* B9B0C 800C930C 00000000 */  nop
    /* B9B10 800C9310 02004014 */  bnez       $v0, .L800C931C
    /* B9B14 800C9314 00000000 */   nop
    /* B9B18 800C9318 21A80000 */  addu       $s5, $zero, $zero
  .L800C931C:
    /* B9B1C 800C931C 8A54020C */  jal        func_80095228
    /* B9B20 800C9320 21204002 */   addu      $a0, $s2, $zero
    /* B9B24 800C9324 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* B9B28 800C9328 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* B9B2C 800C932C A587030C */  jal        func_800E1E94
    /* B9B30 800C9330 21284000 */   addu      $a1, $v0, $zero
    /* B9B34 800C9334 F853020C */  jal        func_80094FE0
    /* B9B38 800C9338 21204002 */   addu      $a0, $s2, $zero
    /* B9B3C 800C933C 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* B9B40 800C9340 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* B9B44 800C9344 A587030C */  jal        func_800E1E94
    /* B9B48 800C9348 21284000 */   addu      $a1, $v0, $zero
    /* B9B4C 800C934C 5D54020C */  jal        func_80095174
    /* B9B50 800C9350 21204002 */   addu      $a0, $s2, $zero
    /* B9B54 800C9354 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* B9B58 800C9358 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* B9B5C 800C935C A587030C */  jal        func_800E1E94
    /* B9B60 800C9360 21284000 */   addu      $a1, $v0, $zero
    /* B9B64 800C9364 1280043C */  lui        $a0, %hi(D_8011FCF9)
    /* B9B68 800C9368 F9FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF9)
    /* B9B6C 800C936C 000080A0 */  sb         $zero, 0x0($a0)
    /* B9B70 800C9370 B30A040C */  jal        func_80102ACC
    /* B9B74 800C9374 FFFF8424 */   addiu     $a0, $a0, -0x1
    /* B9B78 800C9378 1000A0AF */  sw         $zero, 0x10($sp)
    /* B9B7C 800C937C 1400A0AF */  sw         $zero, 0x14($sp)
    /* B9B80 800C9380 1800A0AF */  sw         $zero, 0x18($sp)
    /* B9B84 800C9384 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* B9B88 800C9388 2000A0AF */  sw         $zero, 0x20($sp)
    /* B9B8C 800C938C 2800A427 */  addiu      $a0, $sp, 0x28
    /* B9B90 800C9390 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* B9B94 800C9394 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* B9B98 800C9398 ADFD0634 */  ori        $a2, $zero, 0xFDAD
    /* B9B9C 800C939C 2CE0020C */  jal        func_800B80B0
    /* B9BA0 800C93A0 21380000 */   addu      $a3, $zero, $zero
    /* B9BA4 800C93A4 21880000 */  addu       $s1, $zero, $zero
    /* B9BA8 800C93A8 40101200 */  sll        $v0, $s2, 1
    /* B9BAC 800C93AC 21105200 */  addu       $v0, $v0, $s2
    /* B9BB0 800C93B0 80100200 */  sll        $v0, $v0, 2
    /* B9BB4 800C93B4 23105200 */  subu       $v0, $v0, $s2
    /* B9BB8 800C93B8 00110200 */  sll        $v0, $v0, 4
    /* B9BBC 800C93BC 23105200 */  subu       $v0, $v0, $s2
    /* B9BC0 800C93C0 C0100200 */  sll        $v0, $v0, 3
    /* B9BC4 800C93C4 1180033C */  lui        $v1, %hi(D_80117A7C)
    /* B9BC8 800C93C8 7C7A6324 */  addiu      $v1, $v1, %lo(D_80117A7C)
    /* B9BCC 800C93CC 21984300 */  addu       $s3, $v0, $v1
    /* B9BD0 800C93D0 40101100 */  sll        $v0, $s1, 1
  .L800C93D4:
    /* B9BD4 800C93D4 21105300 */  addu       $v0, $v0, $s3
    /* B9BD8 800C93D8 00005084 */  lh         $s0, 0x0($v0)
    /* B9BDC 800C93DC 21204002 */  addu       $a0, $s2, $zero
    /* B9BE0 800C93E0 F520030C */  jal        func_800C83D4
    /* B9BE4 800C93E4 21282002 */   addu      $a1, $s1, $zero
    /* B9BE8 800C93E8 2A105000 */  slt        $v0, $v0, $s0
    /* B9BEC 800C93EC 02004010 */  beqz       $v0, .L800C93F8
    /* B9BF0 800C93F0 00000000 */   nop
    /* B9BF4 800C93F4 01001424 */  addiu      $s4, $zero, 0x1
  .L800C93F8:
    /* B9BF8 800C93F8 01003126 */  addiu      $s1, $s1, 0x1
    /* B9BFC 800C93FC 0600222A */  slti       $v0, $s1, 0x6
    /* B9C00 800C9400 F4FF4014 */  bnez       $v0, .L800C93D4
    /* B9C04 800C9404 40101100 */   sll       $v0, $s1, 1
    /* B9C08 800C9408 21880000 */  addu       $s1, $zero, $zero
    /* B9C0C 800C940C 40101200 */  sll        $v0, $s2, 1
    /* B9C10 800C9410 21105200 */  addu       $v0, $v0, $s2
    /* B9C14 800C9414 80100200 */  sll        $v0, $v0, 2
    /* B9C18 800C9418 23105200 */  subu       $v0, $v0, $s2
    /* B9C1C 800C941C 00110200 */  sll        $v0, $v0, 4
    /* B9C20 800C9420 23105200 */  subu       $v0, $v0, $s2
    /* B9C24 800C9424 C0980200 */  sll        $s3, $v0, 3
  .L800C9428:
    /* B9C28 800C9428 0600222A */  slti       $v0, $s1, 0x6
    /* B9C2C 800C942C 31004010 */  beqz       $v0, .L800C94F4
    /* B9C30 800C9430 00000000 */   nop
    /* B9C34 800C9434 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9C38 800C9438 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9C3C 800C943C CB1A030C */  jal        func_800C6B2C
    /* B9C40 800C9440 40801100 */   sll       $s0, $s1, 1
    /* B9C44 800C9444 21101102 */  addu       $v0, $s0, $s1
    /* B9C48 800C9448 40100200 */  sll        $v0, $v0, 1
    /* B9C4C 800C944C 1280013C */  lui        $at, %hi(D_80121B40)
    /* B9C50 800C9450 21082200 */  addu       $at, $at, $v0
    /* B9C54 800C9454 401B2284 */  lh         $v0, %lo(D_80121B40)($at)
    /* B9C58 800C9458 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B9C5C 800C945C 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B9C60 800C9460 80100200 */  sll        $v0, $v0, 2
    /* B9C64 800C9464 21104300 */  addu       $v0, $v0, $v1
    /* B9C68 800C9468 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9C6C 800C946C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9C70 800C9470 0000458C */  lw         $a1, 0x0($v0)
    /* B9C74 800C9474 651B030C */  jal        func_800C6D94
    /* B9C78 800C9478 00000000 */   nop
    /* B9C7C 800C947C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9C80 800C9480 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9C84 800C9484 F71A030C */  jal        func_800C6BDC
    /* B9C88 800C9488 00000000 */   nop
    /* B9C8C 800C948C 1180023C */  lui        $v0, %hi(D_80117A7C)
    /* B9C90 800C9490 7C7A4224 */  addiu      $v0, $v0, %lo(D_80117A7C)
    /* B9C94 800C9494 21106202 */  addu       $v0, $s3, $v0
    /* B9C98 800C9498 21800202 */  addu       $s0, $s0, $v0
    /* B9C9C 800C949C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9CA0 800C94A0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9CA4 800C94A4 00000586 */  lh         $a1, 0x0($s0)
    /* B9CA8 800C94A8 9C1B030C */  jal        func_800C6E70
    /* B9CAC 800C94AC 00000000 */   nop
    /* B9CB0 800C94B0 0A008012 */  beqz       $s4, .L800C94DC
    /* B9CB4 800C94B4 2800A427 */   addiu     $a0, $sp, 0x28
    /* B9CB8 800C94B8 08002016 */  bnez       $s1, .L800C94DC
    /* B9CBC 800C94BC 00000000 */   nop
    /* B9CC0 800C94C0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9CC4 800C94C4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9CC8 800C94C8 1680053C */  lui        $a1, %hi(D_80159140)
    /* B9CCC 800C94CC 4091A524 */  addiu      $a1, $a1, %lo(D_80159140)
    /* B9CD0 800C94D0 9987030C */  jal        func_800E1E64
    /* B9CD4 800C94D4 00000000 */   nop
    /* B9CD8 800C94D8 2800A427 */  addiu      $a0, $sp, 0x28
  .L800C94DC:
    /* B9CDC 800C94DC 1280053C */  lui        $a1, %hi(D_80121340)
    /* B9CE0 800C94E0 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B9CE4 800C94E4 A8C9020C */  jal        func_800B26A0
    /* B9CE8 800C94E8 21300000 */   addu      $a2, $zero, $zero
    /* B9CEC 800C94EC 0A250308 */  j          .L800C9428
    /* B9CF0 800C94F0 01003126 */   addiu     $s1, $s1, 0x1
  .L800C94F4:
    /* B9CF4 800C94F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9CF8 800C94F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9CFC 800C94FC CB1A030C */  jal        func_800C6B2C
    /* B9D00 800C9500 40801200 */   sll       $s0, $s2, 1
    /* B9D04 800C9504 2800A427 */  addiu      $a0, $sp, 0x28
    /* B9D08 800C9508 1280053C */  lui        $a1, %hi(D_80121340)
    /* B9D0C 800C950C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B9D10 800C9510 A8C9020C */  jal        func_800B26A0
    /* B9D14 800C9514 21300000 */   addu      $a2, $zero, $zero
    /* B9D18 800C9518 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9D1C 800C951C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9D20 800C9520 CB1A030C */  jal        func_800C6B2C
    /* B9D24 800C9524 21801202 */   addu      $s0, $s0, $s2
    /* B9D28 800C9528 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9D2C 800C952C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9D30 800C9530 731B030C */  jal        func_800C6DCC
    /* B9D34 800C9534 22000524 */   addiu     $a1, $zero, 0x22
    /* B9D38 800C9538 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9D3C 800C953C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9D40 800C9540 F71A030C */  jal        func_800C6BDC
    /* B9D44 800C9544 80801000 */   sll       $s0, $s0, 2
    /* B9D48 800C9548 23801202 */  subu       $s0, $s0, $s2
    /* B9D4C 800C954C 00811000 */  sll        $s0, $s0, 4
    /* B9D50 800C9550 23801202 */  subu       $s0, $s0, $s2
    /* B9D54 800C9554 C0801000 */  sll        $s0, $s0, 3
    /* B9D58 800C9558 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9D5C 800C955C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9D60 800C9560 1180013C */  lui        $at, %hi(D_80117A82)
    /* B9D64 800C9564 21083000 */  addu       $at, $at, $s0
    /* B9D68 800C9568 827A2584 */  lh         $a1, %lo(D_80117A82)($at)
    /* B9D6C 800C956C 9C1B030C */  jal        func_800C6E70
    /* B9D70 800C9570 6666113C */   lui       $s1, (0x66666667 >> 16)
    /* B9D74 800C9574 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9D78 800C9578 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9D7C 800C957C 1680053C */  lui        $a1, %hi(D_80159144)
    /* B9D80 800C9580 4491A524 */  addiu      $a1, $a1, %lo(D_80159144)
    /* B9D84 800C9584 9987030C */  jal        func_800E1E64
    /* B9D88 800C9588 67663136 */   ori       $s1, $s1, (0x66666667 & 0xFFFF)
    /* B9D8C 800C958C 2800A427 */  addiu      $a0, $sp, 0x28
    /* B9D90 800C9590 1280053C */  lui        $a1, %hi(D_80121340)
    /* B9D94 800C9594 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B9D98 800C9598 A8C9020C */  jal        func_800B26A0
    /* B9D9C 800C959C 21300000 */   addu      $a2, $zero, $zero
    /* B9DA0 800C95A0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9DA4 800C95A4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9DA8 800C95A8 CB1A030C */  jal        func_800C6B2C
    /* B9DAC 800C95AC 00000000 */   nop
    /* B9DB0 800C95B0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9DB4 800C95B4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9DB8 800C95B8 731B030C */  jal        func_800C6DCC
    /* B9DBC 800C95BC 42000524 */   addiu     $a1, $zero, 0x42
    /* B9DC0 800C95C0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9DC4 800C95C4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9DC8 800C95C8 F71A030C */  jal        func_800C6BDC
    /* B9DCC 800C95CC 00000000 */   nop
    /* B9DD0 800C95D0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9DD4 800C95D4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9DD8 800C95D8 A40C858F */  lw         $a1, %gp_rel(D_8015917C)($gp)
    /* B9DDC 800C95DC 9C1B030C */  jal        func_800C6E70
    /* B9DE0 800C95E0 00000000 */   nop
    /* B9DE4 800C95E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9DE8 800C95E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9DEC 800C95EC 0B1B030C */  jal        func_800C6C2C
    /* B9DF0 800C95F0 00000000 */   nop
    /* B9DF4 800C95F4 2800A427 */  addiu      $a0, $sp, 0x28
    /* B9DF8 800C95F8 1280053C */  lui        $a1, %hi(D_80121340)
    /* B9DFC 800C95FC 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B9E00 800C9600 A8C9020C */  jal        func_800B26A0
    /* B9E04 800C9604 21300000 */   addu      $a2, $zero, $zero
    /* B9E08 800C9608 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9E0C 800C960C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9E10 800C9610 CB1A030C */  jal        func_800C6B2C
    /* B9E14 800C9614 00000000 */   nop
    /* B9E18 800C9618 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9E1C 800C961C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9E20 800C9620 731B030C */  jal        func_800C6DCC
    /* B9E24 800C9624 CD000524 */   addiu     $a1, $zero, 0xCD
    /* B9E28 800C9628 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9E2C 800C962C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9E30 800C9630 F71A030C */  jal        func_800C6BDC
    /* B9E34 800C9634 00000000 */   nop
    /* B9E38 800C9638 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9E3C 800C963C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9E40 800C9640 A80C858F */  lw         $a1, %gp_rel(D_80159180)($gp)
    /* B9E44 800C9644 9C1B030C */  jal        func_800C6E70
    /* B9E48 800C9648 00000000 */   nop
    /* B9E4C 800C964C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9E50 800C9650 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9E54 800C9654 0B1B030C */  jal        func_800C6C2C
    /* B9E58 800C9658 00000000 */   nop
    /* B9E5C 800C965C 2800A427 */  addiu      $a0, $sp, 0x28
    /* B9E60 800C9660 1280053C */  lui        $a1, %hi(D_80121340)
    /* B9E64 800C9664 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B9E68 800C9668 A8C9020C */  jal        func_800B26A0
    /* B9E6C 800C966C 21300000 */   addu      $a2, $zero, $zero
    /* B9E70 800C9670 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9E74 800C9674 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9E78 800C9678 CB1A030C */  jal        func_800C6B2C
    /* B9E7C 800C967C 00000000 */   nop
    /* B9E80 800C9680 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9E84 800C9684 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9E88 800C9688 731B030C */  jal        func_800C6DCC
    /* B9E8C 800C968C CE000524 */   addiu     $a1, $zero, 0xCE
    /* B9E90 800C9690 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9E94 800C9694 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9E98 800C9698 F71A030C */  jal        func_800C6BDC
    /* B9E9C 800C969C 00000000 */   nop
    /* B9EA0 800C96A0 9C0C858F */  lw         $a1, %gp_rel(D_80159174)($gp)
    /* B9EA4 800C96A4 00000000 */  nop
    /* B9EA8 800C96A8 1800B100 */  mult       $a1, $s1
    /* B9EAC 800C96AC 10400000 */  mfhi       $t0
    /* B9EB0 800C96B0 83100800 */  sra        $v0, $t0, 2
    /* B9EB4 800C96B4 C32F0500 */  sra        $a1, $a1, 31
    /* B9EB8 800C96B8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9EBC 800C96BC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9EC0 800C96C0 9C1B030C */  jal        func_800C6E70
    /* B9EC4 800C96C4 23284500 */   subu      $a1, $v0, $a1
    /* B9EC8 800C96C8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9ECC 800C96CC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9ED0 800C96D0 1680053C */  lui        $a1, %hi(D_8015914C)
    /* B9ED4 800C96D4 4C91A524 */  addiu      $a1, $a1, %lo(D_8015914C)
    /* B9ED8 800C96D8 9987030C */  jal        func_800E1E64
    /* B9EDC 800C96DC 00000000 */   nop
    /* B9EE0 800C96E0 9C0C868F */  lw         $a2, %gp_rel(D_80159174)($gp)
    /* B9EE4 800C96E4 00000000 */  nop
    /* B9EE8 800C96E8 1800D100 */  mult       $a2, $s1
    /* B9EEC 800C96EC 10400000 */  mfhi       $t0
    /* B9EF0 800C96F0 83100800 */  sra        $v0, $t0, 2
    /* B9EF4 800C96F4 C31F0600 */  sra        $v1, $a2, 31
    /* B9EF8 800C96F8 23104300 */  subu       $v0, $v0, $v1
    /* B9EFC 800C96FC 80280200 */  sll        $a1, $v0, 2
    /* B9F00 800C9700 2128A200 */  addu       $a1, $a1, $v0
    /* B9F04 800C9704 40280500 */  sll        $a1, $a1, 1
    /* B9F08 800C9708 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9F0C 800C970C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9F10 800C9710 9C1B030C */  jal        func_800C6E70
    /* B9F14 800C9714 2328C500 */   subu      $a1, $a2, $a1
    /* B9F18 800C9718 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9F1C 800C971C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9F20 800C9720 1680053C */  lui        $a1, %hi(D_80159150)
    /* B9F24 800C9724 5091A524 */  addiu      $a1, $a1, %lo(D_80159150)
    /* B9F28 800C9728 9987030C */  jal        func_800E1E64
    /* B9F2C 800C972C 00000000 */   nop
    /* B9F30 800C9730 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9F34 800C9734 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9F38 800C9738 731B030C */  jal        func_800C6DCC
    /* B9F3C 800C973C D1000524 */   addiu     $a1, $zero, 0xD1
    /* B9F40 800C9740 2800A427 */  addiu      $a0, $sp, 0x28
    /* B9F44 800C9744 1280053C */  lui        $a1, %hi(D_80121340)
    /* B9F48 800C9748 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B9F4C 800C974C A8C9020C */  jal        func_800B26A0
    /* B9F50 800C9750 21300000 */   addu      $a2, $zero, $zero
    /* B9F54 800C9754 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9F58 800C9758 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9F5C 800C975C CB1A030C */  jal        func_800C6B2C
    /* B9F60 800C9760 00000000 */   nop
    /* B9F64 800C9764 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9F68 800C9768 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9F6C 800C976C 731B030C */  jal        func_800C6DCC
    /* B9F70 800C9770 C8000524 */   addiu     $a1, $zero, 0xC8
    /* B9F74 800C9774 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9F78 800C9778 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9F7C 800C977C F71A030C */  jal        func_800C6BDC
    /* B9F80 800C9780 00000000 */   nop
    /* B9F84 800C9784 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9F88 800C9788 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9F8C 800C978C AC0C858F */  lw         $a1, %gp_rel(D_80159184)($gp)
    /* B9F90 800C9790 9C1B030C */  jal        func_800C6E70
    /* B9F94 800C9794 00000000 */   nop
    /* B9F98 800C9798 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9F9C 800C979C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9FA0 800C97A0 0B1B030C */  jal        func_800C6C2C
    /* B9FA4 800C97A4 00000000 */   nop
    /* B9FA8 800C97A8 1180013C */  lui        $at, %hi(D_80117A74)
    /* B9FAC 800C97AC 21083000 */  addu       $at, $at, $s0
    /* B9FB0 800C97B0 747A2290 */  lbu        $v0, %lo(D_80117A74)($at)
    /* B9FB4 800C97B4 00000000 */  nop
    /* B9FB8 800C97B8 08004230 */  andi       $v0, $v0, 0x8
    /* B9FBC 800C97BC 11004010 */  beqz       $v0, .L800C9804
    /* B9FC0 800C97C0 00000000 */   nop
    /* B9FC4 800C97C4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9FC8 800C97C8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9FCC 800C97CC CD1A030C */  jal        func_800C6B34
    /* B9FD0 800C97D0 00000000 */   nop
    /* B9FD4 800C97D4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9FD8 800C97D8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9FDC 800C97DC 151B030C */  jal        func_800C6C54
    /* B9FE0 800C97E0 00000000 */   nop
    /* B9FE4 800C97E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9FE8 800C97E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9FEC 800C97EC 731B030C */  jal        func_800C6DCC
    /* B9FF0 800C97F0 EB000524 */   addiu     $a1, $zero, 0xEB
    /* B9FF4 800C97F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B9FF8 800C97F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B9FFC 800C97FC 1F1B030C */  jal        func_800C6C7C
    /* BA000 800C9800 00000000 */   nop
  .L800C9804:
    /* BA004 800C9804 2800A427 */  addiu      $a0, $sp, 0x28
    /* BA008 800C9808 1280053C */  lui        $a1, %hi(D_80121340)
    /* BA00C 800C980C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* BA010 800C9810 A8C9020C */  jal        func_800B26A0
    /* BA014 800C9814 21300000 */   addu      $a2, $zero, $zero
    /* BA018 800C9818 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA01C 800C981C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA020 800C9820 CB1A030C */  jal        func_800C6B2C
    /* BA024 800C9824 6666103C */   lui       $s0, (0x66666667 >> 16)
    /* BA028 800C9828 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA02C 800C982C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA030 800C9830 731B030C */  jal        func_800C6DCC
    /* BA034 800C9834 CF000524 */   addiu     $a1, $zero, 0xCF
    /* BA038 800C9838 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA03C 800C983C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA040 800C9840 F71A030C */  jal        func_800C6BDC
    /* BA044 800C9844 67661036 */   ori       $s0, $s0, (0x66666667 & 0xFFFF)
    /* BA048 800C9848 B00C858F */  lw         $a1, %gp_rel(D_80159188)($gp)
    /* BA04C 800C984C 00000000 */  nop
    /* BA050 800C9850 1800B000 */  mult       $a1, $s0
    /* BA054 800C9854 10400000 */  mfhi       $t0
    /* BA058 800C9858 83100800 */  sra        $v0, $t0, 2
    /* BA05C 800C985C C32F0500 */  sra        $a1, $a1, 31
    /* BA060 800C9860 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA064 800C9864 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA068 800C9868 9C1B030C */  jal        func_800C6E70
    /* BA06C 800C986C 23284500 */   subu      $a1, $v0, $a1
    /* BA070 800C9870 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA074 800C9874 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA078 800C9878 1680053C */  lui        $a1, %hi(D_80159154)
    /* BA07C 800C987C 5491A524 */  addiu      $a1, $a1, %lo(D_80159154)
    /* BA080 800C9880 9987030C */  jal        func_800E1E64
    /* BA084 800C9884 00000000 */   nop
    /* BA088 800C9888 B00C868F */  lw         $a2, %gp_rel(D_80159188)($gp)
    /* BA08C 800C988C 00000000 */  nop
    /* BA090 800C9890 1800D000 */  mult       $a2, $s0
    /* BA094 800C9894 10400000 */  mfhi       $t0
    /* BA098 800C9898 83100800 */  sra        $v0, $t0, 2
    /* BA09C 800C989C C31F0600 */  sra        $v1, $a2, 31
    /* BA0A0 800C98A0 23104300 */  subu       $v0, $v0, $v1
    /* BA0A4 800C98A4 80280200 */  sll        $a1, $v0, 2
    /* BA0A8 800C98A8 2128A200 */  addu       $a1, $a1, $v0
    /* BA0AC 800C98AC 40280500 */  sll        $a1, $a1, 1
    /* BA0B0 800C98B0 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA0B4 800C98B4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA0B8 800C98B8 9C1B030C */  jal        func_800C6E70
    /* BA0BC 800C98BC 2328C500 */   subu      $a1, $a2, $a1
    /* BA0C0 800C98C0 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA0C4 800C98C4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA0C8 800C98C8 CD1A030C */  jal        func_800C6B34
    /* BA0CC 800C98CC 00000000 */   nop
    /* BA0D0 800C98D0 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA0D4 800C98D4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA0D8 800C98D8 731B030C */  jal        func_800C6DCC
    /* BA0DC 800C98DC D2000524 */   addiu     $a1, $zero, 0xD2
    /* BA0E0 800C98E0 2800A427 */  addiu      $a0, $sp, 0x28
    /* BA0E4 800C98E4 1280053C */  lui        $a1, %hi(D_80121340)
    /* BA0E8 800C98E8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* BA0EC 800C98EC A8C9020C */  jal        func_800B26A0
    /* BA0F0 800C98F0 21300000 */   addu      $a2, $zero, $zero
    /* BA0F4 800C98F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA0F8 800C98F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA0FC 800C98FC CB1A030C */  jal        func_800C6B2C
    /* BA100 800C9900 00000000 */   nop
    /* BA104 800C9904 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA108 800C9908 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA10C 800C990C 731B030C */  jal        func_800C6DCC
    /* BA110 800C9910 D0000524 */   addiu     $a1, $zero, 0xD0
    /* BA114 800C9914 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA118 800C9918 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA11C 800C991C F71A030C */  jal        func_800C6BDC
    /* BA120 800C9920 00000000 */   nop
    /* BA124 800C9924 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA128 800C9928 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA12C 800C992C 1680053C */  lui        $a1, %hi(D_80159158)
    /* BA130 800C9930 5891A524 */  addiu      $a1, $a1, %lo(D_80159158)
    /* BA134 800C9934 9987030C */  jal        func_800E1E64
    /* BA138 800C9938 00000000 */   nop
    /* BA13C 800C993C 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA140 800C9940 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA144 800C9944 A00C858F */  lw         $a1, %gp_rel(D_80159178)($gp)
    /* BA148 800C9948 9C1B030C */  jal        func_800C6E70
    /* BA14C 800C994C 00000000 */   nop
    /* BA150 800C9950 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA154 800C9954 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA158 800C9958 0B1B030C */  jal        func_800C6C2C
    /* BA15C 800C995C 00000000 */   nop
    /* BA160 800C9960 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA164 800C9964 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA168 800C9968 1680053C */  lui        $a1, %hi(D_80159160)
    /* BA16C 800C996C 6091A524 */  addiu      $a1, $a1, %lo(D_80159160)
    /* BA170 800C9970 9987030C */  jal        func_800E1E64
    /* BA174 800C9974 00000000 */   nop
    /* BA178 800C9978 2800A427 */  addiu      $a0, $sp, 0x28
    /* BA17C 800C997C 1280053C */  lui        $a1, %hi(D_80121340)
    /* BA180 800C9980 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* BA184 800C9984 A8C9020C */  jal        func_800B26A0
    /* BA188 800C9988 21300000 */   addu      $a2, $zero, $zero
    /* BA18C 800C998C 4BDF010C */  jal        func_80077D2C
    /* BA190 800C9990 21204002 */   addu      $a0, $s2, $zero
    /* BA194 800C9994 4E004010 */  beqz       $v0, .L800C9AD0
    /* BA198 800C9998 00000000 */   nop
    /* BA19C 800C999C 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA1A0 800C99A0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA1A4 800C99A4 CB1A030C */  jal        func_800C6B2C
    /* BA1A8 800C99A8 00000000 */   nop
    /* BA1AC 800C99AC 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA1B0 800C99B0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA1B4 800C99B4 1680053C */  lui        $a1, %hi(D_80159158)
    /* BA1B8 800C99B8 5891A524 */  addiu      $a1, $a1, %lo(D_80159158)
    /* BA1BC 800C99BC 9987030C */  jal        func_800E1E64
    /* BA1C0 800C99C0 00000000 */   nop
    /* BA1C4 800C99C4 40101200 */  sll        $v0, $s2, 1
    /* BA1C8 800C99C8 21105200 */  addu       $v0, $v0, $s2
    /* BA1CC 800C99CC 80100200 */  sll        $v0, $v0, 2
    /* BA1D0 800C99D0 23105200 */  subu       $v0, $v0, $s2
    /* BA1D4 800C99D4 00110200 */  sll        $v0, $v0, 4
    /* BA1D8 800C99D8 23105200 */  subu       $v0, $v0, $s2
    /* BA1DC 800C99DC C0100200 */  sll        $v0, $v0, 3
    /* BA1E0 800C99E0 1180013C */  lui        $at, %hi(D_80117A76)
    /* BA1E4 800C99E4 21082200 */  addu       $at, $at, $v0
    /* BA1E8 800C99E8 767A2284 */  lh         $v0, %lo(D_80117A76)($at)
    /* BA1EC 800C99EC 1280033C */  lui        $v1, %hi(D_8011A264)
    /* BA1F0 800C99F0 64A26384 */  lh         $v1, %lo(D_8011A264)($v1)
    /* BA1F4 800C99F4 00000000 */  nop
    /* BA1F8 800C99F8 2A104300 */  slt        $v0, $v0, $v1
    /* BA1FC 800C99FC 07004010 */  beqz       $v0, .L800C9A1C
    /* BA200 800C9A00 00000000 */   nop
    /* BA204 800C9A04 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA208 800C9A08 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA20C 800C9A0C 731B030C */  jal        func_800C6DCC
    /* BA210 800C9A10 D4000524 */   addiu     $a1, $zero, 0xD4
    /* BA214 800C9A14 A7260308 */  j          .L800C9A9C
    /* BA218 800C9A18 00000000 */   nop
  .L800C9A1C:
    /* BA21C 800C9A1C 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA220 800C9A20 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA224 800C9A24 731B030C */  jal        func_800C6DCC
    /* BA228 800C9A28 D3000524 */   addiu     $a1, $zero, 0xD3
    /* BA22C 800C9A2C 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA230 800C9A30 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA234 800C9A34 1680053C */  lui        $a1, %hi(D_80159168)
    /* BA238 800C9A38 6891A524 */  addiu      $a1, $a1, %lo(D_80159168)
    /* BA23C 800C9A3C 9987030C */  jal        func_800E1E64
    /* BA240 800C9A40 00000000 */   nop
    /* BA244 800C9A44 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA248 800C9A48 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA24C 800C9A4C 731B030C */  jal        func_800C6DCC
    /* BA250 800C9A50 DA000524 */   addiu     $a1, $zero, 0xDA
    /* BA254 800C9A54 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA258 800C9A58 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA25C 800C9A5C CD1A030C */  jal        func_800C6B34
    /* BA260 800C9A60 00000000 */   nop
    /* BA264 800C9A64 40101200 */  sll        $v0, $s2, 1
    /* BA268 800C9A68 21105200 */  addu       $v0, $v0, $s2
    /* BA26C 800C9A6C 80100200 */  sll        $v0, $v0, 2
    /* BA270 800C9A70 23105200 */  subu       $v0, $v0, $s2
    /* BA274 800C9A74 00110200 */  sll        $v0, $v0, 4
    /* BA278 800C9A78 23105200 */  subu       $v0, $v0, $s2
    /* BA27C 800C9A7C C0100200 */  sll        $v0, $v0, 3
    /* BA280 800C9A80 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA284 800C9A84 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA288 800C9A88 1180013C */  lui        $at, %hi(D_80117A76)
    /* BA28C 800C9A8C 21082200 */  addu       $at, $at, $v0
    /* BA290 800C9A90 767A2584 */  lh         $a1, %lo(D_80117A76)($at)
    /* BA294 800C9A94 9C1B030C */  jal        func_800C6E70
    /* BA298 800C9A98 00000000 */   nop
  .L800C9A9C:
    /* BA29C 800C9A9C 1280043C */  lui        $a0, %hi(D_80121340)
    /* BA2A0 800C9AA0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* BA2A4 800C9AA4 1680053C */  lui        $a1, %hi(D_8015916C)
    /* BA2A8 800C9AA8 6C91A524 */  addiu      $a1, $a1, %lo(D_8015916C)
    /* BA2AC 800C9AAC 9987030C */  jal        func_800E1E64
    /* BA2B0 800C9AB0 00000000 */   nop
    /* BA2B4 800C9AB4 2800A427 */  addiu      $a0, $sp, 0x28
    /* BA2B8 800C9AB8 1280053C */  lui        $a1, %hi(D_80121340)
    /* BA2BC 800C9ABC 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* BA2C0 800C9AC0 A8C9020C */  jal        func_800B26A0
    /* BA2C4 800C9AC4 21300000 */   addu      $a2, $zero, $zero
    /* BA2C8 800C9AC8 CB260308 */  j          .L800C9B2C
    /* BA2CC 800C9ACC 2800A427 */   addiu     $a0, $sp, 0x28
  .L800C9AD0:
    /* BA2D0 800C9AD0 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BA2D4 800C9AD4 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BA2D8 800C9AD8 00000000 */  nop
    /* BA2DC 800C9ADC 07104202 */  srav       $v0, $v0, $s2
    /* BA2E0 800C9AE0 01004230 */  andi       $v0, $v0, 0x1
    /* BA2E4 800C9AE4 11004010 */  beqz       $v0, .L800C9B2C
    /* BA2E8 800C9AE8 2800A427 */   addiu     $a0, $sp, 0x28
    /* BA2EC 800C9AEC 0F00A012 */  beqz       $s5, .L800C9B2C
    /* BA2F0 800C9AF0 00000000 */   nop
    /* BA2F4 800C9AF4 A00C828F */  lw         $v0, %gp_rel(D_80159178)($gp)
    /* BA2F8 800C9AF8 00000000 */  nop
    /* BA2FC 800C9AFC 0B004010 */  beqz       $v0, .L800C9B2C
    /* BA300 800C9B00 00000000 */   nop
    /* BA304 800C9B04 1680023C */  lui        $v0, %hi(D_8015894C)
    /* BA308 800C9B08 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* BA30C 800C9B0C 00000000 */  nop
    /* BA310 800C9B10 5403448C */  lw         $a0, 0x354($v0)
    /* BA314 800C9B14 A63A030C */  jal        func_800CEA98
    /* BA318 800C9B18 00000000 */   nop
    /* BA31C 800C9B1C 2800A427 */  addiu      $a0, $sp, 0x28
    /* BA320 800C9B20 83CA020C */  jal        func_800B2A0C
    /* BA324 800C9B24 21284000 */   addu      $a1, $v0, $zero
    /* BA328 800C9B28 2800A427 */  addiu      $a0, $sp, 0x28
  .L800C9B2C:
    /* BA32C 800C9B2C 52DF020C */  jal        func_800B7D48
    /* BA330 800C9B30 21280000 */   addu      $a1, $zero, $zero
    /* BA334 800C9B34 E800A28F */  lw         $v0, 0xE8($sp)
    /* BA338 800C9B38 00000000 */  nop
    /* BA33C 800C9B3C 10004010 */  beqz       $v0, .L800C9B80
    /* BA340 800C9B40 0CFE0534 */   ori       $a1, $zero, 0xFE0C
    /* BA344 800C9B44 A00C828F */  lw         $v0, %gp_rel(D_80159178)($gp)
    /* BA348 800C9B48 1280013C */  lui        $at, %hi(D_8011FF28)
    /* BA34C 800C9B4C 28FF22AC */  sw         $v0, %lo(D_8011FF28)($at)
    /* BA350 800C9B50 1000A0AF */  sw         $zero, 0x10($sp)
    /* BA354 800C9B54 1400A0AF */  sw         $zero, 0x14($sp)
    /* BA358 800C9B58 1800A0AF */  sw         $zero, 0x18($sp)
    /* BA35C 800C9B5C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* BA360 800C9B60 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* BA364 800C9B64 21300000 */  addu       $a2, $zero, $zero
    /* BA368 800C9B68 B4E2020C */  jal        func_800B8AD0
    /* BA36C 800C9B6C 21380000 */   addu      $a3, $zero, $zero
    /* BA370 800C9B70 04004010 */  beqz       $v0, .L800C9B84
    /* BA374 800C9B74 2800A427 */   addiu     $a0, $sp, 0x28
    /* BA378 800C9B78 C623030C */  jal        func_800C8F18
    /* BA37C 800C9B7C 21204002 */   addu      $a0, $s2, $zero
  .L800C9B80:
    /* BA380 800C9B80 2800A427 */  addiu      $a0, $sp, 0x28
  .L800C9B84:
    /* BA384 800C9B84 0AC7020C */  jal        func_800B1C28
    /* BA388 800C9B88 02000524 */   addiu     $a1, $zero, 0x2
    /* BA38C 800C9B8C E002BF8F */  lw         $ra, 0x2E0($sp)
    /* BA390 800C9B90 DC02B58F */  lw         $s5, 0x2DC($sp)
    /* BA394 800C9B94 D802B48F */  lw         $s4, 0x2D8($sp)
    /* BA398 800C9B98 D402B38F */  lw         $s3, 0x2D4($sp)
    /* BA39C 800C9B9C D002B28F */  lw         $s2, 0x2D0($sp)
    /* BA3A0 800C9BA0 CC02B18F */  lw         $s1, 0x2CC($sp)
    /* BA3A4 800C9BA4 C802B08F */  lw         $s0, 0x2C8($sp)
    /* BA3A8 800C9BA8 E802BD27 */  addiu      $sp, $sp, 0x2E8
    /* BA3AC 800C9BAC 0800E003 */  jr         $ra
    /* BA3B0 800C9BB0 00000000 */   nop
endlabel func_800C92A0
