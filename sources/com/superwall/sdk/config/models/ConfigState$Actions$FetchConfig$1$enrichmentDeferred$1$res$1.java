package com.superwall.sdk.config.models;

import com.superwall.sdk.config.ConfigContext;
import com.superwall.sdk.models.enrichment.Enrichment;
import com.superwall.sdk.storage.LatestEnrichment;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: ConfigState.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/models/enrichment/Enrichment;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1", f = "ConfigState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1 extends SuspendLambda implements Function2<Enrichment, Continuation<? super Unit>, Object> {
    final /* synthetic */ ConfigContext $$this$exec;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1(ConfigContext configContext, Continuation<? super ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1> continuation) {
        super(2, continuation);
        this.$$this$exec = configContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1 configState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1 = new ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1(this.$$this$exec, continuation);
        configState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1.L$0 = obj;
        return configState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Enrichment enrichment, Continuation<? super Unit> continuation) {
        return ((ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1) create(enrichment, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        this.$$this$exec.getStorage().write(LatestEnrichment.INSTANCE, (Enrichment) this.L$0);
        return Unit.INSTANCE;
    }
}
