.class public final Lexpo/modules/location/LocationRequestCallbacks$DefaultImpls;
.super Ljava/lang/Object;
.source "LocationRequestCallbacks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/location/LocationRequestCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onLocationChanged(Lexpo/modules/location/LocationRequestCallbacks;Landroid/location/Location;)V
    .locals 0

    const-string p0, "location"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onLocationError(Lexpo/modules/location/LocationRequestCallbacks;Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 0

    const-string p0, "cause"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onRequestFailed(Lexpo/modules/location/LocationRequestCallbacks;Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 0

    const-string p0, "cause"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onRequestSuccess(Lexpo/modules/location/LocationRequestCallbacks;)V
    .locals 0

    return-void
.end method
