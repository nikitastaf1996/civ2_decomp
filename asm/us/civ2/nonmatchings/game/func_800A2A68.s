.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A2A68, 0xA4

glabel func_800A2A68
    /* 93268 800A2A68 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9326C 800A2A6C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 93270 800A2A70 1800B2AF */  sw         $s2, 0x18($sp)
    /* 93274 800A2A74 1400B1AF */  sw         $s1, 0x14($sp)
    /* 93278 800A2A78 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9327C 800A2A7C 21888000 */  addu       $s1, $a0, $zero
    /* 93280 800A2A80 2190A000 */  addu       $s2, $a1, $zero
    /* 93284 800A2A84 1189020C */  jal        func_800A2444
    /* 93288 800A2A88 2180C000 */   addu      $s0, $a2, $zero
    /* 9328C 800A2A8C 21204000 */  addu       $a0, $v0, $zero
    /* 93290 800A2A90 17008010 */  beqz       $a0, .L800A2AF0
    /* 93294 800A2A94 2B801000 */   sltu      $s0, $zero, $s0
    /* 93298 800A2A98 0800828C */  lw         $v0, 0x8($a0)
    /* 9329C 800A2A9C 03000012 */  beqz       $s0, .L800A2AAC
    /* 932A0 800A2AA0 01004530 */   andi      $a1, $v0, 0x1
    /* 932A4 800A2AA4 AD8A0208 */  j          .L800A2AB4
    /* 932A8 800A2AA8 01004234 */   ori       $v0, $v0, 0x1
  .L800A2AAC:
    /* 932AC 800A2AAC FEFF0324 */  addiu      $v1, $zero, -0x2
    /* 932B0 800A2AB0 24104300 */  and        $v0, $v0, $v1
  .L800A2AB4:
    /* 932B4 800A2AB4 080082AC */  sw         $v0, 0x8($a0)
    /* 932B8 800A2AB8 1400228E */  lw         $v0, 0x14($s1)
    /* 932BC 800A2ABC 00000000 */  nop
    /* 932C0 800A2AC0 00804230 */  andi       $v0, $v0, 0x8000
    /* 932C4 800A2AC4 0A004010 */  beqz       $v0, .L800A2AF0
    /* 932C8 800A2AC8 00000000 */   nop
    /* 932CC 800A2ACC 0800828C */  lw         $v0, 0x8($a0)
    /* 932D0 800A2AD0 00000000 */  nop
    /* 932D4 800A2AD4 02004230 */  andi       $v0, $v0, 0x2
    /* 932D8 800A2AD8 05004014 */  bnez       $v0, .L800A2AF0
    /* 932DC 800A2ADC 00000000 */   nop
    /* 932E0 800A2AE0 03000512 */  beq        $s0, $a1, .L800A2AF0
    /* 932E4 800A2AE4 21202002 */   addu      $a0, $s1, $zero
    /* 932E8 800A2AE8 388A020C */  jal        func_800A28E0
    /* 932EC 800A2AEC 21284002 */   addu      $a1, $s2, $zero
  .L800A2AF0:
    /* 932F0 800A2AF0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 932F4 800A2AF4 1800B28F */  lw         $s2, 0x18($sp)
    /* 932F8 800A2AF8 1400B18F */  lw         $s1, 0x14($sp)
    /* 932FC 800A2AFC 1000B08F */  lw         $s0, 0x10($sp)
    /* 93300 800A2B00 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 93304 800A2B04 0800E003 */  jr         $ra
    /* 93308 800A2B08 00000000 */   nop
endlabel func_800A2A68
