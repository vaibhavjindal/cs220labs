/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/media/vaibhavj/vaibhav/CS220Labs/Lab9_1/mips_inst/main.v";
static unsigned int ng1[] = {537146454U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {537264127U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {10760224U, 0U};
static int ng6[] = {2, 0};
static unsigned int ng7[] = {537067527U, 0U};
static int ng8[] = {3, 0};
static unsigned int ng9[] = {6696964U, 0U};
static int ng10[] = {4, 0};
static unsigned int ng11[] = {202818U, 0U};
static int ng12[] = {5, 0};
static unsigned int ng13[] = {2357566140U, 0U};
static int ng14[] = {6, 0};
static unsigned int ng15[] = {135410774U, 0U};
static int ng16[] = {7, 0};
static int ng17[] = {1, 0, 0, 0};
static int ng18[] = {8, 0, 0, 0};
static const char *ng19 = "r3=%d r4=%d r5=%d r6=%d";



static void Initial_38_0(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    char *t15;
    unsigned int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    int t22;

LAB0:    xsi_set_current_line(38, ng0);

LAB2:    xsi_set_current_line(39, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1768);
    t5 = (t0 + 1768);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1768);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB3;

LAB4:    xsi_set_current_line(40, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 1768);
    t5 = (t0 + 1768);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1768);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng4)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng5)));
    t2 = (t0 + 1768);
    t5 = (t0 + 1768);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1768);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(42, ng0);
    t1 = ((char*)((ng7)));
    t2 = (t0 + 1768);
    t5 = (t0 + 1768);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1768);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng8)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(43, ng0);
    t1 = ((char*)((ng9)));
    t2 = (t0 + 1768);
    t5 = (t0 + 1768);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1768);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng10)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(44, ng0);
    t1 = ((char*)((ng11)));
    t2 = (t0 + 1768);
    t5 = (t0 + 1768);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1768);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng12)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(45, ng0);
    t1 = ((char*)((ng13)));
    t2 = (t0 + 1768);
    t5 = (t0 + 1768);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1768);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng14)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB15;

LAB16:    xsi_set_current_line(46, ng0);
    t1 = ((char*)((ng15)));
    t2 = (t0 + 1768);
    t5 = (t0 + 1768);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1768);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng16)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB17;

LAB18:
LAB1:    return;
LAB3:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB4;

LAB5:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB6;

LAB7:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB8;

LAB9:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB10;

LAB11:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB12;

LAB13:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB14;

LAB15:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB16;

LAB17:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB18;

}

static void Always_49_1(char *t0)
{
    char t6[8];
    char t32[8];
    char t33[8];
    char t34[8];
    char t57[16];
    char t68[8];
    char t82[8];
    char t90[8];
    char t126[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    int t42;
    char *t43;
    unsigned int t44;
    int t45;
    int t46;
    char *t47;
    unsigned int t48;
    int t49;
    int t50;
    unsigned int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    int t55;
    int t56;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t123;
    char *t124;
    char *t125;
    char *t127;

LAB0:    t1 = (t0 + 4368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4936);
    *((int *)t2) = 1;
    t3 = (t0 + 4400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(49, ng0);

LAB5:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(55, ng0);

LAB20:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng4)));
    t28 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t6, t32, t33, ((int*)(t21)), 2, t22, 32, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t42 = (!(t9));
    t30 = (t32 + 4);
    t10 = *((unsigned int *)t30);
    t45 = (!(t10));
    t46 = (t42 && t45);
    t31 = (t33 + 4);
    t11 = *((unsigned int *)t31);
    t49 = (!(t11));
    t50 = (t46 && t49);
    if (t50 == 1)
        goto LAB21;

LAB22:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng8)));
    t28 = ((char*)((ng6)));
    xsi_vlog_convert_partindices(t6, t32, t33, ((int*)(t21)), 2, t22, 32, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t42 = (!(t9));
    t30 = (t32 + 4);
    t10 = *((unsigned int *)t30);
    t45 = (!(t10));
    t46 = (t42 && t45);
    t31 = (t33 + 4);
    t11 = *((unsigned int *)t31);
    t49 = (!(t11));
    t50 = (t46 && t49);
    if (t50 == 1)
        goto LAB23;

LAB24:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng12)));
    t28 = ((char*)((ng10)));
    xsi_vlog_convert_partindices(t6, t32, t33, ((int*)(t21)), 2, t22, 32, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t42 = (!(t9));
    t30 = (t32 + 4);
    t10 = *((unsigned int *)t30);
    t45 = (!(t10));
    t46 = (t42 && t45);
    t31 = (t33 + 4);
    t11 = *((unsigned int *)t31);
    t49 = (!(t11));
    t50 = (t46 && t49);
    if (t50 == 1)
        goto LAB25;

LAB26:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng16)));
    t28 = ((char*)((ng14)));
    xsi_vlog_convert_partindices(t6, t32, t33, ((int*)(t21)), 2, t22, 32, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t42 = (!(t9));
    t30 = (t32 + 4);
    t10 = *((unsigned int *)t30);
    t45 = (!(t10));
    t46 = (t42 && t45);
    t31 = (t33 + 4);
    t11 = *((unsigned int *)t31);
    t49 = (!(t11));
    t50 = (t46 && t49);
    if (t50 == 1)
        goto LAB27;

LAB28:
LAB12:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng17)));
    xsi_vlog_unsigned_add(t57, 41, t4, 41, t5, 32);
    t7 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t7, t57, 0, 0, 41, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng18)));
    xsi_vlog_unsigned_less(t57, 41, t4, 41, t5, 32);
    t7 = (t57 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t57);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB29;

LAB30:
LAB31:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(50, ng0);

LAB13:    xsi_set_current_line(51, ng0);
    t28 = (t0 + 2088);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t0 + 1608);
    t35 = (t0 + 1608);
    t36 = (t35 + 72U);
    t37 = *((char **)t36);
    t38 = ((char*)((ng6)));
    t39 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t32, t33, t34, ((int*)(t37)), 2, t38, 32, 1, t39, 32, 1);
    t40 = (t32 + 4);
    t41 = *((unsigned int *)t40);
    t42 = (!(t41));
    t43 = (t33 + 4);
    t44 = *((unsigned int *)t43);
    t45 = (!(t44));
    t46 = (t42 && t45);
    t47 = (t34 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (!(t48));
    t50 = (t46 && t49);
    if (t50 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng12)));
    t28 = ((char*)((ng8)));
    xsi_vlog_convert_partindices(t6, t32, t33, ((int*)(t21)), 2, t22, 32, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t42 = (!(t9));
    t30 = (t32 + 4);
    t10 = *((unsigned int *)t30);
    t45 = (!(t10));
    t46 = (t42 && t45);
    t31 = (t33 + 4);
    t11 = *((unsigned int *)t31);
    t49 = (!(t11));
    t50 = (t46 && t49);
    if (t50 == 1)
        goto LAB16;

LAB17:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng16)));
    t28 = ((char*)((ng14)));
    xsi_vlog_convert_partindices(t6, t32, t33, ((int*)(t21)), 2, t22, 32, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t42 = (!(t9));
    t30 = (t32 + 4);
    t10 = *((unsigned int *)t30);
    t45 = (!(t10));
    t46 = (t42 && t45);
    t31 = (t33 + 4);
    t11 = *((unsigned int *)t31);
    t49 = (!(t11));
    t50 = (t46 && t49);
    if (t50 == 1)
        goto LAB18;

LAB19:    goto LAB12;

LAB14:    t51 = *((unsigned int *)t34);
    t52 = (t51 + 0);
    t53 = *((unsigned int *)t32);
    t54 = *((unsigned int *)t33);
    t55 = (t53 - t54);
    t56 = (t55 + 1);
    xsi_vlogvar_wait_assign_value(t31, t30, t52, *((unsigned int *)t33), t56, 0LL);
    goto LAB15;

LAB16:    t12 = *((unsigned int *)t33);
    t52 = (t12 + 0);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t32);
    t55 = (t13 - t14);
    t56 = (t55 + 1);
    xsi_vlogvar_wait_assign_value(t5, t4, t52, *((unsigned int *)t32), t56, 0LL);
    goto LAB17;

LAB18:    t12 = *((unsigned int *)t33);
    t52 = (t12 + 0);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t32);
    t55 = (t13 - t14);
    t56 = (t55 + 1);
    xsi_vlogvar_wait_assign_value(t5, t4, t52, *((unsigned int *)t32), t56, 0LL);
    goto LAB19;

LAB21:    t12 = *((unsigned int *)t33);
    t52 = (t12 + 0);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t32);
    t55 = (t13 - t14);
    t56 = (t55 + 1);
    xsi_vlogvar_wait_assign_value(t5, t4, t52, *((unsigned int *)t32), t56, 0LL);
    goto LAB22;

LAB23:    t12 = *((unsigned int *)t33);
    t52 = (t12 + 0);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t32);
    t55 = (t13 - t14);
    t56 = (t55 + 1);
    xsi_vlogvar_wait_assign_value(t5, t4, t52, *((unsigned int *)t32), t56, 0LL);
    goto LAB24;

LAB25:    t12 = *((unsigned int *)t33);
    t52 = (t12 + 0);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t32);
    t55 = (t13 - t14);
    t56 = (t55 + 1);
    xsi_vlogvar_wait_assign_value(t5, t4, t52, *((unsigned int *)t32), t56, 0LL);
    goto LAB26;

LAB27:    t12 = *((unsigned int *)t33);
    t52 = (t12 + 0);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t32);
    t55 = (t13 - t14);
    t56 = (t55 + 1);
    xsi_vlogvar_wait_assign_value(t5, t4, t52, *((unsigned int *)t32), t56, 0LL);
    goto LAB28;

LAB29:    xsi_set_current_line(62, ng0);

LAB32:    xsi_set_current_line(63, ng0);
    t8 = (t0 + 1768);
    t21 = (t8 + 56U);
    t22 = *((char **)t21);
    t28 = (t0 + 1768);
    t29 = (t28 + 72U);
    t30 = *((char **)t29);
    t31 = (t0 + 1768);
    t35 = (t31 + 64U);
    t36 = *((char **)t35);
    t37 = (t0 + 1928);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    xsi_vlog_generic_get_array_select_value(t6, 32, t22, t30, t36, 2, 1, t39, 41, 2);
    t40 = (t0 + 3208);
    xsi_vlogvar_assign_value(t40, t6, 0, 0, 32);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 26);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 26);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 63U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 63U);
    t8 = ((char*)((ng2)));
    memset(t32, 0, 8);
    t21 = (t6 + 4);
    t22 = (t8 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t22);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t41 = (t23 & t27);
    if (t41 != 0)
        goto LAB36;

LAB33:    if (t26 != 0)
        goto LAB35;

LAB34:    *((unsigned int *)t32) = 1;

LAB36:    t29 = (t32 + 4);
    t44 = *((unsigned int *)t29);
    t48 = (~(t44));
    t51 = *((unsigned int *)t32);
    t53 = (t51 & t48);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 26);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 26);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 63U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 63U);
    t8 = ((char*)((ng6)));
    memset(t32, 0, 8);
    t21 = (t6 + 4);
    t22 = (t8 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t22);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t41 = (t23 & t27);
    if (t41 != 0)
        goto LAB76;

LAB73:    if (t26 != 0)
        goto LAB75;

LAB74:    *((unsigned int *)t32) = 1;

LAB76:    memset(t33, 0, 8);
    t29 = (t32 + 4);
    t44 = *((unsigned int *)t29);
    t48 = (~(t44));
    t51 = *((unsigned int *)t32);
    t53 = (t51 & t48);
    t54 = (t53 & 1U);
    if (t54 != 0)
        goto LAB77;

LAB78:    if (*((unsigned int *)t29) != 0)
        goto LAB79;

LAB80:    t31 = (t33 + 4);
    t58 = *((unsigned int *)t33);
    t59 = (!(t58));
    t60 = *((unsigned int *)t31);
    t61 = (t59 || t60);
    if (t61 > 0)
        goto LAB81;

LAB82:    memcpy(t90, t33, 8);

LAB83:    t116 = (t90 + 4);
    t117 = *((unsigned int *)t116);
    t118 = (~(t117));
    t119 = *((unsigned int *)t90);
    t120 = (t119 & t118);
    t121 = (t120 != 0);
    if (t121 > 0)
        goto LAB95;

LAB96:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 3, t5, 32);
    t7 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 3, 0LL);

LAB97:
LAB39:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 16);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 16);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 31U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 31U);
    t8 = ((char*)((ng8)));
    memset(t32, 0, 8);
    t21 = (t6 + 4);
    t22 = (t8 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t22);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t41 = (t23 & t27);
    if (t41 != 0)
        goto LAB102;

LAB99:    if (t26 != 0)
        goto LAB101;

LAB100:    *((unsigned int *)t32) = 1;

LAB102:    t29 = (t32 + 4);
    t44 = *((unsigned int *)t29);
    t48 = (~(t44));
    t51 = *((unsigned int *)t32);
    t53 = (t51 & t48);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB103;

LAB104:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 16);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 16);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 31U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 31U);
    t8 = ((char*)((ng10)));
    memset(t32, 0, 8);
    t21 = (t6 + 4);
    t22 = (t8 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t22);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t41 = (t23 & t27);
    if (t41 != 0)
        goto LAB110;

LAB107:    if (t26 != 0)
        goto LAB109;

LAB108:    *((unsigned int *)t32) = 1;

LAB110:    t29 = (t32 + 4);
    t44 = *((unsigned int *)t29);
    t48 = (~(t44));
    t51 = *((unsigned int *)t32);
    t53 = (t51 & t48);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB111;

LAB112:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 16);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 16);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 31U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 31U);
    t8 = ((char*)((ng12)));
    memset(t32, 0, 8);
    t21 = (t6 + 4);
    t22 = (t8 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t22);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t41 = (t23 & t27);
    if (t41 != 0)
        goto LAB118;

LAB115:    if (t26 != 0)
        goto LAB117;

LAB116:    *((unsigned int *)t32) = 1;

LAB118:    t29 = (t32 + 4);
    t44 = *((unsigned int *)t29);
    t48 = (~(t44));
    t51 = *((unsigned int *)t32);
    t53 = (t51 & t48);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB119;

LAB120:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 16);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 16);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 31U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 31U);
    t8 = ((char*)((ng14)));
    memset(t32, 0, 8);
    t21 = (t6 + 4);
    t22 = (t8 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t22);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t41 = (t23 & t27);
    if (t41 != 0)
        goto LAB126;

LAB123:    if (t26 != 0)
        goto LAB125;

LAB124:    *((unsigned int *)t32) = 1;

LAB126:    t29 = (t32 + 4);
    t44 = *((unsigned int *)t29);
    t48 = (~(t44));
    t51 = *((unsigned int *)t32);
    t53 = (t51 & t48);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB127;

LAB128:
LAB129:
LAB121:
LAB113:
LAB105:    goto LAB31;

LAB35:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB36;

LAB37:    xsi_set_current_line(64, ng0);

LAB40:    xsi_set_current_line(65, ng0);
    t30 = (t0 + 2088);
    t31 = (t30 + 56U);
    t35 = *((char **)t31);
    t36 = ((char*)((ng4)));
    memset(t33, 0, 8);
    xsi_vlog_unsigned_add(t33, 32, t35, 3, t36, 32);
    t37 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t37, t33, 0, 0, 3, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 11);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 11);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 31U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 31U);
    t8 = ((char*)((ng8)));
    memset(t32, 0, 8);
    t21 = (t6 + 4);
    t22 = (t8 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t22);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t41 = (t23 & t27);
    if (t41 != 0)
        goto LAB44;

LAB41:    if (t26 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t32) = 1;

LAB44:    t29 = (t32 + 4);
    t44 = *((unsigned int *)t29);
    t48 = (~(t44));
    t51 = *((unsigned int *)t32);
    t53 = (t51 & t48);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 11);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 11);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 31U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 31U);
    t8 = ((char*)((ng10)));
    memset(t32, 0, 8);
    t21 = (t6 + 4);
    t22 = (t8 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t22);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t41 = (t23 & t27);
    if (t41 != 0)
        goto LAB52;

LAB49:    if (t26 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t32) = 1;

LAB52:    t29 = (t32 + 4);
    t44 = *((unsigned int *)t29);
    t48 = (~(t44));
    t51 = *((unsigned int *)t32);
    t53 = (t51 & t48);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB53;

LAB54:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 11);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 11);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 31U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 31U);
    t8 = ((char*)((ng12)));
    memset(t32, 0, 8);
    t21 = (t6 + 4);
    t22 = (t8 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t22);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t41 = (t23 & t27);
    if (t41 != 0)
        goto LAB60;

LAB57:    if (t26 != 0)
        goto LAB59;

LAB58:    *((unsigned int *)t32) = 1;

LAB60:    t29 = (t32 + 4);
    t44 = *((unsigned int *)t29);
    t48 = (~(t44));
    t51 = *((unsigned int *)t32);
    t53 = (t51 & t48);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB61;

LAB62:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 11);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 11);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 31U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 31U);
    t8 = ((char*)((ng14)));
    memset(t32, 0, 8);
    t21 = (t6 + 4);
    t22 = (t8 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t22);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t41 = (t23 & t27);
    if (t41 != 0)
        goto LAB68;

LAB65:    if (t26 != 0)
        goto LAB67;

LAB66:    *((unsigned int *)t32) = 1;

LAB68:    t29 = (t32 + 4);
    t44 = *((unsigned int *)t29);
    t48 = (~(t44));
    t51 = *((unsigned int *)t32);
    t53 = (t51 & t48);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB69;

LAB70:
LAB71:
LAB63:
LAB55:
LAB47:    goto LAB39;

LAB43:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(66, ng0);

LAB48:    xsi_set_current_line(67, ng0);
    t30 = (t0 + 2568);
    t31 = (t30 + 56U);
    t35 = *((char **)t31);
    t36 = ((char*)((ng4)));
    memset(t33, 0, 8);
    xsi_vlog_unsigned_add(t33, 32, t35, 2, t36, 32);
    t37 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t37, t33, 0, 0, 2, 0LL);
    goto LAB47;

LAB51:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB52;

LAB53:    xsi_set_current_line(69, ng0);

LAB56:    xsi_set_current_line(70, ng0);
    t30 = (t0 + 2728);
    t31 = (t30 + 56U);
    t35 = *((char **)t31);
    t36 = ((char*)((ng4)));
    memset(t33, 0, 8);
    xsi_vlog_unsigned_add(t33, 32, t35, 2, t36, 32);
    t37 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t37, t33, 0, 0, 2, 0LL);
    goto LAB55;

LAB59:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB60;

LAB61:    xsi_set_current_line(72, ng0);

LAB64:    xsi_set_current_line(73, ng0);
    t30 = (t0 + 2888);
    t31 = (t30 + 56U);
    t35 = *((char **)t31);
    t36 = ((char*)((ng4)));
    memset(t33, 0, 8);
    xsi_vlog_unsigned_add(t33, 32, t35, 2, t36, 32);
    t37 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t37, t33, 0, 0, 2, 0LL);
    goto LAB63;

LAB67:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB68;

LAB69:    xsi_set_current_line(75, ng0);

LAB72:    xsi_set_current_line(76, ng0);
    t30 = (t0 + 3048);
    t31 = (t30 + 56U);
    t35 = *((char **)t31);
    t36 = ((char*)((ng4)));
    memset(t33, 0, 8);
    xsi_vlog_unsigned_add(t33, 32, t35, 2, t36, 32);
    t37 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t37, t33, 0, 0, 2, 0LL);
    goto LAB71;

LAB75:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB76;

LAB77:    *((unsigned int *)t33) = 1;
    goto LAB80;

LAB79:    t30 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB80;

LAB81:    t35 = (t0 + 3208);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memset(t34, 0, 8);
    t38 = (t34 + 4);
    t39 = (t37 + 4);
    t62 = *((unsigned int *)t37);
    t63 = (t62 >> 26);
    *((unsigned int *)t34) = t63;
    t64 = *((unsigned int *)t39);
    t65 = (t64 >> 26);
    *((unsigned int *)t38) = t65;
    t66 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t66 & 63U);
    t67 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t67 & 63U);
    t40 = ((char*)((ng8)));
    memset(t68, 0, 8);
    t43 = (t34 + 4);
    t47 = (t40 + 4);
    t69 = *((unsigned int *)t34);
    t70 = *((unsigned int *)t40);
    t71 = (t69 ^ t70);
    t72 = *((unsigned int *)t43);
    t73 = *((unsigned int *)t47);
    t74 = (t72 ^ t73);
    t75 = (t71 | t74);
    t76 = *((unsigned int *)t43);
    t77 = *((unsigned int *)t47);
    t78 = (t76 | t77);
    t79 = (~(t78));
    t80 = (t75 & t79);
    if (t80 != 0)
        goto LAB87;

LAB84:    if (t78 != 0)
        goto LAB86;

LAB85:    *((unsigned int *)t68) = 1;

LAB87:    memset(t82, 0, 8);
    t83 = (t68 + 4);
    t84 = *((unsigned int *)t83);
    t85 = (~(t84));
    t86 = *((unsigned int *)t68);
    t87 = (t86 & t85);
    t88 = (t87 & 1U);
    if (t88 != 0)
        goto LAB88;

LAB89:    if (*((unsigned int *)t83) != 0)
        goto LAB90;

LAB91:    t91 = *((unsigned int *)t33);
    t92 = *((unsigned int *)t82);
    t93 = (t91 | t92);
    *((unsigned int *)t90) = t93;
    t94 = (t33 + 4);
    t95 = (t82 + 4);
    t96 = (t90 + 4);
    t97 = *((unsigned int *)t94);
    t98 = *((unsigned int *)t95);
    t99 = (t97 | t98);
    *((unsigned int *)t96) = t99;
    t100 = *((unsigned int *)t96);
    t101 = (t100 != 0);
    if (t101 == 1)
        goto LAB92;

LAB93:
LAB94:    goto LAB83;

LAB86:    t81 = (t68 + 4);
    *((unsigned int *)t68) = 1;
    *((unsigned int *)t81) = 1;
    goto LAB87;

LAB88:    *((unsigned int *)t82) = 1;
    goto LAB91;

LAB90:    t89 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t89) = 1;
    goto LAB91;

LAB92:    t102 = *((unsigned int *)t90);
    t103 = *((unsigned int *)t96);
    *((unsigned int *)t90) = (t102 | t103);
    t104 = (t33 + 4);
    t105 = (t82 + 4);
    t106 = *((unsigned int *)t104);
    t107 = (~(t106));
    t108 = *((unsigned int *)t33);
    t42 = (t108 & t107);
    t109 = *((unsigned int *)t105);
    t110 = (~(t109));
    t111 = *((unsigned int *)t82);
    t45 = (t111 & t110);
    t112 = (~(t42));
    t113 = (~(t45));
    t114 = *((unsigned int *)t96);
    *((unsigned int *)t96) = (t114 & t112);
    t115 = *((unsigned int *)t96);
    *((unsigned int *)t96) = (t115 & t113);
    goto LAB94;

LAB95:    xsi_set_current_line(79, ng0);

LAB98:    xsi_set_current_line(80, ng0);
    t122 = (t0 + 2408);
    t123 = (t122 + 56U);
    t124 = *((char **)t123);
    t125 = ((char*)((ng4)));
    memset(t126, 0, 8);
    xsi_vlog_unsigned_add(t126, 32, t124, 2, t125, 32);
    t127 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t127, t126, 0, 0, 2, 0LL);
    goto LAB97;

LAB101:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB102;

LAB103:    xsi_set_current_line(84, ng0);

LAB106:    xsi_set_current_line(85, ng0);
    t30 = (t0 + 2568);
    t31 = (t30 + 56U);
    t35 = *((char **)t31);
    t36 = ((char*)((ng4)));
    memset(t33, 0, 8);
    xsi_vlog_unsigned_add(t33, 32, t35, 2, t36, 32);
    t37 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t37, t33, 0, 0, 2, 0LL);
    goto LAB105;

LAB109:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB110;

LAB111:    xsi_set_current_line(87, ng0);

LAB114:    xsi_set_current_line(88, ng0);
    t30 = (t0 + 2728);
    t31 = (t30 + 56U);
    t35 = *((char **)t31);
    t36 = ((char*)((ng4)));
    memset(t33, 0, 8);
    xsi_vlog_unsigned_add(t33, 32, t35, 2, t36, 32);
    t37 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t37, t33, 0, 0, 2, 0LL);
    goto LAB113;

LAB117:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB118;

LAB119:    xsi_set_current_line(90, ng0);

LAB122:    xsi_set_current_line(91, ng0);
    t30 = (t0 + 2888);
    t31 = (t30 + 56U);
    t35 = *((char **)t31);
    t36 = ((char*)((ng4)));
    memset(t33, 0, 8);
    xsi_vlog_unsigned_add(t33, 32, t35, 2, t36, 32);
    t37 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t37, t33, 0, 0, 2, 0LL);
    goto LAB121;

LAB125:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB126;

LAB127:    xsi_set_current_line(93, ng0);

LAB130:    xsi_set_current_line(94, ng0);
    t30 = (t0 + 3048);
    t31 = (t30 + 56U);
    t35 = *((char **)t31);
    t36 = ((char*)((ng4)));
    memset(t33, 0, 8);
    xsi_vlog_unsigned_add(t33, 32, t35, 2, t36, 32);
    t37 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t37, t33, 0, 0, 2, 0LL);
    goto LAB129;

}

static void Always_99_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 4616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4952);
    *((int *)t2) = 1;
    t3 = (t0 + 4648);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(99, ng0);

LAB5:    xsi_set_current_line(100, ng0);
    t4 = (t0 + 2568);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 2728);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t0 + 2888);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t0 + 3048);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    xsi_vlogfile_write(1, 0, 0, ng19, 5, t0, (char)118, t6, 2, (char)118, t9, 2, (char)118, t12, 2, (char)118, t15, 2);
    goto LAB2;

}


extern void work_m_07752592700227903890_0286164271_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Always_49_1,(void *)Always_99_2};
	xsi_register_didat("work_m_07752592700227903890_0286164271", "isim/top_isim_beh.exe.sim/work/m_07752592700227903890_0286164271.didat");
	xsi_register_executes(pe);
}
