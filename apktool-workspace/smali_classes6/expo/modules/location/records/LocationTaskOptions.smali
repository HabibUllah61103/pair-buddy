.class public final Lexpo/modules/location/records/LocationTaskOptions;
.super Lexpo/modules/location/records/LocationOptions;
.source "LocationArguments.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B7\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001dH\u0000\u00a2\u0006\u0002\u0008 R(\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0010\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR(\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0010\u0012\u0004\u0008\u0011\u0010\u000b\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000fR(\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0010\u0012\u0004\u0008\u0014\u0010\u000b\u001a\u0004\u0008\u0015\u0010\r\"\u0004\u0008\u0016\u0010\u000fR&\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0017\u0010\u000b\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/location/records/LocationTaskOptions;",
        "Lexpo/modules/location/records/LocationOptions;",
        "deferredUpdatesDistance",
        "",
        "deferredUpdatesInterval",
        "deferredUpdatesTimeout",
        "foregroundService",
        "Lexpo/modules/location/records/LocationTaskServiceOptions;",
        "<init>",
        "(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/location/records/LocationTaskServiceOptions;)V",
        "getDeferredUpdatesDistance$annotations",
        "()V",
        "getDeferredUpdatesDistance",
        "()Ljava/lang/Float;",
        "setDeferredUpdatesDistance",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "getDeferredUpdatesInterval$annotations",
        "getDeferredUpdatesInterval",
        "setDeferredUpdatesInterval",
        "getDeferredUpdatesTimeout$annotations",
        "getDeferredUpdatesTimeout",
        "setDeferredUpdatesTimeout",
        "getForegroundService$annotations",
        "getForegroundService",
        "()Lexpo/modules/location/records/LocationTaskServiceOptions;",
        "setForegroundService",
        "(Lexpo/modules/location/records/LocationTaskServiceOptions;)V",
        "toMutableMap",
        "",
        "",
        "",
        "toMutableMap$expo_location_release",
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
.field private deferredUpdatesDistance:Ljava/lang/Float;

.field private deferredUpdatesInterval:Ljava/lang/Float;

.field private deferredUpdatesTimeout:Ljava/lang/Float;

.field private foregroundService:Lexpo/modules/location/records/LocationTaskServiceOptions;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lexpo/modules/location/records/LocationTaskOptions;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/location/records/LocationTaskServiceOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/location/records/LocationTaskServiceOptions;)V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 47
    invoke-direct/range {v0 .. v6}, Lexpo/modules/location/records/LocationOptions;-><init>(ILjava/lang/Integer;ZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    iput-object p1, v0, Lexpo/modules/location/records/LocationTaskOptions;->deferredUpdatesDistance:Ljava/lang/Float;

    .line 44
    iput-object p2, v0, Lexpo/modules/location/records/LocationTaskOptions;->deferredUpdatesInterval:Ljava/lang/Float;

    .line 45
    iput-object p3, v0, Lexpo/modules/location/records/LocationTaskOptions;->deferredUpdatesTimeout:Ljava/lang/Float;

    .line 46
    iput-object p4, v0, Lexpo/modules/location/records/LocationTaskOptions;->foregroundService:Lexpo/modules/location/records/LocationTaskServiceOptions;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/location/records/LocationTaskServiceOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 42
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/location/records/LocationTaskOptions;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/location/records/LocationTaskServiceOptions;)V

    return-void
.end method

.method public static synthetic getDeferredUpdatesDistance$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDeferredUpdatesInterval$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDeferredUpdatesTimeout$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getForegroundService$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getDeferredUpdatesDistance()Ljava/lang/Float;
    .locals 1

    .line 43
    iget-object v0, p0, Lexpo/modules/location/records/LocationTaskOptions;->deferredUpdatesDistance:Ljava/lang/Float;

    return-object v0
.end method

.method public final getDeferredUpdatesInterval()Ljava/lang/Float;
    .locals 1

    .line 44
    iget-object v0, p0, Lexpo/modules/location/records/LocationTaskOptions;->deferredUpdatesInterval:Ljava/lang/Float;

    return-object v0
.end method

.method public final getDeferredUpdatesTimeout()Ljava/lang/Float;
    .locals 1

    .line 45
    iget-object v0, p0, Lexpo/modules/location/records/LocationTaskOptions;->deferredUpdatesTimeout:Ljava/lang/Float;

    return-object v0
.end method

.method public final getForegroundService()Lexpo/modules/location/records/LocationTaskServiceOptions;
    .locals 1

    .line 46
    iget-object v0, p0, Lexpo/modules/location/records/LocationTaskOptions;->foregroundService:Lexpo/modules/location/records/LocationTaskServiceOptions;

    return-object v0
.end method

.method public final setDeferredUpdatesDistance(Ljava/lang/Float;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lexpo/modules/location/records/LocationTaskOptions;->deferredUpdatesDistance:Ljava/lang/Float;

    return-void
.end method

.method public final setDeferredUpdatesInterval(Ljava/lang/Float;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lexpo/modules/location/records/LocationTaskOptions;->deferredUpdatesInterval:Ljava/lang/Float;

    return-void
.end method

.method public final setDeferredUpdatesTimeout(Ljava/lang/Float;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lexpo/modules/location/records/LocationTaskOptions;->deferredUpdatesTimeout:Ljava/lang/Float;

    return-void
.end method

.method public final setForegroundService(Lexpo/modules/location/records/LocationTaskServiceOptions;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lexpo/modules/location/records/LocationTaskOptions;->foregroundService:Lexpo/modules/location/records/LocationTaskServiceOptions;

    return-void
.end method

.method public final toMutableMap$expo_location_release()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    .line 49
    new-array v0, v0, [Lkotlin/Pair;

    invoke-virtual {p0}, Lexpo/modules/location/records/LocationTaskOptions;->getAccuracy()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "accuracy"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    const-string v1, "distanceInterval"

    invoke-virtual {p0}, Lexpo/modules/location/records/LocationTaskOptions;->getDistanceInterval()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 51
    invoke-virtual {p0}, Lexpo/modules/location/records/LocationTaskOptions;->getMayShowUserSettingsDialog()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mayShowUserSettingsDialog"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 52
    const-string v1, "timeInterval"

    invoke-virtual {p0}, Lexpo/modules/location/records/LocationTaskOptions;->getTimeInterval()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 53
    const-string v1, "deferredUpdatesDistance"

    iget-object v2, p0, Lexpo/modules/location/records/LocationTaskOptions;->deferredUpdatesDistance:Ljava/lang/Float;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 54
    const-string v1, "deferredUpdatesInterval"

    iget-object v2, p0, Lexpo/modules/location/records/LocationTaskOptions;->deferredUpdatesInterval:Ljava/lang/Float;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 55
    const-string v1, "deferredUpdatesTimeout"

    iget-object v2, p0, Lexpo/modules/location/records/LocationTaskOptions;->deferredUpdatesTimeout:Ljava/lang/Float;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 48
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lexpo/modules/location/records/LocationTaskOptions;->foregroundService:Lexpo/modules/location/records/LocationTaskServiceOptions;

    if-eqz v1, :cond_0

    .line 58
    const-string v2, "foregroundService"

    invoke-virtual {v1}, Lexpo/modules/location/records/LocationTaskServiceOptions;->toMutableMap$expo_location_release()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
