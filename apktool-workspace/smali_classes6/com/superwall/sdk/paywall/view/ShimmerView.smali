.class public final Lcom/superwall/sdk/paywall/view/ShimmerView;
.super Landroid/widget/ImageView;
.source "ShimmerView.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/view/PaywallShimmerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/ShimmerView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 72\u00020\u00012\u00020\u0002:\u00017B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010*\u001a\u00020+H\u0016J\u0008\u0010,\u001a\u00020+H\u0016J\u0008\u0010-\u001a\u00020+H\u0016J\u0010\u0010.\u001a\u00020+2\u0006\u0010/\u001a\u000200H\u0014J\u0010\u00101\u001a\u00020+2\u0006\u00102\u001a\u000200H\u0002J\u0008\u00103\u001a\u00020+H\u0014J\u0008\u00104\u001a\u00020+H\u0014J\u0006\u00105\u001a\u00020+J\u0006\u00106\u001a\u00020+R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0013\u001a\u0004\u0008\u0015\u0010\u0011R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\'\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001f\"\u0004\u0008)\u0010!\u00a8\u00068"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/ShimmerView;",
        "Landroid/widget/ImageView;",
        "Lcom/superwall/sdk/paywall/view/PaywallShimmerView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "vectorDrawable",
        "Landroid/graphics/drawable/VectorDrawable;",
        "currentOrientation",
        "",
        "portraitDrawable",
        "getPortraitDrawable",
        "()Landroid/graphics/drawable/VectorDrawable;",
        "portraitDrawable$delegate",
        "Lkotlin/Lazy;",
        "landscapeDrawable",
        "getLandscapeDrawable",
        "landscapeDrawable$delegate",
        "tintColorFilter",
        "Landroid/graphics/ColorFilter;",
        "getTintColorFilter",
        "()Landroid/graphics/ColorFilter;",
        "setTintColorFilter",
        "(Landroid/graphics/ColorFilter;)V",
        "background",
        "getBackground",
        "()I",
        "setBackground",
        "(I)V",
        "isLightBackground",
        "",
        "()Z",
        "setLightBackground",
        "(Z)V",
        "tintColor",
        "getTintColor",
        "setTintColor",
        "hideShimmer",
        "",
        "showShimmer",
        "checkForOrientationChanges",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "setDrawableBasedOnOrientation",
        "config",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "startShimmer",
        "stopShimmer",
        "Companion",
        "superwall_release"
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
.field public static final Companion:Lcom/superwall/sdk/paywall/view/ShimmerView$Companion;

.field public static final TAG:Ljava/lang/String; = "ShimmerView"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private background:I

.field private currentOrientation:I

.field private isLightBackground:Z

.field private final landscapeDrawable$delegate:Lkotlin/Lazy;

.field private final portraitDrawable$delegate:Lkotlin/Lazy;

.field private tintColor:I

.field private tintColorFilter:Landroid/graphics/ColorFilter;

.field private vectorDrawable:Landroid/graphics/drawable/VectorDrawable;


# direct methods
.method public static synthetic $r8$lambda$8q9WpK31ZrC5Uh-gI4mhtNgt1Q8(Lcom/superwall/sdk/paywall/view/ShimmerView;)Landroid/graphics/drawable/VectorDrawable;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->landscapeDrawable_delegate$lambda$1(Lcom/superwall/sdk/paywall/view/ShimmerView;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K5x90gzXgt5oXfx6xQgSRfaVUno(Lcom/superwall/sdk/paywall/view/ShimmerView;)Landroid/graphics/drawable/VectorDrawable;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->portraitDrawable_delegate$lambda$0(Lcom/superwall/sdk/paywall/view/ShimmerView;)Landroid/graphics/drawable/VectorDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nhj35oxkDrCDO1O7_kZzQj1rjyw(Lcom/superwall/sdk/paywall/view/ShimmerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/ShimmerView;->startShimmer$lambda$3$lambda$2(Lcom/superwall/sdk/paywall/view/ShimmerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/view/ShimmerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/ShimmerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/view/ShimmerView;->Companion:Lcom/superwall/sdk/paywall/view/ShimmerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p1, Lcom/superwall/sdk/paywall/view/ShimmerView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/paywall/view/ShimmerView$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/paywall/view/ShimmerView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->portraitDrawable$delegate:Lkotlin/Lazy;

    .line 37
    new-instance p1, Lcom/superwall/sdk/paywall/view/ShimmerView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/paywall/view/ShimmerView$$ExternalSyntheticLambda2;-><init>(Lcom/superwall/sdk/paywall/view/ShimmerView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->landscapeDrawable$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 44
    const-string p1, "ShimmerView"

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->checkForOrientationChanges()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/ShimmerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getLandscapeDrawable()Landroid/graphics/drawable/VectorDrawable;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->landscapeDrawable$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    return-object v0
.end method

.method private final getPortraitDrawable()Landroid/graphics/drawable/VectorDrawable;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->portraitDrawable$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    return-object v0
.end method

.method private static final landscapeDrawable_delegate$lambda$1(Lcom/superwall/sdk/paywall/view/ShimmerView;)Landroid/graphics/drawable/VectorDrawable;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/superwall/sdk/R$drawable;->landscape_shimmer_skeleton:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final portraitDrawable_delegate$lambda$0(Lcom/superwall/sdk/paywall/view/ShimmerView;)Landroid/graphics/drawable/VectorDrawable;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/superwall/sdk/R$drawable;->portrait_shimmer_skeleton:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final setDrawableBasedOnOrientation(Landroid/content/res/Configuration;)V
    .locals 1

    .line 83
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getLandscapeDrawable()Landroid/graphics/drawable/VectorDrawable;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getPortraitDrawable()Landroid/graphics/drawable/VectorDrawable;

    move-result-object p1

    .line 82
    :goto_0
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->vectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 91
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->vectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->tintColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private static final startShimmer$lambda$3$lambda$2(Lcom/superwall/sdk/paywall/view/ShimmerView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public checkForOrientationChanges()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setDrawableBasedOnOrientation(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final getBackground()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->background:I

    return v0
.end method

.method public final getTintColor()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->tintColor:I

    return v0
.end method

.method public final getTintColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->tintColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public hideShimmer()V
    .locals 1

    const/16 v0, 0x8

    .line 53
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->stopShimmer()V

    return-void
.end method

.method public final isLightBackground()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->isLightBackground:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 100
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/superwall/sdk/paywall/view/ShimmerView$onAttachedToWindow$1;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/paywall/view/ShimmerView$onAttachedToWindow$1;-><init>(Lcom/superwall/sdk/paywall/view/ShimmerView;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    iget v0, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->currentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    return-void

    .line 73
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->currentOrientation:I

    .line 75
    invoke-direct {p0, p1}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setDrawableBasedOnOrientation(Landroid/content/res/Configuration;)V

    .line 78
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 115
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 116
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->stopShimmer()V

    return-void
.end method

.method public final setBackground(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->background:I

    return-void
.end method

.method public final setLightBackground(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->isLightBackground:Z

    return-void
.end method

.method public final setTintColor(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->tintColor:I

    return-void
.end method

.method public final setTintColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->tintColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public showShimmer()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setVisibility(I)V

    .line 59
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->startShimmer()V

    return-void
.end method

.method public final startShimmer()V
    .locals 6

    .line 120
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->stopShimmer()V

    const/4 v0, 0x3

    .line 122
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    .line 124
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 125
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    new-instance v1, Lcom/superwall/sdk/paywall/view/ShimmerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/paywall/view/ShimmerView$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/paywall/view/ShimmerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 121
    iput-object v0, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->animator:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final stopShimmer()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
