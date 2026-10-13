.class public final Lexpo/modules/superwallexpo/json/PaywallCloseReasonKt;
.super Ljava/lang/Object;
.source "PaywallCloseReason.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "rawValue",
        "",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
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
.method public static final rawValue(Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$SystemLogic;

    if-eqz v0, :cond_0

    const-string p0, "systemLogic"

    return-object p0

    .line 7
    :cond_0
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ForNextPaywall;

    if-eqz v0, :cond_1

    const-string p0, "forNextPaywall"

    return-object p0

    .line 8
    :cond_1
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$WebViewFailedToLoad;

    if-eqz v0, :cond_2

    const-string p0, "webViewFailedToLoad"

    return-object p0

    .line 9
    :cond_2
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;

    if-eqz v0, :cond_3

    const-string p0, "manualClose"

    return-object p0

    .line 10
    :cond_3
    instance-of p0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;

    if-eqz p0, :cond_4

    const-string p0, "none"

    return-object p0

    .line 5
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
