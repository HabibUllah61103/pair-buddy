.class final Landroidx/graphics/shapes/MappingHelper;
.super Ljava/lang/Object;
.source "FeatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeatureMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureMapping.kt\nandroidx/graphics/shapes/MappingHelper\n+ 2 Collections.kt\nkotlin/collections/CollectionsKt__CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n403#2,7:188\n1#3:195\n*S KotlinDebug\n*F\n+ 1 FeatureMapping.kt\nandroidx/graphics/shapes/MappingHelper\n*L\n129#1:188,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000cR#\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/graphics/shapes/MappingHelper;",
        "",
        "<init>",
        "()V",
        "mapping",
        "",
        "Lkotlin/Pair;",
        "",
        "getMapping",
        "()Ljava/util/List;",
        "usedF1",
        "",
        "Landroidx/graphics/shapes/ProgressableFeature;",
        "usedF2",
        "addMapping",
        "",
        "f1",
        "f2",
        "graphics-shapes"
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
.field private final mapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final usedF1:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/graphics/shapes/ProgressableFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final usedF2:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/graphics/shapes/ProgressableFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/graphics/shapes/MappingHelper;->mapping:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroidx/graphics/shapes/MappingHelper;->usedF1:Ljava/util/Set;

    .line 122
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroidx/graphics/shapes/MappingHelper;->usedF2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addMapping(Landroidx/graphics/shapes/ProgressableFeature;Landroidx/graphics/shapes/ProgressableFeature;)V
    .locals 8

    const-string v0, "f1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Landroidx/graphics/shapes/MappingHelper;->usedF1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/graphics/shapes/MappingHelper;->usedF2:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Landroidx/graphics/shapes/MappingHelper;->mapping:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/graphics/shapes/ProgressableFeature;->getProgress()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 191
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 194
    new-instance v3, Landroidx/graphics/shapes/MappingHelper$addMapping$$inlined$binarySearchBy$default$1;

    invoke-direct {v3, v1}, Landroidx/graphics/shapes/MappingHelper$addMapping$$inlined$binarySearchBy$default$1;-><init>(Ljava/lang/Comparable;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlin/collections/CollectionsKt;->binarySearch(Ljava/util/List;IILkotlin/jvm/functions/Function1;)I

    move-result v0

    if-gez v0, :cond_3

    neg-int v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 133
    iget-object v2, p0, Landroidx/graphics/shapes/MappingHelper;->mapping:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_2

    .line 137
    iget-object v3, p0, Landroidx/graphics/shapes/MappingHelper;->mapping:Ljava/util/List;

    add-int v4, v0, v2

    sub-int/2addr v4, v1

    rem-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 138
    iget-object v5, p0, Landroidx/graphics/shapes/MappingHelper;->mapping:Ljava/util/List;

    rem-int v6, v0, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 143
    invoke-virtual {p1}, Landroidx/graphics/shapes/ProgressableFeature;->getProgress()F

    move-result v7

    invoke-static {v7, v4}, Landroidx/graphics/shapes/FloatMappingKt;->progressDistance(FF)F

    move-result v4

    const v7, 0x38d1b717    # 1.0E-4f

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_4

    .line 144
    invoke-virtual {p1}, Landroidx/graphics/shapes/ProgressableFeature;->getProgress()F

    move-result v4

    invoke-static {v4, v6}, Landroidx/graphics/shapes/FloatMappingKt;->progressDistance(FF)F

    move-result v4

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_4

    .line 145
    invoke-virtual {p2}, Landroidx/graphics/shapes/ProgressableFeature;->getProgress()F

    move-result v4

    invoke-static {v4, v3}, Landroidx/graphics/shapes/FloatMappingKt;->progressDistance(FF)F

    move-result v4

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_4

    .line 146
    invoke-virtual {p2}, Landroidx/graphics/shapes/ProgressableFeature;->getProgress()F

    move-result v4

    invoke-static {v4, v5}, Landroidx/graphics/shapes/FloatMappingKt;->progressDistance(FF)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    if-le v2, v1, :cond_2

    .line 152
    invoke-virtual {p2}, Landroidx/graphics/shapes/ProgressableFeature;->getProgress()F

    move-result v1

    invoke-static {v1, v3, v5}, Landroidx/graphics/shapes/FloatMappingKt;->progressInRange(FFF)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Landroidx/graphics/shapes/MappingHelper;->mapping:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/graphics/shapes/ProgressableFeature;->getProgress()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/graphics/shapes/ProgressableFeature;->getProgress()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    iget-object v0, p0, Landroidx/graphics/shapes/MappingHelper;->usedF1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Landroidx/graphics/shapes/MappingHelper;->usedF2:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 130
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "There can\'t be two features with the same progress"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public final getMapping()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroidx/graphics/shapes/MappingHelper;->mapping:Ljava/util/List;

    return-object v0
.end method
