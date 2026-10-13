.class public final Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;
.super Ljava/lang/Object;
.source "FloatingToolbar.kt"

# interfaces
.implements Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverride;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingToolbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingToolbar.kt\nandroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,2470:1\n1282#2,6:2471\n1282#2,6:2477\n85#3:2483\n85#3:2484\n117#3,2:2485\n*S KotlinDebug\n*F\n+ 1 FloatingToolbar.kt\nandroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride\n*L\n347#1:2471,6\n351#1:2477,6\n346#1:2483\n347#1:2484\n347#1:2485,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u0005*\u00020\u0006H\u0017\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008\u00b2\u0006\n\u0010\t\u001a\u00020\nX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u000b\u001a\u00020\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;",
        "Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverride;",
        "<init>",
        "()V",
        "HorizontalFloatingToolbarWithFab",
        "",
        "Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;",
        "(Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;Landroidx/compose/runtime/Composer;I)V",
        "material3",
        "touchExplorationServiceEnabled",
        "",
        "forceCollapse"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;


# direct methods
.method public static synthetic $r8$lambda$2hklrqSsMrVuDmOCxX5FrCHl4z8(Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;->HorizontalFloatingToolbarWithFab$lambda$5(Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YHEEUN1Yqn1oEKiDpVkEnbRXwb8()Landroidx/compose/runtime/MutableState;
    .locals 1

    invoke-static {}, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;->HorizontalFloatingToolbarWithFab$lambda$1$0()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$lNLSGCwAZUPuOwdlvfy-Ns45FeQ(Landroidx/compose/runtime/MutableState;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;->HorizontalFloatingToolbarWithFab$lambda$4$0(Landroidx/compose/runtime/MutableState;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;

    invoke-direct {v0}, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;-><init>()V

    sput-object v0, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;->INSTANCE:Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final HorizontalFloatingToolbarWithFab$lambda$0(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2483
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final HorizontalFloatingToolbarWithFab$lambda$1$0()Landroidx/compose/runtime/MutableState;
    .locals 3

    const/4 v0, 0x0

    .line 347
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    return-object v0
.end method

.method private static final HorizontalFloatingToolbarWithFab$lambda$2(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 347
    check-cast p0, Landroidx/compose/runtime/State;

    .line 2484
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final HorizontalFloatingToolbarWithFab$lambda$3(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 347
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2485
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final HorizontalFloatingToolbarWithFab$lambda$4$0(Landroidx/compose/runtime/MutableState;Z)Lkotlin/Unit;
    .locals 0

    .line 351
    invoke-static {p0, p1}, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;->HorizontalFloatingToolbarWithFab$lambda$3(Landroidx/compose/runtime/MutableState;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final HorizontalFloatingToolbarWithFab$lambda$5(Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;->HorizontalFloatingToolbarWithFab(Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public HorizontalFloatingToolbarWithFab(Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v0, p1

    move/from16 v1, p3

    const v2, -0x71e8b893

    move-object/from16 v3, p2

    .line 345
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    const-string v4, "C(HorizontalFloatingToolbarWithFab)345@18862L33,346@18942L25,346@18925L42,350@19172L34,347@18976L817:FloatingToolbar.kt#uh7d8r"

    invoke-static {v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v1, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int/2addr v4, v1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    and-int/lit8 v6, v4, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v6, v5, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    move v5, v8

    :goto_2
    and-int/lit8 v6, v4, 0x1

    invoke-interface {v3, v5, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, -0x1

    const-string v6, "androidx.compose.material3.DefaultHorizontalFloatingToolbarWithFabOverride.HorizontalFloatingToolbarWithFab (FloatingToolbar.kt:344)"

    invoke-static {v2, v4, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 346
    :cond_3
    invoke-static {v3, v8}, Landroidx/compose/material3/FloatingToolbarKt;->access$rememberTouchExplorationService(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x65633ae6

    .line 347
    const-string v6, "CC(remember):FloatingToolbar.kt#9igjgp"

    invoke-static {v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 2471
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 2472
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v5, v9, :cond_4

    .line 2473
    new-instance v5, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride$$ExternalSyntheticLambda0;-><init>()V

    .line 2474
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 347
    :cond_4
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v9, 0x30

    invoke-static {v4, v5, v3, v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 349
    invoke-virtual {v0}, Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 350
    invoke-static {v4}, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;->HorizontalFloatingToolbarWithFab$lambda$2(Landroidx/compose/runtime/MutableState;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v2}, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;->HorizontalFloatingToolbarWithFab$lambda$0(Landroidx/compose/runtime/State;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v0}, Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;->isExpanded()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    move v7, v8

    :cond_6
    :goto_3
    const v8, 0x656357af

    .line 351
    invoke-static {v3, v8, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 2477
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_7

    .line 2478
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v8, v6, :cond_8

    .line 351
    :cond_7
    new-instance v8, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride$$ExternalSyntheticLambda1;

    invoke-direct {v8, v4}, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 2480
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 351
    :cond_8
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 352
    invoke-virtual {v0}, Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;->getColors()Landroidx/compose/material3/FloatingToolbarColors;

    move-result-object v6

    .line 353
    sget-object v4, Landroidx/compose/material3/FloatingToolbarDefaults;->INSTANCE:Landroidx/compose/material3/FloatingToolbarDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/FloatingToolbarDefaults;->getToolbarToFabGap-D9Ej5fM$material3()F

    move-result v4

    move-object/from16 v17, v3

    move-object v3, v5

    move-object v5, v8

    .line 354
    invoke-virtual {v0}, Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v8

    .line 355
    invoke-static {v2}, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;->HorizontalFloatingToolbarWithFab$lambda$0(Landroidx/compose/runtime/State;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;->getScrollBehavior()Landroidx/compose/material3/FloatingToolbarScrollBehavior;

    move-result-object v2

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    move-object v9, v2

    .line 356
    invoke-virtual {v0}, Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    .line 357
    invoke-virtual {v0}, Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v11

    .line 358
    invoke-virtual {v0}, Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;->getFloatingActionButton()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    .line 359
    invoke-virtual {v0}, Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;->getFloatingActionButtonPosition-EdPuMIg()I

    move-result v13

    .line 360
    invoke-virtual {v0}, Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;->getExpandedShadowElevation-D9Ej5fM()F

    move-result v14

    .line 361
    invoke-virtual {v0}, Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;->getCollapsedShadowElevation-D9Ej5fM()F

    move-result v15

    .line 362
    invoke-virtual {v0}, Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;->getContent()Lkotlin/jvm/functions/Function3;

    move-result-object v16

    const/16 v18, 0x6000

    const/16 v19, 0x0

    move/from16 v20, v7

    move v7, v4

    move/from16 v4, v20

    .line 348
    invoke-static/range {v3 .. v19}, Landroidx/compose/material3/FloatingToolbarKt;->access$HorizontalFloatingToolbarWithFabLayout-z3vpotQ(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/FloatingToolbarColors;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/FloatingToolbarScrollBehavior;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function2;IFFLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_5

    :cond_a
    move-object/from16 v17, v3

    .line 345
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 364
    :cond_b
    :goto_5
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v3, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride$$ExternalSyntheticLambda2;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v0, v1}, Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/material3/DefaultHorizontalFloatingToolbarWithFabOverride;Landroidx/compose/material3/HorizontalFloatingToolbarWithFabOverrideScope;I)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_c
    move-object/from16 v4, p0

    return-void
.end method
