.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002A7E0, 0x78

glabel func_8002A7E0
    /* 1AFE0 8002A7E0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1AFE4 8002A7E4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1AFE8 8002A7E8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1AFEC 8002A7EC 480F80AF */  sw         $zero, %gp_rel(D_80159420)($gp)
    /* 1AFF0 8002A7F0 E6ED010C */  jal        func_8007B798
    /* 1AFF4 8002A7F4 2180A000 */   addu      $s0, $a1, $zero
    /* 1AFF8 8002A7F8 21204000 */  addu       $a0, $v0, $zero
    /* 1AFFC 8002A7FC 11008004 */  bltz       $a0, .L8002A844
    /* 1B000 8002A800 40100400 */   sll       $v0, $a0, 1
  .L8002A804:
    /* 1B004 8002A804 21104400 */  addu       $v0, $v0, $a0
    /* 1B008 8002A808 80100200 */  sll        $v0, $v0, 2
    /* 1B00C 8002A80C 21104400 */  addu       $v0, $v0, $a0
    /* 1B010 8002A810 40100200 */  sll        $v0, $v0, 1
    /* 1B014 8002A814 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 1B018 8002A818 21082200 */  addu       $at, $at, $v0
    /* 1B01C 8002A81C CCD62284 */  lh         $v0, %lo(D_8010D6CC)($at)
    /* 1B020 8002A820 00000000 */  nop
    /* 1B024 8002A824 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1B028 8002A828 21280002 */  addu       $a1, $s0, $zero
    /* 1B02C 8002A82C C0A9000C */  jal        func_8002A700
    /* 1B030 8002A830 1000A627 */   addiu     $a2, $sp, 0x10
    /* 1B034 8002A834 1000A48F */  lw         $a0, 0x10($sp)
    /* 1B038 8002A838 00000000 */  nop
    /* 1B03C 8002A83C F1FF8104 */  bgez       $a0, .L8002A804
    /* 1B040 8002A840 40100400 */   sll       $v0, $a0, 1
  .L8002A844:
    /* 1B044 8002A844 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1B048 8002A848 1800B08F */  lw         $s0, 0x18($sp)
    /* 1B04C 8002A84C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1B050 8002A850 0800E003 */  jr         $ra
    /* 1B054 8002A854 00000000 */   nop
endlabel func_8002A7E0
