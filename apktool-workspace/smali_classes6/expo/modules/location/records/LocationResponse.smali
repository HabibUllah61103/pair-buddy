.class public final Lexpo/modules/location/records/LocationResponse;
.super Ljava/lang/Object;
.source "LocationResults.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocationResults.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocationResults.kt\nexpo/modules/location/records/LocationResponse\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B+\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\t\u0010\rJ\'\u0010 \u001a\u0002H!\"\u0008\u0008\u0000\u0010!*\u00020\"2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H!0$H\u0000\u00a2\u0006\u0004\u0008%\u0010&R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R(\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0019\u0012\u0004\u0008\u0014\u0010\u000f\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R(\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u001f\u0012\u0004\u0008\u001a\u0010\u000f\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\'"
    }
    d2 = {
        "Lexpo/modules/location/records/LocationResponse;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "coords",
        "Lexpo/modules/location/records/LocationObjectCoords;",
        "timestamp",
        "",
        "mocked",
        "",
        "<init>",
        "(Lexpo/modules/location/records/LocationObjectCoords;Ljava/lang/Double;Ljava/lang/Boolean;)V",
        "location",
        "Landroid/location/Location;",
        "(Landroid/location/Location;)V",
        "getCoords$annotations",
        "()V",
        "getCoords",
        "()Lexpo/modules/location/records/LocationObjectCoords;",
        "setCoords",
        "(Lexpo/modules/location/records/LocationObjectCoords;)V",
        "getTimestamp$annotations",
        "getTimestamp",
        "()Ljava/lang/Double;",
        "setTimestamp",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "getMocked$annotations",
        "getMocked",
        "()Ljava/lang/Boolean;",
        "setMocked",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
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
.field private coords:Lexpo/modules/location/records/LocationObjectCoords;

.field private mocked:Ljava/lang/Boolean;

.field private timestamp:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lexpo/modules/location/records/LocationResponse;-><init>(Lexpo/modules/location/records/LocationObjectCoords;Ljava/lang/Double;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 3

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lexpo/modules/location/records/LocationObjectCoords;

    invoke-direct {v0, p1}, Lexpo/modules/location/records/LocationObjectCoords;-><init>(Landroid/location/Location;)V

    .line 83
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 84
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 81
    invoke-direct {p0, v0, v1, p1}, Lexpo/modules/location/records/LocationResponse;-><init>(Lexpo/modules/location/records/LocationObjectCoords;Ljava/lang/Double;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lexpo/modules/location/records/LocationObjectCoords;Ljava/lang/Double;Ljava/lang/Boolean;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lexpo/modules/location/records/LocationResponse;->coords:Lexpo/modules/location/records/LocationObjectCoords;

    .line 78
    iput-object p2, p0, Lexpo/modules/location/records/LocationResponse;->timestamp:Ljava/lang/Double;

    .line 79
    iput-object p3, p0, Lexpo/modules/location/records/LocationResponse;->mocked:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/location/records/LocationObjectCoords;Ljava/lang/Double;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 76
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/location/records/LocationResponse;-><init>(Lexpo/modules/location/records/LocationObjectCoords;Ljava/lang/Double;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic getCoords$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getMocked$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTimestamp$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getCoords()Lexpo/modules/location/records/LocationObjectCoords;
    .locals 1

    .line 77
    iget-object v0, p0, Lexpo/modules/location/records/LocationResponse;->coords:Lexpo/modules/location/records/LocationObjectCoords;

    return-object v0
.end method

.method public final getMocked()Ljava/lang/Boolean;
    .locals 1

    .line 79
    iget-object v0, p0, Lexpo/modules/location/records/LocationResponse;->mocked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTimestamp()Ljava/lang/Double;
    .locals 1

    .line 78
    iget-object v0, p0, Lexpo/modules/location/records/LocationResponse;->timestamp:Ljava/lang/Double;

    return-object v0
.end method

.method public final setCoords(Lexpo/modules/location/records/LocationObjectCoords;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lexpo/modules/location/records/LocationResponse;->coords:Lexpo/modules/location/records/LocationObjectCoords;

    return-void
.end method

.method public final setMocked(Ljava/lang/Boolean;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lexpo/modules/location/records/LocationResponse;->mocked:Ljava/lang/Boolean;

    return-void
.end method

.method public final setTimestamp(Ljava/lang/Double;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lexpo/modules/location/records/LocationResponse;->timestamp:Ljava/lang/Double;

    return-void
.end method

.method public final toBundle$expo_location_release(Ljava/lang/Class;)Landroid/os/BaseBundle;
    .locals 5
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

    .line 89
    const-class v0, Landroid/os/PersistableBundle;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    :goto_0
    instance-of v1, v0, Landroid/os/BaseBundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/BaseBundle;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_8

    .line 95
    iget-object p1, p0, Lexpo/modules/location/records/LocationResponse;->timestamp:Ljava/lang/Double;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-string p1, "timestamp"

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 96
    :cond_2
    iget-object p1, p0, Lexpo/modules/location/records/LocationResponse;->mocked:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "mocked"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    :cond_3
    instance-of p1, v0, Landroid/os/PersistableBundle;

    const-string v1, "coords"

    if-eqz p1, :cond_5

    .line 98
    move-object p1, v0

    check-cast p1, Landroid/os/PersistableBundle;

    iget-object v3, p0, Lexpo/modules/location/records/LocationResponse;->coords:Lexpo/modules/location/records/LocationObjectCoords;

    if-eqz v3, :cond_4

    const-class v2, Landroid/os/PersistableBundle;

    invoke-virtual {v3, v2}, Lexpo/modules/location/records/LocationObjectCoords;->toBundle$expo_location_release(Ljava/lang/Class;)Landroid/os/BaseBundle;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    :cond_4
    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object v0

    .line 99
    :cond_5
    instance-of p1, v0, Landroid/os/Bundle;

    if-eqz p1, :cond_7

    .line 100
    move-object p1, v0

    check-cast p1, Landroid/os/Bundle;

    iget-object v3, p0, Lexpo/modules/location/records/LocationResponse;->coords:Lexpo/modules/location/records/LocationObjectCoords;

    if-eqz v3, :cond_6

    const-class v2, Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Lexpo/modules/location/records/LocationObjectCoords;->toBundle$expo_location_release(Ljava/lang/Class;)Landroid/os/BaseBundle;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :cond_6
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    return-object v0

    .line 92
    :cond_8
    new-instance v0, Lexpo/modules/location/ConversionException;

    const-class v1, Lexpo/modules/location/records/LocationResponse;

    const-string v2, "Unsupported bundleTypeClass"

    invoke-direct {v0, v1, p1, v2}, Lexpo/modules/location/ConversionException;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method
