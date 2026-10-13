.class public final Lexpo/modules/location/LocationModule$startHeadingUpdate$locationCallback$1;
.super Lcom/google/android/gms/location/LocationCallback;
.source "LocationModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/location/LocationModule;->startHeadingUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/location/LocationModule$startHeadingUpdate$locationCallback$1",
        "Lcom/google/android/gms/location/LocationCallback;",
        "onLocationResult",
        "",
        "locationResult",
        "Lcom/google/android/gms/location/LocationResult;",
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
.field final synthetic this$0:Lexpo/modules/location/LocationModule;


# direct methods
.method constructor <init>(Lexpo/modules/location/LocationModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/location/LocationModule$startHeadingUpdate$locationCallback$1;->this$0:Lexpo/modules/location/LocationModule;

    .line 534
    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 7

    const-string v0, "locationResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lexpo/modules/location/LocationModule$startHeadingUpdate$locationCallback$1;->this$0:Lexpo/modules/location/LocationModule;

    .line 537
    new-instance v1, Landroid/hardware/GeomagneticField;

    .line 538
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 539
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    .line 540
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-float v4, v4

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 537
    invoke-direct/range {v1 .. v6}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    invoke-static {v0, v1}, Lexpo/modules/location/LocationModule;->access$setMGeofield$p(Lexpo/modules/location/LocationModule;Landroid/hardware/GeomagneticField;)V

    :cond_0
    return-void
.end method
