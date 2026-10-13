package com.superwall.sdk.network;

import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.models.enrichment.Enrichment;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: Network.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/models/enrichment/Enrichment;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.network.Network$getEnrichment$2", f = "Network.kt", i = {}, l = {112}, m = "invokeSuspend", n = {}, s = {})
final class Network$getEnrichment$2 extends SuspendLambda implements Function2<Enrichment, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ Network this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Network$getEnrichment$2(Network network, Continuation<? super Network$getEnrichment$2> continuation) {
        super(2, continuation);
        this.this$0 = network;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Network$getEnrichment$2 network$getEnrichment$2 = new Network$getEnrichment$2(this.this$0, continuation);
        network$getEnrichment$2.L$0 = obj;
        return network$getEnrichment$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Enrichment enrichment, Continuation<? super Unit> continuation) {
        return ((Network$getEnrichment$2) create(enrichment, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Enrichment enrichment = (Enrichment) this.L$0;
            this.label = 1;
            if (this.this$0.factory.track(new InternalSuperwallEvent.EnrichmentLoad(new InternalSuperwallEvent.EnrichmentLoad.State.Complete(enrichment)), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
