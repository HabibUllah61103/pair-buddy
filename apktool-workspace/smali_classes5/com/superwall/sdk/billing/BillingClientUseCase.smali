.class public abstract Lcom/superwall/sdk/billing/BillingClientUseCase;
.super Ljava/lang/Object;
.source "BillingClientUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBillingClientUseCase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingClientUseCase.kt\ncom/superwall/sdk/billing/BillingClientUseCase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,188:1\n1#2:189\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002Bm\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u0012H\u0010\t\u001aD\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012!\u0012\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00080\nj\u0002`\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u001d\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u000bJ\u0008\u0010\u001f\u001a\u00020\u0008H&J\u0015\u0010 \u001a\u00020\u00082\u0006\u0010!\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\"JG\u0010#\u001a\u00020\u00082\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00028\u00002\u0014\u0008\u0002\u0010\'\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00080\u00062\u0014\u0008\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0010(J\'\u0010)\u001a\u00020\u0008*\u0004\u0018\u00010*2\u0017\u0010+\u001a\u0013\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008,H\u0004J\u0008\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u00020\u00082\u0006\u0010$\u001a\u00020%H\u0002J$\u00100\u001a\u00020\u00082\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010$\u001a\u00020%H\u0002J$\u00101\u001a\u00020\u00082\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010$\u001a\u00020%H\u0002J\u0008\u00102\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000RS\u0010\t\u001aD\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012!\u0012\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00080\nj\u0002`\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u0015X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/superwall/sdk/billing/BillingClientUseCase;",
        "T",
        "",
        "useCaseParams",
        "Lcom/superwall/sdk/billing/UseCaseParams;",
        "onError",
        "Lkotlin/Function1;",
        "Lcom/superwall/sdk/billing/BillingError;",
        "",
        "executeRequestOnUIThread",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "delayInMillis",
        "Lcom/superwall/sdk/billing/ExecuteRequestOnUIThreadFunction;",
        "<init>",
        "(Lcom/superwall/sdk/billing/UseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V",
        "getExecuteRequestOnUIThread",
        "()Lkotlin/jvm/functions/Function2;",
        "backoffForNetworkErrors",
        "",
        "getBackoffForNetworkErrors",
        "()Z",
        "maxRetries",
        "",
        "retryAttempt",
        "retryBackoffMilliseconds",
        "foregroundBackoffAttempt",
        "run",
        "delayMilliseconds",
        "executeAsync",
        "onOk",
        "received",
        "(Ljava/lang/Object;)V",
        "processResult",
        "billingResult",
        "Lcom/android/billingclient/api/BillingResult;",
        "response",
        "onSuccess",
        "(Lcom/android/billingclient/api/BillingResult;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "withConnectedClient",
        "Lcom/android/billingclient/api/BillingClient;",
        "receivingFunction",
        "Lkotlin/ExtensionFunctionType;",
        "getStackTrace",
        "",
        "forwardError",
        "backoffOrRetryNetworkError",
        "backoffOrErrorIfUseInSession",
        "retryWithBackoff",
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
.field private final backoffForNetworkErrors:Z

.field private final executeRequestOnUIThread:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/billing/BillingError;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundBackoffAttempt:I

.field private final maxRetries:I

.field private final onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/billing/BillingError;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private retryAttempt:I

.field private retryBackoffMilliseconds:J

.field private final useCaseParams:Lcom/superwall/sdk/billing/UseCaseParams;


# direct methods
.method public static synthetic $r8$lambda$5l_vzoBlLfH4IAJkFOd9S0L45gk(Lcom/superwall/sdk/billing/BillingClientUseCase;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/billing/BillingClientUseCase;->run$lambda$0(Lcom/superwall/sdk/billing/BillingClientUseCase;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/superwall/sdk/billing/UseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/billing/UseCaseParams;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/billing/BillingError;",
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

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executeRequestOnUIThread"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->useCaseParams:Lcom/superwall/sdk/billing/UseCaseParams;

    .line 30
    iput-object p2, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->onError:Lkotlin/jvm/functions/Function1;

    .line 31
    iput-object p3, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->executeRequestOnUIThread:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x3

    .line 35
    iput p1, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->maxRetries:I

    const-wide/16 p1, 0x36e

    .line 37
    iput-wide p1, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryBackoffMilliseconds:J

    return-void
.end method

.method public static final synthetic access$forwardError(Lcom/superwall/sdk/billing/BillingClientUseCase;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/superwall/sdk/billing/BillingClientUseCase;->forwardError(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final backoffOrErrorIfUseInSession(Lkotlin/jvm/functions/Function1;Lcom/android/billingclient/api/BillingResult;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/BillingResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/android/billingclient/api/BillingResult;",
            ")V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->useCaseParams:Lcom/superwall/sdk/billing/UseCaseParams;

    invoke-interface {v0}, Lcom/superwall/sdk/billing/UseCaseParams;->getAppInBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 141
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 142
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v7, 0x18

    const/4 v8, 0x0

    .line 140
    const-string v4, "Billing is unavailable. App is in background, will retry with backoff."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 145
    iget-wide v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryBackoffMilliseconds:J

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryWithBackoff()V

    return-void

    .line 148
    :cond_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 150
    :cond_1
    iget v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryAttempt:I

    iget v1, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->maxRetries:I

    if-ge v0, v1, :cond_2

    .line 151
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 152
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 153
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 154
    iget p1, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryAttempt:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->maxRetries:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Billing unavailable in foreground. Retry "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (immediate)."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 151
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 156
    iget p1, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryAttempt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryAttempt:I

    .line 157
    invoke-virtual {p0}, Lcom/superwall/sdk/billing/BillingClientUseCase;->executeAsync()V

    return-void

    .line 158
    :cond_2
    iget v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->foregroundBackoffAttempt:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    const-wide/16 p1, 0xfa

    shl-long/2addr p1, v0

    .line 160
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 161
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 162
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 163
    iget v3, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->foregroundBackoffAttempt:I

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Billing unavailable in foreground. Backoff retry "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/2 in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 160
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 165
    iget v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->foregroundBackoffAttempt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->foregroundBackoffAttempt:I

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/billing/BillingClientUseCase;->run(J)V

    return-void

    .line 168
    :cond_3
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 169
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 170
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v7, 0x18

    const/4 v8, 0x0

    .line 168
    const-string v4, "Billing unavailable. Foreground retries exhausted."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 173
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final backoffOrRetryNetworkError(Lkotlin/jvm/functions/Function1;Lcom/android/billingclient/api/BillingResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/BillingResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/android/billingclient/api/BillingResult;",
            ")V"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/superwall/sdk/billing/BillingClientUseCase;->getBackoffForNetworkErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryBackoffMilliseconds:J

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryWithBackoff()V

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/billing/BillingClientUseCase;->getBackoffForNetworkErrors()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryAttempt:I

    iget v1, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->maxRetries:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 128
    iput v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryAttempt:I

    .line 129
    invoke-virtual {p0}, Lcom/superwall/sdk/billing/BillingClientUseCase;->executeAsync()V

    return-void

    .line 131
    :cond_1
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final forwardError(Lcom/android/billingclient/api/BillingResult;)V
    .locals 8

    .line 110
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading products - DebugMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    new-instance p1, Lcom/superwall/sdk/billing/BillingError$BillingNotAvailable;

    invoke-direct {p1, v3}, Lcom/superwall/sdk/billing/BillingError$BillingNotAvailable;-><init>(Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 114
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 115
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 113
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->onError:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getStackTrace()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 103
    new-instance v1, Ljava/io/PrintWriter;

    move-object v2, v0

    check-cast v2, Ljava/io/Writer;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 104
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic processResult$default(Lcom/superwall/sdk/billing/BillingClientUseCase;Lcom/android/billingclient/api/BillingResult;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 57
    new-instance p3, Lcom/superwall/sdk/billing/BillingClientUseCase$processResult$1;

    invoke-direct {p3, p0}, Lcom/superwall/sdk/billing/BillingClientUseCase$processResult$1;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 58
    new-instance p4, Lcom/superwall/sdk/billing/BillingClientUseCase$processResult$2;

    invoke-direct {p4, p0}, Lcom/superwall/sdk/billing/BillingClientUseCase$processResult$2;-><init>(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 54
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/billing/BillingClientUseCase;->processResult(Lcom/android/billingclient/api/BillingResult;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: processResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final retryWithBackoff()V
    .locals 6

    .line 178
    iget-wide v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryBackoffMilliseconds:J

    const/4 v2, 0x2

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/32 v4, 0xdbba0

    .line 182
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 179
    iput-wide v2, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryBackoffMilliseconds:J

    .line 184
    invoke-virtual {p0, v0, v1}, Lcom/superwall/sdk/billing/BillingClientUseCase;->run(J)V

    return-void
.end method

.method public static synthetic run$default(Lcom/superwall/sdk/billing/BillingClientUseCase;JILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 40
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/billing/BillingClientUseCase;->run(J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: run"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final run$lambda$0(Lcom/superwall/sdk/billing/BillingClientUseCase;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;
    .locals 0

    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/superwall/sdk/billing/BillingClientUseCase;->executeAsync()V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->onError:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public abstract executeAsync()V
.end method

.method protected getBackoffForNetworkErrors()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->backoffForNetworkErrors:Z

    return v0
.end method

.method public final getExecuteRequestOnUIThread()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/billing/BillingError;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->executeRequestOnUIThread:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public abstract onOk(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final processResult(Lcom/android/billingclient/api/BillingResult;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/BillingResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p2, 0x6

    if-eq v0, p2, :cond_0

    const/16 p2, 0xc

    if-eq v0, p2, :cond_0

    .line 86
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 82
    :cond_0
    invoke-direct {p0, p4, p1}, Lcom/superwall/sdk/billing/BillingClientUseCase;->backoffOrRetryNetworkError(Lkotlin/jvm/functions/Function1;Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 76
    :cond_1
    invoke-direct {p0, p4, p1}, Lcom/superwall/sdk/billing/BillingClientUseCase;->backoffOrErrorIfUseInSession(Lkotlin/jvm/functions/Function1;Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_2
    const-wide/16 v0, 0x36e

    .line 62
    iput-wide v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->retryBackoffMilliseconds:J

    .line 63
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 67
    :cond_3
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 68
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 69
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    const/16 v8, 0x18

    const/4 v9, 0x0

    .line 67
    const-string v5, "Billing Service disconnected."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    .line 72
    invoke-static {p0, p3, p4, p1, p2}, Lcom/superwall/sdk/billing/BillingClientUseCase;->run$default(Lcom/superwall/sdk/billing/BillingClientUseCase;JILjava/lang/Object;)V

    return-void
.end method

.method public final run(J)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase;->executeRequestOnUIThread:Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Lcom/superwall/sdk/billing/BillingClientUseCase$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/superwall/sdk/billing/BillingClientUseCase$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/billing/BillingClientUseCase;)V

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final withConnectedClient(Lcom/android/billingclient/api/BillingClient;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingClient;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/BillingClient;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "receivingFunction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 93
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 94
    :cond_1
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 95
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 96
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->productsManager:Lcom/superwall/sdk/logger/LogScope;

    .line 97
    invoke-direct {p0}, Lcom/superwall/sdk/billing/BillingClientUseCase;->getStackTrace()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "Billing Service disconnected.  Stack trace: "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 94
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
