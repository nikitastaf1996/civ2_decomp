.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8E8C, 0x80

glabel func_800B8E8C
    /* A968C 800B8E8C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A9690 800B8E90 1800BFAF */  sw         $ra, 0x18($sp)
    /* A9694 800B8E94 3000A88F */  lw         $t0, 0x30($sp)
    /* A9698 800B8E98 00390700 */  sll        $a3, $a3, 4
    /* A969C 800B8E9C 1180013C */  lui        $at, %hi(D_8010C2A8)
    /* A96A0 800B8EA0 21082700 */  addu       $at, $at, $a3
    /* A96A4 800B8EA4 A8C22280 */  lb         $v0, %lo(D_8010C2A8)($at)
    /* A96A8 800B8EA8 00000000 */  nop
    /* A96AC 800B8EAC C0180200 */  sll        $v1, $v0, 3
    /* A96B0 800B8EB0 21186200 */  addu       $v1, $v1, $v0
    /* A96B4 800B8EB4 80180300 */  sll        $v1, $v1, 2
    /* A96B8 800B8EB8 21186200 */  addu       $v1, $v1, $v0
    /* A96BC 800B8EBC 00190300 */  sll        $v1, $v1, 4
    /* A96C0 800B8EC0 1180013C */  lui        $at, %hi(D_8010C2A9)
    /* A96C4 800B8EC4 21082700 */  addu       $at, $at, $a3
    /* A96C8 800B8EC8 A9C22280 */  lb         $v0, %lo(D_8010C2A9)($at)
    /* A96CC 800B8ECC 00000000 */  nop
    /* A96D0 800B8ED0 C0380200 */  sll        $a3, $v0, 3
    /* A96D4 800B8ED4 2138E200 */  addu       $a3, $a3, $v0
    /* A96D8 800B8ED8 80380700 */  sll        $a3, $a3, 2
    /* A96DC 800B8EDC 2138E200 */  addu       $a3, $a3, $v0
    /* A96E0 800B8EE0 80380700 */  sll        $a3, $a3, 2
    /* A96E4 800B8EE4 1380023C */  lui        $v0, %hi(D_80133CF4)
    /* A96E8 800B8EE8 F43C4224 */  addiu      $v0, $v0, %lo(D_80133CF4)
    /* A96EC 800B8EEC 2138E200 */  addu       $a3, $a3, $v0
    /* A96F0 800B8EF0 1000A8AF */  sw         $t0, 0x10($sp)
    /* A96F4 800B8EF4 18E3020C */  jal        func_800B8C60
    /* A96F8 800B8EF8 21386700 */   addu      $a3, $v1, $a3
    /* A96FC 800B8EFC 1800BF8F */  lw         $ra, 0x18($sp)
    /* A9700 800B8F00 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A9704 800B8F04 0800E003 */  jr         $ra
    /* A9708 800B8F08 00000000 */   nop
endlabel func_800B8E8C
