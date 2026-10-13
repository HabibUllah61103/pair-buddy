.class public final Lcom/superwall/sdk/analytics/DeviceClassifier;
.super Ljava/lang/Object;
.source "DeviceClassifier.kt"

# interfaces
.implements Lcom/superwall/sdk/analytics/ClassifierDataFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceClassifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceClassifier.kt\ncom/superwall/sdk/analytics/DeviceClassifier\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n*L\n1#1,133:1\n1734#2,3:134\n1557#2:137\n1628#2,3:138\n1782#2,4:141\n1755#2,3:145\n1755#2,3:148\n1755#2,3:151\n1755#2,3:154\n774#2:167\n865#2,2:168\n135#3,10:157\n*S KotlinDebug\n*F\n+ 1 DeviceClassifier.kt\ncom/superwall/sdk/analytics/DeviceClassifier\n*L\n66#1:134,3\n70#1:137\n70#1:138,3\n87#1:141,4\n100#1:145,3\n101#1:148,3\n102#1:151,3\n103#1:154,3\n41#1:167\n41#1:168,2\n118#1:157,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001*B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0011\u001a\u00020\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u000fH\u0002J\u0008\u0010\u0013\u001a\u00020\u000fH\u0002J\u0014\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\t\u0010\u0017\u001a\u00020\u0018H\u0096\u0001J\u000f\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0096\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u0096\u0001J\t\u0010\u001c\u001a\u00020\u000fH\u0096\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u0096\u0001J\t\u0010\u001f\u001a\u00020\u000fH\u0096\u0001J\t\u0010 \u001a\u00020!H\u0096\u0001R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\"\u001a\u00020#8VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0014\u0010&\u001a\u00020\'8VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/DeviceClassifier;",
        "Lcom/superwall/sdk/analytics/ClassifierDataFactory;",
        "factory",
        "<init>",
        "(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)V",
        "videoCodecs",
        "",
        "",
        "getVideoCodecs",
        "()Ljava/util/List;",
        "videoCodecs$delegate",
        "Lkotlin/Lazy;",
        "deviceTier",
        "Lcom/superwall/sdk/analytics/Tier;",
        "cpuScore",
        "",
        "primeFreqBonus",
        "memScore",
        "videoScore",
        "displayScore",
        "totalScore",
        "Lcom/superwall/sdk/misc/Either;",
        "",
        "advertisedMemory",
        "",
        "codecs",
        "context",
        "Landroid/content/Context;",
        "getScreenHeight",
        "getScreenSize",
        "",
        "getScreenWidth",
        "isTabletMinWidth",
        "",
        "cpuInfo",
        "Lcom/superwall/sdk/analytics/CPUInfo$Data;",
        "getCpuInfo",
        "()Lcom/superwall/sdk/analytics/CPUInfo$Data;",
        "orientation",
        "Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;",
        "getOrientation",
        "()Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;",
        "Orientation",
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


# instance fields
.field private final factory:Lcom/superwall/sdk/analytics/ClassifierDataFactory;

.field private final videoCodecs$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$_wQboapj-_cRbUTBQGP28vFDTQo(Lcom/superwall/sdk/analytics/DeviceClassifier;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->videoCodecs_delegate$lambda$1(Lcom/superwall/sdk/analytics/DeviceClassifier;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)V
    .locals 1

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/superwall/sdk/analytics/DeviceClassifier;->factory:Lcom/superwall/sdk/analytics/ClassifierDataFactory;

    .line 41
    new-instance p1, Lcom/superwall/sdk/analytics/DeviceClassifier$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/analytics/DeviceClassifier$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/analytics/DeviceClassifier;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/analytics/DeviceClassifier;->videoCodecs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final cpuScore()I
    .locals 10

    .line 66
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->getCpuInfo()Lcom/superwall/sdk/analytics/CPUInfo$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/CPUInfo$Data;->getCores()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->getCpuInfo()Lcom/superwall/sdk/analytics/CPUInfo$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/CPUInfo$Data;->getCores()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 134
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 135
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/analytics/CPUInfo$Data$Core;

    .line 66
    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/CPUInfo$Data$Core;->getCurrentFreq()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->getCpuInfo()Lcom/superwall/sdk/analytics/CPUInfo$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/CPUInfo$Data;->getCores()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 138
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 139
    check-cast v2, Lcom/superwall/sdk/analytics/CPUInfo$Data$Core;

    .line 70
    invoke-virtual {v2}, Lcom/superwall/sdk/analytics/CPUInfo$Data$Core;->getMaxFreq()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 139
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 140
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 72
    move-object v0, v1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->averageOfLong(Ljava/lang/Iterable;)D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_3

    const/16 v0, 0x3e8

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 79
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 81
    invoke-static {v2, v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(DD)D

    move-result-wide v1

    const/16 v3, 0x23

    int-to-double v6, v3

    mul-double/2addr v1, v6

    int-to-double v6, v0

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    div-double/2addr v6, v8

    .line 82
    invoke-static {v6, v7, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(DD)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v0, v3

    return v0

    :cond_4
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method private final displayScore()I
    .locals 6

    .line 109
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->getScreenWidth()I

    move-result v0

    int-to-double v0, v0

    .line 110
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->getScreenHeight()I

    move-result v2

    int-to-double v2, v2

    .line 111
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->getScreenSize()D

    move-result-wide v4

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v0, v4

    const-wide v2, 0x407f400000000000L    # 500.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 113
    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(DD)D

    move-result-wide v0

    const/16 v2, 0x14

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private final getVideoCodecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/superwall/sdk/analytics/DeviceClassifier;->videoCodecs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final memScore()I
    .locals 4

    .line 91
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->advertisedMemory()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 93
    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(DD)D

    move-result-wide v0

    const/16 v2, 0x19

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private final primeFreqBonus()I
    .locals 7

    .line 87
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->getCpuInfo()Lcom/superwall/sdk/analytics/CPUInfo$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/CPUInfo$Data;->getCores()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 141
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    .line 143
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/analytics/CPUInfo$Data$Core;

    .line 87
    invoke-virtual {v3}, Lcom/superwall/sdk/analytics/CPUInfo$Data$Core;->getMaxFreq()J

    move-result-wide v3

    const-wide/32 v5, 0x3567e0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    .line 143
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    .line 87
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->getCpuInfo()Lcom/superwall/sdk/analytics/CPUInfo$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/CPUInfo$Data;->getCores()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    if-lt v1, v0, :cond_3

    const/4 v0, 0x5

    return v0

    :cond_3
    return v2
.end method

.method private final totalScore()Lcom/superwall/sdk/misc/Either;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/superwall/sdk/misc/Either<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->cpuScore()I

    move-result v0

    .line 121
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->primeFreqBonus()I

    move-result v1

    .line 122
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->memScore()I

    move-result v2

    add-int/2addr v1, v2

    .line 123
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->videoScore()I

    move-result v2

    add-int/2addr v1, v2

    .line 124
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->displayScore()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x64

    .line 127
    div-int/lit8 v1, v1, 0x41

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    .line 129
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    .line 160
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 165
    :cond_1
    new-instance v1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;

    return-object v1
.end method

.method private static final videoCodecs_delegate$lambda$1(Lcom/superwall/sdk/analytics/DeviceClassifier;)Ljava/util/List;
    .locals 7

    .line 41
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->codecs()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 168
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 41
    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v3, "video"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final videoScore()I
    .locals 5

    .line 100
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->getVideoCodecs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 145
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "av01"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 101
    :goto_1
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->getVideoCodecs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 148
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 149
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 101
    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "hevc"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0xe

    .line 102
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->getVideoCodecs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 151
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_6

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    .line 152
    :cond_6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 102
    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v4, "vp9"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v0, v0, 0x6

    .line 103
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->getVideoCodecs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 154
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_9

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    .line 155
    :cond_9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 103
    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v4, "vp8"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v0, v0, 0x4

    :cond_b
    :goto_4
    const/16 v1, 0x14

    .line 104
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public advertisedMemory()J
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/analytics/DeviceClassifier;->factory:Lcom/superwall/sdk/analytics/ClassifierDataFactory;

    invoke-interface {v0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->advertisedMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public codecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/analytics/DeviceClassifier;->factory:Lcom/superwall/sdk/analytics/ClassifierDataFactory;

    invoke-interface {v0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->codecs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public context()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/DeviceClassifier;->factory:Lcom/superwall/sdk/analytics/ClassifierDataFactory;

    invoke-interface {v0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->context()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final deviceTier()Lcom/superwall/sdk/analytics/Tier;
    .locals 4

    .line 53
    invoke-direct {p0}, Lcom/superwall/sdk/analytics/DeviceClassifier;->totalScore()Lcom/superwall/sdk/misc/Either;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either;->getSuccess()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/superwall/sdk/analytics/Tier;->UNKNOWN:Lcom/superwall/sdk/analytics/Tier;

    return-object v0

    .line 55
    :cond_0
    new-instance v1, Lkotlin/ranges/IntRange;

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/superwall/sdk/analytics/Tier;->ULTRA_LOW:Lcom/superwall/sdk/analytics/Tier;

    return-object v0

    .line 56
    :cond_1
    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x19

    const/16 v3, 0x2c

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/superwall/sdk/analytics/Tier;->LOW:Lcom/superwall/sdk/analytics/Tier;

    return-object v0

    .line 57
    :cond_2
    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x2d

    const/16 v3, 0x45

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/superwall/sdk/analytics/Tier;->MID:Lcom/superwall/sdk/analytics/Tier;

    return-object v0

    .line 58
    :cond_3
    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x46

    const/16 v3, 0x55

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/superwall/sdk/analytics/Tier;->HIGH:Lcom/superwall/sdk/analytics/Tier;

    return-object v0

    .line 59
    :cond_4
    sget-object v0, Lcom/superwall/sdk/analytics/Tier;->ULTRA_HIGH:Lcom/superwall/sdk/analytics/Tier;

    return-object v0
.end method

.method public getCpuInfo()Lcom/superwall/sdk/analytics/CPUInfo$Data;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/DeviceClassifier;->factory:Lcom/superwall/sdk/analytics/ClassifierDataFactory;

    invoke-interface {v0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->getCpuInfo()Lcom/superwall/sdk/analytics/CPUInfo$Data;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/DeviceClassifier;->factory:Lcom/superwall/sdk/analytics/ClassifierDataFactory;

    invoke-interface {v0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->getOrientation()Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/DeviceClassifier;->factory:Lcom/superwall/sdk/analytics/ClassifierDataFactory;

    invoke-interface {v0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->getScreenHeight()I

    move-result v0

    return v0
.end method

.method public getScreenSize()D
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/analytics/DeviceClassifier;->factory:Lcom/superwall/sdk/analytics/ClassifierDataFactory;

    invoke-interface {v0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->getScreenSize()D

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/DeviceClassifier;->factory:Lcom/superwall/sdk/analytics/ClassifierDataFactory;

    invoke-interface {v0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method public isTabletMinWidth()Z
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/analytics/DeviceClassifier;->factory:Lcom/superwall/sdk/analytics/ClassifierDataFactory;

    invoke-interface {v0}, Lcom/superwall/sdk/analytics/ClassifierDataFactory;->isTabletMinWidth()Z

    move-result v0

    return v0
.end method
