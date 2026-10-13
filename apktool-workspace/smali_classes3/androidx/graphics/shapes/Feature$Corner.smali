.class public final Landroidx/graphics/shapes/Feature$Corner;
.super Landroidx/graphics/shapes/Feature;
.source "Features.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Corner"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0000H\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0011\u001a\u00020\u0006X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\nR\u0014\u0010\u0012\u001a\u00020\u0006X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\nR\u0014\u0010\u0013\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\nR\u0014\u0010\u0014\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/graphics/shapes/Feature$Corner;",
        "Landroidx/graphics/shapes/Feature;",
        "cubics",
        "",
        "Landroidx/graphics/shapes/Cubic;",
        "convex",
        "",
        "<init>",
        "(Ljava/util/List;Z)V",
        "getConvex",
        "()Z",
        "transformed",
        "f",
        "Landroidx/graphics/shapes/PointTransformer;",
        "reversed",
        "toString",
        "",
        "isIgnorableFeature",
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
.field private final convex:Z

.field private final isConcaveCorner:Z

.field private final isConvexCorner:Z

.field private final isEdge:Z

.field private final isIgnorableFeature:Z


# direct methods
.method public static synthetic $r8$lambda$3itHum2exH0n5dznHLDL-lcax08(Landroidx/graphics/shapes/Cubic;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Landroidx/graphics/shapes/Feature$Corner;->toString$lambda$1(Landroidx/graphics/shapes/Cubic;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/graphics/shapes/Cubic;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "cubics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p1}, Landroidx/graphics/shapes/Feature;-><init>(Ljava/util/List;)V

    iput-boolean p2, p0, Landroidx/graphics/shapes/Feature$Corner;->convex:Z

    .line 220
    iput-boolean p2, p0, Landroidx/graphics/shapes/Feature$Corner;->isConvexCorner:Z

    xor-int/lit8 p1, p2, 0x1

    .line 222
    iput-boolean p1, p0, Landroidx/graphics/shapes/Feature$Corner;->isConcaveCorner:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 186
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method private static final toString$lambda$1(Landroidx/graphics/shapes/Cubic;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final getConvex()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Landroidx/graphics/shapes/Feature$Corner;->convex:Z

    return v0
.end method

.method public isConcaveCorner()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Landroidx/graphics/shapes/Feature$Corner;->isConcaveCorner:Z

    return v0
.end method

.method public isConvexCorner()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Landroidx/graphics/shapes/Feature$Corner;->isConvexCorner:Z

    return v0
.end method

.method public isEdge()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Landroidx/graphics/shapes/Feature$Corner;->isEdge:Z

    return v0
.end method

.method public isIgnorableFeature()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Landroidx/graphics/shapes/Feature$Corner;->isIgnorableFeature:Z

    return v0
.end method

.method public reversed()Landroidx/graphics/shapes/Feature$Corner;
    .locals 3

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 203
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Corner;->getCubics()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Corner;->getCubics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->reverse()Landroidx/graphics/shapes/Cubic;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 209
    :cond_0
    new-instance v1, Landroidx/graphics/shapes/Feature$Corner;

    iget-boolean v2, p0, Landroidx/graphics/shapes/Feature$Corner;->convex:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method public bridge synthetic reversed()Landroidx/graphics/shapes/Feature;
    .locals 1

    .line 186
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Corner;->reversed()Landroidx/graphics/shapes/Feature$Corner;

    move-result-object v0

    check-cast v0, Landroidx/graphics/shapes/Feature;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Corner: cubics="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Corner;->getCubics()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, ", "

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v8, Landroidx/graphics/shapes/Feature$Corner$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Landroidx/graphics/shapes/Feature$Corner$$ExternalSyntheticLambda0;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " convex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/graphics/shapes/Feature$Corner;->convex:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Feature;
    .locals 4

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Corner;->getCubics()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Corner;->getCubics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v3, p1}, Landroidx/graphics/shapes/Cubic;->transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Cubic;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 196
    iget-boolean v0, p0, Landroidx/graphics/shapes/Feature$Corner;->convex:Z

    .line 188
    new-instance v1, Landroidx/graphics/shapes/Feature$Corner;

    invoke-direct {v1, p1, v0}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;Z)V

    check-cast v1, Landroidx/graphics/shapes/Feature;

    return-object v1
.end method
