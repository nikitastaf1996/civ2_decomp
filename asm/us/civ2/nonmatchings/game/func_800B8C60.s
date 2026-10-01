.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8C60, 0xA8

glabel func_800B8C60
    /* A9460 800B8C60 20FDBD27 */  addiu      $sp, $sp, -0x2E0
    /* A9464 800B8C64 D802BFAF */  sw         $ra, 0x2D8($sp)
    /* A9468 800B8C68 D402B3AF */  sw         $s3, 0x2D4($sp)
    /* A946C 800B8C6C D002B2AF */  sw         $s2, 0x2D0($sp)
    /* A9470 800B8C70 CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* A9474 800B8C74 C802B0AF */  sw         $s0, 0x2C8($sp)
    /* A9478 800B8C78 21908000 */  addu       $s2, $a0, $zero
    /* A947C 800B8C7C 2198A000 */  addu       $s3, $a1, $zero
    /* A9480 800B8C80 2188C000 */  addu       $s1, $a2, $zero
    /* A9484 800B8C84 2800A427 */  addiu      $a0, $sp, 0x28
    /* A9488 800B8C88 ADC5020C */  jal        func_800B16B4
    /* A948C 800B8C8C 00200524 */   addiu     $a1, $zero, 0x2000
    /* A9490 800B8C90 2800B027 */  addiu      $s0, $sp, 0x28
    /* A9494 800B8C94 1000A0AF */  sw         $zero, 0x10($sp)
    /* A9498 800B8C98 1400A0AF */  sw         $zero, 0x14($sp)
    /* A949C 800B8C9C 1800A0AF */  sw         $zero, 0x18($sp)
    /* A94A0 800B8CA0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* A94A4 800B8CA4 2000B1AF */  sw         $s1, 0x20($sp)
    /* A94A8 800B8CA8 21200002 */  addu       $a0, $s0, $zero
    /* A94AC 800B8CAC 21284002 */  addu       $a1, $s2, $zero
    /* A94B0 800B8CB0 21306002 */  addu       $a2, $s3, $zero
    /* A94B4 800B8CB4 2CE0020C */  jal        func_800B80B0
    /* A94B8 800B8CB8 21380000 */   addu      $a3, $zero, $zero
    /* A94BC 800B8CBC 21200002 */  addu       $a0, $s0, $zero
    /* A94C0 800B8CC0 52DF020C */  jal        func_800B7D48
    /* A94C4 800B8CC4 21280000 */   addu      $a1, $zero, $zero
    /* A94C8 800B8CC8 21884000 */  addu       $s1, $v0, $zero
    /* A94CC 800B8CCC E800A28F */  lw         $v0, 0xE8($sp)
    /* A94D0 800B8CD0 00000000 */  nop
    /* A94D4 800B8CD4 000B82AF */  sw         $v0, %gp_rel(D_80158FD8)($gp)
    /* A94D8 800B8CD8 21200002 */  addu       $a0, $s0, $zero
    /* A94DC 800B8CDC 0AC7020C */  jal        func_800B1C28
    /* A94E0 800B8CE0 02000524 */   addiu     $a1, $zero, 0x2
    /* A94E4 800B8CE4 21102002 */  addu       $v0, $s1, $zero
    /* A94E8 800B8CE8 D802BF8F */  lw         $ra, 0x2D8($sp)
    /* A94EC 800B8CEC D402B38F */  lw         $s3, 0x2D4($sp)
    /* A94F0 800B8CF0 D002B28F */  lw         $s2, 0x2D0($sp)
    /* A94F4 800B8CF4 CC02B18F */  lw         $s1, 0x2CC($sp)
    /* A94F8 800B8CF8 C802B08F */  lw         $s0, 0x2C8($sp)
    /* A94FC 800B8CFC E002BD27 */  addiu      $sp, $sp, 0x2E0
    /* A9500 800B8D00 0800E003 */  jr         $ra
    /* A9504 800B8D04 00000000 */   nop
endlabel func_800B8C60
