.class public final Lexpo/modules/superwallexpo/json/RestoreTypeKt;
.super Ljava/lang/Object;
.source "RestoreType.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toJson",
        "",
        "",
        "",
        "Lcom/superwall/sdk/store/transactions/RestoreType;",
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
.method public static final toJson(Lcom/superwall/sdk/store/transactions/RestoreType;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/transactions/RestoreType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 8
    instance-of v1, p0, Lcom/superwall/sdk/store/transactions/RestoreType$ViaPurchase;

    const-string v2, "type"

    if-eqz v1, :cond_1

    .line 9
    const-string v1, "viaPurchase"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    check-cast p0, Lcom/superwall/sdk/store/transactions/RestoreType$ViaPurchase;

    invoke-virtual {p0}, Lcom/superwall/sdk/store/transactions/RestoreType$ViaPurchase;->getTransaction()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lexpo/modules/superwallexpo/json/StoreTransactionKt;->toJson(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "transaction"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 12
    :cond_1
    instance-of p0, p0, Lcom/superwall/sdk/store/transactions/RestoreType$ViaRestore;

    if-eqz p0, :cond_2

    const-string p0, "viaRestore"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 7
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
