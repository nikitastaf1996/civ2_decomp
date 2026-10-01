.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AB2AC, 0x4C

glabel func_800AB2AC
    /* 9BAAC 800AB2AC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9BAB0 800AB2B0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9BAB4 800AB2B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9BAB8 800AB2B8 21808000 */  addu       $s0, $a0, $zero
    /* 9BABC 800AB2BC A63A030C */  jal        func_800CEA98
    /* 9BAC0 800AB2C0 2120A000 */   addu      $a0, $a1, $zero
    /* 9BAC4 800AB2C4 80201000 */  sll        $a0, $s0, 2
    /* 9BAC8 800AB2C8 21209000 */  addu       $a0, $a0, $s0
    /* 9BACC 800AB2CC 00210400 */  sll        $a0, $a0, 4
    /* 9BAD0 800AB2D0 1280033C */  lui        $v1, %hi(D_8011FCF8)
    /* 9BAD4 800AB2D4 F8FC6324 */  addiu      $v1, $v1, %lo(D_8011FCF8)
    /* 9BAD8 800AB2D8 21208300 */  addu       $a0, $a0, $v1
    /* 9BADC 800AB2DC A587030C */  jal        func_800E1E94
    /* 9BAE0 800AB2E0 21284000 */   addu      $a1, $v0, $zero
    /* 9BAE4 800AB2E4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9BAE8 800AB2E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 9BAEC 800AB2EC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9BAF0 800AB2F0 0800E003 */  jr         $ra
    /* 9BAF4 800AB2F4 00000000 */   nop
endlabel func_800AB2AC
