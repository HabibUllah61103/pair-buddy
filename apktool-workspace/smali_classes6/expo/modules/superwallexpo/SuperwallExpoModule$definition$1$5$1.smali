.class final Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$1;
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
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
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

    iput-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$1;->$handlerId:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 237
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    invoke-virtual {p0, p1}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$1;->invoke(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 2

    const-string v0, "paywallInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 240
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "paywallInfoJson"

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 241
    const-string p1, "handlerId"

    iget-object v1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$1;->$handlerId:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 239
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 242
    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-static {v0}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->access$getOnPaywallPresent$p(Lexpo/modules/superwallexpo/SuperwallExpoModule;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
