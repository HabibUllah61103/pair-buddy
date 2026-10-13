.class public final Lexpo/modules/imagemanipulator/transformers/FlipTransformer;
.super Ljava/lang/Object;
.source "FlipTransformer.kt"

# interfaces
.implements Lexpo/modules/imagemanipulator/transformers/ImageTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/imagemanipulator/transformers/FlipTransformer$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/imagemanipulator/transformers/FlipTransformer;",
        "Lexpo/modules/imagemanipulator/transformers/ImageTransformer;",
        "flipType",
        "Lexpo/modules/imagemanipulator/FlipType;",
        "<init>",
        "(Lexpo/modules/imagemanipulator/FlipType;)V",
        "transform",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "rotationMatrix",
        "Landroid/graphics/Matrix;",
        "getRotationMatrix",
        "()Landroid/graphics/Matrix;",
        "expo-image-manipulator_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final flipType:Lexpo/modules/imagemanipulator/FlipType;


# direct methods
.method public constructor <init>(Lexpo/modules/imagemanipulator/FlipType;)V
    .locals 1

    const-string v0, "flipType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lexpo/modules/imagemanipulator/transformers/FlipTransformer;->flipType:Lexpo/modules/imagemanipulator/FlipType;

    return-void
.end method

.method private final getRotationMatrix()Landroid/graphics/Matrix;
    .locals 5

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    iget-object v1, p0, Lexpo/modules/imagemanipulator/transformers/FlipTransformer;->flipType:Lexpo/modules/imagemanipulator/FlipType;

    sget-object v2, Lexpo/modules/imagemanipulator/transformers/FlipTransformer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lexpo/modules/imagemanipulator/FlipType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 18
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 17
    :cond_1
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object v0
.end method


# virtual methods
.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p0}, Lexpo/modules/imagemanipulator/transformers/FlipTransformer;->getRotationMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
