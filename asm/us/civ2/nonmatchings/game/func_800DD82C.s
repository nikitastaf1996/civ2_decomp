.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DD82C, 0x70

glabel func_800DD82C
    /* CE02C 800DD82C 03008104 */  bgez       $a0, .L800DD83C
    /* CE030 800DD830 0B008228 */   slti      $v0, $a0, 0xB
    /* CE034 800DD834 25760308 */  j          .L800DD894
    /* CE038 800DD838 21100000 */   addu      $v0, $zero, $zero
  .L800DD83C:
    /* CE03C 800DD83C 15004014 */  bnez       $v0, .L800DD894
    /* CE040 800DD840 01000224 */   addiu     $v0, $zero, 0x1
    /* CE044 800DD844 1A008228 */  slti       $v0, $a0, 0x1A
    /* CE048 800DD848 12004014 */  bnez       $v0, .L800DD894
    /* CE04C 800DD84C 02000224 */   addiu     $v0, $zero, 0x2
    /* CE050 800DD850 27008228 */  slti       $v0, $a0, 0x27
    /* CE054 800DD854 0F004014 */  bnez       $v0, .L800DD894
    /* CE058 800DD858 03000224 */   addiu     $v0, $zero, 0x3
    /* CE05C 800DD85C 3E008228 */  slti       $v0, $a0, 0x3E
    /* CE060 800DD860 0C004014 */  bnez       $v0, .L800DD894
    /* CE064 800DD864 04000224 */   addiu     $v0, $zero, 0x4
    /* CE068 800DD868 4B008228 */  slti       $v0, $a0, 0x4B
    /* CE06C 800DD86C 09004014 */  bnez       $v0, .L800DD894
    /* CE070 800DD870 05000224 */   addiu     $v0, $zero, 0x5
    /* CE074 800DD874 5A008228 */  slti       $v0, $a0, 0x5A
    /* CE078 800DD878 03004010 */  beqz       $v0, .L800DD888
    /* CE07C 800DD87C 64008328 */   slti      $v1, $a0, 0x64
    /* CE080 800DD880 25760308 */  j          .L800DD894
    /* CE084 800DD884 06000224 */   addiu     $v0, $zero, 0x6
  .L800DD888:
    /* CE088 800DD888 02006014 */  bnez       $v1, .L800DD894
    /* CE08C 800DD88C 07000224 */   addiu     $v0, $zero, 0x7
    /* CE090 800DD890 08000224 */  addiu      $v0, $zero, 0x8
  .L800DD894:
    /* CE094 800DD894 0800E003 */  jr         $ra
    /* CE098 800DD898 00000000 */   nop
endlabel func_800DD82C
