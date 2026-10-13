.class public final Lexpo/modules/superwallexpo/json/RestorationResultKt;
.super Ljava/lang/Object;
.source "RestorationResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u001a\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00032\u0006\u0010\u0007\u001a\u00020\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "restorationResultFromJson",
        "Lcom/superwall/sdk/delegate/RestorationResult;",
        "json",
        "",
        "",
        "",
        "restorationResultToJson",
        "result",
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
.method public static final restorationResultFromJson(Ljava/util/Map;)Lcom/superwall/sdk/delegate/RestorationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/superwall/sdk/delegate/RestorationResult;"
        }
    .end annotation

    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "result"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 8
    const-string v1, "restored"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/superwall/sdk/delegate/RestorationResult$Restored;

    invoke-direct {p0}, Lcom/superwall/sdk/delegate/RestorationResult$Restored;-><init>()V

    check-cast p0, Lcom/superwall/sdk/delegate/RestorationResult;

    return-object p0

    .line 9
    :cond_0
    const-string v1, "failed"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    const-string v0, "errorMessage"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, "Unknown error"

    .line 11
    :cond_1
    new-instance v0, Lcom/superwall/sdk/delegate/RestorationResult$Failed;

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/delegate/RestorationResult$Failed;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/delegate/RestorationResult;

    return-object v0

    .line 13
    :cond_2
    new-instance p0, Lcom/superwall/sdk/delegate/RestorationResult$Failed;

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unknown restoration result"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lcom/superwall/sdk/delegate/RestorationResult$Failed;-><init>(Ljava/lang/Throwable;)V

    check-cast p0, Lcom/superwall/sdk/delegate/RestorationResult;

    return-object p0
.end method

.method public static final restorationResultToJson(Lcom/superwall/sdk/delegate/RestorationResult;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/delegate/RestorationResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    instance-of v1, p0, Lcom/superwall/sdk/delegate/RestorationResult$Restored;

    if-eqz v1, :cond_0

    const-string p0, "restored"

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    instance-of v1, p0, Lcom/superwall/sdk/delegate/RestorationResult$Failed;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 21
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "failed"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 22
    check-cast p0, Lcom/superwall/sdk/delegate/RestorationResult$Failed;

    invoke-virtual {p0}, Lcom/superwall/sdk/delegate/RestorationResult$Failed;->getError()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "Unknown error"

    :cond_2
    const-string v0, "errorMessage"

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v1, v0

    .line 20
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 18
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
