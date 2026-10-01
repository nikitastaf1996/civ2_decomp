.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8F0C, 0x68

glabel func_800B8F0C
    /* A970C 800B8F0C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A9710 800B8F10 1800BFAF */  sw         $ra, 0x18($sp)
    /* A9714 800B8F14 3000A88F */  lw         $t0, 0x30($sp)
    /* A9718 800B8F18 2700E228 */  slti       $v0, $a3, 0x27
    /* A971C 800B8F1C 08004014 */  bnez       $v0, .L800B8F40
    /* A9720 800B8F20 C0100700 */   sll       $v0, $a3, 3
    /* A9724 800B8F24 21104700 */  addu       $v0, $v0, $a3
    /* A9728 800B8F28 80100200 */  sll        $v0, $v0, 2
    /* A972C 800B8F2C 21104700 */  addu       $v0, $v0, $a3
    /* A9730 800B8F30 1380033C */  lui        $v1, %hi(D_80131638)
    /* A9734 800B8F34 38166324 */  addiu      $v1, $v1, %lo(D_80131638)
    /* A9738 800B8F38 D6E30208 */  j          .L800B8F58
    /* A973C 800B8F3C 80100200 */   sll       $v0, $v0, 2
  .L800B8F40:
    /* A9740 800B8F40 21104700 */  addu       $v0, $v0, $a3
    /* A9744 800B8F44 80100200 */  sll        $v0, $v0, 2
    /* A9748 800B8F48 21104700 */  addu       $v0, $v0, $a3
    /* A974C 800B8F4C 80100200 */  sll        $v0, $v0, 2
    /* A9750 800B8F50 1380033C */  lui        $v1, %hi(D_80131638)
    /* A9754 800B8F54 38166324 */  addiu      $v1, $v1, %lo(D_80131638)
  .L800B8F58:
    /* A9758 800B8F58 21384300 */  addu       $a3, $v0, $v1
    /* A975C 800B8F5C 18E3020C */  jal        func_800B8C60
    /* A9760 800B8F60 1000A8AF */   sw        $t0, 0x10($sp)
    /* A9764 800B8F64 1800BF8F */  lw         $ra, 0x18($sp)
    /* A9768 800B8F68 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A976C 800B8F6C 0800E003 */  jr         $ra
    /* A9770 800B8F70 00000000 */   nop
endlabel func_800B8F0C
