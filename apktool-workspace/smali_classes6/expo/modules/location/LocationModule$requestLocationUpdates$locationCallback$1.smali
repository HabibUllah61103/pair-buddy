.class public final Lexpo/modules/location/LocationModule$requestLocationUpdates$locationCallback$1;
.super Lcom/google/android/gms/location/LocationCallback;
.source "LocationModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/location/LocationModule;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Ljava/lang/Integer;Lexpo/modules/location/LocationRequestCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "expo/modules/location/LocationModule$requestLocationUpdates$locationCallback$1",
        "Lcom/google/android/gms/location/LocationCallback;",
        "isLocationAvailable",
        "",
        "()Z",
        "setLocationAvailable",
        "(Z)V",
        "onLocationResult",
        "",
        "locationResult",
        "Lcom/google/android/gms/location/LocationResult;",
        "onLocationAvailability",
        "locationAvailability",
        "Lcom/google/android/gms/location/LocationAvailability;",
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
.field final synthetic $callbacks:Lexpo/modules/location/LocationRequestCallbacks;

.field private isLocationAvailable:Z


# direct methods
.method constructor <init>(Lexpo/modules/location/LocationRequestCallbacks;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/location/LocationModule$requestLocationUpdates$locationCallback$1;->$callbacks:Lexpo/modules/location/LocationRequestCallbacks;

    .line 428
    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final isLocationAvailable()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Lexpo/modules/location/LocationModule$requestLocationUpdates$locationCallback$1;->isLocationAvailable:Z

    return v0
.end method

.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 1

    const-string v0, "locationAvailability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lexpo/modules/location/LocationModule$requestLocationUpdates$locationCallback$1;->isLocationAvailable:Z

    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 1

    const-string v0, "locationResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 434
    iget-object v0, p0, Lexpo/modules/location/LocationModule$requestLocationUpdates$locationCallback$1;->$callbacks:Lexpo/modules/location/LocationRequestCallbacks;

    invoke-interface {v0, p1}, Lexpo/modules/location/LocationRequestCallbacks;->onLocationChanged(Landroid/location/Location;)V

    return-void

    .line 435
    :cond_0
    iget-boolean p1, p0, Lexpo/modules/location/LocationModule$requestLocationUpdates$locationCallback$1;->isLocationAvailable:Z

    if-nez p1, :cond_1

    .line 436
    iget-object p1, p0, Lexpo/modules/location/LocationModule$requestLocationUpdates$locationCallback$1;->$callbacks:Lexpo/modules/location/LocationRequestCallbacks;

    new-instance v0, Lexpo/modules/location/LocationUnavailableException;

    invoke-direct {v0}, Lexpo/modules/location/LocationUnavailableException;-><init>()V

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p1, v0}, Lexpo/modules/location/LocationRequestCallbacks;->onLocationError(Lexpo/modules/kotlin/exception/CodedException;)V

    return-void

    .line 438
    :cond_1
    iget-object p1, p0, Lexpo/modules/location/LocationModule$requestLocationUpdates$locationCallback$1;->$callbacks:Lexpo/modules/location/LocationRequestCallbacks;

    new-instance v0, Lexpo/modules/location/LocationUnknownException;

    invoke-direct {v0}, Lexpo/modules/location/LocationUnknownException;-><init>()V

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p1, v0}, Lexpo/modules/location/LocationRequestCallbacks;->onRequestFailed(Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method

.method public final setLocationAvailable(Z)V
    .locals 0

    .line 429
    iput-boolean p1, p0, Lexpo/modules/location/LocationModule$requestLocationUpdates$locationCallback$1;->isLocationAvailable:Z

    return-void
.end method
