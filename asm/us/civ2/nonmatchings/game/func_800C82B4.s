.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C82B4, 0x40

glabel func_800C82B4
    /* B8AB4 800C82B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B8AB8 800C82B8 00240400 */  sll        $a0, $a0, 16
    /* B8ABC 800C82BC 03240400 */  sra        $a0, $a0, 16
    /* B8AC0 800C82C0 D3008228 */  slti       $v0, $a0, 0xD3
    /* B8AC4 800C82C4 07004010 */  beqz       $v0, .L800C82E4
    /* B8AC8 800C82C8 1000BFAF */   sw        $ra, 0x10($sp)
    /* B8ACC 800C82CC D0008228 */  slti       $v0, $a0, 0xD0
    /* B8AD0 800C82D0 04004014 */  bnez       $v0, .L800C82E4
    /* B8AD4 800C82D4 00000000 */   nop
    /* B8AD8 800C82D8 540C848F */  lw         $a0, %gp_rel(D_8015912C)($gp)
    /* B8ADC 800C82DC 31DE030C */  jal        func_800F78C4
    /* B8AE0 800C82E0 B0008424 */   addiu     $a0, $a0, 0xB0
  .L800C82E4:
    /* B8AE4 800C82E4 1000BF8F */  lw         $ra, 0x10($sp)
    /* B8AE8 800C82E8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B8AEC 800C82EC 0800E003 */  jr         $ra
    /* B8AF0 800C82F0 00000000 */   nop
endlabel func_800C82B4
