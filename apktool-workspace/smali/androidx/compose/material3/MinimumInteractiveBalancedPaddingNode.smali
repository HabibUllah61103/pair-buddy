.class final Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "FloatingToolbar.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingToolbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingToolbar.kt\nandroidx/compose/material3/MinimumInteractiveBalancedPaddingNode\n+ 2 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,2470:1\n26#2:2471\n26#2:2472\n*S KotlinDebug\n*F\n+ 1 FloatingToolbar.kt\nandroidx/compose/material3/MinimumInteractiveBalancedPaddingNode\n*L\n2135#1:2471\n2142#1:2472\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\u0018\u001a\u00020\u0019*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0006\u0010!\u001a\u00020\"R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "hasVisibleLeadingContent",
        "",
        "hasVisibleTrailingContent",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "<init>",
        "(ZZLandroidx/compose/animation/core/AnimationSpec;)V",
        "getHasVisibleLeadingContent",
        "()Z",
        "setHasVisibleLeadingContent",
        "(Z)V",
        "getHasVisibleTrailingContent",
        "setHasVisibleTrailingContent",
        "getAnimationSpec",
        "()Landroidx/compose/animation/core/AnimationSpec;",
        "setAnimationSpec",
        "(Landroidx/compose/animation/core/AnimationSpec;)V",
        "paddingAnimation",
        "Landroidx/compose/animation/core/Animatable;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "updateAnimation",
        "",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private hasVisibleLeadingContent:Z

.field private hasVisibleTrailingContent:Z

.field private paddingAnimation:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9ryZEOPxa47rXXD-cFIp0fPu4U4(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->measure_3p2s80s$lambda$2(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(ZZLandroidx/compose/animation/core/AnimationSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 2097
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 2098
    iput-boolean p1, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->hasVisibleLeadingContent:Z

    .line 2099
    iput-boolean p2, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->hasVisibleTrailingContent:Z

    .line 2100
    iput-object p3, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/4 p3, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p3

    :goto_1
    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 2104
    invoke-static {p1, p3, p2, v0}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->paddingAnimation:Landroidx/compose/animation/core/Animatable;

    return-void
.end method

.method public static final synthetic access$getPaddingAnimation$p(Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 2097
    iget-object p0, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->paddingAnimation:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$2(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 7

    .line 2146
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 v2, p1, 0x2

    .line 2147
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 v3, p2, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p3

    .line 2145
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 2149
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2100
    iget-object v0, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public final getHasVisibleLeadingContent()Z
    .locals 1

    .line 2098
    iget-boolean v0, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->hasVisibleLeadingContent:Z

    return v0
.end method

.method public final getHasVisibleTrailingContent()Z
    .locals 1

    .line 2099
    iget-boolean v0, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->hasVisibleTrailingContent:Z

    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11

    .line 2110
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    .line 2116
    iget-boolean p3, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->hasVisibleLeadingContent:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->hasVisibleTrailingContent:Z

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, p4

    move v1, v0

    goto :goto_2

    .line 2117
    :cond_1
    :goto_0
    iget-object p3, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->paddingAnimation:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p3}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    .line 2119
    invoke-static {}, Landroidx/compose/material3/InteractiveComponentSizeKt;->getMinimumInteractiveTopAlignmentLine()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {p2, v0}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    int-to-float v0, v0

    mul-float/2addr v0, p3

    goto :goto_1

    :cond_2
    move v0, p4

    .line 2123
    :goto_1
    invoke-static {}, Landroidx/compose/material3/InteractiveComponentSizeKt;->getMinimumInteractiveLeftAlignmentLine()Landroidx/compose/ui/layout/VerticalAlignmentLine;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {p2, v2}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v2

    if-eq v2, v1, :cond_3

    int-to-float v1, v2

    mul-float/2addr v1, p3

    goto :goto_2

    :cond_3
    move v1, p4

    .line 2132
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p3

    sub-float v2, v0, v1

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 2134
    invoke-static {v2, p4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v2

    .line 2471
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v5, p3, v2

    .line 2139
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p3

    sub-float/2addr v1, v0

    mul-float/2addr v1, v3

    .line 2141
    invoke-static {v1, p4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p4

    .line 2472
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    add-int v6, p3, p4

    .line 2144
    new-instance v8, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode$$ExternalSyntheticLambda0;

    invoke-direct {v8, p2, v5, v6}, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/layout/Placeable;II)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public final setAnimationSpec(Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 2100
    iput-object p1, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-void
.end method

.method public final setHasVisibleLeadingContent(Z)V
    .locals 0

    .line 2098
    iput-boolean p1, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->hasVisibleLeadingContent:Z

    return-void
.end method

.method public final setHasVisibleTrailingContent(Z)V
    .locals 0

    .line 2099
    iput-boolean p1, p0, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->hasVisibleTrailingContent:Z

    return-void
.end method

.method public final updateAnimation()V
    .locals 6

    .line 2153
    invoke-virtual {p0}, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode$updateAnimation$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode$updateAnimation$1;-><init>(Landroidx/compose/material3/MinimumInteractiveBalancedPaddingNode;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
