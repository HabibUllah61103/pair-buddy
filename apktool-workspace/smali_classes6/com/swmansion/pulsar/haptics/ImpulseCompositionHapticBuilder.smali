.class public final Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;
.super Ljava/lang/Object;
.source "ImpulseCompositionHapticBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImpulseCompositionHapticBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImpulseCompositionHapticBuilder.kt\ncom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n1053#2:63\n1557#2:64\n1628#2,3:65\n*S KotlinDebug\n*F\n+ 1 ImpulseCompositionHapticBuilder.kt\ncom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder\n*L\n29#1:63\n32#1:64\n32#1:65,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0003\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;",
        "",
        "<init>",
        "()V",
        "createCompositionEffect",
        "Landroid/os/VibrationEffect;",
        "preset",
        "Lcom/swmansion/pulsar/types/PatternData;",
        "engine",
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "selectPrimitive",
        "",
        "frequency",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;->Companion:Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final selectPrimitive(F)I
    .locals 2

    const v0, 0x3f28f5c3    # 0.66f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const v0, 0x3ea8f5c3    # 0.33f

    cmpl-float p1, p1, v0

    const/4 v0, 0x7

    if-lez p1, :cond_1

    return v0

    .line 56
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p1, v1, :cond_2

    const/16 p1, 0x8

    return p1

    :cond_2
    return v0
.end method


# virtual methods
.method public final createCompositionEffect(Lcom/swmansion/pulsar/types/PatternData;Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)Landroid/os/VibrationEffect;
    .locals 6

    const-string v0, "preset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/PatternData;->getDiscretePattern()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 63
    new-instance v0, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$createCompositionEffect$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder$createCompositionEffect$$inlined$sortedBy$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    .line 32
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 66
    check-cast v3, Lcom/swmansion/pulsar/types/ConfigPoint;

    .line 32
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;->selectPrimitive(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 66
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 64
    check-cast v1, Ljava/lang/Iterable;

    .line 32
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 33
    invoke-virtual {p2, v1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isPrimitiveSupported(I)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v2

    .line 36
    :cond_4
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p2

    const-string v0, "startComposition(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/pulsar/types/ConfigPoint;

    .line 40
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int v0, v3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 41
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/swmansion/pulsar/haptics/ImpulseCompositionHapticBuilder;->selectPrimitive(F)I

    move-result v1

    .line 42
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    .line 43
    invoke-virtual {p2, v1, v3, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 44
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v0

    goto :goto_1

    .line 47
    :cond_5
    invoke-virtual {p2}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method
