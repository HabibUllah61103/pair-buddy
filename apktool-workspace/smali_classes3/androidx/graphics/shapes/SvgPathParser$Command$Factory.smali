.class public final Landroidx/graphics/shapes/SvgPathParser$Command$Factory;
.super Ljava/lang/Object;
.source "SvgPathParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/SvgPathParser$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSvgPathParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SvgPathParser.kt\nandroidx/graphics/shapes/SvgPathParser$Command$Factory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,509:1\n774#2:510\n865#2,2:511\n1557#2:513\n1628#2,3:514\n*S KotlinDebug\n*F\n+ 1 SvgPathParser.kt\nandroidx/graphics/shapes/SvgPathParser$Command$Factory\n*L\n263#1:510\n263#1:511,2\n264#1:513\n264#1:514,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u00060\rj\u0002`\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/graphics/shapes/SvgPathParser$Command$Factory;",
        "",
        "<init>",
        "()V",
        "commandToParamsCount",
        "",
        "",
        "",
        "parse",
        "Landroidx/graphics/shapes/SvgPathParser$Command;",
        "input",
        "",
        "currentPosition",
        "Landroidx/collection/FloatFloatPair;",
        "Landroidx/graphics/shapes/Point;",
        "parse-HiPawso",
        "(Ljava/lang/String;J)Landroidx/graphics/shapes/SvgPathParser$Command;",
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
.method private constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/shapes/SvgPathParser$Command$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse-HiPawso(Ljava/lang/String;J)Landroidx/graphics/shapes/SvgPathParser$Command;
    .locals 10

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v0

    .line 258
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    const/4 v1, 0x1

    .line 261
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 p1, 0x2

    .line 262
    new-array v5, p1, [Ljava/lang/String;

    const-string p1, " "

    const/4 v2, 0x0

    aput-object p1, v5, v2

    const-string p1, ","

    aput-object p1, v5, v1

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 510
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 511
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 263
    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 511
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 510
    check-cast v1, Ljava/lang/Iterable;

    .line 513
    new-instance p1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 514
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 515
    check-cast v4, Ljava/lang/String;

    .line 264
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 515
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 516
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 513
    check-cast p1, Ljava/util/Collection;

    .line 265
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v4

    .line 266
    new-instance v1, Landroidx/graphics/shapes/SvgPathParser$Command;

    move p1, v2

    .line 267
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 270
    invoke-static {}, Landroidx/graphics/shapes/SvgPathParser$Command;->access$getCommandToParamsCount$cp()Ljava/util/Map;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_3
    move v5, p1

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 271
    invoke-static {p1, p1}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p2

    :goto_2
    move-wide v6, p2

    const/4 v8, 0x0

    .line 266
    invoke-direct/range {v1 .. v8}, Landroidx/graphics/shapes/SvgPathParser$Command;-><init>(CZ[FIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
