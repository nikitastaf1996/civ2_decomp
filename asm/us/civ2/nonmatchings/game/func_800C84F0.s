.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C84F0, 0x6C

glabel func_800C84F0
    /* B8CF0 800C84F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B8CF4 800C84F4 1400BFAF */  sw         $ra, 0x14($sp)
    /* B8CF8 800C84F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* B8CFC 800C84FC 40100400 */  sll        $v0, $a0, 1
    /* B8D00 800C8500 21104400 */  addu       $v0, $v0, $a0
    /* B8D04 800C8504 80100200 */  sll        $v0, $v0, 2
    /* B8D08 800C8508 23104400 */  subu       $v0, $v0, $a0
    /* B8D0C 800C850C 00110200 */  sll        $v0, $v0, 4
    /* B8D10 800C8510 23104400 */  subu       $v0, $v0, $a0
    /* B8D14 800C8514 C0100200 */  sll        $v0, $v0, 3
    /* B8D18 800C8518 1180063C */  lui        $a2, %hi(D_80117A7C)
    /* B8D1C 800C851C 7C7AC624 */  addiu      $a2, $a2, %lo(D_80117A7C)
    /* B8D20 800C8520 40180500 */  sll        $v1, $a1, 1
    /* B8D24 800C8524 21104600 */  addu       $v0, $v0, $a2
    /* B8D28 800C8528 21186200 */  addu       $v1, $v1, $v0
    /* B8D2C 800C852C 00007084 */  lh         $s0, 0x0($v1)
    /* B8D30 800C8530 F520030C */  jal        func_800C83D4
    /* B8D34 800C8534 00000000 */   nop
    /* B8D38 800C8538 21200002 */  addu       $a0, $s0, $zero
    /* B8D3C 800C853C 21280000 */  addu       $a1, $zero, $zero
    /* B8D40 800C8540 F53A030C */  jal        func_800CEBD4
    /* B8D44 800C8544 21304000 */   addu      $a2, $v0, $zero
    /* B8D48 800C8548 1400BF8F */  lw         $ra, 0x14($sp)
    /* B8D4C 800C854C 1000B08F */  lw         $s0, 0x10($sp)
    /* B8D50 800C8550 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B8D54 800C8554 0800E003 */  jr         $ra
    /* B8D58 800C8558 00000000 */   nop
endlabel func_800C84F0
