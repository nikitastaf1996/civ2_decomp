.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B590, 0x58

glabel func_8002B590
    /* 1BD90 8002B590 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1BD94 8002B594 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1BD98 8002B598 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 1BD9C 8002B59C C2290400 */  srl        $a1, $a0, 7
    /* 1BDA0 8002B5A0 42310400 */  srl        $a2, $a0, 5
    /* 1BDA4 8002B5A4 80390400 */  sll        $a3, $a0, 6
    /* 1BDA8 8002B5A8 00110400 */  sll        $v0, $a0, 4
    /* 1BDAC 8002B5AC 00014230 */  andi       $v0, $v0, 0x100
    /* 1BDB0 8002B5B0 82200400 */  srl        $a0, $a0, 2
    /* 1BDB4 8002B5B4 00028430 */  andi       $a0, $a0, 0x200
    /* 1BDB8 8002B5B8 21104400 */  addu       $v0, $v0, $a0
    /* 1BDBC 8002B5BC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1BDC0 8002B5C0 0180043C */  lui        $a0, %hi(D_800172C8)
    /* 1BDC4 8002B5C4 C8728424 */  addiu      $a0, $a0, %lo(D_800172C8)
    /* 1BDC8 8002B5C8 0300A530 */  andi       $a1, $a1, 0x3
    /* 1BDCC 8002B5CC 0300C630 */  andi       $a2, $a2, 0x3
    /* 1BDD0 8002B5D0 5CAD000C */  jal        func_8002B570
    /* 1BDD4 8002B5D4 C007E730 */   andi      $a3, $a3, 0x7C0
    /* 1BDD8 8002B5D8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1BDDC 8002B5DC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1BDE0 8002B5E0 0800E003 */  jr         $ra
    /* 1BDE4 8002B5E4 00000000 */   nop
endlabel func_8002B590
