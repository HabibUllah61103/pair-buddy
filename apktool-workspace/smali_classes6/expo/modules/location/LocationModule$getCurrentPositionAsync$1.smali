.class public final Lexpo/modules/location/LocationModule$getCurrentPositionAsync$1;
.super Ljava/lang/Object;
.source "LocationModule.kt"

# interfaces
.implements Lexpo/modules/location/LocationActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/location/LocationModule;->getCurrentPositionAsync(Lexpo/modules/location/records/LocationOptions;Lexpo/modules/kotlin/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/location/LocationModule$getCurrentPositionAsync$1",
        "Lexpo/modules/location/LocationActivityResultListener;",
        "onResult",
        "",
        "resultCode",
        "",
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
.field final synthetic $currentLocationRequest:Lcom/google/android/gms/location/CurrentLocationRequest;

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic this$0:Lexpo/modules/location/LocationModule;


# direct methods
.method constructor <init>(Lexpo/modules/location/LocationModule;Lcom/google/android/gms/location/CurrentLocationRequest;Lexpo/modules/kotlin/Promise;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/location/LocationModule$getCurrentPositionAsync$1;->this$0:Lexpo/modules/location/LocationModule;

    iput-object p2, p0, Lexpo/modules/location/LocationModule$getCurrentPositionAsync$1;->$currentLocationRequest:Lcom/google/android/gms/location/CurrentLocationRequest;

    iput-object p3, p0, Lexpo/modules/location/LocationModule$getCurrentPositionAsync$1;->$promise:Lexpo/modules/kotlin/Promise;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 415
    sget-object p1, Lexpo/modules/location/LocationHelpers;->Companion:Lexpo/modules/location/LocationHelpers$Companion;

    iget-object v0, p0, Lexpo/modules/location/LocationModule$getCurrentPositionAsync$1;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {v0}, Lexpo/modules/location/LocationModule;->access$getMLocationProvider$p(Lexpo/modules/location/LocationModule;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mLocationProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lexpo/modules/location/LocationModule$getCurrentPositionAsync$1;->$currentLocationRequest:Lcom/google/android/gms/location/CurrentLocationRequest;

    iget-object v2, p0, Lexpo/modules/location/LocationModule$getCurrentPositionAsync$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-virtual {p1, v0, v1, v2}, Lexpo/modules/location/LocationHelpers$Companion;->requestSingleLocation(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/location/CurrentLocationRequest;Lexpo/modules/kotlin/Promise;)V

    return-void

    .line 417
    :cond_1
    iget-object p1, p0, Lexpo/modules/location/LocationModule$getCurrentPositionAsync$1;->$promise:Lexpo/modules/kotlin/Promise;

    new-instance v0, Lexpo/modules/location/LocationSettingsUnsatisfiedException;

    invoke-direct {v0}, Lexpo/modules/location/LocationSettingsUnsatisfiedException;-><init>()V

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p1, v0}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method
