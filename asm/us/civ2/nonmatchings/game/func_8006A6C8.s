.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006A6C8, 0x19C

glabel func_8006A6C8
    /* 5AEC8 8006A6C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5AECC 8006A6CC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5AED0 8006A6D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5AED4 8006A6D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5AED8 8006A6D8 21808000 */  addu       $s0, $a0, $zero
    /* 5AEDC 8006A6DC B001828F */  lw         $v0, %gp_rel(D_80158688)($gp)
    /* 5AEE0 8006A6E0 00000000 */  nop
    /* 5AEE4 8006A6E4 03004014 */  bnez       $v0, .L8006A6F4
    /* 5AEE8 8006A6E8 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 5AEEC 8006A6EC 1280043C */  lui        $a0, %hi(D_8011A268)
    /* 5AEF0 8006A6F0 68A28484 */  lh         $a0, %lo(D_8011A268)($a0)
  .L8006A6F4:
    /* 5AEF4 8006A6F4 0FFA010C */  jal        func_8007E83C
    /* 5AEF8 8006A6F8 00000000 */   nop
    /* 5AEFC 8006A6FC 21884000 */  addu       $s1, $v0, $zero
    /* 5AF00 8006A700 B00180AF */  sw         $zero, %gp_rel(D_80158688)($gp)
    /* 5AF04 8006A704 1280023C */  lui        $v0, %hi(D_8011A268)
    /* 5AF08 8006A708 68A24224 */  addiu      $v0, $v0, %lo(D_8011A268)
    /* 5AF0C 8006A70C 4D002006 */  bltz       $s1, .L8006A844
    /* 5AF10 8006A710 000051A4 */   sh        $s1, 0x0($v0)
    /* 5AF14 8006A714 18004284 */  lh         $v0, 0x18($v0)
    /* 5AF18 8006A718 00000000 */  nop
    /* 5AF1C 8006A71C 2A102202 */  slt        $v0, $s1, $v0
    /* 5AF20 8006A720 46004010 */  beqz       $v0, .L8006A83C
    /* 5AF24 8006A724 00000000 */   nop
    /* 5AF28 8006A728 44000016 */  bnez       $s0, .L8006A83C
    /* 5AF2C 8006A72C 40101100 */   sll       $v0, $s1, 1
    /* 5AF30 8006A730 21105100 */  addu       $v0, $v0, $s1
    /* 5AF34 8006A734 80100200 */  sll        $v0, $v0, 2
    /* 5AF38 8006A738 21105100 */  addu       $v0, $v0, $s1
    /* 5AF3C 8006A73C 40100200 */  sll        $v0, $v0, 1
    /* 5AF40 8006A740 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 5AF44 8006A744 21082200 */  addu       $at, $at, $v0
    /* 5AF48 8006A748 C3D62390 */  lbu        $v1, %lo(D_8010D6C3)($at)
    /* 5AF4C 8006A74C 00000000 */  nop
    /* 5AF50 8006A750 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 5AF54 8006A754 0200422C */  sltiu      $v0, $v0, 0x2
    /* 5AF58 8006A758 2A004014 */  bnez       $v0, .L8006A804
    /* 5AF5C 8006A75C 40101100 */   sll       $v0, $s1, 1
    /* 5AF60 8006A760 00160300 */  sll        $v0, $v1, 24
    /* 5AF64 8006A764 031E0200 */  sra        $v1, $v0, 24
    /* 5AF68 8006A768 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5AF6C 8006A76C 03006210 */  beq        $v1, $v0, .L8006A77C
    /* 5AF70 8006A770 0B006228 */   slti      $v0, $v1, 0xB
    /* 5AF74 8006A774 23004014 */  bnez       $v0, .L8006A804
    /* 5AF78 8006A778 40101100 */   sll       $v0, $s1, 1
  .L8006A77C:
    /* 5AF7C 8006A77C 40801100 */  sll        $s0, $s1, 1
    /* 5AF80 8006A780 21801102 */  addu       $s0, $s0, $s1
    /* 5AF84 8006A784 80801000 */  sll        $s0, $s0, 2
    /* 5AF88 8006A788 21801102 */  addu       $s0, $s0, $s1
    /* 5AF8C 8006A78C 40801000 */  sll        $s0, $s0, 1
    /* 5AF90 8006A790 1180013C */  lui        $at, %hi(D_8010D6C2)
    /* 5AF94 8006A794 21083000 */  addu       $at, $at, $s0
    /* 5AF98 8006A798 C2D620A0 */  sb         $zero, %lo(D_8010D6C2)($at)
    /* 5AF9C 8006A79C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 5AFA0 8006A7A0 21083000 */  addu       $at, $at, $s0
    /* 5AFA4 8006A7A4 B4D62294 */  lhu        $v0, %lo(D_8010D6B4)($at)
    /* 5AFA8 8006A7A8 1680013C */  lui        $at, %hi(D_80158886)
    /* 5AFAC 8006A7AC 868822A4 */  sh         $v0, %lo(D_80158886)($at)
    /* 5AFB0 8006A7B0 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 5AFB4 8006A7B4 21083000 */  addu       $at, $at, $s0
    /* 5AFB8 8006A7B8 B6D62294 */  lhu        $v0, %lo(D_8010D6B6)($at)
    /* 5AFBC 8006A7BC 1680013C */  lui        $at, %hi(D_80158888)
    /* 5AFC0 8006A7C0 888822A4 */  sh         $v0, %lo(D_80158888)($at)
    /* 5AFC4 8006A7C4 A3BF000C */  jal        func_8002FE8C
    /* 5AFC8 8006A7C8 01000424 */   addiu     $a0, $zero, 0x1
    /* 5AFCC 8006A7CC 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 5AFD0 8006A7D0 21083000 */  addu       $at, $at, $s0
    /* 5AFD4 8006A7D4 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 5AFD8 8006A7D8 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 5AFDC 8006A7DC 21083000 */  addu       $at, $at, $s0
    /* 5AFE0 8006A7E0 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 5AFE4 8006A7E4 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 5AFE8 8006A7E8 21083000 */  addu       $at, $at, $s0
    /* 5AFEC 8006A7EC BBD62680 */  lb         $a2, %lo(D_8010D6BB)($at)
    /* 5AFF0 8006A7F0 6D7C020C */  jal        func_8009F1B4
    /* 5AFF4 8006A7F4 00000000 */   nop
    /* 5AFF8 8006A7F8 DD19010C */  jal        func_80046774
    /* 5AFFC 8006A7FC 00000000 */   nop
    /* 5B000 8006A800 40101100 */  sll        $v0, $s1, 1
  .L8006A804:
    /* 5B004 8006A804 21105100 */  addu       $v0, $v0, $s1
    /* 5B008 8006A808 80100200 */  sll        $v0, $v0, 2
    /* 5B00C 8006A80C 21105100 */  addu       $v0, $v0, $s1
    /* 5B010 8006A810 40100200 */  sll        $v0, $v0, 1
    /* 5B014 8006A814 1180013C */  lui        $at, %hi(D_8010D6BC)
    /* 5B018 8006A818 21082200 */  addu       $at, $at, $v0
    /* 5B01C 8006A81C BCD62290 */  lbu        $v0, %lo(D_8010D6BC)($at)
    /* 5B020 8006A820 00000000 */  nop
    /* 5B024 8006A824 03004014 */  bnez       $v0, .L8006A834
    /* 5B028 8006A828 21202002 */   addu      $a0, $s1, $zero
    /* 5B02C 8006A82C FDB9000C */  jal        func_8002E7F4
    /* 5B030 8006A830 21280000 */   addu      $a1, $zero, $zero
  .L8006A834:
    /* 5B034 8006A834 1A12040C */  jal        func_80104868
    /* 5B038 8006A838 00000000 */   nop
  .L8006A83C:
    /* 5B03C 8006A83C 03002106 */  bgez       $s1, .L8006A84C
    /* 5B040 8006A840 00000000 */   nop
  .L8006A844:
    /* 5B044 8006A844 96A9010C */  jal        func_8006A658
    /* 5B048 8006A848 21200000 */   addu      $a0, $zero, $zero
  .L8006A84C:
    /* 5B04C 8006A84C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5B050 8006A850 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B054 8006A854 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B058 8006A858 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5B05C 8006A85C 0800E003 */  jr         $ra
    /* 5B060 8006A860 00000000 */   nop
endlabel func_8006A6C8
