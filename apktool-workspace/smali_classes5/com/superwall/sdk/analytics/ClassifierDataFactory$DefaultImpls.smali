.class public final Lcom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls;
.super Ljava/lang/Object;
.source "DefaultClassifierDataFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/analytics/ClassifierDataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultClassifierDataFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultClassifierDataFactory.kt\ncom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,123:1\n10072#2:124\n10494#2,5:125\n*S KotlinDebug\n*F\n+ 1 DefaultClassifierDataFactory.kt\ncom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls\n*L\n42#1:124\n42#1:125,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static advertisedMemory(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)J
    .locals 5

    .line 46
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 48
    invoke-static {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls;->getActivityManager(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Landroid/app/ActivityManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 50
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt p0, v1, :cond_2

    .line 52
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    .line 53
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    sub-long/2addr v1, v3

    const/16 p0, 0x64

    int-to-long v3, p0

    mul-long/2addr v1, v3

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1f

    :goto_0
    const-wide/16 v3, 0x1e

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    .line 58
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0

    .line 60
    :cond_1
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    return-wide v0

    .line 63
    :cond_2
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method

.method public static codecs(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/ClassifierDataFactory;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance p0, Landroid/media/MediaCodecList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {p0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object p0

    const-string v0, "getCodecInfos(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 125
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 126
    check-cast v3, Landroid/media/MediaCodecInfo;

    .line 42
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "getSupportedTypes(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 127
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static getActivityManager(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Landroid/app/ActivityManager;
    .locals 1

    .line 31
    invoke-interface {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->context()Landroid/content/Context;

    move-result-object p0

    .line 32
    const-class v0, Landroid/app/ActivityManager;

    .line 30
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static getCpuInfo(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Lcom/superwall/sdk/analytics/CPUInfo$Data;
    .locals 0

    .line 121
    new-instance p0, Lcom/superwall/sdk/analytics/CPUInfo;

    invoke-direct {p0}, Lcom/superwall/sdk/analytics/CPUInfo;-><init>()V

    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/CPUInfo;->getCpuData()Lcom/superwall/sdk/analytics/CPUInfo$Data;

    move-result-object p0

    return-object p0
.end method

.method public static getOrientation(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;
    .locals 1

    .line 113
    invoke-interface {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->context()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 117
    sget-object p0, Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;->UNDEFINED:Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;

    return-object p0

    .line 116
    :cond_0
    sget-object p0, Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;->LANDSCAPE:Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;

    return-object p0

    .line 115
    :cond_1
    sget-object p0, Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;->PORTRAIT:Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;

    return-object p0
.end method

.method public static getScreenHeight(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)I
    .locals 2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 84
    invoke-static {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls;->getWindowManager(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    const-string v0, "getCurrentWindowMetrics(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 87
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsetsIgnoringVisibility(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    .line 90
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    invoke-interface {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->context()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getDisplayOrDefault(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenSize(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)D
    .locals 7

    .line 97
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 98
    invoke-interface {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getDisplayOrDefault(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 99
    invoke-interface {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->context()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v1, "getDisplayMetrics(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 101
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    .line 102
    iget v3, p0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    int-to-double v3, v0

    .line 103
    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v5, p0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 104
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 105
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getScreenWidth(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)I
    .locals 2

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 70
    invoke-static {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory$DefaultImpls;->getWindowManager(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    const-string v0, "getCurrentWindowMetrics(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 73
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsetsIgnoringVisibility(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0

    .line 76
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    invoke-interface {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->context()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getDisplayOrDefault(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private static getWindowManager(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Landroid/view/WindowManager;
    .locals 1

    .line 37
    invoke-interface {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->context()Landroid/content/Context;

    move-result-object p0

    .line 38
    const-class v0, Landroid/view/WindowManager;

    .line 36
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public static isTabletMinWidth(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)Z
    .locals 1

    .line 109
    invoke-interface {p0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->context()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
