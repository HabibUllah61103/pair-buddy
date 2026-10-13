.class public final Landroidx/compose/material3/ButtonGroupKt;
.super Ljava/lang/Object;
.source "ButtonGroup.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nButtonGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ButtonGroup.kt\nandroidx/compose/material3/ButtonGroupKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 7 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 8 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n*L\n1#1,1485:1\n1282#2,6:1486\n1282#2,6:1492\n1282#2,6:1528\n1282#2,6:1534\n1247#2,6:1545\n1282#2,6:1582\n1282#2,6:1588\n1282#2,6:1639\n79#3,6:1498\n86#3,3:1513\n89#3,2:1522\n93#3:1527\n165#3,5:1540\n79#3,6:1551\n86#3,3:1566\n89#3,2:1575\n93#3:1580\n171#3:1581\n79#3,6:1612\n86#3,3:1627\n89#3,2:1636\n93#3:1647\n347#4,9:1504\n356#4,3:1524\n347#4,9:1557\n356#4,3:1577\n347#4,9:1618\n356#4:1638\n357#4,2:1645\n4206#5,6:1516\n4206#5,6:1569\n4206#5,6:1630\n85#6:1594\n34#7,6:1595\n70#8:1601\n66#8,10:1602\n77#8:1648\n*S KotlinDebug\n*F\n+ 1 ButtonGroup.kt\nandroidx/compose/material3/ButtonGroupKt\n*L\n132#1:1486,6\n135#1:1492,6\n253#1:1528,6\n257#1:1534,6\n266#1:1545,6\n1339#1:1582,6\n1382#1:1588,6\n275#1:1639,6\n142#1:1498,6\n142#1:1513,3\n142#1:1522,2\n142#1:1527\n266#1:1540,5\n266#1:1551,6\n266#1:1566,3\n266#1:1575,2\n266#1:1580\n266#1:1581\n271#1:1612,6\n271#1:1627,3\n271#1:1636,2\n271#1:1647\n142#1:1504,9\n142#1:1524,3\n266#1:1557,9\n266#1:1577,3\n271#1:1618,9\n271#1:1638\n271#1:1645,2\n142#1:1516,6\n266#1:1569,6\n271#1:1630,6\n252#1:1594\n269#1:1595,6\n271#1:1601\n271#1:1602,10\n271#1:1648\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u001aI\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u001c\u0010\u0008\u001a\u0018\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\t\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0002\u0008\u000cH\u0007\u00a2\u0006\u0002\u0010\r\u001a]\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\t\u00a2\u0006\u0002\u0008\u000b2\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\t\u00a2\u0006\u0002\u0008\u000cH\u0007\u00a2\u0006\u0002\u0010\u0010\u001ag\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\t\u00a2\u0006\u0002\u0008\u000b2\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\t\u00a2\u0006\u0002\u0008\u000cH\u0007\u00a2\u0006\u0002\u0010\u0013\u001a\r\u0010\u001c\u001a\u00020\u001dH\u0003\u00a2\u0006\u0002\u0010\u001e\u001a\u001c\u0010\u001f\u001a\u00020\u00012\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!H\u0082@\u00a2\u0006\u0002\u0010#\u001a:\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%2\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\t\u00a2\u0006\u0002\u0008\u000c2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00050(H\u0003\u00a2\u0006\u0002\u0010)\"\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u0015*\u00020\u00168@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\"\u001a\u0010\u0019\u001a\u00020\u0005*\u0004\u0018\u00010\u00158@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\"\u000e\u0010*\u001a\u00020+X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006,\u00b2\u0006\n\u0010-\u001a\u00020&X\u008a\u0084\u0002"
    }
    d2 = {
        "ButtonGroup",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "expandedRatio",
        "",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/material3/ButtonGroupScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "overflowIndicator",
        "Landroidx/compose/material3/ButtonGroupMenuState;",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "buttonGroupParentData",
        "Landroidx/compose/material3/ButtonGroupParentData;",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "getButtonGroupParentData",
        "(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/material3/ButtonGroupParentData;",
        "weight",
        "getWeight",
        "(Landroidx/compose/material3/ButtonGroupParentData;)F",
        "rememberOverflowState",
        "Landroidx/compose/material3/ButtonGroupOverflowState;",
        "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonGroupOverflowState;",
        "waitUntil",
        "condition",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "rememberButtonGroupScopeState",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/material3/ButtonGroupScopeImpl;",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;",
        "MAX_WAIT_TIME_MILLIS",
        "",
        "material3",
        "scope"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final MAX_WAIT_TIME_MILLIS:J = 0x3e8L


# direct methods
.method public static synthetic $r8$lambda$3UXXT-ZJWHHyfebs70QplPY2ek4(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/ButtonGroupMenuState;Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup$lambda$9(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/ButtonGroupMenuState;Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4ns_02PIZEbRPgSDHmmOBCa655w(Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/material3/ButtonGroupMenuState;Landroidx/compose/runtime/State;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup$lambda$9$0$1(Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/material3/ButtonGroupMenuState;Landroidx/compose/runtime/State;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8XkBZAbeZr36qvJt6PDD0hBsA94(J)J
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/ButtonGroupKt;->waitUntil$lambda$1(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$BJrVA2H5gX46_n7paoM71O1m3Z0(Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup$lambda$3(Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BbhFOhPi70PUVTq59GlIClcV2aw(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup$lambda$4(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FYPdC5i2MxqJDFsAjvnqRQiu7Yw(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup$lambda$10(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gai2TLjB9dPnxhYFH6FP1uQ1E7g(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/State;)Landroidx/compose/material3/ButtonGroupScopeImpl;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/ButtonGroupKt;->rememberButtonGroupScopeState$lambda$0$0(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/State;)Landroidx/compose/material3/ButtonGroupScopeImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MOzIdi1-9RxZI6aVWftL5_phDR4(Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup$lambda$8(Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R2weFOpzupGtwslBDD9KCe0nfno(J)J
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/ButtonGroupKt;->waitUntil$lambda$0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$XBrfJsKuXAdZK2QXawXpykb5QoI(Landroidx/compose/material3/ButtonGroupMenuState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup$lambda$9$0$0$0(Landroidx/compose/material3/ButtonGroupMenuState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l1GpKkKYAzUSjqcCIWMX-OvrYmw()Landroidx/compose/material3/OverflowStateImpl;
    .locals 1

    invoke-static {}, Landroidx/compose/material3/ButtonGroupKt;->rememberOverflowState$lambda$0$0()Landroidx/compose/material3/OverflowStateImpl;

    move-result-object v0

    return-object v0
.end method

.method public static final ButtonGroup(Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/ButtonGroupScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Please use the overload with overflowIndicator parameter. This overload will create a composable that is cut off if there are too many items to fit on the screen neatly."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "ButtonGroup(overflowIndicator, modifier, expandedRatio, horizontalArrangement, content)"
            imports = {}
        .end subannotation
    .end annotation

    move-object/from16 v4, p3

    move/from16 v5, p5

    const v0, -0xdc6a926

    move-object/from16 v1, p4

    .line 129
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(ButtonGroup)N(modifier,expandedRatio,horizontalArrangement,content)130@6478L14,131@6509L55,134@6598L216,141@6820L89:ButtonGroup.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v5, 0x6

    move v6, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v5, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v6, v5

    :goto_1
    and-int/lit8 v7, p6, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v8, v5, 0x30

    if-nez v8, :cond_5

    move/from16 v8, p1

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v6, v9

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v8, p1

    :goto_4
    and-int/lit8 v9, p6, 0x4

    const/16 v10, 0x100

    if-eqz v9, :cond_6

    or-int/lit16 v6, v6, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v11, v5, 0x180

    if-nez v11, :cond_8

    move-object/from16 v11, p2

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v12, v10

    goto :goto_5

    :cond_7
    const/16 v12, 0x80

    :goto_5
    or-int/2addr v6, v12

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v11, p2

    :goto_7
    and-int/lit16 v12, v5, 0xc00

    if-nez v12, :cond_a

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x800

    goto :goto_8

    :cond_9
    const/16 v12, 0x400

    :goto_8
    or-int/2addr v6, v12

    :cond_a
    and-int/lit16 v12, v6, 0x493

    const/16 v13, 0x492

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v12, v13, :cond_b

    move v12, v15

    goto :goto_9

    :cond_b
    move v12, v14

    :goto_9
    and-int/lit8 v13, v6, 0x1

    invoke-interface {v1, v12, v13}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v12

    if-eqz v12, :cond_18

    if-eqz v2, :cond_c

    .line 125
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_a

    :cond_c
    move-object v2, v3

    :goto_a
    if-eqz v7, :cond_d

    .line 126
    sget-object v3, Landroidx/compose/material3/ButtonGroupDefaults;->INSTANCE:Landroidx/compose/material3/ButtonGroupDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/ButtonGroupDefaults;->getExpandedRatio()F

    move-result v3

    goto :goto_b

    :cond_d
    move v3, v8

    :goto_b
    if-eqz v9, :cond_e

    .line 127
    sget-object v7, Landroidx/compose/material3/ButtonGroupDefaults;->INSTANCE:Landroidx/compose/material3/ButtonGroupDefaults;

    invoke-virtual {v7}, Landroidx/compose/material3/ButtonGroupDefaults;->getHorizontalArrangement()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v7

    move-object v11, v7

    :cond_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, -0x1

    const-string v8, "androidx.compose.material3.ButtonGroup (ButtonGroup.kt:128)"

    invoke-static {v0, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 131
    :cond_f
    sget-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v7, 0x6

    invoke-static {v0, v1, v7}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v0

    const v8, 0x493f4111

    .line 132
    const-string v9, "CC(remember):ButtonGroup.kt#9igjgp"

    invoke-static {v1, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1486
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .line 1487
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v8, v12, :cond_10

    .line 132
    new-instance v8, Landroidx/compose/material3/ButtonGroupScopeImpl;

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    invoke-direct {v8, v0}, Landroidx/compose/material3/ButtonGroupScopeImpl;-><init>(Landroidx/compose/animation/core/AnimationSpec;)V

    .line 1489
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    :cond_10
    check-cast v8, Landroidx/compose/material3/ButtonGroupScopeImpl;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v0, 0x493f4cd2    # 783565.1f

    .line 135
    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit16 v0, v6, 0x380

    if-ne v0, v10, :cond_11

    goto :goto_c

    :cond_11
    move v15, v14

    .line 1492
    :goto_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v15, :cond_12

    .line 1493
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v0, v9, :cond_13

    .line 136
    :cond_12
    new-instance v0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;

    invoke-direct {v0, v11, v3}, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;-><init>(Landroidx/compose/foundation/layout/Arrangement$Horizontal;F)V

    .line 1495
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 135
    :cond_13
    check-cast v0, Landroidx/compose/material3/NonAdaptiveButtonGroupMeasurePolicy;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 142
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    const v9, -0x4ee9b9da

    const-string v10, "CC(Layout)P(!1,2)79@3206L23,82@3357L359:Layout.kt#80mrfh"

    .line 1498
    invoke-static {v1, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1499
    invoke-static {v1, v14}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v9

    .line 1500
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 1501
    invoke-static {v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 1503
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    const v14, -0x2942ffcf

    .line 1502
    const-string v15, "CC(ReusableComposeNode)P(1,2)355@14017L9:Composables.kt#9igjgp"

    .line 1504
    invoke-static {v1, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1505
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1506
    :cond_14
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1507
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1508
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    .line 1510
    :cond_15
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1512
    :goto_d
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .line 1513
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v13, v0, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1514
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v13, v10, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1515
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 1517
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-nez v10, :cond_16

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 1518
    :cond_16
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1519
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v9, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1522
    :cond_17
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v13, v12, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x3c0f415d

    .line 1524
    const-string v9, "C141@6897L9:ButtonGroup.kt#uh7d8r"

    .line 142
    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v0, v6, 0x6

    and-int/lit8 v0, v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v8, v1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1525
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1504
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1498
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1527
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_e

    .line 124
    :cond_18
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v3

    move v3, v8

    .line 143
    :cond_19
    :goto_e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_1a

    new-instance v0, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda1;

    move/from16 v6, p6

    move-object v1, v2

    move v2, v3

    move-object v3, v11

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function3;II)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method public static final ButtonGroup(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/ButtonGroupMenuState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/ButtonGroupScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    move/from16 v7, p7

    const v0, -0x375d3097

    move-object/from16 v2, p6

    .line 248
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v3, "C(ButtonGroup)N(overflowIndicator,modifier,expandedRatio,horizontalArrangement,verticalAlignment,content)249@13228L14,251@13290L86,252@13397L35,253@13457L23,256@13514L322,268@13905L55,269@13978L583,265@13842L809:ButtonGroup.kt#uh7d8r"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v7, 0x6

    if-nez v3, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v7

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    and-int/lit8 v5, p8, 0x2

    if-eqz v5, :cond_2

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_2
    and-int/lit8 v8, v7, 0x30

    if-nez v8, :cond_4

    move-object/from16 v8, p1

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x20

    goto :goto_2

    :cond_3
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v3, v9

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v8, p1

    :goto_4
    and-int/lit8 v9, p8, 0x4

    if-eqz v9, :cond_5

    or-int/lit16 v3, v3, 0x180

    goto :goto_6

    :cond_5
    and-int/lit16 v10, v7, 0x180

    if-nez v10, :cond_7

    move/from16 v10, p2

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x100

    goto :goto_5

    :cond_6
    const/16 v11, 0x80

    :goto_5
    or-int/2addr v3, v11

    goto :goto_7

    :cond_7
    :goto_6
    move/from16 v10, p2

    :goto_7
    and-int/lit8 v11, p8, 0x8

    if-eqz v11, :cond_8

    or-int/lit16 v3, v3, 0xc00

    goto :goto_9

    :cond_8
    and-int/lit16 v13, v7, 0xc00

    if-nez v13, :cond_a

    move-object/from16 v13, p3

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/16 v14, 0x800

    goto :goto_8

    :cond_9
    const/16 v14, 0x400

    :goto_8
    or-int/2addr v3, v14

    goto :goto_a

    :cond_a
    :goto_9
    move-object/from16 v13, p3

    :goto_a
    and-int/lit8 v14, p8, 0x10

    if-eqz v14, :cond_b

    or-int/lit16 v3, v3, 0x6000

    goto :goto_c

    :cond_b
    and-int/lit16 v15, v7, 0x6000

    if-nez v15, :cond_d

    move-object/from16 v15, p4

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x4000

    goto :goto_b

    :cond_c
    const/16 v16, 0x2000

    :goto_b
    or-int v3, v3, v16

    goto :goto_d

    :cond_d
    :goto_c
    move-object/from16 v15, p4

    :goto_d
    const/high16 v16, 0x30000

    and-int v16, v7, v16

    if-nez v16, :cond_f

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x20000

    goto :goto_e

    :cond_e
    const/high16 v16, 0x10000

    :goto_e
    or-int v3, v3, v16

    :cond_f
    const v16, 0x12493

    and-int v4, v3, v16

    const v12, 0x12492

    const/4 v0, 0x0

    if-eq v4, v12, :cond_10

    const/4 v4, 0x1

    goto :goto_f

    :cond_10
    move v4, v0

    :goto_f
    and-int/lit8 v12, v3, 0x1

    invoke-interface {v2, v4, v12}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_20

    if-eqz v5, :cond_11

    .line 243
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    move-object v8, v4

    :cond_11
    if-eqz v9, :cond_12

    .line 244
    sget-object v4, Landroidx/compose/material3/ButtonGroupDefaults;->INSTANCE:Landroidx/compose/material3/ButtonGroupDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/ButtonGroupDefaults;->getExpandedRatio()F

    move-result v4

    move v10, v4

    :cond_12
    if-eqz v11, :cond_13

    .line 245
    sget-object v4, Landroidx/compose/material3/ButtonGroupDefaults;->INSTANCE:Landroidx/compose/material3/ButtonGroupDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/ButtonGroupDefaults;->getHorizontalArrangement()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v4

    move-object v13, v4

    :cond_13
    if-eqz v14, :cond_14

    .line 246
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v4

    move-object v15, v4

    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, -0x1

    const-string v5, "androidx.compose.material3.ButtonGroup (ButtonGroup.kt:247)"

    const v9, -0x375d3097

    invoke-static {v9, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 250
    :cond_15
    sget-object v4, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v5, 0x6

    invoke-static {v4, v2, v5}, Landroidx/compose/material3/MotionSchemeKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    .line 252
    check-cast v4, Landroidx/compose/animation/core/AnimationSpec;

    shr-int/lit8 v5, v3, 0xf

    and-int/lit8 v5, v5, 0xe

    invoke-static {v6, v4, v2, v5}, Landroidx/compose/material3/ButtonGroupKt;->rememberButtonGroupScopeState(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    const v5, 0x2b2cf14c

    .line 253
    const-string v9, "CC(remember):ButtonGroup.kt#9igjgp"

    invoke-static {v2, v5, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1528
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 1529
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v5, v11, :cond_16

    .line 253
    new-instance v5, Landroidx/compose/material3/ButtonGroupMenuState;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v5, v0, v12, v11}, Landroidx/compose/material3/ButtonGroupMenuState;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1531
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 253
    :cond_16
    check-cast v5, Landroidx/compose/material3/ButtonGroupMenuState;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 254
    invoke-static {v2, v0}, Landroidx/compose/material3/ButtonGroupKt;->rememberOverflowState(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonGroupOverflowState;

    move-result-object v11

    const v12, 0x2b2d010b

    .line 257
    invoke-static {v2, v12, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit16 v3, v3, 0x1c00

    const/16 v9, 0x800

    if-ne v3, v9, :cond_17

    const/4 v12, 0x1

    goto :goto_10

    :cond_17
    move v12, v0

    :goto_10
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v12

    .line 1534
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_18

    .line 1535
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v9, v3, :cond_19

    .line 258
    :cond_18
    new-instance v9, Landroidx/compose/material3/ButtonGroupMeasurePolicy;

    invoke-direct {v9, v11, v13, v15, v10}, Landroidx/compose/material3/ButtonGroupMeasurePolicy;-><init>(Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;F)V

    .line 1537
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 257
    :cond_19
    check-cast v9, Landroidx/compose/material3/ButtonGroupMeasurePolicy;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v3, 0x2

    .line 269
    new-array v3, v3, [Lkotlin/jvm/functions/Function2;

    new-instance v12, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda0;

    invoke-direct {v12, v4}, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/State;)V

    const v14, 0x65551529

    move/from16 p6, v0

    const/16 v0, 0x36

    move-object/from16 v16, v3

    const/4 v3, 0x1

    invoke-static {v14, v3, v12, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v12

    aput-object v12, v16, p6

    .line 270
    new-instance v12, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda2;

    invoke-direct {v12, v1, v5, v11, v4}, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/ButtonGroupMenuState;Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/runtime/State;)V

    const v4, 0x19b6b6aa

    invoke-static {v4, v3, v12, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    aput-object v0, v16, v3

    .line 268
    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 285
    check-cast v9, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    const v3, 0x5365e06c

    .line 266
    const-string v4, "CC(Layout)P(!1,2)168@6883L62,165@6769L182:Layout.kt#80mrfh"

    .line 1540
    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1542
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->combineAsVirtualLayouts(Ljava/util/List;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const v3, -0x1154b8ad

    .line 1543
    const-string v4, "CC(remember):Layout.kt#9igjgp"

    .line 1544
    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 1545
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1a

    .line 1546
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_1b

    .line 1544
    :cond_1a
    invoke-static {v9}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt;->createMeasurePolicy(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .line 1548
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1544
    :cond_1b
    check-cast v4, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v3, -0x4ee9b9da

    .line 1541
    const-string v5, "CC(Layout)P(!1,2)79@3206L23,82@3357L359:Layout.kt#80mrfh"

    .line 1551
    invoke-static {v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    move/from16 v3, p6

    .line 1552
    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v5

    .line 1553
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 1554
    invoke-static {v2, v8}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 1556
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v11

    const v12, -0x2942ffcf

    .line 1555
    const-string v14, "CC(ReusableComposeNode)P(1,2)355@14017L9:Composables.kt#9igjgp"

    .line 1557
    invoke-static {v2, v12, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1558
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v12

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-nez v12, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1559
    :cond_1c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1560
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 1561
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    .line 1563
    :cond_1d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1565
    :goto_11
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .line 1566
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v11, v4, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1567
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1568
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .line 1570
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1571
    :cond_1e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1572
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v4, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1575
    :cond_1f
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v11, v9, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v3, 0x0

    .line 1577
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1557
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1551
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1540
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1581
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_12

    .line 241
    :cond_20
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_21
    :goto_12
    move v3, v10

    move-object v4, v13

    move-object v5, v15

    .line 288
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_22

    new-instance v0, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda3;

    move-object v2, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;II)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_22
    return-void
.end method

.method public static final synthetic ButtonGroup(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Use overload with `verticalAlignment` parameter"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "ButtonGroup(overflowIndicator, modifier, expandedRatio, horizontalArrangement, verticalAlignment, content)"
            imports = {}
        .end subannotation
    .end annotation

    move/from16 v6, p6

    const v0, -0x71c32319

    move-object/from16 v1, p5

    .line 194
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    const-string v1, "C(ButtonGroup)N(overflowIndicator,modifier,expandedRatio,horizontalArrangement,content)194@9946L258:ButtonGroup.kt#uh7d8r"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v6, 0x6

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v6

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move v2, v6

    :goto_1
    and-int/lit8 v3, p7, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_2
    and-int/lit8 v4, v6, 0x30

    if-nez v4, :cond_4

    move-object/from16 v4, p1

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v4, p1

    :goto_4
    and-int/lit8 v5, p7, 0x4

    if-eqz v5, :cond_5

    or-int/lit16 v2, v2, 0x180

    goto :goto_6

    :cond_5
    and-int/lit16 v7, v6, 0x180

    if-nez v7, :cond_7

    move/from16 v7, p2

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x100

    goto :goto_5

    :cond_6
    const/16 v8, 0x80

    :goto_5
    or-int/2addr v2, v8

    goto :goto_7

    :cond_7
    :goto_6
    move/from16 v7, p2

    :goto_7
    and-int/lit8 v8, p7, 0x8

    if-eqz v8, :cond_8

    or-int/lit16 v2, v2, 0xc00

    goto :goto_9

    :cond_8
    and-int/lit16 v9, v6, 0xc00

    if-nez v9, :cond_a

    move-object/from16 v9, p3

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x800

    goto :goto_8

    :cond_9
    const/16 v10, 0x400

    :goto_8
    or-int/2addr v2, v10

    goto :goto_a

    :cond_a
    :goto_9
    move-object/from16 v9, p3

    :goto_a
    and-int/lit16 v10, v6, 0x6000

    move-object/from16 v12, p4

    if-nez v10, :cond_c

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x4000

    goto :goto_b

    :cond_b
    const/16 v10, 0x2000

    :goto_b
    or-int/2addr v2, v10

    :cond_c
    and-int/lit16 v10, v2, 0x2493

    const/16 v11, 0x2492

    if-eq v10, v11, :cond_d

    const/4 v10, 0x1

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    :goto_c
    and-int/lit8 v11, v2, 0x1

    invoke-interface {v13, v10, v11}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v10

    if-eqz v10, :cond_13

    if-eqz v3, :cond_e

    .line 190
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    move/from16 v16, v8

    move-object v8, v3

    move/from16 v3, v16

    goto :goto_d

    :cond_e
    move v3, v8

    move-object v8, v4

    :goto_d
    if-eqz v5, :cond_f

    .line 191
    sget-object v4, Landroidx/compose/material3/ButtonGroupDefaults;->INSTANCE:Landroidx/compose/material3/ButtonGroupDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/ButtonGroupDefaults;->getExpandedRatio()F

    move-result v4

    move v9, v4

    goto :goto_e

    :cond_f
    move v9, v7

    :goto_e
    if-eqz v3, :cond_10

    .line 192
    sget-object v3, Landroidx/compose/material3/ButtonGroupDefaults;->INSTANCE:Landroidx/compose/material3/ButtonGroupDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/ButtonGroupDefaults;->getHorizontalArrangement()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v3

    move-object v10, v3

    goto :goto_f

    :cond_10
    move-object/from16 v10, p3

    :goto_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, -0x1

    const-string v4, "androidx.compose.material3.ButtonGroup (ButtonGroup.kt:193)"

    invoke-static {v0, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 200
    :cond_11
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v11

    and-int/lit8 v0, v2, 0xe

    or-int/lit16 v0, v0, 0x6000

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    shl-int/lit8 v2, v2, 0x3

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int v14, v0, v2

    const/4 v15, 0x0

    move-object v7, v1

    .line 195
    invoke-static/range {v7 .. v15}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_12
    move-object v2, v8

    move v3, v9

    move-object v4, v10

    goto :goto_10

    .line 188
    :cond_13
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v4

    move v3, v7

    move-object/from16 v4, p3

    .line 203
    :goto_10
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_14

    new-instance v0, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda8;

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;II)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_14
    return-void
.end method

.method private static final ButtonGroup$lambda$10(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 10

    or-int/lit8 v0, p6, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v9, p7

    move-object/from16 v7, p8

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final ButtonGroup$lambda$3(Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 7

    or-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    move-object v4, p6

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup(Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final ButtonGroup$lambda$4(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 8

    or-int/lit8 p5, p5, 0x1

    invoke-static {p5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p6

    move-object v5, p7

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final ButtonGroup$lambda$5(Landroidx/compose/runtime/State;)Landroidx/compose/material3/ButtonGroupScopeImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material3/ButtonGroupScopeImpl;",
            ">;)",
            "Landroidx/compose/material3/ButtonGroupScopeImpl;"
        }
    .end annotation

    .line 1594
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/ButtonGroupScopeImpl;

    return-object p0
.end method

.method private static final ButtonGroup$lambda$8(Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 4

    const-string v0, "C*268@13936L20:ButtonGroup.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.ButtonGroup.<anonymous> (ButtonGroup.kt:268)"

    const v3, 0x65551529

    invoke-static {v3, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 269
    :cond_1
    invoke-static {p0}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup$lambda$5(Landroidx/compose/runtime/State;)Landroidx/compose/material3/ButtonGroupScopeImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/material3/ButtonGroupScopeImpl;->getItems()Ljava/util/List;

    move-result-object p0

    .line 1596
    move-object p2, p0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move v0, v2

    :goto_1
    if-ge v0, p2, :cond_2

    .line 1597
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1598
    check-cast v1, Landroidx/compose/material3/ButtonGroupItem;

    .line 269
    invoke-interface {v1, p1, v2}, Landroidx/compose/material3/ButtonGroupItem;->ButtonGroupContent(Landroidx/compose/runtime/Composer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1600
    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 269
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final ButtonGroup$lambda$9(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/ButtonGroupMenuState;Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v14, p4

    move/from16 v1, p5

    const-string v2, "C270@14000L543:ButtonGroup.kt#uh7d8r"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    and-int/lit8 v3, v1, 0x1

    invoke-interface {v14, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.ButtonGroup.<anonymous> (ButtonGroup.kt:270)"

    const v6, 0x19b6b6aa

    invoke-static {v6, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    const v1, 0x2bb5b5d7

    .line 271
    const-string v2, "CC(Box)P(2,1,3)71@3423L130:Box.kt#2w3rfo"

    .line 1601
    invoke-static {v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1602
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 1603
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v2

    .line 1607
    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    const v3, -0x4ee9b9da

    .line 1608
    const-string v6, "CC(Layout)P(!1,2)79@3206L23,82@3357L359:Layout.kt#80mrfh"

    .line 1612
    invoke-static {v14, v3, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1613
    invoke-static {v14, v5}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v3

    .line 1614
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 1615
    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1617
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    const v8, -0x2942ffcf

    .line 1616
    const-string v9, "CC(ReusableComposeNode)P(1,2)355@14017L9:Composables.kt#9igjgp"

    .line 1618
    invoke-static {v14, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1619
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    if-nez v8, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1620
    :cond_2
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1621
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1622
    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 1624
    :cond_3
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1626
    :goto_1
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .line 1627
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v7, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1628
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v7, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1629
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .line 1631
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1632
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1633
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1636
    :cond_5
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v7, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v1, -0x7ff482d7

    .line 1638
    const-string v2, "C72@3468L9:Box.kt#2w3rfo"

    .line 1609
    invoke-static {v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    const v1, 0x26bb3c08

    const-string v2, "C271@14030L28,274@14204L23,275@14255L266,272@14083L438:ButtonGroup.kt#uh7d8r"

    .line 272
    invoke-static {v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-interface {v2, v0, v14, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {v0}, Landroidx/compose/material3/ButtonGroupMenuState;->isShowing()Z

    move-result v1

    const v2, 0x6c9ac347

    const-string v3, "CC(remember):ButtonGroup.kt#9igjgp"

    .line 275
    invoke-static {v14, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .line 1639
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_6

    .line 1640
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_7

    .line 275
    :cond_6
    new-instance v3, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0}, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/material3/ButtonGroupMenuState;)V

    .line 1642
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 275
    :cond_7
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 276
    new-instance v2, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda10;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct {v2, v5, v0, v6}, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda10;-><init>(Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/material3/ButtonGroupMenuState;Landroidx/compose/runtime/State;)V

    const/16 v0, 0x36

    const v5, 0x62be2155    # 1.7536416E21f

    invoke-static {v5, v4, v2, v14, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lkotlin/jvm/functions/Function3;

    const/16 v16, 0x30

    const/16 v17, 0x7fc

    const/4 v2, 0x0

    move v0, v1

    move-object v1, v3

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 273
    invoke-static/range {v0 .. v17}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenu-IlH_yew(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    .line 272
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1609
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1645
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1618
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1612
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1601
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1648
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 270
    :cond_8
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 283
    :cond_9
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final ButtonGroup$lambda$9$0$0$0(Landroidx/compose/material3/ButtonGroupMenuState;)Lkotlin/Unit;
    .locals 0

    .line 275
    invoke-virtual {p0}, Landroidx/compose/material3/ButtonGroupMenuState;->dismiss()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final ButtonGroup$lambda$9$0$1(Landroidx/compose/material3/ButtonGroupOverflowState;Landroidx/compose/material3/ButtonGroupMenuState;Landroidx/compose/runtime/State;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 3

    const-string p3, "C*278@14443L22:ButtonGroup.kt#uh7d8r"

    invoke-static {p4, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p3, p5, 0x11

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    and-int/lit8 v0, p5, 0x1

    invoke-interface {p4, p3, v0}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, -0x1

    const-string v0, "androidx.compose.material3.ButtonGroup.<anonymous>.<anonymous>.<anonymous> (ButtonGroup.kt:276)"

    const v2, 0x62be2155    # 1.7536416E21f

    invoke-static {v2, p5, p3, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 278
    :cond_1
    invoke-interface {p0}, Landroidx/compose/material3/ButtonGroupOverflowState;->getVisibleItemCount()I

    move-result p3

    invoke-interface {p0}, Landroidx/compose/material3/ButtonGroupOverflowState;->getTotalItemCount()I

    move-result p0

    :goto_1
    if-ge p3, p0, :cond_2

    .line 279
    invoke-static {p2}, Landroidx/compose/material3/ButtonGroupKt;->ButtonGroup$lambda$5(Landroidx/compose/runtime/State;)Landroidx/compose/material3/ButtonGroupScopeImpl;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/compose/material3/ButtonGroupScopeImpl;->getItems()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/material3/ButtonGroupItem;

    invoke-interface {p5, p1, p4, v1}, Landroidx/compose/material3/ButtonGroupItem;->MenuContent(Landroidx/compose/material3/ButtonGroupMenuState;Landroidx/compose/runtime/Composer;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 278
    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 276
    :cond_3
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 281
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$waitUntil(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/ButtonGroupKt;->waitUntil(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getButtonGroupParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/material3/ButtonGroupParentData;
    .locals 1

    .line 1014
    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/material3/ButtonGroupParentData;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/material3/ButtonGroupParentData;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getWeight(Landroidx/compose/material3/ButtonGroupParentData;)F
    .locals 0

    if-eqz p0, :cond_0

    .line 1017
    invoke-virtual {p0}, Landroidx/compose/material3/ButtonGroupParentData;->getWeight()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final rememberButtonGroupScopeState(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/ButtonGroupScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material3/ButtonGroupScopeImpl;",
            ">;"
        }
    .end annotation

    const-string v0, "C(rememberButtonGroupScopeState)N(content,animationSpec)1380@58254L29,1381@58295L142:ButtonGroup.kt#uh7d8r"

    const v1, 0x5d32f6c

    .line 1380
    invoke-static {p2, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.rememberButtonGroupScopeState (ButtonGroup.kt:1379)"

    invoke-static {v1, p3, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    and-int/lit8 p3, p3, 0xe

    .line 1381
    invoke-static {p0, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    const p3, -0x223ae006

    const-string v0, "CC(remember):ButtonGroup.kt#9igjgp"

    .line 1382
    invoke-static {p2, p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1588
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    .line 1589
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    .line 1383
    new-instance p3, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda7;

    invoke-direct {p3, p1, p0}, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/State;)V

    invoke-static {p3}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p3

    .line 1591
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1382
    :cond_1
    check-cast p3, Landroidx/compose/runtime/State;

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 1380
    :cond_2
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object p3
.end method

.method private static final rememberButtonGroupScopeState$lambda$0$0(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/State;)Landroidx/compose/material3/ButtonGroupScopeImpl;
    .locals 1

    .line 1384
    new-instance v0, Landroidx/compose/material3/ButtonGroupScopeImpl;

    invoke-direct {v0, p0}, Landroidx/compose/material3/ButtonGroupScopeImpl;-><init>(Landroidx/compose/animation/core/AnimationSpec;)V

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static final rememberOverflowState(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonGroupOverflowState;
    .locals 3

    const-string v0, "C(rememberOverflowState)1338@56913L23,1338@56863L73:ButtonGroup.kt#uh7d8r"

    const v1, 0x5da9d050

    .line 1338
    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.rememberOverflowState (ButtonGroup.kt:1337)"

    invoke-static {v1, p1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 1339
    sget-object v0, Landroidx/compose/material3/OverflowStateImpl;->Companion:Landroidx/compose/material3/OverflowStateImpl$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/OverflowStateImpl$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    const v1, -0x6588f4f9

    const-string v2, "CC(remember):ButtonGroup.kt#9igjgp"

    invoke-static {p0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1582
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 1583
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1584
    new-instance v1, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda6;-><init>()V

    .line 1585
    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1339
    :cond_1
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v2, 0x180

    invoke-static {p1, v0, v1, p0, v2}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/OverflowStateImpl;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 1338
    :cond_2
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast p1, Landroidx/compose/material3/ButtonGroupOverflowState;

    return-object p1
.end method

.method private static final rememberOverflowState$lambda$0$0()Landroidx/compose/material3/OverflowStateImpl;
    .locals 1

    .line 1339
    new-instance v0, Landroidx/compose/material3/OverflowStateImpl;

    invoke-direct {v0}, Landroidx/compose/material3/OverflowStateImpl;-><init>()V

    return-object v0
.end method

.method private static final waitUntil(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;

    iget v1, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;

    invoke-direct {v0, p1}, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1342
    iget v2, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v4, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->J$0:J

    iget-object p0, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda4;-><init>()V

    .line 1343
    iput-object p0, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->label:I

    invoke-static {p1, v0}, Landroidx/compose/runtime/MonotonicFrameClockKt;->withFrameMillis(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 1344
    :cond_5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Landroidx/compose/material3/ButtonGroupKt$$ExternalSyntheticLambda5;-><init>()V

    .line 1345
    iput-object p0, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->L$0:Ljava/lang/Object;

    iput-wide v4, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->J$0:J

    iput v3, v0, Landroidx/compose/material3/ButtonGroupKt$waitUntil$1;->label:I

    invoke-static {p1, v0}, Landroidx/compose/runtime/MonotonicFrameClockKt;->withFrameMillis(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x3e8

    cmp-long p1, v6, v8

    if-lez p1, :cond_5

    .line 1346
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1348
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final waitUntil$lambda$0(J)J
    .locals 0

    return-wide p0
.end method

.method private static final waitUntil$lambda$1(J)J
    .locals 0

    return-wide p0
.end method
