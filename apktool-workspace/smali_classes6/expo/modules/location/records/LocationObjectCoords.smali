.class public final Lexpo/modules/location/records/LocationObjectCoords;
.super Ljava/lang/Object;
.source "LocationResults.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocationResults.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocationResults.kt\nexpo/modules/location/records/LocationObjectCoords\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B[\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB\u0011\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000b\u0010\u000fJ\'\u0010)\u001a\u0002H*\"\u0008\u0008\u0000\u0010**\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u0002H*0-H\u0000\u00a2\u0006\u0004\u0008.\u0010/R(\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0016\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R(\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0016\u0012\u0004\u0008\u0017\u0010\u0011\u001a\u0004\u0008\u0018\u0010\u0013\"\u0004\u0008\u0019\u0010\u0015R(\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0016\u0012\u0004\u0008\u001a\u0010\u0011\u001a\u0004\u0008\u001b\u0010\u0013\"\u0004\u0008\u001c\u0010\u0015R(\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0016\u0012\u0004\u0008\u001d\u0010\u0011\u001a\u0004\u0008\u001e\u0010\u0013\"\u0004\u0008\u001f\u0010\u0015R(\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0016\u0012\u0004\u0008 \u0010\u0011\u001a\u0004\u0008!\u0010\u0013\"\u0004\u0008\"\u0010\u0015R(\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0016\u0012\u0004\u0008#\u0010\u0011\u001a\u0004\u0008$\u0010\u0013\"\u0004\u0008%\u0010\u0015R(\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0016\u0012\u0004\u0008&\u0010\u0011\u001a\u0004\u0008\'\u0010\u0013\"\u0004\u0008(\u0010\u0015\u00a8\u00060"
    }
    d2 = {
        "Lexpo/modules/location/records/LocationObjectCoords;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "latitude",
        "",
        "longitude",
        "altitude",
        "accuracy",
        "altitudeAccuracy",
        "heading",
        "speed",
        "<init>",
        "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V",
        "location",
        "Landroid/location/Location;",
        "(Landroid/location/Location;)V",
        "getLatitude$annotations",
        "()V",
        "getLatitude",
        "()Ljava/lang/Double;",
        "setLatitude",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "getLongitude$annotations",
        "getLongitude",
        "setLongitude",
        "getAltitude$annotations",
        "getAltitude",
        "setAltitude",
        "getAccuracy$annotations",
        "getAccuracy",
        "setAccuracy",
        "getAltitudeAccuracy$annotations",
        "getAltitudeAccuracy",
        "setAltitudeAccuracy",
        "getHeading$annotations",
        "getHeading",
        "setHeading",
        "getSpeed$annotations",
        "getSpeed",
        "setSpeed",
        "toBundle",
        "BundleType",
        "Landroid/os/BaseBundle;",
        "bundleTypeClass",
        "Ljava/lang/Class;",
        "toBundle$expo_location_release",
        "(Ljava/lang/Class;)Landroid/os/BaseBundle;",
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
.field private accuracy:Ljava/lang/Double;

.field private altitude:Ljava/lang/Double;

.field private altitudeAccuracy:Ljava/lang/Double;

.field private heading:Ljava/lang/Double;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private speed:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lexpo/modules/location/records/LocationObjectCoords;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 10

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 117
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 118
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 119
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 121
    invoke-virtual {p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 125
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 126
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object v2, p0

    .line 115
    invoke-direct/range {v2 .. v9}, Lexpo/modules/location/records/LocationObjectCoords;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->latitude:Ljava/lang/Double;

    .line 108
    iput-object p2, p0, Lexpo/modules/location/records/LocationObjectCoords;->longitude:Ljava/lang/Double;

    .line 109
    iput-object p3, p0, Lexpo/modules/location/records/LocationObjectCoords;->altitude:Ljava/lang/Double;

    .line 110
    iput-object p4, p0, Lexpo/modules/location/records/LocationObjectCoords;->accuracy:Ljava/lang/Double;

    .line 111
    iput-object p5, p0, Lexpo/modules/location/records/LocationObjectCoords;->altitudeAccuracy:Ljava/lang/Double;

    .line 112
    iput-object p6, p0, Lexpo/modules/location/records/LocationObjectCoords;->heading:Ljava/lang/Double;

    .line 113
    iput-object p7, p0, Lexpo/modules/location/records/LocationObjectCoords;->speed:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    move-object p8, v0

    goto :goto_0

    :cond_6
    move-object p8, p7

    :goto_0
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 106
    invoke-direct/range {p1 .. p8}, Lexpo/modules/location/records/LocationObjectCoords;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic getAccuracy$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getAltitude$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getAltitudeAccuracy$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getHeading$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getLatitude$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getLongitude$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSpeed$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAccuracy()Ljava/lang/Double;
    .locals 1

    .line 110
    iget-object v0, p0, Lexpo/modules/location/records/LocationObjectCoords;->accuracy:Ljava/lang/Double;

    return-object v0
.end method

.method public final getAltitude()Ljava/lang/Double;
    .locals 1

    .line 109
    iget-object v0, p0, Lexpo/modules/location/records/LocationObjectCoords;->altitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getAltitudeAccuracy()Ljava/lang/Double;
    .locals 1

    .line 111
    iget-object v0, p0, Lexpo/modules/location/records/LocationObjectCoords;->altitudeAccuracy:Ljava/lang/Double;

    return-object v0
.end method

.method public final getHeading()Ljava/lang/Double;
    .locals 1

    .line 112
    iget-object v0, p0, Lexpo/modules/location/records/LocationObjectCoords;->heading:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLatitude()Ljava/lang/Double;
    .locals 1

    .line 107
    iget-object v0, p0, Lexpo/modules/location/records/LocationObjectCoords;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLongitude()Ljava/lang/Double;
    .locals 1

    .line 108
    iget-object v0, p0, Lexpo/modules/location/records/LocationObjectCoords;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getSpeed()Ljava/lang/Double;
    .locals 1

    .line 113
    iget-object v0, p0, Lexpo/modules/location/records/LocationObjectCoords;->speed:Ljava/lang/Double;

    return-object v0
.end method

.method public final setAccuracy(Ljava/lang/Double;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->accuracy:Ljava/lang/Double;

    return-void
.end method

.method public final setAltitude(Ljava/lang/Double;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->altitude:Ljava/lang/Double;

    return-void
.end method

.method public final setAltitudeAccuracy(Ljava/lang/Double;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->altitudeAccuracy:Ljava/lang/Double;

    return-void
.end method

.method public final setHeading(Ljava/lang/Double;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->heading:Ljava/lang/Double;

    return-void
.end method

.method public final setLatitude(Ljava/lang/Double;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->latitude:Ljava/lang/Double;

    return-void
.end method

.method public final setLongitude(Ljava/lang/Double;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public final setSpeed(Ljava/lang/Double;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->speed:Ljava/lang/Double;

    return-void
.end method

.method public final toBundle$expo_location_release(Ljava/lang/Class;)Landroid/os/BaseBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BundleType:",
            "Landroid/os/BaseBundle;",
            ">(",
            "Ljava/lang/Class<",
            "TBundleType;>;)TBundleType;"
        }
    .end annotation

    const-string v0, "bundleTypeClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-class v0, Landroid/os/PersistableBundle;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    :goto_0
    instance-of v1, v0, Landroid/os/BaseBundle;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/BaseBundle;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_9

    .line 137
    iget-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->latitude:Ljava/lang/Double;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-string p1, "latitude"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 138
    :cond_2
    iget-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->longitude:Ljava/lang/Double;

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-string p1, "longitude"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 139
    :cond_3
    iget-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->altitude:Ljava/lang/Double;

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-string p1, "altitude"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 140
    :cond_4
    iget-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->accuracy:Ljava/lang/Double;

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-string p1, "accuracy"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 141
    :cond_5
    iget-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->altitudeAccuracy:Ljava/lang/Double;

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-string p1, "altitudeAccuracy"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 142
    :cond_6
    iget-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->heading:Ljava/lang/Double;

    if-eqz p1, :cond_7

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-string p1, "heading"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 143
    :cond_7
    iget-object p1, p0, Lexpo/modules/location/records/LocationObjectCoords;->speed:Ljava/lang/Double;

    if-eqz p1, :cond_8

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-string p1, "speed"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_8
    return-object v0

    .line 134
    :cond_9
    new-instance v0, Lexpo/modules/location/ConversionException;

    const-class v1, Lexpo/modules/location/records/LocationObjectCoords;

    const-string v2, "Requested an unsupported bundle type"

    invoke-direct {v0, v1, p1, v2}, Lexpo/modules/location/ConversionException;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method
