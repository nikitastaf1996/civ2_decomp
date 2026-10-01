.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1FD4, 0x38

glabel func_800B1FD4
    /* A27D4 800B1FD4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A27D8 800B1FD8 1000BFAF */  sw         $ra, 0x10($sp)
    /* A27DC 800B1FDC 3000828C */  lw         $v0, 0x30($a0)
    /* A27E0 800B1FE0 00000000 */  nop
    /* A27E4 800B1FE4 00104234 */  ori        $v0, $v0, 0x1000
    /* A27E8 800B1FE8 300082AC */  sw         $v0, 0x30($a0)
    /* A27EC 800B1FEC 0300A010 */  beqz       $a1, .L800B1FFC
    /* A27F0 800B1FF0 3C0086AC */   sw        $a2, 0x3C($a0)
    /* A27F4 800B1FF4 D5C7020C */  jal        func_800B1F54
    /* A27F8 800B1FF8 00000000 */   nop
  .L800B1FFC:
    /* A27FC 800B1FFC 1000BF8F */  lw         $ra, 0x10($sp)
    /* A2800 800B2000 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2804 800B2004 0800E003 */  jr         $ra
    /* A2808 800B2008 00000000 */   nop
endlabel func_800B1FD4
