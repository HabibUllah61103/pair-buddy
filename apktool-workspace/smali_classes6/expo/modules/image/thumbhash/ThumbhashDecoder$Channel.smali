.class final Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;
.super Ljava/lang/Object;
.source "ThumbhashDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/image/thumbhash/ThumbhashDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Channel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0006\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J&\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;",
        "",
        "nx",
        "",
        "ny",
        "<init>",
        "(II)V",
        "ac",
        "",
        "getAc",
        "()[F",
        "setAc",
        "([F)V",
        "decode",
        "hash",
        "",
        "start",
        "index",
        "scale",
        "",
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


# instance fields
.field private ac:[F


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_2

    if-lez v1, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    mul-int v4, v3, p2

    sub-int v5, p2, v1

    mul-int/2addr v5, p1

    if-ge v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_2
    new-array p1, v2, [F

    iput-object p1, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->ac:[F

    return-void
.end method


# virtual methods
.method public final decode([BIIF)I
    .locals 5

    const-string v0, "hash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->ac:[F

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    shr-int/lit8 v2, p3, 0x1

    add-int/2addr v2, p2

    .line 215
    aget-byte v2, p1, v2

    and-int/lit8 v3, p3, 0x1

    shl-int/lit8 v3, v3, 0x2

    shr-int/2addr v2, v3

    .line 216
    iget-object v3, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->ac:[F

    and-int/lit8 v2, v2, 0xf

    int-to-float v2, v2

    const/high16 v4, 0x40f00000    # 7.5f

    div-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    mul-float/2addr v2, p4

    aput v2, v3, v1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method

.method public final getAc()[F
    .locals 1

    .line 199
    iget-object v0, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->ac:[F

    return-object v0
.end method

.method public final setAc([F)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->ac:[F

    return-void
.end method
