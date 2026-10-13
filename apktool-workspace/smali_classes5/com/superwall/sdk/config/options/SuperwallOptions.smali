.class public final Lcom/superwall/sdk/config/options/SuperwallOptions;
.super Ljava/lang/Object;
.source "SuperwallOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;,
        Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002:;B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\"\u0008\u0016\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u0014R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0012\"\u0004\u0008$\u0010\u0014R\u001a\u0010%\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0012\"\u0004\u0008\'\u0010\u0014R\u001a\u0010(\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0012\"\u0004\u0008*\u0010\u0014R\u001a\u0010+\u001a\u00020,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001a\u00101\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0012\"\u0004\u00083\u0010\u0014R\u001a\u00104\u001a\u000205X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109\u00a8\u0006<"
    }
    d2 = {
        "Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "",
        "<init>",
        "()V",
        "definition",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "paywalls",
        "Lcom/superwall/sdk/config/options/PaywallOptions;",
        "getPaywalls",
        "()Lcom/superwall/sdk/config/options/PaywallOptions;",
        "setPaywalls",
        "(Lcom/superwall/sdk/config/options/PaywallOptions;)V",
        "shouldObservePurchases",
        "",
        "getShouldObservePurchases",
        "()Z",
        "setShouldObservePurchases",
        "(Z)V",
        "networkEnvironment",
        "Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;",
        "getNetworkEnvironment",
        "()Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;",
        "setNetworkEnvironment",
        "(Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;)V",
        "isExternalDataCollectionEnabled",
        "setExternalDataCollectionEnabled",
        "localeIdentifier",
        "",
        "getLocaleIdentifier",
        "()Ljava/lang/String;",
        "setLocaleIdentifier",
        "(Ljava/lang/String;)V",
        "isGameControllerEnabled",
        "setGameControllerEnabled",
        "passIdentifiersToPlayStore",
        "getPassIdentifiersToPlayStore",
        "setPassIdentifiersToPlayStore",
        "enableExperimentalDeviceVariables",
        "getEnableExperimentalDeviceVariables",
        "setEnableExperimentalDeviceVariables",
        "logging",
        "Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;",
        "getLogging",
        "()Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;",
        "setLogging",
        "(Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;)V",
        "useMockReviews",
        "getUseMockReviews",
        "setUseMockReviews",
        "testModeBehavior",
        "Lcom/superwall/sdk/store/testmode/TestModeBehavior;",
        "getTestModeBehavior",
        "()Lcom/superwall/sdk/store/testmode/TestModeBehavior;",
        "setTestModeBehavior",
        "(Lcom/superwall/sdk/store/testmode/TestModeBehavior;)V",
        "NetworkEnvironment",
        "Logging",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private enableExperimentalDeviceVariables:Z

.field private isExternalDataCollectionEnabled:Z

.field private isGameControllerEnabled:Z

.field private localeIdentifier:Ljava/lang/String;

.field private logging:Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;

.field private networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

.field private passIdentifiersToPlayStore:Z

.field private paywalls:Lcom/superwall/sdk/config/options/PaywallOptions;

.field private shouldObservePurchases:Z

.field private testModeBehavior:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

.field private useMockReviews:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/superwall/sdk/config/options/PaywallOptions;

    invoke-direct {v0}, Lcom/superwall/sdk/config/options/PaywallOptions;-><init>()V

    iput-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->paywalls:Lcom/superwall/sdk/config/options/PaywallOptions;

    .line 75
    new-instance v0, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Release;

    invoke-direct {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Release;-><init>()V

    check-cast v0, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    iput-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->isExternalDataCollectionEnabled:Z

    .line 119
    new-instance v0, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;

    invoke-direct {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;-><init>()V

    iput-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->logging:Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;

    .line 124
    sget-object v0, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->AUTOMATIC:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    iput-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->testModeBehavior:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/config/options/SuperwallOptions;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "definition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;-><init>()V

    .line 14
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getEnableExperimentalDeviceVariables()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->enableExperimentalDeviceVariables:Z

    return v0
.end method

.method public final getLocaleIdentifier()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->localeIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogging()Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->logging:Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;

    return-object v0
.end method

.method public final getNetworkEnvironment()Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    return-object v0
.end method

.method public final getPassIdentifiersToPlayStore()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->passIdentifiersToPlayStore:Z

    return v0
.end method

.method public final getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->paywalls:Lcom/superwall/sdk/config/options/PaywallOptions;

    return-object v0
.end method

.method public final getShouldObservePurchases()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->shouldObservePurchases:Z

    return v0
.end method

.method public final getTestModeBehavior()Lcom/superwall/sdk/store/testmode/TestModeBehavior;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->testModeBehavior:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    return-object v0
.end method

.method public final getUseMockReviews()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->useMockReviews:Z

    return v0
.end method

.method public final isExternalDataCollectionEnabled()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->isExternalDataCollectionEnabled:Z

    return v0
.end method

.method public final isGameControllerEnabled()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->isGameControllerEnabled:Z

    return v0
.end method

.method public final setEnableExperimentalDeviceVariables(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->enableExperimentalDeviceVariables:Z

    return-void
.end method

.method public final setExternalDataCollectionEnabled(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->isExternalDataCollectionEnabled:Z

    return-void
.end method

.method public final setGameControllerEnabled(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->isGameControllerEnabled:Z

    return-void
.end method

.method public final setLocaleIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->localeIdentifier:Ljava/lang/String;

    return-void
.end method

.method public final setLogging(Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->logging:Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;

    return-void
.end method

.method public final setNetworkEnvironment(Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->networkEnvironment:Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    return-void
.end method

.method public final setPassIdentifiersToPlayStore(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->passIdentifiersToPlayStore:Z

    return-void
.end method

.method public final setPaywalls(Lcom/superwall/sdk/config/options/PaywallOptions;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->paywalls:Lcom/superwall/sdk/config/options/PaywallOptions;

    return-void
.end method

.method public final setShouldObservePurchases(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->shouldObservePurchases:Z

    return-void
.end method

.method public final setTestModeBehavior(Lcom/superwall/sdk/store/testmode/TestModeBehavior;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->testModeBehavior:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    return-void
.end method

.method public final setUseMockReviews(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions;->useMockReviews:Z

    return-void
.end method
