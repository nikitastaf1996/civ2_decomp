.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A14C4, 0x4C

glabel func_800A14C4
    /* 91CC4 800A14C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 91CC8 800A14C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 91CCC 800A14CC 35DE030C */  jal        func_800F78D4
    /* 91CD0 800A14D0 00000000 */   nop
    /* 91CD4 800A14D4 02004014 */  bnez       $v0, .L800A14E0
    /* 91CD8 800A14D8 D4FF4424 */   addiu     $a0, $v0, -0x2C
    /* 91CDC 800A14DC 21200000 */  addu       $a0, $zero, $zero
  .L800A14E0:
    /* 91CE0 800A14E0 28028584 */  lh         $a1, 0x228($a0)
    /* 91CE4 800A14E4 00000000 */  nop
    /* 91CE8 800A14E8 C0280500 */  sll        $a1, $a1, 3
    /* 91CEC 800A14EC 1280023C */  lui        $v0, %hi(D_8011A5A6)
    /* 91CF0 800A14F0 A6A54224 */  addiu      $v0, $v0, %lo(D_8011A5A6)
    /* 91CF4 800A14F4 2C008424 */  addiu      $a0, $a0, 0x2C
    /* 91CF8 800A14F8 2DEC030C */  jal        func_800FB0B4
    /* 91CFC 800A14FC 2128A200 */   addu      $a1, $a1, $v0
    /* 91D00 800A1500 1000BF8F */  lw         $ra, 0x10($sp)
    /* 91D04 800A1504 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 91D08 800A1508 0800E003 */  jr         $ra
    /* 91D0C 800A150C 00000000 */   nop
endlabel func_800A14C4
