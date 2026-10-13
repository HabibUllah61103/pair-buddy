.class public final Landroidx/graphics/shapes/FloatMappingKt;
.super Ljava/lang/Object;
.source "FloatMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FloatList.kt\nandroidx/collection/FloatList\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,126:1\n1#2:127\n74#3:128\n65#3:130\n65#3:132\n65#3:133\n230#4:129\n231#4:131\n*S KotlinDebug\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n*L\n44#1:128\n44#1:130\n45#1:132\n105#1:133\n44#1:129\n44#1:131\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0000\u001a \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008H\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "progressInRange",
        "",
        "progress",
        "",
        "progressFrom",
        "progressTo",
        "linearMap",
        "xValues",
        "Landroidx/collection/FloatList;",
        "yValues",
        "x",
        "validateProgress",
        "",
        "p",
        "progressDistance",
        "p1",
        "p2",
        "graphics-shapes"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final linearMap(Landroidx/collection/FloatList;Landroidx/collection/FloatList;F)F
    .locals 6

    const-string/jumbo v0, "xValues"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "yValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    .line 128
    iget v2, p0, Landroidx/collection/FloatList;->_size:I

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 129
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 44
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->get(I)F

    move-result v3

    add-int/lit8 v4, v2, 0x1

    .line 130
    iget v5, p0, Landroidx/collection/FloatList;->_size:I

    .line 44
    rem-int v5, v4, v5

    invoke-virtual {p0, v5}, Landroidx/collection/FloatList;->get(I)F

    move-result v5

    invoke-static {p2, v3, v5}, Landroidx/graphics/shapes/FloatMappingKt;->progressInRange(FFF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    iget v1, p0, Landroidx/collection/FloatList;->_size:I

    .line 45
    rem-int/2addr v4, v1

    .line 46
    invoke-virtual {p0, v4}, Landroidx/collection/FloatList;->get(I)F

    move-result v1

    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->get(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1, v0}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result v1

    .line 47
    invoke-virtual {p1, v4}, Landroidx/collection/FloatList;->get(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroidx/collection/FloatList;->get(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3, v0}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->get(I)F

    move-result p0

    sub-float/2addr p2, p0

    invoke-static {p2, v0}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result p0

    div-float/2addr p0, v1

    .line 52
    :goto_0
    invoke-virtual {p1, v2}, Landroidx/collection/FloatList;->get(I)F

    move-result p1

    mul-float/2addr v3, p0

    add-float/2addr p1, v3

    invoke-static {p1, v0}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result p0

    return p0

    .line 131
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid progress: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final progressDistance(FF)F
    .locals 0

    sub-float/2addr p0, p1

    .line 125
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static final progressInRange(FFF)Z
    .locals 3

    cmpl-float v0, p2, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    cmpg-float p1, p1, p0

    if-gtz p1, :cond_0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    cmpl-float p1, p0, p1

    if-gez p1, :cond_3

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public static final validateProgress(Landroidx/collection/FloatList;)V
    .locals 11

    const-string v0, "p"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroidx/collection/FloatList;->last()F

    move-result v0

    .line 133
    iget v1, p0, Landroidx/collection/FloatList;->_size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_4

    .line 106
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->get(I)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    .line 110
    invoke-static {v4, v0}, Landroidx/graphics/shapes/FloatMappingKt;->progressDistance(FF)F

    move-result v5

    const v6, 0x38d1b717    # 1.0E-4f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    cmpg-float v0, v4, v0

    if-gez v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x1

    if-gt v3, v0, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatMapping - Progress wraps more than once: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Landroidx/collection/FloatList;->joinToString$default(Landroidx/collection/FloatList;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    move v10, v1

    move-object v1, p0

    move p0, v10

    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    move v1, p0

    move-object p0, v0

    move v0, v4

    goto :goto_0

    :cond_2
    move-object v1, p0

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "FloatMapping - Progress repeats a value: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/collection/FloatList;->joinToString$default(Landroidx/collection/FloatList;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v1, p0

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "FloatMapping - Progress outside of range: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/collection/FloatList;->joinToString$default(Landroidx/collection/FloatList;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method
