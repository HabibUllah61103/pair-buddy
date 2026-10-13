.class public final Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;
.super Ljava/lang/Object;
.source "FullscreenActivityOrientationHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u001a\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020\u0008J\u0006\u0010#\u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006$"
    }
    d2 = {
        "Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "options",
        "Lexpo/modules/video/records/FullscreenOptions;",
        "onShouldAutoExit",
        "Lkotlin/Function0;",
        "",
        "onShouldReleaseOrientation",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/video/records/FullscreenOptions;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getOptions",
        "()Lexpo/modules/video/records/FullscreenOptions;",
        "getOnShouldAutoExit",
        "()Lkotlin/jvm/functions/Function0;",
        "getOnShouldReleaseOrientation",
        "userHasRotatedToVideoOrientation",
        "",
        "isLockedToLandscape",
        "isLockedToPortrait",
        "isAutoRotationEnabled",
        "()Z",
        "orientationEventListener",
        "expo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1",
        "getOrientationEventListener",
        "()Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;",
        "orientationEventListener$delegate",
        "Lkotlin/Lazy;",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "startOrientationEventListener",
        "stopOrientationEventListener",
        "expo-video_release"
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
.field private final context:Landroid/content/Context;

.field private final isLockedToLandscape:Z

.field private final isLockedToPortrait:Z

.field private final onShouldAutoExit:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onShouldReleaseOrientation:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lexpo/modules/video/records/FullscreenOptions;

.field private final orientationEventListener$delegate:Lkotlin/Lazy;

.field private userHasRotatedToVideoOrientation:Z


# direct methods
.method public static synthetic $r8$lambda$v0YPFuLx0b8Ll-H254IY1mdxqpw(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;
    .locals 0

    invoke-static {p0}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->orientationEventListener_delegate$lambda$0(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/video/records/FullscreenOptions;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lexpo/modules/video/records/FullscreenOptions;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onShouldAutoExit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onShouldReleaseOrientation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->options:Lexpo/modules/video/records/FullscreenOptions;

    iput-object p3, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->onShouldAutoExit:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->onShouldReleaseOrientation:Lkotlin/jvm/functions/Function0;

    .line 16
    invoke-virtual {p2}, Lexpo/modules/video/records/FullscreenOptions;->getOrientation()Lexpo/modules/video/enums/FullscreenOrientation;

    move-result-object p1

    sget-object p3, Lexpo/modules/video/enums/FullscreenOrientation;->LANDSCAPE:Lexpo/modules/video/enums/FullscreenOrientation;

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eq p1, p3, :cond_1

    .line 17
    invoke-virtual {p2}, Lexpo/modules/video/records/FullscreenOptions;->getOrientation()Lexpo/modules/video/enums/FullscreenOrientation;

    move-result-object p1

    sget-object p3, Lexpo/modules/video/enums/FullscreenOrientation;->LANDSCAPE_LEFT:Lexpo/modules/video/enums/FullscreenOrientation;

    if-eq p1, p3, :cond_1

    .line 18
    invoke-virtual {p2}, Lexpo/modules/video/records/FullscreenOptions;->getOrientation()Lexpo/modules/video/enums/FullscreenOrientation;

    move-result-object p1

    sget-object p3, Lexpo/modules/video/enums/FullscreenOrientation;->LANDSCAPE_RIGHT:Lexpo/modules/video/enums/FullscreenOrientation;

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p4

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    .line 16
    :goto_1
    iput-boolean p1, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->isLockedToLandscape:Z

    .line 20
    invoke-virtual {p2}, Lexpo/modules/video/records/FullscreenOptions;->getOrientation()Lexpo/modules/video/enums/FullscreenOrientation;

    move-result-object p1

    sget-object p3, Lexpo/modules/video/enums/FullscreenOrientation;->PORTRAIT:Lexpo/modules/video/enums/FullscreenOrientation;

    if-eq p1, p3, :cond_2

    .line 21
    invoke-virtual {p2}, Lexpo/modules/video/records/FullscreenOptions;->getOrientation()Lexpo/modules/video/enums/FullscreenOrientation;

    move-result-object p1

    sget-object p3, Lexpo/modules/video/enums/FullscreenOrientation;->PORTRAIT_UP:Lexpo/modules/video/enums/FullscreenOrientation;

    if-eq p1, p3, :cond_2

    .line 22
    invoke-virtual {p2}, Lexpo/modules/video/records/FullscreenOptions;->getOrientation()Lexpo/modules/video/enums/FullscreenOrientation;

    move-result-object p1

    sget-object p2, Lexpo/modules/video/enums/FullscreenOrientation;->PORTRAIT_DOWN:Lexpo/modules/video/enums/FullscreenOrientation;

    if-ne p1, p2, :cond_3

    :cond_2
    move p4, v0

    .line 20
    :cond_3
    iput-boolean p4, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->isLockedToPortrait:Z

    .line 47
    new-instance p1, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->orientationEventListener$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getUserHasRotatedToVideoOrientation$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->userHasRotatedToVideoOrientation:Z

    return p0
.end method

.method public static final synthetic access$isLockedToLandscape$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->isLockedToLandscape:Z

    return p0
.end method

.method public static final synthetic access$isLockedToPortrait$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->isLockedToPortrait:Z

    return p0
.end method

.method public static final synthetic access$setUserHasRotatedToVideoOrientation$p(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->userHasRotatedToVideoOrientation:Z

    return-void
.end method

.method private final getOrientationEventListener()Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;
    .locals 1

    .line 47
    iget-object v0, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->orientationEventListener$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;

    return-object v0
.end method

.method private static final orientationEventListener_delegate$lambda$0(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;)Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;
    .locals 2

    .line 48
    iget-object v0, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->context:Landroid/content/Context;

    new-instance v1, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;

    invoke-direct {v1, p0, v0}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;-><init>(Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;Landroid/content/Context;)V

    return-object v1
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 14
    iget-object v0, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getOnShouldAutoExit()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->onShouldAutoExit:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnShouldReleaseOrientation()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->onShouldReleaseOrientation:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOptions()Lexpo/modules/video/records/FullscreenOptions;
    .locals 1

    .line 14
    iget-object v0, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->options:Lexpo/modules/video/records/FullscreenOptions;

    return-object v0
.end method

.method public final isAutoRotationEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 32
    :try_start_0
    iget-object v1, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 33
    const-string v2, "accelerometer_rotation"

    .line 31
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :catch_0
    :cond_0
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 100
    iget-object v0, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->options:Lexpo/modules/video/records/FullscreenOptions;

    invoke-virtual {v0}, Lexpo/modules/video/records/FullscreenOptions;->getAutoExitOnRotate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-boolean v0, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->isLockedToPortrait:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 105
    iget-object p1, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->onShouldAutoExit:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 106
    :cond_1
    iget-boolean v0, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->isLockedToLandscape:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 107
    iget-object p1, p0, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->onShouldAutoExit:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final startOrientationEventListener()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->getOrientationEventListener()Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->getOrientationEventListener()Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->enable()V

    :cond_0
    return-void
.end method

.method public final stopOrientationEventListener()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;->getOrientationEventListener()Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/video/utils/FullscreenActivityOrientationHelper$orientationEventListener$2$1;->disable()V

    return-void
.end method
