.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A5B40, 0xE8

glabel func_800A5B40
    /* 96340 800A5B40 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 96344 800A5B44 1400BFAF */  sw         $ra, 0x14($sp)
    /* 96348 800A5B48 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9634C 800A5B4C 2800A98F */  lw         $t1, 0x28($sp)
    /* 96350 800A5B50 23188600 */  subu       $v1, $a0, $a2
    /* 96354 800A5B54 0300601C */  bgtz       $v1, .L800A5B64
    /* 96358 800A5B58 00000000 */   nop
    /* 9635C 800A5B5C 27180300 */  nor        $v1, $zero, $v1
    /* 96360 800A5B60 01006324 */  addiu      $v1, $v1, 0x1
  .L800A5B64:
    /* 96364 800A5B64 1280023C */  lui        $v0, %hi(D_8011A250)
    /* 96368 800A5B68 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* 9636C 800A5B6C 00000000 */  nop
    /* 96370 800A5B70 00804230 */  andi       $v0, $v0, 0x8000
    /* 96374 800A5B74 0B004014 */  bnez       $v0, .L800A5BA4
    /* 96378 800A5B78 2310A700 */   subu      $v0, $a1, $a3
    /* 9637C 800A5B7C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 96380 800A5B80 08C34294 */  lhu        $v0, %lo(D_8011C308)($v0)
    /* 96384 800A5B84 00000000 */  nop
    /* 96388 800A5B88 00140200 */  sll        $v0, $v0, 16
    /* 9638C 800A5B8C 03440200 */  sra        $t0, $v0, 16
    /* 96390 800A5B90 43140200 */  sra        $v0, $v0, 17
    /* 96394 800A5B94 2A104300 */  slt        $v0, $v0, $v1
    /* 96398 800A5B98 02004010 */  beqz       $v0, .L800A5BA4
    /* 9639C 800A5B9C 2310A700 */   subu      $v0, $a1, $a3
    /* 963A0 800A5BA0 23180301 */  subu       $v1, $t0, $v1
  .L800A5BA4:
    /* 963A4 800A5BA4 0300401C */  bgtz       $v0, .L800A5BB4
    /* 963A8 800A5BA8 00000000 */   nop
    /* 963AC 800A5BAC 27100200 */  nor        $v0, $zero, $v0
    /* 963B0 800A5BB0 01004224 */  addiu      $v0, $v0, 0x1
  .L800A5BB4:
    /* 963B4 800A5BB4 21106200 */  addu       $v0, $v1, $v0
    /* 963B8 800A5BB8 43100200 */  sra        $v0, $v0, 1
    /* 963BC 800A5BBC 03004014 */  bnez       $v0, .L800A5BCC
    /* 963C0 800A5BC0 17004228 */   slti      $v0, $v0, 0x17
    /* 963C4 800A5BC4 05970208 */  j          .L800A5C14
    /* 963C8 800A5BC8 21100000 */   addu      $v0, $zero, $zero
  .L800A5BCC:
    /* 963CC 800A5BCC 11004010 */  beqz       $v0, .L800A5C14
    /* 963D0 800A5BD0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 963D4 800A5BD4 02002015 */  bnez       $t1, .L800A5BE0
    /* 963D8 800A5BD8 21000224 */   addiu     $v0, $zero, 0x21
    /* 963DC 800A5BDC 02000224 */  addiu      $v0, $zero, 0x2
  .L800A5BE0:
    /* 963E0 800A5BE0 E40582AF */  sw         $v0, %gp_rel(D_80158ABC)($gp)
    /* 963E4 800A5BE4 FC0586AF */  sw         $a2, %gp_rel(D_80158AD4)($gp)
    /* 963E8 800A5BE8 000687AF */  sw         $a3, %gp_rel(D_80158AD8)($gp)
    /* 963EC 800A5BEC EC05908F */  lw         $s0, %gp_rel(D_80158AC4)($gp)
    /* 963F0 800A5BF0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 963F4 800A5BF4 EC0582AF */  sw         $v0, %gp_rel(D_80158AC4)($gp)
    /* 963F8 800A5BF8 2C00A68F */  lw         $a2, 0x2C($sp)
    /* 963FC 800A5BFC F092020C */  jal        func_800A4BC0
    /* 96400 800A5C00 00000000 */   nop
    /* 96404 800A5C04 EC0590AF */  sw         $s0, %gp_rel(D_80158AC4)($gp)
    /* 96408 800A5C08 02004004 */  bltz       $v0, .L800A5C14
    /* 9640C 800A5C0C 00000000 */   nop
    /* 96410 800A5C10 0406828F */  lw         $v0, %gp_rel(D_80158ADC)($gp)
  .L800A5C14:
    /* 96414 800A5C14 1400BF8F */  lw         $ra, 0x14($sp)
    /* 96418 800A5C18 1000B08F */  lw         $s0, 0x10($sp)
    /* 9641C 800A5C1C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 96420 800A5C20 0800E003 */  jr         $ra
    /* 96424 800A5C24 00000000 */   nop
endlabel func_800A5B40
