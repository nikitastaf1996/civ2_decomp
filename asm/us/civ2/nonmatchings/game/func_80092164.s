.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80092164, 0x84

glabel func_80092164
    /* 82964 80092164 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 82968 80092168 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8296C 8009216C 1680043C */  lui        $a0, %hi(D_801588CC)
    /* 82970 80092170 CC888424 */  addiu      $a0, $a0, %lo(D_801588CC)
    /* 82974 80092174 221B040C */  jal        func_80106C88
    /* 82978 80092178 00000000 */   nop
    /* 8297C 8009217C F8038287 */  lh         $v0, %gp_rel(D_801588D0)($gp)
    /* 82980 80092180 F4038387 */  lh         $v1, %gp_rel(D_801588CC)($gp)
    /* 82984 80092184 00000000 */  nop
    /* 82988 80092188 23104300 */  subu       $v0, $v0, $v1
    /* 8298C 8009218C 00140200 */  sll        $v0, $v0, 16
    /* 82990 80092190 03140200 */  sra        $v0, $v0, 16
    /* 82994 80092194 FC0382AF */  sw         $v0, %gp_rel(D_801588D4)($gp)
    /* 82998 80092198 FA038287 */  lh         $v0, %gp_rel(D_801588D2)($gp)
    /* 8299C 8009219C F6038387 */  lh         $v1, %gp_rel(D_801588CE)($gp)
    /* 829A0 800921A0 00000000 */  nop
    /* 829A4 800921A4 23104300 */  subu       $v0, $v0, $v1
    /* 829A8 800921A8 00140200 */  sll        $v0, $v0, 16
    /* 829AC 800921AC 03140200 */  sra        $v0, $v0, 16
    /* 829B0 800921B0 000482AF */  sw         $v0, %gp_rel(D_801588D8)($gp)
    /* 829B4 800921B4 CC0380AF */  sw         $zero, %gp_rel(D_801588A4)($gp)
    /* 829B8 800921B8 0C000224 */  addiu      $v0, $zero, 0xC
    /* 829BC 800921BC C80382AF */  sw         $v0, %gp_rel(D_801588A0)($gp)
    /* 829C0 800921C0 E00380AF */  sw         $zero, %gp_rel(D_801588B8)($gp)
    /* 829C4 800921C4 E40380AF */  sw         $zero, %gp_rel(D_801588BC)($gp)
    /* 829C8 800921C8 40010224 */  addiu      $v0, $zero, 0x140
    /* 829CC 800921CC E80382AF */  sw         $v0, %gp_rel(D_801588C0)($gp)
    /* 829D0 800921D0 F0000224 */  addiu      $v0, $zero, 0xF0
    /* 829D4 800921D4 EC0382AF */  sw         $v0, %gp_rel(D_801588C4)($gp)
    /* 829D8 800921D8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 829DC 800921DC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 829E0 800921E0 0800E003 */  jr         $ra
    /* 829E4 800921E4 00000000 */   nop
endlabel func_80092164
