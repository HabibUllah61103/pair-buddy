.class public final Lexpo/modules/location/LocationHelpers$Companion$askForPermissionsWithPermissionsManager$2$1;
.super Ljava/lang/Object;
.source "LocationHelpers.kt"

# interfaces
.implements Lexpo/modules/kotlin/Promise;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/location/LocationHelpers$Companion;->askForPermissionsWithPermissionsManager$expo_location_release(Lexpo/modules/interfaces/permissions/Permissions;[Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J$\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "expo/modules/location/LocationHelpers$Companion$askForPermissionsWithPermissionsManager$2$1",
        "Lexpo/modules/kotlin/Promise;",
        "resolve",
        "",
        "value",
        "",
        "reject",
        "code",
        "",
        "message",
        "cause",
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
.field final synthetic $it:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/location/LocationHelpers$Companion$askForPermissionsWithPermissionsManager$2$1;->$it:Lkotlin/coroutines/Continuation;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reject(Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 0

    .line 176
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->reject(Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method

.method public reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lexpo/modules/location/LocationHelpers$Companion$askForPermissionsWithPermissionsManager$2$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lexpo/modules/kotlin/exception/CodedException;

    invoke-direct {v1, p1, p2, p3}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public resolve()V
    .locals 0

    .line 176
    invoke-static {p0}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;)V

    return-void
.end method

.method public resolve(D)V
    .locals 0

    .line 176
    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;D)V

    return-void
.end method

.method public resolve(F)V
    .locals 0

    .line 176
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;F)V

    return-void
.end method

.method public resolve(I)V
    .locals 0

    .line 176
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;I)V

    return-void
.end method

.method public resolve(Ljava/lang/Object;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lexpo/modules/location/LocationHelpers$Companion$askForPermissionsWithPermissionsManager$2$1;->$it:Lkotlin/coroutines/Continuation;

    .line 179
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 178
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 180
    :cond_1
    new-instance p1, Lexpo/modules/location/ConversionException;

    const-class v0, Ljava/lang/Object;

    const-class v1, Landroid/os/Bundle;

    const-string v2, "value returned by the permission promise is not a Bundle"

    invoke-direct {p1, v0, v1, v2}, Lexpo/modules/location/ConversionException;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    throw p1
.end method

.method public resolve(Ljava/lang/String;)V
    .locals 0

    .line 176
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;Ljava/lang/String;)V

    return-void
.end method

.method public resolve(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;Ljava/util/Collection;)V

    return-void
.end method

.method public resolve(Ljava/util/Map;)V
    .locals 0
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

    .line 176
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;Ljava/util/Map;)V

    return-void
.end method

.method public resolve(Z)V
    .locals 0

    .line 176
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;Z)V

    return-void
.end method
