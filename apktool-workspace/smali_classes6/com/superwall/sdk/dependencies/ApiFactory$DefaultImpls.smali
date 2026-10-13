.class public final Lcom/superwall/sdk/dependencies/ApiFactory$DefaultImpls;
.super Ljava/lang/Object;
.source "FactoryProtocols.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/dependencies/ApiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static json(Lcom/superwall/sdk/dependencies/ApiFactory;)Lkotlinx/serialization/json/Json;
    .locals 0

    .line 53
    check-cast p0, Lcom/superwall/sdk/network/JsonFactory;

    invoke-static {p0}, Lcom/superwall/sdk/network/JsonFactory$DefaultImpls;->json(Lcom/superwall/sdk/network/JsonFactory;)Lkotlinx/serialization/json/Json;

    move-result-object p0

    return-object p0
.end method

.method public static track(Lcom/superwall/sdk/dependencies/ApiFactory;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/dependencies/ApiFactory;",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p0, p2, Lcom/superwall/sdk/dependencies/ApiFactory$track$1;

    if-eqz p0, :cond_0

    move-object p0, p2

    check-cast p0, Lcom/superwall/sdk/dependencies/ApiFactory$track$1;

    iget v0, p0, Lcom/superwall/sdk/dependencies/ApiFactory$track$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p2, p0, Lcom/superwall/sdk/dependencies/ApiFactory$track$1;->label:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/superwall/sdk/dependencies/ApiFactory$track$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/superwall/sdk/dependencies/ApiFactory$track$1;

    invoke-direct {p0, p2}, Lcom/superwall/sdk/dependencies/ApiFactory$track$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, p0, Lcom/superwall/sdk/dependencies/ApiFactory$track$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 64
    iget v1, p0, Lcom/superwall/sdk/dependencies/ApiFactory$track$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    iput v2, p0, Lcom/superwall/sdk/dependencies/ApiFactory$track$1;->label:I

    invoke-static {p2, p1, p0}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
