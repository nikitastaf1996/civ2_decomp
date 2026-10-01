.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800185CC, 0x70

glabel func_800185CC
    /* 8DCC 800185CC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8DD0 800185D0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8DD4 800185D4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8DD8 800185D8 21808000 */  addu       $s0, $a0, $zero
    /* 8DDC 800185DC 02000424 */  addiu      $a0, $zero, 0x2
  .L800185E0:
    /* 8DE0 800185E0 21280002 */  addu       $a1, $s0, $zero
    /* 8DE4 800185E4 F6B9000C */  jal        CdControl
    /* 8DE8 800185E8 21300000 */   addu      $a2, $zero, $zero
    /* 8DEC 800185EC FCFF4010 */  beqz       $v0, .L800185E0
    /* 8DF0 800185F0 02000424 */   addiu     $a0, $zero, 0x2
    /* 8DF4 800185F4 1000A0A3 */  sb         $zero, 0x10($sp)
    /* 8DF8 800185F8 0E000424 */  addiu      $a0, $zero, 0xE
  .L800185FC:
    /* 8DFC 800185FC 1000A527 */  addiu      $a1, $sp, 0x10
    /* 8E00 80018600 F6B9000C */  jal        CdControl
    /* 8E04 80018604 21300000 */   addu      $a2, $zero, $zero
    /* 8E08 80018608 FCFF4010 */  beqz       $v0, .L800185FC
    /* 8E0C 8001860C 0E000424 */   addiu     $a0, $zero, 0xE
    /* 8E10 80018610 23B3000C */  jal        VSync
    /* 8E14 80018614 03000424 */   addiu     $a0, $zero, 0x3
    /* 8E18 80018618 9BC5000C */  jal        CdRead2
    /* 8E1C 8001861C 60010424 */   addiu     $a0, $zero, 0x160
    /* 8E20 80018620 EFFF4010 */  beqz       $v0, .L800185E0
    /* 8E24 80018624 02000424 */   addiu     $a0, $zero, 0x2
    /* 8E28 80018628 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8E2C 8001862C 1800B08F */  lw         $s0, 0x18($sp)
    /* 8E30 80018630 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8E34 80018634 0800E003 */  jr         $ra
    /* 8E38 80018638 00000000 */   nop
endlabel func_800185CC
