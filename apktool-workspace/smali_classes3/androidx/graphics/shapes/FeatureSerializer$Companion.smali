.class public final Landroidx/graphics/shapes/FeatureSerializer$Companion;
.super Ljava/lang/Object;
.source "FeatureSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/FeatureSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeatureSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureSerializer.kt\nandroidx/graphics/shapes/FeatureSerializer$Companion\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,288:1\n146#2,4:289\n146#2,4:293\n146#2,4:297\n146#2,4:301\n142#3:305\n131#3,12:306\n*S KotlinDebug\n*F\n+ 1 FeatureSerializer.kt\nandroidx/graphics/shapes/FeatureSerializer$Companion\n*L\n120#1:289,4\n125#1:293,4\n162#1:297,4\n200#1:301,4\n277#1:305\n277#1:306,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000c\n\u0002\u0008\u0004\n\u0002\u0010\u0019\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0007J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0008H\u0002J\u0016\u0010\r\u001a\u00020\u00052\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0007H\u0002J \u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J&\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00072\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u000c\u0010\u0016\u001a\u00020\u0005*\u00020\u0005H\u0002R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0018X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0018X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/graphics/shapes/FeatureSerializer$Companion;",
        "",
        "<init>",
        "()V",
        "serialize",
        "",
        "features",
        "",
        "Landroidx/graphics/shapes/Feature;",
        "parse",
        "serializedFeatures",
        "serializeFeature",
        "feature",
        "serializeCubics",
        "cubics",
        "Landroidx/graphics/shapes/Cubic;",
        "parseFeature",
        "serialized",
        "startIndex",
        "",
        "endIndex",
        "parseCubics",
        "removeTrailingZeroes",
        "SEPARATOR",
        "",
        "CONVEX_CORNER_CHAR",
        "CONCAVE_CORNER_CHAR",
        "EDGE_CHAR",
        "FEATURE_TAG_ARRAY",
        "",
        "LOG_TAG",
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
.method public static synthetic $r8$lambda$JtDP7XBgEhXu5VHz53PRtuouaDI(F)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->serializeCubics$lambda$7$lambda$6(F)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/shapes/FeatureSerializer$Companion;-><init>()V

    return-void
.end method

.method private final parseCubics(Ljava/lang/String;II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Cubic;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 221
    new-array v1, v0, [F

    .line 227
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move v4, p2

    move v6, v4

    move v5, v3

    :goto_0
    const/4 v7, 0x7

    .line 228
    const-string v8, "substring(...)"

    const/4 v9, 0x1

    if-ge v4, p3, :cond_2

    .line 230
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2c

    if-eq v10, v11, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v10, v5, 0x1

    .line 236
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v6, v4, 0x1

    if-ne v10, v0, :cond_1

    .line 242
    new-instance v4, Landroidx/graphics/shapes/Cubic;

    invoke-direct {v4, v1}, Landroidx/graphics/shapes/Cubic;-><init>([F)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x6

    .line 247
    aget v4, v1, v4

    .line 248
    aget v1, v1, v7

    .line 249
    new-array v7, v0, [F

    .line 250
    aput v4, v7, v3

    .line 251
    aput v1, v7, v9

    add-int/lit8 v5, v5, -0x5

    move-object v1, v7

    goto :goto_1

    :cond_1
    move v5, v10

    :goto_1
    move v4, v6

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v5, 0x1

    if-ne v3, v0, :cond_3

    .line 271
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    aput p1, v1, v7

    .line 272
    new-instance p1, Landroidx/graphics/shapes/Cubic;

    invoke-direct {p1, v1}, Landroidx/graphics/shapes/Cubic;-><init>([F)V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 261
    :cond_3
    :try_start_0
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v3

    goto :goto_2

    :catch_0
    sub-int/2addr v0, v5

    .line 267
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Received a feature with an insufficient amount of numbers for substring \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr p2, v9

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'. Wanted to create "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p2, v9

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " continuous cubic bezier curves for this feature, but the last one is missing "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " more numbers separated by \',\'."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 258
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final parseFeature(Ljava/lang/String;II)Landroidx/graphics/shapes/Feature;
    .locals 3

    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6e

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    .line 203
    new-instance v0, Landroidx/graphics/shapes/Feature$Edge;

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2, p3}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->parseCubics(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/graphics/shapes/Feature$Edge;-><init>(Ljava/util/List;)V

    check-cast v0, Landroidx/graphics/shapes/Feature;

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Landroidx/graphics/shapes/Feature$Corner;

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2, p3}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->parseCubics(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;Z)V

    check-cast v0, Landroidx/graphics/shapes/Feature;

    return-object v0

    .line 198
    :cond_1
    new-instance v0, Landroidx/graphics/shapes/Feature$Corner;

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2, p3}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->parseCubics(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;Z)V

    check-cast v0, Landroidx/graphics/shapes/Feature;

    return-object v0

    .line 194
    :cond_2
    new-instance v0, Landroidx/graphics/shapes/Feature$Edge;

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2, p3}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->parseCubics(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/graphics/shapes/Feature$Edge;-><init>(Ljava/util/List;)V

    check-cast v0, Landroidx/graphics/shapes/Feature;

    return-object v0
.end method

.method private final removeTrailingZeroes(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 305
    check-cast p1, Ljava/lang/CharSequence;

    .line 306
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const-string v2, ""

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v3, v0, -0x1

    .line 307
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 308
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_2

    .line 310
    :cond_2
    :goto_1
    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    .line 305
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 317
    check-cast p1, Ljava/lang/CharSequence;

    .line 306
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    :goto_3
    add-int/lit8 v3, v0, -0x1

    .line 307
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_4

    if-gez v3, :cond_3

    goto :goto_4

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 308
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_5

    .line 310
    :cond_5
    :goto_4
    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    .line 317
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final serializeCubics(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/graphics/shapes/Cubic;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/shapes/Cubic;

    .line 177
    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes()[F

    move-result-object v3

    .line 178
    const-string v2, ","

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    .line 180
    const-string v2, ""

    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;

    new-instance v9, Landroidx/graphics/shapes/FeatureSerializer$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Landroidx/graphics/shapes/FeatureSerializer$Companion$$ExternalSyntheticLambda0;-><init>()V

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    .line 177
    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([FLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 186
    :cond_0
    sget-object v1, Landroidx/graphics/shapes/FeatureSerializer;->Companion:Landroidx/graphics/shapes/FeatureSerializer$Companion;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->removeTrailingZeroes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    sget-object v2, Landroidx/graphics/shapes/FeatureSerializer;->Companion:Landroidx/graphics/shapes/FeatureSerializer$Companion;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->removeTrailingZeroes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final serializeCubics$lambda$7$lambda$6(F)Ljava/lang/CharSequence;
    .locals 1

    .line 182
    sget-object v0, Landroidx/graphics/shapes/FeatureSerializer;->Companion:Landroidx/graphics/shapes/FeatureSerializer$Companion;

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->removeTrailingZeroes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final serializeFeature(Landroidx/graphics/shapes/Feature;)Ljava/lang/String;
    .locals 2

    .line 154
    instance-of v0, p1, Landroidx/graphics/shapes/Feature$Edge;

    const-string v1, "n"

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->serializeCubics(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 157
    :cond_0
    instance-of v0, p1, Landroidx/graphics/shapes/Feature$Corner;

    if-eqz v0, :cond_2

    .line 158
    move-object v0, p1

    check-cast v0, Landroidx/graphics/shapes/Feature$Corner;

    invoke-virtual {v0}, Landroidx/graphics/shapes/Feature$Corner;->getConvex()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x78

    goto :goto_0

    :cond_1
    const/16 v0, 0x6f

    .line 159
    :goto_0
    invoke-virtual {p1}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->serializeCubics(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 165
    :cond_2
    invoke-virtual {p1}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->serializeCubics(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Feature;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "serializedFeatures"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^\\s*V(\\d+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 132
    :cond_1
    :goto_0
    new-instance v0, Lkotlin/text/Regex;

    const-string v2, "[a-zA-Z]"

    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 140
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_3

    .line 142
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v2

    .line 143
    invoke-interface {v0}, Lkotlin/text/MatchResult;->next()Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 145
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v3

    goto :goto_2

    .line 146
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 147
    :goto_2
    sget-object v4, Landroidx/graphics/shapes/FeatureSerializer;->Companion:Landroidx/graphics/shapes/FeatureSerializer$Companion;

    invoke-direct {v4, p1, v2, v3}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->parseFeature(Ljava/lang/String;II)Landroidx/graphics/shapes/Feature;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 140
    :cond_3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 134
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Could not find any feature tags. Please mark all cubic bezier curve points belonging to a feature with one of {"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroidx/graphics/shapes/FeatureSerializer;->access$getFEATURE_TAG_ARRAY$cp()[C

    move-result-object v1

    const-string v0, ", "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([CLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "} for V1, e.g. \'n1,1,2,2,3,3,4,4\' for an edge (n) with anchor 0 (1,1), control 0 (2,2), control 1 (3,3) and anchor 1 (4,4)."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final serialize(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/graphics/shapes/Feature;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/shapes/Feature;

    .line 78
    sget-object v2, Landroidx/graphics/shapes/FeatureSerializer;->Companion:Landroidx/graphics/shapes/FeatureSerializer$Companion;

    invoke-direct {v2, v1}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->serializeFeature(Landroidx/graphics/shapes/Feature;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
