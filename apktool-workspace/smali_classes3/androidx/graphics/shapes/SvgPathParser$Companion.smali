.class public final Landroidx/graphics/shapes/SvgPathParser$Companion;
.super Ljava/lang/Object;
.source "SvgPathParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/SvgPathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSvgPathParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SvgPathParser.kt\nandroidx/graphics/shapes/SvgPathParser$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,509:1\n774#2:510\n865#2,2:511\n1863#2:513\n774#2:514\n865#2,2:515\n1863#2,2:517\n1864#2:519\n*S KotlinDebug\n*F\n+ 1 SvgPathParser.kt\nandroidx/graphics/shapes/SvgPathParser$Companion\n*L\n108#1:510\n108#1:511,2\n115#1:513\n117#1:514\n117#1:515,2\n128#1:517,2\n115#1:519\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u001b\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/graphics/shapes/SvgPathParser$Companion;",
        "",
        "<init>",
        "()V",
        "parseFeatures",
        "",
        "Landroidx/graphics/shapes/Feature;",
        "svgPath",
        "",
        "parseCubics",
        "Landroidx/graphics/shapes/Cubic;",
        "parseCubics$graphics_shapes",
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
.method public static synthetic $r8$lambda$DFjGlNci830kICAI5rMqxEG_6Cs(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/Cubic;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/graphics/shapes/SvgPathParser$Companion;->parseFeatures$lambda$0(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/Cubic;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/shapes/SvgPathParser$Companion;-><init>()V

    return-void
.end method

.method private static final parseFeatures$lambda$0(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/Cubic;)Z
    .locals 2

    const-string v0, "first"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v0

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 82
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result p1

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result p0

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final parseCubics$graphics_shapes(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Cubic;",
            ">;"
        }
    .end annotation

    const-string v0, "svgPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?=[mM])"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 511
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 108
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 511
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    :cond_1
    check-cast v0, Ljava/util/List;

    const/4 p1, 0x0

    .line 109
    invoke-static {p1, p1}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v2

    .line 114
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object p1

    .line 115
    check-cast v0, Ljava/lang/Iterable;

    .line 513
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lkotlin/text/Regex;

    const-string v6, "(?=[a-zA-Z])"

    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 514
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 515
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 117
    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 515
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 516
    :cond_3
    check-cast v5, Ljava/util/List;

    .line 121
    sget-object v4, Landroidx/graphics/shapes/SvgPathParser$Command;->Factory:Landroidx/graphics/shapes/SvgPathParser$Command$Factory;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6, v2, v3}, Landroidx/graphics/shapes/SvgPathParser$Command$Factory;->parse-HiPawso(Ljava/lang/String;J)Landroidx/graphics/shapes/SvgPathParser$Command;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroidx/graphics/shapes/SvgPathParser$Command;->getStart-1ufDz9w()J

    move-result-wide v3

    invoke-virtual {v2, v1}, Landroidx/graphics/shapes/SvgPathParser$Command;->get(I)F

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroidx/graphics/shapes/SvgPathParser$Command;->get(I)F

    move-result v8

    invoke-static {v6, v8}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Landroidx/graphics/shapes/PointKt;->plus-ybeJwSQ(JJ)J

    move-result-wide v3

    .line 124
    new-instance v6, Landroidx/graphics/shapes/SvgPathParser;

    const/4 v8, 0x0

    invoke-direct {v6, v3, v4, v8}, Landroidx/graphics/shapes/SvgPathParser;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 127
    invoke-virtual {v2, v3, v4}, Landroidx/graphics/shapes/SvgPathParser$Command;->asLine-DnnuFBc(J)Landroidx/graphics/shapes/SvgPathParser$Command;

    move-result-object v2

    invoke-static {v6, v2}, Landroidx/graphics/shapes/SvgPathParser;->access$parseCommand(Landroidx/graphics/shapes/SvgPathParser;Landroidx/graphics/shapes/SvgPathParser$Command;)V

    .line 128
    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 517
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 129
    sget-object v7, Landroidx/graphics/shapes/SvgPathParser$Command;->Factory:Landroidx/graphics/shapes/SvgPathParser$Command$Factory;

    invoke-static {v6}, Landroidx/graphics/shapes/SvgPathParser;->access$getPosition-1ufDz9w(Landroidx/graphics/shapes/SvgPathParser;)J

    move-result-wide v8

    invoke-virtual {v7, v5, v8, v9}, Landroidx/graphics/shapes/SvgPathParser$Command$Factory;->parse-HiPawso(Ljava/lang/String;J)Landroidx/graphics/shapes/SvgPathParser$Command;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/graphics/shapes/SvgPathParser;->access$parseCommand(Landroidx/graphics/shapes/SvgPathParser;Landroidx/graphics/shapes/SvgPathParser$Command;)V

    goto :goto_3

    .line 132
    :cond_4
    invoke-static {v6}, Landroidx/graphics/shapes/SvgPathParser;->access$getCubics$p(Landroidx/graphics/shapes/SvgPathParser;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-wide v2, v3

    goto/16 :goto_1

    .line 114
    :cond_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseFeatures(Ljava/lang/String;)Ljava/util/List;
    .locals 7
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

    const-string v0, "svgPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/SvgPathParser$Companion;->parseCubics$graphics_shapes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Landroidx/graphics/shapes/SvgPathParser$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/graphics/shapes/SvgPathParser$Companion$$ExternalSyntheticLambda0;-><init>()V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 87
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 88
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/graphics/shapes/Cubic;

    add-int/lit8 v5, v3, 0x1

    .line 89
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/graphics/shapes/Cubic;

    .line 90
    invoke-interface {v0, v4, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_0

    .line 95
    :cond_1
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 97
    invoke-static {p1}, Landroidx/graphics/shapes/FeatureDetectorKt;->detectFeatures(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p1

    .line 98
    sget-object v0, Landroidx/graphics/shapes/PolygonValidator;->Companion:Landroidx/graphics/shapes/PolygonValidator$Companion;

    invoke-virtual {v0, p1}, Landroidx/graphics/shapes/PolygonValidator$Companion;->fix(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroidx/graphics/shapes/RoundedPolygon;->getFeatures()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
