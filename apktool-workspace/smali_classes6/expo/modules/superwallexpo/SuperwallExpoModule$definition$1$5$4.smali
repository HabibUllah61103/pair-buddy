.class final Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$4;
.super Ljava/lang/Object;
.source "SuperwallExpoModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;",
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

    iput-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$4;->$handlerId:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$4;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 266
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;

    invoke-virtual {p0, p1}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$4;->invoke(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;)V
    .locals 2

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 269
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "skippedReason"

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallSkippedReasonKt;->toJson(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 270
    const-string p1, "handlerId"

    iget-object v1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$4;->$handlerId:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 268
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 271
    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$4;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-static {v0}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->access$getOnPaywallSkip$p(Lexpo/modules/superwallexpo/SuperwallExpoModule;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
