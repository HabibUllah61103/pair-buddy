.class public final Lexpo/modules/imagemanipulator/transformers/ResizeTransformer;
.super Ljava/lang/Object;
.source "ResizeTransformer.kt"

# interfaces
.implements Lexpo/modules/imagemanipulator/transformers/ImageTransformer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/imagemanipulator/transformers/ResizeTransformer;",
        "Lexpo/modules/imagemanipulator/transformers/ImageTransformer;",
        "resizeOptions",
        "Lexpo/modules/imagemanipulator/ResizeOptions;",
        "<init>",
        "(Lexpo/modules/imagemanipulator/ResizeOptions;)V",
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
.field private final resizeOptions:Lexpo/modules/imagemanipulator/ResizeOptions;


# direct methods
.method public constructor <init>(Lexpo/modules/imagemanipulator/ResizeOptions;)V
    .locals 1

    const-string v0, "resizeOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lexpo/modules/imagemanipulator/transformers/ResizeTransformer;->resizeOptions:Lexpo/modules/imagemanipulator/ResizeOptions;

    return-void
.end method


# virtual methods
.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 15
    iget-object v2, p0, Lexpo/modules/imagemanipulator/transformers/ResizeTransformer;->resizeOptions:Lexpo/modules/imagemanipulator/ResizeOptions;

    invoke-virtual {v2}, Lexpo/modules/imagemanipulator/ResizeOptions;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 16
    iget-object v2, p0, Lexpo/modules/imagemanipulator/transformers/ResizeTransformer;->resizeOptions:Lexpo/modules/imagemanipulator/ResizeOptions;

    invoke-virtual {v2}, Lexpo/modules/imagemanipulator/ResizeOptions;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 17
    iget-object v3, p0, Lexpo/modules/imagemanipulator/transformers/ResizeTransformer;->resizeOptions:Lexpo/modules/imagemanipulator/ResizeOptions;

    invoke-virtual {v3}, Lexpo/modules/imagemanipulator/ResizeOptions;->getWidth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v0

    double-to-int v3, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 20
    :goto_0
    iget-object v4, p0, Lexpo/modules/imagemanipulator/transformers/ResizeTransformer;->resizeOptions:Lexpo/modules/imagemanipulator/ResizeOptions;

    invoke-virtual {v4}, Lexpo/modules/imagemanipulator/ResizeOptions;->getHeight()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 21
    iget-object v3, p0, Lexpo/modules/imagemanipulator/transformers/ResizeTransformer;->resizeOptions:Lexpo/modules/imagemanipulator/ResizeOptions;

    invoke-virtual {v3}, Lexpo/modules/imagemanipulator/ResizeOptions;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v2, :cond_1

    .line 22
    iget-object v2, p0, Lexpo/modules/imagemanipulator/transformers/ResizeTransformer;->resizeOptions:Lexpo/modules/imagemanipulator/ResizeOptions;

    invoke-virtual {v2}, Lexpo/modules/imagemanipulator/ResizeOptions;->getHeight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v4, v2

    mul-double/2addr v4, v0

    double-to-int v2, v4

    :cond_1
    const/4 v0, 0x1

    .line 25
    invoke-static {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createScaledBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
