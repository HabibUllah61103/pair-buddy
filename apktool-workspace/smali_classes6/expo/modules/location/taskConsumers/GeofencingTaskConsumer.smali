.class public final Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;
.super Lexpo/modules/interfaces/taskManager/TaskConsumer;
.source "GeofencingTaskConsumer.kt"

# interfaces
.implements Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeofencingTaskConsumer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeofencingTaskConsumer.kt\nexpo/modules/location/taskConsumers/GeofencingTaskConsumer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,246:1\n808#2,11:247\n*S KotlinDebug\n*F\n+ 1 GeofencingTaskConsumer.kt\nexpo/modules/location/taskConsumers/GeofencingTaskConsumer\n*L\n130#1:247,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 =2\u00020\u00012\u00020\u0002:\u0001=B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u0018\u001a\u00020\u0016H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\nH\u0016J\u0008\u0010\u001c\u001a\u00020\u001aH\u0016J\u001c\u0010\u001d\u001a\u00020\u001a2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020 0\u001fH\u0016J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#H\u0016J\u0018\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0016J\u0008\u0010*\u001a\u00020\u001aH\u0002J\u0008\u0010+\u001a\u00020\u001aH\u0002J\u0016\u0010,\u001a\u00020\u00102\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00130.H\u0002J\u0008\u0010/\u001a\u00020\u000cH\u0002J\u001a\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u00010 2\u0006\u00103\u001a\u00020\u0016H\u0002J\u001c\u00104\u001a\u00020\u00132\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020 0\u001fH\u0002J$\u00106\u001a\u00020\u00172\u0006\u00107\u001a\u00020\u00162\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020 0\u001fH\u0002J\u0010\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0002J\u0010\u0010<\u001a\u00020;2\u0006\u0010:\u001a\u00020;H\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;",
        "Lexpo/modules/interfaces/taskManager/TaskConsumer;",
        "Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;",
        "context",
        "Landroid/content/Context;",
        "taskManagerUtils",
        "Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;)V",
        "mTask",
        "Lexpo/modules/interfaces/taskManager/TaskInterface;",
        "mPendingIntent",
        "Landroid/app/PendingIntent;",
        "mGeofencingClient",
        "Lcom/google/android/gms/location/GeofencingClient;",
        "mGeofencingRequest",
        "Lcom/google/android/gms/location/GeofencingRequest;",
        "mGeofencingList",
        "",
        "Lcom/google/android/gms/location/Geofence;",
        "mRegions",
        "",
        "",
        "Landroid/os/PersistableBundle;",
        "taskType",
        "didRegister",
        "",
        "task",
        "didUnregister",
        "setOptions",
        "options",
        "",
        "",
        "didReceiveBroadcast",
        "intent",
        "Landroid/content/Intent;",
        "didExecuteJob",
        "",
        "jobService",
        "Landroid/app/job/JobService;",
        "params",
        "Landroid/app/job/JobParameters;",
        "startGeofencing",
        "stopGeofencing",
        "prepareGeofencingRequest",
        "geofences",
        "",
        "preparePendingIntent",
        "getParamAsDouble",
        "",
        "param",
        "errorMessage",
        "geofenceFromRegion",
        "region",
        "bundleFromRegion",
        "identifier",
        "regionStateForTransitionType",
        "Lexpo/modules/location/records/GeofencingRegionState;",
        "transitionType",
        "",
        "eventTypeFromTransitionType",
        "Companion",
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


# static fields
.field public static final Companion:Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;

.field private static final TAG:Ljava/lang/String; = "GeofencingTaskConsumer"


# instance fields
.field private mGeofencingClient:Lcom/google/android/gms/location/GeofencingClient;

.field private mGeofencingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field private mGeofencingRequest:Lcom/google/android/gms/location/GeofencingRequest;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;


# direct methods
.method public static synthetic $r8$lambda$NqVrMqiqI7thuz6A2AEr_KZVY4o(Landroid/app/job/JobService;Landroid/app/job/JobParameters;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->didExecuteJob$lambda$2(Landroid/app/job/JobService;Landroid/app/job/JobParameters;Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->Companion:Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lexpo/modules/interfaces/taskManager/TaskConsumer;-><init>(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;)V

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mGeofencingList:Ljava/util/List;

    .line 33
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mRegions:Ljava/util/Map;

    return-void
.end method

.method private final bundleFromRegion(Ljava/lang/String;Ljava/util/Map;)Landroid/os/PersistableBundle;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    .line 205
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 206
    const-string v1, "radius"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Region: radius: `"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "` can\'t be cast to Double"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getParamAsDouble(Ljava/lang/Object;Ljava/lang/String;)D

    move-result-wide v2

    .line 207
    const-string v5, "longitude"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Region: longitude: `"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getParamAsDouble(Ljava/lang/Object;Ljava/lang/String;)D

    move-result-wide v6

    .line 208
    const-string v8, "latitude"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Region: latitude: `"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v9, p2}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getParamAsDouble(Ljava/lang/Object;Ljava/lang/String;)D

    move-result-wide v9

    .line 209
    const-string p2, "identifier"

    invoke-virtual {v0, p2, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 211
    invoke-virtual {v0, v8, v9, v10}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 212
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 213
    sget-object p1, Lexpo/modules/location/records/GeofencingRegionState;->UNKNOWN:Lexpo/modules/location/records/GeofencingRegionState;

    invoke-virtual {p1}, Lexpo/modules/location/records/GeofencingRegionState;->ordinal()I

    move-result p1

    const-string p2, "state"

    invoke-virtual {v0, p2, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static final didExecuteJob$lambda$2(Landroid/app/job/JobService;Landroid/app/job/JobParameters;Ljava/util/Map;)V
    .locals 0

    const/4 p2, 0x0

    .line 104
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method private final eventTypeFromTransitionType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method private final geofenceFromRegion(Ljava/util/Map;)Lcom/google/android/gms/location/Geofence;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/location/Geofence;"
        }
    .end annotation

    .line 189
    const-string v0, "identifier"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    :cond_1
    const-string v1, "radius"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Region: radius: `"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "` can\'t be cast to Double"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getParamAsDouble(Ljava/lang/Object;Ljava/lang/String;)D

    move-result-wide v5

    .line 191
    const-string v1, "longitude"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Region: longitude: `"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getParamAsDouble(Ljava/lang/Object;Ljava/lang/String;)D

    move-result-wide v10

    .line 192
    const-string v1, "latitude"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Region: latitude `"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getParamAsDouble(Ljava/lang/Object;Ljava/lang/String;)D

    move-result-wide v8

    .line 193
    const-string v1, "notifyOnEnter"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v3

    .line 194
    :goto_2
    const-string v4, "notifyOnExit"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    move-object v2, p1

    check-cast v2, Ljava/lang/Boolean;

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_5
    if-eqz v3, :cond_6

    const/4 p1, 0x2

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    or-int/2addr p1, v1

    .line 196
    new-instance v1, Lcom/google/android/gms/location/Geofence$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/Geofence$Builder;-><init>()V

    .line 197
    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v7

    double-to-float v12, v5

    .line 198
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 199
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lcom/google/android/gms/location/Geofence$Builder;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getParamAsDouble(Ljava/lang/Object;Ljava/lang/String;)D
    .locals 4

    .line 179
    instance-of v0, p1, Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Double;

    goto :goto_0

    .line 180
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 181
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 182
    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 183
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_5

    .line 178
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    .line 185
    :cond_5
    new-instance p1, Lexpo/modules/location/GeofencingException;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v1, v0, v1}, Lexpo/modules/location/GeofencingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method private final prepareGeofencingRequest(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/location/Geofence;",
            ">;)",
            "Lcom/google/android/gms/location/GeofencingRequest;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/google/android/gms/location/GeofencingRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;-><init>()V

    const/4 v1, 0x3

    .line 168
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->addGeofences(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->build()Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final preparePendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 174
    invoke-virtual {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getTaskManagerUtils()Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    move-result-object v0

    invoke-virtual {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    invoke-interface {v0, v1, v2}, Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;->createTaskIntent(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskInterface;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "createTaskIntent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final regionStateForTransitionType(I)Lexpo/modules/location/records/GeofencingRegionState;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 221
    sget-object p1, Lexpo/modules/location/records/GeofencingRegionState;->UNKNOWN:Lexpo/modules/location/records/GeofencingRegionState;

    return-object p1

    .line 220
    :cond_0
    sget-object p1, Lexpo/modules/location/records/GeofencingRegionState;->OUTSIDE:Lexpo/modules/location/records/GeofencingRegionState;

    return-object p1

    .line 219
    :cond_1
    sget-object p1, Lexpo/modules/location/records/GeofencingRegionState;->INSIDE:Lexpo/modules/location/records/GeofencingRegionState;

    return-object p1
.end method

.method private final startGeofencing()V
    .locals 6

    .line 115
    invoke-virtual {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GeofencingTaskConsumer"

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;

    .line 116
    const-string v0, "The context has been abandoned"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_0
    sget-object v2, Lexpo/modules/location/LocationHelpers;->Companion:Lexpo/modules/location/LocationHelpers$Companion;

    invoke-virtual {v2, v0}, Lexpo/modules/location/LocationHelpers$Companion;->isAnyProviderAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    const-string v0, "There is no location provider available"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mRegions:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mGeofencingList:Ljava/util/List;

    .line 128
    iget-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getOptions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 130
    const-string v2, "regions"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type java.util.ArrayList<*>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 256
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/HashMap;

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 132
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 133
    check-cast v2, Ljava/util/Map;

    invoke-direct {p0, v2}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->geofenceFromRegion(Ljava/util/Map;)Lcom/google/android/gms/location/Geofence;

    move-result-object v3

    .line 134
    invoke-interface {v3}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getRequestId(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v5, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mRegions:Ljava/util/Map;

    invoke-direct {p0, v4, v2}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->bundleFromRegion(Ljava/lang/String;Ljava/util/Map;)Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v2, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mGeofencingList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    :cond_4
    invoke-direct {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->preparePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 145
    iget-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mGeofencingList:Ljava/util/List;

    invoke-direct {p0, v0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->prepareGeofencingRequest(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mGeofencingRequest:Lcom/google/android/gms/location/GeofencingRequest;

    .line 146
    invoke-virtual {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getGeofencingClient(Landroid/content/Context;)Lcom/google/android/gms/location/GeofencingClient;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mGeofencingClient:Lcom/google/android/gms/location/GeofencingClient;

    .line 149
    :try_start_0
    iget-object v2, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_5

    .line 150
    iget-object v3, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mGeofencingRequest:Lcom/google/android/gms/location/GeofencingRequest;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 151
    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/location/GeofencingClient;->addGeofences(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .line 155
    const-string v2, "Geofencing request has been rejected."

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 129
    :cond_6
    new-instance v0, Lexpo/modules/location/GeofencingException;

    const-string v1, "Task is null, can\'t start geofencing"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lexpo/modules/location/GeofencingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method private final stopGeofencing()V
    .locals 2

    .line 160
    iget-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mGeofencingClient:Lcom/google/android/gms/location/GeofencingClient;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/GeofencingClient;->removeGeofences(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    :cond_1
    return-void
.end method


# virtual methods
.method public didExecuteJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)Z
    .locals 7

    const-string v0, "jobService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getTaskManagerUtils()Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    move-result-object v1

    invoke-interface {v1, p2}, Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;->extractDataFromJobParams(Landroid/app/job/JobParameters;)Ljava/util/List;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 98
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 99
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-string v5, "region"

    invoke-virtual {v2, v5}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 101
    const-string v6, "eventType"

    invoke-virtual {v2, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    new-instance v2, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$$ExternalSyntheticLambda0;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v2}, Lexpo/modules/interfaces/taskManager/TaskInterface;->execute(Landroid/os/Bundle;Ljava/lang/Error;Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public didReceiveBroadcast(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/location/GeofencingEvent;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p0

    check-cast p1, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;

    .line 62
    const-string p1, "GeofencingTaskConsumer"

    const-string v0, "Received a null geofencing event. Ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingEvent;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->Companion:Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;

    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingEvent;->getErrorCode()I

    move-result p1

    invoke-static {v0, p1}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;->access$getErrorString(Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;I)Ljava/lang/String;

    move-result-object p1

    .line 68
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lexpo/modules/interfaces/taskManager/TaskInterface;->execute(Landroid/os/Bundle;Ljava/lang/Error;)V

    return-void

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingEvent;->getGeofenceTransition()I

    move-result v0

    .line 75
    invoke-direct {p0, v0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->regionStateForTransitionType(I)Lexpo/modules/location/records/GeofencingRegionState;

    move-result-object v1

    .line 76
    invoke-direct {p0, v0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->eventTypeFromTransitionType(I)I

    move-result v0

    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringGeofences()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 79
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/location/Geofence;

    .line 80
    iget-object v3, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mRegions:Ljava/util/Map;

    invoke-interface {v2}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    if-eqz v2, :cond_3

    .line 81
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 84
    const-string v4, "state"

    invoke-virtual {v1}, Lexpo/modules/location/records/GeofencingRegionState;->ordinal()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v4, "eventType"

    invoke-virtual {v3, v4, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v4, "region"

    invoke-virtual {v3, v4, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 87
    invoke-virtual {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 88
    invoke-virtual {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->getTaskManagerUtils()Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    move-result-object v4

    iget-object v5, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v2, v5, v3}, Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;->scheduleJob(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskInterface;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public didRegister(Lexpo/modules/interfaces/taskManager/TaskInterface;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    .line 42
    invoke-direct {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->startGeofencing()V

    return-void
.end method

.method public didUnregister()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->stopGeofencing()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mTask:Lexpo/modules/interfaces/taskManager/TaskInterface;

    .line 48
    iput-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 49
    iput-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mGeofencingClient:Lcom/google/android/gms/location/GeofencingClient;

    .line 50
    iput-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mGeofencingRequest:Lcom/google/android/gms/location/GeofencingRequest;

    .line 51
    iget-object v0, p0, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->mGeofencingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1}, Lexpo/modules/interfaces/taskManager/TaskConsumer;->setOptions(Ljava/util/Map;)V

    .line 56
    invoke-direct {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->stopGeofencing()V

    .line 57
    invoke-direct {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;->startGeofencing()V

    return-void
.end method

.method public taskType()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "geofencing"

    return-object v0
.end method
