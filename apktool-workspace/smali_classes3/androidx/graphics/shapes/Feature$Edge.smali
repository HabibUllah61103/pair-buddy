.class public final Landroidx/graphics/shapes/Feature$Edge;
.super Landroidx/graphics/shapes/Feature;
.source "Features.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Edge"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0000H\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u0014\u0010\r\u001a\u00020\u000eX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u000eX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u000eX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u000eX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/graphics/shapes/Feature$Edge;",
        "Landroidx/graphics/shapes/Feature;",
        "cubics",
        "",
        "Landroidx/graphics/shapes/Cubic;",
        "<init>",
        "(Ljava/util/List;)V",
        "transformed",
        "f",
        "Landroidx/graphics/shapes/PointTransformer;",
        "reversed",
        "toString",
        "",
        "isIgnorableFeature",
        "",
        "()Z",
        "isEdge",
        "isConvexCorner",
        "isConcaveCorner",
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
.field private final isConcaveCorner:Z

.field private final isConvexCorner:Z

.field private final isEdge:Z

.field private final isIgnorableFeature:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/graphics/shapes/Cubic;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cubics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p1}, Landroidx/graphics/shapes/Feature;-><init>(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Landroidx/graphics/shapes/Feature$Edge;->isIgnorableFeature:Z

    .line 173
    iput-boolean p1, p0, Landroidx/graphics/shapes/Feature$Edge;->isEdge:Z

    return-void
.end method


# virtual methods
.method public isConcaveCorner()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Landroidx/graphics/shapes/Feature$Edge;->isConcaveCorner:Z

    return v0
.end method

.method public isConvexCorner()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Landroidx/graphics/shapes/Feature$Edge;->isConvexCorner:Z

    return v0
.end method

.method public isEdge()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Landroidx/graphics/shapes/Feature$Edge;->isEdge:Z

    return v0
.end method

.method public isIgnorableFeature()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Landroidx/graphics/shapes/Feature$Edge;->isIgnorableFeature:Z

    return v0
.end method

.method public reversed()Landroidx/graphics/shapes/Feature$Edge;
    .locals 3

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 162
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Edge;->getCubics()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Edge;->getCubics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->reverse()Landroidx/graphics/shapes/Cubic;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 166
    :cond_0
    new-instance v1, Landroidx/graphics/shapes/Feature$Edge;

    invoke-direct {v1, v0}, Landroidx/graphics/shapes/Feature$Edge;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic reversed()Landroidx/graphics/shapes/Feature;
    .locals 1

    .line 147
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Edge;->reversed()Landroidx/graphics/shapes/Feature$Edge;

    move-result-object v0

    check-cast v0, Landroidx/graphics/shapes/Feature;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 169
    const-string v0, "Edge"

    return-object v0
.end method

.method public transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Feature$Edge;
    .locals 4

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Edge;->getCubics()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Edge;->getCubics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v3, p1}, Landroidx/graphics/shapes/Cubic;->transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Cubic;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 149
    new-instance v0, Landroidx/graphics/shapes/Feature$Edge;

    invoke-direct {v0, p1}, Landroidx/graphics/shapes/Feature$Edge;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Feature;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/Feature$Edge;->transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Feature$Edge;

    move-result-object p1

    check-cast p1, Landroidx/graphics/shapes/Feature;

    return-object p1
.end method
