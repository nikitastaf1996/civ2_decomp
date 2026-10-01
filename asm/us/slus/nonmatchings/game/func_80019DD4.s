.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019DD4, 0x128

glabel func_80019DD4
    /* A5D4 80019DD4 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* A5D8 80019DD8 3800BFAF */  sw         $ra, 0x38($sp)
    /* A5DC 80019DDC 3400B7AF */  sw         $s7, 0x34($sp)
    /* A5E0 80019DE0 3000B6AF */  sw         $s6, 0x30($sp)
    /* A5E4 80019DE4 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* A5E8 80019DE8 2800B4AF */  sw         $s4, 0x28($sp)
    /* A5EC 80019DEC 2400B3AF */  sw         $s3, 0x24($sp)
    /* A5F0 80019DF0 2000B2AF */  sw         $s2, 0x20($sp)
    /* A5F4 80019DF4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A5F8 80019DF8 1800B0AF */  sw         $s0, 0x18($sp)
    /* A5FC 80019DFC 21B08000 */  addu       $s6, $a0, $zero
    /* A600 80019E00 21A8A000 */  addu       $s5, $a1, $zero
    /* A604 80019E04 21A0C000 */  addu       $s4, $a2, $zero
    /* A608 80019E08 80001724 */  addiu      $s7, $zero, 0x80
    /* A60C 80019E0C 21880000 */  addu       $s1, $zero, $zero
    /* A610 80019E10 1380023C */  lui        $v0, %hi(D_80129868)
    /* A614 80019E14 68984224 */  addiu      $v0, $v0, %lo(D_80129868)
    /* A618 80019E18 80181600 */  sll        $v1, $s6, 2
    /* A61C 80019E1C 21986200 */  addu       $s3, $v1, $v0
    /* A620 80019E20 1280023C */  lui        $v0, %hi(D_80127368)
    /* A624 80019E24 68734224 */  addiu      $v0, $v0, %lo(D_80127368)
    /* A628 80019E28 21906200 */  addu       $s2, $v1, $v0
  .L80019E2C:
    /* A62C 80019E2C 0000708E */  lw         $s0, 0x0($s3)
    /* A630 80019E30 00000000 */  nop
    /* A634 80019E34 2500022A */  slti       $v0, $s0, 0x25
    /* A638 80019E38 04004014 */  bnez       $v0, .L80019E4C
    /* A63C 80019E3C DCFF0226 */   addiu     $v0, $s0, -0x24
    /* A640 80019E40 0580013C */  lui        $at, %hi(D_800564FC)
    /* A644 80019E44 FC6422AC */  sw         $v0, %lo(D_800564FC)($at)
    /* A648 80019E48 24001024 */  addiu      $s0, $zero, 0x24
  .L80019E4C:
    /* A64C 80019E4C 0580013C */  lui        $at, %hi(D_80056500)
    /* A650 80019E50 006530AC */  sw         $s0, %lo(D_80056500)($at)
    /* A654 80019E54 0000448E */  lw         $a0, 0x0($s2)
    /* A658 80019E58 0EBB000C */  jal        CdIntToPos
    /* A65C 80019E5C 1000A527 */   addiu     $a1, $sp, 0x10
    /* A660 80019E60 02000424 */  addiu      $a0, $zero, 0x2
  .L80019E64:
    /* A664 80019E64 1000A527 */  addiu      $a1, $sp, 0x10
    /* A668 80019E68 F6B9000C */  jal        CdControl
    /* A66C 80019E6C 21300000 */   addu      $a2, $zero, $zero
    /* A670 80019E70 FCFF4010 */  beqz       $v0, .L80019E64
    /* A674 80019E74 02000424 */   addiu     $a0, $zero, 0x2
    /* A678 80019E78 21200002 */  addu       $a0, $s0, $zero
    /* A67C 80019E7C 21288002 */  addu       $a1, $s4, $zero
    /* A680 80019E80 1BC5000C */  jal        CdRead
    /* A684 80019E84 2130E002 */   addu      $a2, $s7, $zero
    /* A688 80019E88 0500A012 */  beqz       $s5, .L80019EA0
    /* A68C 80019E8C 21200000 */   addu      $a0, $zero, $zero
    /* A690 80019E90 5BC5000C */  jal        CdReadSync
    /* A694 80019E94 21280000 */   addu      $a1, $zero, $zero
    /* A698 80019E98 03004004 */  bltz       $v0, .L80019EA8
    /* A69C 80019E9C 01002226 */   addiu     $v0, $s1, 0x1
  .L80019EA0:
    /* A6A0 80019EA0 B3670008 */  j          .L80019ECC
    /* A6A4 80019EA4 01000224 */   addiu     $v0, $zero, 0x1
  .L80019EA8:
    /* A6A8 80019EA8 21884000 */  addu       $s1, $v0, $zero
    /* A6AC 80019EAC 00140200 */  sll        $v0, $v0, 16
    /* A6B0 80019EB0 03140200 */  sra        $v0, $v0, 16
    /* A6B4 80019EB4 0A004228 */  slti       $v0, $v0, 0xA
    /* A6B8 80019EB8 DCFF4014 */  bnez       $v0, .L80019E2C
    /* A6BC 80019EBC 02000424 */   addiu     $a0, $zero, 0x2
    /* A6C0 80019EC0 2966000C */  jal        func_800198A4
    /* A6C4 80019EC4 2128C002 */   addu      $a1, $s6, $zero
    /* A6C8 80019EC8 21100000 */  addu       $v0, $zero, $zero
  .L80019ECC:
    /* A6CC 80019ECC 3800BF8F */  lw         $ra, 0x38($sp)
    /* A6D0 80019ED0 3400B78F */  lw         $s7, 0x34($sp)
    /* A6D4 80019ED4 3000B68F */  lw         $s6, 0x30($sp)
    /* A6D8 80019ED8 2C00B58F */  lw         $s5, 0x2C($sp)
    /* A6DC 80019EDC 2800B48F */  lw         $s4, 0x28($sp)
    /* A6E0 80019EE0 2400B38F */  lw         $s3, 0x24($sp)
    /* A6E4 80019EE4 2000B28F */  lw         $s2, 0x20($sp)
    /* A6E8 80019EE8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A6EC 80019EEC 1800B08F */  lw         $s0, 0x18($sp)
    /* A6F0 80019EF0 4000BD27 */  addiu      $sp, $sp, 0x40
    /* A6F4 80019EF4 0800E003 */  jr         $ra
    /* A6F8 80019EF8 00000000 */   nop
endlabel func_80019DD4
