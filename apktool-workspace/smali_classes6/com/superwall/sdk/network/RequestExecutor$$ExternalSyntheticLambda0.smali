.class public final synthetic Lcom/superwall/sdk/network/RequestExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/superwall/sdk/network/URLQueryItem;

    invoke-static {p1}, Lcom/superwall/sdk/network/RequestExecutor;->$r8$lambda$vyfKAz8F9mACahCCYrXaYWKnLNg(Lcom/superwall/sdk/network/URLQueryItem;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
