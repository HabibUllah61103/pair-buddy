.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince$DefaultImpls;
.super Ljava/lang/Object;
.source "SuperscriptExposedFunction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince;
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
.method public static invoke(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince;",
            "Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince$invoke$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince$invoke$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince$invoke$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince$invoke$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince$invoke$1;

    invoke-direct {v0, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince$invoke$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 202
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince$invoke$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 205
    new-instance p2, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;

    .line 206
    invoke-interface {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince;->getPropertyRequest()Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    move-result-object v2

    .line 207
    invoke-interface {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince;->getEvent()Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-direct {p2, v2, p0}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;-><init>(Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;Ljava/lang/String;)V

    .line 203
    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince$invoke$1;->label:I

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->getComputedPropertySinceEvent(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/config/ComputedPropertyRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    .line 209
    :goto_2
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
