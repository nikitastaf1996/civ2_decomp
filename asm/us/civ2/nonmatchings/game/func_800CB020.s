.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CB020, 0x74

glabel func_800CB020
    /* BB820 800CB020 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* BB824 800CB024 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* BB828 800CB028 1800B2AF */  sw         $s2, 0x18($sp)
    /* BB82C 800CB02C 1400B1AF */  sw         $s1, 0x14($sp)
    /* BB830 800CB030 1000B0AF */  sw         $s0, 0x10($sp)
    /* BB834 800CB034 21888000 */  addu       $s1, $a0, $zero
    /* BB838 800CB038 800C228E */  lw         $v0, 0xC80($s1)
    /* BB83C 800CB03C 00000000 */  nop
    /* BB840 800CB040 FFFF5024 */  addiu      $s0, $v0, -0x1
    /* BB844 800CB044 0C000006 */  bltz       $s0, .L800CB078
    /* BB848 800CB048 2190A000 */   addu      $s2, $a1, $zero
    /* BB84C 800CB04C 00111000 */  sll        $v0, $s0, 4
  .L800CB050:
    /* BB850 800CB050 21102202 */  addu       $v0, $s1, $v0
    /* BB854 800CB054 0800428C */  lw         $v0, 0x8($v0)
    /* BB858 800CB058 00000000 */  nop
    /* BB85C 800CB05C 03005214 */  bne        $v0, $s2, .L800CB06C
    /* BB860 800CB060 21202002 */   addu      $a0, $s1, $zero
    /* BB864 800CB064 CF2B030C */  jal        func_800CAF3C
    /* BB868 800CB068 21280002 */   addu      $a1, $s0, $zero
  .L800CB06C:
    /* BB86C 800CB06C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* BB870 800CB070 F7FF0106 */  bgez       $s0, .L800CB050
    /* BB874 800CB074 00111000 */   sll       $v0, $s0, 4
  .L800CB078:
    /* BB878 800CB078 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* BB87C 800CB07C 1800B28F */  lw         $s2, 0x18($sp)
    /* BB880 800CB080 1400B18F */  lw         $s1, 0x14($sp)
    /* BB884 800CB084 1000B08F */  lw         $s0, 0x10($sp)
    /* BB888 800CB088 2000BD27 */  addiu      $sp, $sp, 0x20
    /* BB88C 800CB08C 0800E003 */  jr         $ra
    /* BB890 800CB090 00000000 */   nop
endlabel func_800CB020
