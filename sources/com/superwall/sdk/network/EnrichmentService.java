package com.superwall.sdk.network;

import com.superwall.sdk.dependencies.ApiFactory;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.models.enrichment.Enrichment;
import com.superwall.sdk.models.enrichment.EnrichmentRequest;
import com.superwall.sdk.network.session.CustomHttpUrlConnection;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: compiled from: EnrichmentService.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ*\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003H\u0096@¢\u0006\u0002\u0010\u0017J8\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!H\u0086@¢\u0006\u0004\b\"\u0010#R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006$"}, d2 = {"Lcom/superwall/sdk/network/EnrichmentService;", "Lcom/superwall/sdk/network/NetworkService;", "host", "", "version", "factory", "Lcom/superwall/sdk/dependencies/ApiFactory;", "customHttpUrlConnection", "Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/dependencies/ApiFactory;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V", "getHost", "()Ljava/lang/String;", "getVersion", "getFactory", "()Lcom/superwall/sdk/dependencies/ApiFactory;", "getCustomHttpUrlConnection", "()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;", "makeHeaders", "", "isForDebugging", "", "requestId", "(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "enrichment", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/models/enrichment/Enrichment;", "Lcom/superwall/sdk/network/NetworkError;", "enrichmentRequest", "Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;", "maxRetry", "", "timeout", "Lkotlin/time/Duration;", "enrichment-exY8QGI", "(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class EnrichmentService extends NetworkService {
    private final CustomHttpUrlConnection customHttpUrlConnection;
    private final ApiFactory factory;
    private final String host;
    private final String version;

    @Override // com.superwall.sdk.network.NetworkService
    public String getHost() {
        return this.host;
    }

    @Override // com.superwall.sdk.network.NetworkService
    public String getVersion() {
        return this.version;
    }

    public final ApiFactory getFactory() {
        return this.factory;
    }

    @Override // com.superwall.sdk.network.NetworkService
    public CustomHttpUrlConnection getCustomHttpUrlConnection() {
        return this.customHttpUrlConnection;
    }

    public EnrichmentService(String host, String version, ApiFactory factory, CustomHttpUrlConnection customHttpUrlConnection) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(customHttpUrlConnection, "customHttpUrlConnection");
        this.host = host;
        this.version = version;
        this.factory = factory;
        this.customHttpUrlConnection = customHttpUrlConnection;
    }

    @Override // com.superwall.sdk.network.NetworkService
    public Object makeHeaders(boolean z, String str, Continuation<? super Map<String, String>> continuation) {
        return this.factory.makeHeaders(z, str, continuation);
    }

    /* JADX INFO: renamed from: enrichment-exY8QGI$default, reason: not valid java name */
    public static /* synthetic */ Object m10675enrichmentexY8QGI$default(EnrichmentService enrichmentService, EnrichmentRequest enrichmentRequest, int i, long j, Continuation continuation, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        int i3 = i;
        if ((i2 & 4) != 0) {
            Duration.Companion companion = Duration.INSTANCE;
            j = DurationKt.toDuration(1, DurationUnit.SECONDS);
        }
        return enrichmentService.m10676enrichmentexY8QGI(enrichmentRequest, i3, j, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NetworkError enrichment_exY8QGI$lambda$0() {
        return NetworkError.Timeout.INSTANCE;
    }

    /* JADX INFO: renamed from: enrichment-exY8QGI, reason: not valid java name */
    public final Object m10676enrichmentexY8QGI(EnrichmentRequest enrichmentRequest, int i, long j, Continuation<? super Either<Enrichment, NetworkError>> continuation) {
        return EitherKt.m10628eitherWithTimeoutrnQQ1Ag(j, new Function0() { // from class: com.superwall.sdk.network.EnrichmentService$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return EnrichmentService.enrichment_exY8QGI$lambda$0();
            }
        }, new EnrichmentService$enrichment$3(this, enrichmentRequest, i, j, null), continuation);
    }
}
