.class public final Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;
.super Ljava/lang/Object;
.source "ConfigLineBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigLineBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigLineBuilder.kt\ncom/swmansion/pulsar/haptics/ConfigLineBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,22:1\n1557#2:23\n1628#2,3:24\n1863#2,2:27\n*S KotlinDebug\n*F\n+ 1 ConfigLineBuilder.kt\ncom/swmansion/pulsar/haptics/ConfigLineBuilder\n*L\n11#1:23\n11#1:24,3\n16#1:27,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R!\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;",
        "",
        "amplitudeLine",
        "Lcom/swmansion/pulsar/haptics/ValueLineBuilder;",
        "frequencyLine",
        "<init>",
        "(Lcom/swmansion/pulsar/haptics/ValueLineBuilder;Lcom/swmansion/pulsar/haptics/ValueLineBuilder;)V",
        "points",
        "Ljava/util/ArrayList;",
        "Lcom/swmansion/pulsar/types/ConfigPoint;",
        "Lkotlin/collections/ArrayList;",
        "getPoints",
        "()Ljava/util/ArrayList;",
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


# instance fields
.field private final points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/pulsar/types/ConfigPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/haptics/ValueLineBuilder;Lcom/swmansion/pulsar/haptics/ValueLineBuilder;)V
    .locals 7

    const-string v0, "amplitudeLine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frequencyLine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;->points:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    invoke-virtual {p1}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 25
    check-cast v3, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 11
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 25
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 23
    check-cast v1, Ljava/util/Collection;

    .line 11
    invoke-virtual {p2}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 25
    check-cast v2, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 11
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 25
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 23
    check-cast v3, Ljava/lang/Iterable;

    .line 11
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 14
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Iterable;

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 17
    invoke-virtual {p1, v1, v2}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->valueForX(J)F

    move-result v3

    .line 18
    invoke-virtual {p2, v1, v2}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->valueForX(J)F

    move-result v4

    .line 19
    iget-object v5, p0, Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;->points:Ljava/util/ArrayList;

    new-instance v6, Lcom/swmansion/pulsar/types/ConfigPoint;

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/swmansion/pulsar/types/ConfigPoint;-><init>(JFF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/pulsar/types/ConfigPoint;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;->points:Ljava/util/ArrayList;

    return-object v0
.end method
