package com.superwall.sdk.billing;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ConsumeParams;
import com.android.billingclient.api.ConsumeResponseListener;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConsumePurchaseUseCase.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B¨\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u0006\u0012%\u0010\n\u001a!\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\f\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012H\u0010\r\u001aD\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012!\u0012\u001f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00070\u000ej\u0002`\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0007H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R-\u0010\n\u001a!\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\f\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;", "Lcom/superwall/sdk/billing/BillingClientUseCase;", "", "useCaseParams", "Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;", "onReceive", "Lkotlin/Function1;", "", "onError", "Lcom/superwall/sdk/billing/BillingError;", "withConnectedClient", "Lcom/android/billingclient/api/BillingClient;", "Lkotlin/ExtensionFunctionType;", "executeRequestOnUIThread", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "delayInMillis", "Lcom/superwall/sdk/billing/ExecuteRequestOnUIThreadFunction;", "<init>", "(Lcom/superwall/sdk/billing/ConsumePurchaseUseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", "executeAsync", "onOk", "received", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ConsumePurchaseUseCase extends BillingClientUseCase<String> {
    private final Function1<String, Unit> onReceive;
    private final ConsumePurchaseUseCaseParams useCaseParams;
    private final Function1<Function1<? super BillingClient, Unit>, Unit> withConnectedClient;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ConsumePurchaseUseCase(ConsumePurchaseUseCaseParams useCaseParams, Function1<? super String, Unit> onReceive, Function1<? super BillingError, Unit> onError, Function1<? super Function1<? super BillingClient, Unit>, Unit> withConnectedClient, Function2<? super Long, ? super Function1<? super BillingError, Unit>, Unit> executeRequestOnUIThread) {
        super(useCaseParams, onError, executeRequestOnUIThread);
        Intrinsics.checkNotNullParameter(useCaseParams, "useCaseParams");
        Intrinsics.checkNotNullParameter(onReceive, "onReceive");
        Intrinsics.checkNotNullParameter(onError, "onError");
        Intrinsics.checkNotNullParameter(withConnectedClient, "withConnectedClient");
        Intrinsics.checkNotNullParameter(executeRequestOnUIThread, "executeRequestOnUIThread");
        this.useCaseParams = useCaseParams;
        this.onReceive = onReceive;
        this.withConnectedClient = withConnectedClient;
    }

    @Override // com.superwall.sdk.billing.BillingClientUseCase
    public void executeAsync() {
        this.withConnectedClient.invoke(new Function1() { // from class: com.superwall.sdk.billing.ConsumePurchaseUseCase$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ConsumePurchaseUseCase.executeAsync$lambda$1(this.f$0, (BillingClient) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit executeAsync$lambda$1(final ConsumePurchaseUseCase consumePurchaseUseCase, BillingClient withConnectedClient) {
        Intrinsics.checkNotNullParameter(withConnectedClient, "$this$withConnectedClient");
        ConsumeParams consumeParamsBuild = ConsumeParams.newBuilder().setPurchaseToken(consumePurchaseUseCase.useCaseParams.getPurchaseToken()).build();
        Intrinsics.checkNotNullExpressionValue(consumeParamsBuild, "build(...)");
        withConnectedClient.consumeAsync(consumeParamsBuild, new ConsumeResponseListener() { // from class: com.superwall.sdk.billing.ConsumePurchaseUseCase$$ExternalSyntheticLambda0
            @Override // com.android.billingclient.api.ConsumeResponseListener
            public final void onConsumeResponse(BillingResult billingResult, String str) {
                ConsumePurchaseUseCase.executeAsync$lambda$1$lambda$0(this.f$0, billingResult, str);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void executeAsync$lambda$1$lambda$0(ConsumePurchaseUseCase consumePurchaseUseCase, BillingResult billingResult, String purchaseToken) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        BillingClientUseCase.processResult$default(consumePurchaseUseCase, billingResult, purchaseToken, null, null, 12, null);
    }

    @Override // com.superwall.sdk.billing.BillingClientUseCase
    public void onOk(String received) {
        Intrinsics.checkNotNullParameter(received, "received");
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.productsManager, "Successfully consumed purchase with token " + this.useCaseParams.getPurchaseToken(), null, null, 24, null);
        this.onReceive.invoke(received);
    }
}
