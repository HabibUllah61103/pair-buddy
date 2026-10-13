.class public final Lexpo/modules/image/svg/SVGDecoder;
.super Ljava/lang/Object;
.source "SVGDecoder.kt"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/io/InputStream;",
        "Lcom/caverock/androidsvg/SVG;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J0\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000c2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/image/svg/SVGDecoder;",
        "Lcom/bumptech/glide/load/ResourceDecoder;",
        "Ljava/io/InputStream;",
        "Lcom/caverock/androidsvg/SVG;",
        "<init>",
        "()V",
        "handles",
        "",
        "source",
        "options",
        "Lcom/bumptech/glide/load/Options;",
        "decode",
        "Lcom/bumptech/glide/load/engine/Resource;",
        "width",
        "",
        "height",
        "expo-image_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/caverock/androidsvg/SVG;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    :try_start_0
    invoke-static {p1}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object p1

    const-string p4, "getFromInputStream(...)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getDocumentViewBox()Landroid/graphics/RectF;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_2

    .line 28
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getDocumentWidth()F

    move-result p4

    .line 29
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getDocumentHeight()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v3, p4, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v2, v1, v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1, v0, v0, p4, v1}, Lcom/caverock/androidsvg/SVG;->setDocumentViewBox(FFFF)V

    .line 36
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getDocumentViewBox()Landroid/graphics/RectF;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 37
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_7

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_7

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-lez p2, :cond_3

    int-to-float p2, p2

    .line 38
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr p2, v2

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    if-lez p3, :cond_4

    int-to-float p3, p3

    .line 39
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v1, p3, v1

    .line 40
    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float p3, p3, v2

    if-gtz p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, v2

    if-gtz p3, :cond_6

    :goto_2
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_3

    :cond_6
    const/high16 p2, 0x3f800000    # 1.0f

    .line 41
    :goto_3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, v2

    if-gtz p3, :cond_8

    cmpl-float p3, p2, v0

    if-lez p3, :cond_8

    .line 42
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p3

    mul-float/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/caverock/androidsvg/SVG;->setDocumentWidth(F)V

    .line 43
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/caverock/androidsvg/SVG;->setDocumentHeight(F)V

    goto :goto_4

    :cond_7
    if-lez p2, :cond_8

    if-lez p3, :cond_8

    int-to-float p2, p2

    .line 47
    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/SVG;->setDocumentWidth(F)V

    int-to-float p2, p3

    .line 48
    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/SVG;->setDocumentHeight(F)V

    .line 51
    :cond_8
    :goto_4
    new-instance p2, Lcom/bumptech/glide/load/resource/SimpleResource;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/resource/SimpleResource;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 53
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Cannot load SVG from stream"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0

    .line 18
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/image/svg/SVGDecoder;->decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/io/InputStream;Lcom/bumptech/glide/load/Options;)Z
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "options"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 0

    .line 18
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/image/svg/SVGDecoder;->handles(Ljava/io/InputStream;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method
