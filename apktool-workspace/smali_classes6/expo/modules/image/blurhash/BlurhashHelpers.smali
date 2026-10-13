.class public final Lexpo/modules/image/blurhash/BlurhashHelpers;
.super Ljava/lang/Object;
.source "BlurhashHelpers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/image/blurhash/BlurhashHelpers$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0016\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/image/blurhash/BlurhashHelpers;",
        "",
        "<init>",
        "()V",
        "srgbToLinear",
        "",
        "colorEnc",
        "",
        "linearTosRGB",
        "value",
        "signPow",
        "exp",
        "getBitsPerPixel",
        "bitmap",
        "Landroid/graphics/Bitmap;",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/image/blurhash/BlurhashHelpers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/image/blurhash/BlurhashHelpers;

    invoke-direct {v0}, Lexpo/modules/image/blurhash/BlurhashHelpers;-><init>()V

    sput-object v0, Lexpo/modules/image/blurhash/BlurhashHelpers;->INSTANCE:Lexpo/modules/image/blurhash/BlurhashHelpers;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBitsPerPixel(Landroid/graphics/Bitmap;)I
    .locals 2

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lexpo/modules/image/blurhash/BlurhashHelpers$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    const/16 v1, 0x10

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1

    :cond_2
    const/16 p1, 0x8

    return p1

    :cond_3
    return v1

    :cond_4
    const/16 p1, 0x20

    return p1
.end method

.method public final linearTosRGB(F)I
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double p1, v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/16 v4, 0xff

    if-gtz p1, :cond_0

    const-wide v5, 0x4029d70a3d70a3d7L    # 12.92

    :goto_0
    mul-double/2addr v0, v5

    int-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1

    :cond_0
    const p1, 0x3ed55555

    float-to-double v5, p1

    .line 21
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide v5, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v0, v5

    const-wide v5, 0x3ff0e147ae147ae1L    # 1.055

    goto :goto_0
.end method

.method public final signPow(FF)F
    .locals 4

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p2, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p2, p1

    return p2
.end method

.method public final srgbToLinear(I)F
    .locals 4

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    div-float/2addr p1, v0

    return p1

    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr p1, v0

    const v0, 0x3f870a3d    # 1.055f

    div-float/2addr p1, v0

    float-to-double v0, p1

    const p1, 0x4019999a    # 2.4f

    float-to-double v2, p1

    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
