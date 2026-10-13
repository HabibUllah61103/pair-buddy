.class public final Lexpo/modules/imagemanipulator/transformers/CropTransformer;
.super Ljava/lang/Object;
.source "CropTransformer.kt"

# interfaces
.implements Lexpo/modules/imagemanipulator/transformers/ImageTransformer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/imagemanipulator/transformers/CropTransformer;",
        "Lexpo/modules/imagemanipulator/transformers/ImageTransformer;",
        "rect",
        "Lexpo/modules/imagemanipulator/CropRect;",
        "<init>",
        "(Lexpo/modules/imagemanipulator/CropRect;)V",
        "transform",
        "Landroid/graphics/Bitmap;",
        "bitmap",
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
.field private final rect:Lexpo/modules/imagemanipulator/CropRect;


# direct methods
.method public constructor <init>(Lexpo/modules/imagemanipulator/CropRect;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lexpo/modules/imagemanipulator/transformers/CropTransformer;->rect:Lexpo/modules/imagemanipulator/CropRect;

    return-void
.end method


# virtual methods
.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lexpo/modules/imagemanipulator/transformers/CropTransformer;->rect:Lexpo/modules/imagemanipulator/CropRect;

    invoke-virtual {v0}, Lexpo/modules/imagemanipulator/CropRect;->getOriginX()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 12
    iget-object v0, p0, Lexpo/modules/imagemanipulator/transformers/CropTransformer;->rect:Lexpo/modules/imagemanipulator/CropRect;

    invoke-virtual {v0}, Lexpo/modules/imagemanipulator/CropRect;->getOriginY()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 13
    iget-object v0, p0, Lexpo/modules/imagemanipulator/transformers/CropTransformer;->rect:Lexpo/modules/imagemanipulator/CropRect;

    invoke-virtual {v0}, Lexpo/modules/imagemanipulator/CropRect;->getWidth()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 14
    iget-object v0, p0, Lexpo/modules/imagemanipulator/transformers/CropTransformer;->rect:Lexpo/modules/imagemanipulator/CropRect;

    invoke-virtual {v0}, Lexpo/modules/imagemanipulator/CropRect;->getHeight()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 19
    iget-object v0, p0, Lexpo/modules/imagemanipulator/transformers/CropTransformer;->rect:Lexpo/modules/imagemanipulator/CropRect;

    invoke-virtual {v0}, Lexpo/modules/imagemanipulator/CropRect;->getOriginX()D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lexpo/modules/imagemanipulator/transformers/CropTransformer;->rect:Lexpo/modules/imagemanipulator/CropRect;

    invoke-virtual {v1}, Lexpo/modules/imagemanipulator/CropRect;->getOriginY()D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lexpo/modules/imagemanipulator/transformers/CropTransformer;->rect:Lexpo/modules/imagemanipulator/CropRect;

    invoke-virtual {v2}, Lexpo/modules/imagemanipulator/CropRect;->getWidth()D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lexpo/modules/imagemanipulator/transformers/CropTransformer;->rect:Lexpo/modules/imagemanipulator/CropRect;

    invoke-virtual {v3}, Lexpo/modules/imagemanipulator/CropRect;->getHeight()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {p1, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Lexpo/modules/imagemanipulator/ImageInvalidCropException;

    invoke-direct {p1}, Lexpo/modules/imagemanipulator/ImageInvalidCropException;-><init>()V

    throw p1
.end method
