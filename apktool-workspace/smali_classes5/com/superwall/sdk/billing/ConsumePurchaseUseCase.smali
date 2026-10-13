.class public final Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;
.super Lcom/superwall/sdk/billing/BillingClientUseCase;
.source "ConsumePurchaseUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/superwall/sdk/billing/BillingClientUseCase<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u00a8\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u0006\u0012%\u0010\n\u001a!\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012H\u0010\r\u001aD\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012!\u0012\u001f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00070\u000ej\u0002`\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0008\u0010\u0016\u001a\u00020\u0007H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R-\u0010\n\u001a!\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;",
        "Lcom/superwall/sdk/billing/BillingClientUseCase;",
        "",
        "useCaseParams",
        "Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;",
        "onReceive",
        "Lkotlin/Function1;",
        "",
        "onError",
        "Lcom/superwall/sdk/billing/BillingError;",
        "withConnectedClient",
        "Lcom/android/billingclient/api/BillingClient;",
        "Lkotlin/ExtensionFunctionType;",
        "executeRequestOnUIThread",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "delayInMillis",
        "Lcom/superwall/sdk/billing/ExecuteRequestOnUIThreadFunction;",
        "<init>",
        "(Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V",
        "executeAsync",
        "onOk",
        "received",
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
.field private final onReceive:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final useCaseParams:Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;

.field private final withConnectedClient:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/BillingClient;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RjDR8iPiQyu8oeqgleVz2axk4is(Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;->executeAsync$lambda$1$lambda$0(Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hzl2wF9NuGHmZMaBNOk5LpW8ZJE(Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;Lcom/android/billingclient/api/BillingClient;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;->executeAsync$lambda$1(Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;Lcom/android/billingclient/api/BillingClient;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/billing/BillingError;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/BillingClient;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/billing/BillingError;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "useCaseParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceive"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "withConnectedClient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executeRequestOnUIThread"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/billing/UseCaseParams;

    invoke-direct {p0, v0, p3, p5}, Lcom/superwall/sdk/billing/BillingClientUseCase;-><init>(Lcom/superwall/sdk/billing/UseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 15
    iput-object p1, p0, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;->useCaseParams:Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;

    .line 16
    iput-object p2, p0, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;->onReceive:Lkotlin/jvm/functions/Function1;

    .line 18
    iput-object p4, p0, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;->withConnectedClient:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final executeAsync$lambda$1(Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;Lcom/android/billingclient/api/BillingClient;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$withConnectedClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;->useCaseParams:Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;

    invoke-virtual {v1}, Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final executeAsync$lambda$1$lambda$0(Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 8

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v1, p0

    check-cast v1, Lcom/superwall/sdk/billing/BillingClientUseCase;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/superwall/sdk/billing/BillingClientUseCase;->processResult$default(Lcom/superwall/sdk/billing/BillingClientUseCase;Lcom/android/billingclient/api/BillingResult;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public executeAsync()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;->withConnectedClient:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onOk(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;->onOk(Ljava/lang/String;)V

    return-void
.end method

.method public onOk(Ljava/lang/String;)V
    .locals 9

    const-string v0, "received"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 37
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 38
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 39
    iget-object v0, p0, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;->useCaseParams:Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;

    invoke-virtual {v0}, Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Successfully consumed purchase with token "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 36
    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;->onReceive:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
