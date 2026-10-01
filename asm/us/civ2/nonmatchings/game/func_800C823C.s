.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C823C, 0x54

glabel func_800C823C
    /* B8A3C 800C823C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B8A40 800C8240 1400BFAF */  sw         $ra, 0x14($sp)
    /* B8A44 800C8244 1000B0AF */  sw         $s0, 0x10($sp)
    /* B8A48 800C8248 21808000 */  addu       $s0, $a0, $zero
  .L800C824C:
    /* B8A4C 800C824C BC02028E */  lw         $v0, 0x2BC($s0)
    /* B8A50 800C8250 00000000 */  nop
    /* B8A54 800C8254 ABFF4228 */  slti       $v0, $v0, -0x55
    /* B8A58 800C8258 08004014 */  bnez       $v0, .L800C827C
    /* B8A5C 800C825C 00000000 */   nop
    /* B8A60 800C8260 8E12040C */  jal        func_80104A38
    /* B8A64 800C8264 00000000 */   nop
    /* B8A68 800C8268 21200002 */  addu       $a0, $s0, $zero
    /* B8A6C 800C826C 6920030C */  jal        func_800C81A4
    /* B8A70 800C8270 FCFF0524 */   addiu     $a1, $zero, -0x4
    /* B8A74 800C8274 93200308 */  j          .L800C824C
    /* B8A78 800C8278 00000000 */   nop
  .L800C827C:
    /* B8A7C 800C827C 1400BF8F */  lw         $ra, 0x14($sp)
    /* B8A80 800C8280 1000B08F */  lw         $s0, 0x10($sp)
    /* B8A84 800C8284 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B8A88 800C8288 0800E003 */  jr         $ra
    /* B8A8C 800C828C 00000000 */   nop
endlabel func_800C823C
