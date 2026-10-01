.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B99FC, 0x68

glabel func_800B99FC
    /* AA1FC 800B99FC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* AA200 800B9A00 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* AA204 800B9A04 21888000 */  addu       $s1, $a0, $zero
    /* AA208 800B9A08 1800B0AF */  sw         $s0, 0x18($sp)
    /* AA20C 800B9A0C 2180C000 */  addu       $s0, $a2, $zero
    /* AA210 800B9A10 2000BFAF */  sw         $ra, 0x20($sp)
    /* AA214 800B9A14 AD87030C */  jal        func_800E1EB4
    /* AA218 800B9A18 2120A000 */   addu      $a0, $a1, $zero
    /* AA21C 800B9A1C 40180200 */  sll        $v1, $v0, 1
    /* AA220 800B9A20 21186200 */  addu       $v1, $v1, $v0
    /* AA224 800B9A24 40180300 */  sll        $v1, $v1, 1
    /* AA228 800B9A28 43180300 */  sra        $v1, $v1, 1
    /* AA22C 800B9A2C A0000224 */  addiu      $v0, $zero, 0xA0
    /* AA230 800B9A30 23104300 */  subu       $v0, $v0, $v1
    /* AA234 800B9A34 A8006324 */  addiu      $v1, $v1, 0xA8
    /* AA238 800B9A38 020030A6 */  sh         $s0, 0x2($s1)
    /* AA23C 800B9A3C 0C001026 */  addiu      $s0, $s0, 0xC
    /* AA240 800B9A40 000022A6 */  sh         $v0, 0x0($s1)
    /* AA244 800B9A44 040023A6 */  sh         $v1, 0x4($s1)
    /* AA248 800B9A48 060030A6 */  sh         $s0, 0x6($s1)
    /* AA24C 800B9A4C 2000BF8F */  lw         $ra, 0x20($sp)
    /* AA250 800B9A50 1C00B18F */  lw         $s1, 0x1C($sp)
    /* AA254 800B9A54 1800B08F */  lw         $s0, 0x18($sp)
    /* AA258 800B9A58 2800BD27 */  addiu      $sp, $sp, 0x28
    /* AA25C 800B9A5C 0800E003 */  jr         $ra
    /* AA260 800B9A60 00000000 */   nop
endlabel func_800B99FC
