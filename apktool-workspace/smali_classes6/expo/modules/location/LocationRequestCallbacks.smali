.class public interface abstract Lexpo/modules/location/LocationRequestCallbacks;
.super Ljava/lang/Object;
.source "LocationRequestCallbacks.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/location/LocationRequestCallbacks$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/location/LocationRequestCallbacks;",
        "",
        "onLocationChanged",
        "",
        "location",
        "Landroid/location/Location;",
        "onLocationError",
        "cause",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "onRequestSuccess",
        "onRequestFailed",
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


# virtual methods
.method public abstract onLocationChanged(Landroid/location/Location;)V
.end method

.method public abstract onLocationError(Lexpo/modules/kotlin/exception/CodedException;)V
.end method

.method public abstract onRequestFailed(Lexpo/modules/kotlin/exception/CodedException;)V
.end method

.method public abstract onRequestSuccess()V
.end method
