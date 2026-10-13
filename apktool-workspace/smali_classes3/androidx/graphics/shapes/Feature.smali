.class public abstract Landroidx/graphics/shapes/Feature;
.super Ljava/lang/Object;
.source "Features.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/Feature$Corner;,
        Landroidx/graphics/shapes/Feature$Edge;,
        Landroidx/graphics/shapes/Feature$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008&\u0018\u0000 \u00132\u00020\u0001:\u0003\u0013\u0014\u0015B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\u0000H&R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0012\u0010\r\u001a\u00020\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000fR\u0012\u0010\u0011\u001a\u00020\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0012\u0010\u0012\u001a\u00020\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/graphics/shapes/Feature;",
        "",
        "cubics",
        "",
        "Landroidx/graphics/shapes/Cubic;",
        "<init>",
        "(Ljava/util/List;)V",
        "getCubics",
        "()Ljava/util/List;",
        "transformed",
        "f",
        "Landroidx/graphics/shapes/PointTransformer;",
        "reversed",
        "isIgnorableFeature",
        "",
        "()Z",
        "isEdge",
        "isConvexCorner",
        "isConcaveCorner",
        "Factory",
        "Edge",
        "Corner",
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


# static fields
.field public static final Factory:Landroidx/graphics/shapes/Feature$Factory;


# instance fields
.field private final cubics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Cubic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/shapes/Feature$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/shapes/Feature$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/Feature;->Factory:Landroidx/graphics/shapes/Feature$Factory;

    return-void
.end method

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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/shapes/Feature;->cubics:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCubics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Cubic;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Landroidx/graphics/shapes/Feature;->cubics:Ljava/util/List;

    return-object v0
.end method

.method public abstract isConcaveCorner()Z
.end method

.method public abstract isConvexCorner()Z
.end method

.method public abstract isEdge()Z
.end method

.method public abstract isIgnorableFeature()Z
.end method

.method public abstract reversed()Landroidx/graphics/shapes/Feature;
.end method

.method public abstract transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Feature;
.end method
