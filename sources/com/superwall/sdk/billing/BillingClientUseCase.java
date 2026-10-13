package com.superwall.sdk.billing;

import androidx.exifinterface.media.ExifInterface;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import java.io.PrintWriter;
import java.io.StringWriter;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BillingClientUseCase.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b \u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002Bm\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012H\u0010\t\u001aD\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012!\u0012\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\b0\nj\u0002`\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u001d\u001a\u00020\b2\b\b\u0002\u0010\u001e\u001a\u00020\u000bJ\b\u0010\u001f\u001a\u00020\bH&J\u0015\u0010 \u001a\u00020\b2\u0006\u0010!\u001a\u00028\u0000H&¢\u0006\u0002\u0010\"JG\u0010#\u001a\u00020\b2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00028\u00002\u0014\b\u0002\u0010'\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0\u00062\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\u0010(J'\u0010)\u001a\u00020\b*\u0004\u0018\u00010*2\u0017\u0010+\u001a\u0013\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b,H\u0004J\b\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u00020\b2\u0006\u0010$\u001a\u00020%H\u0002J$\u00100\u001a\u00020\b2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010$\u001a\u00020%H\u0002J$\u00101\u001a\u00020\b2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010$\u001a\u00020%H\u0002J\b\u00102\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000RS\u0010\t\u001aD\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012!\u0012\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\b0\nj\u0002`\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u0015X\u0094D¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcom/superwall/sdk/billing/BillingClientUseCase;", ExifInterface.GPS_DIRECTION_TRUE, "", "useCaseParams", "Lcom/superwall/sdk/billing/UseCaseParams;", "onError", "Lkotlin/Function1;", "Lcom/superwall/sdk/billing/BillingError;", "", "executeRequestOnUIThread", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "delayInMillis", "Lcom/superwall/sdk/billing/ExecuteRequestOnUIThreadFunction;", "<init>", "(Lcom/superwall/sdk/billing/UseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", "getExecuteRequestOnUIThread", "()Lkotlin/jvm/functions/Function2;", "backoffForNetworkErrors", "", "getBackoffForNetworkErrors", "()Z", "maxRetries", "", "retryAttempt", "retryBackoffMilliseconds", "foregroundBackoffAttempt", "run", "delayMilliseconds", "executeAsync", "onOk", "received", "(Ljava/lang/Object;)V", "processResult", "billingResult", "Lcom/android/billingclient/api/BillingResult;", "response", "onSuccess", "(Lcom/android/billingclient/api/BillingResult;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "withConnectedClient", "Lcom/android/billingclient/api/BillingClient;", "receivingFunction", "Lkotlin/ExtensionFunctionType;", "getStackTrace", "", "forwardError", "backoffOrRetryNetworkError", "backoffOrErrorIfUseInSession", "retryWithBackoff", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class BillingClientUseCase<T> {
    private final boolean backoffForNetworkErrors;
    private final Function2<Long, Function1<? super BillingError, Unit>, Unit> executeRequestOnUIThread;
    private int foregroundBackoffAttempt;
    private final int maxRetries;
    private final Function1<BillingError, Unit> onError;
    private int retryAttempt;
    private long retryBackoffMilliseconds;
    private final UseCaseParams useCaseParams;

    public abstract void executeAsync();

    public abstract void onOk(T received);

    /* JADX WARN: Multi-variable type inference failed */
    public BillingClientUseCase(UseCaseParams useCaseParams, Function1<? super BillingError, Unit> onError, Function2<? super Long, ? super Function1<? super BillingError, Unit>, Unit> executeRequestOnUIThread) {
        Intrinsics.checkNotNullParameter(useCaseParams, "useCaseParams");
        Intrinsics.checkNotNullParameter(onError, "onError");
        Intrinsics.checkNotNullParameter(executeRequestOnUIThread, "executeRequestOnUIThread");
        this.useCaseParams = useCaseParams;
        this.onError = onError;
        this.executeRequestOnUIThread = executeRequestOnUIThread;
        this.maxRetries = 3;
        this.retryBackoffMilliseconds = 878L;
    }

    public final Function2<Long, Function1<? super BillingError, Unit>, Unit> getExecuteRequestOnUIThread() {
        return this.executeRequestOnUIThread;
    }

    protected boolean getBackoffForNetworkErrors() {
        return this.backoffForNetworkErrors;
    }

    public static /* synthetic */ void run$default(BillingClientUseCase billingClientUseCase, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: run");
        }
        if ((i & 1) != 0) {
            j = 0;
        }
        billingClientUseCase.run(j);
    }

    public final void run(long delayMilliseconds) {
        this.executeRequestOnUIThread.invoke(Long.valueOf(delayMilliseconds), new Function1() { // from class: com.superwall.sdk.billing.BillingClientUseCase$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BillingClientUseCase.run$lambda$0(this.f$0, (BillingError) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit run$lambda$0(BillingClientUseCase billingClientUseCase, BillingError billingError) {
        if (billingError == null) {
            billingClientUseCase.executeAsync();
        } else {
            billingClientUseCase.onError.invoke(billingError);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.billing.BillingClientUseCase$processResult$1, reason: invalid class name */
    /* JADX INFO: compiled from: BillingClientUseCase.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<T, Unit> {
        AnonymousClass1(Object obj) {
            super(1, obj, BillingClientUseCase.class, "onOk", "onOk(Ljava/lang/Object;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
            invoke2(obj);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(T t) {
            ((BillingClientUseCase) this.receiver).onOk(t);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.billing.BillingClientUseCase$processResult$2, reason: invalid class name */
    /* JADX INFO: compiled from: BillingClientUseCase.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<BillingResult, Unit> {
        AnonymousClass2(Object obj) {
            super(1, obj, BillingClientUseCase.class, "forwardError", "forwardError(Lcom/android/billingclient/api/BillingResult;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(BillingResult billingResult) {
            invoke2(billingResult);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(BillingResult p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((BillingClientUseCase) this.receiver).forwardError(p0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void processResult$default(BillingClientUseCase billingClientUseCase, BillingResult billingResult, Object obj, Function1 function1, Function1 function2, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: processResult");
        }
        if ((i & 4) != 0) {
            function1 = new AnonymousClass1(billingClientUseCase);
        }
        if ((i & 8) != 0) {
            function2 = new AnonymousClass2(billingClientUseCase);
        }
        billingClientUseCase.processResult(billingResult, obj, function1, function2);
    }

    public final void processResult(BillingResult billingResult, T response, Function1<? super T, Unit> onSuccess, Function1<? super BillingResult, Unit> onError) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        Intrinsics.checkNotNullParameter(onError, "onError");
        int responseCode = billingResult.getResponseCode();
        if (responseCode == -1) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, "Billing Service disconnected.", null, null, 24, null);
            run$default(this, 0L, 1, null);
            return;
        }
        if (responseCode == 0) {
            this.retryBackoffMilliseconds = 878L;
            onSuccess.invoke(response);
        } else if (responseCode == 2) {
            backoffOrErrorIfUseInSession(onError, billingResult);
        } else if (responseCode == 6 || responseCode == 12) {
            backoffOrRetryNetworkError(onError, billingResult);
        } else {
            onError.invoke(billingResult);
        }
    }

    protected final void withConnectedClient(BillingClient billingClient, Function1<? super BillingClient, Unit> receivingFunction) {
        Intrinsics.checkNotNullParameter(receivingFunction, "receivingFunction");
        if (billingClient != null) {
            if (!billingClient.isReady()) {
                billingClient = null;
            }
            if (billingClient != null) {
                receivingFunction.invoke(billingClient);
                return;
            }
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.productsManager, "Billing Service disconnected.  Stack trace: " + getStackTrace(), null, null, 24, null);
    }

    private final String getStackTrace() {
        StringWriter stringWriter = new StringWriter();
        new Throwable().printStackTrace(new PrintWriter(stringWriter));
        String string = stringWriter.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void forwardError(BillingResult billingResult) {
        String str = "Error loading products - DebugMessage: " + billingResult.getDebugMessage() + " ErrorCode: " + billingResult.getResponseCode() + ".";
        BillingError.BillingNotAvailable billingNotAvailable = new BillingError.BillingNotAvailable(str);
        Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, str, null, null, 24, null);
        this.onError.invoke(billingNotAvailable);
    }

    private final void backoffOrRetryNetworkError(Function1<? super BillingResult, Unit> onError, BillingResult billingResult) {
        int i;
        if (getBackoffForNetworkErrors() && this.retryBackoffMilliseconds < 900000) {
            retryWithBackoff();
        } else if (!getBackoffForNetworkErrors() && (i = this.retryAttempt) < this.maxRetries) {
            this.retryAttempt = i + 1;
            executeAsync();
        } else {
            onError.invoke(billingResult);
        }
    }

    private final void backoffOrErrorIfUseInSession(Function1<? super BillingResult, Unit> onError, BillingResult billingResult) {
        if (this.useCaseParams.getAppInBackground()) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.productsManager, "Billing is unavailable. App is in background, will retry with backoff.", null, null, 24, null);
            if (this.retryBackoffMilliseconds < 900000) {
                retryWithBackoff();
                return;
            } else {
                onError.invoke(billingResult);
                return;
            }
        }
        if (this.retryAttempt < this.maxRetries) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.productsManager, "Billing unavailable in foreground. Retry " + (this.retryAttempt + 1) + "/" + this.maxRetries + " (immediate).", null, null, 24, null);
            this.retryAttempt++;
            executeAsync();
            return;
        }
        int i = this.foregroundBackoffAttempt;
        if (i < 2) {
            long j = 250 << i;
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.productsManager, "Billing unavailable in foreground. Backoff retry " + (this.foregroundBackoffAttempt + 1) + "/2 in " + j + "ms.", null, null, 24, null);
            this.foregroundBackoffAttempt++;
            run(j);
            return;
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, "Billing unavailable. Foreground retries exhausted.", null, null, 24, null);
        onError.invoke(billingResult);
    }

    private final void retryWithBackoff() {
        long j = this.retryBackoffMilliseconds;
        this.retryBackoffMilliseconds = Math.min(((long) 2) * j, 900000L);
        run(j);
    }
}
