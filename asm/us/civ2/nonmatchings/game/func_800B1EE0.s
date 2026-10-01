.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1EE0, 0x48

glabel func_800B1EE0
    /* A26E0 800B1EE0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A26E4 800B1EE4 1000BFAF */  sw         $ra, 0x10($sp)
    /* A26E8 800B1EE8 B6C7020C */  jal        func_800B1ED8
    /* A26EC 800B1EEC 00000000 */   nop
    /* A26F0 800B1EF0 21184000 */  addu       $v1, $v0, $zero
    /* A26F4 800B1EF4 0F000224 */  addiu      $v0, $zero, 0xF
    /* A26F8 800B1EF8 2A104300 */  slt        $v0, $v0, $v1
    /* A26FC 800B1EFC 03004010 */  beqz       $v0, .L800B1F0C
    /* A2700 800B1F00 0C006228 */   slti      $v0, $v1, 0xC
    /* A2704 800B1F04 0F000324 */  addiu      $v1, $zero, 0xF
    /* A2708 800B1F08 0C006228 */  slti       $v0, $v1, 0xC
  .L800B1F0C:
    /* A270C 800B1F0C 02004010 */  beqz       $v0, .L800B1F18
    /* A2710 800B1F10 00000000 */   nop
    /* A2714 800B1F14 0C000324 */  addiu      $v1, $zero, 0xC
  .L800B1F18:
    /* A2718 800B1F18 1000BF8F */  lw         $ra, 0x10($sp)
    /* A271C 800B1F1C 21106000 */  addu       $v0, $v1, $zero
    /* A2720 800B1F20 0800E003 */  jr         $ra
    /* A2724 800B1F24 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B1EE0
