.class public final Lexpo/modules/superwallexpo/json/PresentationResultKt;
.super Ljava/lang/Object;
.source "PresentationResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toJson",
        "",
        "",
        "",
        "Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;",
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
.method public static final toJson(Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 10
    instance-of v1, p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$Holdout;

    const-string v2, "experiment"

    const-string v3, "type"

    if-eqz v1, :cond_0

    .line 11
    const-string v1, "Holdout"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lexpo/modules/superwallexpo/json/Experiment;->Companion:Lexpo/modules/superwallexpo/json/Experiment$Companion;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$Holdout;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$Holdout;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object p0

    invoke-virtual {v1, p0}, Lexpo/modules/superwallexpo/json/Experiment$Companion;->toJson(Lcom/superwall/sdk/models/triggers/Experiment;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 15
    :cond_0
    instance-of v1, p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$Paywall;

    if-eqz v1, :cond_1

    .line 16
    const-string v1, "Paywall"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lexpo/modules/superwallexpo/json/Experiment;->Companion:Lexpo/modules/superwallexpo/json/Experiment$Companion;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$Paywall;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$Paywall;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object p0

    invoke-virtual {v1, p0}, Lexpo/modules/superwallexpo/json/Experiment$Companion;->toJson(Lcom/superwall/sdk/models/triggers/Experiment;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 20
    :cond_1
    instance-of v1, p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$NoAudienceMatch;

    if-eqz v1, :cond_2

    .line 21
    const-string p0, "NoAudienceMatch"

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 24
    :cond_2
    instance-of v1, p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$PlacementNotFound;

    if-eqz v1, :cond_3

    .line 25
    const-string p0, "PlacementNotFound"

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 28
    :cond_3
    instance-of p0, p0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$PaywallNotAvailable;

    if-eqz p0, :cond_4

    .line 29
    const-string p0, "PaywallNotAvailable"

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 9
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
