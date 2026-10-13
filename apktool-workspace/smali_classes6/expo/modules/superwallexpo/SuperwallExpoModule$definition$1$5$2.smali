.class final Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$2;
.super Ljava/lang/Object;
.source "SuperwallExpoModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/superwallexpo/SuperwallExpoModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
        "Lkotlin/Unit;",
        ">;"
    }
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
.field final synthetic $handlerId:Ljava/lang/String;

.field final synthetic this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;


# direct methods
.method constructor <init>(Ljava/lang/String;Lexpo/modules/superwallexpo/SuperwallExpoModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$2;->$handlerId:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$2;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 247
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$2;->invoke(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;)V
    .locals 3

    const-string v0, "paywallInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 250
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "paywallInfoJson"

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 251
    invoke-static {p2}, Lexpo/modules/superwallexpo/json/PaywallResultKt;->toJson(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 252
    const-string p1, "handlerId"

    iget-object p2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$2;->$handlerId:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 249
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 254
    iget-object p2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$2;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-static {p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->access$getOnPaywallDismiss$p(Lexpo/modules/superwallexpo/SuperwallExpoModule;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
