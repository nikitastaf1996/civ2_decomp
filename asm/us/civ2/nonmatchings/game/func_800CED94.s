.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CED94, 0x74

glabel func_800CED94
    /* BF594 800CED94 23208600 */  subu       $a0, $a0, $a2
    /* BF598 800CED98 0300801C */  bgtz       $a0, .L800CEDA8
    /* BF59C 800CED9C 00000000 */   nop
    /* BF5A0 800CEDA0 27200400 */  nor        $a0, $zero, $a0
    /* BF5A4 800CEDA4 01008424 */  addiu      $a0, $a0, 0x1
  .L800CEDA8:
    /* BF5A8 800CEDA8 1280023C */  lui        $v0, %hi(D_8011A250)
    /* BF5AC 800CEDAC 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* BF5B0 800CEDB0 00000000 */  nop
    /* BF5B4 800CEDB4 00804230 */  andi       $v0, $v0, 0x8000
    /* BF5B8 800CEDB8 0B004014 */  bnez       $v0, .L800CEDE8
    /* BF5BC 800CEDBC 00000000 */   nop
    /* BF5C0 800CEDC0 1280023C */  lui        $v0, %hi(D_8011C308)
    /* BF5C4 800CEDC4 08C34294 */  lhu        $v0, %lo(D_8011C308)($v0)
    /* BF5C8 800CEDC8 00000000 */  nop
    /* BF5CC 800CEDCC 00140200 */  sll        $v0, $v0, 16
    /* BF5D0 800CEDD0 031C0200 */  sra        $v1, $v0, 16
    /* BF5D4 800CEDD4 43140200 */  sra        $v0, $v0, 17
    /* BF5D8 800CEDD8 2A104400 */  slt        $v0, $v0, $a0
    /* BF5DC 800CEDDC 02004010 */  beqz       $v0, .L800CEDE8
    /* BF5E0 800CEDE0 00000000 */   nop
    /* BF5E4 800CEDE4 23206400 */  subu       $a0, $v1, $a0
  .L800CEDE8:
    /* BF5E8 800CEDE8 2328A700 */  subu       $a1, $a1, $a3
    /* BF5EC 800CEDEC 0300A01C */  bgtz       $a1, .L800CEDFC
    /* BF5F0 800CEDF0 00000000 */   nop
    /* BF5F4 800CEDF4 27280500 */  nor        $a1, $zero, $a1
    /* BF5F8 800CEDF8 0100A524 */  addiu      $a1, $a1, 0x1
  .L800CEDFC:
    /* BF5FC 800CEDFC 21108500 */  addu       $v0, $a0, $a1
    /* BF600 800CEE00 0800E003 */  jr         $ra
    /* BF604 800CEE04 43100200 */   sra       $v0, $v0, 1
endlabel func_800CED94
