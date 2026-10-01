.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8DC0, 0x74

glabel func_800B8DC0
    /* A95C0 800B8DC0 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* A95C4 800B8DC4 3000BFAF */  sw         $ra, 0x30($sp)
    /* A95C8 800B8DC8 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* A95CC 800B8DCC 2800B0AF */  sw         $s0, 0x28($sp)
    /* A95D0 800B8DD0 21808000 */  addu       $s0, $a0, $zero
    /* A95D4 800B8DD4 2188A000 */  addu       $s1, $a1, $zero
    /* A95D8 800B8DD8 00240600 */  sll        $a0, $a2, 16
    /* A95DC 800B8DDC 03240400 */  sra        $a0, $a0, 16
    /* A95E0 800B8DE0 1000A527 */  addiu      $a1, $sp, 0x10
    /* A95E4 800B8DE4 95D4030C */  jal        func_800F5254
    /* A95E8 800B8DE8 0A000624 */   addiu     $a2, $zero, 0xA
    /* A95EC 800B8DEC 21200002 */  addu       $a0, $s0, $zero
    /* A95F0 800B8DF0 21282002 */  addu       $a1, $s1, $zero
    /* A95F4 800B8DF4 05000624 */  addiu      $a2, $zero, 0x5
    /* A95F8 800B8DF8 42E3020C */  jal        func_800B8D08
    /* A95FC 800B8DFC 1000A727 */   addiu     $a3, $sp, 0x10
    /* A9600 800B8E00 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* A9604 800B8E04 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* A9608 800B8E08 9187030C */  jal        func_800E1E44
    /* A960C 800B8E0C 21804000 */   addu      $s0, $v0, $zero
    /* A9610 800B8E10 1280013C */  lui        $at, %hi(D_8011FF28)
    /* A9614 800B8E14 28FF22AC */  sw         $v0, %lo(D_8011FF28)($at)
    /* A9618 800B8E18 21100002 */  addu       $v0, $s0, $zero
    /* A961C 800B8E1C 3000BF8F */  lw         $ra, 0x30($sp)
    /* A9620 800B8E20 2C00B18F */  lw         $s1, 0x2C($sp)
    /* A9624 800B8E24 2800B08F */  lw         $s0, 0x28($sp)
    /* A9628 800B8E28 3800BD27 */  addiu      $sp, $sp, 0x38
    /* A962C 800B8E2C 0800E003 */  jr         $ra
    /* A9630 800B8E30 00000000 */   nop
endlabel func_800B8DC0
