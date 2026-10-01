.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B07CC, 0x100

glabel func_800B07CC
    /* A0FCC 800B07CC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A0FD0 800B07D0 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* A0FD4 800B07D4 2800B6AF */  sw         $s6, 0x28($sp)
    /* A0FD8 800B07D8 2400B5AF */  sw         $s5, 0x24($sp)
    /* A0FDC 800B07DC 2000B4AF */  sw         $s4, 0x20($sp)
    /* A0FE0 800B07E0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A0FE4 800B07E4 1800B2AF */  sw         $s2, 0x18($sp)
    /* A0FE8 800B07E8 1400B1AF */  sw         $s1, 0x14($sp)
    /* A0FEC 800B07EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* A0FF0 800B07F0 21A8A000 */  addu       $s5, $a1, $zero
    /* A0FF4 800B07F4 21A0C000 */  addu       $s4, $a2, $zero
    /* A0FF8 800B07F8 2198E000 */  addu       $s3, $a3, $zero
    /* A0FFC 800B07FC 4000B68F */  lw         $s6, 0x40($sp)
    /* A1000 800B0800 21880000 */  addu       $s1, $zero, $zero
    /* A1004 800B0804 40100400 */  sll        $v0, $a0, 1
    /* A1008 800B0808 21104400 */  addu       $v0, $v0, $a0
    /* A100C 800B080C 80100200 */  sll        $v0, $v0, 2
    /* A1010 800B0810 23104400 */  subu       $v0, $v0, $a0
    /* A1014 800B0814 00110200 */  sll        $v0, $v0, 4
    /* A1018 800B0818 23104400 */  subu       $v0, $v0, $a0
    /* A101C 800B081C C0900200 */  sll        $s2, $v0, 3
    /* A1020 800B0820 40101100 */  sll        $v0, $s1, 1
  .L800B0824:
    /* A1024 800B0824 21105100 */  addu       $v0, $v0, $s1
    /* A1028 800B0828 40100200 */  sll        $v0, $v0, 1
    /* A102C 800B082C 21805200 */  addu       $s0, $v0, $s2
    /* A1030 800B0830 1180013C */  lui        $at, %hi(D_80117BAC)
    /* A1034 800B0834 21083000 */  addu       $at, $at, $s0
    /* A1038 800B0838 AC7B2380 */  lb         $v1, %lo(D_80117BAC)($at)
    /* A103C 800B083C 00161500 */  sll        $v0, $s5, 24
    /* A1040 800B0840 03160200 */  sra        $v0, $v0, 24
    /* A1044 800B0844 12006214 */  bne        $v1, $v0, .L800B0890
    /* A1048 800B0848 21208002 */   addu      $a0, $s4, $zero
    /* A104C 800B084C 1180013C */  lui        $at, %hi(D_80117BA8)
    /* A1050 800B0850 21083000 */  addu       $at, $at, $s0
    /* A1054 800B0854 A87B2684 */  lh         $a2, %lo(D_80117BA8)($at)
    /* A1058 800B0858 1180013C */  lui        $at, %hi(D_80117BAA)
    /* A105C 800B085C 21083000 */  addu       $at, $at, $s0
    /* A1060 800B0860 AA7B2784 */  lh         $a3, %lo(D_80117BAA)($at)
    /* A1064 800B0864 A73B030C */  jal        func_800CEE9C
    /* A1068 800B0868 21286002 */   addu      $a1, $s3, $zero
    /* A106C 800B086C 2A10C202 */  slt        $v0, $s6, $v0
    /* A1070 800B0870 07004014 */  bnez       $v0, .L800B0890
    /* A1074 800B0874 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A1078 800B0878 1180013C */  lui        $at, %hi(D_80117BAC)
    /* A107C 800B087C 21083000 */  addu       $at, $at, $s0
    /* A1080 800B0880 AC7B22A0 */  sb         $v0, %lo(D_80117BAC)($at)
    /* A1084 800B0884 1180013C */  lui        $at, %hi(D_80117BAD)
    /* A1088 800B0888 21083000 */  addu       $at, $at, $s0
    /* A108C 800B088C AD7B20A0 */  sb         $zero, %lo(D_80117BAD)($at)
  .L800B0890:
    /* A1090 800B0890 01003126 */  addiu      $s1, $s1, 0x1
    /* A1094 800B0894 1000222A */  slti       $v0, $s1, 0x10
    /* A1098 800B0898 E2FF4014 */  bnez       $v0, .L800B0824
    /* A109C 800B089C 40101100 */   sll       $v0, $s1, 1
    /* A10A0 800B08A0 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* A10A4 800B08A4 2800B68F */  lw         $s6, 0x28($sp)
    /* A10A8 800B08A8 2400B58F */  lw         $s5, 0x24($sp)
    /* A10AC 800B08AC 2000B48F */  lw         $s4, 0x20($sp)
    /* A10B0 800B08B0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A10B4 800B08B4 1800B28F */  lw         $s2, 0x18($sp)
    /* A10B8 800B08B8 1400B18F */  lw         $s1, 0x14($sp)
    /* A10BC 800B08BC 1000B08F */  lw         $s0, 0x10($sp)
    /* A10C0 800B08C0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* A10C4 800B08C4 0800E003 */  jr         $ra
    /* A10C8 800B08C8 00000000 */   nop
endlabel func_800B07CC
