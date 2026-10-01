.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C8658, 0xC8

glabel func_800C8658
    /* B8E58 800C8658 0D00A014 */  bnez       $a1, .L800C8690
    /* B8E5C 800C865C 01000224 */   addiu     $v0, $zero, 0x1
    /* B8E60 800C8660 40100400 */  sll        $v0, $a0, 1
    /* B8E64 800C8664 21104400 */  addu       $v0, $v0, $a0
    /* B8E68 800C8668 80100200 */  sll        $v0, $v0, 2
    /* B8E6C 800C866C 23104400 */  subu       $v0, $v0, $a0
    /* B8E70 800C8670 00110200 */  sll        $v0, $v0, 4
    /* B8E74 800C8674 23104400 */  subu       $v0, $v0, $a0
    /* B8E78 800C8678 C0100200 */  sll        $v0, $v0, 3
    /* B8E7C 800C867C 1180013C */  lui        $at, %hi(D_80117A7C)
    /* B8E80 800C8680 21082200 */  addu       $at, $at, $v0
    /* B8E84 800C8684 7C7A2284 */  lh         $v0, %lo(D_80117A7C)($at)
    /* B8E88 800C8688 C6210308 */  j          .L800C8718
    /* B8E8C 800C868C 00000000 */   nop
  .L800C8690:
    /* B8E90 800C8690 1200A210 */  beq        $a1, $v0, .L800C86DC
    /* B8E94 800C8694 40180400 */   sll       $v1, $a0, 1
    /* B8E98 800C8698 21186400 */  addu       $v1, $v1, $a0
    /* B8E9C 800C869C 80180300 */  sll        $v1, $v1, 2
    /* B8EA0 800C86A0 23186400 */  subu       $v1, $v1, $a0
    /* B8EA4 800C86A4 00190300 */  sll        $v1, $v1, 4
    /* B8EA8 800C86A8 23186400 */  subu       $v1, $v1, $a0
    /* B8EAC 800C86AC C0180300 */  sll        $v1, $v1, 3
    /* B8EB0 800C86B0 1180013C */  lui        $at, %hi(D_80117A82)
    /* B8EB4 800C86B4 21082300 */  addu       $at, $at, $v1
    /* B8EB8 800C86B8 827A2284 */  lh         $v0, %lo(D_80117A82)($at)
    /* B8EBC 800C86BC 1180013C */  lui        $at, %hi(D_80117A84)
    /* B8EC0 800C86C0 21082300 */  addu       $at, $at, $v1
    /* B8EC4 800C86C4 847A2484 */  lh         $a0, %lo(D_80117A84)($at)
    /* B8EC8 800C86C8 1180013C */  lui        $at, %hi(D_80117A86)
    /* B8ECC 800C86CC 21082300 */  addu       $at, $at, $v1
    /* B8ED0 800C86D0 867A2384 */  lh         $v1, %lo(D_80117A86)($at)
    /* B8ED4 800C86D4 C4210308 */  j          .L800C8710
    /* B8ED8 800C86D8 21104400 */   addu      $v0, $v0, $a0
  .L800C86DC:
    /* B8EDC 800C86DC 40100400 */  sll        $v0, $a0, 1
    /* B8EE0 800C86E0 21104400 */  addu       $v0, $v0, $a0
    /* B8EE4 800C86E4 80100200 */  sll        $v0, $v0, 2
    /* B8EE8 800C86E8 23104400 */  subu       $v0, $v0, $a0
    /* B8EEC 800C86EC 00110200 */  sll        $v0, $v0, 4
    /* B8EF0 800C86F0 23104400 */  subu       $v0, $v0, $a0
    /* B8EF4 800C86F4 C0100200 */  sll        $v0, $v0, 3
    /* B8EF8 800C86F8 1180013C */  lui        $at, %hi(D_80117A7E)
    /* B8EFC 800C86FC 21082200 */  addu       $at, $at, $v0
    /* B8F00 800C8700 7E7A2384 */  lh         $v1, %lo(D_80117A7E)($at)
    /* B8F04 800C8704 1180013C */  lui        $at, %hi(D_80117A80)
    /* B8F08 800C8708 21082200 */  addu       $at, $at, $v0
    /* B8F0C 800C870C 807A2284 */  lh         $v0, %lo(D_80117A80)($at)
  .L800C8710:
    /* B8F10 800C8710 00000000 */  nop
    /* B8F14 800C8714 21106200 */  addu       $v0, $v1, $v0
  .L800C8718:
    /* B8F18 800C8718 0800E003 */  jr         $ra
    /* B8F1C 800C871C 00000000 */   nop
endlabel func_800C8658
