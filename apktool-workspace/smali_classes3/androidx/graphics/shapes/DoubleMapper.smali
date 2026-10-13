.class public final Landroidx/graphics/shapes/DoubleMapper;
.super Ljava/lang/Object;
.source "FloatMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/DoubleMapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB3\u0012*\u0010\u0002\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u0003\"\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/graphics/shapes/DoubleMapper;",
        "",
        "mappings",
        "",
        "Lkotlin/Pair;",
        "",
        "<init>",
        "([Lkotlin/Pair;)V",
        "sourceValues",
        "Landroidx/collection/MutableFloatList;",
        "targetValues",
        "map",
        "x",
        "mapBack",
        "Companion",
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
.field public static final Companion:Landroidx/graphics/shapes/DoubleMapper$Companion;

.field public static final Identity:Landroidx/graphics/shapes/DoubleMapper;


# instance fields
.field private final sourceValues:Landroidx/collection/MutableFloatList;

.field private final targetValues:Landroidx/collection/MutableFloatList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/graphics/shapes/DoubleMapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/shapes/DoubleMapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/DoubleMapper;->Companion:Landroidx/graphics/shapes/DoubleMapper$Companion;

    .line 86
    new-instance v0, Landroidx/graphics/shapes/DoubleMapper;

    const/4 v1, 0x2

    .line 89
    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/high16 v2, 0x3f000000    # 0.5f

    .line 90
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 86
    invoke-direct {v0, v1}, Landroidx/graphics/shapes/DoubleMapper;-><init>([Lkotlin/Pair;)V

    sput-object v0, Landroidx/graphics/shapes/DoubleMapper;->Identity:Landroidx/graphics/shapes/DoubleMapper;

    return-void
.end method

.method public varargs constructor <init>([Lkotlin/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mappings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroidx/collection/MutableFloatList;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    iput-object v0, p0, Landroidx/graphics/shapes/DoubleMapper;->sourceValues:Landroidx/collection/MutableFloatList;

    .line 66
    new-instance v0, Landroidx/collection/MutableFloatList;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    iput-object v0, p0, Landroidx/graphics/shapes/DoubleMapper;->targetValues:Landroidx/collection/MutableFloatList;

    .line 69
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 70
    iget-object v2, p0, Landroidx/graphics/shapes/DoubleMapper;->sourceValues:Landroidx/collection/MutableFloatList;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/collection/MutableFloatList;->add(F)Z

    .line 71
    iget-object v2, p0, Landroidx/graphics/shapes/DoubleMapper;->targetValues:Landroidx/collection/MutableFloatList;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/collection/MutableFloatList;->add(F)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Landroidx/graphics/shapes/DoubleMapper;->sourceValues:Landroidx/collection/MutableFloatList;

    check-cast p1, Landroidx/collection/FloatList;

    invoke-static {p1}, Landroidx/graphics/shapes/FloatMappingKt;->validateProgress(Landroidx/collection/FloatList;)V

    .line 76
    iget-object p1, p0, Landroidx/graphics/shapes/DoubleMapper;->targetValues:Landroidx/collection/MutableFloatList;

    check-cast p1, Landroidx/collection/FloatList;

    invoke-static {p1}, Landroidx/graphics/shapes/FloatMappingKt;->validateProgress(Landroidx/collection/FloatList;)V

    return-void
.end method


# virtual methods
.method public final map(F)F
    .locals 2

    .line 79
    iget-object v0, p0, Landroidx/graphics/shapes/DoubleMapper;->sourceValues:Landroidx/collection/MutableFloatList;

    check-cast v0, Landroidx/collection/FloatList;

    iget-object v1, p0, Landroidx/graphics/shapes/DoubleMapper;->targetValues:Landroidx/collection/MutableFloatList;

    check-cast v1, Landroidx/collection/FloatList;

    invoke-static {v0, v1, p1}, Landroidx/graphics/shapes/FloatMappingKt;->linearMap(Landroidx/collection/FloatList;Landroidx/collection/FloatList;F)F

    move-result p1

    return p1
.end method

.method public final mapBack(F)F
    .locals 2

    .line 81
    iget-object v0, p0, Landroidx/graphics/shapes/DoubleMapper;->targetValues:Landroidx/collection/MutableFloatList;

    check-cast v0, Landroidx/collection/FloatList;

    iget-object v1, p0, Landroidx/graphics/shapes/DoubleMapper;->sourceValues:Landroidx/collection/MutableFloatList;

    check-cast v1, Landroidx/collection/FloatList;

    invoke-static {v0, v1, p1}, Landroidx/graphics/shapes/FloatMappingKt;->linearMap(Landroidx/collection/FloatList;Landroidx/collection/FloatList;F)F

    move-result p1

    return p1
.end method
