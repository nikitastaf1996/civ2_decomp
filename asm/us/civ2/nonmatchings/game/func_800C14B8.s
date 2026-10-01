.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C14B8, 0x54

glabel func_800C14B8
    /* B1CB8 800C14B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B1CBC 800C14BC 00240400 */  sll        $a0, $a0, 16
    /* B1CC0 800C14C0 03240400 */  sra        $a0, $a0, 16
    /* B1CC4 800C14C4 D0000224 */  addiu      $v0, $zero, 0xD0
    /* B1CC8 800C14C8 04008210 */  beq        $a0, $v0, .L800C14DC
    /* B1CCC 800C14CC 1000BFAF */   sw        $ra, 0x10($sp)
    /* B1CD0 800C14D0 D2000224 */  addiu      $v0, $zero, 0xD2
    /* B1CD4 800C14D4 09008214 */  bne        $a0, $v0, .L800C14FC
    /* B1CD8 800C14D8 00000000 */   nop
  .L800C14DC:
    /* B1CDC 800C14DC 68000424 */  addiu      $a0, $zero, 0x68
    /* B1CE0 800C14E0 21280000 */  addu       $a1, $zero, $zero
    /* B1CE4 800C14E4 21300000 */  addu       $a2, $zero, $zero
    /* B1CE8 800C14E8 2B9D020C */  jal        func_800A74AC
    /* B1CEC 800C14EC 21380000 */   addu      $a3, $zero, $zero
    /* B1CF0 800C14F0 440B848F */  lw         $a0, %gp_rel(D_8015901C)($gp)
    /* B1CF4 800C14F4 C74A020C */  jal        func_80092B1C
    /* B1CF8 800C14F8 00000000 */   nop
  .L800C14FC:
    /* B1CFC 800C14FC 1000BF8F */  lw         $ra, 0x10($sp)
    /* B1D00 800C1500 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B1D04 800C1504 0800E003 */  jr         $ra
    /* B1D08 800C1508 00000000 */   nop
endlabel func_800C14B8
