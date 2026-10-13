.class public final Lexpo/modules/blur/ExpoBlurView;
.super Lexpo/modules/kotlin/views/ExpoView;
.source "ExpoBlurView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/blur/ExpoBlurView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0002\u0010\u001eJ\u000e\u0010\u001f\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u000bJ\u000e\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\tJ\u000e\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020\u000bJ\u0006\u0010%\u001a\u00020\u001dJ\u0008\u0010&\u001a\u00020\u001dH\u0014J\u0008\u0010\'\u001a\u00020\u001dH\u0002J\u0008\u0010(\u001a\u00020\u001dH\u0002J\u0018\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+2\u0006\u0010 \u001a\u00020\u000bH\u0002J\u0010\u0010,\u001a\u00020\u001d2\u0006\u0010-\u001a\u00020+H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lexpo/modules/blur/ExpoBlurView;",
        "Lexpo/modules/kotlin/views/ExpoView;",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V",
        "blurMethod",
        "Lexpo/modules/blur/enums/BlurMethod;",
        "blurReduction",
        "",
        "blurRadius",
        "tint",
        "Lexpo/modules/blur/enums/TintStyle;",
        "getTint$expo_blur_release",
        "()Lexpo/modules/blur/enums/TintStyle;",
        "setTint$expo_blur_release",
        "(Lexpo/modules/blur/enums/TintStyle;)V",
        "blurConfiguration",
        "Lexpo/modules/blur/BlurViewConfiguration;",
        "blurTargetId",
        "",
        "Ljava/lang/Integer;",
        "blurTarget",
        "Lexpo/modules/blur/ExpoBlurTargetView;",
        "blurView",
        "Leightbitlab/com/blurview/BlurView;",
        "setBlurTargetId",
        "",
        "(Ljava/lang/Integer;)V",
        "setBlurRadius",
        "radius",
        "setBlurMethod",
        "method",
        "applyBlurReduction",
        "reductionFactor",
        "applyTint",
        "onAttachedToWindow",
        "configureBlurView",
        "applyCurrentBlurSettings",
        "applyBlurViewRadiusCompat",
        "useBlur",
        "",
        "applyBlurViewOverlayColorCompat",
        "useBlurView",
        "expo-blur_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private blurConfiguration:Lexpo/modules/blur/BlurViewConfiguration;

.field private blurMethod:Lexpo/modules/blur/enums/BlurMethod;

.field private blurRadius:F

.field private blurReduction:F

.field private blurTarget:Lexpo/modules/blur/ExpoBlurTargetView;

.field private blurTargetId:Ljava/lang/Integer;

.field private final blurView:Leightbitlab/com/blurview/BlurView;

.field private tint:Lexpo/modules/blur/enums/TintStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/views/ExpoView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V

    .line 26
    sget-object p2, Lexpo/modules/blur/enums/BlurMethod;->NONE:Lexpo/modules/blur/enums/BlurMethod;

    iput-object p2, p0, Lexpo/modules/blur/ExpoBlurView;->blurMethod:Lexpo/modules/blur/enums/BlurMethod;

    const/high16 p2, 0x40800000    # 4.0f

    .line 27
    iput p2, p0, Lexpo/modules/blur/ExpoBlurView;->blurReduction:F

    const/high16 p2, 0x42480000    # 50.0f

    .line 28
    iput p2, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    .line 29
    sget-object p2, Lexpo/modules/blur/enums/TintStyle;->DEFAULT:Lexpo/modules/blur/enums/TintStyle;

    iput-object p2, p0, Lexpo/modules/blur/ExpoBlurView;->tint:Lexpo/modules/blur/enums/TintStyle;

    .line 30
    sget-object p2, Lexpo/modules/blur/BlurViewConfiguration;->NONE:Lexpo/modules/blur/BlurViewConfiguration;

    iput-object p2, p0, Lexpo/modules/blur/ExpoBlurView;->blurConfiguration:Lexpo/modules/blur/BlurViewConfiguration;

    .line 34
    new-instance p2, Leightbitlab/com/blurview/BlurView;

    invoke-direct {p2, p1}, Leightbitlab/com/blurview/BlurView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, p1}, Leightbitlab/com/blurview/BlurView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    move-object p1, p2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lexpo/modules/blur/ExpoBlurView;->addView(Landroid/view/View;)V

    .line 34
    iput-object p2, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    return-void
.end method

.method private final applyBlurViewOverlayColorCompat(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurTarget:Lexpo/modules/blur/ExpoBlurTargetView;

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->tint:Lexpo/modules/blur/enums/TintStyle;

    iget v1, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    invoke-virtual {v0, v1}, Lexpo/modules/blur/enums/TintStyle;->toBlurEffect(F)I

    move-result v0

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;

    return-void

    .line 196
    :cond_0
    iget-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->tint:Lexpo/modules/blur/enums/TintStyle;

    iget v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    invoke-virtual {p1, v0}, Lexpo/modules/blur/enums/TintStyle;->toBlurEffect(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lexpo/modules/blur/ExpoBlurView;->setBackgroundColor(I)V

    return-void
.end method

.method private final applyBlurViewRadiusCompat(ZF)V
    .locals 3

    if-eqz p1, :cond_2

    .line 179
    iget-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurTarget:Lexpo/modules/blur/ExpoBlurTargetView;

    if-eqz p1, :cond_2

    .line 182
    iget-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    cmpl-float p1, p2, v0

    if-lez p1, :cond_1

    .line 184
    iget-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    iget v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurReduction:F

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    .line 185
    iget-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    :cond_1
    return-void

    .line 188
    :cond_2
    iget-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->tint:Lexpo/modules/blur/enums/TintStyle;

    invoke-virtual {p1, p2}, Lexpo/modules/blur/enums/TintStyle;->toBlurEffect(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lexpo/modules/blur/ExpoBlurView;->setBackgroundColor(I)V

    return-void
.end method

.method private final applyCurrentBlurSettings()V
    .locals 1

    .line 173
    iget v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    invoke-virtual {p0, v0}, Lexpo/modules/blur/ExpoBlurView;->setBlurRadius(F)V

    .line 174
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurMethod:Lexpo/modules/blur/enums/BlurMethod;

    invoke-virtual {p0, v0}, Lexpo/modules/blur/ExpoBlurView;->setBlurMethod(Lexpo/modules/blur/enums/BlurMethod;)V

    .line 175
    invoke-virtual {p0}, Lexpo/modules/blur/ExpoBlurView;->applyTint()V

    return-void
.end method

.method private final configureBlurView()V
    .locals 4

    .line 150
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurTarget:Lexpo/modules/blur/ExpoBlurTargetView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurMethod:Lexpo/modules/blur/enums/BlurMethod;

    sget-object v1, Lexpo/modules/blur/enums/BlurMethod;->NONE:Lexpo/modules/blur/enums/BlurMethod;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/blur/ExpoBlurView;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v1, p0, Lexpo/modules/blur/ExpoBlurView;->blurTarget:Lexpo/modules/blur/ExpoBlurTargetView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lexpo/modules/blur/ExpoBlurTargetView;->getBlurTargetView$expo_blur_release()Leightbitlab/com/blurview/BlurTarget;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v2, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Leightbitlab/com/blurview/BlurTarget;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v1

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v0}, Leightbitlab/com/blurview/BlurViewFacade;->setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v0

    .line 164
    iget v1, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    iget v2, p0, Lexpo/modules/blur/ExpoBlurView;->blurReduction:F

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    .line 166
    sget-object v0, Lexpo/modules/blur/BlurViewConfiguration;->DIMEZIS:Lexpo/modules/blur/BlurViewConfiguration;

    iput-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurConfiguration:Lexpo/modules/blur/BlurViewConfiguration;

    return-void

    .line 160
    :cond_1
    new-instance v0, Lexpo/modules/blur/BlurViewConfigurationException;

    iget-object v1, p0, Lexpo/modules/blur/ExpoBlurView;->blurTargetId:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The BlurView targeting blur target with id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " couldn\'t find the target"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lexpo/modules/blur/BlurViewConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_2
    new-instance v0, Lexpo/modules/blur/BlurViewConfigurationException;

    const-string v1, "Failed to find a decor view associated with the blur view"

    invoke-direct {v0, v1}, Lexpo/modules/blur/BlurViewConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_3
    :goto_0
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 152
    sget-object v0, Lexpo/modules/blur/BlurViewConfiguration;->NONE:Lexpo/modules/blur/BlurViewConfiguration;

    iput-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurConfiguration:Lexpo/modules/blur/BlurViewConfiguration;

    return-void
.end method


# virtual methods
.method public final applyBlurReduction(F)V
    .locals 0

    .line 116
    iput p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurReduction:F

    .line 117
    iget p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    invoke-virtual {p0, p1}, Lexpo/modules/blur/ExpoBlurView;->setBlurRadius(F)V

    return-void
.end method

.method public final applyTint()V
    .locals 4

    .line 121
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurConfiguration:Lexpo/modules/blur/BlurViewConfiguration;

    sget-object v1, Lexpo/modules/blur/BlurViewConfiguration;->UNCONFIGURED:Lexpo/modules/blur/BlurViewConfiguration;

    if-ne v0, v1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurMethod:Lexpo/modules/blur/enums/BlurMethod;

    sget-object v1, Lexpo/modules/blur/ExpoBlurView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lexpo/modules/blur/enums/BlurMethod;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1}, Lexpo/modules/blur/ExpoBlurView;->applyBlurViewOverlayColorCompat(Z)V

    goto :goto_0

    .line 123
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 129
    :cond_3
    invoke-direct {p0, v2}, Lexpo/modules/blur/ExpoBlurView;->applyBlurViewOverlayColorCompat(Z)V

    goto :goto_0

    .line 125
    :cond_4
    invoke-direct {p0, v1}, Lexpo/modules/blur/ExpoBlurView;->applyBlurViewOverlayColorCompat(Z)V

    .line 136
    :goto_0
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    return-void
.end method

.method public final getTint$expo_blur_release()Lexpo/modules/blur/enums/TintStyle;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->tint:Lexpo/modules/blur/enums/TintStyle;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 140
    invoke-super {p0}, Lexpo/modules/kotlin/views/ExpoView;->onAttachedToWindow()V

    .line 143
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurConfiguration:Lexpo/modules/blur/BlurViewConfiguration;

    sget-object v1, Lexpo/modules/blur/BlurViewConfiguration;->UNCONFIGURED:Lexpo/modules/blur/BlurViewConfiguration;

    if-ne v0, v1, :cond_0

    .line 144
    invoke-direct {p0}, Lexpo/modules/blur/ExpoBlurView;->configureBlurView()V

    .line 145
    invoke-direct {p0}, Lexpo/modules/blur/ExpoBlurView;->applyCurrentBlurSettings()V

    :cond_0
    return-void
.end method

.method public final setBlurMethod(Lexpo/modules/blur/enums/BlurMethod;)V
    .locals 3

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurMethod:Lexpo/modules/blur/enums/BlurMethod;

    .line 78
    sget-object v0, Lexpo/modules/blur/enums/BlurMethod;->NONE:Lexpo/modules/blur/enums/BlurMethod;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurConfiguration:Lexpo/modules/blur/BlurViewConfiguration;

    sget-object v1, Lexpo/modules/blur/BlurViewConfiguration;->DIMEZIS:Lexpo/modules/blur/BlurViewConfiguration;

    if-eq v0, v1, :cond_0

    .line 79
    invoke-direct {p0}, Lexpo/modules/blur/ExpoBlurView;->configureBlurView()V

    .line 80
    invoke-virtual {p0}, Lexpo/modules/blur/ExpoBlurView;->applyTint()V

    .line 81
    iget v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    invoke-virtual {p0, v0}, Lexpo/modules/blur/ExpoBlurView;->setBlurRadius(F)V

    .line 84
    :cond_0
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurTarget:Lexpo/modules/blur/ExpoBlurTargetView;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    sget-object p1, Lexpo/modules/blur/enums/BlurMethod;->NONE:Lexpo/modules/blur/enums/BlurMethod;

    .line 90
    :goto_0
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurConfiguration:Lexpo/modules/blur/BlurViewConfiguration;

    sget-object v1, Lexpo/modules/blur/BlurViewConfiguration;->UNCONFIGURED:Lexpo/modules/blur/BlurViewConfiguration;

    if-ne v0, v1, :cond_2

    return-void

    .line 92
    :cond_2
    sget-object v0, Lexpo/modules/blur/ExpoBlurView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lexpo/modules/blur/enums/BlurMethod;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 103
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 104
    :goto_1
    iget-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    if-eqz v0, :cond_7

    .line 107
    invoke-virtual {p0, v1}, Lexpo/modules/blur/ExpoBlurView;->setBackgroundColor(I)V

    goto :goto_2

    .line 92
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 98
    :cond_5
    iget-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 99
    invoke-virtual {p0, v1}, Lexpo/modules/blur/ExpoBlurView;->setBackgroundColor(I)V

    goto :goto_2

    .line 94
    :cond_6
    iget-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 112
    :cond_7
    :goto_2
    iget p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    invoke-virtual {p0, p1}, Lexpo/modules/blur/ExpoBlurView;->setBlurRadius(F)V

    return-void
.end method

.method public final setBlurRadius(F)V
    .locals 4

    .line 56
    iput p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    .line 58
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurConfiguration:Lexpo/modules/blur/BlurViewConfiguration;

    sget-object v1, Lexpo/modules/blur/BlurViewConfiguration;->UNCONFIGURED:Lexpo/modules/blur/BlurViewConfiguration;

    if-ne v0, v1, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurMethod:Lexpo/modules/blur/enums/BlurMethod;

    sget-object v1, Lexpo/modules/blur/ExpoBlurView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lexpo/modules/blur/enums/BlurMethod;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1, p1}, Lexpo/modules/blur/ExpoBlurView;->applyBlurViewRadiusCompat(ZF)V

    return-void

    .line 60
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 66
    :cond_3
    invoke-direct {p0, v2, p1}, Lexpo/modules/blur/ExpoBlurView;->applyBlurViewRadiusCompat(ZF)V

    return-void

    .line 62
    :cond_4
    invoke-direct {p0, v1, p1}, Lexpo/modules/blur/ExpoBlurView;->applyBlurViewRadiusCompat(ZF)V

    return-void
.end method

.method public final setBlurTargetId(Ljava/lang/Integer;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurTargetId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurTarget:Lexpo/modules/blur/ExpoBlurTargetView;

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lexpo/modules/blur/ExpoBlurView;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/AppContext;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lexpo/modules/blur/ExpoBlurTargetView;

    .line 48
    iput-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurTarget:Lexpo/modules/blur/ExpoBlurTargetView;

    .line 51
    :goto_0
    iput-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurTargetId:Ljava/lang/Integer;

    .line 52
    invoke-direct {p0}, Lexpo/modules/blur/ExpoBlurView;->configureBlurView()V

    return-void
.end method

.method public final setTint$expo_blur_release(Lexpo/modules/blur/enums/TintStyle;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->tint:Lexpo/modules/blur/enums/TintStyle;

    return-void
.end method
