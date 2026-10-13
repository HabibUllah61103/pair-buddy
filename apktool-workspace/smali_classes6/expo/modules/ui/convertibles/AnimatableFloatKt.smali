.class public final Lexpo/modules/ui/convertibles/AnimatableFloatKt;
.super Ljava/lang/Object;
.source "AnimatableFloat.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatableFloat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatableFloat.kt\nexpo/modules/ui/convertibles/AnimatableFloatKt\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,27:1\n85#2:28\n*S KotlinDebug\n*F\n+ 1 AnimatableFloat.kt\nexpo/modules/ui/convertibles/AnimatableFloatKt\n*L\n24#1:28\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u001a3\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00032\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t\u00b2\u0006\n\u0010\n\u001a\u00020\u0001X\u008a\u0084\u0002"
    }
    d2 = {
        "resolveAnimatable",
        "",
        "map",
        "",
        "",
        "",
        "key",
        "default",
        "(Ljava/util/Map;Ljava/lang/String;FLandroidx/compose/runtime/Composer;I)F",
        "expo-ui_release",
        "animated"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final resolveAnimatable(Ljava/util/Map;Ljava/lang/String;FLandroidx/compose/runtime/Composer;I)F
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "F",
            "Landroidx/compose/runtime/Composer;",
            "I)F"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4fa9f3e0

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "C(resolveAnimatable)P(2,1)23@823L51:AnimatableFloat.kt#cvumyj"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "expo.modules.ui.convertibles.resolveAnimatable (AnimatableFloat.kt:10)"

    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 12
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 14
    instance-of v0, p0, Ljava/lang/Number;

    const-string v1, "$animated"

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move-object p2, p0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    :cond_1
    :goto_0
    move v3, p2

    goto :goto_1

    .line 15
    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    const-string p2, "targetValue"

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    goto :goto_0

    .line 20
    :goto_1
    instance-of p2, p0, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 21
    const-string p2, "animationSpec"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lexpo/modules/ui/convertibles/AnimationSpecParamsKt;->parseAnimationSpec(Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x7

    const/4 p2, 0x0

    invoke-static {p2, p2, v0, p0, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    .line 22
    invoke-static {p0, v2, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->snap$default(IILjava/lang/Object;)Landroidx/compose/animation/core/SnapSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    :cond_4
    :goto_2
    move-object v4, p0

    shl-int/lit8 p0, p4, 0x6

    and-int/lit16 v9, p0, 0x1c00

    const/16 v10, 0x14

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    move-object v8, p3

    .line 24
    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lexpo/modules/ui/convertibles/AnimatableFloatKt;->resolveAnimatable$lambda$0(Landroidx/compose/runtime/State;)F

    move-result p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return p0
.end method

.method private static final resolveAnimatable$lambda$0(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 28
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method
