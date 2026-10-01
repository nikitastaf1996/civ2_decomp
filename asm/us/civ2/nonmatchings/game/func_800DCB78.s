.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DCB78, 0x394

glabel func_800DCB78
    /* CD378 800DCB78 10FFBD27 */  addiu      $sp, $sp, -0xF0
    /* CD37C 800DCB7C EC00BFAF */  sw         $ra, 0xEC($sp)
    /* CD380 800DCB80 E800BEAF */  sw         $fp, 0xE8($sp)
    /* CD384 800DCB84 E400B7AF */  sw         $s7, 0xE4($sp)
    /* CD388 800DCB88 E000B6AF */  sw         $s6, 0xE0($sp)
    /* CD38C 800DCB8C DC00B5AF */  sw         $s5, 0xDC($sp)
    /* CD390 800DCB90 D800B4AF */  sw         $s4, 0xD8($sp)
    /* CD394 800DCB94 D400B3AF */  sw         $s3, 0xD4($sp)
    /* CD398 800DCB98 D000B2AF */  sw         $s2, 0xD0($sp)
    /* CD39C 800DCB9C CC00B1AF */  sw         $s1, 0xCC($sp)
    /* CD3A0 800DCBA0 C800B0AF */  sw         $s0, 0xC8($sp)
    /* CD3A4 800DCBA4 21908000 */  addu       $s2, $a0, $zero
    /* CD3A8 800DCBA8 21F00000 */  addu       $fp, $zero, $zero
    /* CD3AC 800DCBAC 21B80000 */  addu       $s7, $zero, $zero
    /* CD3B0 800DCBB0 B800A0AF */  sw         $zero, 0xB8($sp)
    /* CD3B4 800DCBB4 21A80000 */  addu       $s5, $zero, $zero
    /* CD3B8 800DCBB8 40101200 */  sll        $v0, $s2, 1
    /* CD3BC 800DCBBC 21105200 */  addu       $v0, $v0, $s2
    /* CD3C0 800DCBC0 80100200 */  sll        $v0, $v0, 2
    /* CD3C4 800DCBC4 23105200 */  subu       $v0, $v0, $s2
    /* CD3C8 800DCBC8 00110200 */  sll        $v0, $v0, 4
    /* CD3CC 800DCBCC 23105200 */  subu       $v0, $v0, $s2
    /* CD3D0 800DCBD0 C0100200 */  sll        $v0, $v0, 3
    /* CD3D4 800DCBD4 1180013C */  lui        $at, %hi(D_80117793)
    /* CD3D8 800DCBD8 21082200 */  addu       $at, $at, $v0
    /* CD3DC 800DCBDC 93773490 */  lbu        $s4, %lo(D_80117793)($at)
    /* CD3E0 800DCBE0 1180013C */  lui        $at, %hi(D_80117794)
    /* CD3E4 800DCBE4 21082200 */  addu       $at, $at, $v0
    /* CD3E8 800DCBE8 94772290 */  lbu        $v0, %lo(D_80117794)($at)
    /* CD3EC 800DCBEC 0600A010 */  beqz       $a1, .L800DCC08
    /* CD3F0 800DCBF0 21A08202 */   addu      $s4, $s4, $v0
    /* CD3F4 800DCBF4 01000224 */  addiu      $v0, $zero, 0x1
    /* CD3F8 800DCBF8 0800A210 */  beq        $a1, $v0, .L800DCC1C
    /* CD3FC 800DCBFC 06000724 */   addiu     $a3, $zero, 0x6
    /* CD400 800DCC00 0B730308 */  j          .L800DCC2C
    /* CD404 800DCC04 16000724 */   addiu     $a3, $zero, 0x16
  .L800DCC08:
    /* CD408 800DCC08 14000724 */  addiu      $a3, $zero, 0x14
    /* CD40C 800DCC0C B000A7AF */  sw         $a3, 0xB0($sp)
    /* CD410 800DCC10 05001624 */  addiu      $s6, $zero, 0x5
    /* CD414 800DCC14 0E730308 */  j          .L800DCC38
    /* CD418 800DCC18 02000724 */   addiu     $a3, $zero, 0x2
  .L800DCC1C:
    /* CD41C 800DCC1C B000A7AF */  sw         $a3, 0xB0($sp)
    /* CD420 800DCC20 0A001624 */  addiu      $s6, $zero, 0xA
    /* CD424 800DCC24 0E730308 */  j          .L800DCC38
    /* CD428 800DCC28 03000724 */   addiu     $a3, $zero, 0x3
  .L800DCC2C:
    /* CD42C 800DCC2C B000A7AF */  sw         $a3, 0xB0($sp)
    /* CD430 800DCC30 16001624 */  addiu      $s6, $zero, 0x16
    /* CD434 800DCC34 04000724 */  addiu      $a3, $zero, 0x4
  .L800DCC38:
    /* CD438 800DCC38 C000A7AF */  sw         $a3, 0xC0($sp)
    /* CD43C 800DCC3C 21800000 */  addu       $s0, $zero, $zero
    /* CD440 800DCC40 1000A327 */  addiu      $v1, $sp, 0x10
    /* CD444 800DCC44 80101000 */  sll        $v0, $s0, 2
  .L800DCC48:
    /* CD448 800DCC48 21104300 */  addu       $v0, $v0, $v1
    /* CD44C 800DCC4C 000040AC */  sw         $zero, 0x0($v0)
    /* CD450 800DCC50 01001026 */  addiu      $s0, $s0, 0x1
    /* CD454 800DCC54 2700022A */  slti       $v0, $s0, 0x27
    /* CD458 800DCC58 FBFF4014 */  bnez       $v0, .L800DCC48
    /* CD45C 800DCC5C 80101000 */   sll       $v0, $s0, 2
    /* CD460 800DCC60 21880000 */  addu       $s1, $zero, $zero
    /* CD464 800DCC64 1000B327 */  addiu      $s3, $sp, 0x10
  .L800DCC68:
    /* CD468 800DCC68 1280023C */  lui        $v0, %hi(D_8011A282)
    /* CD46C 800DCC6C 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* CD470 800DCC70 00000000 */  nop
    /* CD474 800DCC74 2A102202 */  slt        $v0, $s1, $v0
    /* CD478 800DCC78 46004010 */  beqz       $v0, .L800DCD94
    /* CD47C 800DCC7C 40101100 */   sll       $v0, $s1, 1
    /* CD480 800DCC80 21105100 */  addu       $v0, $v0, $s1
    /* CD484 800DCC84 80100200 */  sll        $v0, $v0, 2
    /* CD488 800DCC88 23105100 */  subu       $v0, $v0, $s1
    /* CD48C 800DCC8C C0800200 */  sll        $s0, $v0, 3
    /* CD490 800DCC90 1180013C */  lui        $at, %hi(D_80113ED8)
    /* CD494 800DCC94 21083000 */  addu       $at, $at, $s0
    /* CD498 800DCC98 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* CD49C 800DCC9C 00000000 */  nop
    /* CD4A0 800DCCA0 3A005214 */  bne        $v0, $s2, .L800DCD8C
    /* CD4A4 800DCCA4 00000000 */   nop
    /* CD4A8 800DCCA8 0100B526 */  addiu      $s5, $s5, 0x1
    /* CD4AC 800DCCAC 1180013C */  lui        $at, %hi(D_80113F0E)
    /* CD4B0 800DCCB0 21083000 */  addu       $at, $at, $s0
    /* CD4B4 800DCCB4 0E3F2280 */  lb         $v0, %lo(D_80113F0E)($at)
    /* CD4B8 800DCCB8 00000000 */  nop
    /* CD4BC 800DCCBC 21A08202 */  addu       $s4, $s4, $v0
    /* CD4C0 800DCCC0 0C25020C */  jal        func_80089430
    /* CD4C4 800DCCC4 21202002 */   addu      $a0, $s1, $zero
    /* CD4C8 800DCCC8 1180013C */  lui        $at, %hi(D_80113F22)
    /* CD4CC 800DCCCC 21083000 */  addu       $at, $at, $s0
    /* CD4D0 800DCCD0 223F2484 */  lh         $a0, %lo(D_80113F22)($at)
    /* CD4D4 800DCCD4 01000524 */  addiu      $a1, $zero, 0x1
    /* CD4D8 800DCCD8 C35D000C */  jal        func_8001770C
    /* CD4DC 800DCCDC 21300000 */   addu      $a2, $zero, $zero
    /* CD4E0 800DCCE0 21800000 */  addu       $s0, $zero, $zero
  .L800DCCE4:
    /* CD4E4 800DCCE4 2700022A */  slti       $v0, $s0, 0x27
    /* CD4E8 800DCCE8 0E004010 */  beqz       $v0, .L800DCD24
    /* CD4EC 800DCCEC 00000000 */   nop
    /* CD4F0 800DCCF0 1680043C */  lui        $a0, %hi(D_80158860)
    /* CD4F4 800DCCF4 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* CD4F8 800DCCF8 C826020C */  jal        func_80089B20
    /* CD4FC 800DCCFC 21280002 */   addu      $a1, $s0, $zero
    /* CD500 800DCD00 06004010 */  beqz       $v0, .L800DCD1C
    /* CD504 800DCD04 80181000 */   sll       $v1, $s0, 2
    /* CD508 800DCD08 21187300 */  addu       $v1, $v1, $s3
    /* CD50C 800DCD0C 0000628C */  lw         $v0, 0x0($v1)
    /* CD510 800DCD10 00000000 */  nop
    /* CD514 800DCD14 01004224 */  addiu      $v0, $v0, 0x1
    /* CD518 800DCD18 000062AC */  sw         $v0, 0x0($v1)
  .L800DCD1C:
    /* CD51C 800DCD1C 39730308 */  j          .L800DCCE4
    /* CD520 800DCD20 01001026 */   addiu     $s0, $s0, 0x1
  .L800DCD24:
    /* CD524 800DCD24 1680043C */  lui        $a0, %hi(D_80158860)
    /* CD528 800DCD28 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* CD52C 800DCD2C C826020C */  jal        func_80089B20
    /* CD530 800DCD30 2128C002 */   addu      $a1, $s6, $zero
    /* CD534 800DCD34 05004010 */  beqz       $v0, .L800DCD4C
    /* CD538 800DCD38 40101100 */   sll       $v0, $s1, 1
    /* CD53C 800DCD3C B800A78F */  lw         $a3, 0xB8($sp)
    /* CD540 800DCD40 00000000 */  nop
    /* CD544 800DCD44 0100E724 */  addiu      $a3, $a3, 0x1
    /* CD548 800DCD48 B800A7AF */  sw         $a3, 0xB8($sp)
  .L800DCD4C:
    /* CD54C 800DCD4C 21105100 */  addu       $v0, $v0, $s1
    /* CD550 800DCD50 80100200 */  sll        $v0, $v0, 2
    /* CD554 800DCD54 23105100 */  subu       $v0, $v0, $s1
    /* CD558 800DCD58 C0180200 */  sll        $v1, $v0, 3
    /* CD55C 800DCD5C 1180013C */  lui        $at, %hi(D_80113ED4)
    /* CD560 800DCD60 21082300 */  addu       $at, $at, $v1
    /* CD564 800DCD64 D43E228C */  lw         $v0, %lo(D_80113ED4)($at)
    /* CD568 800DCD68 00000000 */  nop
    /* CD56C 800DCD6C 01004230 */  andi       $v0, $v0, 0x1
    /* CD570 800DCD70 06004014 */  bnez       $v0, .L800DCD8C
    /* CD574 800DCD74 00000000 */   nop
    /* CD578 800DCD78 1180013C */  lui        $at, %hi(D_80113F20)
    /* CD57C 800DCD7C 21082300 */  addu       $at, $at, $v1
    /* CD580 800DCD80 203F2284 */  lh         $v0, %lo(D_80113F20)($at)
    /* CD584 800DCD84 00000000 */  nop
    /* CD588 800DCD88 21F0C203 */  addu       $fp, $fp, $v0
  .L800DCD8C:
    /* CD58C 800DCD8C 1A730308 */  j          .L800DCC68
    /* CD590 800DCD90 01003126 */   addiu     $s1, $s1, 0x1
  .L800DCD94:
    /* CD594 800DCD94 21800000 */  addu       $s0, $zero, $zero
    /* CD598 800DCD98 1000B327 */  addiu      $s3, $sp, 0x10
    /* CD59C 800DCD9C 80101000 */  sll        $v0, $s0, 2
  .L800DCDA0:
    /* CD5A0 800DCDA0 21885300 */  addu       $s1, $v0, $s3
    /* CD5A4 800DCDA4 0000228E */  lw         $v0, 0x0($s1)
    /* CD5A8 800DCDA8 00000000 */  nop
    /* CD5AC 800DCDAC 0B004010 */  beqz       $v0, .L800DCDDC
    /* CD5B0 800DCDB0 21204002 */   addu      $a0, $s2, $zero
    /* CD5B4 800DCDB4 C875000C */  jal        func_8001D720
    /* CD5B8 800DCDB8 21280002 */   addu      $a1, $s0, $zero
    /* CD5BC 800DCDBC 21184000 */  addu       $v1, $v0, $zero
    /* CD5C0 800DCDC0 06006010 */  beqz       $v1, .L800DCDDC
    /* CD5C4 800DCDC4 00000000 */   nop
    /* CD5C8 800DCDC8 0000228E */  lw         $v0, 0x0($s1)
    /* CD5CC 800DCDCC 00000000 */  nop
    /* CD5D0 800DCDD0 18006200 */  mult       $v1, $v0
    /* CD5D4 800DCDD4 12380000 */  mflo       $a3
    /* CD5D8 800DCDD8 21B8E702 */  addu       $s7, $s7, $a3
  .L800DCDDC:
    /* CD5DC 800DCDDC 01001026 */  addiu      $s0, $s0, 0x1
    /* CD5E0 800DCDE0 2700022A */  slti       $v0, $s0, 0x27
    /* CD5E4 800DCDE4 EEFF4014 */  bnez       $v0, .L800DCDA0
    /* CD5E8 800DCDE8 80101000 */   sll       $v0, $s0, 2
    /* CD5EC 800DCDEC 2A10D703 */  slt        $v0, $fp, $s7
    /* CD5F0 800DCDF0 0E004010 */  beqz       $v0, .L800DCE2C
    /* CD5F4 800DCDF4 40101200 */   sll       $v0, $s2, 1
    /* CD5F8 800DCDF8 21105200 */  addu       $v0, $v0, $s2
    /* CD5FC 800DCDFC 80100200 */  sll        $v0, $v0, 2
    /* CD600 800DCE00 23105200 */  subu       $v0, $v0, $s2
    /* CD604 800DCE04 00110200 */  sll        $v0, $v0, 4
    /* CD608 800DCE08 23105200 */  subu       $v0, $v0, $s2
    /* CD60C 800DCE0C C0100200 */  sll        $v0, $v0, 3
    /* CD610 800DCE10 1180013C */  lui        $at, %hi(D_80117694)
    /* CD614 800DCE14 21082200 */  addu       $at, $at, $v0
    /* CD618 800DCE18 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* CD61C 800DCE1C 00000000 */  nop
    /* CD620 800DCE20 64004228 */  slti       $v0, $v0, 0x64
    /* CD624 800DCE24 2C004014 */  bnez       $v0, .L800DCED8
    /* CD628 800DCE28 01000224 */   addiu     $v0, $zero, 0x1
  .L800DCE2C:
    /* CD62C 800DCE2C B000A58F */  lw         $a1, 0xB0($sp)
    /* CD630 800DCE30 8ACA010C */  jal        func_80072A28
    /* CD634 800DCE34 21204002 */   addu      $a0, $s2, $zero
    /* CD638 800DCE38 27004010 */  beqz       $v0, .L800DCED8
    /* CD63C 800DCE3C 02000224 */   addiu     $v0, $zero, 0x2
    /* CD640 800DCE40 C000A78F */  lw         $a3, 0xC0($sp)
    /* CD644 800DCE44 00000000 */  nop
    /* CD648 800DCE48 1A00A702 */  div        $zero, $s5, $a3
    /* CD64C 800DCE4C 0200E014 */  bnez       $a3, .L800DCE58
    /* CD650 800DCE50 00000000 */   nop
    /* CD654 800DCE54 0D000700 */  break      7
  .L800DCE58:
    /* CD658 800DCE58 FFFF0124 */  addiu      $at, $zero, -0x1
    /* CD65C 800DCE5C 0400E114 */  bne        $a3, $at, .L800DCE70
    /* CD660 800DCE60 0080013C */   lui       $at, (0x80000000 >> 16)
    /* CD664 800DCE64 0200A116 */  bne        $s5, $at, .L800DCE70
    /* CD668 800DCE68 00000000 */   nop
    /* CD66C 800DCE6C 0D000600 */  break      6
  .L800DCE70:
    /* CD670 800DCE70 12100000 */  mflo       $v0
    /* CD674 800DCE74 B800A78F */  lw         $a3, 0xB8($sp)
    /* CD678 800DCE78 00000000 */  nop
    /* CD67C 800DCE7C 2A10E200 */  slt        $v0, $a3, $v0
    /* CD680 800DCE80 15004014 */  bnez       $v0, .L800DCED8
    /* CD684 800DCE84 03000224 */   addiu     $v0, $zero, 0x3
    /* CD688 800DCE88 21204002 */  addu       $a0, $s2, $zero
    /* CD68C 800DCE8C 8ACA010C */  jal        func_80072A28
    /* CD690 800DCE90 54000524 */   addiu     $a1, $zero, 0x54
    /* CD694 800DCE94 03004014 */  bnez       $v0, .L800DCEA4
    /* CD698 800DCE98 2110A002 */   addu      $v0, $s5, $zero
    /* CD69C 800DCE9C B6730308 */  j          .L800DCED8
    /* CD6A0 800DCEA0 04000224 */   addiu     $v0, $zero, 0x4
  .L800DCEA4:
    /* CD6A4 800DCEA4 02004104 */  bgez       $v0, .L800DCEB0
    /* CD6A8 800DCEA8 00000000 */   nop
    /* CD6AC 800DCEAC 03004224 */  addiu      $v0, $v0, 0x3
  .L800DCEB0:
    /* CD6B0 800DCEB0 83100200 */  sra        $v0, $v0, 2
    /* CD6B4 800DCEB4 2A108202 */  slt        $v0, $s4, $v0
    /* CD6B8 800DCEB8 03004010 */  beqz       $v0, .L800DCEC8
    /* CD6BC 800DCEBC 2318D703 */   subu      $v1, $fp, $s7
    /* CD6C0 800DCEC0 B6730308 */  j          .L800DCED8
    /* CD6C4 800DCEC4 05000224 */   addiu     $v0, $zero, 0x5
  .L800DCEC8:
    /* CD6C8 800DCEC8 06006328 */  slti       $v1, $v1, 0x6
    /* CD6CC 800DCECC 02006014 */  bnez       $v1, .L800DCED8
    /* CD6D0 800DCED0 06000224 */   addiu     $v0, $zero, 0x6
    /* CD6D4 800DCED4 07000224 */  addiu      $v0, $zero, 0x7
  .L800DCED8:
    /* CD6D8 800DCED8 EC00BF8F */  lw         $ra, 0xEC($sp)
    /* CD6DC 800DCEDC E800BE8F */  lw         $fp, 0xE8($sp)
    /* CD6E0 800DCEE0 E400B78F */  lw         $s7, 0xE4($sp)
    /* CD6E4 800DCEE4 E000B68F */  lw         $s6, 0xE0($sp)
    /* CD6E8 800DCEE8 DC00B58F */  lw         $s5, 0xDC($sp)
    /* CD6EC 800DCEEC D800B48F */  lw         $s4, 0xD8($sp)
    /* CD6F0 800DCEF0 D400B38F */  lw         $s3, 0xD4($sp)
    /* CD6F4 800DCEF4 D000B28F */  lw         $s2, 0xD0($sp)
    /* CD6F8 800DCEF8 CC00B18F */  lw         $s1, 0xCC($sp)
    /* CD6FC 800DCEFC C800B08F */  lw         $s0, 0xC8($sp)
    /* CD700 800DCF00 F000BD27 */  addiu      $sp, $sp, 0xF0
    /* CD704 800DCF04 0800E003 */  jr         $ra
    /* CD708 800DCF08 00000000 */   nop
endlabel func_800DCB78
