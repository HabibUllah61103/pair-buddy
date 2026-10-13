.class final Landroidx/graphics/shapes/SvgPathParser$Command;
.super Ljava/lang/Object;
.source "SvgPathParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/SvgPathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/SvgPathParser$Command$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0007\n\u0002\u0008\u001d\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u0000 ?2\u00020\u0001:\u0001?B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0008\u0002\u0010\n\u001a\u00060\u000bj\u0002`\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0011\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\tH\u0086\u0002J\u000e\u0010\"\u001a\u00020 2\u0006\u0010!\u001a\u00020\tJ\u000e\u0010#\u001a\u00020 2\u0006\u0010!\u001a\u00020\tJ!\u0010$\u001a\u00060\u000bj\u0002`\u000c2\u0006\u0010!\u001a\u00020\t2\u0006\u0010%\u001a\u00020\t\u00a2\u0006\u0004\u0008&\u0010\'J!\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\t2\n\u0010*\u001a\u00060\u000bj\u0002`\u000c\u00a2\u0006\u0004\u0008+\u0010,J\u0019\u0010-\u001a\u00020\u00002\n\u0010.\u001a\u00060\u000bj\u0002`\u000c\u00a2\u0006\u0004\u0008/\u00100J\u0013\u00101\u001a\u00020\u00052\u0008\u00102\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u00103\u001a\u00020\tH\u0016J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0005H\u00c6\u0003J\t\u00106\u001a\u00020\u0007H\u00c6\u0003J\t\u00107\u001a\u00020\tH\u00c6\u0003J\u0014\u00108\u001a\u00060\u000bj\u0002`\u000cH\u00c6\u0003\u00a2\u0006\u0004\u00089\u0010\u0017JF\u0010:\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u000c\u0008\u0002\u0010\n\u001a\u00060\u000bj\u0002`\u000cH\u00c6\u0001\u00a2\u0006\u0004\u0008;\u0010<J\t\u0010=\u001a\u00020>H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\n\u001a\u00060\u000bj\u0002`\u000c\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0019\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0011R\u0011\u0010\u001a\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011R\u0011\u0010\u001b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011R\u0011\u0010\u001c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0011R\u0011\u0010\u001d\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0011R\u0011\u0010\u001e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0011\u00a8\u0006@"
    }
    d2 = {
        "Landroidx/graphics/shapes/SvgPathParser$Command;",
        "",
        "letter",
        "",
        "isRelative",
        "",
        "parameters",
        "",
        "paramsCount",
        "",
        "start",
        "Landroidx/collection/FloatFloatPair;",
        "Landroidx/graphics/shapes/Point;",
        "<init>",
        "(CZ[FIJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getLetter",
        "()C",
        "()Z",
        "getParameters",
        "()[F",
        "getParamsCount",
        "()I",
        "getStart-1ufDz9w",
        "()J",
        "J",
        "isLineCommand",
        "isBezierCommand",
        "isQuadraticCurveCommand",
        "isCurveCommand",
        "isArcCommand",
        "isCloseCommand",
        "get",
        "",
        "i",
        "x",
        "y",
        "xy",
        "j",
        "xy-XgqJiTY",
        "(II)J",
        "chunk",
        "index",
        "currentPosition",
        "chunk-HiPawso",
        "(IJ)Landroidx/graphics/shapes/SvgPathParser$Command;",
        "asLine",
        "newStart",
        "asLine-DnnuFBc",
        "(J)Landroidx/graphics/shapes/SvgPathParser$Command;",
        "equals",
        "other",
        "hashCode",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component5-1ufDz9w",
        "copy",
        "copy-teZZwEo",
        "(CZ[FIJ)Landroidx/graphics/shapes/SvgPathParser$Command;",
        "toString",
        "",
        "Factory",
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
.field public static final Factory:Landroidx/graphics/shapes/SvgPathParser$Command$Factory;

.field private static final commandToParamsCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isArcCommand:Z

.field private final isBezierCommand:Z

.field private final isCloseCommand:Z

.field private final isCurveCommand:Z

.field private final isLineCommand:Z

.field private final isQuadraticCurveCommand:Z

.field private final isRelative:Z

.field private final letter:C

.field private final parameters:[F

.field private final paramsCount:I

.field private final start:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/graphics/shapes/SvgPathParser$Command$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/shapes/SvgPathParser$Command$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/SvgPathParser$Command;->Factory:Landroidx/graphics/shapes/SvgPathParser$Command$Factory;

    const/16 v0, 0x9

    .line 245
    new-array v0, v0, [Lkotlin/Pair;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/16 v1, 0x6c

    .line 246
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x1

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 246
    aput-object v1, v0, v4

    const/16 v1, 0x68

    .line 247
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x76

    .line 248
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x63

    .line 249
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x4

    .line 250
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 249
    aput-object v1, v0, v4

    const/16 v1, 0x73

    .line 250
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const/16 v1, 0x71

    .line 251
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x74

    .line 252
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x61

    .line 253
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 244
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/graphics/shapes/SvgPathParser$Command;->commandToParamsCount:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(CZ[FIJ)V
    .locals 1

    const-string v0, "parameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-char p1, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->letter:C

    .line 237
    iput-boolean p2, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isRelative:Z

    .line 238
    iput-object p3, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->parameters:[F

    .line 239
    iput p4, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->paramsCount:I

    .line 240
    iput-wide p5, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->start:J

    const/4 p2, 0x3

    .line 276
    new-array p2, p2, [C

    fill-array-data p2, :array_0

    invoke-static {p2, p1}, Lkotlin/collections/ArraysKt;->contains([CC)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isLineCommand:Z

    const/4 p2, 0x2

    .line 277
    new-array p3, p2, [C

    fill-array-data p3, :array_1

    invoke-static {p3, p1}, Lkotlin/collections/ArraysKt;->contains([CC)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isBezierCommand:Z

    .line 278
    new-array p2, p2, [C

    fill-array-data p2, :array_2

    invoke-static {p2, p1}, Lkotlin/collections/ArraysKt;->contains([CC)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isQuadraticCurveCommand:Z

    const/4 p2, 0x4

    .line 279
    new-array p2, p2, [C

    fill-array-data p2, :array_3

    invoke-static {p2, p1}, Lkotlin/collections/ArraysKt;->contains([CC)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isCurveCommand:Z

    const/16 p2, 0x61

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p1, p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, p4

    .line 280
    :goto_0
    iput-boolean p2, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isArcCommand:Z

    const/16 p2, 0x7a

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move p3, p4

    .line 281
    :goto_1
    iput-boolean p3, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isCloseCommand:Z

    return-void

    nop

    :array_0
    .array-data 2
        0x6cs
        0x68s
        0x76s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x63s
        0x73s
    .end array-data

    :array_2
    .array-data 2
        0x71s
        0x74s
    .end array-data

    :array_3
    .array-data 2
        0x63s
        0x73s
        0x71s
        0x74s
    .end array-data
.end method

.method public synthetic constructor <init>(CZ[FIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 240
    invoke-static {v0, v0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_0

    :cond_0
    move-wide v7, p5

    :goto_0
    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    .line 235
    invoke-direct/range {v2 .. v9}, Landroidx/graphics/shapes/SvgPathParser$Command;-><init>(CZ[FIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(CZ[FIJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/graphics/shapes/SvgPathParser$Command;-><init>(CZ[FIJ)V

    return-void
.end method

.method public static final synthetic access$getCommandToParamsCount$cp()Ljava/util/Map;
    .locals 1

    .line 235
    sget-object v0, Landroidx/graphics/shapes/SvgPathParser$Command;->commandToParamsCount:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic copy-teZZwEo$default(Landroidx/graphics/shapes/SvgPathParser$Command;CZ[FIJILjava/lang/Object;)Landroidx/graphics/shapes/SvgPathParser$Command;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-char p1, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->letter:C

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isRelative:Z

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->parameters:[F

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->paramsCount:I

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    iget-wide p5, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->start:J

    :cond_4
    move-wide p7, p5

    move-object p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Landroidx/graphics/shapes/SvgPathParser$Command;->copy-teZZwEo(CZ[FIJ)Landroidx/graphics/shapes/SvgPathParser$Command;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asLine-DnnuFBc(J)Landroidx/graphics/shapes/SvgPathParser$Command;
    .locals 9

    .line 310
    iget-object v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->parameters:[F

    iget v1, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->paramsCount:I

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->drop([FI)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v4

    .line 311
    new-instance v1, Landroidx/graphics/shapes/SvgPathParser$Command;

    iget-boolean v3, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isRelative:Z

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/16 v2, 0x6c

    move-wide v6, p1

    invoke-direct/range {v1 .. v8}, Landroidx/graphics/shapes/SvgPathParser$Command;-><init>(CZ[FIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final chunk-HiPawso(IJ)Landroidx/graphics/shapes/SvgPathParser$Command;
    .locals 8

    .line 301
    new-instance v0, Landroidx/graphics/shapes/SvgPathParser$Command;

    .line 302
    iget-char v1, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->letter:C

    .line 303
    iget-boolean v2, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isRelative:Z

    .line 304
    iget-object v3, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->parameters:[F

    iget v4, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->paramsCount:I

    add-int/2addr v4, p1

    invoke-static {p1, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/collections/ArraysKt;->sliceArray([FLkotlin/ranges/IntRange;)[F

    move-result-object v3

    .line 305
    iget v4, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->paramsCount:I

    const/4 v7, 0x0

    move-wide v5, p2

    .line 301
    invoke-direct/range {v0 .. v7}, Landroidx/graphics/shapes/SvgPathParser$Command;-><init>(CZ[FIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final component1()C
    .locals 1

    iget-char v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->letter:C

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isRelative:Z

    return v0
.end method

.method public final component3()[F
    .locals 1

    iget-object v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->parameters:[F

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->paramsCount:I

    return v0
.end method

.method public final component5-1ufDz9w()J
    .locals 2

    iget-wide v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->start:J

    return-wide v0
.end method

.method public final copy-teZZwEo(CZ[FIJ)Landroidx/graphics/shapes/SvgPathParser$Command;
    .locals 9

    const-string v0, "parameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/graphics/shapes/SvgPathParser$Command;

    const/4 v8, 0x0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Landroidx/graphics/shapes/SvgPathParser$Command;-><init>(CZ[FIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    check-cast p1, Landroidx/graphics/shapes/SvgPathParser$Command;

    .line 321
    iget-char v2, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->letter:C

    iget-char v3, p1, Landroidx/graphics/shapes/SvgPathParser$Command;->letter:C

    if-eq v2, v3, :cond_2

    return v1

    .line 322
    :cond_2
    iget-object v2, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->parameters:[F

    iget-object v3, p1, Landroidx/graphics/shapes/SvgPathParser$Command;->parameters:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 323
    :cond_3
    iget v2, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->paramsCount:I

    iget p1, p1, Landroidx/graphics/shapes/SvgPathParser$Command;->paramsCount:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final get(I)F
    .locals 1

    .line 283
    iget-object v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->parameters:[F

    aget p1, v0, p1

    return p1
.end method

.method public final getLetter()C
    .locals 1

    .line 236
    iget-char v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->letter:C

    return v0
.end method

.method public final getParameters()[F
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->parameters:[F

    return-object v0
.end method

.method public final getParamsCount()I
    .locals 1

    .line 239
    iget v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->paramsCount:I

    return v0
.end method

.method public final getStart-1ufDz9w()J
    .locals 2

    .line 240
    iget-wide v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->start:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 329
    iget-char v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->letter:C

    invoke-static {v0}, Ljava/lang/Character;->hashCode(C)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 330
    iget-object v1, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->parameters:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 331
    iget v1, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->paramsCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isArcCommand()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isArcCommand:Z

    return v0
.end method

.method public final isBezierCommand()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isBezierCommand:Z

    return v0
.end method

.method public final isCloseCommand()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isCloseCommand:Z

    return v0
.end method

.method public final isCurveCommand()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isCurveCommand:Z

    return v0
.end method

.method public final isLineCommand()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isLineCommand:Z

    return v0
.end method

.method public final isQuadraticCurveCommand()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isQuadraticCurveCommand:Z

    return v0
.end method

.method public final isRelative()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isRelative:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Command(letter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->letter:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRelative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isRelative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->parameters:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paramsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->paramsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->start:J

    invoke-static {v1, v2}, Landroidx/collection/FloatFloatPair;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x(I)F
    .locals 2

    .line 286
    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/SvgPathParser$Command;->get(I)F

    move-result p1

    .line 287
    iget-boolean v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isRelative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->start:J

    invoke-static {v0, v1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    add-float/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method public final xy-XgqJiTY(II)J
    .locals 2

    .line 296
    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/SvgPathParser$Command;->get(I)F

    move-result p1

    invoke-virtual {p0, p2}, Landroidx/graphics/shapes/SvgPathParser$Command;->get(I)F

    move-result p2

    invoke-static {p1, p2}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p1

    .line 297
    iget-boolean v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isRelative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->start:J

    invoke-static {v0, v1, p1, p2}, Landroidx/graphics/shapes/PointKt;->plus-ybeJwSQ(JJ)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public final y(I)F
    .locals 2

    .line 291
    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/SvgPathParser$Command;->get(I)F

    move-result p1

    .line 292
    iget-boolean v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->isRelative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/graphics/shapes/SvgPathParser$Command;->start:J

    invoke-static {v0, v1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v0

    add-float/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method
