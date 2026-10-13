.class public final Lcom/superwall/sdk/utilities/SuperwallDSLKt;
.super Ljava/lang/Object;
.source "SuperwallDSL.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tH\u0007\u001a%\u0010\n\u001a\u00020\u0008*\u00020\u000b2\u0017\u0010\u000c\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tH\u0007\u001a%\u0010\u000e\u001a\u00020\u0008*\u00020\u000b2\u0017\u0010\u000c\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "configureSuperwall",
        "Lcom/superwall/sdk/Superwall;",
        "Landroid/app/Application;",
        "apiKey",
        "",
        "configure",
        "Lkotlin/Function1;",
        "Lcom/superwall/sdk/utilities/SuperwallBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "paywalls",
        "Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "action",
        "Lcom/superwall/sdk/config/options/PaywallOptions;",
        "logging",
        "Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final configureSuperwall(Landroid/app/Application;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/Superwall;
    .locals 8
    .annotation runtime Lcom/superwall/sdk/utilities/SuperwallDSL;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/utilities/SuperwallBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/superwall/sdk/Superwall;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/superwall/sdk/utilities/SuperwallBuilder;

    invoke-direct {v0}, Lcom/superwall/sdk/utilities/SuperwallBuilder;-><init>()V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    .line 49
    invoke-virtual {v0}, Lcom/superwall/sdk/utilities/SuperwallBuilder;->getPurchaseController()Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    move-result-object v4

    .line 50
    invoke-virtual {v0}, Lcom/superwall/sdk/utilities/SuperwallBuilder;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v5

    .line 51
    invoke-virtual {v0}, Lcom/superwall/sdk/utilities/SuperwallBuilder;->getActivityProvider()Lcom/superwall/sdk/misc/ActivityProvider;

    move-result-object v6

    .line 52
    invoke-virtual {v0}, Lcom/superwall/sdk/utilities/SuperwallBuilder;->getCompletion()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    .line 46
    invoke-virtual/range {v1 .. v7}, Lcom/superwall/sdk/Superwall$Companion;->configure(Landroid/app/Application;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Lkotlin/jvm/functions/Function1;)V

    .line 54
    sget-object p0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p0

    return-object p0
.end method

.method public static final logging(Lcom/superwall/sdk/config/options/SuperwallOptions;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation runtime Lcom/superwall/sdk/utilities/SuperwallDSL;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/options/SuperwallOptions;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getLogging()Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setLogging(Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;)V

    return-void
.end method

.method public static final paywalls(Lcom/superwall/sdk/config/options/SuperwallOptions;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation runtime Lcom/superwall/sdk/utilities/SuperwallDSL;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/options/SuperwallOptions;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/config/options/PaywallOptions;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setPaywalls(Lcom/superwall/sdk/config/options/PaywallOptions;)V

    return-void
.end method
