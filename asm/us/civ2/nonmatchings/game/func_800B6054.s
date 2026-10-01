.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B6054, 0x68

glabel func_800B6054
    /* A6854 800B6054 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A6858 800B6058 1000BFAF */  sw         $ra, 0x10($sp)
    /* A685C 800B605C 21288000 */  addu       $a1, $a0, $zero
    /* A6860 800B6060 680A848F */  lw         $a0, %gp_rel(D_80158F40)($gp)
    /* A6864 800B6064 00000000 */  nop
    /* A6868 800B6068 10008010 */  beqz       $a0, .L800B60AC
    /* A686C 800B606C 002C0500 */   sll       $a1, $a1, 16
    /* A6870 800B6070 032C0500 */  sra        $a1, $a1, 16
    /* A6874 800B6074 4400828C */  lw         $v0, 0x44($a0)
    /* A6878 800B6078 00000000 */  nop
    /* A687C 800B607C 1800A200 */  mult       $a1, $v0
    /* A6880 800B6080 12280000 */  mflo       $a1
    /* A6884 800B6084 8BCC020C */  jal        func_800B322C
    /* A6888 800B6088 00000000 */   nop
    /* A688C 800B608C 21204000 */  addu       $a0, $v0, $zero
    /* A6890 800B6090 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A6894 800B6094 00000000 */  nop
    /* A6898 800B6098 6001628C */  lw         $v0, 0x160($v1)
    /* A689C 800B609C 00000000 */  nop
    /* A68A0 800B60A0 02008210 */  beq        $a0, $v0, .L800B60AC
    /* A68A4 800B60A4 00000000 */   nop
    /* A68A8 800B60A8 600164AC */  sw         $a0, 0x160($v1)
  .L800B60AC:
    /* A68AC 800B60AC 1000BF8F */  lw         $ra, 0x10($sp)
    /* A68B0 800B60B0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A68B4 800B60B4 0800E003 */  jr         $ra
    /* A68B8 800B60B8 00000000 */   nop
endlabel func_800B6054
