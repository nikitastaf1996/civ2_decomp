.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800146C8, 0x44

glabel func_800146C8
    /* 4EC8 800146C8 21308000 */  addu       $a2, $a0, $zero
    /* 4ECC 800146CC 1000C228 */  slti       $v0, $a2, 0x10
    /* 4ED0 800146D0 0C004010 */  beqz       $v0, .L80014704
    /* 4ED4 800146D4 40300600 */   sll       $a2, $a2, 1
    /* 4ED8 800146D8 1680043C */  lui        $a0, %hi(D_80158864)
    /* 4EDC 800146DC 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* 4EE0 800146E0 03000224 */  addiu      $v0, $zero, 0x3
    /* 4EE4 800146E4 0410C200 */  sllv       $v0, $v0, $a2
    /* 4EE8 800146E8 27100200 */  nor        $v0, $zero, $v0
    /* 4EEC 800146EC 1800838C */  lw         $v1, 0x18($a0)
    /* 4EF0 800146F0 00000000 */  nop
    /* 4EF4 800146F4 24104300 */  and        $v0, $v0, $v1
    /* 4EF8 800146F8 0418C500 */  sllv       $v1, $a1, $a2
    /* 4EFC 800146FC 25186200 */  or         $v1, $v1, $v0
    /* 4F00 80014700 180083AC */  sw         $v1, 0x18($a0)
  .L80014704:
    /* 4F04 80014704 0800E003 */  jr         $ra
    /* 4F08 80014708 00000000 */   nop
endlabel func_800146C8
