package com.superwall.sdk.network;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.internal.ImagesContract;
import com.superwall.sdk.dependencies.ApiFactory;
import com.superwall.sdk.identity.Keys;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.models.assignment.Assignment;
import com.superwall.sdk.models.assignment.AssignmentPostback;
import com.superwall.sdk.models.assignment.ConfirmedAssignmentResponse;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.enrichment.Enrichment;
import com.superwall.sdk.models.enrichment.EnrichmentRequest;
import com.superwall.sdk.models.entitlements.Redeemable;
import com.superwall.sdk.models.entitlements.TransactionReceipt;
import com.superwall.sdk.models.entitlements.WebEntitlements;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.events.EventsRequest;
import com.superwall.sdk.models.events.EventsResponse;
import com.superwall.sdk.models.internal.DeviceVendorId;
import com.superwall.sdk.models.internal.WebRedemptionResponse;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.paywall.Paywalls;
import com.superwall.sdk.store.testmode.models.SuperwallProductsResponse;
import expo.modules.notifications.service.NotificationsService;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.serialization.json.JsonElement;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: compiled from: Network.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000à\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\"\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0096@¢\u0006\u0002\u0010\u0014J8\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\u000f2\u001c\u0010\u0017\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0018H\u0096@¢\u0006\u0002\u0010\u001bJ\"\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@¢\u0006\u0002\u0010\u001fJ.\u0010 \u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u00110\u000f2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096@¢\u0006\u0002\u0010&J(\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0(\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010)\u001a\u00020*H\u0096@¢\u0006\u0002\u0010+J4\u0010,\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0096@¢\u0006\u0004\b4\u00105J \u00106\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002070(\u0012\u0004\u0012\u00020\u00110\u000fH\u0096@¢\u0006\u0002\u00108Jr\u00109\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u00110\u000f2\f\u0010;\u001a\b\u0012\u0004\u0012\u00020<0(2\b\u0010=\u001a\u0004\u0018\u00010>2\b\u0010?\u001a\u0004\u0018\u00010#2\u0006\u0010@\u001a\u00020A2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020C0(2\u0006\u0010D\u001a\u00020#2\u0014\u0010E\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020G\u0018\u00010FH\u0096@¢\u0006\u0004\bH\u0010IJ,\u0010J\u001a\u000e\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010=\u001a\u00020>2\u0006\u0010L\u001a\u00020AH\u0096@¢\u0006\u0004\bM\u0010NJ\"\u0010O\u001a\u000e\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010L\u001a\u00020AH\u0096@¢\u0006\u0002\u0010PJ\u001a\u0010Q\u001a\u000e\u0012\u0004\u0012\u00020R\u0012\u0004\u0012\u00020\u00110\u000fH\u0086@¢\u0006\u0002\u00108J\u000e\u0010S\u001a\u00020\u0010H\u0082@¢\u0006\u0002\u00108JJ\u0010T\u001a\u000e\u0012\u0004\u0012\u0002HU\u0012\u0004\u0012\u00020\u00110\u000f\"\u0004\b\u0000\u0010U*\u000e\u0012\u0004\u0012\u0002HU\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010V\u001a\u00020#2\u0016\b\u0002\u0010W\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u001a\u0018\u00010FH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006X"}, d2 = {"Lcom/superwall/sdk/network/Network;", "Lcom/superwall/sdk/network/SuperwallAPI;", "baseHostService", "Lcom/superwall/sdk/network/BaseHostService;", "collectorService", "Lcom/superwall/sdk/network/CollectorService;", "enrichmentService", "Lcom/superwall/sdk/network/EnrichmentService;", "factory", "Lcom/superwall/sdk/dependencies/ApiFactory;", "subscriptionService", "Lcom/superwall/sdk/network/SubscriptionService;", "<init>", "(Lcom/superwall/sdk/network/BaseHostService;Lcom/superwall/sdk/network/CollectorService;Lcom/superwall/sdk/network/EnrichmentService;Lcom/superwall/sdk/dependencies/ApiFactory;Lcom/superwall/sdk/network/SubscriptionService;)V", "sendEvents", "Lcom/superwall/sdk/misc/Either;", "", "Lcom/superwall/sdk/network/NetworkError;", "events", "Lcom/superwall/sdk/models/events/EventsRequest;", "(Lcom/superwall/sdk/models/events/EventsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getConfig", "Lcom/superwall/sdk/models/config/Config;", "isRetryingCallback", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmAssignments", "confirmableAssignments", "Lcom/superwall/sdk/models/assignment/AssignmentPostback;", "(Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPaywall", "Lcom/superwall/sdk/models/paywall/Paywall;", NotificationsService.IDENTIFIER_KEY, "", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/models/events/EventData;", "(Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPaywalls", "", "isForDebugging", "", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getEnrichment", "Lcom/superwall/sdk/models/enrichment/Enrichment;", "enrichmentRequest", "Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;", "maxRetry", "", "timeout", "Lkotlin/time/Duration;", "getEnrichment-exY8QGI", "(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAssignments", "Lcom/superwall/sdk/models/assignment/Assignment;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "redeemToken", "Lcom/superwall/sdk/models/internal/WebRedemptionResponse;", "codes", "Lcom/superwall/sdk/models/entitlements/Redeemable;", "userId", "Lcom/superwall/sdk/models/internal/UserId;", Keys.ALIAS_ID, "vendorId", "Lcom/superwall/sdk/models/internal/DeviceVendorId;", "receipts", "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;", "externalAccountId", "attributionProps", "", "Lkotlinx/serialization/json/JsonElement;", "redeemToken-Jf2YlNw", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "webEntitlementsByUserId", "Lcom/superwall/sdk/models/entitlements/WebEntitlements;", "deviceId", "webEntitlementsByUserId-5PBZuVg", "(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "webEntitlementsByDeviceID", "(Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getSuperwallProducts", "Lcom/superwall/sdk/store/testmode/models/SuperwallProductsResponse;", "awaitUntilAppInForeground", "logError", ExifInterface.GPS_DIRECTION_TRUE, ImagesContract.URL, "data", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class Network implements SuperwallAPI {
    private final BaseHostService baseHostService;
    private final CollectorService collectorService;
    private final EnrichmentService enrichmentService;
    private final ApiFactory factory;
    private final SubscriptionService subscriptionService;

    /* JADX INFO: renamed from: com.superwall.sdk.network.Network$confirmAssignments$1, reason: invalid class name */
    /* JADX INFO: compiled from: Network.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.Network", f = "Network.kt", i = {0}, l = {73}, m = "confirmAssignments$suspendImpl", n = {"confirmableAssignments"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Network.confirmAssignments$suspendImpl(Network.this, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.Network$getAssignments$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Network.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.Network", f = "Network.kt", i = {}, l = {WebSocketProtocol.PAYLOAD_SHORT}, m = "getAssignments$suspendImpl", n = {}, s = {})
    static final class C04941 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04941(Continuation<? super C04941> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Network.getAssignments$suspendImpl(Network.this, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.Network$getConfig$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Network.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.Network", f = "Network.kt", i = {0, 0, 1}, l = {57, 62}, m = "getConfig$suspendImpl", n = {"$this", "isRetryingCallback", "requestId"}, s = {"L$0", "L$1", "L$0"})
    static final class C04951 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C04951(Continuation<? super C04951> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Network.getConfig$suspendImpl(Network.this, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.Network$getPaywall$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Network.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.Network", f = "Network.kt", i = {0, 0}, l = {82}, m = "getPaywall$suspendImpl", n = {NotificationsService.IDENTIFIER_KEY, NotificationCompat.CATEGORY_EVENT}, s = {"L$0", "L$1"})
    static final class C04961 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C04961(Continuation<? super C04961> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Network.getPaywall$suspendImpl(Network.this, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.Network$getPaywalls$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Network.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.Network", f = "Network.kt", i = {}, l = {97}, m = "getPaywalls$suspendImpl", n = {}, s = {})
    static final class C04971 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04971(Continuation<? super C04971> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Network.getPaywalls$suspendImpl(Network.this, false, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.Network$getSuperwallProducts$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Network.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.Network", f = "Network.kt", i = {}, l = {158}, m = "getSuperwallProducts", n = {}, s = {})
    static final class C04981 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04981(Continuation<? super C04981> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Network.this.getSuperwallProducts(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.Network$sendEvents$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Network.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.Network", f = "Network.kt", i = {0}, l = {43}, m = "sendEvents$suspendImpl", n = {"events"}, s = {"L$0"})
    static final class C04991 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C04991(Continuation<? super C04991> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Network.sendEvents$suspendImpl(Network.this, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.Network$webEntitlementsByDeviceID$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Network.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.Network", f = "Network.kt", i = {}, l = {153}, m = "webEntitlementsByDeviceID$suspendImpl", n = {}, s = {})
    static final class C05001 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05001(Continuation<? super C05001> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Network.webEntitlementsByDeviceID$suspendImpl(Network.this, null, this);
        }
    }

    @Override // com.superwall.sdk.network.SuperwallAPI
    public Object confirmAssignments(AssignmentPostback assignmentPostback, Continuation<? super Either<Unit, NetworkError>> continuation) {
        return confirmAssignments$suspendImpl(this, assignmentPostback, continuation);
    }

    @Override // com.superwall.sdk.network.SuperwallAPI
    public Object getAssignments(Continuation<? super Either<? extends List<Assignment>, NetworkError>> continuation) {
        return getAssignments$suspendImpl(this, continuation);
    }

    @Override // com.superwall.sdk.network.SuperwallAPI
    public Object getConfig(Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Either<Config, NetworkError>> continuation) {
        return getConfig$suspendImpl(this, function1, continuation);
    }

    @Override // com.superwall.sdk.network.SuperwallAPI
    /* JADX INFO: renamed from: getEnrichment-exY8QGI, reason: not valid java name */
    public Object mo10685getEnrichmentexY8QGI(EnrichmentRequest enrichmentRequest, int i, long j, Continuation<? super Either<Enrichment, NetworkError>> continuation) {
        return m10682getEnrichmentexY8QGI$suspendImpl(this, enrichmentRequest, i, j, continuation);
    }

    @Override // com.superwall.sdk.network.SuperwallAPI
    public Object getPaywall(String str, EventData eventData, Continuation<? super Either<Paywall, NetworkError>> continuation) {
        return getPaywall$suspendImpl(this, str, eventData, continuation);
    }

    @Override // com.superwall.sdk.network.SuperwallAPI
    public Object getPaywalls(boolean z, Continuation<? super Either<? extends List<Paywall>, NetworkError>> continuation) {
        return getPaywalls$suspendImpl(this, z, continuation);
    }

    @Override // com.superwall.sdk.network.SuperwallAPI
    /* JADX INFO: renamed from: redeemToken-Jf2YlNw, reason: not valid java name */
    public Object mo10686redeemTokenJf2YlNw(List<Redeemable> list, String str, String str2, DeviceVendorId deviceVendorId, List<TransactionReceipt> list2, String str3, Map<String, ? extends JsonElement> map, Continuation<? super Either<WebRedemptionResponse, NetworkError>> continuation) {
        return m10683redeemTokenJf2YlNw$suspendImpl(this, list, str, str2, deviceVendorId, list2, str3, map, continuation);
    }

    @Override // com.superwall.sdk.network.SuperwallAPI
    public Object sendEvents(EventsRequest eventsRequest, Continuation<? super Either<Unit, NetworkError>> continuation) {
        return sendEvents$suspendImpl(this, eventsRequest, continuation);
    }

    @Override // com.superwall.sdk.network.SuperwallAPI
    public Object webEntitlementsByDeviceID(DeviceVendorId deviceVendorId, Continuation<? super Either<WebEntitlements, NetworkError>> continuation) {
        return webEntitlementsByDeviceID$suspendImpl(this, deviceVendorId, continuation);
    }

    @Override // com.superwall.sdk.network.SuperwallAPI
    /* JADX INFO: renamed from: webEntitlementsByUserId-5PBZuVg, reason: not valid java name */
    public Object mo10687webEntitlementsByUserId5PBZuVg(String str, DeviceVendorId deviceVendorId, Continuation<? super Either<WebEntitlements, NetworkError>> continuation) {
        return m10684webEntitlementsByUserId5PBZuVg$suspendImpl(this, str, deviceVendorId, continuation);
    }

    public Network(BaseHostService baseHostService, CollectorService collectorService, EnrichmentService enrichmentService, ApiFactory factory, SubscriptionService subscriptionService) {
        Intrinsics.checkNotNullParameter(baseHostService, "baseHostService");
        Intrinsics.checkNotNullParameter(collectorService, "collectorService");
        Intrinsics.checkNotNullParameter(enrichmentService, "enrichmentService");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(subscriptionService, "subscriptionService");
        this.baseHostService = baseHostService;
        this.collectorService = collectorService;
        this.enrichmentService = enrichmentService;
        this.factory = factory;
        this.subscriptionService = subscriptionService;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    static /* synthetic */ Object sendEvents$suspendImpl(Network network, EventsRequest eventsRequest, Continuation<? super Either<Unit, NetworkError>> continuation) {
        C04991 c04991;
        if (continuation instanceof C04991) {
            c04991 = (C04991) continuation;
            if ((c04991.label & Integer.MIN_VALUE) != 0) {
                c04991.label -= Integer.MIN_VALUE;
            } else {
                c04991 = network.new C04991(continuation);
            }
        } else {
            c04991 = network.new C04991(continuation);
        }
        Object objEvents = c04991.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04991.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objEvents);
            CollectorService collectorService = network.collectorService;
            c04991.L$0 = eventsRequest;
            c04991.L$1 = network;
            c04991.label = 1;
            objEvents = collectorService.events(eventsRequest, c04991);
            if (objEvents == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            network = (Network) c04991.L$1;
            eventsRequest = (EventsRequest) c04991.L$0;
            ResultKt.throwOnFailure(objEvents);
        }
        return network.logError(EitherKt.map((Either) objEvents, new Function1() { // from class: com.superwall.sdk.network.Network$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Network.sendEvents$lambda$0((EventsResponse) obj);
            }
        }), "/events", MapsKt.mapOf(TuplesKt.to("payload", eventsRequest)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit sendEvents$lambda$0(EventsResponse it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.getStatus() == EventsResponse.Status.PARTIAL_SUCCESS) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.network, "Request had partial success: /events", null, null, 24, null);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    static /* synthetic */ Object getConfig$suspendImpl(Network network, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Either<Config, NetworkError>> continuation) {
        C04951 c04951;
        final String str;
        if (continuation instanceof C04951) {
            c04951 = (C04951) continuation;
            if ((c04951.label & Integer.MIN_VALUE) != 0) {
                c04951.label -= Integer.MIN_VALUE;
            } else {
                c04951 = network.new C04951(continuation);
            }
        } else {
            c04951 = network.new C04951(continuation);
        }
        Object obj = c04951.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04951.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            c04951.L$0 = network;
            c04951.L$1 = function1;
            c04951.label = 1;
            if (network.awaitUntilAppInForeground(c04951) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            function1 = (Function1) c04951.L$1;
            network = (Network) c04951.L$0;
            ResultKt.throwOnFailure(obj);
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            network = (Network) c04951.L$1;
            str = (String) c04951.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return logError$default(network, EitherKt.map((Either) obj, new Function1() { // from class: com.superwall.sdk.network.Network$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return Network.getConfig$lambda$1(str, (Config) obj2);
            }
        }), "/static_config", null, 2, null);
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        BaseHostService baseHostService = network.baseHostService;
        c04951.L$0 = string;
        c04951.L$1 = network;
        c04951.label = 2;
        Object objConfig = baseHostService.config(string, function1, c04951);
        if (objConfig != coroutine_suspended) {
            obj = objConfig;
            str = string;
            return logError$default(network, EitherKt.map((Either) obj, new Function1() { // from class: com.superwall.sdk.network.Network$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Network.getConfig$lambda$1(str, (Config) obj2);
                }
            }), "/static_config", null, 2, null);
        }
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Config getConfig$lambda$1(String str, Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        config.setRequestId(str);
        return config;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    static /* synthetic */ Object confirmAssignments$suspendImpl(Network network, AssignmentPostback assignmentPostback, Continuation<? super Either<Unit, NetworkError>> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = network.new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = network.new AnonymousClass1(continuation);
        }
        Object objConfirmAssignments = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objConfirmAssignments);
            BaseHostService baseHostService = network.baseHostService;
            anonymousClass1.L$0 = assignmentPostback;
            anonymousClass1.L$1 = network;
            anonymousClass1.label = 1;
            objConfirmAssignments = baseHostService.confirmAssignments(assignmentPostback, anonymousClass1);
            if (objConfirmAssignments == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            network = (Network) anonymousClass1.L$1;
            assignmentPostback = (AssignmentPostback) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objConfirmAssignments);
        }
        return network.logError(EitherKt.map((Either) objConfirmAssignments, new Function1() { // from class: com.superwall.sdk.network.Network$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Network.confirmAssignments$lambda$2((ConfirmedAssignmentResponse) obj);
            }
        }), "/confirm_assignments", MapsKt.mapOf(TuplesKt.to("assignments", assignmentPostback)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit confirmAssignments$lambda$2(ConfirmedAssignmentResponse it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    static /* synthetic */ Object getPaywall$suspendImpl(Network network, String str, EventData eventData, Continuation<? super Either<Paywall, NetworkError>> continuation) {
        C04961 c04961;
        String str2;
        Map<String, ? extends Object> mapMapOf;
        String name;
        if (continuation instanceof C04961) {
            c04961 = (C04961) continuation;
            if ((c04961.label & Integer.MIN_VALUE) != 0) {
                c04961.label -= Integer.MIN_VALUE;
            } else {
                c04961 = network.new C04961(continuation);
            }
        } else {
            c04961 = network.new C04961(continuation);
        }
        Object objPaywall = c04961.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04961.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objPaywall);
            BaseHostService baseHostService = network.baseHostService;
            c04961.L$0 = str;
            c04961.L$1 = eventData;
            c04961.L$2 = network;
            c04961.label = 1;
            objPaywall = baseHostService.paywall(str, c04961);
            if (objPaywall == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            network = (Network) c04961.L$2;
            eventData = (EventData) c04961.L$1;
            str = (String) c04961.L$0;
            ResultKt.throwOnFailure(objPaywall);
        }
        Either either = (Either) objPaywall;
        String str3 = "";
        if (str == null || (str2 = "/:" + str) == null) {
            str2 = "";
        }
        String str4 = "/paywall" + str2;
        if (str == null) {
            Pair[] pairArr = new Pair[2];
            pairArr[0] = TuplesKt.to(NotificationsService.IDENTIFIER_KEY, "none");
            if (eventData != null && (name = eventData.getName()) != null) {
                str3 = name;
            }
            pairArr[1] = TuplesKt.to(NotificationCompat.CATEGORY_EVENT, str3);
            mapMapOf = MapsKt.mapOf(pairArr);
        } else {
            mapMapOf = null;
        }
        return network.logError(either, str4, mapMapOf);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    static /* synthetic */ Object getPaywalls$suspendImpl(Network network, boolean z, Continuation<? super Either<? extends List<Paywall>, NetworkError>> continuation) {
        C04971 c04971;
        if (continuation instanceof C04971) {
            c04971 = (C04971) continuation;
            if ((c04971.label & Integer.MIN_VALUE) != 0) {
                c04971.label -= Integer.MIN_VALUE;
            } else {
                c04971 = network.new C04971(continuation);
            }
        } else {
            c04971 = network.new C04971(continuation);
        }
        Object objPaywalls = c04971.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04971.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objPaywalls);
            BaseHostService baseHostService = network.baseHostService;
            c04971.L$0 = network;
            c04971.label = 1;
            objPaywalls = baseHostService.paywalls(z, c04971);
            if (objPaywalls == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            network = (Network) c04971.L$0;
            ResultKt.throwOnFailure(objPaywalls);
        }
        return logError$default(network, EitherKt.map((Either) objPaywalls, new Function1() { // from class: com.superwall.sdk.network.Network$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Network.getPaywalls$lambda$4((Paywalls) obj);
            }
        }), "/paywalls", null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getPaywalls$lambda$4(Paywalls it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getPaywalls();
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ef A[PHI: r0 r3 r14
      0x00ef: PHI (r0v9 java.lang.Object) = (r0v8 java.lang.Object), (r0v1 java.lang.Object) binds: [B:36:0x00ec, B:19:0x0047] A[DONT_GENERATE, DONT_INLINE]
      0x00ef: PHI (r3v7 com.superwall.sdk.network.Network) = (r3v6 com.superwall.sdk.network.Network), (r3v17 com.superwall.sdk.network.Network) binds: [B:36:0x00ec, B:19:0x0047] A[DONT_GENERATE, DONT_INLINE]
      0x00ef: PHI (r14v7 com.superwall.sdk.network.Network) = (r14v6 com.superwall.sdk.network.Network), (r14v16 com.superwall.sdk.network.Network) binds: [B:36:0x00ec, B:19:0x0047] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0102, code lost:
    
        if (r0 == r2) goto L40;
     */
    /* JADX INFO: renamed from: getEnrichment-exY8QGI$suspendImpl, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object m10682getEnrichmentexY8QGI$suspendImpl(com.superwall.sdk.network.Network r14, com.superwall.sdk.models.enrichment.EnrichmentRequest r15, int r16, long r17, kotlin.coroutines.Continuation<? super com.superwall.sdk.misc.Either<com.superwall.sdk.models.enrichment.Enrichment, com.superwall.sdk.network.NetworkError>> r19) {
        /*
            Method dump skipped, instruction units count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.network.Network.m10682getEnrichmentexY8QGI$suspendImpl(com.superwall.sdk.network.Network, com.superwall.sdk.models.enrichment.EnrichmentRequest, int, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    static /* synthetic */ Object getAssignments$suspendImpl(Network network, Continuation<? super Either<? extends List<Assignment>, NetworkError>> continuation) {
        C04941 c04941;
        if (continuation instanceof C04941) {
            c04941 = (C04941) continuation;
            if ((c04941.label & Integer.MIN_VALUE) != 0) {
                c04941.label -= Integer.MIN_VALUE;
            } else {
                c04941 = network.new C04941(continuation);
            }
        } else {
            c04941 = network.new C04941(continuation);
        }
        Object objAssignments = c04941.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04941.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objAssignments);
            BaseHostService baseHostService = network.baseHostService;
            c04941.L$0 = network;
            c04941.label = 1;
            objAssignments = baseHostService.assignments(c04941);
            if (objAssignments == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            network = (Network) c04941.L$0;
            ResultKt.throwOnFailure(objAssignments);
        }
        return logError$default(network, EitherKt.map((Either) objAssignments, new Function1() { // from class: com.superwall.sdk.network.Network$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Network.getAssignments$lambda$5((ConfirmedAssignmentResponse) obj);
            }
        }), "/assignments", null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAssignments$lambda$5(ConfirmedAssignmentResponse it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getAssignments();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX INFO: renamed from: redeemToken-Jf2YlNw$suspendImpl, reason: not valid java name */
    static /* synthetic */ Object m10683redeemTokenJf2YlNw$suspendImpl(Network network, List<Redeemable> list, String str, String str2, DeviceVendorId deviceVendorId, List<TransactionReceipt> list2, String str3, Map<String, ? extends JsonElement> map, Continuation<? super Either<WebRedemptionResponse, NetworkError>> continuation) {
        Network$redeemToken$1 network$redeemToken$1;
        if (continuation instanceof Network$redeemToken$1) {
            network$redeemToken$1 = (Network$redeemToken$1) continuation;
            if ((network$redeemToken$1.label & Integer.MIN_VALUE) != 0) {
                network$redeemToken$1.label -= Integer.MIN_VALUE;
            } else {
                network$redeemToken$1 = new Network$redeemToken$1(network, continuation);
            }
        } else {
            network$redeemToken$1 = new Network$redeemToken$1(network, continuation);
        }
        Network$redeemToken$1 network$redeemToken$2 = network$redeemToken$1;
        Object objM10693redeemTokenJf2YlNw = network$redeemToken$2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = network$redeemToken$2.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objM10693redeemTokenJf2YlNw);
            SubscriptionService subscriptionService = network.subscriptionService;
            network$redeemToken$2.L$0 = network;
            network$redeemToken$2.label = 1;
            objM10693redeemTokenJf2YlNw = subscriptionService.m10693redeemTokenJf2YlNw(list, str, str2, deviceVendorId, list2, str3, map, network$redeemToken$2);
            if (objM10693redeemTokenJf2YlNw == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            network = (Network) network$redeemToken$2.L$0;
            ResultKt.throwOnFailure(objM10693redeemTokenJf2YlNw);
        }
        return logError$default(network, (Either) objM10693redeemTokenJf2YlNw, "/redeem", null, 2, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX INFO: renamed from: webEntitlementsByUserId-5PBZuVg$suspendImpl, reason: not valid java name */
    static /* synthetic */ Object m10684webEntitlementsByUserId5PBZuVg$suspendImpl(Network network, String str, DeviceVendorId deviceVendorId, Continuation<? super Either<WebEntitlements, NetworkError>> continuation) {
        Network$webEntitlementsByUserId$1 network$webEntitlementsByUserId$1;
        if (continuation instanceof Network$webEntitlementsByUserId$1) {
            network$webEntitlementsByUserId$1 = (Network$webEntitlementsByUserId$1) continuation;
            if ((network$webEntitlementsByUserId$1.label & Integer.MIN_VALUE) != 0) {
                network$webEntitlementsByUserId$1.label -= Integer.MIN_VALUE;
            } else {
                network$webEntitlementsByUserId$1 = new Network$webEntitlementsByUserId$1(network, continuation);
            }
        } else {
            network$webEntitlementsByUserId$1 = new Network$webEntitlementsByUserId$1(network, continuation);
        }
        Object objM10694webEntitlementsByUserIdAKGx8qU = network$webEntitlementsByUserId$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = network$webEntitlementsByUserId$1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objM10694webEntitlementsByUserIdAKGx8qU);
            SubscriptionService subscriptionService = network.subscriptionService;
            network$webEntitlementsByUserId$1.L$0 = network;
            network$webEntitlementsByUserId$1.label = 1;
            objM10694webEntitlementsByUserIdAKGx8qU = subscriptionService.m10694webEntitlementsByUserIdAKGx8qU(str, deviceVendorId, network$webEntitlementsByUserId$1);
            if (objM10694webEntitlementsByUserIdAKGx8qU == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            network = (Network) network$webEntitlementsByUserId$1.L$0;
            ResultKt.throwOnFailure(objM10694webEntitlementsByUserIdAKGx8qU);
        }
        return logError$default(network, (Either) objM10694webEntitlementsByUserIdAKGx8qU, "/redeem", null, 2, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    static /* synthetic */ Object webEntitlementsByDeviceID$suspendImpl(Network network, DeviceVendorId deviceVendorId, Continuation<? super Either<WebEntitlements, NetworkError>> continuation) {
        C05001 c05001;
        if (continuation instanceof C05001) {
            c05001 = (C05001) continuation;
            if ((c05001.label & Integer.MIN_VALUE) != 0) {
                c05001.label -= Integer.MIN_VALUE;
            } else {
                c05001 = network.new C05001(continuation);
            }
        } else {
            c05001 = network.new C05001(continuation);
        }
        Object objWebEntitlementsByDeviceId = c05001.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05001.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objWebEntitlementsByDeviceId);
            SubscriptionService subscriptionService = network.subscriptionService;
            c05001.L$0 = network;
            c05001.label = 1;
            objWebEntitlementsByDeviceId = subscriptionService.webEntitlementsByDeviceId(deviceVendorId, c05001);
            if (objWebEntitlementsByDeviceId == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            network = (Network) c05001.L$0;
            ResultKt.throwOnFailure(objWebEntitlementsByDeviceId);
        }
        return logError$default(network, (Either) objWebEntitlementsByDeviceId, "/redeem", null, 2, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getSuperwallProducts(Continuation<? super Either<SuperwallProductsResponse, NetworkError>> continuation) {
        C04981 c04981;
        Network network;
        if (continuation instanceof C04981) {
            c04981 = (C04981) continuation;
            if ((c04981.label & Integer.MIN_VALUE) != 0) {
                c04981.label -= Integer.MIN_VALUE;
            } else {
                c04981 = new C04981(continuation);
            }
        } else {
            c04981 = new C04981(continuation);
        }
        Object products = c04981.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04981.label;
        if (i == 0) {
            ResultKt.throwOnFailure(products);
            SubscriptionService subscriptionService = this.subscriptionService;
            c04981.L$0 = this;
            c04981.label = 1;
            products = subscriptionService.getProducts(c04981);
            if (products == coroutine_suspended) {
                return coroutine_suspended;
            }
            network = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            network = (Network) c04981.L$0;
            ResultKt.throwOnFailure(products);
        }
        return logError$default(network, (Either) products, "/products", null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object awaitUntilAppInForeground(Continuation<? super Unit> continuation) {
        final StateFlow<Boolean> stateFlowIsInBackground = this.factory.getAppLifecycleObserver().isInBackground();
        Object objFirst = FlowKt.first(new Flow<Boolean>() { // from class: com.superwall.sdk.network.Network$awaitUntilAppInForeground$$inlined$filter$1

            /* JADX INFO: renamed from: com.superwall.sdk.network.Network$awaitUntilAppInForeground$$inlined$filter$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.superwall.sdk.network.Network$awaitUntilAppInForeground$$inlined$filter$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.network.Network$awaitUntilAppInForeground$$inlined$filter$1$2", f = "Network.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label -= Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = anonymousClass1.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj2);
                        FlowCollector flowCollector = this.$this_unsafeFlow;
                        if (!((Boolean) obj).booleanValue()) {
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Boolean> flowCollector, Continuation continuation2) {
                Object objCollect = stateFlowIsInBackground.collect(new AnonymousClass2(flowCollector), continuation2);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, continuation);
        return objFirst == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFirst : Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Either logError$default(Network network, Either either, String str, Map map, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: logError");
        }
        if ((i & 2) != 0) {
            map = null;
        }
        return network.logError(either, str, map);
    }

    private final <T> Either<T, NetworkError> logError(Either<? extends T, NetworkError> either, final String str, final Map<String, ? extends Object> map) {
        return EitherKt.onError(either, new Function1() { // from class: com.superwall.sdk.network.Network$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Network.logError$lambda$7(str, map, (NetworkError) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logError$lambda$7(String str, Map map, NetworkError it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Logger.INSTANCE.debug(LogLevel.error, LogScope.network, "Request Failed: " + str, map, it);
        return Unit.INSTANCE;
    }
}
