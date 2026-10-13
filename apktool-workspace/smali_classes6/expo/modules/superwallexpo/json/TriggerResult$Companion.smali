.class public final Lexpo/modules/superwallexpo/json/TriggerResult$Companion;
.super Ljava/lang/Object;
.source "TriggerResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/superwallexpo/json/TriggerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/superwallexpo/json/TriggerResult$Companion;",
        "",
        "<init>",
        "()V",
        "toJson",
        "",
        "",
        "triggerResult",
        "Lcom/superwall/sdk/models/triggers/TriggerResult;",
        "expo-superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/superwallexpo/json/TriggerResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toJson(Lcom/superwall/sdk/models/triggers/TriggerResult;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/triggers/TriggerResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "triggerResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 10
    instance-of v1, p1, Lcom/superwall/sdk/models/triggers/TriggerResult$PlacementNotFound;

    const-string v2, "result"

    if-eqz v1, :cond_0

    .line 11
    const-string p1, "placementNotFound"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/triggers/TriggerResult$NoAudienceMatch;

    if-eqz v1, :cond_1

    .line 14
    const-string p1, "noAudienceMatch"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 16
    :cond_1
    instance-of v1, p1, Lcom/superwall/sdk/models/triggers/TriggerResult$Paywall;

    const-string v3, "experiment"

    if-eqz v1, :cond_2

    .line 17
    const-string v1, "paywall"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lexpo/modules/superwallexpo/json/Experiment;->Companion:Lexpo/modules/superwallexpo/json/Experiment$Companion;

    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerResult$Paywall;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerResult$Paywall;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object p1

    invoke-virtual {v1, p1}, Lexpo/modules/superwallexpo/json/Experiment$Companion;->toJson(Lcom/superwall/sdk/models/triggers/Experiment;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 20
    :cond_2
    instance-of v1, p1, Lcom/superwall/sdk/models/triggers/TriggerResult$Holdout;

    if-eqz v1, :cond_3

    .line 21
    const-string v1, "holdout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lexpo/modules/superwallexpo/json/Experiment;->Companion:Lexpo/modules/superwallexpo/json/Experiment$Companion;

    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerResult$Holdout;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerResult$Holdout;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object p1

    invoke-virtual {v1, p1}, Lexpo/modules/superwallexpo/json/Experiment$Companion;->toJson(Lcom/superwall/sdk/models/triggers/Experiment;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 24
    :cond_3
    instance-of v1, p1, Lcom/superwall/sdk/models/triggers/TriggerResult$Error;

    if-eqz v1, :cond_4

    .line 25
    const-string v1, "error"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerResult$Error;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerResult$Error;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorMessage"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 9
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
