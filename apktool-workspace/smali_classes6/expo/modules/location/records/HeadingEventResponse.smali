.class public final Lexpo/modules/location/records/HeadingEventResponse;
.super Ljava/lang/Object;
.source "LocationResults.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocationResults.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocationResults.kt\nexpo/modules/location/records/HeadingEventResponse\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\u0015\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008\u0017R(\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u000f\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR&\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0010\u0010\n\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/location/records/HeadingEventResponse;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "watchId",
        "",
        "heading",
        "Lexpo/modules/location/records/Heading;",
        "<init>",
        "(Ljava/lang/Integer;Lexpo/modules/location/records/Heading;)V",
        "getWatchId$annotations",
        "()V",
        "getWatchId",
        "()Ljava/lang/Integer;",
        "setWatchId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getHeading$annotations",
        "getHeading",
        "()Lexpo/modules/location/records/Heading;",
        "setHeading",
        "(Lexpo/modules/location/records/Heading;)V",
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
.field private heading:Lexpo/modules/location/records/Heading;

.field private watchId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lexpo/modules/location/records/HeadingEventResponse;-><init>(Ljava/lang/Integer;Lexpo/modules/location/records/Heading;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lexpo/modules/location/records/Heading;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lexpo/modules/location/records/HeadingEventResponse;->watchId:Ljava/lang/Integer;

    .line 66
    iput-object p2, p0, Lexpo/modules/location/records/HeadingEventResponse;->heading:Lexpo/modules/location/records/Heading;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Lexpo/modules/location/records/Heading;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 64
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/location/records/HeadingEventResponse;-><init>(Ljava/lang/Integer;Lexpo/modules/location/records/Heading;)V

    return-void
.end method

.method public static synthetic getHeading$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getWatchId$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getHeading()Lexpo/modules/location/records/Heading;
    .locals 1

    .line 66
    iget-object v0, p0, Lexpo/modules/location/records/HeadingEventResponse;->heading:Lexpo/modules/location/records/Heading;

    return-object v0
.end method

.method public final getWatchId()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lexpo/modules/location/records/HeadingEventResponse;->watchId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setHeading(Lexpo/modules/location/records/Heading;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lexpo/modules/location/records/HeadingEventResponse;->heading:Lexpo/modules/location/records/Heading;

    return-void
.end method

.method public final setWatchId(Ljava/lang/Integer;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lexpo/modules/location/records/HeadingEventResponse;->watchId:Ljava/lang/Integer;

    return-void
.end method

.method public final toBundle$expo_location_release()Landroid/os/Bundle;
    .locals 3

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    iget-object v1, p0, Lexpo/modules/location/records/HeadingEventResponse;->watchId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "watchId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    :cond_0
    iget-object v1, p0, Lexpo/modules/location/records/HeadingEventResponse;->heading:Lexpo/modules/location/records/Heading;

    if-eqz v1, :cond_1

    const-string v2, "heading"

    invoke-virtual {v1}, Lexpo/modules/location/records/Heading;->toBundle$expo_location_release()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-object v0
.end method
