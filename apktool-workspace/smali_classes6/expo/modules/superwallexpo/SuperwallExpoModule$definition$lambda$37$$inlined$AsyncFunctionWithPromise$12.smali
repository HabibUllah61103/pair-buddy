.class public final Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$12;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/superwallexpo/SuperwallExpoModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 SuperwallExpoModule.kt\nexpo/modules/superwallexpo/SuperwallExpoModule\n*L\n1#1,613:1\n25#2:614\n231#3,44:615\n291#3,8:659\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$18\n*L\n325#1:614\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;


# direct methods
.method public constructor <init>(Lexpo/modules/superwallexpo/SuperwallExpoModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$12;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 327
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$12;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 6

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    .line 326
    check-cast p1, Ljava/lang/String;

    check-cast v1, Ljava/util/Map;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 616
    new-instance v3, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;

    invoke-direct {v3}, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;-><init>()V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 621
    new-instance v4, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$1;

    iget-object v5, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$12;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {v4, p1, v5}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$1;-><init>(Ljava/lang/String;Lexpo/modules/superwallexpo/SuperwallExpoModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v4}, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;->onPresent(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 631
    new-instance v4, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$2;

    iget-object v5, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$12;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {v4, p1, v5}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$2;-><init>(Ljava/lang/String;Lexpo/modules/superwallexpo/SuperwallExpoModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v3, v4}, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;->onDismiss(Lkotlin/jvm/functions/Function2;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 641
    new-instance v4, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$3;

    iget-object v5, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$12;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {v4, p1, v5}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$3;-><init>(Ljava/lang/String;Lexpo/modules/superwallexpo/SuperwallExpoModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v4}, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;->onError(Lkotlin/jvm/functions/Function1;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 650
    new-instance v4, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$4;

    iget-object v5, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$12;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {v4, p1, v5}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$4;-><init>(Ljava/lang/String;Lexpo/modules/superwallexpo/SuperwallExpoModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v4}, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;->onSkip(Lkotlin/jvm/functions/Function1;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 658
    new-instance v4, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$5;

    iget-object v5, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$12;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {v4, v5, p1, v2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$5;-><init>(Lexpo/modules/superwallexpo/SuperwallExpoModule;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v3, v4}, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;->onCustomCallback(Lkotlin/jvm/functions/Function2;)V

    .line 659
    :cond_5
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    new-instance v2, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$6;

    invoke-direct {v2, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$5$6;-><init>(Lexpo/modules/kotlin/Promise;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0, v1, v3, v2}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->register(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
