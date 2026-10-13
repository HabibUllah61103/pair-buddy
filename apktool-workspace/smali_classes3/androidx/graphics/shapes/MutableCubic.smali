.class public final Landroidx/graphics/shapes/MutableCubic;
.super Landroidx/graphics/shapes/Cubic;
.source "Cubic.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCubic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cubic.kt\nandroidx/graphics/shapes/MutableCubic\n+ 2 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 3 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,459:1\n51#2:460\n55#2:462\n22#3:461\n22#3:463\n1#4:464\n*S KotlinDebug\n*F\n+ 1 Cubic.kt\nandroidx/graphics/shapes/MutableCubic\n*L\n444#1:460\n445#1:462\n444#1:461\n445#1:463\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u001e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/graphics/shapes/MutableCubic;",
        "Landroidx/graphics/shapes/Cubic;",
        "<init>",
        "()V",
        "transformOnePoint",
        "",
        "f",
        "Landroidx/graphics/shapes/PointTransformer;",
        "ix",
        "",
        "transform",
        "interpolate",
        "c1",
        "c2",
        "progress",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 441
    invoke-direct {p0, v0, v1, v0}, Landroidx/graphics/shapes/Cubic;-><init>([FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final transformOnePoint(Landroidx/graphics/shapes/PointTransformer;I)V
    .locals 5

    .line 443
    invoke-virtual {p0}, Landroidx/graphics/shapes/MutableCubic;->getPoints$graphics_shapes()[F

    move-result-object v0

    aget v0, v0, p2

    invoke-virtual {p0}, Landroidx/graphics/shapes/MutableCubic;->getPoints$graphics_shapes()[F

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Landroidx/graphics/shapes/PointTransformer;->transform-XgqJiTY(FF)J

    move-result-wide v0

    .line 444
    invoke-virtual {p0}, Landroidx/graphics/shapes/MutableCubic;->getPoints$graphics_shapes()[F

    move-result-object p1

    const/16 v3, 0x20

    shr-long v3, v0, v3

    long-to-int v3, v3

    .line 461
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 460
    aput v3, p1, p2

    .line 445
    invoke-virtual {p0}, Landroidx/graphics/shapes/MutableCubic;->getPoints$graphics_shapes()[F

    move-result-object p1

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    long-to-int p2, v0

    .line 463
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 462
    aput p2, p1, v2

    return-void
.end method


# virtual methods
.method public final interpolate(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/Cubic;F)V
    .locals 4

    const-string v0, "c1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 456
    invoke-virtual {p0}, Landroidx/graphics/shapes/MutableCubic;->getPoints$graphics_shapes()[F

    move-result-object v1

    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes()[F

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {p2}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes()[F

    move-result-object v3

    aget v3, v3, v0

    invoke-static {v2, v3, p3}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final transform(Landroidx/graphics/shapes/PointTransformer;)V
    .locals 1

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 449
    invoke-direct {p0, p1, v0}, Landroidx/graphics/shapes/MutableCubic;->transformOnePoint(Landroidx/graphics/shapes/PointTransformer;I)V

    const/4 v0, 0x2

    .line 450
    invoke-direct {p0, p1, v0}, Landroidx/graphics/shapes/MutableCubic;->transformOnePoint(Landroidx/graphics/shapes/PointTransformer;I)V

    const/4 v0, 0x4

    .line 451
    invoke-direct {p0, p1, v0}, Landroidx/graphics/shapes/MutableCubic;->transformOnePoint(Landroidx/graphics/shapes/PointTransformer;I)V

    const/4 v0, 0x6

    .line 452
    invoke-direct {p0, p1, v0}, Landroidx/graphics/shapes/MutableCubic;->transformOnePoint(Landroidx/graphics/shapes/PointTransformer;I)V

    return-void
.end method
