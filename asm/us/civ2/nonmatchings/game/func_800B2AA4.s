.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2AA4, 0x6C

glabel func_800B2AA4
    /* A32A4 800B2AA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A32A8 800B2AA8 0600A010 */  beqz       $a1, .L800B2AC4
    /* A32AC 800B2AAC 1000BFAF */   sw        $ra, 0x10($sp)
    /* A32B0 800B2AB0 0D00E014 */  bnez       $a3, .L800B2AE8
    /* A32B4 800B2AB4 00000000 */   nop
    /* A32B8 800B2AB8 50008490 */  lbu        $a0, 0x50($a0)
    /* A32BC 800B2ABC BECA0208 */  j          .L800B2AF8
    /* A32C0 800B2AC0 00000000 */   nop
  .L800B2AC4:
    /* A32C4 800B2AC4 0600C010 */  beqz       $a2, .L800B2AE0
    /* A32C8 800B2AC8 00000000 */   nop
    /* A32CC 800B2ACC 0600E014 */  bnez       $a3, .L800B2AE8
    /* A32D0 800B2AD0 00000000 */   nop
    /* A32D4 800B2AD4 54008490 */  lbu        $a0, 0x54($a0)
    /* A32D8 800B2AD8 BECA0208 */  j          .L800B2AF8
    /* A32DC 800B2ADC 00000000 */   nop
  .L800B2AE0:
    /* A32E0 800B2AE0 0400E010 */  beqz       $a3, .L800B2AF4
    /* A32E4 800B2AE4 00000000 */   nop
  .L800B2AE8:
    /* A32E8 800B2AE8 4C008490 */  lbu        $a0, 0x4C($a0)
    /* A32EC 800B2AEC BECA0208 */  j          .L800B2AF8
    /* A32F0 800B2AF0 00000000 */   nop
  .L800B2AF4:
    /* A32F4 800B2AF4 48008490 */  lbu        $a0, 0x48($a0)
  .L800B2AF8:
    /* A32F8 800B2AF8 54E9030C */  jal        func_800FA550
    /* A32FC 800B2AFC 00000000 */   nop
    /* A3300 800B2B00 1000BF8F */  lw         $ra, 0x10($sp)
    /* A3304 800B2B04 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A3308 800B2B08 0800E003 */  jr         $ra
    /* A330C 800B2B0C 00000000 */   nop
endlabel func_800B2AA4
