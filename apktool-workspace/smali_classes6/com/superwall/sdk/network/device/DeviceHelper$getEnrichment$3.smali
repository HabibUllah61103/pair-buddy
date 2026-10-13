.class final Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DeviceHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/network/device/DeviceHelper;->getEnrichment-8Mi8wO0(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/superwall/sdk/models/enrichment/Enrichment;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/superwall/sdk/models/enrichment/Enrichment;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.network.device.DeviceHelper$getEnrichment$3"
    f = "DeviceHelper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/network/device/DeviceHelper;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/network/device/DeviceHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/network/device/DeviceHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;->this$0:Lcom/superwall/sdk/network/device/DeviceHelper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;

    iget-object v1, p0, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;->this$0:Lcom/superwall/sdk/network/device/DeviceHelper;

    invoke-direct {v0, v1, p2}, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;-><init>(Lcom/superwall/sdk/network/device/DeviceHelper;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/superwall/sdk/models/enrichment/Enrichment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/enrichment/Enrichment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/models/enrichment/Enrichment;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;->invoke(Lcom/superwall/sdk/models/enrichment/Enrichment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 681
    iget v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/models/enrichment/Enrichment;

    .line 682
    iget-object v0, p0, Lcom/superwall/sdk/network/device/DeviceHelper$getEnrichment$3;->this$0:Lcom/superwall/sdk/network/device/DeviceHelper;

    invoke-virtual {v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/storage/LatestEnrichment;->INSTANCE:Lcom/superwall/sdk/storage/LatestEnrichment;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {v0, v1, p1}, Lcom/superwall/sdk/storage/LocalStorage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 683
    invoke-virtual {p1}, Lcom/superwall/sdk/models/enrichment/Enrichment;->getUser()Ljava/util/Map;

    move-result-object v0

    .line 684
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/superwall/sdk/identity/PublicIdentityKt;->setUserAttributes(Lcom/superwall/sdk/Superwall;Ljava/util/Map;)V

    .line 686
    invoke-virtual {p1}, Lcom/superwall/sdk/models/enrichment/Enrichment;->getDevice()Ljava/util/Map;

    move-result-object p1

    .line 687
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/superwall/sdk/identity/PublicIdentityKt;->setUserAttributes(Lcom/superwall/sdk/Superwall;Ljava/util/Map;)V

    .line 689
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 681
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
