.class final Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PublicGetPaywall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt;->getPaywall(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicGetPaywall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicGetPaywall.kt\ncom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2\n+ 2 Either.kt\ncom/superwall/sdk/misc/EitherKt\n*L\n1#1,111:1\n143#2,4:112\n143#2,4:116\n*S KotlinDebug\n*F\n+ 1 PublicGetPaywall.kt\ncom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2\n*L\n70#1:112,4\n74#1:116,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.paywall.presentation.get_paywall.PublicGetPaywallKt$getPaywall$2"
    f = "PublicGetPaywall.kt"
    i = {}
    l = {
        0x36
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;

.field final synthetic $params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

.field final synthetic $placement:Ljava/lang/String;

.field final synthetic $this_getPaywall:Lcom/superwall/sdk/Superwall;

.field label:I


# direct methods
.method constructor <init>(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;",
            "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$this_getPaywall:Lcom/superwall/sdk/Superwall;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$placement:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$params:Ljava/util/Map;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$this_getPaywall:Lcom/superwall/sdk/Superwall;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$placement:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$params:Ljava/util/Map;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;-><init>(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 52
    iget v1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$this_getPaywall:Lcom/superwall/sdk/Superwall;

    move p1, v2

    .line 55
    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$placement:Ljava/lang/String;

    .line 56
    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$params:Ljava/util/Map;

    .line 57
    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    .line 58
    new-instance v5, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    iget-object v6, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->$delegate:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;

    invoke-direct {v5, v6}, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;)V

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 54
    iput p1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt$getPaywall$2;->label:I

    invoke-static/range {v1 .. v6}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt;->access$internallyGetPaywall(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 52
    :cond_2
    :goto_0
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 67
    instance-of v0, p1, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v0, :cond_5

    .line 68
    move-object v1, p1

    check-cast v1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v1}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 69
    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallView;->prepareToDisplay()V

    if-eqz v0, :cond_3

    .line 113
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 114
    :cond_3
    instance-of v0, p1, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v0, :cond_4

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 112
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 73
    :cond_5
    instance-of v1, p1, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v1, :cond_8

    if-eqz v0, :cond_6

    .line 117
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    .line 118
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 66
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 116
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 66
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
