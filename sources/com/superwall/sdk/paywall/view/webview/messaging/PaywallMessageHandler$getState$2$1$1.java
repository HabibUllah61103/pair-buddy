package com.superwall.sdk.paywall.view.webview.messaging;

import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.storage.core_data.ConvertersKt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PaywallMessageHandler.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$getState$2$1$1", f = "PaywallMessageHandler.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class PaywallMessageHandler$getState$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CancellableContinuation<Map<String, ? extends Object>> $continuation;
    final /* synthetic */ String $messageScript;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PaywallMessageHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PaywallMessageHandler$getState$2$1$1(PaywallMessageHandler paywallMessageHandler, String str, CancellableContinuation<? super Map<String, ? extends Object>> cancellableContinuation, Continuation<? super PaywallMessageHandler$getState$2$1$1> continuation) {
        super(2, continuation);
        this.this$0 = paywallMessageHandler;
        this.$messageScript = str;
        this.$continuation = cancellableContinuation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PaywallMessageHandler$getState$2$1$1 paywallMessageHandler$getState$2$1$1 = new PaywallMessageHandler$getState$2$1$1(this.this$0, this.$messageScript, this.$continuation, continuation);
        paywallMessageHandler$getState$2$1$1.L$0 = obj;
        return paywallMessageHandler$getState$2$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PaywallMessageHandler$getState$2$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        PaywallMessageHandlerDelegate messageHandler = this.this$0.getMessageHandler();
        if (messageHandler != null) {
            String str = this.$messageScript;
            final PaywallMessageHandler paywallMessageHandler = this.this$0;
            final CancellableContinuation<Map<String, ? extends Object>> cancellableContinuation = this.$continuation;
            final String str2 = this.$messageScript;
            messageHandler.evaluate(str, new Function1<String, Unit>() { // from class: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$getState$2$1$1.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str3) {
                    invoke2(str3);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(String str3) {
                    if (str3 != null) {
                        try {
                            Object objReplaceNullsWithEmpty = paywallMessageHandler.replaceNullsWithEmpty(ConvertersKt.convertFromJsonElement(paywallMessageHandler.json.parseToJsonElement(str3)));
                            Map mapEmptyMap = objReplaceNullsWithEmpty instanceof Map ? (Map) objReplaceNullsWithEmpty : null;
                            if (mapEmptyMap == null) {
                                mapEmptyMap = MapsKt.emptyMap();
                            }
                            CancellableContinuation<Map<String, ? extends Object>> cancellableContinuation2 = cancellableContinuation;
                            Result.Companion companion = Result.INSTANCE;
                            cancellableContinuation2.resumeWith(Result.m11241constructorimpl(mapEmptyMap));
                            return;
                        } catch (Exception e) {
                            Logger.INSTANCE.debug(LogLevel.error, LogScope.paywallView, "Error parsing state JSON", MapsKt.mapOf(TuplesKt.to("message", str2), TuplesKt.to("result", str3)), e);
                            CancellableContinuation<Map<String, ? extends Object>> cancellableContinuation3 = cancellableContinuation;
                            Result.Companion companion2 = Result.INSTANCE;
                            cancellableContinuation3.resumeWith(Result.m11241constructorimpl(MapsKt.emptyMap()));
                            return;
                        }
                    }
                    CancellableContinuation<Map<String, ? extends Object>> cancellableContinuation4 = cancellableContinuation;
                    Result.Companion companion3 = Result.INSTANCE;
                    cancellableContinuation4.resumeWith(Result.m11241constructorimpl(MapsKt.emptyMap()));
                }
            });
        } else {
            CancellableContinuation<Map<String, ? extends Object>> cancellableContinuation2 = this.$continuation;
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuation2.resumeWith(Result.m11241constructorimpl(MapsKt.emptyMap()));
        }
        return Unit.INSTANCE;
    }
}
