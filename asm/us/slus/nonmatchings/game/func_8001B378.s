.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B378, 0xB0

glabel func_8001B378
    /* BB78 8001B378 21280000 */  addu       $a1, $zero, $zero
  .L8001B37C:
    /* BB7C 8001B37C 0D80013C */  lui        $at, %hi(D_800CC1E8)
    /* BB80 8001B380 21082500 */  addu       $at, $at, $a1
    /* BB84 8001B384 E8C120A0 */  sb         $zero, %lo(D_800CC1E8)($at)
    /* BB88 8001B388 0100A524 */  addiu      $a1, $a1, 0x1
    /* BB8C 8001B38C 0B00A228 */  slti       $v0, $a1, 0xB
    /* BB90 8001B390 FAFF4014 */  bnez       $v0, .L8001B37C
    /* BB94 8001B394 00000000 */   nop
    /* BB98 8001B398 03008104 */  bgez       $a0, .L8001B3A8
    /* BB9C 8001B39C FF000224 */   addiu     $v0, $zero, 0xFF
    /* BBA0 8001B3A0 0D80013C */  lui        $at, %hi(D_800CC1F2)
    /* BBA4 8001B3A4 F2C122A0 */  sb         $v0, %lo(D_800CC1F2)($at)
  .L8001B3A8:
    /* BBA8 8001B3A8 02008104 */  bgez       $a0, .L8001B3B4
    /* BBAC 8001B3AC 00000000 */   nop
    /* BBB0 8001B3B0 23200400 */  negu       $a0, $a0
  .L8001B3B4:
    /* BBB4 8001B3B4 21280000 */  addu       $a1, $zero, $zero
    /* BBB8 8001B3B8 0180083C */  lui        $t0, %hi(D_800169CC)
    /* BBBC 8001B3BC CC690825 */  addiu      $t0, $t0, %lo(D_800169CC)
    /* BBC0 8001B3C0 0D80093C */  lui        $t1, %hi(D_800CC1F1)
    /* BBC4 8001B3C4 F1C12925 */  addiu      $t1, $t1, %lo(D_800CC1F1)
  .L8001B3C8:
    /* BBC8 8001B3C8 80100500 */  sll        $v0, $a1, 2
    /* BBCC 8001B3CC 21304000 */  addu       $a2, $v0, $zero
    /* BBD0 8001B3D0 21104800 */  addu       $v0, $v0, $t0
    /* BBD4 8001B3D4 0000428C */  lw         $v0, 0x0($v0)
    /* BBD8 8001B3D8 00000000 */  nop
    /* BBDC 8001B3DC 2A108200 */  slt        $v0, $a0, $v0
    /* BBE0 8001B3E0 09004014 */  bnez       $v0, .L8001B408
    /* BBE4 8001B3E4 21380000 */   addu      $a3, $zero, $zero
    /* BBE8 8001B3E8 2110C000 */  addu       $v0, $a2, $zero
  .L8001B3EC:
    /* BBEC 8001B3EC 21184800 */  addu       $v1, $v0, $t0
    /* BBF0 8001B3F0 0000638C */  lw         $v1, 0x0($v1)
    /* BBF4 8001B3F4 00000000 */  nop
    /* BBF8 8001B3F8 23208300 */  subu       $a0, $a0, $v1
    /* BBFC 8001B3FC 2A188300 */  slt        $v1, $a0, $v1
    /* BC00 8001B400 FAFF6010 */  beqz       $v1, .L8001B3EC
    /* BC04 8001B404 0100E724 */   addiu     $a3, $a3, 0x1
  .L8001B408:
    /* BC08 8001B408 23102501 */  subu       $v0, $t1, $a1
    /* BC0C 8001B40C 000047A0 */  sb         $a3, 0x0($v0)
    /* BC10 8001B410 0100A524 */  addiu      $a1, $a1, 0x1
    /* BC14 8001B414 0A00A228 */  slti       $v0, $a1, 0xA
    /* BC18 8001B418 EBFF4014 */  bnez       $v0, .L8001B3C8
    /* BC1C 8001B41C 00000000 */   nop
    /* BC20 8001B420 0800E003 */  jr         $ra
    /* BC24 8001B424 00000000 */   nop
endlabel func_8001B378
