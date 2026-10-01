.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8A50, 0x60

glabel func_800B8A50
    /* A9250 800B8A50 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A9254 800B8A54 1400BFAF */  sw         $ra, 0x14($sp)
    /* A9258 800B8A58 1000B0AF */  sw         $s0, 0x10($sp)
    /* A925C 800B8A5C 21808000 */  addu       $s0, $a0, $zero
    /* A9260 800B8A60 2802038E */  lw         $v1, 0x228($s0)
    /* A9264 800B8A64 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A9268 800B8A68 0C006210 */  beq        $v1, $v0, .L800B8A9C
    /* A926C 800B8A6C 00000000 */   nop
  .L800B8A70:
    /* A9270 800B8A70 2802048E */  lw         $a0, 0x228($s0)
    /* A9274 800B8A74 A81E040C */  jal        func_80107AA0
    /* A9278 800B8A78 00000000 */   nop
    /* A927C 800B8A7C 05004010 */  beqz       $v0, .L800B8A94
    /* A9280 800B8A80 00000000 */   nop
    /* A9284 800B8A84 8E12040C */  jal        func_80104A38
    /* A9288 800B8A88 00000000 */   nop
    /* A928C 800B8A8C 9CE20208 */  j          .L800B8A70
    /* A9290 800B8A90 00000000 */   nop
  .L800B8A94:
    /* A9294 800B8A94 8E12040C */  jal        func_80104A38
    /* A9298 800B8A98 00000000 */   nop
  .L800B8A9C:
    /* A929C 800B8A9C 1400BF8F */  lw         $ra, 0x14($sp)
    /* A92A0 800B8AA0 1000B08F */  lw         $s0, 0x10($sp)
    /* A92A4 800B8AA4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A92A8 800B8AA8 0800E003 */  jr         $ra
    /* A92AC 800B8AAC 00000000 */   nop
endlabel func_800B8A50
