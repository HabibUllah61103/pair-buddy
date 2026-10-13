package com.superwall.sdk.network;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.Task_RetryingKt;
import com.superwall.sdk.models.enrichment.Enrichment;
import com.superwall.sdk.models.enrichment.EnrichmentRequest;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.time.Duration;
import kotlinx.serialization.json.Json;

/* JADX INFO: compiled from: EnrichmentService.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/models/enrichment/Enrichment;", "Lcom/superwall/sdk/network/NetworkError;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.network.EnrichmentService$enrichment$3", f = "EnrichmentService.kt", i = {}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF}, m = "invokeSuspend", n = {}, s = {})
final class EnrichmentService$enrichment$3 extends SuspendLambda implements Function1<Continuation<? super Either<? extends Enrichment, NetworkError>>, Object> {
    final /* synthetic */ EnrichmentRequest $enrichmentRequest;
    final /* synthetic */ int $maxRetry;
    final /* synthetic */ long $timeout;
    int label;
    final /* synthetic */ EnrichmentService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EnrichmentService$enrichment$3(EnrichmentService enrichmentService, EnrichmentRequest enrichmentRequest, int i, long j, Continuation<? super EnrichmentService$enrichment$3> continuation) {
        super(1, continuation);
        this.this$0 = enrichmentService;
        this.$enrichmentRequest = enrichmentRequest;
        this.$maxRetry = i;
        this.$timeout = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new EnrichmentService$enrichment$3(this.this$0, this.$enrichmentRequest, this.$maxRetry, this.$timeout, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Either<? extends Enrichment, NetworkError>> continuation) {
        return invoke2((Continuation<? super Either<Enrichment, NetworkError>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(Continuation<? super Either<Enrichment, NetworkError>> continuation) {
        return ((EnrichmentService$enrichment$3) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        Json json = this.this$0.getFactory().json();
        EnrichmentRequest enrichmentRequest = this.$enrichmentRequest;
        json.getSerializersModule();
        byte[] bytes = json.encodeToString(EnrichmentRequest.INSTANCE.serializer(), enrichmentRequest).getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        EnrichmentService enrichmentService = this.this$0;
        int i2 = this.$maxRetry;
        Duration durationM12599boximpl = Duration.m12599boximpl(this.$timeout);
        String string = UUID.randomUUID().toString();
        this.label = 1;
        Object objRetrying = Task_RetryingKt.retrying(i2, null, new EnrichmentService$enrichment$3$invokeSuspend$$inlined$post7Yrd8eY$default$1(enrichmentService.getCustomHttpUrlConnection(), null, enrichmentService, "enrich", bytes, string, false, durationM12599boximpl), this);
        return objRetrying == coroutine_suspended ? coroutine_suspended : objRetrying;
    }
}
