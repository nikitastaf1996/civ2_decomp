.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF7B8, 0xA8

glabel func_800DF7B8
    /* CFFB8 800DF7B8 4410828F */  lw         $v0, %gp_rel(D_8015951C)($gp)
    /* CFFBC 800DF7BC 00000000 */  nop
    /* CFFC0 800DF7C0 23208200 */  subu       $a0, $a0, $v0
    /* CFFC4 800DF7C4 1280023C */  lui        $v0, %hi(D_8011A250)
    /* CFFC8 800DF7C8 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* CFFCC 800DF7CC 00000000 */  nop
    /* CFFD0 800DF7D0 00804230 */  andi       $v0, $v0, 0x8000
    /* CFFD4 800DF7D4 07004014 */  bnez       $v0, .L800DF7F4
    /* CFFD8 800DF7D8 00000000 */   nop
    /* CFFDC 800DF7DC 05008104 */  bgez       $a0, .L800DF7F4
    /* CFFE0 800DF7E0 00000000 */   nop
    /* CFFE4 800DF7E4 1280023C */  lui        $v0, %hi(D_8011C308)
    /* CFFE8 800DF7E8 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* CFFEC 800DF7EC 00000000 */  nop
    /* CFFF0 800DF7F0 21208200 */  addu       $a0, $a0, $v0
  .L800DF7F4:
    /* CFFF4 800DF7F4 43200400 */  sra        $a0, $a0, 1
    /* CFFF8 800DF7F8 4810828F */  lw         $v0, %gp_rel(D_80159520)($gp)
    /* CFFFC 800DF7FC 00000000 */  nop
    /* D0000 800DF800 2310A200 */  subu       $v0, $a1, $v0
    /* D0004 800DF804 3810838F */  lw         $v1, %gp_rel(D_80159510)($gp)
    /* D0008 800DF808 00000000 */  nop
    /* D000C 800DF80C 18004300 */  mult       $v0, $v1
    /* D0010 800DF810 5010828F */  lw         $v0, %gp_rel(D_80159528)($gp)
    /* D0014 800DF814 12400000 */  mflo       $t0
    /* D0018 800DF818 21100201 */  addu       $v0, $t0, $v0
    /* D001C 800DF81C 0000E2AC */  sw         $v0, 0x0($a3)
    /* D0020 800DF820 3410828F */  lw         $v0, %gp_rel(D_8015950C)($gp)
    /* D0024 800DF824 00000000 */  nop
    /* D0028 800DF828 18008200 */  mult       $a0, $v0
    /* D002C 800DF82C 4C10828F */  lw         $v0, %gp_rel(D_80159524)($gp)
    /* D0030 800DF830 12400000 */  mflo       $t0
    /* D0034 800DF834 21200201 */  addu       $a0, $t0, $v0
    /* D0038 800DF838 0100A230 */  andi       $v0, $a1, 0x1
    /* D003C 800DF83C 06004010 */  beqz       $v0, .L800DF858
    /* D0040 800DF840 0000C4AC */   sw        $a0, 0x0($a2)
    /* D0044 800DF844 3410828F */  lw         $v0, %gp_rel(D_8015950C)($gp)
    /* D0048 800DF848 00000000 */  nop
    /* D004C 800DF84C 43100200 */  sra        $v0, $v0, 1
    /* D0050 800DF850 21104400 */  addu       $v0, $v0, $a0
    /* D0054 800DF854 0000C2AC */  sw         $v0, 0x0($a2)
  .L800DF858:
    /* D0058 800DF858 0800E003 */  jr         $ra
    /* D005C 800DF85C 00000000 */   nop
endlabel func_800DF7B8
