.class public final Landroidx/compose/material3/ToggleButtonKt;
.super Ljava/lang/Object;
.source "ToggleButton.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToggleButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToggleButton.kt\nandroidx/compose/material3/ToggleButtonKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 5 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,964:1\n1282#2,6:965\n1282#2,6:972\n113#3:971\n85#4:978\n99#5,6:979\n106#5:1015\n79#6,6:985\n86#6,3:1000\n89#6,2:1009\n93#6:1014\n347#7,9:991\n356#7,3:1011\n4206#8,6:1003\n*S KotlinDebug\n*F\n+ 1 ToggleButton.kt\nandroidx/compose/material3/ToggleButtonKt\n*L\n127#1:965,6\n139#1:972,6\n133#1:971\n130#1:978\n152#1:979,6\n152#1:1015\n152#1:985,6\n152#1:1000,3\n152#1:1009,2\n152#1:1014\n152#1:991,9\n152#1:1011,3\n152#1:1003,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u001a\u009d\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u001c\u0010\u0015\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019\u001a\u009d\u0001\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u001c\u0010\u0015\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019\u001a\u009d\u0001\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u001c\u0010\u0015\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019\u001a\u009d\u0001\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u001c\u0010\u0015\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019\u001a3\u0010\"\u001a\u00020#2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\'0&H\u0003\u00a2\u0006\u0002\u0010(\"\u001e\u0010\u001d\u001a\u00020\u0003*\u00020\n8@X\u0080\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\u00a8\u0006)\u00b2\u0006\n\u0010$\u001a\u00020\u0003X\u008a\u0084\u0002"
    }
    d2 = {
        "ToggleButton",
        "",
        "checked",
        "",
        "onCheckedChange",
        "Lkotlin/Function1;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "shapes",
        "Landroidx/compose/material3/ToggleButtonShapes;",
        "colors",
        "Landroidx/compose/material3/ToggleButtonColors;",
        "elevation",
        "Landroidx/compose/material3/ButtonElevation;",
        "border",
        "Landroidx/compose/foundation/BorderStroke;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "content",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "ElevatedToggleButton",
        "TonalToggleButton",
        "OutlinedToggleButton",
        "hasRoundedCornerShapes",
        "getHasRoundedCornerShapes$annotations",
        "(Landroidx/compose/material3/ToggleButtonShapes;)V",
        "getHasRoundedCornerShapes",
        "(Landroidx/compose/material3/ToggleButtonShapes;)Z",
        "shapeByInteraction",
        "Landroidx/compose/ui/graphics/Shape;",
        "pressed",
        "animationSpec",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "",
        "(Landroidx/compose/material3/ToggleButtonShapes;ZZLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;",
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$CHYbaC8UiBPfC7oW1BjJON7B_8c(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ToggleButtonKt;->ToggleButton$lambda$2$0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IKKYZlDbigSgTmz9-t6RtE6Hocs(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/ToggleButtonKt;->ToggleButton$lambda$3$0(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O2GspYPGi_NFP-ERfAyCRwdcjrE(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/ToggleButtonKt;->OutlinedToggleButton$lambda$0(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OlguGoiiXIXOi1ySxEcn5LdXBJ8(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/ToggleButtonKt;->ElevatedToggleButton$lambda$0(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S6j6640c4KdThrmjnixdyfKRQdc(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/ToggleButtonKt;->ToggleButton$lambda$4(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YeNXtj0_DtBRn30k8eKfphx8hdk(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/ToggleButtonKt;->TonalToggleButton$lambda$0(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rYGfoKtw25kyhGaveVtq8FtFnGQ(JLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/ToggleButtonKt;->ToggleButton$lambda$3(JLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final ElevatedToggleButton(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/ToggleButtonShapes;",
            "Landroidx/compose/material3/ToggleButtonColors;",
            "Landroidx/compose/material3/ButtonElevation;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v12, p12

    move/from16 v14, p14

    const v0, 0xa8d3db4

    move-object/from16 v1, p11

    .line 219
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    const-string v1, "C(ElevatedToggleButton)N(checked,onCheckedChange,modifier,enabled,shapes,colors,elevation,border,contentPadding,interactionSource,content)218@11533L366:ToggleButton.kt#uh7d8r"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v12, 0x6

    move/from16 v15, p0

    if-nez v1, :cond_1

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v12

    goto :goto_1

    :cond_1
    move v1, v12

    :goto_1
    and-int/lit8 v4, v12, 0x30

    move-object/from16 v10, p1

    if-nez v4, :cond_3

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_3
    and-int/lit8 v4, v14, 0x4

    if-eqz v4, :cond_4

    or-int/lit16 v1, v1, 0x180

    goto :goto_4

    :cond_4
    and-int/lit16 v5, v12, 0x180

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_3

    :cond_5
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v1, v6

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v5, p2

    :goto_5
    and-int/lit8 v6, v14, 0x8

    if-eqz v6, :cond_7

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_7
    and-int/lit16 v8, v12, 0xc00

    if-nez v8, :cond_9

    move/from16 v8, p3

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x800

    goto :goto_6

    :cond_8
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v1, v9

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v8, p3

    :goto_8
    and-int/lit16 v9, v12, 0x6000

    if-nez v9, :cond_c

    and-int/lit8 v9, v14, 0x10

    if-nez v9, :cond_a

    move-object/from16 v9, p4

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x4000

    goto :goto_9

    :cond_a
    move-object/from16 v9, p4

    :cond_b
    const/16 v11, 0x2000

    :goto_9
    or-int/2addr v1, v11

    goto :goto_a

    :cond_c
    move-object/from16 v9, p4

    :goto_a
    const/high16 v11, 0x30000

    and-int/2addr v11, v12

    if-nez v11, :cond_f

    and-int/lit8 v11, v14, 0x20

    if-nez v11, :cond_d

    move-object/from16 v11, p5

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/high16 v13, 0x20000

    goto :goto_b

    :cond_d
    move-object/from16 v11, p5

    :cond_e
    const/high16 v13, 0x10000

    :goto_b
    or-int/2addr v1, v13

    goto :goto_c

    :cond_f
    move-object/from16 v11, p5

    :goto_c
    const/high16 v13, 0x180000

    and-int/2addr v13, v12

    if-nez v13, :cond_12

    and-int/lit8 v13, v14, 0x40

    if-nez v13, :cond_10

    move-object/from16 v13, p6

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x100000

    goto :goto_d

    :cond_10
    move-object/from16 v13, p6

    :cond_11
    const/high16 v16, 0x80000

    :goto_d
    or-int v1, v1, v16

    goto :goto_e

    :cond_12
    move-object/from16 v13, p6

    :goto_e
    and-int/lit16 v0, v14, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_13

    or-int v1, v1, v17

    move-object/from16 v3, p7

    goto :goto_10

    :cond_13
    and-int v17, v12, v17

    move-object/from16 v3, p7

    if-nez v17, :cond_15

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/high16 v17, 0x800000

    goto :goto_f

    :cond_14
    const/high16 v17, 0x400000

    :goto_f
    or-int v1, v1, v17

    :cond_15
    :goto_10
    const/high16 v17, 0x6000000

    and-int v17, v12, v17

    if-nez v17, :cond_18

    and-int/lit16 v2, v14, 0x100

    if-nez v2, :cond_16

    move-object/from16 v2, p8

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x4000000

    goto :goto_11

    :cond_16
    move-object/from16 v2, p8

    :cond_17
    const/high16 v18, 0x2000000

    :goto_11
    or-int v1, v1, v18

    goto :goto_12

    :cond_18
    move-object/from16 v2, p8

    :goto_12
    and-int/lit16 v2, v14, 0x200

    const/high16 v18, 0x30000000

    if-eqz v2, :cond_19

    or-int v1, v1, v18

    goto :goto_14

    :cond_19
    and-int v18, v12, v18

    if-nez v18, :cond_1b

    move/from16 v18, v2

    move-object/from16 v2, p9

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/high16 v19, 0x20000000

    goto :goto_13

    :cond_1a
    const/high16 v19, 0x10000000

    :goto_13
    or-int v1, v1, v19

    goto :goto_15

    :cond_1b
    :goto_14
    move/from16 v18, v2

    move-object/from16 v2, p9

    :goto_15
    and-int/lit8 v19, p13, 0x6

    move-object/from16 v2, p10

    if-nez v19, :cond_1d

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/16 v19, 0x4

    goto :goto_16

    :cond_1c
    const/16 v19, 0x2

    :goto_16
    or-int v19, p13, v19

    move/from16 v2, v19

    goto :goto_17

    :cond_1d
    move/from16 v2, p13

    :goto_17
    const v19, 0x12492493

    move/from16 v20, v0

    and-int v0, v1, v19

    move/from16 p11, v1

    const v1, 0x12492492

    const/16 v19, 0x1

    if-ne v0, v1, :cond_1f

    and-int/lit8 v0, v2, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    goto :goto_18

    :cond_1e
    const/4 v0, 0x0

    goto :goto_19

    :cond_1f
    :goto_18
    move/from16 v0, v19

    :goto_19
    and-int/lit8 v1, p11, 0x1

    invoke-interface {v7, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v0, "210@11095L35,211@11186L28,212@11265L25"

    invoke-static {v7, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v12, 0x1

    const v17, -0xe000001

    const v21, -0x380001

    const v1, -0x70001

    const v22, -0xe001

    if-eqz v0, :cond_25

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_1b

    .line 206
    :cond_20
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_21

    and-int v0, p11, v22

    goto :goto_1a

    :cond_21
    move/from16 v0, p11

    :goto_1a
    and-int/lit8 v4, v14, 0x20

    if-eqz v4, :cond_22

    and-int/2addr v0, v1

    :cond_22
    and-int/lit8 v1, v14, 0x40

    if-eqz v1, :cond_23

    and-int v0, v0, v21

    :cond_23
    and-int/lit16 v1, v14, 0x100

    if-eqz v1, :cond_24

    and-int v0, v0, v17

    :cond_24
    move-object/from16 v23, p8

    move-object/from16 v24, p9

    move v4, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v5

    move/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v13

    goto/16 :goto_23

    :cond_25
    :goto_1b
    if-eqz v4, :cond_26

    .line 209
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_1c

    :cond_26
    move-object v0, v5

    :goto_1c
    if-eqz v6, :cond_27

    goto :goto_1d

    :cond_27
    move/from16 v19, v8

    :goto_1d
    and-int/lit8 v4, v14, 0x10

    if-eqz v4, :cond_28

    .line 211
    sget-object v4, Landroidx/compose/material3/ToggleButtonDefaults;->INSTANCE:Landroidx/compose/material3/ToggleButtonDefaults;

    sget-object v5, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/ButtonDefaults;->getMinHeight-D9Ej5fM()F

    move-result v5

    const/16 v6, 0x36

    invoke-virtual {v4, v5, v7, v6}, Landroidx/compose/material3/ToggleButtonDefaults;->shapesFor-8Feqmps(FLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ToggleButtonShapes;

    move-result-object v4

    and-int v5, p11, v22

    move-object/from16 v22, v4

    goto :goto_1e

    :cond_28
    move/from16 v5, p11

    move-object/from16 v22, v9

    :goto_1e
    and-int/lit8 v4, v14, 0x20

    if-eqz v4, :cond_29

    .line 212
    sget-object v4, Landroidx/compose/material3/ToggleButtonDefaults;->INSTANCE:Landroidx/compose/material3/ToggleButtonDefaults;

    const/4 v6, 0x6

    invoke-virtual {v4, v7, v6}, Landroidx/compose/material3/ToggleButtonDefaults;->elevatedToggleButtonColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ToggleButtonColors;

    move-result-object v4

    and-int/2addr v5, v1

    move-object v11, v4

    :cond_29
    move/from16 v23, v5

    and-int/lit8 v1, v14, 0x40

    if-eqz v1, :cond_2a

    .line 213
    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    const/high16 v8, 0x30000

    const/16 v9, 0x1f

    move v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v4

    const/4 v4, 0x0

    move v6, v5

    const/4 v5, 0x0

    move v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material3/ButtonDefaults;->elevatedButtonElevation-R_JCAzs(FFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonElevation;

    move-result-object v1

    and-int v23, v23, v21

    move v4, v13

    goto :goto_1f

    :cond_2a
    move v4, v2

    move-object v1, v13

    :goto_1f
    const/4 v2, 0x0

    if-eqz v20, :cond_2b

    move-object v3, v2

    goto :goto_20

    :cond_2b
    move-object/from16 v3, p7

    :goto_20
    and-int/lit16 v5, v14, 0x100

    if-eqz v5, :cond_2c

    .line 215
    sget-object v5, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    sget-object v6, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v6}, Landroidx/compose/material3/ButtonDefaults;->getMinHeight-D9Ej5fM()F

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/compose/material3/ButtonDefaults;->contentPaddingFor-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v5

    and-int v6, v23, v17

    goto :goto_21

    :cond_2c
    move-object/from16 v5, p8

    move/from16 v6, v23

    :goto_21
    if-eqz v18, :cond_2d

    move-object/from16 v17, v0

    move-object/from16 v21, v1

    move-object/from16 v24, v2

    goto :goto_22

    :cond_2d
    move-object/from16 v24, p9

    move-object/from16 v17, v0

    move-object/from16 v21, v1

    :goto_22
    move-object/from16 v23, v5

    move v0, v6

    move-object/from16 v20, v11

    move/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v3

    .line 206
    :goto_23
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "androidx.compose.material3.ElevatedToggleButton (ToggleButton.kt:218)"

    const v2, 0xa8d3db4

    invoke-static {v2, v0, v4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2e
    const v1, 0x7ffffffe

    and-int v27, v0, v1

    and-int/lit8 v28, v4, 0xe

    const/16 v29, 0x0

    move-object/from16 v25, p10

    move-object/from16 v26, v7

    move-object/from16 v16, v10

    .line 219
    invoke-static/range {v15 .. v29}, Landroidx/compose/material3/ToggleButtonKt;->ToggleButton(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2f
    move-object/from16 v26, v7

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto :goto_24

    .line 206
    :cond_30
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v10, p9

    move-object v3, v5

    move-object/from16 v26, v7

    move v4, v8

    move-object v5, v9

    move-object v6, v11

    move-object v7, v13

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 231
    :goto_24
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_31

    new-instance v0, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda0;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p10

    move/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda0;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;III)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_31
    return-void
.end method

.method private static final ElevatedToggleButton$lambda$0(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16

    or-int/lit8 v0, p11, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    invoke-static/range {p12 .. p12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v15, p13

    move-object/from16 v12, p14

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ToggleButtonKt;->ElevatedToggleButton(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final OutlinedToggleButton(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/ToggleButtonShapes;",
            "Landroidx/compose/material3/ToggleButtonColors;",
            "Landroidx/compose/material3/ButtonElevation;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v1, p0

    move/from16 v15, p12

    move/from16 v0, p14

    const v2, -0x63612394

    move-object/from16 v3, p11

    .line 363
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v3, "C(OutlinedToggleButton)N(checked,onCheckedChange,modifier,enabled,shapes,colors,elevation,border,contentPadding,interactionSource,content)362@19275L366:ToggleButton.kt#uh7d8r"

    invoke-static {v11, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v15, 0x6

    if-nez v3, :cond_1

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_1
    move v3, v15

    :goto_1
    and-int/lit8 v6, v15, 0x30

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    goto :goto_3

    :cond_3
    move-object/from16 v6, p1

    :goto_3
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_4

    or-int/lit16 v3, v3, 0x180

    goto :goto_5

    :cond_4
    and-int/lit16 v8, v15, 0x180

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x100

    goto :goto_4

    :cond_5
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v3, v9

    goto :goto_6

    :cond_6
    :goto_5
    move-object/from16 v8, p2

    :goto_6
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_7

    or-int/lit16 v3, v3, 0xc00

    goto :goto_8

    :cond_7
    and-int/lit16 v10, v15, 0xc00

    if-nez v10, :cond_9

    move/from16 v10, p3

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x800

    goto :goto_7

    :cond_8
    const/16 v12, 0x400

    :goto_7
    or-int/2addr v3, v12

    goto :goto_9

    :cond_9
    :goto_8
    move/from16 v10, p3

    :goto_9
    and-int/lit16 v12, v15, 0x6000

    if-nez v12, :cond_c

    and-int/lit8 v12, v0, 0x10

    if-nez v12, :cond_a

    move-object/from16 v12, p4

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x4000

    goto :goto_a

    :cond_a
    move-object/from16 v12, p4

    :cond_b
    const/16 v13, 0x2000

    :goto_a
    or-int/2addr v3, v13

    goto :goto_b

    :cond_c
    move-object/from16 v12, p4

    :goto_b
    const/high16 v13, 0x30000

    and-int/2addr v13, v15

    if-nez v13, :cond_f

    and-int/lit8 v13, v0, 0x20

    if-nez v13, :cond_d

    move-object/from16 v13, p5

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/high16 v14, 0x20000

    goto :goto_c

    :cond_d
    move-object/from16 v13, p5

    :cond_e
    const/high16 v14, 0x10000

    :goto_c
    or-int/2addr v3, v14

    goto :goto_d

    :cond_f
    move-object/from16 v13, p5

    :goto_d
    and-int/lit8 v14, v0, 0x40

    const/high16 v16, 0x180000

    if-eqz v14, :cond_10

    or-int v3, v3, v16

    move-object/from16 v5, p6

    goto :goto_f

    :cond_10
    and-int v16, v15, v16

    move-object/from16 v5, p6

    if-nez v16, :cond_12

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x100000

    goto :goto_e

    :cond_11
    const/high16 v16, 0x80000

    :goto_e
    or-int v3, v3, v16

    :cond_12
    :goto_f
    const/high16 v16, 0xc00000

    and-int v16, v15, v16

    if-nez v16, :cond_15

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_13

    move-object/from16 v2, p7

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/high16 v17, 0x800000

    goto :goto_10

    :cond_13
    move-object/from16 v2, p7

    :cond_14
    const/high16 v17, 0x400000

    :goto_10
    or-int v3, v3, v17

    goto :goto_11

    :cond_15
    move-object/from16 v2, p7

    :goto_11
    const/high16 v17, 0x6000000

    and-int v17, v15, v17

    if-nez v17, :cond_18

    and-int/lit16 v4, v0, 0x100

    if-nez v4, :cond_16

    move-object/from16 v4, p8

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x4000000

    goto :goto_12

    :cond_16
    move-object/from16 v4, p8

    :cond_17
    const/high16 v18, 0x2000000

    :goto_12
    or-int v3, v3, v18

    goto :goto_13

    :cond_18
    move-object/from16 v4, p8

    :goto_13
    and-int/lit16 v1, v0, 0x200

    const/high16 v18, 0x30000000

    if-eqz v1, :cond_19

    or-int v3, v3, v18

    goto :goto_15

    :cond_19
    and-int v18, v15, v18

    if-nez v18, :cond_1b

    move/from16 v18, v1

    move-object/from16 v1, p9

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/high16 v19, 0x20000000

    goto :goto_14

    :cond_1a
    const/high16 v19, 0x10000000

    :goto_14
    or-int v3, v3, v19

    goto :goto_16

    :cond_1b
    :goto_15
    move/from16 v18, v1

    move-object/from16 v1, p9

    :goto_16
    and-int/lit8 v19, p13, 0x6

    move-object/from16 v1, p10

    if-nez v19, :cond_1d

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/16 v19, 0x4

    goto :goto_17

    :cond_1c
    const/16 v19, 0x2

    :goto_17
    or-int v19, p13, v19

    move/from16 v1, v19

    goto :goto_18

    :cond_1d
    move/from16 v1, p13

    :goto_18
    const v19, 0x12492493

    and-int v2, v3, v19

    move/from16 p11, v3

    const v3, 0x12492492

    const/4 v4, 0x0

    const/16 v19, 0x1

    if-ne v2, v3, :cond_1f

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1e

    goto :goto_19

    :cond_1e
    move v2, v4

    goto :goto_1a

    :cond_1f
    :goto_19
    move/from16 v2, v19

    :goto_1a
    and-int/lit8 v3, p11, 0x1

    invoke-interface {v11, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v2, "354@18809L35,355@18900L28"

    invoke-static {v11, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v15, 0x1

    const v3, -0xe000001

    const v17, -0x1c00001

    const v20, -0x70001

    const v21, -0xe001

    if-eqz v2, :cond_25

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_1c

    .line 350
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_21

    and-int v2, p11, v21

    goto :goto_1b

    :cond_21
    move/from16 v2, p11

    :goto_1b
    and-int/lit8 v4, v0, 0x20

    if-eqz v4, :cond_22

    and-int v2, v2, v20

    :cond_22
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_23

    and-int v2, v2, v17

    :cond_23
    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_24

    and-int/2addr v2, v3

    :cond_24
    move-object/from16 v7, p7

    move-object/from16 v9, p9

    move-object v6, v5

    move v3, v10

    move-object v4, v12

    move-object v5, v13

    move v10, v2

    move-object v2, v8

    move-object/from16 v8, p8

    goto/16 :goto_23

    :cond_25
    :goto_1c
    if-eqz v7, :cond_26

    .line 353
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_1d

    :cond_26
    move-object v2, v8

    :goto_1d
    if-eqz v9, :cond_27

    move/from16 v10, v19

    :cond_27
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_28

    .line 355
    sget-object v7, Landroidx/compose/material3/ToggleButtonDefaults;->INSTANCE:Landroidx/compose/material3/ToggleButtonDefaults;

    sget-object v8, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v8}, Landroidx/compose/material3/ButtonDefaults;->getMinHeight-D9Ej5fM()F

    move-result v8

    const/16 v9, 0x36

    invoke-virtual {v7, v8, v11, v9}, Landroidx/compose/material3/ToggleButtonDefaults;->shapesFor-8Feqmps(FLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ToggleButtonShapes;

    move-result-object v7

    and-int v8, p11, v21

    goto :goto_1e

    :cond_28
    move/from16 v8, p11

    move-object v7, v12

    :goto_1e
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_29

    .line 356
    sget-object v9, Landroidx/compose/material3/ToggleButtonDefaults;->INSTANCE:Landroidx/compose/material3/ToggleButtonDefaults;

    const/4 v12, 0x6

    invoke-virtual {v9, v11, v12}, Landroidx/compose/material3/ToggleButtonDefaults;->outlinedToggleButtonColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ToggleButtonColors;

    move-result-object v9

    and-int v8, v8, v20

    goto :goto_1f

    :cond_29
    move-object v9, v13

    :goto_1f
    const/4 v12, 0x0

    if-eqz v14, :cond_2a

    move-object v5, v12

    :cond_2a
    and-int/lit16 v13, v0, 0x80

    if-eqz v13, :cond_2c

    if-nez p0, :cond_2b

    const v13, -0xfa65977

    .line 358
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v13, "357@19027L29"

    invoke-static {v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v13, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    shr-int/lit8 v14, v8, 0x9

    and-int/lit8 v14, v14, 0xe

    or-int/lit8 v14, v14, 0x30

    invoke-virtual {v13, v10, v11, v14, v4}, Landroidx/compose/material3/ButtonDefaults;->outlinedButtonBorder(ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/BorderStroke;

    move-result-object v4

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_20

    :cond_2b
    const v4, 0x1adbaf31

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v4, v12

    :goto_20
    and-int v8, v8, v17

    goto :goto_21

    :cond_2c
    move-object/from16 v4, p7

    :goto_21
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_2d

    .line 359
    sget-object v13, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    sget-object v14, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v14}, Landroidx/compose/material3/ButtonDefaults;->getMinHeight-D9Ej5fM()F

    move-result v14

    invoke-virtual {v13, v14}, Landroidx/compose/material3/ButtonDefaults;->contentPaddingFor-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v13

    and-int/2addr v3, v8

    goto :goto_22

    :cond_2d
    move-object/from16 v13, p8

    move v3, v8

    :goto_22
    move v6, v10

    move v10, v3

    move v3, v6

    move-object v6, v7

    move-object v7, v4

    move-object v4, v6

    move-object v6, v5

    move-object v5, v9

    if-eqz v18, :cond_2e

    move-object v9, v12

    move-object v8, v13

    goto :goto_23

    :cond_2e
    move-object v8, v13

    move-object/from16 v9, p9

    .line 350
    :goto_23
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_2f

    const-string v12, "androidx.compose.material3.OutlinedToggleButton (ToggleButton.kt:362)"

    const v13, -0x63612394

    invoke-static {v13, v10, v1, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2f
    const v12, 0x7ffffffe

    and-int/2addr v12, v10

    and-int/lit8 v13, v1, 0xe

    const/4 v14, 0x0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p10

    .line 363
    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/ToggleButtonKt;->ToggleButton(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_30
    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v2

    goto :goto_24

    .line 350
    :cond_31
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v9, p8

    move-object v7, v5

    move-object v3, v8

    move v4, v10

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    .line 375
    :goto_24
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_32

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda5;

    move-object/from16 v2, p1

    move-object/from16 v11, p10

    move/from16 v13, p13

    move/from16 v14, p14

    move v12, v15

    move-object v15, v1

    move/from16 v1, p0

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda5;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;III)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_32
    return-void
.end method

.method private static final OutlinedToggleButton$lambda$0(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16

    or-int/lit8 v0, p11, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    invoke-static/range {p12 .. p12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v15, p13

    move-object/from16 v12, p14

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ToggleButtonKt;->OutlinedToggleButton(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final ToggleButton(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/ToggleButtonShapes;",
            "Landroidx/compose/material3/ToggleButtonColors;",
            "Landroidx/compose/material3/ButtonElevation;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v1, p0

    move-object/from16 v0, p10

    move/from16 v2, p12

    move/from16 v3, p14

    const v4, 0x2286076a

    move-object/from16 v5, p11

    .line 125
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v5, "C(ToggleButton)N(checked,onCheckedChange,modifier,enabled,shapes,colors,elevation,border,contentPadding,interactionSource,content)128@6943L14,129@6995L25,133@7265L66,138@7454L24,146@7726L489,135@7337L878:ToggleButton.kt#uh7d8r"

    invoke-static {v11, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, v2, 0x6

    if-nez v5, :cond_1

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v2

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    and-int/lit8 v8, v2, 0x30

    move-object/from16 v14, p1

    if-nez v8, :cond_3

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v5, v8

    :cond_3
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_4

    or-int/lit16 v5, v5, 0x180

    goto :goto_4

    :cond_4
    and-int/lit16 v9, v2, 0x180

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x100

    goto :goto_3

    :cond_5
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v5, v10

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v10, v3, 0x8

    if-eqz v10, :cond_7

    or-int/lit16 v5, v5, 0xc00

    goto :goto_7

    :cond_7
    and-int/lit16 v12, v2, 0xc00

    if-nez v12, :cond_9

    move/from16 v12, p3

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x800

    goto :goto_6

    :cond_8
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v5, v13

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v12, p3

    :goto_8
    and-int/lit16 v13, v2, 0x6000

    if-nez v13, :cond_c

    and-int/lit8 v13, v3, 0x10

    if-nez v13, :cond_a

    move-object/from16 v13, p4

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/16 v15, 0x4000

    goto :goto_9

    :cond_a
    move-object/from16 v13, p4

    :cond_b
    const/16 v15, 0x2000

    :goto_9
    or-int/2addr v5, v15

    goto :goto_a

    :cond_c
    move-object/from16 v13, p4

    :goto_a
    const/high16 v15, 0x30000

    and-int/2addr v15, v2

    if-nez v15, :cond_f

    and-int/lit8 v15, v3, 0x20

    if-nez v15, :cond_d

    move-object/from16 v15, p5

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x20000

    goto :goto_b

    :cond_d
    move-object/from16 v15, p5

    :cond_e
    const/high16 v16, 0x10000

    :goto_b
    or-int v5, v5, v16

    goto :goto_c

    :cond_f
    move-object/from16 v15, p5

    :goto_c
    const/high16 v16, 0x180000

    and-int v16, v2, v16

    if-nez v16, :cond_11

    and-int/lit8 v16, v3, 0x40

    move-object/from16 v7, p6

    if-nez v16, :cond_10

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x100000

    goto :goto_d

    :cond_10
    const/high16 v16, 0x80000

    :goto_d
    or-int v5, v5, v16

    goto :goto_e

    :cond_11
    move-object/from16 v7, p6

    :goto_e
    and-int/lit16 v4, v3, 0x80

    const/high16 v17, 0xc00000

    if-eqz v4, :cond_12

    or-int v5, v5, v17

    move-object/from16 v7, p7

    goto :goto_10

    :cond_12
    and-int v17, v2, v17

    move-object/from16 v7, p7

    if-nez v17, :cond_14

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x800000

    goto :goto_f

    :cond_13
    const/high16 v17, 0x400000

    :goto_f
    or-int v5, v5, v17

    :cond_14
    :goto_10
    const/high16 v17, 0x6000000

    and-int v17, v2, v17

    if-nez v17, :cond_17

    and-int/lit16 v6, v3, 0x100

    if-nez v6, :cond_15

    move-object/from16 v6, p8

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x4000000

    goto :goto_11

    :cond_15
    move-object/from16 v6, p8

    :cond_16
    const/high16 v18, 0x2000000

    :goto_11
    or-int v5, v5, v18

    goto :goto_12

    :cond_17
    move-object/from16 v6, p8

    :goto_12
    and-int/lit16 v6, v3, 0x200

    const/high16 v18, 0x30000000

    if-eqz v6, :cond_18

    or-int v5, v5, v18

    goto :goto_14

    :cond_18
    and-int v18, v2, v18

    if-nez v18, :cond_1a

    move/from16 v18, v6

    move-object/from16 v6, p9

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/high16 v19, 0x20000000

    goto :goto_13

    :cond_19
    const/high16 v19, 0x10000000

    :goto_13
    or-int v5, v5, v19

    goto :goto_15

    :cond_1a
    :goto_14
    move/from16 v18, v6

    move-object/from16 v6, p9

    :goto_15
    and-int/lit8 v19, p13, 0x6

    if-nez v19, :cond_1c

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    const/16 v19, 0x4

    goto :goto_16

    :cond_1b
    const/16 v19, 0x2

    :goto_16
    or-int v19, p13, v19

    move/from16 v6, v19

    goto :goto_17

    :cond_1c
    move/from16 v6, p13

    :goto_17
    const v19, 0x12492493

    and-int v2, v5, v19

    move/from16 v19, v4

    const v4, 0x12492492

    move/from16 p11, v6

    if-ne v2, v4, :cond_1e

    and-int/lit8 v2, p11, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1d

    goto :goto_18

    :cond_1d
    const/4 v2, 0x0

    goto :goto_19

    :cond_1e
    :goto_18
    const/4 v2, 0x1

    :goto_19
    and-int/lit8 v4, v5, 0x1

    invoke-interface {v11, v2, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v2, "117@6267L35,118@6358L20,119@6429L17"

    invoke-static {v11, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p12, 0x1

    const v17, -0x380001

    const v21, -0x70001

    const v22, -0xe000001

    const/16 v4, 0x36

    const v23, -0xe001

    const/4 v6, 0x6

    if-eqz v2, :cond_24

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_1a

    .line 113
    :cond_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, v3, 0x10

    if-eqz v2, :cond_20

    and-int v5, v5, v23

    :cond_20
    and-int/lit8 v2, v3, 0x20

    if-eqz v2, :cond_21

    and-int v5, v5, v21

    :cond_21
    and-int/lit8 v2, v3, 0x40

    if-eqz v2, :cond_22

    and-int v5, v5, v17

    :cond_22
    and-int/lit16 v2, v3, 0x100

    if-eqz v2, :cond_23

    and-int v5, v5, v22

    :cond_23
    move-object/from16 v18, p9

    move/from16 v4, p11

    move v10, v5

    move v2, v6

    move-object v8, v7

    move-object v5, v9

    move v3, v12

    move-object/from16 v23, v13

    move-object v6, v15

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    goto/16 :goto_22

    :cond_24
    :goto_1a
    if-eqz v8, :cond_25

    .line 116
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_1b

    :cond_25
    move-object v2, v9

    :goto_1b
    if-eqz v10, :cond_26

    const/16 v24, 0x1

    goto :goto_1c

    :cond_26
    move/from16 v24, v12

    :goto_1c
    and-int/lit8 v8, v3, 0x10

    if-eqz v8, :cond_27

    .line 118
    sget-object v8, Landroidx/compose/material3/ToggleButtonDefaults;->INSTANCE:Landroidx/compose/material3/ToggleButtonDefaults;

    sget-object v9, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v9}, Landroidx/compose/material3/ButtonDefaults;->getMinHeight-D9Ej5fM()F

    move-result v9

    invoke-virtual {v8, v9, v11, v4}, Landroidx/compose/material3/ToggleButtonDefaults;->shapesFor-8Feqmps(FLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ToggleButtonShapes;

    move-result-object v8

    and-int v5, v5, v23

    move-object/from16 v23, v8

    goto :goto_1d

    :cond_27
    move-object/from16 v23, v13

    :goto_1d
    and-int/lit8 v8, v3, 0x20

    if-eqz v8, :cond_28

    .line 119
    sget-object v8, Landroidx/compose/material3/ToggleButtonDefaults;->INSTANCE:Landroidx/compose/material3/ToggleButtonDefaults;

    invoke-virtual {v8, v11, v6}, Landroidx/compose/material3/ToggleButtonDefaults;->toggleButtonColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ToggleButtonColors;

    move-result-object v8

    and-int v5, v5, v21

    move-object v15, v8

    :cond_28
    move/from16 v21, v5

    and-int/lit8 v5, v3, 0x40

    if-eqz v5, :cond_29

    .line 120
    sget-object v5, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    const/high16 v12, 0x30000

    const/16 v13, 0x1f

    move v8, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v9, v8

    const/4 v8, 0x0

    move v10, v9

    const/4 v9, 0x0

    move/from16 v25, v10

    const/4 v10, 0x0

    move/from16 v4, p11

    move-object/from16 p2, v2

    move/from16 v2, v25

    invoke-virtual/range {v5 .. v13}, Landroidx/compose/material3/ButtonDefaults;->buttonElevation-R_JCAzs(FFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonElevation;

    move-result-object v5

    and-int v21, v21, v17

    goto :goto_1e

    :cond_29
    move/from16 v4, p11

    move-object/from16 p2, v2

    move v2, v6

    move-object/from16 v5, p6

    :goto_1e
    if-eqz v19, :cond_2a

    const/4 v6, 0x0

    goto :goto_1f

    :cond_2a
    move-object/from16 v6, p7

    :goto_1f
    and-int/lit16 v7, v3, 0x100

    if-eqz v7, :cond_2b

    .line 122
    sget-object v7, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    sget-object v8, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v8}, Landroidx/compose/material3/ButtonDefaults;->getMinHeight-D9Ej5fM()F

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/compose/material3/ButtonDefaults;->contentPaddingFor-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v7

    and-int v8, v21, v22

    move/from16 v21, v8

    goto :goto_20

    :cond_2b
    move-object/from16 v7, p8

    :goto_20
    if-eqz v18, :cond_2c

    move-object v8, v6

    move-object v9, v7

    move-object v6, v15

    move/from16 v10, v21

    move/from16 v3, v24

    const/16 v18, 0x0

    goto :goto_21

    :cond_2c
    move-object/from16 v18, p9

    move-object v8, v6

    move-object v9, v7

    move-object v6, v15

    move/from16 v10, v21

    move/from16 v3, v24

    :goto_21
    move-object v7, v5

    move-object/from16 v5, p2

    .line 113
    :goto_22
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_2d

    const-string v12, "androidx.compose.material3.ToggleButton (ToggleButton.kt:124)"

    const v13, 0x2286076a

    invoke-static {v13, v10, v4, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 127
    :cond_2d
    const-string v4, "CC(remember):ToggleButton.kt#9igjgp"

    if-nez v18, :cond_2f

    const v12, -0x74dca60f

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v12, "126@6766L39"

    invoke-static {v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v12, -0x66ddd3cf

    invoke-static {v11, v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 965
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .line 966
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_2e

    .line 127
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v12

    .line 968
    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 127
    :cond_2e
    check-cast v12, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_23

    :cond_2f
    const v12, -0x66ddd65a

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v12, v18

    .line 129
    :goto_23
    sget-object v13, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v13, v11, v2}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v2

    .line 130
    move-object v13, v12

    check-cast v13, Landroidx/compose/foundation/interaction/InteractionSource;

    const/4 v15, 0x0

    invoke-static {v13, v11, v15}, Landroidx/compose/foundation/interaction/PressInteractionKt;->collectIsPressedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v16

    .line 131
    invoke-virtual {v6, v3, v1}, Landroidx/compose/material3/ToggleButtonColors;->containerColor-WaAFU9c$material3(ZZ)J

    move-result-wide v21

    .line 132
    invoke-virtual {v6, v3, v1}, Landroidx/compose/material3/ToggleButtonColors;->contentColor-WaAFU9c$material3(ZZ)J

    move-result-wide v14

    if-nez v7, :cond_30

    const v13, -0x74d651d4

    .line 133
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v1, 0x0

    goto :goto_24

    :cond_30
    const v1, -0x66dd9f8b

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "132@7184L43"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    shr-int/lit8 v1, v10, 0x9

    and-int/lit8 v1, v1, 0xe

    move/from16 p2, v1

    shr-int/lit8 v1, v10, 0xc

    and-int/lit16 v1, v1, 0x380

    or-int v1, p2, v1

    invoke-virtual {v7, v3, v13, v11, v1}, Landroidx/compose/material3/ButtonElevation;->shadowElevation$material3(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_24
    if-eqz v1, :cond_31

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v1

    goto :goto_25

    :cond_31
    const/4 v1, 0x0

    int-to-float v13, v1

    .line 971
    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 134
    :goto_25
    invoke-static/range {v16 .. v16}, Landroidx/compose/material3/ToggleButtonKt;->ToggleButton$lambda$1(Landroidx/compose/runtime/State;)Z

    move-result v13

    shr-int/lit8 v16, v10, 0xc

    and-int/lit8 v16, v16, 0xe

    move/from16 p8, v1

    shl-int/lit8 v1, v10, 0x6

    move-object/from16 p5, v2

    and-int/lit16 v2, v1, 0x380

    or-int v2, v16, v2

    move/from16 p4, p0

    move/from16 p7, v2

    move-object/from16 p6, v11

    move/from16 p3, v13

    move-object/from16 p2, v23

    invoke-static/range {p2 .. p7}, Landroidx/compose/material3/ToggleButtonKt;->shapeByInteraction(Landroidx/compose/material3/ToggleButtonShapes;ZZLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    const v13, -0x66dd7dde

    .line 139
    invoke-static {v11, v13, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 972
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 973
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v4, v13, :cond_32

    .line 974
    new-instance v4, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda1;-><init>()V

    .line 975
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 139
    :cond_32
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move/from16 p2, v1

    move-object/from16 p3, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x0

    invoke-static {v5, v1, v4, v2, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 147
    new-instance v4, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda2;

    invoke-direct {v4, v14, v15, v9, v0}, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda2;-><init>(JLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;)V

    const v13, -0x63a65700

    const/16 v0, 0x36

    invoke-static {v13, v2, v4, v11, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lkotlin/jvm/functions/Function2;

    and-int/lit16 v0, v10, 0x1c7e

    const/high16 v2, 0x70000000

    and-int v2, p2, v2

    or-int/2addr v0, v2

    const/16 v16, 0x30

    const/16 v17, 0x80

    move-object v2, v9

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move/from16 v10, p8

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v26, v0

    move/from16 v0, p0

    move-object/from16 v27, v1

    move-object/from16 v1, p1

    move-wide/from16 v28, v14

    move/from16 v15, v26

    move-object v14, v11

    move-object v11, v8

    move-wide/from16 v7, v28

    move-object/from16 v26, v2

    move-object/from16 v2, v27

    move-wide/from16 v27, v21

    move-object/from16 v22, v26

    move-object/from16 v21, v5

    move-wide/from16 v5, v27

    .line 136
    invoke-static/range {v0 .. v17}, Landroidx/compose/material3/SurfaceKt;->Surface-d85dljk(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    move-object v6, v11

    move-object v11, v14

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_33
    move v4, v3

    move-object v8, v6

    move-object/from16 v10, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v3, v21

    move-object/from16 v9, v22

    move-object/from16 v5, v23

    goto :goto_26

    .line 113
    :cond_34
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object v3, v9

    move v4, v12

    move-object v5, v13

    move-object v6, v15

    move-object/from16 v9, p8

    .line 161
    :goto_26
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_35

    new-instance v0, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda3;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda3;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;III)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_35
    return-void
.end method

.method private static final ToggleButton$lambda$1(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 978
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final ToggleButton$lambda$2$0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
    .locals 1

    .line 139
    sget-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getCheckbox-o7Vup1c()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final ToggleButton$lambda$3(JLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9

    const-string v0, "C149@7845L10,150@7878L331,147@7736L473:ToggleButton.kt#uh7d8r"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p5, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p5, 0x1

    invoke-interface {p4, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.ToggleButton.<anonymous> (ToggleButton.kt:147)"

    const v3, -0x63a65700

    invoke-static {v3, p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 150
    :cond_1
    sget-object p5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p5, p4, v0}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v5

    .line 151
    new-instance p5, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda6;

    invoke-direct {p5, p2, p3}, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;)V

    const/16 p2, 0x36

    const p3, 0x728ef7d8

    invoke-static {p3, v2, p5, p4, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v8, 0x180

    move-wide v3, p0

    move-object v7, p4

    .line 148
    invoke-static/range {v3 .. v8}, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    move-object v7, p4

    .line 147
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 160
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final ToggleButton$lambda$3$0(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 5

    const-string v0, "C151@7892L307:ToggleButton.kt#uh7d8r"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.ToggleButton.<anonymous>.<anonymous> (ToggleButton.kt:151)"

    const v4, 0x728ef7d8

    invoke-static {v4, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 153
    :cond_1
    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p3, Landroidx/compose/ui/Modifier;

    sget-object v0, Landroidx/compose/material3/ToggleButtonDefaults;->INSTANCE:Landroidx/compose/material3/ToggleButtonDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/ToggleButtonDefaults;->getMinHeight-D9Ej5fM()F

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p3, v4, v0, v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p3

    .line 154
    invoke-static {p3, p0}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 155
    sget-object p3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {p3}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object p3

    check-cast p3, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 156
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    const v1, 0x2952b718

    .line 152
    const-string v3, "CC(Row)P(2,1,3)99@5124L58,100@5187L130:Row.kt#2w3rfo"

    .line 979
    invoke-static {p2, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v1, 0x36

    .line 980
    invoke-static {p3, v0, p2, v1}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object p3

    const v0, -0x4ee9b9da

    .line 981
    const-string v1, "CC(Layout)P(!1,2)79@3206L23,82@3357L359:Layout.kt#80mrfh"

    .line 985
    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 986
    invoke-static {p2, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 987
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 988
    invoke-static {p2, p0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 990
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    const v3, -0x2942ffcf

    .line 989
    const-string v4, "CC(ReusableComposeNode)P(1,2)355@14017L9:Composables.kt#9igjgp"

    .line 991
    invoke-static {p2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 992
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 993
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 994
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 995
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 997
    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 999
    :goto_1
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .line 1000
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, p3, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1001
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object p3

    invoke-static {v2, v1, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1002
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object p3

    .line 1004
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1005
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1006
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, p3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1009
    :cond_5
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object p3

    invoke-static {v2, p0, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const p0, -0x184d8b46

    .line 1011
    const-string p3, "C101@5232L9:Row.kt#2w3rfo"

    .line 982
    invoke-static {p2, p0, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object p0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/4 p3, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p0, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1012
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 991
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 985
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 979
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1015
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 151
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 159
    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final ToggleButton$lambda$4(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16

    or-int/lit8 v0, p11, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    invoke-static/range {p12 .. p12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v15, p13

    move-object/from16 v12, p14

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ToggleButtonKt;->ToggleButton(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final TonalToggleButton(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/ToggleButtonShapes;",
            "Landroidx/compose/material3/ToggleButtonColors;",
            "Landroidx/compose/material3/ButtonElevation;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v12, p12

    move/from16 v14, p14

    const v0, -0x577071d4

    move-object/from16 v1, p11

    .line 292
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    const-string v1, "C(TonalToggleButton)N(checked,onCheckedChange,modifier,enabled,shapes,colors,elevation,border,contentPadding,interactionSource,content)291@15440L366:ToggleButton.kt#uh7d8r"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v12, 0x6

    move/from16 v15, p0

    if-nez v1, :cond_1

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v12

    goto :goto_1

    :cond_1
    move v1, v12

    :goto_1
    and-int/lit8 v4, v12, 0x30

    move-object/from16 v10, p1

    if-nez v4, :cond_3

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_3
    and-int/lit8 v4, v14, 0x4

    if-eqz v4, :cond_4

    or-int/lit16 v1, v1, 0x180

    goto :goto_4

    :cond_4
    and-int/lit16 v5, v12, 0x180

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_3

    :cond_5
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v1, v6

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v5, p2

    :goto_5
    and-int/lit8 v6, v14, 0x8

    if-eqz v6, :cond_7

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_7
    and-int/lit16 v8, v12, 0xc00

    if-nez v8, :cond_9

    move/from16 v8, p3

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x800

    goto :goto_6

    :cond_8
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v1, v9

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v8, p3

    :goto_8
    and-int/lit16 v9, v12, 0x6000

    if-nez v9, :cond_c

    and-int/lit8 v9, v14, 0x10

    if-nez v9, :cond_a

    move-object/from16 v9, p4

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x4000

    goto :goto_9

    :cond_a
    move-object/from16 v9, p4

    :cond_b
    const/16 v11, 0x2000

    :goto_9
    or-int/2addr v1, v11

    goto :goto_a

    :cond_c
    move-object/from16 v9, p4

    :goto_a
    const/high16 v11, 0x30000

    and-int/2addr v11, v12

    if-nez v11, :cond_f

    and-int/lit8 v11, v14, 0x20

    if-nez v11, :cond_d

    move-object/from16 v11, p5

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/high16 v13, 0x20000

    goto :goto_b

    :cond_d
    move-object/from16 v11, p5

    :cond_e
    const/high16 v13, 0x10000

    :goto_b
    or-int/2addr v1, v13

    goto :goto_c

    :cond_f
    move-object/from16 v11, p5

    :goto_c
    const/high16 v13, 0x180000

    and-int/2addr v13, v12

    if-nez v13, :cond_12

    and-int/lit8 v13, v14, 0x40

    if-nez v13, :cond_10

    move-object/from16 v13, p6

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x100000

    goto :goto_d

    :cond_10
    move-object/from16 v13, p6

    :cond_11
    const/high16 v16, 0x80000

    :goto_d
    or-int v1, v1, v16

    goto :goto_e

    :cond_12
    move-object/from16 v13, p6

    :goto_e
    and-int/lit16 v0, v14, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_13

    or-int v1, v1, v17

    move-object/from16 v3, p7

    goto :goto_10

    :cond_13
    and-int v17, v12, v17

    move-object/from16 v3, p7

    if-nez v17, :cond_15

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/high16 v17, 0x800000

    goto :goto_f

    :cond_14
    const/high16 v17, 0x400000

    :goto_f
    or-int v1, v1, v17

    :cond_15
    :goto_10
    const/high16 v17, 0x6000000

    and-int v17, v12, v17

    if-nez v17, :cond_18

    and-int/lit16 v2, v14, 0x100

    if-nez v2, :cond_16

    move-object/from16 v2, p8

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x4000000

    goto :goto_11

    :cond_16
    move-object/from16 v2, p8

    :cond_17
    const/high16 v18, 0x2000000

    :goto_11
    or-int v1, v1, v18

    goto :goto_12

    :cond_18
    move-object/from16 v2, p8

    :goto_12
    and-int/lit16 v2, v14, 0x200

    const/high16 v18, 0x30000000

    if-eqz v2, :cond_19

    or-int v1, v1, v18

    goto :goto_14

    :cond_19
    and-int v18, v12, v18

    if-nez v18, :cond_1b

    move/from16 v18, v2

    move-object/from16 v2, p9

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/high16 v19, 0x20000000

    goto :goto_13

    :cond_1a
    const/high16 v19, 0x10000000

    :goto_13
    or-int v1, v1, v19

    goto :goto_15

    :cond_1b
    :goto_14
    move/from16 v18, v2

    move-object/from16 v2, p9

    :goto_15
    and-int/lit8 v19, p13, 0x6

    move-object/from16 v2, p10

    if-nez v19, :cond_1d

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/16 v19, 0x4

    goto :goto_16

    :cond_1c
    const/16 v19, 0x2

    :goto_16
    or-int v19, p13, v19

    move/from16 v2, v19

    goto :goto_17

    :cond_1d
    move/from16 v2, p13

    :goto_17
    const v19, 0x12492493

    move/from16 v20, v0

    and-int v0, v1, v19

    move/from16 p11, v1

    const v1, 0x12492492

    const/16 v19, 0x1

    if-ne v0, v1, :cond_1f

    and-int/lit8 v0, v2, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    goto :goto_18

    :cond_1e
    const/4 v0, 0x0

    goto :goto_19

    :cond_1f
    :goto_18
    move/from16 v0, v19

    :goto_19
    and-int/lit8 v1, p11, 0x1

    invoke-interface {v7, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v0, "283@15002L35,284@15093L25,285@15169L28"

    invoke-static {v7, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v12, 0x1

    const v17, -0xe000001

    const v21, -0x380001

    const v1, -0x70001

    const v22, -0xe001

    if-eqz v0, :cond_25

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_1b

    .line 279
    :cond_20
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_21

    and-int v0, p11, v22

    goto :goto_1a

    :cond_21
    move/from16 v0, p11

    :goto_1a
    and-int/lit8 v4, v14, 0x20

    if-eqz v4, :cond_22

    and-int/2addr v0, v1

    :cond_22
    and-int/lit8 v1, v14, 0x40

    if-eqz v1, :cond_23

    and-int v0, v0, v21

    :cond_23
    and-int/lit16 v1, v14, 0x100

    if-eqz v1, :cond_24

    and-int v0, v0, v17

    :cond_24
    move-object/from16 v23, p8

    move-object/from16 v24, p9

    move v4, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v5

    move/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v13

    goto/16 :goto_23

    :cond_25
    :goto_1b
    if-eqz v4, :cond_26

    .line 282
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_1c

    :cond_26
    move-object v0, v5

    :goto_1c
    if-eqz v6, :cond_27

    goto :goto_1d

    :cond_27
    move/from16 v19, v8

    :goto_1d
    and-int/lit8 v4, v14, 0x10

    if-eqz v4, :cond_28

    .line 284
    sget-object v4, Landroidx/compose/material3/ToggleButtonDefaults;->INSTANCE:Landroidx/compose/material3/ToggleButtonDefaults;

    sget-object v5, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/ButtonDefaults;->getMinHeight-D9Ej5fM()F

    move-result v5

    const/16 v6, 0x36

    invoke-virtual {v4, v5, v7, v6}, Landroidx/compose/material3/ToggleButtonDefaults;->shapesFor-8Feqmps(FLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ToggleButtonShapes;

    move-result-object v4

    and-int v5, p11, v22

    move-object/from16 v22, v4

    goto :goto_1e

    :cond_28
    move/from16 v5, p11

    move-object/from16 v22, v9

    :goto_1e
    and-int/lit8 v4, v14, 0x20

    if-eqz v4, :cond_29

    .line 285
    sget-object v4, Landroidx/compose/material3/ToggleButtonDefaults;->INSTANCE:Landroidx/compose/material3/ToggleButtonDefaults;

    const/4 v6, 0x6

    invoke-virtual {v4, v7, v6}, Landroidx/compose/material3/ToggleButtonDefaults;->tonalToggleButtonColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ToggleButtonColors;

    move-result-object v4

    and-int/2addr v5, v1

    move-object v11, v4

    :cond_29
    move/from16 v23, v5

    and-int/lit8 v1, v14, 0x40

    if-eqz v1, :cond_2a

    .line 286
    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    const/high16 v8, 0x30000

    const/16 v9, 0x1f

    move v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v4

    const/4 v4, 0x0

    move v6, v5

    const/4 v5, 0x0

    move v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material3/ButtonDefaults;->filledTonalButtonElevation-R_JCAzs(FFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonElevation;

    move-result-object v1

    and-int v23, v23, v21

    move v4, v13

    goto :goto_1f

    :cond_2a
    move v4, v2

    move-object v1, v13

    :goto_1f
    const/4 v2, 0x0

    if-eqz v20, :cond_2b

    move-object v3, v2

    goto :goto_20

    :cond_2b
    move-object/from16 v3, p7

    :goto_20
    and-int/lit16 v5, v14, 0x100

    if-eqz v5, :cond_2c

    .line 288
    sget-object v5, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    sget-object v6, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v6}, Landroidx/compose/material3/ButtonDefaults;->getMinHeight-D9Ej5fM()F

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/compose/material3/ButtonDefaults;->contentPaddingFor-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v5

    and-int v6, v23, v17

    goto :goto_21

    :cond_2c
    move-object/from16 v5, p8

    move/from16 v6, v23

    :goto_21
    if-eqz v18, :cond_2d

    move-object/from16 v17, v0

    move-object/from16 v21, v1

    move-object/from16 v24, v2

    goto :goto_22

    :cond_2d
    move-object/from16 v24, p9

    move-object/from16 v17, v0

    move-object/from16 v21, v1

    :goto_22
    move-object/from16 v23, v5

    move v0, v6

    move-object/from16 v20, v11

    move/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v3

    .line 279
    :goto_23
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "androidx.compose.material3.TonalToggleButton (ToggleButton.kt:291)"

    const v2, -0x577071d4

    invoke-static {v2, v0, v4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2e
    const v1, 0x7ffffffe

    and-int v27, v0, v1

    and-int/lit8 v28, v4, 0xe

    const/16 v29, 0x0

    move-object/from16 v25, p10

    move-object/from16 v26, v7

    move-object/from16 v16, v10

    .line 292
    invoke-static/range {v15 .. v29}, Landroidx/compose/material3/ToggleButtonKt;->ToggleButton(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2f
    move-object/from16 v26, v7

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto :goto_24

    .line 279
    :cond_30
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v10, p9

    move-object v3, v5

    move-object/from16 v26, v7

    move v4, v8

    move-object v5, v9

    move-object v6, v11

    move-object v7, v13

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 304
    :goto_24
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_31

    new-instance v0, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda4;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p10

    move/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/ToggleButtonKt$$ExternalSyntheticLambda4;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;III)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_31
    return-void
.end method

.method private static final TonalToggleButton$lambda$0(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16

    or-int/lit8 v0, p11, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    invoke-static/range {p12 .. p12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v15, p13

    move-object/from16 v12, p14

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ToggleButtonKt;->TonalToggleButton(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/ToggleButtonShapes;Landroidx/compose/material3/ToggleButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final getHasRoundedCornerShapes(Landroidx/compose/material3/ToggleButtonShapes;)Z
    .locals 1

    .line 938
    invoke-virtual {p0}, Landroidx/compose/material3/ToggleButtonShapes;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz v0, :cond_0

    .line 939
    invoke-virtual {p0}, Landroidx/compose/material3/ToggleButtonShapes;->getPressedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p0}, Landroidx/compose/material3/ToggleButtonShapes;->getCheckedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    instance-of p0, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic getHasRoundedCornerShapes$annotations(Landroidx/compose/material3/ToggleButtonShapes;)V
    .locals 0

    return-void
.end method

.method private static final shapeByInteraction(Landroidx/compose/material3/ToggleButtonShapes;ZZLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/ToggleButtonShapes;",
            "ZZ",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/ui/graphics/Shape;"
        }
    .end annotation

    const v0, -0x22dfeb60

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "C(shapeByInteraction)N(shapes,pressed,checked,animationSpec):ToggleButton.kt#uh7d8r"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.shapeByInteraction (ToggleButton.kt:948)"

    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 952
    invoke-virtual {p0}, Landroidx/compose/material3/ToggleButtonShapes;->getPressedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 954
    invoke-virtual {p0}, Landroidx/compose/material3/ToggleButtonShapes;->getCheckedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    goto :goto_0

    .line 956
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/material3/ToggleButtonShapes;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    .line 959
    :goto_0
    invoke-static {p0}, Landroidx/compose/material3/ToggleButtonKt;->getHasRoundedCornerShapes(Landroidx/compose/material3/ToggleButtonShapes;)Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, -0x67b9e2d6

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string p2, ""

    invoke-static {p4, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const p2, 0x156d9eb1

    .line 960
    invoke-interface {p4, p2, p0}, Landroidx/compose/runtime/Composer;->startMovableGroup(ILjava/lang/Object;)V

    const-string p0, "959@45869L65"

    invoke-static {p4, p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const-string p0, "null cannot be cast to non-null type androidx.compose.foundation.shape.RoundedCornerShape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/foundation/shape/RoundedCornerShape;

    shr-int/lit8 p0, p5, 0x6

    and-int/lit8 p0, p0, 0x70

    invoke-static {p1, p3, p4, p0}, Landroidx/compose/material3/internal/AnimatedShapeKt;->rememberAnimatedShape(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endMovableGroup()V

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p0

    :cond_4
    const p0, -0x6a6fee5e

    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p1
.end method
