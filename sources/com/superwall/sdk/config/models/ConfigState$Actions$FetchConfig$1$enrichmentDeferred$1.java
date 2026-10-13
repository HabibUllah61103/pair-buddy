package com.superwall.sdk.config.models;

import androidx.media3.extractor.ts.TsExtractor;
import com.superwall.sdk.config.ConfigContext;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.enrichment.Enrichment;
import com.superwall.sdk.network.NetworkError;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ConfigState.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/models/enrichment/Enrichment;", "Lcom/superwall/sdk/network/NetworkError;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1", f = "ConfigState.kt", i = {0, 1}, l = {TsExtractor.TS_STREAM_TYPE_E_AC3, TsExtractor.TS_STREAM_TYPE_DTS_HD, 147}, m = "invokeSuspend", n = {"cached", "cached"}, s = {"L$0", "L$0"})
final class ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Either<? extends Enrichment, NetworkError>>, Object> {
    final /* synthetic */ ConfigContext $$this$exec;
    final /* synthetic */ long $cacheLimit;
    final /* synthetic */ Ref.BooleanRef $isEnrichmentFromCache;
    final /* synthetic */ Config $oldConfig;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1(ConfigContext configContext, Config config, long j, Ref.BooleanRef booleanRef, Continuation<? super ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1> continuation) {
        super(2, continuation);
        this.$$this$exec = configContext;
        this.$oldConfig = config;
        this.$cacheLimit = j;
        this.$isEnrichmentFromCache = booleanRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1(this.$$this$exec, this.$oldConfig, this.$cacheLimit, this.$isEnrichmentFromCache, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Either<? extends Enrichment, NetworkError>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Either<Enrichment, NetworkError>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Either<Enrichment, NetworkError>> continuation) {
        return ((ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0085  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00bc, code lost:
    
        if (r10 == r0) goto L33;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L2e
            if (r1 == r4) goto L26
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            kotlin.ResultKt.throwOnFailure(r10)
            goto Lbf
        L16:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L1e:
            java.lang.Object r0 = r9.L$0
            com.superwall.sdk.models.enrichment.Enrichment r0 = (com.superwall.sdk.models.enrichment.Enrichment) r0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L86
        L26:
            java.lang.Object r1 = r9.L$0
            com.superwall.sdk.models.enrichment.Enrichment r1 = (com.superwall.sdk.models.enrichment.Enrichment) r1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L6b
        L2e:
            kotlin.ResultKt.throwOnFailure(r10)
            com.superwall.sdk.config.ConfigContext r10 = r9.$$this$exec
            com.superwall.sdk.storage.Storage r10 = r10.getStorage()
            com.superwall.sdk.storage.LatestEnrichment r1 = com.superwall.sdk.storage.LatestEnrichment.INSTANCE
            com.superwall.sdk.storage.Storable r1 = (com.superwall.sdk.storage.Storable) r1
            java.lang.Object r10 = r10.read(r1)
            com.superwall.sdk.models.enrichment.Enrichment r10 = (com.superwall.sdk.models.enrichment.Enrichment) r10
            com.superwall.sdk.models.config.Config r1 = r9.$oldConfig
            r5 = 0
            if (r1 == 0) goto La5
            com.superwall.sdk.models.config.FeatureFlags r1 = r1.getFeatureFlags()
            if (r1 == 0) goto La5
            boolean r1 = r1.getEnableConfigRefresh()
            if (r1 != r4) goto La5
            com.superwall.sdk.config.ConfigContext r1 = r9.$$this$exec
            com.superwall.sdk.network.device.DeviceHelper r1 = r1.getDeviceHelper()
            long r6 = r9.$cacheLimit
            r2 = r9
            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
            r9.L$0 = r10
            r9.label = r4
            java.lang.Object r1 = r1.m10697getEnrichment8Mi8wO0(r5, r6, r2)
            if (r1 != r0) goto L68
            goto Lbe
        L68:
            r8 = r1
            r1 = r10
            r10 = r8
        L6b:
            com.superwall.sdk.misc.Either r10 = (com.superwall.sdk.misc.Either) r10
            com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1 r2 = new com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1$res$1
            com.superwall.sdk.config.ConfigContext r5 = r9.$$this$exec
            r6 = 0
            r2.<init>(r5, r6)
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            r5 = r9
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
            r9.L$0 = r1
            r9.label = r3
            java.lang.Object r10 = com.superwall.sdk.misc.EitherKt.then(r10, r2, r5)
            if (r10 != r0) goto L85
            goto Lbe
        L85:
            r0 = r1
        L86:
            com.superwall.sdk.misc.Either r10 = (com.superwall.sdk.misc.Either) r10
            java.lang.Object r1 = r10.getSuccess()
            if (r1 != 0) goto La4
            if (r0 == 0) goto La4
            com.superwall.sdk.config.ConfigContext r10 = r9.$$this$exec
            kotlin.jvm.internal.Ref$BooleanRef r1 = r9.$isEnrichmentFromCache
            com.superwall.sdk.network.device.DeviceHelper r10 = r10.getDeviceHelper()
            r10.setEnrichment$superwall_release(r0)
            r1.element = r4
            com.superwall.sdk.misc.Either$Success r10 = new com.superwall.sdk.misc.Either$Success
            r10.<init>(r0)
            com.superwall.sdk.misc.Either r10 = (com.superwall.sdk.misc.Either) r10
        La4:
            return r10
        La5:
            com.superwall.sdk.config.ConfigContext r10 = r9.$$this$exec
            com.superwall.sdk.network.device.DeviceHelper r10 = r10.getDeviceHelper()
            kotlin.time.Duration$Companion r1 = kotlin.time.Duration.INSTANCE
            kotlin.time.DurationUnit r1 = kotlin.time.DurationUnit.SECONDS
            long r3 = kotlin.time.DurationKt.toDuration(r4, r1)
            r1 = r9
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r9.label = r2
            java.lang.Object r10 = r10.m10697getEnrichment8Mi8wO0(r5, r3, r1)
            if (r10 != r0) goto Lbf
        Lbe:
            return r0
        Lbf:
            com.superwall.sdk.misc.Either r10 = (com.superwall.sdk.misc.Either) r10
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
