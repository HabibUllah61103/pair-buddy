.class public final Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$22;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/superwallexpo/SuperwallExpoModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 SuperwallExpoModule.kt\nexpo/modules/superwallexpo/SuperwallExpoModule\n*L\n1#1,613:1\n25#2:614\n418#3,13:615\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18\n*L\n325#1:614\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;


# direct methods
.method public constructor <init>(Lexpo/modules/superwallexpo/SuperwallExpoModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$22;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 327
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$22;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

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

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    .line 326
    check-cast p1, Ljava/util/Map;

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 615
    iget-object v2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$22;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-virtual {v2}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->getCustomCallbackFutures()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 617
    invoke-interface {p2, v2}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 620
    :cond_0
    const-string v3, "success"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    sget-object v1, Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;->Companion:Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult$Companion;

    invoke-virtual {v1, p1}, Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult$Companion;->success(Ljava/util/Map;)Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;

    move-result-object p1

    goto :goto_0

    .line 623
    :cond_1
    sget-object v1, Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;->Companion:Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult$Companion;

    invoke-virtual {v1, p1}, Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult$Companion;->failure(Ljava/util/Map;)Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;

    move-result-object p1

    .line 625
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 626
    invoke-interface {p2, v2}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
