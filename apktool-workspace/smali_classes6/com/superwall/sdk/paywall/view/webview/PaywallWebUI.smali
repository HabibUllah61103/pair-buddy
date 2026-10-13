.class public interface abstract Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;
.super Ljava/lang/Object;
.source "PaywallWebUI.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001:\u00014J!\u0010\u0008\u001a\u00020\t2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\t0\u000b\u00a2\u0006\u0002\u0008\rH&J\u0008\u0010\u0012\u001a\u00020\tH&J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H&J\u0018\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H&JO\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001a26\u0010\u001b\u001a2\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\t0\u001cH&\u00a2\u0006\u0004\u0008\"\u0010#J(\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020&2\u0016\u0010\'\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010&\u0012\u0004\u0012\u00020\t\u0018\u00010\u000bH&J\u0008\u0010(\u001a\u00020\tH&J\u0010\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u000201H&J\u0010\u00102\u001a\u00020\t2\u0006\u00103\u001a\u000201H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010)\u001a\u0004\u0018\u00010*X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.\u00a8\u00065"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;",
        "",
        "delegate",
        "Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;",
        "getDelegate",
        "()Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;",
        "setDelegate",
        "(Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;)V",
        "onView",
        "",
        "perform",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "Lkotlin/ExtensionFunctionType;",
        "messageHandler",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;",
        "getMessageHandler",
        "()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;",
        "enableBackgroundRendering",
        "scrollBy",
        "x",
        "",
        "y",
        "scrollTo",
        "setup",
        "url",
        "Lcom/superwall/sdk/models/paywall/PaywallURL;",
        "onRenderCrashed",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "didCrash",
        "priority",
        "setup-MkQ7Bds",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "evaluate",
        "code",
        "",
        "resultCallback",
        "destroyView",
        "onScrollChangeListener",
        "Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;",
        "getOnScrollChangeListener",
        "()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;",
        "setOnScrollChangeListener",
        "(Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;)V",
        "detach",
        "fromView",
        "Landroid/view/ViewGroup;",
        "attach",
        "toView",
        "OnScrollChangeListener",
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


# virtual methods
.method public abstract attach(Landroid/view/ViewGroup;)V
.end method

.method public abstract destroyView()V
.end method

.method public abstract detach(Landroid/view/ViewGroup;)V
.end method

.method public abstract enableBackgroundRendering()V
.end method

.method public abstract evaluate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDelegate()Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;
.end method

.method public abstract getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;
.end method

.method public abstract getOnScrollChangeListener()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;
.end method

.method public abstract onView(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scrollBy(II)V
.end method

.method public abstract scrollTo(II)V
.end method

.method public abstract setDelegate(Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;)V
.end method

.method public abstract setOnScrollChangeListener(Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;)V
.end method

.method public abstract setup-MkQ7Bds(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
