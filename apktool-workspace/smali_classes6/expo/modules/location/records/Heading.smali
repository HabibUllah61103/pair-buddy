.class public final Lexpo/modules/location/records/Heading;
.super Ljava/lang/Object;
.source "LocationResults.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\u0017\u001a\u00020\u0018H\u0000\u00a2\u0006\u0002\u0008\u0019R$\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\n\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lexpo/modules/location/records/Heading;",
        "",
        "trueHeading",
        "",
        "magHeading",
        "accuracy",
        "",
        "<init>",
        "(FFI)V",
        "getTrueHeading$annotations",
        "()V",
        "getTrueHeading",
        "()F",
        "setTrueHeading",
        "(F)V",
        "getMagHeading$annotations",
        "getMagHeading",
        "setMagHeading",
        "getAccuracy$annotations",
        "getAccuracy",
        "()I",
        "setAccuracy",
        "(I)V",
        "toBundle",
        "Landroid/os/Bundle;",
        "toBundle$expo_location_release",
        "expo-location_release"
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
.field private accuracy:I

.field private magHeading:F

.field private trueHeading:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lexpo/modules/location/records/Heading;-><init>(FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lexpo/modules/location/records/Heading;->trueHeading:F

    .line 52
    iput p2, p0, Lexpo/modules/location/records/Heading;->magHeading:F

    .line 53
    iput p3, p0, Lexpo/modules/location/records/Heading;->accuracy:I

    return-void
.end method

.method public synthetic constructor <init>(FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 50
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/location/records/Heading;-><init>(FFI)V

    return-void
.end method

.method public static synthetic getAccuracy$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getMagHeading$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTrueHeading$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAccuracy()I
    .locals 1

    .line 53
    iget v0, p0, Lexpo/modules/location/records/Heading;->accuracy:I

    return v0
.end method

.method public final getMagHeading()F
    .locals 1

    .line 52
    iget v0, p0, Lexpo/modules/location/records/Heading;->magHeading:F

    return v0
.end method

.method public final getTrueHeading()F
    .locals 1

    .line 51
    iget v0, p0, Lexpo/modules/location/records/Heading;->trueHeading:F

    return v0
.end method

.method public final setAccuracy(I)V
    .locals 0

    .line 53
    iput p1, p0, Lexpo/modules/location/records/Heading;->accuracy:I

    return-void
.end method

.method public final setMagHeading(F)V
    .locals 0

    .line 52
    iput p1, p0, Lexpo/modules/location/records/Heading;->magHeading:F

    return-void
.end method

.method public final setTrueHeading(F)V
    .locals 0

    .line 51
    iput p1, p0, Lexpo/modules/location/records/Heading;->trueHeading:F

    return-void
.end method

.method public final toBundle$expo_location_release()Landroid/os/Bundle;
    .locals 3

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v1, "trueHeading"

    iget v2, p0, Lexpo/modules/location/records/Heading;->trueHeading:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 58
    const-string v1, "magHeading"

    iget v2, p0, Lexpo/modules/location/records/Heading;->magHeading:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 59
    const-string v1, "accuracy"

    iget v2, p0, Lexpo/modules/location/records/Heading;->accuracy:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
