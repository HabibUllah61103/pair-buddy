.class public final Lcom/swmansion/pulsar/types/PatternData;
.super Ljava/lang/Object;
.source "Points.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPoints.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Points.kt\ncom/swmansion/pulsar/types/PatternData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n1557#2:53\n1628#2,3:54\n1557#2:57\n1628#2,3:58\n1557#2:61\n1628#2,3:62\n*S KotlinDebug\n*F\n+ 1 Points.kt\ncom/swmansion/pulsar/types/PatternData\n*L\n46#1:53\n46#1:54,3\n47#1:57\n47#1:58,3\n49#1:61\n49#1:62,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B;\u0008\u0016\u0012\u001a\u0008\u0002\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u00050\u0005\u0012\u0014\u0008\u0002\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u000cJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J#\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/swmansion/pulsar/types/PatternData;",
        "",
        "continuousPattern",
        "Lcom/swmansion/pulsar/types/ContinuousPattern;",
        "discretePattern",
        "",
        "Lcom/swmansion/pulsar/types/ConfigPoint;",
        "<init>",
        "(Lcom/swmansion/pulsar/types/ContinuousPattern;Ljava/util/List;)V",
        "rawContinuousPattern",
        "",
        "rawDiscretePattern",
        "(Ljava/util/List;Ljava/util/List;)V",
        "getContinuousPattern",
        "()Lcom/swmansion/pulsar/types/ContinuousPattern;",
        "getDiscretePattern",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final continuousPattern:Lcom/swmansion/pulsar/types/ContinuousPattern;

.field private final discretePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ConfigPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/types/ContinuousPattern;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/pulsar/types/ContinuousPattern;",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ConfigPoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "continuousPattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discretePattern"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/swmansion/pulsar/types/PatternData;->continuousPattern:Lcom/swmansion/pulsar/types/ContinuousPattern;

    .line 42
    iput-object p2, p0, Lcom/swmansion/pulsar/types/PatternData;->discretePattern:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;>;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "rawContinuousPattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawDiscretePattern"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 54
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 55
    check-cast v4, Ljava/util/List;

    .line 46
    new-instance v6, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    float-to-long v7, v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-direct {v6, v7, v8, v4}, Lcom/swmansion/pulsar/types/ValuePoint;-><init>(JF)V

    .line 55
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 47
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 58
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 59
    check-cast v4, Ljava/util/List;

    .line 47
    new-instance v6, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    float-to-long v7, v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-direct {v6, v7, v8, v4}, Lcom/swmansion/pulsar/types/ValuePoint;-><init>(JF)V

    .line 59
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 45
    new-instance p1, Lcom/swmansion/pulsar/types/ContinuousPattern;

    invoke-direct {p1, v2, v1}, Lcom/swmansion/pulsar/types/ContinuousPattern;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 49
    check-cast p2, Ljava/lang/Iterable;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 62
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 63
    check-cast v2, Ljava/util/List;

    .line 49
    new-instance v3, Lcom/swmansion/pulsar/types/ConfigPoint;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    float-to-long v6, v4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v8, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-direct {v3, v6, v7, v4, v2}, Lcom/swmansion/pulsar/types/ConfigPoint;-><init>(JFF)V

    .line 63
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 64
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 44
    invoke-direct {p0, p1, v1}, Lcom/swmansion/pulsar/types/PatternData;-><init>(Lcom/swmansion/pulsar/types/ContinuousPattern;Ljava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x2

    if-eqz p4, :cond_0

    .line 44
    new-array p1, v0, [Ljava/util/List;

    const/4 p4, 0x0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    aput-object v1, p1, p4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    const/4 v1, 0x1

    aput-object p4, p1, v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/2addr p3, v0

    if-eqz p3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/swmansion/pulsar/types/PatternData;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/swmansion/pulsar/types/PatternData;Lcom/swmansion/pulsar/types/ContinuousPattern;Ljava/util/List;ILjava/lang/Object;)Lcom/swmansion/pulsar/types/PatternData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/swmansion/pulsar/types/PatternData;->continuousPattern:Lcom/swmansion/pulsar/types/ContinuousPattern;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/swmansion/pulsar/types/PatternData;->discretePattern:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/swmansion/pulsar/types/PatternData;->copy(Lcom/swmansion/pulsar/types/ContinuousPattern;Ljava/util/List;)Lcom/swmansion/pulsar/types/PatternData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/swmansion/pulsar/types/ContinuousPattern;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/pulsar/types/PatternData;->continuousPattern:Lcom/swmansion/pulsar/types/ContinuousPattern;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ConfigPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/swmansion/pulsar/types/PatternData;->discretePattern:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/swmansion/pulsar/types/ContinuousPattern;Ljava/util/List;)Lcom/swmansion/pulsar/types/PatternData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/pulsar/types/ContinuousPattern;",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ConfigPoint;",
            ">;)",
            "Lcom/swmansion/pulsar/types/PatternData;"
        }
    .end annotation

    const-string v0, "continuousPattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discretePattern"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/swmansion/pulsar/types/PatternData;

    invoke-direct {v0, p1, p2}, Lcom/swmansion/pulsar/types/PatternData;-><init>(Lcom/swmansion/pulsar/types/ContinuousPattern;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/swmansion/pulsar/types/PatternData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/swmansion/pulsar/types/PatternData;

    iget-object v1, p0, Lcom/swmansion/pulsar/types/PatternData;->continuousPattern:Lcom/swmansion/pulsar/types/ContinuousPattern;

    iget-object v3, p1, Lcom/swmansion/pulsar/types/PatternData;->continuousPattern:Lcom/swmansion/pulsar/types/ContinuousPattern;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/swmansion/pulsar/types/PatternData;->discretePattern:Ljava/util/List;

    iget-object p1, p1, Lcom/swmansion/pulsar/types/PatternData;->discretePattern:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getContinuousPattern()Lcom/swmansion/pulsar/types/ContinuousPattern;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/swmansion/pulsar/types/PatternData;->continuousPattern:Lcom/swmansion/pulsar/types/ContinuousPattern;

    return-object v0
.end method

.method public final getDiscretePattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ConfigPoint;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/swmansion/pulsar/types/PatternData;->discretePattern:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/swmansion/pulsar/types/PatternData;->continuousPattern:Lcom/swmansion/pulsar/types/ContinuousPattern;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/ContinuousPattern;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/swmansion/pulsar/types/PatternData;->discretePattern:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/swmansion/pulsar/types/PatternData;->continuousPattern:Lcom/swmansion/pulsar/types/ContinuousPattern;

    iget-object v1, p0, Lcom/swmansion/pulsar/types/PatternData;->discretePattern:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PatternData(continuousPattern="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", discretePattern="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
