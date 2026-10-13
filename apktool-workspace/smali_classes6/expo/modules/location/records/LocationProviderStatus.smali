.class public final Lexpo/modules/location/records/LocationProviderStatus;
.super Ljava/lang/Object;
.source "LocationResults.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001c\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002BA\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\t\u0010\nR(\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0011\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R(\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0011\u0012\u0004\u0008\u0012\u0010\u000c\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R(\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0011\u0012\u0004\u0008\u0015\u0010\u000c\u001a\u0004\u0008\u0016\u0010\u000e\"\u0004\u0008\u0017\u0010\u0010R$\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR(\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0011\u0012\u0004\u0008\u001d\u0010\u000c\u001a\u0004\u0008\u001e\u0010\u000e\"\u0004\u0008\u001f\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lexpo/modules/location/records/LocationProviderStatus;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "backgroundModeEnabled",
        "",
        "gpsAvailable",
        "networkAvailable",
        "locationServicesEnabled",
        "passiveAvailable",
        "<init>",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;)V",
        "getBackgroundModeEnabled$annotations",
        "()V",
        "getBackgroundModeEnabled",
        "()Ljava/lang/Boolean;",
        "setBackgroundModeEnabled",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getGpsAvailable$annotations",
        "getGpsAvailable",
        "setGpsAvailable",
        "getNetworkAvailable$annotations",
        "getNetworkAvailable",
        "setNetworkAvailable",
        "getLocationServicesEnabled$annotations",
        "getLocationServicesEnabled",
        "()Z",
        "setLocationServicesEnabled",
        "(Z)V",
        "getPassiveAvailable$annotations",
        "getPassiveAvailable",
        "setPassiveAvailable",
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
.field private backgroundModeEnabled:Ljava/lang/Boolean;

.field private gpsAvailable:Ljava/lang/Boolean;

.field private locationServicesEnabled:Z

.field private networkAvailable:Ljava/lang/Boolean;

.field private passiveAvailable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lexpo/modules/location/records/LocationProviderStatus;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lexpo/modules/location/records/LocationProviderStatus;->backgroundModeEnabled:Ljava/lang/Boolean;

    .line 44
    iput-object p2, p0, Lexpo/modules/location/records/LocationProviderStatus;->gpsAvailable:Ljava/lang/Boolean;

    .line 45
    iput-object p3, p0, Lexpo/modules/location/records/LocationProviderStatus;->networkAvailable:Ljava/lang/Boolean;

    .line 46
    iput-boolean p4, p0, Lexpo/modules/location/records/LocationProviderStatus;->locationServicesEnabled:Z

    .line 47
    iput-object p5, p0, Lexpo/modules/location/records/LocationProviderStatus;->passiveAvailable:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v1, 0x0

    if-eqz p7, :cond_1

    .line 44
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v1

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p6, v0

    goto :goto_0

    :cond_4
    move-object p6, p5

    :goto_0
    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 42
    invoke-direct/range {p1 .. p6}, Lexpo/modules/location/records/LocationProviderStatus;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic getBackgroundModeEnabled$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getGpsAvailable$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getLocationServicesEnabled$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getNetworkAvailable$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getPassiveAvailable$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getBackgroundModeEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 43
    iget-object v0, p0, Lexpo/modules/location/records/LocationProviderStatus;->backgroundModeEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getGpsAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 44
    iget-object v0, p0, Lexpo/modules/location/records/LocationProviderStatus;->gpsAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLocationServicesEnabled()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lexpo/modules/location/records/LocationProviderStatus;->locationServicesEnabled:Z

    return v0
.end method

.method public final getNetworkAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 45
    iget-object v0, p0, Lexpo/modules/location/records/LocationProviderStatus;->networkAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPassiveAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lexpo/modules/location/records/LocationProviderStatus;->passiveAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setBackgroundModeEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lexpo/modules/location/records/LocationProviderStatus;->backgroundModeEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setGpsAvailable(Ljava/lang/Boolean;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lexpo/modules/location/records/LocationProviderStatus;->gpsAvailable:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLocationServicesEnabled(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lexpo/modules/location/records/LocationProviderStatus;->locationServicesEnabled:Z

    return-void
.end method

.method public final setNetworkAvailable(Ljava/lang/Boolean;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lexpo/modules/location/records/LocationProviderStatus;->networkAvailable:Ljava/lang/Boolean;

    return-void
.end method

.method public final setPassiveAvailable(Ljava/lang/Boolean;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lexpo/modules/location/records/LocationProviderStatus;->passiveAvailable:Ljava/lang/Boolean;

    return-void
.end method
