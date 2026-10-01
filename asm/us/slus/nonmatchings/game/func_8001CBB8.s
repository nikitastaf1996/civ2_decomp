.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001CBB8, 0xA0

glabel func_8001CBB8
    /* D3B8 8001CBB8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D3BC 8001CBBC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* D3C0 8001CBC0 1800B0AF */  sw         $s0, 0x18($sp)
    /* D3C4 8001CBC4 21808000 */  addu       $s0, $a0, $zero
    /* D3C8 8001CBC8 8FEB000C */  jal        SsGetMVol
    /* D3CC 8001CBCC 1000A427 */   addiu     $a0, $sp, 0x10
  .L8001CBD0:
    /* D3D0 8001CBD0 9269000C */  jal        func_8001A648
    /* D3D4 8001CBD4 FF000432 */   andi      $a0, $s0, 0xFF
    /* D3D8 8001CBD8 16004014 */  bnez       $v0, .L8001CC34
    /* D3DC 8001CBDC 00000000 */   nop
    /* D3E0 8001CBE0 1000A297 */  lhu        $v0, 0x10($sp)
    /* D3E4 8001CBE4 00000000 */  nop
    /* D3E8 8001CBE8 0500422C */  sltiu      $v0, $v0, 0x5
    /* D3EC 8001CBEC 07004014 */  bnez       $v0, .L8001CC0C
    /* D3F0 8001CBF0 00000000 */   nop
    /* D3F4 8001CBF4 1200A297 */  lhu        $v0, 0x12($sp)
    /* D3F8 8001CBF8 00000000 */  nop
    /* D3FC 8001CBFC FCFF4224 */  addiu      $v0, $v0, -0x4
    /* D400 8001CC00 1200A2A7 */  sh         $v0, 0x12($sp)
    /* D404 8001CC04 05730008 */  j          .L8001CC14
    /* D408 8001CC08 1000A2A7 */   sh        $v0, 0x10($sp)
  .L8001CC0C:
    /* D40C 8001CC0C 1200A0A7 */  sh         $zero, 0x12($sp)
    /* D410 8001CC10 1000A0A7 */  sh         $zero, 0x10($sp)
  .L8001CC14:
    /* D414 8001CC14 1000A487 */  lh         $a0, 0x10($sp)
    /* D418 8001CC18 1200A587 */  lh         $a1, 0x12($sp)
    /* D41C 8001CC1C 8BF7000C */  jal        SsSetMVol
    /* D420 8001CC20 00000000 */   nop
    /* D424 8001CC24 BF72000C */  jal        func_8001CAFC
    /* D428 8001CC28 01000424 */   addiu     $a0, $zero, 0x1
    /* D42C 8001CC2C F4720008 */  j          .L8001CBD0
    /* D430 8001CC30 00000000 */   nop
  .L8001CC34:
    /* D434 8001CC34 BF72000C */  jal        func_8001CAFC
    /* D438 8001CC38 01000424 */   addiu     $a0, $zero, 0x1
    /* D43C 8001CC3C 14CF000C */  jal        SetDispMask
    /* D440 8001CC40 21200000 */   addu      $a0, $zero, $zero
    /* D444 8001CC44 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* D448 8001CC48 1800B08F */  lw         $s0, 0x18($sp)
    /* D44C 8001CC4C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* D450 8001CC50 0800E003 */  jr         $ra
    /* D454 8001CC54 00000000 */   nop
endlabel func_8001CBB8
