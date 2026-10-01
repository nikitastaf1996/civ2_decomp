.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CED14, 0x5C

glabel func_800CED14
    /* BF514 800CED14 23208500 */  subu       $a0, $a0, $a1
    /* BF518 800CED18 0300801C */  bgtz       $a0, .L800CED28
    /* BF51C 800CED1C 00000000 */   nop
    /* BF520 800CED20 27200400 */  nor        $a0, $zero, $a0
    /* BF524 800CED24 01008424 */  addiu      $a0, $a0, 0x1
  .L800CED28:
    /* BF528 800CED28 1280023C */  lui        $v0, %hi(D_8011A250)
    /* BF52C 800CED2C 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* BF530 800CED30 00000000 */  nop
    /* BF534 800CED34 00804230 */  andi       $v0, $v0, 0x8000
    /* BF538 800CED38 0B004014 */  bnez       $v0, .L800CED68
    /* BF53C 800CED3C 00000000 */   nop
    /* BF540 800CED40 1280023C */  lui        $v0, %hi(D_8011C308)
    /* BF544 800CED44 08C34294 */  lhu        $v0, %lo(D_8011C308)($v0)
    /* BF548 800CED48 00000000 */  nop
    /* BF54C 800CED4C 00140200 */  sll        $v0, $v0, 16
    /* BF550 800CED50 031C0200 */  sra        $v1, $v0, 16
    /* BF554 800CED54 43140200 */  sra        $v0, $v0, 17
    /* BF558 800CED58 2A104400 */  slt        $v0, $v0, $a0
    /* BF55C 800CED5C 02004010 */  beqz       $v0, .L800CED68
    /* BF560 800CED60 00000000 */   nop
    /* BF564 800CED64 23206400 */  subu       $a0, $v1, $a0
  .L800CED68:
    /* BF568 800CED68 0800E003 */  jr         $ra
    /* BF56C 800CED6C 21108000 */   addu      $v0, $a0, $zero
endlabel func_800CED14
