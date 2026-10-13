.class public final Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$5;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/location/LocationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 LocationModule.kt\nexpo/modules/location/LocationModule\n*L\n1#1,613:1\n18#2:614\n170#3,15:615\n195#3:630\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n*L\n300#1:614\n*E\n"
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


# instance fields
.field final synthetic this$0:Lexpo/modules/location/LocationModule;


# direct methods
.method public constructor <init>(Lexpo/modules/location/LocationModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$5;->this$0:Lexpo/modules/location/LocationModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 302
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$5;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 4

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 301
    check-cast p1, Lexpo/modules/location/records/LocationOptions;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 615
    iget-object v1, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$5;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {v1}, Lexpo/modules/location/LocationModule;->access$isMissingForegroundPermissions(Lexpo/modules/location/LocationModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    new-instance p1, Lexpo/modules/location/LocationUnauthorizedException;

    invoke-direct {p1}, Lexpo/modules/location/LocationUnauthorizedException;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p2, p1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    return-void

    .line 620
    :cond_0
    sget-object v1, Lexpo/modules/location/LocationHelpers;->Companion:Lexpo/modules/location/LocationHelpers$Companion;

    invoke-virtual {v1, p1}, Lexpo/modules/location/LocationHelpers$Companion;->prepareLocationRequest$expo_location_release(Lexpo/modules/location/records/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 621
    invoke-virtual {p1}, Lexpo/modules/location/records/LocationOptions;->getMayShowUserSettingsDialog()Z

    move-result p1

    .line 623
    sget-object v2, Lexpo/modules/location/LocationHelpers;->Companion:Lexpo/modules/location/LocationHelpers$Companion;

    iget-object v3, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$5;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {v3}, Lexpo/modules/location/LocationModule;->access$getMContext$p(Lexpo/modules/location/LocationModule;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "mContext"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v2, v3}, Lexpo/modules/location/LocationHelpers$Companion;->hasNetworkProviderEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 627
    :cond_2
    iget-object p1, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$5;->this$0:Lexpo/modules/location/LocationModule;

    .line 629
    new-instance v2, Lexpo/modules/location/LocationModule$definition$1$12$1;

    iget-object v3, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$5;->this$0:Lexpo/modules/location/LocationModule;

    invoke-direct {v2, v3, v1, v0, p2}, Lexpo/modules/location/LocationModule$definition$1$12$1;-><init>(Lexpo/modules/location/LocationModule;Lcom/google/android/gms/location/LocationRequest;ILexpo/modules/kotlin/Promise;)V

    check-cast v2, Lexpo/modules/location/LocationActivityResultListener;

    .line 627
    invoke-static {p1, v1, v2}, Lexpo/modules/location/LocationModule;->access$addPendingLocationRequest(Lexpo/modules/location/LocationModule;Lcom/google/android/gms/location/LocationRequest;Lexpo/modules/location/LocationActivityResultListener;)V

    return-void

    .line 624
    :cond_3
    :goto_0
    sget-object p1, Lexpo/modules/location/LocationHelpers;->Companion:Lexpo/modules/location/LocationHelpers$Companion;

    iget-object v2, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$5;->this$0:Lexpo/modules/location/LocationModule;

    invoke-virtual {p1, v2, v1, v0, p2}, Lexpo/modules/location/LocationHelpers$Companion;->requestContinuousUpdates(Lexpo/modules/location/LocationModule;Lcom/google/android/gms/location/LocationRequest;ILexpo/modules/kotlin/Promise;)V

    return-void
.end method
