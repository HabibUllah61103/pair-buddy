.class public final Lcom/superwall/sdk/debug/DebugManager$Companion;
.super Ljava/lang/Object;
.source "DebugManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/debug/DebugManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001b\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/superwall/sdk/debug/DebugManager$Companion;",
        "",
        "<init>",
        "()V",
        "outcomeForDeepLink",
        "Lkotlin/Result;",
        "Lcom/superwall/sdk/debug/DebugManager$DeepLinkOutcome;",
        "deepLinkUrl",
        "Landroid/net/Uri;",
        "outcomeForDeepLink-IoAF18A",
        "(Landroid/net/Uri;)Ljava/lang/Object;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final outcomeForDeepLink-IoAF18A(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 3

    const-string v0, "deepLinkUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic;->INSTANCE:Lcom/superwall/sdk/debug/SWDebugManagerLogic;

    .line 34
    sget-object v1, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->SUPERWALL_DEBUG:Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    .line 32
    invoke-virtual {v0, p1, v1}, Lcom/superwall/sdk/debug/SWDebugManagerLogic;->getQueryItemValue(Landroid/net/Uri;Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not debug link"

    if-nez v0, :cond_0

    .line 35
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 39
    :cond_1
    sget-object v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic;->INSTANCE:Lcom/superwall/sdk/debug/SWDebugManagerLogic;

    .line 41
    sget-object v2, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->TOKEN:Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    .line 39
    invoke-virtual {v0, p1, v2}, Lcom/superwall/sdk/debug/SWDebugManagerLogic;->getQueryItemValue(Landroid/net/Uri;Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 42
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_2
    sget-object v1, Lcom/superwall/sdk/debug/SWDebugManagerLogic;->INSTANCE:Lcom/superwall/sdk/debug/SWDebugManagerLogic;

    .line 47
    sget-object v2, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->PAYWALL_ID:Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    .line 45
    invoke-virtual {v1, p1, v2}, Lcom/superwall/sdk/debug/SWDebugManagerLogic;->getQueryItemValue(Landroid/net/Uri;Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;)Ljava/lang/String;

    move-result-object p1

    .line 50
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/superwall/sdk/debug/DebugManager$DeepLinkOutcome;

    invoke-direct {v1, v0, p1}, Lcom/superwall/sdk/debug/DebugManager$DeepLinkOutcome;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
