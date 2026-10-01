.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8940, 0x2C

glabel func_800D8940
    /* C9140 800D8940 540F80AC */  sw         $zero, 0xF54($a0)
    /* C9144 800D8944 580F80AC */  sw         $zero, 0xF58($a0)
    /* C9148 800D8948 5C0F80AC */  sw         $zero, 0xF5C($a0)
    /* C914C 800D894C 600F80AC */  sw         $zero, 0xF60($a0)
    /* C9150 800D8950 680F80AC */  sw         $zero, 0xF68($a0)
    /* C9154 800D8954 700F80AC */  sw         $zero, 0xF70($a0)
    /* C9158 800D8958 6C0F80AC */  sw         $zero, 0xF6C($a0)
    /* C915C 800D895C 640F80AC */  sw         $zero, 0xF64($a0)
    /* C9160 800D8960 780F80AC */  sw         $zero, 0xF78($a0)
    /* C9164 800D8964 0800E003 */  jr         $ra
    /* C9168 800D8968 740F80AC */   sw        $zero, 0xF74($a0)
endlabel func_800D8940
