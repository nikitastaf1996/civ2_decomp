.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CAF04, 0x8

glabel func_800CAF04
    /* BB704 800CAF04 0800E003 */  jr         $ra
    /* BB708 800CAF08 21108000 */   addu      $v0, $a0, $zero
endlabel func_800CAF04
