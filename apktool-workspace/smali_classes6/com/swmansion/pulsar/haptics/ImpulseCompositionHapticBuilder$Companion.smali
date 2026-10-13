.class public final Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion;
.super Ljava/lang/Object;
.source "ImpulseCompositionHapticBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImpulseCompositionHapticBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImpulseCompositionHapticBuilder.kt\ncom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n2632#2,3:63\n*S KotlinDebug\n*F\n+ 1 ImpulseCompositionHapticBuilder.kt\ncom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion\n*L\n17#1:63,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion;",
        "",
        "<init>",
        "()V",
        "isImpulsesOnly",
        "",
        "preset",
        "Lcom/swmansion/pulsar/types/PatternData;",
        "Pulsar_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isImpulsesOnly(Lcom/swmansion/pulsar/types/PatternData;)Z
    .locals 4

    const-string v0, "preset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getDiscretePattern()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getContinuousPattern()Lcom/swmansion/pulsar/types/ContinuousPattern;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/ContinuousPattern;->getAmplitude()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 63
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 64
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 17
    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    return v1

    :cond_3
    return v2
.end method
