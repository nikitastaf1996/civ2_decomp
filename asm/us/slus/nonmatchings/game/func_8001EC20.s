.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001EC20, 0xA0

glabel func_8001EC20
    /* F420 8001EC20 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* F424 8001EC24 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* F428 8001EC28 1800B0AF */  sw         $s0, 0x18($sp)
    /* F42C 8001EC2C 21808000 */  addu       $s0, $a0, $zero
    /* F430 8001EC30 8FEB000C */  jal        SsGetMVol
    /* F434 8001EC34 1000A427 */   addiu     $a0, $sp, 0x10
  .L8001EC38:
    /* F438 8001EC38 9269000C */  jal        func_8001A648
    /* F43C 8001EC3C FF000432 */   andi      $a0, $s0, 0xFF
    /* F440 8001EC40 16004014 */  bnez       $v0, .L8001EC9C
    /* F444 8001EC44 00000000 */   nop
    /* F448 8001EC48 1000A297 */  lhu        $v0, 0x10($sp)
    /* F44C 8001EC4C 00000000 */  nop
    /* F450 8001EC50 0500422C */  sltiu      $v0, $v0, 0x5
    /* F454 8001EC54 07004014 */  bnez       $v0, .L8001EC74
    /* F458 8001EC58 00000000 */   nop
    /* F45C 8001EC5C 1200A297 */  lhu        $v0, 0x12($sp)
    /* F460 8001EC60 00000000 */  nop
    /* F464 8001EC64 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* F468 8001EC68 1200A2A7 */  sh         $v0, 0x12($sp)
    /* F46C 8001EC6C 1F7B0008 */  j          .L8001EC7C
    /* F470 8001EC70 1000A2A7 */   sh        $v0, 0x10($sp)
  .L8001EC74:
    /* F474 8001EC74 1200A0A7 */  sh         $zero, 0x12($sp)
    /* F478 8001EC78 1000A0A7 */  sh         $zero, 0x10($sp)
  .L8001EC7C:
    /* F47C 8001EC7C 1000A487 */  lh         $a0, 0x10($sp)
    /* F480 8001EC80 1200A587 */  lh         $a1, 0x12($sp)
    /* F484 8001EC84 8BF7000C */  jal        SsSetMVol
    /* F488 8001EC88 00000000 */   nop
    /* F48C 8001EC8C E976000C */  jal        func_8001DBA4
    /* F490 8001EC90 01000424 */   addiu     $a0, $zero, 0x1
    /* F494 8001EC94 0E7B0008 */  j          .L8001EC38
    /* F498 8001EC98 00000000 */   nop
  .L8001EC9C:
    /* F49C 8001EC9C E976000C */  jal        func_8001DBA4
    /* F4A0 8001ECA0 01000424 */   addiu     $a0, $zero, 0x1
    /* F4A4 8001ECA4 14CF000C */  jal        SetDispMask
    /* F4A8 8001ECA8 21200000 */   addu      $a0, $zero, $zero
    /* F4AC 8001ECAC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* F4B0 8001ECB0 1800B08F */  lw         $s0, 0x18($sp)
    /* F4B4 8001ECB4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* F4B8 8001ECB8 0800E003 */  jr         $ra
    /* F4BC 8001ECBC 00000000 */   nop
endlabel func_8001EC20
