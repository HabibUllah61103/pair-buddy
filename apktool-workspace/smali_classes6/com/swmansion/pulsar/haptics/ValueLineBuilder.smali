.class public final Lcom/swmansion/pulsar/haptics/ValueLineBuilder;
.super Ljava/lang/Object;
.source "ValueLineBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValueLineBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValueLineBuilder.kt\ncom/swmansion/pulsar/haptics/ValueLineBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1863#2,2:56\n360#2,7:58\n1755#2,3:65\n230#2,2:68\n360#2,7:70\n*S KotlinDebug\n*F\n+ 1 ValueLineBuilder.kt\ncom/swmansion/pulsar/haptics/ValueLineBuilder\n*L\n9#1:56,2\n20#1:58,7\n26#1:65,3\n26#1:68,2\n31#1:70,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0000R*\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0008j\u0008\u0012\u0004\u0012\u00020\u0004`\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/swmansion/pulsar/haptics/ValueLineBuilder;",
        "",
        "initialList",
        "",
        "Lcom/swmansion/pulsar/types/ValuePoint;",
        "<init>",
        "(Ljava/util/List;)V",
        "points",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getPoints",
        "()Ljava/util/ArrayList;",
        "setPoints",
        "(Ljava/util/ArrayList;)V",
        "pushPoint",
        "",
        "point",
        "valueForX",
        "",
        "x",
        "",
        "mergeLine",
        "linePattern",
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
.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/pulsar/types/ValuePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$SxpfmvUwmLRmrlgNQsmBDz7rSxg(JJLcom/swmansion/pulsar/types/ValuePoint;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->mergeLine$lambda$5(JJLcom/swmansion/pulsar/types/ValuePoint;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ValuePoint;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 9
    check-cast p1, Ljava/lang/Iterable;

    .line 56
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 10
    new-instance v1, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/swmansion/pulsar/types/ValuePoint;-><init>(JF)V

    invoke-virtual {p0, v1}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->pushPoint(Lcom/swmansion/pulsar/types/ValuePoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private static final mergeLine$lambda$5(JJLcom/swmansion/pulsar/types/ValuePoint;)Z
    .locals 2

    const-string v0, "point"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p4}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v0

    cmp-long p0, p0, v0

    const/4 p1, 0x0

    if-gtz p0, :cond_0

    cmp-long p0, v0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public final getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/pulsar/types/ValuePoint;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final mergeLine(Lcom/swmansion/pulsar/haptics/ValueLineBuilder;)V
    .locals 10

    const-string v0, "linePattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p1, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntProgression;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v0

    if-lez v0, :cond_0

    if-le v1, v2, :cond_1

    :cond_0
    if-gez v0, :cond_2

    if-gt v2, v1, :cond_2

    .line 44
    :cond_1
    :goto_0
    iget-object v3, p1, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v3

    .line 45
    iget-object v5, p1, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v5}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v7

    .line 47
    iget-object v5, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    check-cast v5, Ljava/util/List;

    new-instance v9, Lcom/swmansion/pulsar/haptics/ValueLineBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3, v4, v7, v8}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder$$ExternalSyntheticLambda0;-><init>(JJ)V

    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 49
    iget-object v3, p1, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {p0, v3}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->pushPoint(Lcom/swmansion/pulsar/types/ValuePoint;)V

    .line 50
    iget-object v3, p1, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {p0, v3}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->pushPoint(Lcom/swmansion/pulsar/types/ValuePoint;)V

    .line 51
    iget-object v3, p1, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {p0, v3}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->pushPoint(Lcom/swmansion/pulsar/types/ValuePoint;)V

    .line 52
    iget-object v3, p1, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {p0, v3}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->pushPoint(Lcom/swmansion/pulsar/types/ValuePoint;)V

    if-eq v1, v2, :cond_2

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final pushPoint(Lcom/swmansion/pulsar/types/ValuePoint;)V
    .locals 6

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_2

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 60
    check-cast v2, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 20
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    .line 16
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setPoints(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/pulsar/types/ValuePoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    return-void
.end method

.method public final valueForX(J)F
    .locals 7

    .line 25
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 65
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 26
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 68
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 26
    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result p1

    return p1

    .line 69
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Collection contains no element matching the predicate."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    iget-object p1, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {p1}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result p1

    return p1

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-gtz v0, :cond_7

    return v1

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-ltz v0, :cond_8

    return v1

    .line 31
    :cond_8
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 72
    check-cast v1, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 31
    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-lez v1, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    const/4 v2, -0x1

    .line 32
    :goto_2
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 33
    iget-object v3, p0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->points:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/swmansion/pulsar/types/ValuePoint;

    .line 35
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 36
    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result v2

    sub-float/2addr v1, v2

    .line 37
    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getTime()J

    move-result-wide v5

    sub-long/2addr p1, v5

    long-to-float p1, p1

    long-to-float p2, v3

    div-float/2addr p1, p2

    .line 39
    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ValuePoint;->getValue()F

    move-result p2

    mul-float/2addr v1, p1

    add-float/2addr p2, v1

    return p2
.end method
