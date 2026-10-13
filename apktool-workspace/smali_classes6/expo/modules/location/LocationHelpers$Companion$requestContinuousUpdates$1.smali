.class public final Lexpo/modules/location/LocationHelpers$Companion$requestContinuousUpdates$1;
.super Ljava/lang/Object;
.source "LocationHelpers.kt"

# interfaces
.implements Lexpo/modules/location/LocationRequestCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/location/LocationHelpers$Companion;->requestContinuousUpdates(Lexpo/modules/location/LocationModule;Lcom/google/android/gms/location/LocationRequest;ILexpo/modules/kotlin/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "expo/modules/location/LocationHelpers$Companion$requestContinuousUpdates$1",
        "Lexpo/modules/location/LocationRequestCallbacks;",
        "onLocationChanged",
        "",
        "location",
        "Landroid/location/Location;",
        "onRequestSuccess",
        "onRequestFailed",
        "cause",
        "Lexpo/modules/kotlin/exception/CodedException;",
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
.field final synthetic $locationModule:Lexpo/modules/location/LocationModule;

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic $watchId:I


# direct methods
.method constructor <init>(Lexpo/modules/location/LocationModule;ILexpo/modules/kotlin/Promise;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/location/LocationHelpers$Companion$requestContinuousUpdates$1;->$locationModule:Lexpo/modules/location/LocationModule;

    iput p2, p0, Lexpo/modules/location/LocationHelpers$Companion$requestContinuousUpdates$1;->$watchId:I

    iput-object p3, p0, Lexpo/modules/location/LocationHelpers$Companion$requestContinuousUpdates$1;->$promise:Lexpo/modules/kotlin/Promise;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lexpo/modules/location/LocationHelpers$Companion$requestContinuousUpdates$1;->$locationModule:Lexpo/modules/location/LocationModule;

    iget v1, p0, Lexpo/modules/location/LocationHelpers$Companion$requestContinuousUpdates$1;->$watchId:I

    new-instance v2, Lexpo/modules/location/records/LocationResponse;

    invoke-direct {v2, p1}, Lexpo/modules/location/records/LocationResponse;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2}, Lexpo/modules/location/LocationModule;->sendLocationResponse$expo_location_release(ILexpo/modules/location/records/LocationResponse;)V

    return-void
.end method

.method public onLocationError(Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lexpo/modules/location/LocationRequestCallbacks$DefaultImpls;->onLocationError(Lexpo/modules/location/LocationRequestCallbacks;Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method

.method public onRequestFailed(Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lexpo/modules/location/LocationHelpers$Companion$requestContinuousUpdates$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-interface {v0, p1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method

.method public onRequestSuccess()V
    .locals 2

    .line 99
    iget-object v0, p0, Lexpo/modules/location/LocationHelpers$Companion$requestContinuousUpdates$1;->$promise:Lexpo/modules/kotlin/Promise;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
