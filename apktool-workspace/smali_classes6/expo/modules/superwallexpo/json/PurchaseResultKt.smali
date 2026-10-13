.class public final Lexpo/modules/superwallexpo/json/PurchaseResultKt;
.super Ljava/lang/Object;
.source "PurchaseResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "purchaseResultFromJson",
        "Lcom/superwall/sdk/delegate/PurchaseResult;",
        "json",
        "",
        "",
        "",
        "expo-superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final purchaseResultFromJson(Ljava/util/Map;)Lcom/superwall/sdk/delegate/PurchaseResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/superwall/sdk/delegate/PurchaseResult;"
        }
    .end annotation

    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "cancelled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;

    invoke-direct {p0}, Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;-><init>()V

    check-cast p0, Lcom/superwall/sdk/delegate/PurchaseResult;

    return-object p0

    .line 6
    :sswitch_1
    const-string p0, "pending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Lcom/superwall/sdk/delegate/PurchaseResult$Pending;

    invoke-direct {p0}, Lcom/superwall/sdk/delegate/PurchaseResult$Pending;-><init>()V

    check-cast p0, Lcom/superwall/sdk/delegate/PurchaseResult;

    return-object p0

    .line 6
    :sswitch_2
    const-string v1, "failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    const-string v0, "error"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_3

    const-string p0, "Unknown error"

    .line 13
    :cond_3
    new-instance v0, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    invoke-direct {v0, p0}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/superwall/sdk/delegate/PurchaseResult;

    return-object v0

    .line 6
    :sswitch_3
    const-string p0, "purchased"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    new-instance p0, Lcom/superwall/sdk/delegate/PurchaseResult$Purchased;

    invoke-direct {p0}, Lcom/superwall/sdk/delegate/PurchaseResult$Purchased;-><init>()V

    check-cast p0, Lcom/superwall/sdk/delegate/PurchaseResult;

    return-object p0

    .line 16
    :goto_0
    new-instance p0, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    const-string v0, "Unknown Purchase Result type"

    invoke-direct {p0, v0}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;-><init>(Ljava/lang/String;)V

    check-cast p0, Lcom/superwall/sdk/delegate/PurchaseResult;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6ac8647d -> :sswitch_3
        -0x4c696bc3 -> :sswitch_2
        -0x28af7669 -> :sswitch_1
        0x1c682951 -> :sswitch_0
    .end sparse-switch
.end method
