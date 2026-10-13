.class public final Lcom/superwall/sdk/misc/Color_HelpersKt;
.super Ljava/lang/Object;
.source "Color+Helpers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0002*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0002*\u00020\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "isDarkColor",
        "",
        "",
        "isLightColor",
        "readableOverlayColor",
        "inverseReadableOverlayColor",
        "superwall_release"
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
.method public static final inverseReadableOverlayColor(I)I
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/superwall/sdk/misc/Color_HelpersKt;->isDarkColor(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, -0x1000000

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static final isDarkColor(I)Z
    .locals 8

    .line 6
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    .line 7
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v2

    .line 8
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v6, p0

    div-double/2addr v6, v2

    const p0, 0x3e59b3d0    # 0.2126f

    float-to-double v2, p0

    mul-double/2addr v2, v0

    const p0, 0x3f371759    # 0.7152f

    float-to-double v0, p0

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    const p0, 0x3d93dd98    # 0.0722f

    float-to-double v0, p0

    mul-double/2addr v0, v6

    add-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v2, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isLightColor(I)Z
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/superwall/sdk/misc/Color_HelpersKt;->isDarkColor(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final readableOverlayColor(I)I
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/superwall/sdk/misc/Color_HelpersKt;->isDarkColor(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/high16 p0, -0x1000000

    return p0
.end method
