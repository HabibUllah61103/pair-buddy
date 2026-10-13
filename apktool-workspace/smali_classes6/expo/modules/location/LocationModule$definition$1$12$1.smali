.class public final Lexpo/modules/location/LocationModule$definition$1$12$1;
.super Ljava/lang/Object;
.source "LocationModule.kt"

# interfaces
.implements Lexpo/modules/location/LocationActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/location/LocationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
        "expo/modules/location/LocationModule$definition$1$12$1",
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
.field final synthetic $locationRequest:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic $watchId:I

.field final synthetic this$0:Lexpo/modules/location/LocationModule;


# direct methods
.method constructor <init>(Lexpo/modules/location/LocationModule;Lcom/google/android/gms/location/LocationRequest;ILexpo/modules/kotlin/Promise;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/location/LocationModule$definition$1$12$1;->this$0:Lexpo/modules/location/LocationModule;

    iput-object p2, p0, Lexpo/modules/location/LocationModule$definition$1$12$1;->$locationRequest:Lcom/google/android/gms/location/LocationRequest;

    iput p3, p0, Lexpo/modules/location/LocationModule$definition$1$12$1;->$watchId:I

    iput-object p4, p0, Lexpo/modules/location/LocationModule$definition$1$12$1;->$promise:Lexpo/modules/kotlin/Promise;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 187
    sget-object p1, Lexpo/modules/location/LocationHelpers;->Companion:Lexpo/modules/location/LocationHelpers$Companion;

    iget-object v0, p0, Lexpo/modules/location/LocationModule$definition$1$12$1;->this$0:Lexpo/modules/location/LocationModule;

    iget-object v1, p0, Lexpo/modules/location/LocationModule$definition$1$12$1;->$locationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget v2, p0, Lexpo/modules/location/LocationModule$definition$1$12$1;->$watchId:I

    iget-object v3, p0, Lexpo/modules/location/LocationModule$definition$1$12$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-virtual {p1, v0, v1, v2, v3}, Lexpo/modules/location/LocationHelpers$Companion;->requestContinuousUpdates(Lexpo/modules/location/LocationModule;Lcom/google/android/gms/location/LocationRequest;ILexpo/modules/kotlin/Promise;)V

    return-void

    .line 189
    :cond_0
    iget-object p1, p0, Lexpo/modules/location/LocationModule$definition$1$12$1;->$promise:Lexpo/modules/kotlin/Promise;

    new-instance v0, Lexpo/modules/location/LocationSettingsUnsatisfiedException;

    invoke-direct {v0}, Lexpo/modules/location/LocationSettingsUnsatisfiedException;-><init>()V

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p1, v0}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method
