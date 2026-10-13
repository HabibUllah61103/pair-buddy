.class public final Landroidx/graphics/shapes/FeatureSerializer;
.super Ljava/lang/Object;
.source "FeatureSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/FeatureSerializer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/graphics/shapes/FeatureSerializer;",
        "",
        "<init>",
        "()V",
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
.field private static final CONCAVE_CORNER_CHAR:C = 'o'

.field private static final CONVEX_CORNER_CHAR:C = 'x'

.field public static final Companion:Landroidx/graphics/shapes/FeatureSerializer$Companion;

.field private static final EDGE_CHAR:C = 'n'

.field private static final FEATURE_TAG_ARRAY:[C

.field private static final LOG_TAG:Ljava/lang/String; = "FeatureSerializer"

.field private static final SEPARATOR:C = ','


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/shapes/FeatureSerializer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/shapes/FeatureSerializer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/FeatureSerializer;->Companion:Landroidx/graphics/shapes/FeatureSerializer$Companion;

    const/4 v0, 0x3

    .line 284
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/graphics/shapes/FeatureSerializer;->FEATURE_TAG_ARRAY:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x6es
        0x78s
        0x6fs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFEATURE_TAG_ARRAY$cp()[C
    .locals 1

    .line 41
    sget-object v0, Landroidx/graphics/shapes/FeatureSerializer;->FEATURE_TAG_ARRAY:[C

    return-object v0
.end method

.method public static final parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    sget-object v0, Landroidx/graphics/shapes/FeatureSerializer;->Companion:Landroidx/graphics/shapes/FeatureSerializer$Companion;

    invoke-virtual {v0, p0}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final serialize(Ljava/util/List;)Ljava/lang/String;
    .locals 1
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

    sget-object v0, Landroidx/graphics/shapes/FeatureSerializer;->Companion:Landroidx/graphics/shapes/FeatureSerializer$Companion;

    invoke-virtual {v0, p0}, Landroidx/graphics/shapes/FeatureSerializer$Companion;->serialize(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
