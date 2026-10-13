package com.superwall.sdk.web;

import android.content.Context;
import androidx.compose.runtime.ComposerKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.ts.TsExtractor;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.analytics.internal.trackable.Trackable;
import com.superwall.sdk.customer.CustomerInfoManager;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.Redeemable;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.entitlements.TransactionReceipt;
import com.superwall.sdk.models.entitlements.WebEntitlements;
import com.superwall.sdk.models.internal.DeviceVendorId;
import com.superwall.sdk.models.internal.ErrorInfo;
import com.superwall.sdk.models.internal.RedemptionOwnership;
import com.superwall.sdk.models.internal.RedemptionOwnershipType;
import com.superwall.sdk.models.internal.RedemptionResult;
import com.superwall.sdk.models.internal.WebRedemptionResponse;
import com.superwall.sdk.network.Network;
import com.superwall.sdk.network.NetworkError;
import com.superwall.sdk.network.SuperwallAPI;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.storage.LastWebEntitlementsFetchDate;
import com.superwall.sdk.storage.LatestRedemptionResponse;
import com.superwall.sdk.storage.LatestWebCustomerInfo;
import com.superwall.sdk.storage.Storage;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObjectBuilder;

/* JADX INFO: compiled from: WebPaywallRedeemer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u000289B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0082@¢\u0006\u0002\u0010\u001dJ\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001H\u0002J\u001a\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020#0\"H\u0086@¢\u0006\u0002\u0010$J\u0016\u0010%\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020'H\u0086@¢\u0006\u0002\u0010(J4\u0010)\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0*\u0012\u0004\u0012\u00020#0\"2\b\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010.\u001a\u00020/H\u0086@¢\u0006\u0004\b0\u00101J\u000e\u00102\u001a\u00020\u001a2\u0006\u00103\u001a\u000204J\u0012\u00105\u001a\u00020\u001a2\b\b\u0002\u00106\u001a\u000207H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006:"}, d2 = {"Lcom/superwall/sdk/web/WebPaywallRedeemer;", "", "context", "Landroid/content/Context;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "deepLinkReferrer", "Lcom/superwall/sdk/web/CheckForReferral;", "network", "Lcom/superwall/sdk/network/Network;", "storage", "Lcom/superwall/sdk/storage/Storage;", "customerInfoManager", "Lcom/superwall/sdk/customer/CustomerInfoManager;", "factory", "Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;", "<init>", "(Landroid/content/Context;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/web/CheckForReferral;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/customer/CustomerInfoManager;Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;)V", "getDeepLinkReferrer$superwall_release", "()Lcom/superwall/sdk/web/CheckForReferral;", "getCustomerInfoManager$superwall_release", "()Lcom/superwall/sdk/customer/CustomerInfoManager;", "pollingJob", "Lkotlinx/coroutines/Job;", "redemptionJob", "track", "", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;", "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "convertToJsonElement", "Lkotlinx/serialization/json/JsonElement;", RNConstants.ARG_VALUE, "checkForRefferal", "Lcom/superwall/sdk/misc/Either;", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "redeem", "redemption", "Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;", "(Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkForWebEntitlements", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "userId", "Lcom/superwall/sdk/models/internal/UserId;", "deviceId", "Lcom/superwall/sdk/models/internal/DeviceVendorId;", "checkForWebEntitlements-AKGx8qU", "(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clear", "ownership", "Lcom/superwall/sdk/models/internal/RedemptionOwnershipType;", "startPolling", "maxAge", "", "Factory", "RedeemType", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class WebPaywallRedeemer {
    private final Context context;
    private final CustomerInfoManager customerInfoManager;
    private final CheckForReferral deepLinkReferrer;
    private final Factory factory;
    private final IOScope ioScope;
    private final Network network;
    private Job pollingJob;
    private Job redemptionJob;
    private final Storage storage;

    /* JADX INFO: compiled from: WebPaywallRedeemer.kt */
    @Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH&J\u0011\u0010\f\u001a\u0004\u0018\u00010\rH&¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0011H&J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H&J\u0016\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H¦@¢\u0006\u0002\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH&J\u000e\u0010\u001b\u001a\u00020\u001cH¦@¢\u0006\u0002\u0010\u001dJ\u000e\u0010\u001e\u001a\u00020\u0003H¦@¢\u0006\u0002\u0010\u001dJ\u000e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH&J\b\u0010 \u001a\u00020!H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0013H&J\b\u0010$\u001a\u00020\u001cH&J\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020'0&H¦@¢\u0006\u0002\u0010\u001dJ\b\u0010(\u001a\u00020\u0013H&J\u0014\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00010*H&J\b\u0010+\u001a\u00020\u0003H&J\b\u0010,\u001a\u00020\u001cH&¨\u0006-"}, d2 = {"Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;", "", "willRedeemLink", "", "didRedeemLink", "redemptionResult", "Lcom/superwall/sdk/models/internal/RedemptionResult;", "maxAge", "", "getActiveDeviceEntitlements", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "getUserId", "Lcom/superwall/sdk/models/internal/UserId;", "getUserId-P5Wmf0A", "()Ljava/lang/String;", "getDeviceId", "Lcom/superwall/sdk/models/internal/DeviceVendorId;", "getAliasId", "", "track", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;", "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "internallySetSubscriptionStatus", "status", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "isPaywallVisible", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "triggerRestoreInPaywall", "currentPaywallEntitlements", "getPaywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "trackRestorationFailed", "message", "isWebToAppEnabled", "receipts", "", "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;", "getExternalAccountId", "getIntegrationProps", "", "closePaywallIfExists", "isPaymentSheetOpen", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Factory {
        void closePaywallIfExists();

        Set<Entitlement> currentPaywallEntitlements();

        void didRedeemLink(RedemptionResult redemptionResult);

        Set<Entitlement> getActiveDeviceEntitlements();

        String getAliasId();

        DeviceVendorId getDeviceId();

        String getExternalAccountId();

        Map<String, Object> getIntegrationProps();

        PaywallInfo getPaywallInfo();

        /* JADX INFO: renamed from: getUserId-P5Wmf0A */
        String mo10616getUserIdP5Wmf0A();

        void internallySetSubscriptionStatus(SubscriptionStatus status);

        boolean isPaymentSheetOpen();

        Object isPaywallVisible(Continuation<? super Boolean> continuation);

        boolean isWebToAppEnabled();

        long maxAge();

        Object receipts(Continuation<? super List<TransactionReceipt>> continuation);

        Object track(Trackable trackable, Continuation<? super Unit> continuation);

        void trackRestorationFailed(String message);

        Object triggerRestoreInPaywall(Continuation<? super Unit> continuation);

        void willRedeemLink();
    }

    /* JADX INFO: compiled from: WebPaywallRedeemer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RedemptionOwnershipType.values().length];
            try {
                iArr[RedemptionOwnershipType.AppUser.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RedemptionOwnershipType.Device.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.web.WebPaywallRedeemer$checkForRefferal$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebPaywallRedeemer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.web.WebPaywallRedeemer", f = "WebPaywallRedeemer.kt", i = {0}, l = {137, 140}, m = "checkForRefferal", n = {"this"}, s = {"L$0"})
    static final class C06231 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06231(Continuation<? super C06231> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebPaywallRedeemer.this.checkForRefferal(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.web.WebPaywallRedeemer$redeem$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebPaywallRedeemer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.web.WebPaywallRedeemer", f = "WebPaywallRedeemer.kt", i = {0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9}, l = {193, 194, ComposerKt.compositionLocalMapKey, 209, 204, 220, 257, 262, 296, 323}, m = "redeem", n = {"this", "redemption", "allCodes", "this", "redemption", "allCodes", "this", "redemption", "allCodes", "this", "redemption", "this", "redemption", "this", "redemption", "it", "this", "redemption", "it", "this", "redemption", "it", "this", "redemption", "it", "this", "errorMessage"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1"})
    static final class C06251 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        /* synthetic */ Object result;

        C06251(Continuation<? super C06251> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebPaywallRedeemer.this.redeem(null, this);
        }
    }

    public WebPaywallRedeemer(Context context, IOScope ioScope, CheckForReferral deepLinkReferrer, Network network, Storage storage, CustomerInfoManager customerInfoManager, Factory factory) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(deepLinkReferrer, "deepLinkReferrer");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(customerInfoManager, "customerInfoManager");
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.context = context;
        this.ioScope = ioScope;
        this.deepLinkReferrer = deepLinkReferrer;
        this.network = network;
        this.storage = storage;
        this.customerInfoManager = customerInfoManager;
        this.factory = factory;
        BuildersKt__Builders_commonKt.launch$default(ioScope, null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: renamed from: getDeepLinkReferrer$superwall_release, reason: from getter */
    public final CheckForReferral getDeepLinkReferrer() {
        return this.deepLinkReferrer;
    }

    /* JADX INFO: renamed from: getCustomerInfoManager$superwall_release, reason: from getter */
    public final CustomerInfoManager getCustomerInfoManager() {
        return this.customerInfoManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object track(Trackable trackable, Continuation<? super Unit> continuation) {
        Object objTrack = this.factory.track(trackable, continuation);
        return objTrack == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objTrack : Unit.INSTANCE;
    }

    private final JsonElement convertToJsonElement(Object value) {
        JsonElement jsonElementConvertToJsonElement;
        if (value == null) {
            return null;
        }
        if (value instanceof String) {
            return JsonElementKt.JsonPrimitive((String) value);
        }
        if (value instanceof Number) {
            return JsonElementKt.JsonPrimitive((Number) value);
        }
        if (value instanceof Boolean) {
            return JsonElementKt.JsonPrimitive((Boolean) value);
        }
        if (!(value instanceof Map)) {
            if (!(value instanceof Collection)) {
                return JsonElementKt.JsonPrimitive(value.toString());
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((Iterable) value).iterator();
            while (it.hasNext()) {
                JsonElement jsonElementConvertToJsonElement2 = convertToJsonElement(it.next());
                if (jsonElementConvertToJsonElement2 != null) {
                    arrayList.add(jsonElementConvertToJsonElement2);
                }
            }
            return new JsonArray(arrayList);
        }
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        for (Map.Entry entry : ((Map) value).entrySet()) {
            Object key = entry.getKey();
            Object value2 = entry.getValue();
            if ((key instanceof String) && value2 != null && (jsonElementConvertToJsonElement = convertToJsonElement(value2)) != null) {
                jsonObjectBuilder.put((String) key, jsonElementConvertToJsonElement);
            }
        }
        return jsonObjectBuilder.build();
    }

    /* JADX INFO: renamed from: com.superwall.sdk.web.WebPaywallRedeemer$1, reason: invalid class name */
    /* JADX INFO: compiled from: WebPaywallRedeemer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.web.WebPaywallRedeemer$1", f = "WebPaywallRedeemer.kt", i = {}, l = {TsExtractor.TS_STREAM_TYPE_AC3}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WebPaywallRedeemer.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (WebPaywallRedeemer.this.factory.isWebToAppEnabled()) {
                    this.label = 1;
                    if (WebPaywallRedeemer.this.checkForRefferal(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
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

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006f, code lost:
    
        if (r2.redeem(r4, r0) == r1) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object checkForRefferal(kotlin.coroutines.Continuation<? super com.superwall.sdk.misc.Either<kotlin.Unit, java.lang.Throwable>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.superwall.sdk.web.WebPaywallRedeemer.C06231
            if (r0 == 0) goto L14
            r0 = r6
            com.superwall.sdk.web.WebPaywallRedeemer$checkForRefferal$1 r0 = (com.superwall.sdk.web.WebPaywallRedeemer.C06231) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.superwall.sdk.web.WebPaywallRedeemer$checkForRefferal$1 r0 = new com.superwall.sdk.web.WebPaywallRedeemer$checkForRefferal$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L43
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L7d
            goto L72
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L35:
            java.lang.Object r2 = r0.L$0
            com.superwall.sdk.web.WebPaywallRedeemer r2 = (com.superwall.sdk.web.WebPaywallRedeemer) r2
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L7d
            kotlin.Result r6 = (kotlin.Result) r6     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r6 = r6.getValue()     // Catch: java.lang.Throwable -> L7d
            goto L57
        L43:
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r0
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6     // Catch: java.lang.Throwable -> L7d
            com.superwall.sdk.web.CheckForReferral r6 = r5.deepLinkReferrer     // Catch: java.lang.Throwable -> L7d
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L7d
            r0.label = r4     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r6 = r6.mo10806checkForReferralIoAF18A(r0)     // Catch: java.lang.Throwable -> L7d
            if (r6 != r1) goto L56
            goto L71
        L56:
            r2 = r5
        L57:
            java.lang.Throwable r4 = kotlin.Result.m11244exceptionOrNullimpl(r6)     // Catch: java.lang.Throwable -> L7d
            if (r4 != 0) goto L7c
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L7d
            com.superwall.sdk.web.WebPaywallRedeemer$RedeemType$Code r4 = new com.superwall.sdk.web.WebPaywallRedeemer$RedeemType$Code     // Catch: java.lang.Throwable -> L7d
            r4.<init>(r6)     // Catch: java.lang.Throwable -> L7d
            com.superwall.sdk.web.WebPaywallRedeemer$RedeemType r4 = (com.superwall.sdk.web.WebPaywallRedeemer.RedeemType) r4     // Catch: java.lang.Throwable -> L7d
            r6 = 0
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L7d
            r0.label = r3     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r6 = r2.redeem(r4, r0)     // Catch: java.lang.Throwable -> L7d
            if (r6 != r1) goto L72
        L71:
            return r1
        L72:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7d
            com.superwall.sdk.misc.Either$Success r0 = new com.superwall.sdk.misc.Either$Success     // Catch: java.lang.Throwable -> L7d
            r0.<init>(r6)     // Catch: java.lang.Throwable -> L7d
            com.superwall.sdk.misc.Either r0 = (com.superwall.sdk.misc.Either) r0     // Catch: java.lang.Throwable -> L7d
            return r0
        L7c:
            throw r4     // Catch: java.lang.Throwable -> L7d
        L7d:
            r6 = move-exception
            com.superwall.sdk.misc.Either$Failure r0 = new com.superwall.sdk.misc.Either$Failure
            r0.<init>(r6)
            com.superwall.sdk.misc.Either r0 = (com.superwall.sdk.misc.Either) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.web.WebPaywallRedeemer.checkForRefferal(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: compiled from: WebPaywallRedeemer.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\b\t\nR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005\u0082\u0001\u0003\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;", "", "description", "", "getDescription", "()Ljava/lang/String;", "code", "getCode", "Code", "Existing", "IntegrationAttributes", "Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;", "Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Existing;", "Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$IntegrationAttributes;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface RedeemType {
        String getCode();

        String getDescription();

        /* JADX INFO: compiled from: WebPaywallRedeemer.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u0003X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Code;", "Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;", "code", "", "<init>", "(Ljava/lang/String;)V", "getCode", "()Ljava/lang/String;", "description", "getDescription", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Code implements RedeemType {
            private final String code;
            private final String description;

            public static /* synthetic */ Code copy$default(Code code, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = code.code;
                }
                return code.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getCode() {
                return this.code;
            }

            public final Code copy(String code) {
                Intrinsics.checkNotNullParameter(code, "code");
                return new Code(code);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Code) && Intrinsics.areEqual(this.code, ((Code) other).code);
            }

            public int hashCode() {
                return this.code.hashCode();
            }

            public String toString() {
                return "Code(code=" + this.code + ")";
            }

            public Code(String code) {
                Intrinsics.checkNotNullParameter(code, "code");
                this.code = code;
                this.description = "CODE";
            }

            @Override // com.superwall.sdk.web.WebPaywallRedeemer.RedeemType
            public String getCode() {
                return this.code;
            }

            @Override // com.superwall.sdk.web.WebPaywallRedeemer.RedeemType
            public String getDescription() {
                return this.description;
            }
        }

        /* JADX INFO: compiled from: WebPaywallRedeemer.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$Existing;", "Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;", "<init>", "()V", "description", "", "getDescription", "()Ljava/lang/String;", "code", "getCode", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Existing implements RedeemType {
            private static final String code = null;
            public static final Existing INSTANCE = new Existing();
            private static final String description = "EXISTING_CODES";

            private Existing() {
            }

            @Override // com.superwall.sdk.web.WebPaywallRedeemer.RedeemType
            public String getDescription() {
                return description;
            }

            @Override // com.superwall.sdk.web.WebPaywallRedeemer.RedeemType
            public String getCode() {
                return code;
            }
        }

        /* JADX INFO: compiled from: WebPaywallRedeemer.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u0005X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType$IntegrationAttributes;", "Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;", "<init>", "()V", "code", "", "getCode", "()Ljava/lang/String;", "description", "getDescription", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class IntegrationAttributes implements RedeemType {
            public static final IntegrationAttributes INSTANCE = new IntegrationAttributes();
            private static final String description = "INTEGRATION_ATTRIBUTES";

            @Override // com.superwall.sdk.web.WebPaywallRedeemer.RedeemType
            public String getCode() {
                return null;
            }

            private IntegrationAttributes() {
            }

            @Override // com.superwall.sdk.web.WebPaywallRedeemer.RedeemType
            public String getDescription() {
                return description;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0396 A[PHI: r0 r1 r2 r4 r7
      0x0396: PHI (r0v19 int) = (r0v16 int), (r0v21 int) binds: [B:99:0x0392, B:16:0x0089] A[DONT_GENERATE, DONT_INLINE]
      0x0396: PHI (r1v32 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType$Code) = 
      (r1v28 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType$Code)
      (r1v35 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType$Code)
     binds: [B:99:0x0392, B:16:0x0089] A[DONT_GENERATE, DONT_INLINE]
      0x0396: PHI (r2v41 com.superwall.sdk.models.internal.WebRedemptionResponse) = 
      (r2v40 com.superwall.sdk.models.internal.WebRedemptionResponse)
      (r2v42 com.superwall.sdk.models.internal.WebRedemptionResponse)
     binds: [B:99:0x0392, B:16:0x0089] A[DONT_GENERATE, DONT_INLINE]
      0x0396: PHI (r4v52 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType) = 
      (r4v48 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
      (r4v54 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
     binds: [B:99:0x0392, B:16:0x0089] A[DONT_GENERATE, DONT_INLINE]
      0x0396: PHI (r7v25 com.superwall.sdk.web.WebPaywallRedeemer) = (r7v23 com.superwall.sdk.web.WebPaywallRedeemer), (r7v27 com.superwall.sdk.web.WebPaywallRedeemer) binds: [B:99:0x0392, B:16:0x0089] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:103:0x039a  */
    /* JADX WARN: Code duplicated, block: B:105:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:106:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:108:0x03a9  */
    /* JADX WARN: Code duplicated, block: B:110:0x03af  */
    /* JADX WARN: Code duplicated, block: B:113:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:116:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:119:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:123:0x03fd  */
    /* JADX WARN: Code duplicated, block: B:124:0x0402  */
    /* JADX WARN: Code duplicated, block: B:126:0x0406  */
    /* JADX WARN: Code duplicated, block: B:127:0x040a  */
    /* JADX WARN: Code duplicated, block: B:129:0x040d  */
    /* JADX WARN: Code duplicated, block: B:137:0x042f  */
    /* JADX WARN: Code duplicated, block: B:143:0x044d  */
    /* JADX WARN: Code duplicated, block: B:146:0x0462 A[PHI: r0 r1 r2 r4 r5 r7
      0x0462: PHI (r0v22 int) = (r0v19 int), (r0v23 int) binds: [B:144:0x045e, B:15:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x0462: PHI (r1v36 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType$Code) = 
      (r1v32 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType$Code)
      (r1v39 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType$Code)
     binds: [B:144:0x045e, B:15:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x0462: PHI (r2v43 com.superwall.sdk.models.internal.WebRedemptionResponse) = 
      (r2v41 com.superwall.sdk.models.internal.WebRedemptionResponse)
      (r2v44 com.superwall.sdk.models.internal.WebRedemptionResponse)
     binds: [B:144:0x045e, B:15:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x0462: PHI (r4v55 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType) = 
      (r4v52 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
      (r4v58 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
     binds: [B:144:0x045e, B:15:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x0462: PHI (r5v30 java.lang.Object) = (r5v28 java.lang.Object), (r5v40 java.lang.Object) binds: [B:144:0x045e, B:15:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x0462: PHI (r7v28 com.superwall.sdk.web.WebPaywallRedeemer) = (r7v25 com.superwall.sdk.web.WebPaywallRedeemer), (r7v30 com.superwall.sdk.web.WebPaywallRedeemer) binds: [B:144:0x045e, B:15:0x0074] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:148:0x046a  */
    /* JADX WARN: Code duplicated, block: B:152:0x047a  */
    /* JADX WARN: Code duplicated, block: B:156:0x0490  */
    /* JADX WARN: Code duplicated, block: B:159:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:161:0x04ab  */
    /* JADX WARN: Code duplicated, block: B:162:0x04b5  */
    /* JADX WARN: Code duplicated, block: B:164:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:171:0x04d6  */
    /* JADX WARN: Code duplicated, block: B:182:0x050b  */
    /* JADX WARN: Code duplicated, block: B:185:0x052b  */
    /* JADX WARN: Code duplicated, block: B:188:0x0542  */
    /* JADX WARN: Code duplicated, block: B:193:0x056a  */
    /* JADX WARN: Code duplicated, block: B:195:0x056e  */
    /* JADX WARN: Code duplicated, block: B:198:0x0595 A[PHI: r0 r1 r2 r4 r7
      0x0595: PHI (r0v28 int) = (r0v16 int), (r0v29 int) binds: [B:196:0x0592, B:13:0x004c] A[DONT_GENERATE, DONT_INLINE]
      0x0595: PHI (r1v46 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType$Code) = 
      (r1v28 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType$Code)
      (r1v49 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType$Code)
     binds: [B:196:0x0592, B:13:0x004c] A[DONT_GENERATE, DONT_INLINE]
      0x0595: PHI (r2v52 com.superwall.sdk.network.NetworkError) = (r2v37 com.superwall.sdk.network.NetworkError), (r2v56 com.superwall.sdk.network.NetworkError) binds: [B:196:0x0592, B:13:0x004c] A[DONT_GENERATE, DONT_INLINE]
      0x0595: PHI (r4v64 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType) = 
      (r4v48 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
      (r4v70 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
     binds: [B:196:0x0592, B:13:0x004c] A[DONT_GENERATE, DONT_INLINE]
      0x0595: PHI (r7v33 com.superwall.sdk.web.WebPaywallRedeemer) = (r7v23 com.superwall.sdk.web.WebPaywallRedeemer), (r7v35 com.superwall.sdk.web.WebPaywallRedeemer) binds: [B:196:0x0592, B:13:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:19:0x00cd A[PHI: r1 r2 r4 r7 r8 r9 r10 r11
      0x00cd: PHI (r1v15 com.superwall.sdk.models.internal.DeviceVendorId) = (r1v12 com.superwall.sdk.models.internal.DeviceVendorId), (r1v27 com.superwall.sdk.models.internal.DeviceVendorId) binds: [B:67:0x026e, B:18:0x00ae] A[DONT_GENERATE, DONT_INLINE]
      0x00cd: PHI (r2v29 java.lang.Object) = (r2v28 java.lang.Object), (r2v1 java.lang.Object) binds: [B:67:0x026e, B:18:0x00ae] A[DONT_GENERATE, DONT_INLINE]
      0x00cd: PHI (r4v42 java.lang.String) = (r4v39 java.lang.String), (r4v47 java.lang.String) binds: [B:67:0x026e, B:18:0x00ae] A[DONT_GENERATE, DONT_INLINE]
      0x00cd: PHI (r7v18 java.lang.String) = (r7v15 java.lang.String), (r7v22 java.lang.String) binds: [B:67:0x026e, B:18:0x00ae] A[DONT_GENERATE, DONT_INLINE]
      0x00cd: PHI (r8v17 java.util.List<com.superwall.sdk.models.entitlements.Redeemable>) = 
      (r8v15 java.util.List<com.superwall.sdk.models.entitlements.Redeemable>)
      (r8v20 java.util.List<com.superwall.sdk.models.entitlements.Redeemable>)
     binds: [B:67:0x026e, B:18:0x00ae] A[DONT_GENERATE, DONT_INLINE]
      0x00cd: PHI (r9v3 com.superwall.sdk.network.Network) = (r9v2 com.superwall.sdk.network.Network), (r9v7 com.superwall.sdk.network.Network) binds: [B:67:0x026e, B:18:0x00ae] A[DONT_GENERATE, DONT_INLINE]
      0x00cd: PHI (r10v3 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType) = 
      (r10v1 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
      (r10v7 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
     binds: [B:67:0x026e, B:18:0x00ae] A[DONT_GENERATE, DONT_INLINE]
      0x00cd: PHI (r11v1 com.superwall.sdk.web.WebPaywallRedeemer) = (r11v0 com.superwall.sdk.web.WebPaywallRedeemer), (r11v6 com.superwall.sdk.web.WebPaywallRedeemer) binds: [B:67:0x026e, B:18:0x00ae] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:200:0x0599  */
    /* JADX WARN: Code duplicated, block: B:202:0x059f  */
    /* JADX WARN: Code duplicated, block: B:208:0x05d1  */
    /* JADX WARN: Code duplicated, block: B:212:0x05f4  */
    /* JADX WARN: Code duplicated, block: B:215:0x05fd  */
    /* JADX WARN: Code duplicated, block: B:221:0x0617  */
    /* JADX WARN: Code duplicated, block: B:231:0x0559 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:232:? A[LOOP:1: B:186:0x053c->B:232:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:233:0x0448 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:236:0x03d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:237:0x03fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:238:? A[LOOP:3: B:117:0x03dd->B:238:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:0x02eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x02d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x0223 A[PHI: r1 r2 r7
      0x0223: PHI (r1v5 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType) = 
      (r1v0 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
      (r1v1 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
      (r1v1 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
      (r1v1 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
      (r1v8 com.superwall.sdk.web.WebPaywallRedeemer$RedeemType)
     binds: [B:61:0x0222, B:55:0x01f6, B:57:0x01fe, B:59:0x021e, B:22:0x00ea] A[DONT_GENERATE, DONT_INLINE]
      0x0223: PHI (r2v25 java.util.List<com.superwall.sdk.models.entitlements.Redeemable>) = 
      (r2v18 java.util.List<com.superwall.sdk.models.entitlements.Redeemable>)
      (r2v23 java.util.List<com.superwall.sdk.models.entitlements.Redeemable>)
      (r2v23 java.util.List<com.superwall.sdk.models.entitlements.Redeemable>)
      (r2v23 java.util.List<com.superwall.sdk.models.entitlements.Redeemable>)
      (r2v26 java.util.List<com.superwall.sdk.models.entitlements.Redeemable>)
     binds: [B:61:0x0222, B:55:0x01f6, B:57:0x01fe, B:59:0x021e, B:22:0x00ea] A[DONT_GENERATE, DONT_INLINE]
      0x0223: PHI (r7v11 com.superwall.sdk.web.WebPaywallRedeemer) = 
      (r7v2 com.superwall.sdk.web.WebPaywallRedeemer)
      (r7v8 com.superwall.sdk.web.WebPaywallRedeemer)
      (r7v8 com.superwall.sdk.web.WebPaywallRedeemer)
      (r7v8 com.superwall.sdk.web.WebPaywallRedeemer)
      (r7v13 com.superwall.sdk.web.WebPaywallRedeemer)
     binds: [B:61:0x0222, B:55:0x01f6, B:57:0x01fe, B:59:0x021e, B:22:0x00ea] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:65:0x023f  */
    /* JADX WARN: Code duplicated, block: B:72:0x0287  */
    /* JADX WARN: Code duplicated, block: B:74:0x028a  */
    /* JADX WARN: Code duplicated, block: B:77:0x02a9 A[LOOP:4: B:75:0x02a3->B:77:0x02a9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:81:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:83:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:84:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:90:0x031e A[LOOP:6: B:88:0x0318->B:90:0x031e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:91:0x0335  */
    /* JADX WARN: Code duplicated, block: B:95:0x035b  */
    /* JADX WARN: Code duplicated, block: B:98:0x0364  */
    public final Object redeem(RedeemType redeemType, Continuation<? super Unit> continuation) {
        C06251 c06251;
        String str;
        ArrayList arrayList;
        WebPaywallRedeemer webPaywallRedeemer;
        boolean z;
        Object objIsPaywallVisible;
        List<Redeemable> allCodes;
        InternalSuperwallEvent.Redemptions redemptions;
        RedeemType redeemType2;
        List<Redeemable> list;
        WebPaywallRedeemer webPaywallRedeemer2;
        Network network;
        String strMo10616getUserIdP5Wmf0A;
        String aliasId;
        DeviceVendorId deviceId;
        String str2;
        RedeemType redeemType3;
        WebPaywallRedeemer webPaywallRedeemer3;
        Map<String, Object> integrationProps;
        String str3;
        LinkedHashMap linkedHashMap;
        RedeemType.Code code;
        int i;
        Object objMo10686redeemTokenJf2YlNw;
        WebPaywallRedeemer webPaywallRedeemer4;
        RedeemType redeemType4;
        LinkedHashMap linkedHashMap2;
        Iterator it;
        LinkedHashMap linkedHashMap3;
        boolean z2;
        Either either;
        NetworkError networkError;
        InternalSuperwallEvent.Redemptions redemptions2;
        WebRedemptionResponse webRedemptionResponse;
        InternalSuperwallEvent.Redemptions redemptions3;
        boolean z3;
        RedeemType.Code code2;
        String code3;
        List<RedemptionResult> codes;
        Iterator<T> it2;
        int i2;
        RedeemType.Code code4;
        List<RedemptionResult> listListOf;
        String code5;
        Iterator<T> it3;
        Object next;
        Object objIsPaywallVisible2;
        CustomerInfo customerInfo;
        Factory factory;
        RedeemType redeemType5;
        WebPaywallRedeemer webPaywallRedeemer5;
        List<Entitlement> entitlements;
        CustomerInfo customerInfo2;
        Set setEmptySet;
        List<Entitlement> entitlements2;
        String localizedMessage;
        WebPaywallRedeemer webPaywallRedeemer6;
        RedeemType redeemType6 = redeemType;
        if (continuation instanceof C06251) {
            c06251 = (C06251) continuation;
            if ((c06251.label & Integer.MIN_VALUE) != 0) {
                c06251.label -= Integer.MIN_VALUE;
            } else {
                c06251 = new C06251(continuation);
            }
        } else {
            c06251 = new C06251(continuation);
        }
        C06251 c06252 = c06251;
        Object objReceipts = c06252.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        String str4 = "";
        boolean zContainsAll = false;
        switch (c06252.label) {
            case 0:
                ResultKt.throwOnFailure(objReceipts);
                Logger logger = Logger.INSTANCE;
                LogLevel logLevel = LogLevel.debug;
                LogScope logScope = LogScope.webEntitlements;
                if (redeemType6 instanceof RedeemType.Existing) {
                    str = "Existing";
                } else if (redeemType6 instanceof RedeemType.Code) {
                    str = "Code: " + ((RedeemType.Code) redeemType6).getCode();
                } else {
                    if (!(redeemType6 instanceof RedeemType.IntegrationAttributes)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    str = "Integration attributes";
                }
                Logger.debug$default(logger, logLevel, logScope, "Starting redemption of type " + str, null, null, 24, null);
                WebRedemptionResponse webRedemptionResponse2 = (WebRedemptionResponse) this.storage.read(LatestRedemptionResponse.INSTANCE);
                if (webRedemptionResponse2 == null || (allCodes = webRedemptionResponse2.getAllCodes()) == null || (arrayList = CollectionsKt.toMutableList((Collection) allCodes)) == null) {
                    arrayList = new ArrayList();
                }
                if (redeemType6 instanceof RedeemType.Code) {
                    this.factory.willRedeemLink();
                    if (arrayList.isEmpty()) {
                        z = true;
                    } else {
                        List<Redeemable> list2 = arrayList;
                        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                        Iterator it4 = list2.iterator();
                        while (it4.hasNext()) {
                            arrayList2.add(((Redeemable) it4.next()).getCode());
                        }
                        z = !arrayList2.contains(((RedeemType.Code) redeemType6).getCode());
                    }
                    arrayList.add(new Redeemable(((RedeemType.Code) redeemType6).getCode(), Boxing.boxBoolean(z)));
                    Factory factory2 = this.factory;
                    c06252.L$0 = this;
                    c06252.L$1 = redeemType6;
                    c06252.L$2 = arrayList;
                    c06252.label = 1;
                    objIsPaywallVisible = factory2.isPaywallVisible(c06252);
                    if (objIsPaywallVisible != coroutine_suspended) {
                        webPaywallRedeemer = this;
                        if (!((Boolean) objIsPaywallVisible).booleanValue() && !webPaywallRedeemer.factory.isPaymentSheetOpen()) {
                            InternalSuperwallEvent.Restore restore = new InternalSuperwallEvent.Restore(InternalSuperwallEvent.Restore.State.Start.INSTANCE, webPaywallRedeemer.factory.getPaywallInfo());
                            c06252.L$0 = webPaywallRedeemer;
                            c06252.L$1 = redeemType6;
                            c06252.L$2 = arrayList;
                            c06252.label = 2;
                            if (webPaywallRedeemer.track(restore, c06252) != coroutine_suspended) {
                                redemptions = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Start.INSTANCE, redeemType6);
                                c06252.L$0 = webPaywallRedeemer;
                                c06252.L$1 = redeemType6;
                                c06252.L$2 = arrayList;
                                c06252.label = 3;
                                if (webPaywallRedeemer.track(redemptions, c06252) != coroutine_suspended) {
                                    redeemType2 = redeemType6;
                                    list = arrayList;
                                    webPaywallRedeemer2 = webPaywallRedeemer;
                                    network = webPaywallRedeemer2.network;
                                    strMo10616getUserIdP5Wmf0A = webPaywallRedeemer2.factory.mo10616getUserIdP5Wmf0A();
                                    aliasId = webPaywallRedeemer2.factory.getAliasId();
                                    deviceId = webPaywallRedeemer2.factory.getDeviceId();
                                    Factory factory3 = webPaywallRedeemer2.factory;
                                    c06252.L$0 = webPaywallRedeemer2;
                                    c06252.L$1 = redeemType2;
                                    c06252.L$2 = network;
                                    c06252.L$3 = list;
                                    c06252.L$4 = strMo10616getUserIdP5Wmf0A;
                                    c06252.L$5 = aliasId;
                                    c06252.L$6 = deviceId;
                                    c06252.label = 4;
                                    objReceipts = factory3.receipts(c06252);
                                    if (objReceipts != coroutine_suspended) {
                                        List<Redeemable> list3 = list;
                                        DeviceVendorId deviceVendorId = deviceId;
                                        str2 = strMo10616getUserIdP5Wmf0A;
                                        String str5 = aliasId;
                                        SuperwallAPI superwallAPI = network;
                                        redeemType3 = redeemType2;
                                        webPaywallRedeemer3 = webPaywallRedeemer2;
                                        List<TransactionReceipt> list4 = (List) objReceipts;
                                        String externalAccountId = webPaywallRedeemer3.factory.getExternalAccountId();
                                        integrationProps = webPaywallRedeemer3.factory.getIntegrationProps();
                                        if (integrationProps.isEmpty()) {
                                            integrationProps = null;
                                        }
                                        if (integrationProps != null) {
                                            linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(integrationProps.size()));
                                            for (it = integrationProps.entrySet().iterator(); it.hasNext(); it = it) {
                                                Map.Entry entry = (Map.Entry) it.next();
                                                linkedHashMap2.put(entry.getKey(), webPaywallRedeemer3.convertToJsonElement(entry.getValue()));
                                            }
                                            linkedHashMap3 = new LinkedHashMap();
                                            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                                                if (((JsonElement) entry2.getValue()) != null) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                if (z2) {
                                                    linkedHashMap3.put(entry2.getKey(), entry2.getValue());
                                                    str2 = str2;
                                                }
                                            }
                                            str3 = str2;
                                            LinkedHashMap linkedHashMap4 = linkedHashMap3;
                                            linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap4.size()));
                                            for (Map.Entry entry3 : linkedHashMap4.entrySet()) {
                                                Object key = entry3.getKey();
                                                JsonElement jsonElement = (JsonElement) entry3.getValue();
                                                Intrinsics.checkNotNull(jsonElement);
                                                linkedHashMap.put(key, jsonElement);
                                            }
                                        } else {
                                            str3 = str2;
                                            linkedHashMap = null;
                                        }
                                        c06252.L$0 = webPaywallRedeemer3;
                                        c06252.L$1 = redeemType3;
                                        c06252.L$2 = null;
                                        c06252.L$3 = null;
                                        c06252.L$4 = null;
                                        c06252.L$5 = null;
                                        c06252.L$6 = null;
                                        c06252.label = 5;
                                        LinkedHashMap linkedHashMap5 = linkedHashMap;
                                        code = null;
                                        i = 1;
                                        objMo10686redeemTokenJf2YlNw = superwallAPI.mo10686redeemTokenJf2YlNw(list3, str3, str5, deviceVendorId, list4, externalAccountId, linkedHashMap5, c06252);
                                        if (objMo10686redeemTokenJf2YlNw != coroutine_suspended) {
                                            webPaywallRedeemer4 = webPaywallRedeemer3;
                                            objReceipts = objMo10686redeemTokenJf2YlNw;
                                            redeemType4 = redeemType3;
                                            either = (Either) objReceipts;
                                            if (either instanceof Either.Success) {
                                                webRedemptionResponse = (WebRedemptionResponse) ((Either.Success) either).getValue();
                                                webPaywallRedeemer4.storage.write(LatestRedemptionResponse.INSTANCE, webRedemptionResponse);
                                                redemptions3 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Complete.INSTANCE, redeemType4);
                                                c06252.L$0 = webPaywallRedeemer4;
                                                c06252.L$1 = redeemType4;
                                                c06252.L$2 = webRedemptionResponse;
                                                c06252.label = 6;
                                                if (webPaywallRedeemer4.track(redemptions3, c06252) != coroutine_suspended) {
                                                    z3 = redeemType4 instanceof RedeemType.Code;
                                                    if (z3) {
                                                        Logger logger2 = Logger.INSTANCE;
                                                        LogLevel logLevel2 = LogLevel.debug;
                                                        LogScope logScope2 = LogScope.webEntitlements;
                                                        if (z3) {
                                                            code2 = (RedeemType.Code) redeemType4;
                                                        } else {
                                                            code2 = code;
                                                        }
                                                        if (code2 != null) {
                                                            code3 = "";
                                                        } else {
                                                            code3 = "";
                                                        }
                                                        Logger.debug$default(logger2, logLevel2, logScope2, "Entitlement redemption done", MapsKt.mapOf(TuplesKt.to("code", code3)), null, 16, null);
                                                        codes = webRedemptionResponse.getCodes();
                                                        if (codes instanceof Collection) {
                                                            it2 = codes.iterator();
                                                            while (true) {
                                                                if (!it2.hasNext()) {
                                                                    i2 = 0;
                                                                } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                                    i2 = i;
                                                                }
                                                            }
                                                        } else {
                                                            it2 = codes.iterator();
                                                            while (true) {
                                                                if (!it2.hasNext()) {
                                                                    i2 = 0;
                                                                } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                                    i2 = i;
                                                                }
                                                            }
                                                        }
                                                        if (i2 != 0) {
                                                            listListOf = webRedemptionResponse.getCodes();
                                                        } else {
                                                            if (z3) {
                                                                code4 = (RedeemType.Code) redeemType4;
                                                            } else {
                                                                code4 = code;
                                                            }
                                                            if (code4 != null) {
                                                                str4 = code5;
                                                            }
                                                            listListOf = CollectionsKt.listOf(new RedemptionResult.Error(str4, new ErrorInfo("Redemption failed, code not returned")));
                                                        }
                                                        it3 = listListOf.iterator();
                                                        do {
                                                            if (it3.hasNext()) {
                                                                next = it3.next();
                                                            } else {
                                                                next = code;
                                                            }
                                                            if (((RedemptionResult) next) != null) {
                                                                Factory factory4 = webPaywallRedeemer4.factory;
                                                                c06252.L$0 = webPaywallRedeemer4;
                                                                c06252.L$1 = redeemType4;
                                                                c06252.L$2 = webRedemptionResponse;
                                                                c06252.label = 7;
                                                                objIsPaywallVisible2 = factory4.isPaywallVisible(c06252);
                                                                if (objIsPaywallVisible2 != coroutine_suspended) {
                                                                    if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                                        customerInfo = webRedemptionResponse.getCustomerInfo();
                                                                        if (customerInfo != null) {
                                                                            zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                                        }
                                                                        if (zContainsAll) {
                                                                            factory = webPaywallRedeemer4.factory;
                                                                            c06252.L$0 = webPaywallRedeemer4;
                                                                            c06252.L$1 = redeemType4;
                                                                            c06252.L$2 = webRedemptionResponse;
                                                                            c06252.label = 8;
                                                                            if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                                                redeemType5 = redeemType4;
                                                                                webPaywallRedeemer5 = webPaywallRedeemer4;
                                                                                webPaywallRedeemer4 = webPaywallRedeemer5;
                                                                                redeemType4 = redeemType5;
                                                                            }
                                                                        } else {
                                                                            webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                                            return Unit.INSTANCE;
                                                        } while (!Intrinsics.areEqual(((RedemptionResult) next).getCode(), ((RedeemType.Code) redeemType4).getCode()));
                                                        if (((RedemptionResult) next) != null) {
                                                            Factory factory5 = webPaywallRedeemer4.factory;
                                                            c06252.L$0 = webPaywallRedeemer4;
                                                            c06252.L$1 = redeemType4;
                                                            c06252.L$2 = webRedemptionResponse;
                                                            c06252.label = 7;
                                                            objIsPaywallVisible2 = factory5.isPaywallVisible(c06252);
                                                            if (objIsPaywallVisible2 != coroutine_suspended) {
                                                                if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                                    customerInfo = webRedemptionResponse.getCustomerInfo();
                                                                    if (customerInfo != null) {
                                                                        zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                                    }
                                                                    if (zContainsAll) {
                                                                        factory = webPaywallRedeemer4.factory;
                                                                        c06252.L$0 = webPaywallRedeemer4;
                                                                        c06252.L$1 = redeemType4;
                                                                        c06252.L$2 = webRedemptionResponse;
                                                                        c06252.label = 8;
                                                                        if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                                            redeemType5 = redeemType4;
                                                                            webPaywallRedeemer5 = webPaywallRedeemer4;
                                                                            webPaywallRedeemer4 = webPaywallRedeemer5;
                                                                            redeemType4 = redeemType5;
                                                                        }
                                                                    } else {
                                                                        webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                                        return Unit.INSTANCE;
                                                    }
                                                    if (!Intrinsics.areEqual(redeemType4, RedeemType.Existing.INSTANCE)) {
                                                        throw new NoWhenBranchMatchedException();
                                                    }
                                                    Factory factory6 = webPaywallRedeemer4.factory;
                                                    customerInfo2 = webRedemptionResponse.getCustomerInfo();
                                                    if (customerInfo2 != null) {
                                                        setEmptySet = SetsKt.emptySet();
                                                    } else {
                                                        setEmptySet = SetsKt.emptySet();
                                                    }
                                                    factory6.internallySetSubscriptionStatus(new SubscriptionStatus.Active(SetsKt.plus(setEmptySet, (Iterable) webPaywallRedeemer4.factory.getActiveDeviceEntitlements())));
                                                    if (redeemType4 instanceof RedeemType.Code) {
                                                        webPaywallRedeemer4.factory.closePaywallIfExists();
                                                        for (RedemptionResult redemptionResult : webRedemptionResponse.getCodes()) {
                                                            if (Intrinsics.areEqual(redemptionResult.getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                                webPaywallRedeemer4.factory.didRedeemLink(redemptionResult);
                                                            }
                                                        }
                                                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                                    }
                                                    startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                                    return Unit.INSTANCE;
                                                }
                                            } else if (either instanceof Either.Failure) {
                                                networkError = (NetworkError) ((Either.Failure) either).getError();
                                                redemptions2 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Fail.INSTANCE, redeemType4);
                                                c06252.L$0 = webPaywallRedeemer4;
                                                c06252.L$1 = redeemType4;
                                                c06252.L$2 = networkError;
                                                c06252.label = 9;
                                                if (webPaywallRedeemer4.track(redemptions2, c06252) != coroutine_suspended) {
                                                    if (redeemType4 instanceof RedeemType.Code) {
                                                        localizedMessage = networkError.getLocalizedMessage();
                                                        if (localizedMessage == null) {
                                                            localizedMessage = "Redemption failed, error unknown";
                                                        }
                                                        RedeemType.Code code6 = (RedeemType.Code) redeemType4;
                                                        Logger.INSTANCE.debug(LogLevel.error, LogScope.webEntitlements, "Failed to redeem purchase token", MapsKt.mapOf(TuplesKt.to("code", code6.getCode())), networkError);
                                                        Factory factory7 = webPaywallRedeemer4.factory;
                                                        String code7 = code6.getCode();
                                                        factory7.didRedeemLink(new RedemptionResult.Error(code7 != null ? code7 : "", new ErrorInfo(localizedMessage)));
                                                        Factory factory8 = webPaywallRedeemer4.factory;
                                                        c06252.L$0 = webPaywallRedeemer4;
                                                        c06252.L$1 = localizedMessage;
                                                        c06252.L$2 = code;
                                                        c06252.label = 10;
                                                        objReceipts = factory8.isPaywallVisible(c06252);
                                                        if (objReceipts != coroutine_suspended) {
                                                            webPaywallRedeemer6 = webPaywallRedeemer4;
                                                            if (((Boolean) objReceipts).booleanValue()) {
                                                                webPaywallRedeemer6.factory.trackRestorationFailed(localizedMessage);
                                                            }
                                                            webPaywallRedeemer4 = webPaywallRedeemer6;
                                                        }
                                                    }
                                                    startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                                    return Unit.INSTANCE;
                                                }
                                            } else {
                                                throw new NoWhenBranchMatchedException();
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            redemptions = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Start.INSTANCE, redeemType6);
                            c06252.L$0 = webPaywallRedeemer;
                            c06252.L$1 = redeemType6;
                            c06252.L$2 = arrayList;
                            c06252.label = 3;
                            if (webPaywallRedeemer.track(redemptions, c06252) != coroutine_suspended) {
                                redeemType2 = redeemType6;
                                list = arrayList;
                                webPaywallRedeemer2 = webPaywallRedeemer;
                                network = webPaywallRedeemer2.network;
                                strMo10616getUserIdP5Wmf0A = webPaywallRedeemer2.factory.mo10616getUserIdP5Wmf0A();
                                aliasId = webPaywallRedeemer2.factory.getAliasId();
                                deviceId = webPaywallRedeemer2.factory.getDeviceId();
                                Factory factory9 = webPaywallRedeemer2.factory;
                                c06252.L$0 = webPaywallRedeemer2;
                                c06252.L$1 = redeemType2;
                                c06252.L$2 = network;
                                c06252.L$3 = list;
                                c06252.L$4 = strMo10616getUserIdP5Wmf0A;
                                c06252.L$5 = aliasId;
                                c06252.L$6 = deviceId;
                                c06252.label = 4;
                                objReceipts = factory9.receipts(c06252);
                                if (objReceipts != coroutine_suspended) {
                                    List<Redeemable> list5 = list;
                                    DeviceVendorId deviceVendorId2 = deviceId;
                                    str2 = strMo10616getUserIdP5Wmf0A;
                                    String str6 = aliasId;
                                    SuperwallAPI superwallAPI2 = network;
                                    redeemType3 = redeemType2;
                                    webPaywallRedeemer3 = webPaywallRedeemer2;
                                    List<TransactionReceipt> list6 = (List) objReceipts;
                                    String externalAccountId2 = webPaywallRedeemer3.factory.getExternalAccountId();
                                    integrationProps = webPaywallRedeemer3.factory.getIntegrationProps();
                                    if (integrationProps.isEmpty()) {
                                        integrationProps = null;
                                    }
                                    if (integrationProps != null) {
                                        linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(integrationProps.size()));
                                        while (it.hasNext()) {
                                            Map.Entry entry4 = (Map.Entry) it.next();
                                            linkedHashMap2.put(entry4.getKey(), webPaywallRedeemer3.convertToJsonElement(entry4.getValue()));
                                        }
                                        linkedHashMap3 = new LinkedHashMap();
                                        while (r6.hasNext()) {
                                            if (((JsonElement) entry2.getValue()) != null) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            if (z2) {
                                                linkedHashMap3.put(entry2.getKey(), entry2.getValue());
                                                str2 = str2;
                                            }
                                        }
                                        str3 = str2;
                                        LinkedHashMap linkedHashMap6 = linkedHashMap3;
                                        linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap6.size()));
                                        while (r0.hasNext()) {
                                            Object key2 = entry3.getKey();
                                            JsonElement jsonElement2 = (JsonElement) entry3.getValue();
                                            Intrinsics.checkNotNull(jsonElement2);
                                            linkedHashMap.put(key2, jsonElement2);
                                        }
                                    } else {
                                        str3 = str2;
                                        linkedHashMap = null;
                                    }
                                    c06252.L$0 = webPaywallRedeemer3;
                                    c06252.L$1 = redeemType3;
                                    c06252.L$2 = null;
                                    c06252.L$3 = null;
                                    c06252.L$4 = null;
                                    c06252.L$5 = null;
                                    c06252.L$6 = null;
                                    c06252.label = 5;
                                    LinkedHashMap linkedHashMap7 = linkedHashMap;
                                    code = null;
                                    i = 1;
                                    objMo10686redeemTokenJf2YlNw = superwallAPI2.mo10686redeemTokenJf2YlNw(list5, str3, str6, deviceVendorId2, list6, externalAccountId2, linkedHashMap7, c06252);
                                    if (objMo10686redeemTokenJf2YlNw != coroutine_suspended) {
                                        webPaywallRedeemer4 = webPaywallRedeemer3;
                                        objReceipts = objMo10686redeemTokenJf2YlNw;
                                        redeemType4 = redeemType3;
                                        either = (Either) objReceipts;
                                        if (either instanceof Either.Success) {
                                            webRedemptionResponse = (WebRedemptionResponse) ((Either.Success) either).getValue();
                                            webPaywallRedeemer4.storage.write(LatestRedemptionResponse.INSTANCE, webRedemptionResponse);
                                            redemptions3 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Complete.INSTANCE, redeemType4);
                                            c06252.L$0 = webPaywallRedeemer4;
                                            c06252.L$1 = redeemType4;
                                            c06252.L$2 = webRedemptionResponse;
                                            c06252.label = 6;
                                            if (webPaywallRedeemer4.track(redemptions3, c06252) != coroutine_suspended) {
                                                z3 = redeemType4 instanceof RedeemType.Code;
                                                if (z3) {
                                                    Logger logger3 = Logger.INSTANCE;
                                                    LogLevel logLevel3 = LogLevel.debug;
                                                    LogScope logScope3 = LogScope.webEntitlements;
                                                    if (z3) {
                                                        code2 = (RedeemType.Code) redeemType4;
                                                    } else {
                                                        code2 = code;
                                                    }
                                                    if (code2 != null || (code3 = code2.getCode()) == null) {
                                                        code3 = "";
                                                    }
                                                    Logger.debug$default(logger3, logLevel3, logScope3, "Entitlement redemption done", MapsKt.mapOf(TuplesKt.to("code", code3)), null, 16, null);
                                                    codes = webRedemptionResponse.getCodes();
                                                    if ((codes instanceof Collection) || !codes.isEmpty()) {
                                                        it2 = codes.iterator();
                                                        while (true) {
                                                            if (!it2.hasNext()) {
                                                                i2 = 0;
                                                            } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                                i2 = i;
                                                            }
                                                        }
                                                    } else {
                                                        i2 = 0;
                                                    }
                                                    if (i2 != 0) {
                                                        listListOf = webRedemptionResponse.getCodes();
                                                    } else {
                                                        if (z3) {
                                                            code4 = (RedeemType.Code) redeemType4;
                                                        } else {
                                                            code4 = code;
                                                        }
                                                        if (code4 != null && (code5 = code4.getCode()) != null) {
                                                            str4 = code5;
                                                        }
                                                        listListOf = CollectionsKt.listOf(new RedemptionResult.Error(str4, new ErrorInfo("Redemption failed, code not returned")));
                                                    }
                                                    it3 = listListOf.iterator();
                                                    do {
                                                        if (it3.hasNext()) {
                                                            next = it3.next();
                                                        } else {
                                                            next = code;
                                                        }
                                                        if (((RedemptionResult) next) != null) {
                                                            Factory factory10 = webPaywallRedeemer4.factory;
                                                            c06252.L$0 = webPaywallRedeemer4;
                                                            c06252.L$1 = redeemType4;
                                                            c06252.L$2 = webRedemptionResponse;
                                                            c06252.label = 7;
                                                            objIsPaywallVisible2 = factory10.isPaywallVisible(c06252);
                                                            if (objIsPaywallVisible2 != coroutine_suspended) {
                                                                if (((Boolean) objIsPaywallVisible2).booleanValue() && !webPaywallRedeemer4.factory.isPaymentSheetOpen()) {
                                                                    customerInfo = webRedemptionResponse.getCustomerInfo();
                                                                    if (customerInfo != null && (entitlements = customerInfo.getEntitlements()) != null) {
                                                                        zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                                    }
                                                                    if (zContainsAll) {
                                                                        factory = webPaywallRedeemer4.factory;
                                                                        c06252.L$0 = webPaywallRedeemer4;
                                                                        c06252.L$1 = redeemType4;
                                                                        c06252.L$2 = webRedemptionResponse;
                                                                        c06252.label = 8;
                                                                        if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                                            redeemType5 = redeemType4;
                                                                            webPaywallRedeemer5 = webPaywallRedeemer4;
                                                                            webPaywallRedeemer4 = webPaywallRedeemer5;
                                                                            redeemType4 = redeemType5;
                                                                        }
                                                                    } else {
                                                                        webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                                        return Unit.INSTANCE;
                                                    } while (!Intrinsics.areEqual(((RedemptionResult) next).getCode(), ((RedeemType.Code) redeemType4).getCode()));
                                                    if (((RedemptionResult) next) != null) {
                                                        Factory factory11 = webPaywallRedeemer4.factory;
                                                        c06252.L$0 = webPaywallRedeemer4;
                                                        c06252.L$1 = redeemType4;
                                                        c06252.L$2 = webRedemptionResponse;
                                                        c06252.label = 7;
                                                        objIsPaywallVisible2 = factory11.isPaywallVisible(c06252);
                                                        if (objIsPaywallVisible2 != coroutine_suspended) {
                                                            if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                                customerInfo = webRedemptionResponse.getCustomerInfo();
                                                                if (customerInfo != null) {
                                                                    zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                                }
                                                                if (zContainsAll) {
                                                                    factory = webPaywallRedeemer4.factory;
                                                                    c06252.L$0 = webPaywallRedeemer4;
                                                                    c06252.L$1 = redeemType4;
                                                                    c06252.L$2 = webRedemptionResponse;
                                                                    c06252.label = 8;
                                                                    if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                                        redeemType5 = redeemType4;
                                                                        webPaywallRedeemer5 = webPaywallRedeemer4;
                                                                        webPaywallRedeemer4 = webPaywallRedeemer5;
                                                                        redeemType4 = redeemType5;
                                                                    }
                                                                } else {
                                                                    webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                                }
                                                            }
                                                        }
                                                    }
                                                    startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                                    return Unit.INSTANCE;
                                                }
                                                if (!Intrinsics.areEqual(redeemType4, RedeemType.Existing.INSTANCE) && !Intrinsics.areEqual(redeemType4, RedeemType.IntegrationAttributes.INSTANCE)) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                Factory factory12 = webPaywallRedeemer4.factory;
                                                customerInfo2 = webRedemptionResponse.getCustomerInfo();
                                                if (customerInfo2 != null || (entitlements2 = customerInfo2.getEntitlements()) == null) {
                                                    setEmptySet = SetsKt.emptySet();
                                                } else {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    for (Object obj : entitlements2) {
                                                        if (((Entitlement) obj).isActive()) {
                                                            arrayList3.add(obj);
                                                        }
                                                    }
                                                    setEmptySet = CollectionsKt.toSet(arrayList3);
                                                    if (setEmptySet == null) {
                                                        setEmptySet = SetsKt.emptySet();
                                                    }
                                                }
                                                factory12.internallySetSubscriptionStatus(new SubscriptionStatus.Active(SetsKt.plus(setEmptySet, (Iterable) webPaywallRedeemer4.factory.getActiveDeviceEntitlements())));
                                                if (redeemType4 instanceof RedeemType.Code) {
                                                    webPaywallRedeemer4.factory.closePaywallIfExists();
                                                    while (r2.hasNext()) {
                                                        if (Intrinsics.areEqual(redemptionResult.getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                            webPaywallRedeemer4.factory.didRedeemLink(redemptionResult);
                                                        }
                                                    }
                                                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                                }
                                                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                                return Unit.INSTANCE;
                                            }
                                        } else if (either instanceof Either.Failure) {
                                            networkError = (NetworkError) ((Either.Failure) either).getError();
                                            redemptions2 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Fail.INSTANCE, redeemType4);
                                            c06252.L$0 = webPaywallRedeemer4;
                                            c06252.L$1 = redeemType4;
                                            c06252.L$2 = networkError;
                                            c06252.label = 9;
                                            if (webPaywallRedeemer4.track(redemptions2, c06252) != coroutine_suspended) {
                                                if (redeemType4 instanceof RedeemType.Code) {
                                                    localizedMessage = networkError.getLocalizedMessage();
                                                    if (localizedMessage == null && (localizedMessage = networkError.getMessage()) == null) {
                                                        localizedMessage = "Redemption failed, error unknown";
                                                    }
                                                    RedeemType.Code code8 = (RedeemType.Code) redeemType4;
                                                    Logger.INSTANCE.debug(LogLevel.error, LogScope.webEntitlements, "Failed to redeem purchase token", MapsKt.mapOf(TuplesKt.to("code", code8.getCode())), networkError);
                                                    Factory factory13 = webPaywallRedeemer4.factory;
                                                    String code9 = code8.getCode();
                                                    factory13.didRedeemLink(new RedemptionResult.Error(code9 != null ? code9 : "", new ErrorInfo(localizedMessage)));
                                                    Factory factory14 = webPaywallRedeemer4.factory;
                                                    c06252.L$0 = webPaywallRedeemer4;
                                                    c06252.L$1 = localizedMessage;
                                                    c06252.L$2 = code;
                                                    c06252.label = 10;
                                                    objReceipts = factory14.isPaywallVisible(c06252);
                                                    if (objReceipts != coroutine_suspended) {
                                                        webPaywallRedeemer6 = webPaywallRedeemer4;
                                                        if (((Boolean) objReceipts).booleanValue() && !webPaywallRedeemer6.factory.isPaymentSheetOpen()) {
                                                            webPaywallRedeemer6.factory.trackRestorationFailed(localizedMessage);
                                                        }
                                                        webPaywallRedeemer4 = webPaywallRedeemer6;
                                                    }
                                                }
                                                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                                return Unit.INSTANCE;
                                            }
                                        } else {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    webPaywallRedeemer = this;
                    redemptions = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Start.INSTANCE, redeemType6);
                    c06252.L$0 = webPaywallRedeemer;
                    c06252.L$1 = redeemType6;
                    c06252.L$2 = arrayList;
                    c06252.label = 3;
                    if (webPaywallRedeemer.track(redemptions, c06252) != coroutine_suspended) {
                        redeemType2 = redeemType6;
                        list = arrayList;
                        webPaywallRedeemer2 = webPaywallRedeemer;
                        network = webPaywallRedeemer2.network;
                        strMo10616getUserIdP5Wmf0A = webPaywallRedeemer2.factory.mo10616getUserIdP5Wmf0A();
                        aliasId = webPaywallRedeemer2.factory.getAliasId();
                        deviceId = webPaywallRedeemer2.factory.getDeviceId();
                        Factory factory15 = webPaywallRedeemer2.factory;
                        c06252.L$0 = webPaywallRedeemer2;
                        c06252.L$1 = redeemType2;
                        c06252.L$2 = network;
                        c06252.L$3 = list;
                        c06252.L$4 = strMo10616getUserIdP5Wmf0A;
                        c06252.L$5 = aliasId;
                        c06252.L$6 = deviceId;
                        c06252.label = 4;
                        objReceipts = factory15.receipts(c06252);
                        if (objReceipts != coroutine_suspended) {
                            List<Redeemable> list7 = list;
                            DeviceVendorId deviceVendorId3 = deviceId;
                            str2 = strMo10616getUserIdP5Wmf0A;
                            String str7 = aliasId;
                            SuperwallAPI superwallAPI3 = network;
                            redeemType3 = redeemType2;
                            webPaywallRedeemer3 = webPaywallRedeemer2;
                            List<TransactionReceipt> list8 = (List) objReceipts;
                            String externalAccountId3 = webPaywallRedeemer3.factory.getExternalAccountId();
                            integrationProps = webPaywallRedeemer3.factory.getIntegrationProps();
                            if (integrationProps.isEmpty()) {
                                integrationProps = null;
                            }
                            if (integrationProps != null) {
                                linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(integrationProps.size()));
                                while (it.hasNext()) {
                                    Map.Entry entry5 = (Map.Entry) it.next();
                                    linkedHashMap2.put(entry5.getKey(), webPaywallRedeemer3.convertToJsonElement(entry5.getValue()));
                                }
                                linkedHashMap3 = new LinkedHashMap();
                                while (r6.hasNext()) {
                                    if (((JsonElement) entry2.getValue()) != null) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        linkedHashMap3.put(entry2.getKey(), entry2.getValue());
                                        str2 = str2;
                                    }
                                }
                                str3 = str2;
                                LinkedHashMap linkedHashMap8 = linkedHashMap3;
                                linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap8.size()));
                                while (r0.hasNext()) {
                                    Object key3 = entry3.getKey();
                                    JsonElement jsonElement3 = (JsonElement) entry3.getValue();
                                    Intrinsics.checkNotNull(jsonElement3);
                                    linkedHashMap.put(key3, jsonElement3);
                                }
                            } else {
                                str3 = str2;
                                linkedHashMap = null;
                            }
                            c06252.L$0 = webPaywallRedeemer3;
                            c06252.L$1 = redeemType3;
                            c06252.L$2 = null;
                            c06252.L$3 = null;
                            c06252.L$4 = null;
                            c06252.L$5 = null;
                            c06252.L$6 = null;
                            c06252.label = 5;
                            LinkedHashMap linkedHashMap9 = linkedHashMap;
                            code = null;
                            i = 1;
                            objMo10686redeemTokenJf2YlNw = superwallAPI3.mo10686redeemTokenJf2YlNw(list7, str3, str7, deviceVendorId3, list8, externalAccountId3, linkedHashMap9, c06252);
                            if (objMo10686redeemTokenJf2YlNw != coroutine_suspended) {
                                webPaywallRedeemer4 = webPaywallRedeemer3;
                                objReceipts = objMo10686redeemTokenJf2YlNw;
                                redeemType4 = redeemType3;
                                either = (Either) objReceipts;
                                if (either instanceof Either.Success) {
                                    webRedemptionResponse = (WebRedemptionResponse) ((Either.Success) either).getValue();
                                    webPaywallRedeemer4.storage.write(LatestRedemptionResponse.INSTANCE, webRedemptionResponse);
                                    redemptions3 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Complete.INSTANCE, redeemType4);
                                    c06252.L$0 = webPaywallRedeemer4;
                                    c06252.L$1 = redeemType4;
                                    c06252.L$2 = webRedemptionResponse;
                                    c06252.label = 6;
                                    if (webPaywallRedeemer4.track(redemptions3, c06252) != coroutine_suspended) {
                                        z3 = redeemType4 instanceof RedeemType.Code;
                                        if (z3) {
                                            Logger logger4 = Logger.INSTANCE;
                                            LogLevel logLevel4 = LogLevel.debug;
                                            LogScope logScope4 = LogScope.webEntitlements;
                                            if (z3) {
                                                code2 = (RedeemType.Code) redeemType4;
                                            } else {
                                                code2 = code;
                                            }
                                            if (code2 != null) {
                                                code3 = "";
                                            } else {
                                                code3 = "";
                                            }
                                            Logger.debug$default(logger4, logLevel4, logScope4, "Entitlement redemption done", MapsKt.mapOf(TuplesKt.to("code", code3)), null, 16, null);
                                            codes = webRedemptionResponse.getCodes();
                                            if (codes instanceof Collection) {
                                                it2 = codes.iterator();
                                                while (true) {
                                                    if (!it2.hasNext()) {
                                                        i2 = 0;
                                                    } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                        i2 = i;
                                                    }
                                                }
                                            } else {
                                                it2 = codes.iterator();
                                                while (true) {
                                                    if (!it2.hasNext()) {
                                                        i2 = 0;
                                                    } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                        i2 = i;
                                                    }
                                                }
                                            }
                                            if (i2 != 0) {
                                                listListOf = webRedemptionResponse.getCodes();
                                            } else {
                                                if (z3) {
                                                    code4 = (RedeemType.Code) redeemType4;
                                                } else {
                                                    code4 = code;
                                                }
                                                if (code4 != null) {
                                                    str4 = code5;
                                                }
                                                listListOf = CollectionsKt.listOf(new RedemptionResult.Error(str4, new ErrorInfo("Redemption failed, code not returned")));
                                            }
                                            it3 = listListOf.iterator();
                                            do {
                                                if (it3.hasNext()) {
                                                    next = it3.next();
                                                } else {
                                                    next = code;
                                                }
                                                if (((RedemptionResult) next) != null) {
                                                    Factory factory16 = webPaywallRedeemer4.factory;
                                                    c06252.L$0 = webPaywallRedeemer4;
                                                    c06252.L$1 = redeemType4;
                                                    c06252.L$2 = webRedemptionResponse;
                                                    c06252.label = 7;
                                                    objIsPaywallVisible2 = factory16.isPaywallVisible(c06252);
                                                    if (objIsPaywallVisible2 != coroutine_suspended) {
                                                        if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                            customerInfo = webRedemptionResponse.getCustomerInfo();
                                                            if (customerInfo != null) {
                                                                zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                            }
                                                            if (zContainsAll) {
                                                                factory = webPaywallRedeemer4.factory;
                                                                c06252.L$0 = webPaywallRedeemer4;
                                                                c06252.L$1 = redeemType4;
                                                                c06252.L$2 = webRedemptionResponse;
                                                                c06252.label = 8;
                                                                if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                                    redeemType5 = redeemType4;
                                                                    webPaywallRedeemer5 = webPaywallRedeemer4;
                                                                    webPaywallRedeemer4 = webPaywallRedeemer5;
                                                                    redeemType4 = redeemType5;
                                                                }
                                                            } else {
                                                                webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                            }
                                                        }
                                                    }
                                                }
                                                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                                return Unit.INSTANCE;
                                            } while (!Intrinsics.areEqual(((RedemptionResult) next).getCode(), ((RedeemType.Code) redeemType4).getCode()));
                                            if (((RedemptionResult) next) != null) {
                                                Factory factory17 = webPaywallRedeemer4.factory;
                                                c06252.L$0 = webPaywallRedeemer4;
                                                c06252.L$1 = redeemType4;
                                                c06252.L$2 = webRedemptionResponse;
                                                c06252.label = 7;
                                                objIsPaywallVisible2 = factory17.isPaywallVisible(c06252);
                                                if (objIsPaywallVisible2 != coroutine_suspended) {
                                                    if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                        customerInfo = webRedemptionResponse.getCustomerInfo();
                                                        if (customerInfo != null) {
                                                            zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                        }
                                                        if (zContainsAll) {
                                                            factory = webPaywallRedeemer4.factory;
                                                            c06252.L$0 = webPaywallRedeemer4;
                                                            c06252.L$1 = redeemType4;
                                                            c06252.L$2 = webRedemptionResponse;
                                                            c06252.label = 8;
                                                            if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                                redeemType5 = redeemType4;
                                                                webPaywallRedeemer5 = webPaywallRedeemer4;
                                                                webPaywallRedeemer4 = webPaywallRedeemer5;
                                                                redeemType4 = redeemType5;
                                                            }
                                                        } else {
                                                            webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                        }
                                                    }
                                                }
                                            }
                                            startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                            return Unit.INSTANCE;
                                        }
                                        if (!Intrinsics.areEqual(redeemType4, RedeemType.Existing.INSTANCE)) {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                        Factory factory18 = webPaywallRedeemer4.factory;
                                        customerInfo2 = webRedemptionResponse.getCustomerInfo();
                                        if (customerInfo2 != null) {
                                            setEmptySet = SetsKt.emptySet();
                                        } else {
                                            setEmptySet = SetsKt.emptySet();
                                        }
                                        factory18.internallySetSubscriptionStatus(new SubscriptionStatus.Active(SetsKt.plus(setEmptySet, (Iterable) webPaywallRedeemer4.factory.getActiveDeviceEntitlements())));
                                        if (redeemType4 instanceof RedeemType.Code) {
                                            webPaywallRedeemer4.factory.closePaywallIfExists();
                                            while (r2.hasNext()) {
                                                if (Intrinsics.areEqual(redemptionResult.getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                    webPaywallRedeemer4.factory.didRedeemLink(redemptionResult);
                                                }
                                            }
                                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                        }
                                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                        return Unit.INSTANCE;
                                    }
                                } else if (either instanceof Either.Failure) {
                                    networkError = (NetworkError) ((Either.Failure) either).getError();
                                    redemptions2 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Fail.INSTANCE, redeemType4);
                                    c06252.L$0 = webPaywallRedeemer4;
                                    c06252.L$1 = redeemType4;
                                    c06252.L$2 = networkError;
                                    c06252.label = 9;
                                    if (webPaywallRedeemer4.track(redemptions2, c06252) != coroutine_suspended) {
                                        if (redeemType4 instanceof RedeemType.Code) {
                                            localizedMessage = networkError.getLocalizedMessage();
                                            if (localizedMessage == null) {
                                                localizedMessage = "Redemption failed, error unknown";
                                            }
                                            RedeemType.Code code10 = (RedeemType.Code) redeemType4;
                                            Logger.INSTANCE.debug(LogLevel.error, LogScope.webEntitlements, "Failed to redeem purchase token", MapsKt.mapOf(TuplesKt.to("code", code10.getCode())), networkError);
                                            Factory factory19 = webPaywallRedeemer4.factory;
                                            String code11 = code10.getCode();
                                            factory19.didRedeemLink(new RedemptionResult.Error(code11 != null ? code11 : "", new ErrorInfo(localizedMessage)));
                                            Factory factory110 = webPaywallRedeemer4.factory;
                                            c06252.L$0 = webPaywallRedeemer4;
                                            c06252.L$1 = localizedMessage;
                                            c06252.L$2 = code;
                                            c06252.label = 10;
                                            objReceipts = factory110.isPaywallVisible(c06252);
                                            if (objReceipts != coroutine_suspended) {
                                                webPaywallRedeemer6 = webPaywallRedeemer4;
                                                if (((Boolean) objReceipts).booleanValue()) {
                                                    webPaywallRedeemer6.factory.trackRestorationFailed(localizedMessage);
                                                }
                                                webPaywallRedeemer4 = webPaywallRedeemer6;
                                            }
                                        }
                                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                        return Unit.INSTANCE;
                                    }
                                } else {
                                    throw new NoWhenBranchMatchedException();
                                }
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 1:
                List<Redeemable> list9 = (List) c06252.L$2;
                RedeemType redeemType7 = (RedeemType) c06252.L$1;
                webPaywallRedeemer = (WebPaywallRedeemer) c06252.L$0;
                ResultKt.throwOnFailure(objReceipts);
                arrayList = list9;
                redeemType6 = redeemType7;
                objIsPaywallVisible = objReceipts;
                if (!((Boolean) objIsPaywallVisible).booleanValue()) {
                    redemptions = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Start.INSTANCE, redeemType6);
                    c06252.L$0 = webPaywallRedeemer;
                    c06252.L$1 = redeemType6;
                    c06252.L$2 = arrayList;
                    c06252.label = 3;
                    if (webPaywallRedeemer.track(redemptions, c06252) != coroutine_suspended) {
                        redeemType2 = redeemType6;
                        list = arrayList;
                        webPaywallRedeemer2 = webPaywallRedeemer;
                        network = webPaywallRedeemer2.network;
                        strMo10616getUserIdP5Wmf0A = webPaywallRedeemer2.factory.mo10616getUserIdP5Wmf0A();
                        aliasId = webPaywallRedeemer2.factory.getAliasId();
                        deviceId = webPaywallRedeemer2.factory.getDeviceId();
                        Factory factory111 = webPaywallRedeemer2.factory;
                        c06252.L$0 = webPaywallRedeemer2;
                        c06252.L$1 = redeemType2;
                        c06252.L$2 = network;
                        c06252.L$3 = list;
                        c06252.L$4 = strMo10616getUserIdP5Wmf0A;
                        c06252.L$5 = aliasId;
                        c06252.L$6 = deviceId;
                        c06252.label = 4;
                        objReceipts = factory111.receipts(c06252);
                        if (objReceipts != coroutine_suspended) {
                            List<Redeemable> list10 = list;
                            DeviceVendorId deviceVendorId4 = deviceId;
                            str2 = strMo10616getUserIdP5Wmf0A;
                            String str8 = aliasId;
                            SuperwallAPI superwallAPI4 = network;
                            redeemType3 = redeemType2;
                            webPaywallRedeemer3 = webPaywallRedeemer2;
                            List<TransactionReceipt> list11 = (List) objReceipts;
                            String externalAccountId4 = webPaywallRedeemer3.factory.getExternalAccountId();
                            integrationProps = webPaywallRedeemer3.factory.getIntegrationProps();
                            if (integrationProps.isEmpty()) {
                                integrationProps = null;
                            }
                            if (integrationProps != null) {
                                linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(integrationProps.size()));
                                while (it.hasNext()) {
                                    Map.Entry entry6 = (Map.Entry) it.next();
                                    linkedHashMap2.put(entry6.getKey(), webPaywallRedeemer3.convertToJsonElement(entry6.getValue()));
                                }
                                linkedHashMap3 = new LinkedHashMap();
                                while (r6.hasNext()) {
                                    if (((JsonElement) entry2.getValue()) != null) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        linkedHashMap3.put(entry2.getKey(), entry2.getValue());
                                        str2 = str2;
                                    }
                                }
                                str3 = str2;
                                LinkedHashMap linkedHashMap10 = linkedHashMap3;
                                linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap10.size()));
                                while (r0.hasNext()) {
                                    Object key4 = entry3.getKey();
                                    JsonElement jsonElement4 = (JsonElement) entry3.getValue();
                                    Intrinsics.checkNotNull(jsonElement4);
                                    linkedHashMap.put(key4, jsonElement4);
                                }
                            } else {
                                str3 = str2;
                                linkedHashMap = null;
                            }
                            c06252.L$0 = webPaywallRedeemer3;
                            c06252.L$1 = redeemType3;
                            c06252.L$2 = null;
                            c06252.L$3 = null;
                            c06252.L$4 = null;
                            c06252.L$5 = null;
                            c06252.L$6 = null;
                            c06252.label = 5;
                            LinkedHashMap linkedHashMap11 = linkedHashMap;
                            code = null;
                            i = 1;
                            objMo10686redeemTokenJf2YlNw = superwallAPI4.mo10686redeemTokenJf2YlNw(list10, str3, str8, deviceVendorId4, list11, externalAccountId4, linkedHashMap11, c06252);
                            if (objMo10686redeemTokenJf2YlNw != coroutine_suspended) {
                                webPaywallRedeemer4 = webPaywallRedeemer3;
                                objReceipts = objMo10686redeemTokenJf2YlNw;
                                redeemType4 = redeemType3;
                                either = (Either) objReceipts;
                                if (either instanceof Either.Success) {
                                    webRedemptionResponse = (WebRedemptionResponse) ((Either.Success) either).getValue();
                                    webPaywallRedeemer4.storage.write(LatestRedemptionResponse.INSTANCE, webRedemptionResponse);
                                    redemptions3 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Complete.INSTANCE, redeemType4);
                                    c06252.L$0 = webPaywallRedeemer4;
                                    c06252.L$1 = redeemType4;
                                    c06252.L$2 = webRedemptionResponse;
                                    c06252.label = 6;
                                    if (webPaywallRedeemer4.track(redemptions3, c06252) != coroutine_suspended) {
                                        z3 = redeemType4 instanceof RedeemType.Code;
                                        if (z3) {
                                            Logger logger5 = Logger.INSTANCE;
                                            LogLevel logLevel5 = LogLevel.debug;
                                            LogScope logScope5 = LogScope.webEntitlements;
                                            if (z3) {
                                                code2 = (RedeemType.Code) redeemType4;
                                            } else {
                                                code2 = code;
                                            }
                                            if (code2 != null) {
                                                code3 = "";
                                            } else {
                                                code3 = "";
                                            }
                                            Logger.debug$default(logger5, logLevel5, logScope5, "Entitlement redemption done", MapsKt.mapOf(TuplesKt.to("code", code3)), null, 16, null);
                                            codes = webRedemptionResponse.getCodes();
                                            if (codes instanceof Collection) {
                                                it2 = codes.iterator();
                                                while (true) {
                                                    if (!it2.hasNext()) {
                                                        i2 = 0;
                                                    } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                        i2 = i;
                                                    }
                                                }
                                            } else {
                                                it2 = codes.iterator();
                                                while (true) {
                                                    if (!it2.hasNext()) {
                                                        i2 = 0;
                                                    } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                        i2 = i;
                                                    }
                                                }
                                            }
                                            if (i2 != 0) {
                                                listListOf = webRedemptionResponse.getCodes();
                                            } else {
                                                if (z3) {
                                                    code4 = (RedeemType.Code) redeemType4;
                                                } else {
                                                    code4 = code;
                                                }
                                                if (code4 != null) {
                                                    str4 = code5;
                                                }
                                                listListOf = CollectionsKt.listOf(new RedemptionResult.Error(str4, new ErrorInfo("Redemption failed, code not returned")));
                                            }
                                            it3 = listListOf.iterator();
                                            do {
                                                if (it3.hasNext()) {
                                                    next = it3.next();
                                                } else {
                                                    next = code;
                                                }
                                                if (((RedemptionResult) next) != null) {
                                                    Factory factory112 = webPaywallRedeemer4.factory;
                                                    c06252.L$0 = webPaywallRedeemer4;
                                                    c06252.L$1 = redeemType4;
                                                    c06252.L$2 = webRedemptionResponse;
                                                    c06252.label = 7;
                                                    objIsPaywallVisible2 = factory112.isPaywallVisible(c06252);
                                                    if (objIsPaywallVisible2 != coroutine_suspended) {
                                                        if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                            customerInfo = webRedemptionResponse.getCustomerInfo();
                                                            if (customerInfo != null) {
                                                                zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                            }
                                                            if (zContainsAll) {
                                                                factory = webPaywallRedeemer4.factory;
                                                                c06252.L$0 = webPaywallRedeemer4;
                                                                c06252.L$1 = redeemType4;
                                                                c06252.L$2 = webRedemptionResponse;
                                                                c06252.label = 8;
                                                                if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                                    redeemType5 = redeemType4;
                                                                    webPaywallRedeemer5 = webPaywallRedeemer4;
                                                                    webPaywallRedeemer4 = webPaywallRedeemer5;
                                                                    redeemType4 = redeemType5;
                                                                }
                                                            } else {
                                                                webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                            }
                                                        }
                                                    }
                                                }
                                                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                                return Unit.INSTANCE;
                                            } while (!Intrinsics.areEqual(((RedemptionResult) next).getCode(), ((RedeemType.Code) redeemType4).getCode()));
                                            if (((RedemptionResult) next) != null) {
                                                Factory factory113 = webPaywallRedeemer4.factory;
                                                c06252.L$0 = webPaywallRedeemer4;
                                                c06252.L$1 = redeemType4;
                                                c06252.L$2 = webRedemptionResponse;
                                                c06252.label = 7;
                                                objIsPaywallVisible2 = factory113.isPaywallVisible(c06252);
                                                if (objIsPaywallVisible2 != coroutine_suspended) {
                                                    if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                        customerInfo = webRedemptionResponse.getCustomerInfo();
                                                        if (customerInfo != null) {
                                                            zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                        }
                                                        if (zContainsAll) {
                                                            factory = webPaywallRedeemer4.factory;
                                                            c06252.L$0 = webPaywallRedeemer4;
                                                            c06252.L$1 = redeemType4;
                                                            c06252.L$2 = webRedemptionResponse;
                                                            c06252.label = 8;
                                                            if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                                redeemType5 = redeemType4;
                                                                webPaywallRedeemer5 = webPaywallRedeemer4;
                                                                webPaywallRedeemer4 = webPaywallRedeemer5;
                                                                redeemType4 = redeemType5;
                                                            }
                                                        } else {
                                                            webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                        }
                                                    }
                                                }
                                            }
                                            startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                            return Unit.INSTANCE;
                                        }
                                        if (!Intrinsics.areEqual(redeemType4, RedeemType.Existing.INSTANCE)) {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                        Factory factory114 = webPaywallRedeemer4.factory;
                                        customerInfo2 = webRedemptionResponse.getCustomerInfo();
                                        if (customerInfo2 != null) {
                                            setEmptySet = SetsKt.emptySet();
                                        } else {
                                            setEmptySet = SetsKt.emptySet();
                                        }
                                        factory114.internallySetSubscriptionStatus(new SubscriptionStatus.Active(SetsKt.plus(setEmptySet, (Iterable) webPaywallRedeemer4.factory.getActiveDeviceEntitlements())));
                                        if (redeemType4 instanceof RedeemType.Code) {
                                            webPaywallRedeemer4.factory.closePaywallIfExists();
                                            while (r2.hasNext()) {
                                                if (Intrinsics.areEqual(redemptionResult.getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                    webPaywallRedeemer4.factory.didRedeemLink(redemptionResult);
                                                }
                                            }
                                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                        }
                                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                        return Unit.INSTANCE;
                                    }
                                } else if (either instanceof Either.Failure) {
                                    networkError = (NetworkError) ((Either.Failure) either).getError();
                                    redemptions2 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Fail.INSTANCE, redeemType4);
                                    c06252.L$0 = webPaywallRedeemer4;
                                    c06252.L$1 = redeemType4;
                                    c06252.L$2 = networkError;
                                    c06252.label = 9;
                                    if (webPaywallRedeemer4.track(redemptions2, c06252) != coroutine_suspended) {
                                        if (redeemType4 instanceof RedeemType.Code) {
                                            localizedMessage = networkError.getLocalizedMessage();
                                            if (localizedMessage == null) {
                                                localizedMessage = "Redemption failed, error unknown";
                                            }
                                            RedeemType.Code code12 = (RedeemType.Code) redeemType4;
                                            Logger.INSTANCE.debug(LogLevel.error, LogScope.webEntitlements, "Failed to redeem purchase token", MapsKt.mapOf(TuplesKt.to("code", code12.getCode())), networkError);
                                            Factory factory115 = webPaywallRedeemer4.factory;
                                            String code13 = code12.getCode();
                                            factory115.didRedeemLink(new RedemptionResult.Error(code13 != null ? code13 : "", new ErrorInfo(localizedMessage)));
                                            Factory factory116 = webPaywallRedeemer4.factory;
                                            c06252.L$0 = webPaywallRedeemer4;
                                            c06252.L$1 = localizedMessage;
                                            c06252.L$2 = code;
                                            c06252.label = 10;
                                            objReceipts = factory116.isPaywallVisible(c06252);
                                            if (objReceipts != coroutine_suspended) {
                                                webPaywallRedeemer6 = webPaywallRedeemer4;
                                                if (((Boolean) objReceipts).booleanValue()) {
                                                    webPaywallRedeemer6.factory.trackRestorationFailed(localizedMessage);
                                                }
                                                webPaywallRedeemer4 = webPaywallRedeemer6;
                                            }
                                        }
                                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                        return Unit.INSTANCE;
                                    }
                                } else {
                                    throw new NoWhenBranchMatchedException();
                                }
                            }
                        }
                    }
                } else {
                    redemptions = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Start.INSTANCE, redeemType6);
                    c06252.L$0 = webPaywallRedeemer;
                    c06252.L$1 = redeemType6;
                    c06252.L$2 = arrayList;
                    c06252.label = 3;
                    if (webPaywallRedeemer.track(redemptions, c06252) != coroutine_suspended) {
                        redeemType2 = redeemType6;
                        list = arrayList;
                        webPaywallRedeemer2 = webPaywallRedeemer;
                        network = webPaywallRedeemer2.network;
                        strMo10616getUserIdP5Wmf0A = webPaywallRedeemer2.factory.mo10616getUserIdP5Wmf0A();
                        aliasId = webPaywallRedeemer2.factory.getAliasId();
                        deviceId = webPaywallRedeemer2.factory.getDeviceId();
                        Factory factory117 = webPaywallRedeemer2.factory;
                        c06252.L$0 = webPaywallRedeemer2;
                        c06252.L$1 = redeemType2;
                        c06252.L$2 = network;
                        c06252.L$3 = list;
                        c06252.L$4 = strMo10616getUserIdP5Wmf0A;
                        c06252.L$5 = aliasId;
                        c06252.L$6 = deviceId;
                        c06252.label = 4;
                        objReceipts = factory117.receipts(c06252);
                        if (objReceipts != coroutine_suspended) {
                            List<Redeemable> list12 = list;
                            DeviceVendorId deviceVendorId5 = deviceId;
                            str2 = strMo10616getUserIdP5Wmf0A;
                            String str9 = aliasId;
                            SuperwallAPI superwallAPI5 = network;
                            redeemType3 = redeemType2;
                            webPaywallRedeemer3 = webPaywallRedeemer2;
                            List<TransactionReceipt> list13 = (List) objReceipts;
                            String externalAccountId5 = webPaywallRedeemer3.factory.getExternalAccountId();
                            integrationProps = webPaywallRedeemer3.factory.getIntegrationProps();
                            if (integrationProps.isEmpty()) {
                                integrationProps = null;
                            }
                            if (integrationProps != null) {
                                linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(integrationProps.size()));
                                while (it.hasNext()) {
                                    Map.Entry entry7 = (Map.Entry) it.next();
                                    linkedHashMap2.put(entry7.getKey(), webPaywallRedeemer3.convertToJsonElement(entry7.getValue()));
                                }
                                linkedHashMap3 = new LinkedHashMap();
                                while (r6.hasNext()) {
                                    if (((JsonElement) entry2.getValue()) != null) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        linkedHashMap3.put(entry2.getKey(), entry2.getValue());
                                        str2 = str2;
                                    }
                                }
                                str3 = str2;
                                LinkedHashMap linkedHashMap12 = linkedHashMap3;
                                linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap12.size()));
                                while (r0.hasNext()) {
                                    Object key5 = entry3.getKey();
                                    JsonElement jsonElement5 = (JsonElement) entry3.getValue();
                                    Intrinsics.checkNotNull(jsonElement5);
                                    linkedHashMap.put(key5, jsonElement5);
                                }
                            } else {
                                str3 = str2;
                                linkedHashMap = null;
                            }
                            c06252.L$0 = webPaywallRedeemer3;
                            c06252.L$1 = redeemType3;
                            c06252.L$2 = null;
                            c06252.L$3 = null;
                            c06252.L$4 = null;
                            c06252.L$5 = null;
                            c06252.L$6 = null;
                            c06252.label = 5;
                            LinkedHashMap linkedHashMap13 = linkedHashMap;
                            code = null;
                            i = 1;
                            objMo10686redeemTokenJf2YlNw = superwallAPI5.mo10686redeemTokenJf2YlNw(list12, str3, str9, deviceVendorId5, list13, externalAccountId5, linkedHashMap13, c06252);
                            if (objMo10686redeemTokenJf2YlNw != coroutine_suspended) {
                                webPaywallRedeemer4 = webPaywallRedeemer3;
                                objReceipts = objMo10686redeemTokenJf2YlNw;
                                redeemType4 = redeemType3;
                                either = (Either) objReceipts;
                                if (either instanceof Either.Success) {
                                    webRedemptionResponse = (WebRedemptionResponse) ((Either.Success) either).getValue();
                                    webPaywallRedeemer4.storage.write(LatestRedemptionResponse.INSTANCE, webRedemptionResponse);
                                    redemptions3 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Complete.INSTANCE, redeemType4);
                                    c06252.L$0 = webPaywallRedeemer4;
                                    c06252.L$1 = redeemType4;
                                    c06252.L$2 = webRedemptionResponse;
                                    c06252.label = 6;
                                    if (webPaywallRedeemer4.track(redemptions3, c06252) != coroutine_suspended) {
                                        z3 = redeemType4 instanceof RedeemType.Code;
                                        if (z3) {
                                            Logger logger6 = Logger.INSTANCE;
                                            LogLevel logLevel6 = LogLevel.debug;
                                            LogScope logScope6 = LogScope.webEntitlements;
                                            if (z3) {
                                                code2 = (RedeemType.Code) redeemType4;
                                            } else {
                                                code2 = code;
                                            }
                                            if (code2 != null) {
                                                code3 = "";
                                            } else {
                                                code3 = "";
                                            }
                                            Logger.debug$default(logger6, logLevel6, logScope6, "Entitlement redemption done", MapsKt.mapOf(TuplesKt.to("code", code3)), null, 16, null);
                                            codes = webRedemptionResponse.getCodes();
                                            if (codes instanceof Collection) {
                                                it2 = codes.iterator();
                                                while (true) {
                                                    if (!it2.hasNext()) {
                                                        i2 = 0;
                                                    } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                        i2 = i;
                                                    }
                                                }
                                            } else {
                                                it2 = codes.iterator();
                                                while (true) {
                                                    if (!it2.hasNext()) {
                                                        i2 = 0;
                                                    } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                        i2 = i;
                                                    }
                                                }
                                            }
                                            if (i2 != 0) {
                                                listListOf = webRedemptionResponse.getCodes();
                                            } else {
                                                if (z3) {
                                                    code4 = (RedeemType.Code) redeemType4;
                                                } else {
                                                    code4 = code;
                                                }
                                                if (code4 != null) {
                                                    str4 = code5;
                                                }
                                                listListOf = CollectionsKt.listOf(new RedemptionResult.Error(str4, new ErrorInfo("Redemption failed, code not returned")));
                                            }
                                            it3 = listListOf.iterator();
                                            do {
                                                if (it3.hasNext()) {
                                                    next = it3.next();
                                                } else {
                                                    next = code;
                                                }
                                                if (((RedemptionResult) next) != null) {
                                                    Factory factory118 = webPaywallRedeemer4.factory;
                                                    c06252.L$0 = webPaywallRedeemer4;
                                                    c06252.L$1 = redeemType4;
                                                    c06252.L$2 = webRedemptionResponse;
                                                    c06252.label = 7;
                                                    objIsPaywallVisible2 = factory118.isPaywallVisible(c06252);
                                                    if (objIsPaywallVisible2 != coroutine_suspended) {
                                                        if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                            customerInfo = webRedemptionResponse.getCustomerInfo();
                                                            if (customerInfo != null) {
                                                                zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                            }
                                                            if (zContainsAll) {
                                                                factory = webPaywallRedeemer4.factory;
                                                                c06252.L$0 = webPaywallRedeemer4;
                                                                c06252.L$1 = redeemType4;
                                                                c06252.L$2 = webRedemptionResponse;
                                                                c06252.label = 8;
                                                                if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                                    redeemType5 = redeemType4;
                                                                    webPaywallRedeemer5 = webPaywallRedeemer4;
                                                                    webPaywallRedeemer4 = webPaywallRedeemer5;
                                                                    redeemType4 = redeemType5;
                                                                }
                                                            } else {
                                                                webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                            }
                                                        }
                                                    }
                                                }
                                                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                                return Unit.INSTANCE;
                                            } while (!Intrinsics.areEqual(((RedemptionResult) next).getCode(), ((RedeemType.Code) redeemType4).getCode()));
                                            if (((RedemptionResult) next) != null) {
                                                Factory factory119 = webPaywallRedeemer4.factory;
                                                c06252.L$0 = webPaywallRedeemer4;
                                                c06252.L$1 = redeemType4;
                                                c06252.L$2 = webRedemptionResponse;
                                                c06252.label = 7;
                                                objIsPaywallVisible2 = factory119.isPaywallVisible(c06252);
                                                if (objIsPaywallVisible2 != coroutine_suspended) {
                                                    if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                        customerInfo = webRedemptionResponse.getCustomerInfo();
                                                        if (customerInfo != null) {
                                                            zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                        }
                                                        if (zContainsAll) {
                                                            factory = webPaywallRedeemer4.factory;
                                                            c06252.L$0 = webPaywallRedeemer4;
                                                            c06252.L$1 = redeemType4;
                                                            c06252.L$2 = webRedemptionResponse;
                                                            c06252.label = 8;
                                                            if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                                redeemType5 = redeemType4;
                                                                webPaywallRedeemer5 = webPaywallRedeemer4;
                                                                webPaywallRedeemer4 = webPaywallRedeemer5;
                                                                redeemType4 = redeemType5;
                                                            }
                                                        } else {
                                                            webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                        }
                                                    }
                                                }
                                            }
                                            startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                            return Unit.INSTANCE;
                                        }
                                        if (!Intrinsics.areEqual(redeemType4, RedeemType.Existing.INSTANCE)) {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                        Factory factory1110 = webPaywallRedeemer4.factory;
                                        customerInfo2 = webRedemptionResponse.getCustomerInfo();
                                        if (customerInfo2 != null) {
                                            setEmptySet = SetsKt.emptySet();
                                        } else {
                                            setEmptySet = SetsKt.emptySet();
                                        }
                                        factory1110.internallySetSubscriptionStatus(new SubscriptionStatus.Active(SetsKt.plus(setEmptySet, (Iterable) webPaywallRedeemer4.factory.getActiveDeviceEntitlements())));
                                        if (redeemType4 instanceof RedeemType.Code) {
                                            webPaywallRedeemer4.factory.closePaywallIfExists();
                                            while (r2.hasNext()) {
                                                if (Intrinsics.areEqual(redemptionResult.getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                    webPaywallRedeemer4.factory.didRedeemLink(redemptionResult);
                                                }
                                            }
                                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                        }
                                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                        return Unit.INSTANCE;
                                    }
                                } else if (either instanceof Either.Failure) {
                                    networkError = (NetworkError) ((Either.Failure) either).getError();
                                    redemptions2 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Fail.INSTANCE, redeemType4);
                                    c06252.L$0 = webPaywallRedeemer4;
                                    c06252.L$1 = redeemType4;
                                    c06252.L$2 = networkError;
                                    c06252.label = 9;
                                    if (webPaywallRedeemer4.track(redemptions2, c06252) != coroutine_suspended) {
                                        if (redeemType4 instanceof RedeemType.Code) {
                                            localizedMessage = networkError.getLocalizedMessage();
                                            if (localizedMessage == null) {
                                                localizedMessage = "Redemption failed, error unknown";
                                            }
                                            RedeemType.Code code14 = (RedeemType.Code) redeemType4;
                                            Logger.INSTANCE.debug(LogLevel.error, LogScope.webEntitlements, "Failed to redeem purchase token", MapsKt.mapOf(TuplesKt.to("code", code14.getCode())), networkError);
                                            Factory factory1111 = webPaywallRedeemer4.factory;
                                            String code15 = code14.getCode();
                                            factory1111.didRedeemLink(new RedemptionResult.Error(code15 != null ? code15 : "", new ErrorInfo(localizedMessage)));
                                            Factory factory1112 = webPaywallRedeemer4.factory;
                                            c06252.L$0 = webPaywallRedeemer4;
                                            c06252.L$1 = localizedMessage;
                                            c06252.L$2 = code;
                                            c06252.label = 10;
                                            objReceipts = factory1112.isPaywallVisible(c06252);
                                            if (objReceipts != coroutine_suspended) {
                                                webPaywallRedeemer6 = webPaywallRedeemer4;
                                                if (((Boolean) objReceipts).booleanValue()) {
                                                    webPaywallRedeemer6.factory.trackRestorationFailed(localizedMessage);
                                                }
                                                webPaywallRedeemer4 = webPaywallRedeemer6;
                                            }
                                        }
                                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                        return Unit.INSTANCE;
                                    }
                                } else {
                                    throw new NoWhenBranchMatchedException();
                                }
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 2:
                List<Redeemable> list14 = (List) c06252.L$2;
                RedeemType redeemType8 = (RedeemType) c06252.L$1;
                webPaywallRedeemer = (WebPaywallRedeemer) c06252.L$0;
                ResultKt.throwOnFailure(objReceipts);
                arrayList = list14;
                redeemType6 = redeemType8;
                redemptions = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Start.INSTANCE, redeemType6);
                c06252.L$0 = webPaywallRedeemer;
                c06252.L$1 = redeemType6;
                c06252.L$2 = arrayList;
                c06252.label = 3;
                if (webPaywallRedeemer.track(redemptions, c06252) != coroutine_suspended) {
                    redeemType2 = redeemType6;
                    list = arrayList;
                    webPaywallRedeemer2 = webPaywallRedeemer;
                    network = webPaywallRedeemer2.network;
                    strMo10616getUserIdP5Wmf0A = webPaywallRedeemer2.factory.mo10616getUserIdP5Wmf0A();
                    aliasId = webPaywallRedeemer2.factory.getAliasId();
                    deviceId = webPaywallRedeemer2.factory.getDeviceId();
                    Factory factory1113 = webPaywallRedeemer2.factory;
                    c06252.L$0 = webPaywallRedeemer2;
                    c06252.L$1 = redeemType2;
                    c06252.L$2 = network;
                    c06252.L$3 = list;
                    c06252.L$4 = strMo10616getUserIdP5Wmf0A;
                    c06252.L$5 = aliasId;
                    c06252.L$6 = deviceId;
                    c06252.label = 4;
                    objReceipts = factory1113.receipts(c06252);
                    if (objReceipts != coroutine_suspended) {
                        List<Redeemable> list15 = list;
                        DeviceVendorId deviceVendorId6 = deviceId;
                        str2 = strMo10616getUserIdP5Wmf0A;
                        String str10 = aliasId;
                        SuperwallAPI superwallAPI6 = network;
                        redeemType3 = redeemType2;
                        webPaywallRedeemer3 = webPaywallRedeemer2;
                        List<TransactionReceipt> list16 = (List) objReceipts;
                        String externalAccountId6 = webPaywallRedeemer3.factory.getExternalAccountId();
                        integrationProps = webPaywallRedeemer3.factory.getIntegrationProps();
                        if (integrationProps.isEmpty()) {
                            integrationProps = null;
                        }
                        if (integrationProps != null) {
                            linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(integrationProps.size()));
                            while (it.hasNext()) {
                                Map.Entry entry8 = (Map.Entry) it.next();
                                linkedHashMap2.put(entry8.getKey(), webPaywallRedeemer3.convertToJsonElement(entry8.getValue()));
                            }
                            linkedHashMap3 = new LinkedHashMap();
                            while (r6.hasNext()) {
                                if (((JsonElement) entry2.getValue()) != null) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2) {
                                    linkedHashMap3.put(entry2.getKey(), entry2.getValue());
                                    str2 = str2;
                                }
                            }
                            str3 = str2;
                            LinkedHashMap linkedHashMap14 = linkedHashMap3;
                            linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap14.size()));
                            while (r0.hasNext()) {
                                Object key6 = entry3.getKey();
                                JsonElement jsonElement6 = (JsonElement) entry3.getValue();
                                Intrinsics.checkNotNull(jsonElement6);
                                linkedHashMap.put(key6, jsonElement6);
                            }
                        } else {
                            str3 = str2;
                            linkedHashMap = null;
                        }
                        c06252.L$0 = webPaywallRedeemer3;
                        c06252.L$1 = redeemType3;
                        c06252.L$2 = null;
                        c06252.L$3 = null;
                        c06252.L$4 = null;
                        c06252.L$5 = null;
                        c06252.L$6 = null;
                        c06252.label = 5;
                        LinkedHashMap linkedHashMap15 = linkedHashMap;
                        code = null;
                        i = 1;
                        objMo10686redeemTokenJf2YlNw = superwallAPI6.mo10686redeemTokenJf2YlNw(list15, str3, str10, deviceVendorId6, list16, externalAccountId6, linkedHashMap15, c06252);
                        if (objMo10686redeemTokenJf2YlNw != coroutine_suspended) {
                            webPaywallRedeemer4 = webPaywallRedeemer3;
                            objReceipts = objMo10686redeemTokenJf2YlNw;
                            redeemType4 = redeemType3;
                            either = (Either) objReceipts;
                            if (either instanceof Either.Success) {
                                webRedemptionResponse = (WebRedemptionResponse) ((Either.Success) either).getValue();
                                webPaywallRedeemer4.storage.write(LatestRedemptionResponse.INSTANCE, webRedemptionResponse);
                                redemptions3 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Complete.INSTANCE, redeemType4);
                                c06252.L$0 = webPaywallRedeemer4;
                                c06252.L$1 = redeemType4;
                                c06252.L$2 = webRedemptionResponse;
                                c06252.label = 6;
                                if (webPaywallRedeemer4.track(redemptions3, c06252) != coroutine_suspended) {
                                    z3 = redeemType4 instanceof RedeemType.Code;
                                    if (z3) {
                                        Logger logger7 = Logger.INSTANCE;
                                        LogLevel logLevel7 = LogLevel.debug;
                                        LogScope logScope7 = LogScope.webEntitlements;
                                        if (z3) {
                                            code2 = (RedeemType.Code) redeemType4;
                                        } else {
                                            code2 = code;
                                        }
                                        if (code2 != null) {
                                            code3 = "";
                                        } else {
                                            code3 = "";
                                        }
                                        Logger.debug$default(logger7, logLevel7, logScope7, "Entitlement redemption done", MapsKt.mapOf(TuplesKt.to("code", code3)), null, 16, null);
                                        codes = webRedemptionResponse.getCodes();
                                        if (codes instanceof Collection) {
                                            it2 = codes.iterator();
                                            while (true) {
                                                if (!it2.hasNext()) {
                                                    i2 = 0;
                                                } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                    i2 = i;
                                                }
                                            }
                                        } else {
                                            it2 = codes.iterator();
                                            while (true) {
                                                if (!it2.hasNext()) {
                                                    i2 = 0;
                                                } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                    i2 = i;
                                                }
                                            }
                                        }
                                        if (i2 != 0) {
                                            listListOf = webRedemptionResponse.getCodes();
                                        } else {
                                            if (z3) {
                                                code4 = (RedeemType.Code) redeemType4;
                                            } else {
                                                code4 = code;
                                            }
                                            if (code4 != null) {
                                                str4 = code5;
                                            }
                                            listListOf = CollectionsKt.listOf(new RedemptionResult.Error(str4, new ErrorInfo("Redemption failed, code not returned")));
                                        }
                                        it3 = listListOf.iterator();
                                        do {
                                            if (it3.hasNext()) {
                                                next = it3.next();
                                            } else {
                                                next = code;
                                            }
                                            if (((RedemptionResult) next) != null) {
                                                Factory factory1114 = webPaywallRedeemer4.factory;
                                                c06252.L$0 = webPaywallRedeemer4;
                                                c06252.L$1 = redeemType4;
                                                c06252.L$2 = webRedemptionResponse;
                                                c06252.label = 7;
                                                objIsPaywallVisible2 = factory1114.isPaywallVisible(c06252);
                                                if (objIsPaywallVisible2 != coroutine_suspended) {
                                                    if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                        customerInfo = webRedemptionResponse.getCustomerInfo();
                                                        if (customerInfo != null) {
                                                            zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                        }
                                                        if (zContainsAll) {
                                                            factory = webPaywallRedeemer4.factory;
                                                            c06252.L$0 = webPaywallRedeemer4;
                                                            c06252.L$1 = redeemType4;
                                                            c06252.L$2 = webRedemptionResponse;
                                                            c06252.label = 8;
                                                            if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                                redeemType5 = redeemType4;
                                                                webPaywallRedeemer5 = webPaywallRedeemer4;
                                                                webPaywallRedeemer4 = webPaywallRedeemer5;
                                                                redeemType4 = redeemType5;
                                                            }
                                                        } else {
                                                            webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                        }
                                                    }
                                                }
                                            }
                                            startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                            return Unit.INSTANCE;
                                        } while (!Intrinsics.areEqual(((RedemptionResult) next).getCode(), ((RedeemType.Code) redeemType4).getCode()));
                                        if (((RedemptionResult) next) != null) {
                                            Factory factory1115 = webPaywallRedeemer4.factory;
                                            c06252.L$0 = webPaywallRedeemer4;
                                            c06252.L$1 = redeemType4;
                                            c06252.L$2 = webRedemptionResponse;
                                            c06252.label = 7;
                                            objIsPaywallVisible2 = factory1115.isPaywallVisible(c06252);
                                            if (objIsPaywallVisible2 != coroutine_suspended) {
                                                if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                    customerInfo = webRedemptionResponse.getCustomerInfo();
                                                    if (customerInfo != null) {
                                                        zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                    }
                                                    if (zContainsAll) {
                                                        factory = webPaywallRedeemer4.factory;
                                                        c06252.L$0 = webPaywallRedeemer4;
                                                        c06252.L$1 = redeemType4;
                                                        c06252.L$2 = webRedemptionResponse;
                                                        c06252.label = 8;
                                                        if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                            redeemType5 = redeemType4;
                                                            webPaywallRedeemer5 = webPaywallRedeemer4;
                                                            webPaywallRedeemer4 = webPaywallRedeemer5;
                                                            redeemType4 = redeemType5;
                                                        }
                                                    } else {
                                                        webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                    }
                                                }
                                            }
                                        }
                                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                        return Unit.INSTANCE;
                                    }
                                    if (!Intrinsics.areEqual(redeemType4, RedeemType.Existing.INSTANCE)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    Factory factory1116 = webPaywallRedeemer4.factory;
                                    customerInfo2 = webRedemptionResponse.getCustomerInfo();
                                    if (customerInfo2 != null) {
                                        setEmptySet = SetsKt.emptySet();
                                    } else {
                                        setEmptySet = SetsKt.emptySet();
                                    }
                                    factory1116.internallySetSubscriptionStatus(new SubscriptionStatus.Active(SetsKt.plus(setEmptySet, (Iterable) webPaywallRedeemer4.factory.getActiveDeviceEntitlements())));
                                    if (redeemType4 instanceof RedeemType.Code) {
                                        webPaywallRedeemer4.factory.closePaywallIfExists();
                                        while (r2.hasNext()) {
                                            if (Intrinsics.areEqual(redemptionResult.getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                webPaywallRedeemer4.factory.didRedeemLink(redemptionResult);
                                            }
                                        }
                                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                    }
                                    startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                    return Unit.INSTANCE;
                                }
                            } else if (either instanceof Either.Failure) {
                                networkError = (NetworkError) ((Either.Failure) either).getError();
                                redemptions2 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Fail.INSTANCE, redeemType4);
                                c06252.L$0 = webPaywallRedeemer4;
                                c06252.L$1 = redeemType4;
                                c06252.L$2 = networkError;
                                c06252.label = 9;
                                if (webPaywallRedeemer4.track(redemptions2, c06252) != coroutine_suspended) {
                                    if (redeemType4 instanceof RedeemType.Code) {
                                        localizedMessage = networkError.getLocalizedMessage();
                                        if (localizedMessage == null) {
                                            localizedMessage = "Redemption failed, error unknown";
                                        }
                                        RedeemType.Code code16 = (RedeemType.Code) redeemType4;
                                        Logger.INSTANCE.debug(LogLevel.error, LogScope.webEntitlements, "Failed to redeem purchase token", MapsKt.mapOf(TuplesKt.to("code", code16.getCode())), networkError);
                                        Factory factory1117 = webPaywallRedeemer4.factory;
                                        String code17 = code16.getCode();
                                        factory1117.didRedeemLink(new RedemptionResult.Error(code17 != null ? code17 : "", new ErrorInfo(localizedMessage)));
                                        Factory factory1118 = webPaywallRedeemer4.factory;
                                        c06252.L$0 = webPaywallRedeemer4;
                                        c06252.L$1 = localizedMessage;
                                        c06252.L$2 = code;
                                        c06252.label = 10;
                                        objReceipts = factory1118.isPaywallVisible(c06252);
                                        if (objReceipts != coroutine_suspended) {
                                            webPaywallRedeemer6 = webPaywallRedeemer4;
                                            if (((Boolean) objReceipts).booleanValue()) {
                                                webPaywallRedeemer6.factory.trackRestorationFailed(localizedMessage);
                                            }
                                            webPaywallRedeemer4 = webPaywallRedeemer6;
                                        }
                                    }
                                    startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                    return Unit.INSTANCE;
                                }
                            } else {
                                throw new NoWhenBranchMatchedException();
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 3:
                List<Redeemable> list17 = (List) c06252.L$2;
                RedeemType redeemType9 = (RedeemType) c06252.L$1;
                webPaywallRedeemer = (WebPaywallRedeemer) c06252.L$0;
                ResultKt.throwOnFailure(objReceipts);
                list = list17;
                redeemType2 = redeemType9;
                webPaywallRedeemer2 = webPaywallRedeemer;
                network = webPaywallRedeemer2.network;
                strMo10616getUserIdP5Wmf0A = webPaywallRedeemer2.factory.mo10616getUserIdP5Wmf0A();
                aliasId = webPaywallRedeemer2.factory.getAliasId();
                deviceId = webPaywallRedeemer2.factory.getDeviceId();
                Factory factory1119 = webPaywallRedeemer2.factory;
                c06252.L$0 = webPaywallRedeemer2;
                c06252.L$1 = redeemType2;
                c06252.L$2 = network;
                c06252.L$3 = list;
                c06252.L$4 = strMo10616getUserIdP5Wmf0A;
                c06252.L$5 = aliasId;
                c06252.L$6 = deviceId;
                c06252.label = 4;
                objReceipts = factory1119.receipts(c06252);
                if (objReceipts != coroutine_suspended) {
                    List<Redeemable> list18 = list;
                    DeviceVendorId deviceVendorId7 = deviceId;
                    str2 = strMo10616getUserIdP5Wmf0A;
                    String str11 = aliasId;
                    SuperwallAPI superwallAPI7 = network;
                    redeemType3 = redeemType2;
                    webPaywallRedeemer3 = webPaywallRedeemer2;
                    List<TransactionReceipt> list19 = (List) objReceipts;
                    String externalAccountId7 = webPaywallRedeemer3.factory.getExternalAccountId();
                    integrationProps = webPaywallRedeemer3.factory.getIntegrationProps();
                    if (integrationProps.isEmpty()) {
                        integrationProps = null;
                    }
                    if (integrationProps != null) {
                        linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(integrationProps.size()));
                        while (it.hasNext()) {
                            Map.Entry entry9 = (Map.Entry) it.next();
                            linkedHashMap2.put(entry9.getKey(), webPaywallRedeemer3.convertToJsonElement(entry9.getValue()));
                        }
                        linkedHashMap3 = new LinkedHashMap();
                        while (r6.hasNext()) {
                            if (((JsonElement) entry2.getValue()) != null) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                linkedHashMap3.put(entry2.getKey(), entry2.getValue());
                                str2 = str2;
                            }
                        }
                        str3 = str2;
                        LinkedHashMap linkedHashMap16 = linkedHashMap3;
                        linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap16.size()));
                        while (r0.hasNext()) {
                            Object key7 = entry3.getKey();
                            JsonElement jsonElement7 = (JsonElement) entry3.getValue();
                            Intrinsics.checkNotNull(jsonElement7);
                            linkedHashMap.put(key7, jsonElement7);
                        }
                    } else {
                        str3 = str2;
                        linkedHashMap = null;
                    }
                    c06252.L$0 = webPaywallRedeemer3;
                    c06252.L$1 = redeemType3;
                    c06252.L$2 = null;
                    c06252.L$3 = null;
                    c06252.L$4 = null;
                    c06252.L$5 = null;
                    c06252.L$6 = null;
                    c06252.label = 5;
                    LinkedHashMap linkedHashMap17 = linkedHashMap;
                    code = null;
                    i = 1;
                    objMo10686redeemTokenJf2YlNw = superwallAPI7.mo10686redeemTokenJf2YlNw(list18, str3, str11, deviceVendorId7, list19, externalAccountId7, linkedHashMap17, c06252);
                    if (objMo10686redeemTokenJf2YlNw != coroutine_suspended) {
                        webPaywallRedeemer4 = webPaywallRedeemer3;
                        objReceipts = objMo10686redeemTokenJf2YlNw;
                        redeemType4 = redeemType3;
                        either = (Either) objReceipts;
                        if (either instanceof Either.Success) {
                            webRedemptionResponse = (WebRedemptionResponse) ((Either.Success) either).getValue();
                            webPaywallRedeemer4.storage.write(LatestRedemptionResponse.INSTANCE, webRedemptionResponse);
                            redemptions3 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Complete.INSTANCE, redeemType4);
                            c06252.L$0 = webPaywallRedeemer4;
                            c06252.L$1 = redeemType4;
                            c06252.L$2 = webRedemptionResponse;
                            c06252.label = 6;
                            if (webPaywallRedeemer4.track(redemptions3, c06252) != coroutine_suspended) {
                                z3 = redeemType4 instanceof RedeemType.Code;
                                if (z3) {
                                    Logger logger8 = Logger.INSTANCE;
                                    LogLevel logLevel8 = LogLevel.debug;
                                    LogScope logScope8 = LogScope.webEntitlements;
                                    if (z3) {
                                        code2 = (RedeemType.Code) redeemType4;
                                    } else {
                                        code2 = code;
                                    }
                                    if (code2 != null) {
                                        code3 = "";
                                    } else {
                                        code3 = "";
                                    }
                                    Logger.debug$default(logger8, logLevel8, logScope8, "Entitlement redemption done", MapsKt.mapOf(TuplesKt.to("code", code3)), null, 16, null);
                                    codes = webRedemptionResponse.getCodes();
                                    if (codes instanceof Collection) {
                                        it2 = codes.iterator();
                                        while (true) {
                                            if (!it2.hasNext()) {
                                                i2 = 0;
                                            } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                i2 = i;
                                            }
                                        }
                                    } else {
                                        it2 = codes.iterator();
                                        while (true) {
                                            if (!it2.hasNext()) {
                                                i2 = 0;
                                            } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                                i2 = i;
                                            }
                                        }
                                    }
                                    if (i2 != 0) {
                                        listListOf = webRedemptionResponse.getCodes();
                                    } else {
                                        if (z3) {
                                            code4 = (RedeemType.Code) redeemType4;
                                        } else {
                                            code4 = code;
                                        }
                                        if (code4 != null) {
                                            str4 = code5;
                                        }
                                        listListOf = CollectionsKt.listOf(new RedemptionResult.Error(str4, new ErrorInfo("Redemption failed, code not returned")));
                                    }
                                    it3 = listListOf.iterator();
                                    do {
                                        if (it3.hasNext()) {
                                            next = it3.next();
                                        } else {
                                            next = code;
                                        }
                                        if (((RedemptionResult) next) != null) {
                                            Factory factory11110 = webPaywallRedeemer4.factory;
                                            c06252.L$0 = webPaywallRedeemer4;
                                            c06252.L$1 = redeemType4;
                                            c06252.L$2 = webRedemptionResponse;
                                            c06252.label = 7;
                                            objIsPaywallVisible2 = factory11110.isPaywallVisible(c06252);
                                            if (objIsPaywallVisible2 != coroutine_suspended) {
                                                if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                    customerInfo = webRedemptionResponse.getCustomerInfo();
                                                    if (customerInfo != null) {
                                                        zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                    }
                                                    if (zContainsAll) {
                                                        factory = webPaywallRedeemer4.factory;
                                                        c06252.L$0 = webPaywallRedeemer4;
                                                        c06252.L$1 = redeemType4;
                                                        c06252.L$2 = webRedemptionResponse;
                                                        c06252.label = 8;
                                                        if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                            redeemType5 = redeemType4;
                                                            webPaywallRedeemer5 = webPaywallRedeemer4;
                                                            webPaywallRedeemer4 = webPaywallRedeemer5;
                                                            redeemType4 = redeemType5;
                                                        }
                                                    } else {
                                                        webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                    }
                                                }
                                            }
                                        }
                                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                        return Unit.INSTANCE;
                                    } while (!Intrinsics.areEqual(((RedemptionResult) next).getCode(), ((RedeemType.Code) redeemType4).getCode()));
                                    if (((RedemptionResult) next) != null) {
                                        Factory factory11111 = webPaywallRedeemer4.factory;
                                        c06252.L$0 = webPaywallRedeemer4;
                                        c06252.L$1 = redeemType4;
                                        c06252.L$2 = webRedemptionResponse;
                                        c06252.label = 7;
                                        objIsPaywallVisible2 = factory11111.isPaywallVisible(c06252);
                                        if (objIsPaywallVisible2 != coroutine_suspended) {
                                            if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                customerInfo = webRedemptionResponse.getCustomerInfo();
                                                if (customerInfo != null) {
                                                    zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                }
                                                if (zContainsAll) {
                                                    factory = webPaywallRedeemer4.factory;
                                                    c06252.L$0 = webPaywallRedeemer4;
                                                    c06252.L$1 = redeemType4;
                                                    c06252.L$2 = webRedemptionResponse;
                                                    c06252.label = 8;
                                                    if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                        redeemType5 = redeemType4;
                                                        webPaywallRedeemer5 = webPaywallRedeemer4;
                                                        webPaywallRedeemer4 = webPaywallRedeemer5;
                                                        redeemType4 = redeemType5;
                                                    }
                                                } else {
                                                    webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                }
                                            }
                                        }
                                    }
                                    startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                    return Unit.INSTANCE;
                                }
                                if (!Intrinsics.areEqual(redeemType4, RedeemType.Existing.INSTANCE)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                Factory factory11112 = webPaywallRedeemer4.factory;
                                customerInfo2 = webRedemptionResponse.getCustomerInfo();
                                if (customerInfo2 != null) {
                                    setEmptySet = SetsKt.emptySet();
                                } else {
                                    setEmptySet = SetsKt.emptySet();
                                }
                                factory11112.internallySetSubscriptionStatus(new SubscriptionStatus.Active(SetsKt.plus(setEmptySet, (Iterable) webPaywallRedeemer4.factory.getActiveDeviceEntitlements())));
                                if (redeemType4 instanceof RedeemType.Code) {
                                    webPaywallRedeemer4.factory.closePaywallIfExists();
                                    while (r2.hasNext()) {
                                        if (Intrinsics.areEqual(redemptionResult.getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                            webPaywallRedeemer4.factory.didRedeemLink(redemptionResult);
                                        }
                                    }
                                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                }
                                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                return Unit.INSTANCE;
                            }
                        } else if (either instanceof Either.Failure) {
                            networkError = (NetworkError) ((Either.Failure) either).getError();
                            redemptions2 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Fail.INSTANCE, redeemType4);
                            c06252.L$0 = webPaywallRedeemer4;
                            c06252.L$1 = redeemType4;
                            c06252.L$2 = networkError;
                            c06252.label = 9;
                            if (webPaywallRedeemer4.track(redemptions2, c06252) != coroutine_suspended) {
                                if (redeemType4 instanceof RedeemType.Code) {
                                    localizedMessage = networkError.getLocalizedMessage();
                                    if (localizedMessage == null) {
                                        localizedMessage = "Redemption failed, error unknown";
                                    }
                                    RedeemType.Code code18 = (RedeemType.Code) redeemType4;
                                    Logger.INSTANCE.debug(LogLevel.error, LogScope.webEntitlements, "Failed to redeem purchase token", MapsKt.mapOf(TuplesKt.to("code", code18.getCode())), networkError);
                                    Factory factory11113 = webPaywallRedeemer4.factory;
                                    String code19 = code18.getCode();
                                    factory11113.didRedeemLink(new RedemptionResult.Error(code19 != null ? code19 : "", new ErrorInfo(localizedMessage)));
                                    Factory factory11114 = webPaywallRedeemer4.factory;
                                    c06252.L$0 = webPaywallRedeemer4;
                                    c06252.L$1 = localizedMessage;
                                    c06252.L$2 = code;
                                    c06252.label = 10;
                                    objReceipts = factory11114.isPaywallVisible(c06252);
                                    if (objReceipts != coroutine_suspended) {
                                        webPaywallRedeemer6 = webPaywallRedeemer4;
                                        if (((Boolean) objReceipts).booleanValue()) {
                                            webPaywallRedeemer6.factory.trackRestorationFailed(localizedMessage);
                                        }
                                        webPaywallRedeemer4 = webPaywallRedeemer6;
                                    }
                                }
                                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                return Unit.INSTANCE;
                            }
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                    }
                }
                return coroutine_suspended;
            case 4:
                deviceId = (DeviceVendorId) c06252.L$6;
                aliasId = (String) c06252.L$5;
                strMo10616getUserIdP5Wmf0A = (String) c06252.L$4;
                list = (List) c06252.L$3;
                network = (Network) c06252.L$2;
                redeemType2 = (RedeemType) c06252.L$1;
                webPaywallRedeemer2 = (WebPaywallRedeemer) c06252.L$0;
                ResultKt.throwOnFailure(objReceipts);
                List<Redeemable> list110 = list;
                DeviceVendorId deviceVendorId8 = deviceId;
                str2 = strMo10616getUserIdP5Wmf0A;
                String str12 = aliasId;
                SuperwallAPI superwallAPI8 = network;
                redeemType3 = redeemType2;
                webPaywallRedeemer3 = webPaywallRedeemer2;
                List<TransactionReceipt> list111 = (List) objReceipts;
                String externalAccountId8 = webPaywallRedeemer3.factory.getExternalAccountId();
                integrationProps = webPaywallRedeemer3.factory.getIntegrationProps();
                if (integrationProps.isEmpty()) {
                    integrationProps = null;
                }
                if (integrationProps != null) {
                    linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(integrationProps.size()));
                    while (it.hasNext()) {
                        Map.Entry entry10 = (Map.Entry) it.next();
                        linkedHashMap2.put(entry10.getKey(), webPaywallRedeemer3.convertToJsonElement(entry10.getValue()));
                    }
                    linkedHashMap3 = new LinkedHashMap();
                    while (r6.hasNext()) {
                        if (((JsonElement) entry2.getValue()) != null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            linkedHashMap3.put(entry2.getKey(), entry2.getValue());
                            str2 = str2;
                        }
                    }
                    str3 = str2;
                    LinkedHashMap linkedHashMap18 = linkedHashMap3;
                    linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap18.size()));
                    while (r0.hasNext()) {
                        Object key8 = entry3.getKey();
                        JsonElement jsonElement8 = (JsonElement) entry3.getValue();
                        Intrinsics.checkNotNull(jsonElement8);
                        linkedHashMap.put(key8, jsonElement8);
                    }
                } else {
                    str3 = str2;
                    linkedHashMap = null;
                }
                c06252.L$0 = webPaywallRedeemer3;
                c06252.L$1 = redeemType3;
                c06252.L$2 = null;
                c06252.L$3 = null;
                c06252.L$4 = null;
                c06252.L$5 = null;
                c06252.L$6 = null;
                c06252.label = 5;
                LinkedHashMap linkedHashMap19 = linkedHashMap;
                code = null;
                i = 1;
                objMo10686redeemTokenJf2YlNw = superwallAPI8.mo10686redeemTokenJf2YlNw(list110, str3, str12, deviceVendorId8, list111, externalAccountId8, linkedHashMap19, c06252);
                if (objMo10686redeemTokenJf2YlNw != coroutine_suspended) {
                    webPaywallRedeemer4 = webPaywallRedeemer3;
                    objReceipts = objMo10686redeemTokenJf2YlNw;
                    redeemType4 = redeemType3;
                    either = (Either) objReceipts;
                    if (either instanceof Either.Success) {
                        webRedemptionResponse = (WebRedemptionResponse) ((Either.Success) either).getValue();
                        webPaywallRedeemer4.storage.write(LatestRedemptionResponse.INSTANCE, webRedemptionResponse);
                        redemptions3 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Complete.INSTANCE, redeemType4);
                        c06252.L$0 = webPaywallRedeemer4;
                        c06252.L$1 = redeemType4;
                        c06252.L$2 = webRedemptionResponse;
                        c06252.label = 6;
                        if (webPaywallRedeemer4.track(redemptions3, c06252) != coroutine_suspended) {
                            z3 = redeemType4 instanceof RedeemType.Code;
                            if (z3) {
                                Logger logger9 = Logger.INSTANCE;
                                LogLevel logLevel9 = LogLevel.debug;
                                LogScope logScope9 = LogScope.webEntitlements;
                                if (z3) {
                                    code2 = (RedeemType.Code) redeemType4;
                                } else {
                                    code2 = code;
                                }
                                if (code2 != null) {
                                    code3 = "";
                                } else {
                                    code3 = "";
                                }
                                Logger.debug$default(logger9, logLevel9, logScope9, "Entitlement redemption done", MapsKt.mapOf(TuplesKt.to("code", code3)), null, 16, null);
                                codes = webRedemptionResponse.getCodes();
                                if (codes instanceof Collection) {
                                    it2 = codes.iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            i2 = 0;
                                        } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                            i2 = i;
                                        }
                                    }
                                } else {
                                    it2 = codes.iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            i2 = 0;
                                        } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                            i2 = i;
                                        }
                                    }
                                }
                                if (i2 != 0) {
                                    listListOf = webRedemptionResponse.getCodes();
                                } else {
                                    if (z3) {
                                        code4 = (RedeemType.Code) redeemType4;
                                    } else {
                                        code4 = code;
                                    }
                                    if (code4 != null) {
                                        str4 = code5;
                                    }
                                    listListOf = CollectionsKt.listOf(new RedemptionResult.Error(str4, new ErrorInfo("Redemption failed, code not returned")));
                                }
                                it3 = listListOf.iterator();
                                do {
                                    if (it3.hasNext()) {
                                        next = it3.next();
                                    } else {
                                        next = code;
                                    }
                                    if (((RedemptionResult) next) != null) {
                                        Factory factory11115 = webPaywallRedeemer4.factory;
                                        c06252.L$0 = webPaywallRedeemer4;
                                        c06252.L$1 = redeemType4;
                                        c06252.L$2 = webRedemptionResponse;
                                        c06252.label = 7;
                                        objIsPaywallVisible2 = factory11115.isPaywallVisible(c06252);
                                        if (objIsPaywallVisible2 != coroutine_suspended) {
                                            if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                                customerInfo = webRedemptionResponse.getCustomerInfo();
                                                if (customerInfo != null) {
                                                    zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                                }
                                                if (zContainsAll) {
                                                    factory = webPaywallRedeemer4.factory;
                                                    c06252.L$0 = webPaywallRedeemer4;
                                                    c06252.L$1 = redeemType4;
                                                    c06252.L$2 = webRedemptionResponse;
                                                    c06252.label = 8;
                                                    if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                        redeemType5 = redeemType4;
                                                        webPaywallRedeemer5 = webPaywallRedeemer4;
                                                        webPaywallRedeemer4 = webPaywallRedeemer5;
                                                        redeemType4 = redeemType5;
                                                    }
                                                } else {
                                                    webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                                }
                                            }
                                        }
                                    }
                                    startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                    return Unit.INSTANCE;
                                } while (!Intrinsics.areEqual(((RedemptionResult) next).getCode(), ((RedeemType.Code) redeemType4).getCode()));
                                if (((RedemptionResult) next) != null) {
                                    Factory factory11116 = webPaywallRedeemer4.factory;
                                    c06252.L$0 = webPaywallRedeemer4;
                                    c06252.L$1 = redeemType4;
                                    c06252.L$2 = webRedemptionResponse;
                                    c06252.label = 7;
                                    objIsPaywallVisible2 = factory11116.isPaywallVisible(c06252);
                                    if (objIsPaywallVisible2 != coroutine_suspended) {
                                        if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                            customerInfo = webRedemptionResponse.getCustomerInfo();
                                            if (customerInfo != null) {
                                                zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                            }
                                            if (zContainsAll) {
                                                factory = webPaywallRedeemer4.factory;
                                                c06252.L$0 = webPaywallRedeemer4;
                                                c06252.L$1 = redeemType4;
                                                c06252.L$2 = webRedemptionResponse;
                                                c06252.label = 8;
                                                if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                    redeemType5 = redeemType4;
                                                    webPaywallRedeemer5 = webPaywallRedeemer4;
                                                    webPaywallRedeemer4 = webPaywallRedeemer5;
                                                    redeemType4 = redeemType5;
                                                }
                                            } else {
                                                webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                            }
                                        }
                                    }
                                }
                                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                return Unit.INSTANCE;
                            }
                            if (!Intrinsics.areEqual(redeemType4, RedeemType.Existing.INSTANCE)) {
                                throw new NoWhenBranchMatchedException();
                            }
                            Factory factory11117 = webPaywallRedeemer4.factory;
                            customerInfo2 = webRedemptionResponse.getCustomerInfo();
                            if (customerInfo2 != null) {
                                setEmptySet = SetsKt.emptySet();
                            } else {
                                setEmptySet = SetsKt.emptySet();
                            }
                            factory11117.internallySetSubscriptionStatus(new SubscriptionStatus.Active(SetsKt.plus(setEmptySet, (Iterable) webPaywallRedeemer4.factory.getActiveDeviceEntitlements())));
                            if (redeemType4 instanceof RedeemType.Code) {
                                webPaywallRedeemer4.factory.closePaywallIfExists();
                                while (r2.hasNext()) {
                                    if (Intrinsics.areEqual(redemptionResult.getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                        webPaywallRedeemer4.factory.didRedeemLink(redemptionResult);
                                    }
                                }
                                throw new NoSuchElementException("Collection contains no element matching the predicate.");
                            }
                            startPolling$default(webPaywallRedeemer4, 0L, i, code);
                            return Unit.INSTANCE;
                        }
                    } else if (either instanceof Either.Failure) {
                        networkError = (NetworkError) ((Either.Failure) either).getError();
                        redemptions2 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Fail.INSTANCE, redeemType4);
                        c06252.L$0 = webPaywallRedeemer4;
                        c06252.L$1 = redeemType4;
                        c06252.L$2 = networkError;
                        c06252.label = 9;
                        if (webPaywallRedeemer4.track(redemptions2, c06252) != coroutine_suspended) {
                            if (redeemType4 instanceof RedeemType.Code) {
                                localizedMessage = networkError.getLocalizedMessage();
                                if (localizedMessage == null) {
                                    localizedMessage = "Redemption failed, error unknown";
                                }
                                RedeemType.Code code110 = (RedeemType.Code) redeemType4;
                                Logger.INSTANCE.debug(LogLevel.error, LogScope.webEntitlements, "Failed to redeem purchase token", MapsKt.mapOf(TuplesKt.to("code", code110.getCode())), networkError);
                                Factory factory11118 = webPaywallRedeemer4.factory;
                                String code111 = code110.getCode();
                                factory11118.didRedeemLink(new RedemptionResult.Error(code111 != null ? code111 : "", new ErrorInfo(localizedMessage)));
                                Factory factory11119 = webPaywallRedeemer4.factory;
                                c06252.L$0 = webPaywallRedeemer4;
                                c06252.L$1 = localizedMessage;
                                c06252.L$2 = code;
                                c06252.label = 10;
                                objReceipts = factory11119.isPaywallVisible(c06252);
                                if (objReceipts != coroutine_suspended) {
                                    webPaywallRedeemer6 = webPaywallRedeemer4;
                                    if (((Boolean) objReceipts).booleanValue()) {
                                        webPaywallRedeemer6.factory.trackRestorationFailed(localizedMessage);
                                    }
                                    webPaywallRedeemer4 = webPaywallRedeemer6;
                                }
                            }
                            startPolling$default(webPaywallRedeemer4, 0L, i, code);
                            return Unit.INSTANCE;
                        }
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                }
                return coroutine_suspended;
            case 5:
                RedeemType redeemType10 = (RedeemType) c06252.L$1;
                WebPaywallRedeemer webPaywallRedeemer7 = (WebPaywallRedeemer) c06252.L$0;
                ResultKt.throwOnFailure(objReceipts);
                webPaywallRedeemer4 = webPaywallRedeemer7;
                i = 1;
                redeemType4 = redeemType10;
                code = null;
                either = (Either) objReceipts;
                if (either instanceof Either.Success) {
                    webRedemptionResponse = (WebRedemptionResponse) ((Either.Success) either).getValue();
                    webPaywallRedeemer4.storage.write(LatestRedemptionResponse.INSTANCE, webRedemptionResponse);
                    redemptions3 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Complete.INSTANCE, redeemType4);
                    c06252.L$0 = webPaywallRedeemer4;
                    c06252.L$1 = redeemType4;
                    c06252.L$2 = webRedemptionResponse;
                    c06252.label = 6;
                    if (webPaywallRedeemer4.track(redemptions3, c06252) != coroutine_suspended) {
                        z3 = redeemType4 instanceof RedeemType.Code;
                        if (z3) {
                            Logger logger10 = Logger.INSTANCE;
                            LogLevel logLevel10 = LogLevel.debug;
                            LogScope logScope10 = LogScope.webEntitlements;
                            if (z3) {
                                code2 = (RedeemType.Code) redeemType4;
                            } else {
                                code2 = code;
                            }
                            if (code2 != null) {
                                code3 = "";
                            } else {
                                code3 = "";
                            }
                            Logger.debug$default(logger10, logLevel10, logScope10, "Entitlement redemption done", MapsKt.mapOf(TuplesKt.to("code", code3)), null, 16, null);
                            codes = webRedemptionResponse.getCodes();
                            if (codes instanceof Collection) {
                                it2 = codes.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        i2 = 0;
                                    } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                        i2 = i;
                                    }
                                }
                            } else {
                                it2 = codes.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        i2 = 0;
                                    } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                        i2 = i;
                                    }
                                }
                            }
                            if (i2 != 0) {
                                listListOf = webRedemptionResponse.getCodes();
                            } else {
                                if (z3) {
                                    code4 = (RedeemType.Code) redeemType4;
                                } else {
                                    code4 = code;
                                }
                                if (code4 != null) {
                                    str4 = code5;
                                }
                                listListOf = CollectionsKt.listOf(new RedemptionResult.Error(str4, new ErrorInfo("Redemption failed, code not returned")));
                            }
                            it3 = listListOf.iterator();
                            do {
                                if (it3.hasNext()) {
                                    next = it3.next();
                                } else {
                                    next = code;
                                }
                                if (((RedemptionResult) next) != null) {
                                    Factory factory111110 = webPaywallRedeemer4.factory;
                                    c06252.L$0 = webPaywallRedeemer4;
                                    c06252.L$1 = redeemType4;
                                    c06252.L$2 = webRedemptionResponse;
                                    c06252.label = 7;
                                    objIsPaywallVisible2 = factory111110.isPaywallVisible(c06252);
                                    if (objIsPaywallVisible2 != coroutine_suspended) {
                                        if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                            customerInfo = webRedemptionResponse.getCustomerInfo();
                                            if (customerInfo != null) {
                                                zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                            }
                                            if (zContainsAll) {
                                                factory = webPaywallRedeemer4.factory;
                                                c06252.L$0 = webPaywallRedeemer4;
                                                c06252.L$1 = redeemType4;
                                                c06252.L$2 = webRedemptionResponse;
                                                c06252.label = 8;
                                                if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                    redeemType5 = redeemType4;
                                                    webPaywallRedeemer5 = webPaywallRedeemer4;
                                                    webPaywallRedeemer4 = webPaywallRedeemer5;
                                                    redeemType4 = redeemType5;
                                                }
                                            } else {
                                                webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                            }
                                        }
                                    }
                                }
                                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                                return Unit.INSTANCE;
                            } while (!Intrinsics.areEqual(((RedemptionResult) next).getCode(), ((RedeemType.Code) redeemType4).getCode()));
                            if (((RedemptionResult) next) != null) {
                                Factory factory111111 = webPaywallRedeemer4.factory;
                                c06252.L$0 = webPaywallRedeemer4;
                                c06252.L$1 = redeemType4;
                                c06252.L$2 = webRedemptionResponse;
                                c06252.label = 7;
                                objIsPaywallVisible2 = factory111111.isPaywallVisible(c06252);
                                if (objIsPaywallVisible2 != coroutine_suspended) {
                                    if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                        customerInfo = webRedemptionResponse.getCustomerInfo();
                                        if (customerInfo != null) {
                                            zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                        }
                                        if (zContainsAll) {
                                            factory = webPaywallRedeemer4.factory;
                                            c06252.L$0 = webPaywallRedeemer4;
                                            c06252.L$1 = redeemType4;
                                            c06252.L$2 = webRedemptionResponse;
                                            c06252.label = 8;
                                            if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                                redeemType5 = redeemType4;
                                                webPaywallRedeemer5 = webPaywallRedeemer4;
                                                webPaywallRedeemer4 = webPaywallRedeemer5;
                                                redeemType4 = redeemType5;
                                            }
                                        } else {
                                            webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                        }
                                    }
                                }
                            }
                            startPolling$default(webPaywallRedeemer4, 0L, i, code);
                            return Unit.INSTANCE;
                        }
                        if (!Intrinsics.areEqual(redeemType4, RedeemType.Existing.INSTANCE)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        Factory factory111112 = webPaywallRedeemer4.factory;
                        customerInfo2 = webRedemptionResponse.getCustomerInfo();
                        if (customerInfo2 != null) {
                            setEmptySet = SetsKt.emptySet();
                        } else {
                            setEmptySet = SetsKt.emptySet();
                        }
                        factory111112.internallySetSubscriptionStatus(new SubscriptionStatus.Active(SetsKt.plus(setEmptySet, (Iterable) webPaywallRedeemer4.factory.getActiveDeviceEntitlements())));
                        if (redeemType4 instanceof RedeemType.Code) {
                            webPaywallRedeemer4.factory.closePaywallIfExists();
                            while (r2.hasNext()) {
                                if (Intrinsics.areEqual(redemptionResult.getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                    webPaywallRedeemer4.factory.didRedeemLink(redemptionResult);
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                        return Unit.INSTANCE;
                    }
                } else if (either instanceof Either.Failure) {
                    networkError = (NetworkError) ((Either.Failure) either).getError();
                    redemptions2 = new InternalSuperwallEvent.Redemptions(InternalSuperwallEvent.Redemptions.RedemptionState.Fail.INSTANCE, redeemType4);
                    c06252.L$0 = webPaywallRedeemer4;
                    c06252.L$1 = redeemType4;
                    c06252.L$2 = networkError;
                    c06252.label = 9;
                    if (webPaywallRedeemer4.track(redemptions2, c06252) != coroutine_suspended) {
                        if (redeemType4 instanceof RedeemType.Code) {
                            localizedMessage = networkError.getLocalizedMessage();
                            if (localizedMessage == null) {
                                localizedMessage = "Redemption failed, error unknown";
                            }
                            RedeemType.Code code112 = (RedeemType.Code) redeemType4;
                            Logger.INSTANCE.debug(LogLevel.error, LogScope.webEntitlements, "Failed to redeem purchase token", MapsKt.mapOf(TuplesKt.to("code", code112.getCode())), networkError);
                            Factory factory111113 = webPaywallRedeemer4.factory;
                            String code113 = code112.getCode();
                            factory111113.didRedeemLink(new RedemptionResult.Error(code113 != null ? code113 : "", new ErrorInfo(localizedMessage)));
                            Factory factory111114 = webPaywallRedeemer4.factory;
                            c06252.L$0 = webPaywallRedeemer4;
                            c06252.L$1 = localizedMessage;
                            c06252.L$2 = code;
                            c06252.label = 10;
                            objReceipts = factory111114.isPaywallVisible(c06252);
                            if (objReceipts != coroutine_suspended) {
                                webPaywallRedeemer6 = webPaywallRedeemer4;
                                if (((Boolean) objReceipts).booleanValue()) {
                                    webPaywallRedeemer6.factory.trackRestorationFailed(localizedMessage);
                                }
                                webPaywallRedeemer4 = webPaywallRedeemer6;
                            }
                        }
                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                        return Unit.INSTANCE;
                    }
                } else {
                    throw new NoWhenBranchMatchedException();
                }
                return coroutine_suspended;
            case 6:
                WebRedemptionResponse webRedemptionResponse3 = (WebRedemptionResponse) c06252.L$2;
                redeemType4 = (RedeemType) c06252.L$1;
                webPaywallRedeemer4 = (WebPaywallRedeemer) c06252.L$0;
                ResultKt.throwOnFailure(objReceipts);
                webRedemptionResponse = webRedemptionResponse3;
                i = 1;
                code = null;
                z3 = redeemType4 instanceof RedeemType.Code;
                if (z3) {
                    Logger logger11 = Logger.INSTANCE;
                    LogLevel logLevel11 = LogLevel.debug;
                    LogScope logScope11 = LogScope.webEntitlements;
                    if (z3) {
                        code2 = (RedeemType.Code) redeemType4;
                    } else {
                        code2 = code;
                    }
                    if (code2 != null) {
                        code3 = "";
                    } else {
                        code3 = "";
                    }
                    Logger.debug$default(logger11, logLevel11, logScope11, "Entitlement redemption done", MapsKt.mapOf(TuplesKt.to("code", code3)), null, 16, null);
                    codes = webRedemptionResponse.getCodes();
                    if (codes instanceof Collection) {
                        it2 = codes.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                i2 = 0;
                            } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                i2 = i;
                            }
                        }
                    } else {
                        it2 = codes.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                i2 = 0;
                            } else if (Intrinsics.areEqual(((RedemptionResult) it2.next()).getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                                i2 = i;
                            }
                        }
                    }
                    if (i2 != 0) {
                        listListOf = webRedemptionResponse.getCodes();
                    } else {
                        if (z3) {
                            code4 = (RedeemType.Code) redeemType4;
                        } else {
                            code4 = code;
                        }
                        if (code4 != null) {
                            str4 = code5;
                        }
                        listListOf = CollectionsKt.listOf(new RedemptionResult.Error(str4, new ErrorInfo("Redemption failed, code not returned")));
                    }
                    it3 = listListOf.iterator();
                    do {
                        if (it3.hasNext()) {
                            next = it3.next();
                        } else {
                            next = code;
                        }
                        if (((RedemptionResult) next) != null) {
                            Factory factory111115 = webPaywallRedeemer4.factory;
                            c06252.L$0 = webPaywallRedeemer4;
                            c06252.L$1 = redeemType4;
                            c06252.L$2 = webRedemptionResponse;
                            c06252.label = 7;
                            objIsPaywallVisible2 = factory111115.isPaywallVisible(c06252);
                            if (objIsPaywallVisible2 != coroutine_suspended) {
                                if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                    customerInfo = webRedemptionResponse.getCustomerInfo();
                                    if (customerInfo != null) {
                                        zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                    }
                                    if (zContainsAll) {
                                        factory = webPaywallRedeemer4.factory;
                                        c06252.L$0 = webPaywallRedeemer4;
                                        c06252.L$1 = redeemType4;
                                        c06252.L$2 = webRedemptionResponse;
                                        c06252.label = 8;
                                        if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                            redeemType5 = redeemType4;
                                            webPaywallRedeemer5 = webPaywallRedeemer4;
                                            webPaywallRedeemer4 = webPaywallRedeemer5;
                                            redeemType4 = redeemType5;
                                        }
                                    } else {
                                        webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                    }
                                }
                            }
                            return coroutine_suspended;
                        }
                        startPolling$default(webPaywallRedeemer4, 0L, i, code);
                        return Unit.INSTANCE;
                    } while (!Intrinsics.areEqual(((RedemptionResult) next).getCode(), ((RedeemType.Code) redeemType4).getCode()));
                    if (((RedemptionResult) next) != null) {
                        Factory factory111116 = webPaywallRedeemer4.factory;
                        c06252.L$0 = webPaywallRedeemer4;
                        c06252.L$1 = redeemType4;
                        c06252.L$2 = webRedemptionResponse;
                        c06252.label = 7;
                        objIsPaywallVisible2 = factory111116.isPaywallVisible(c06252);
                        if (objIsPaywallVisible2 != coroutine_suspended) {
                            if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                                customerInfo = webRedemptionResponse.getCustomerInfo();
                                if (customerInfo != null) {
                                    zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                                }
                                if (zContainsAll) {
                                    factory = webPaywallRedeemer4.factory;
                                    c06252.L$0 = webPaywallRedeemer4;
                                    c06252.L$1 = redeemType4;
                                    c06252.L$2 = webRedemptionResponse;
                                    c06252.label = 8;
                                    if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                                        redeemType5 = redeemType4;
                                        webPaywallRedeemer5 = webPaywallRedeemer4;
                                        webPaywallRedeemer4 = webPaywallRedeemer5;
                                        redeemType4 = redeemType5;
                                    }
                                } else {
                                    webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                                }
                            }
                        }
                        return coroutine_suspended;
                    }
                    startPolling$default(webPaywallRedeemer4, 0L, i, code);
                    return Unit.INSTANCE;
                }
                if (!Intrinsics.areEqual(redeemType4, RedeemType.Existing.INSTANCE)) {
                    throw new NoWhenBranchMatchedException();
                }
                Factory factory111117 = webPaywallRedeemer4.factory;
                customerInfo2 = webRedemptionResponse.getCustomerInfo();
                if (customerInfo2 != null) {
                    setEmptySet = SetsKt.emptySet();
                } else {
                    setEmptySet = SetsKt.emptySet();
                }
                factory111117.internallySetSubscriptionStatus(new SubscriptionStatus.Active(SetsKt.plus(setEmptySet, (Iterable) webPaywallRedeemer4.factory.getActiveDeviceEntitlements())));
                if (redeemType4 instanceof RedeemType.Code) {
                    webPaywallRedeemer4.factory.closePaywallIfExists();
                    while (r2.hasNext()) {
                        if (Intrinsics.areEqual(redemptionResult.getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                            webPaywallRedeemer4.factory.didRedeemLink(redemptionResult);
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                return Unit.INSTANCE;
            case 7:
                WebRedemptionResponse webRedemptionResponse4 = (WebRedemptionResponse) c06252.L$2;
                redeemType4 = (RedeemType) c06252.L$1;
                webPaywallRedeemer4 = (WebPaywallRedeemer) c06252.L$0;
                ResultKt.throwOnFailure(objReceipts);
                i = 1;
                objIsPaywallVisible2 = objReceipts;
                webRedemptionResponse = webRedemptionResponse4;
                code = null;
                if (((Boolean) objIsPaywallVisible2).booleanValue()) {
                    customerInfo = webRedemptionResponse.getCustomerInfo();
                    if (customerInfo != null) {
                        zContainsAll = entitlements.containsAll(webPaywallRedeemer4.factory.currentPaywallEntitlements());
                    }
                    if (zContainsAll) {
                        factory = webPaywallRedeemer4.factory;
                        c06252.L$0 = webPaywallRedeemer4;
                        c06252.L$1 = redeemType4;
                        c06252.L$2 = webRedemptionResponse;
                        c06252.label = 8;
                        if (factory.triggerRestoreInPaywall(c06252) != coroutine_suspended) {
                            redeemType5 = redeemType4;
                            webPaywallRedeemer5 = webPaywallRedeemer4;
                            webPaywallRedeemer4 = webPaywallRedeemer5;
                            redeemType4 = redeemType5;
                        }
                        return coroutine_suspended;
                    }
                    webPaywallRedeemer4.factory.trackRestorationFailed("Failed to restore subscriptions from the web");
                }
                Factory factory111118 = webPaywallRedeemer4.factory;
                customerInfo2 = webRedemptionResponse.getCustomerInfo();
                if (customerInfo2 != null) {
                    setEmptySet = SetsKt.emptySet();
                } else {
                    setEmptySet = SetsKt.emptySet();
                }
                factory111118.internallySetSubscriptionStatus(new SubscriptionStatus.Active(SetsKt.plus(setEmptySet, (Iterable) webPaywallRedeemer4.factory.getActiveDeviceEntitlements())));
                if (redeemType4 instanceof RedeemType.Code) {
                    webPaywallRedeemer4.factory.closePaywallIfExists();
                    while (r2.hasNext()) {
                        if (Intrinsics.areEqual(redemptionResult.getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                            webPaywallRedeemer4.factory.didRedeemLink(redemptionResult);
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                return Unit.INSTANCE;
            case 8:
                WebRedemptionResponse webRedemptionResponse5 = (WebRedemptionResponse) c06252.L$2;
                redeemType5 = (RedeemType) c06252.L$1;
                webPaywallRedeemer5 = (WebPaywallRedeemer) c06252.L$0;
                ResultKt.throwOnFailure(objReceipts);
                webRedemptionResponse = webRedemptionResponse5;
                i = 1;
                code = null;
                webPaywallRedeemer4 = webPaywallRedeemer5;
                redeemType4 = redeemType5;
                Factory factory111119 = webPaywallRedeemer4.factory;
                customerInfo2 = webRedemptionResponse.getCustomerInfo();
                if (customerInfo2 != null) {
                    setEmptySet = SetsKt.emptySet();
                } else {
                    setEmptySet = SetsKt.emptySet();
                }
                factory111119.internallySetSubscriptionStatus(new SubscriptionStatus.Active(SetsKt.plus(setEmptySet, (Iterable) webPaywallRedeemer4.factory.getActiveDeviceEntitlements())));
                if (redeemType4 instanceof RedeemType.Code) {
                    webPaywallRedeemer4.factory.closePaywallIfExists();
                    while (r2.hasNext()) {
                        if (Intrinsics.areEqual(redemptionResult.getCode(), ((RedeemType.Code) redeemType4).getCode())) {
                            webPaywallRedeemer4.factory.didRedeemLink(redemptionResult);
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                return Unit.INSTANCE;
            case 9:
                NetworkError networkError2 = (NetworkError) c06252.L$2;
                redeemType4 = (RedeemType) c06252.L$1;
                webPaywallRedeemer4 = (WebPaywallRedeemer) c06252.L$0;
                ResultKt.throwOnFailure(objReceipts);
                networkError = networkError2;
                i = 1;
                code = null;
                if (redeemType4 instanceof RedeemType.Code) {
                    localizedMessage = networkError.getLocalizedMessage();
                    if (localizedMessage == null) {
                        localizedMessage = "Redemption failed, error unknown";
                    }
                    RedeemType.Code code114 = (RedeemType.Code) redeemType4;
                    Logger.INSTANCE.debug(LogLevel.error, LogScope.webEntitlements, "Failed to redeem purchase token", MapsKt.mapOf(TuplesKt.to("code", code114.getCode())), networkError);
                    Factory factory1111110 = webPaywallRedeemer4.factory;
                    String code115 = code114.getCode();
                    factory1111110.didRedeemLink(new RedemptionResult.Error(code115 != null ? code115 : "", new ErrorInfo(localizedMessage)));
                    Factory factory1111111 = webPaywallRedeemer4.factory;
                    c06252.L$0 = webPaywallRedeemer4;
                    c06252.L$1 = localizedMessage;
                    c06252.L$2 = code;
                    c06252.label = 10;
                    objReceipts = factory1111111.isPaywallVisible(c06252);
                    if (objReceipts != coroutine_suspended) {
                        webPaywallRedeemer6 = webPaywallRedeemer4;
                        if (((Boolean) objReceipts).booleanValue()) {
                            webPaywallRedeemer6.factory.trackRestorationFailed(localizedMessage);
                        }
                        webPaywallRedeemer4 = webPaywallRedeemer6;
                    }
                    return coroutine_suspended;
                }
                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                return Unit.INSTANCE;
            case 10:
                String str13 = (String) c06252.L$1;
                webPaywallRedeemer6 = (WebPaywallRedeemer) c06252.L$0;
                ResultKt.throwOnFailure(objReceipts);
                i = 1;
                localizedMessage = str13;
                code = null;
                if (((Boolean) objReceipts).booleanValue()) {
                    webPaywallRedeemer6.factory.trackRestorationFailed(localizedMessage);
                }
                webPaywallRedeemer4 = webPaywallRedeemer6;
                startPolling$default(webPaywallRedeemer4, 0L, i, code);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    /* JADX INFO: renamed from: checkForWebEntitlements-AKGx8qU, reason: not valid java name */
    public final Object m10808checkForWebEntitlementsAKGx8qU(String str, DeviceVendorId deviceVendorId, Continuation<? super Either<? extends Set<Entitlement>, Throwable>> continuation) {
        WebPaywallRedeemer$checkForWebEntitlements$1 webPaywallRedeemer$checkForWebEntitlements$1;
        WebPaywallRedeemer webPaywallRedeemer;
        Either either;
        CustomerInfo customerInfo;
        String str2 = str;
        if (continuation instanceof WebPaywallRedeemer$checkForWebEntitlements$1) {
            webPaywallRedeemer$checkForWebEntitlements$1 = (WebPaywallRedeemer$checkForWebEntitlements$1) continuation;
            if ((webPaywallRedeemer$checkForWebEntitlements$1.label & Integer.MIN_VALUE) != 0) {
                webPaywallRedeemer$checkForWebEntitlements$1.label -= Integer.MIN_VALUE;
            } else {
                webPaywallRedeemer$checkForWebEntitlements$1 = new WebPaywallRedeemer$checkForWebEntitlements$1(this, continuation);
            }
        } else {
            webPaywallRedeemer$checkForWebEntitlements$1 = new WebPaywallRedeemer$checkForWebEntitlements$1(this, continuation);
        }
        Object objMo10687webEntitlementsByUserId5PBZuVg = webPaywallRedeemer$checkForWebEntitlements$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = webPaywallRedeemer$checkForWebEntitlements$1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objMo10687webEntitlementsByUserId5PBZuVg);
                if (str2 == null) {
                    Network network = this.network;
                    webPaywallRedeemer$checkForWebEntitlements$1.L$0 = this;
                    webPaywallRedeemer$checkForWebEntitlements$1.L$1 = str2;
                    webPaywallRedeemer$checkForWebEntitlements$1.label = 1;
                    objMo10687webEntitlementsByUserId5PBZuVg = network.webEntitlementsByDeviceID(deviceVendorId, webPaywallRedeemer$checkForWebEntitlements$1);
                    if (objMo10687webEntitlementsByUserId5PBZuVg != coroutine_suspended) {
                        webPaywallRedeemer = this;
                        either = (Either) objMo10687webEntitlementsByUserId5PBZuVg;
                    }
                } else {
                    Network network2 = this.network;
                    webPaywallRedeemer$checkForWebEntitlements$1.L$0 = this;
                    webPaywallRedeemer$checkForWebEntitlements$1.L$1 = str2;
                    webPaywallRedeemer$checkForWebEntitlements$1.label = 2;
                    objMo10687webEntitlementsByUserId5PBZuVg = network2.mo10687webEntitlementsByUserId5PBZuVg(str2, deviceVendorId, webPaywallRedeemer$checkForWebEntitlements$1);
                    if (objMo10687webEntitlementsByUserId5PBZuVg != coroutine_suspended) {
                        webPaywallRedeemer = this;
                        either = (Either) objMo10687webEntitlementsByUserId5PBZuVg;
                    }
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                str2 = (String) webPaywallRedeemer$checkForWebEntitlements$1.L$1;
                webPaywallRedeemer = (WebPaywallRedeemer) webPaywallRedeemer$checkForWebEntitlements$1.L$0;
                ResultKt.throwOnFailure(objMo10687webEntitlementsByUserId5PBZuVg);
                either = (Either) objMo10687webEntitlementsByUserId5PBZuVg;
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str2 = (String) webPaywallRedeemer$checkForWebEntitlements$1.L$1;
                webPaywallRedeemer = (WebPaywallRedeemer) webPaywallRedeemer$checkForWebEntitlements$1.L$0;
                ResultKt.throwOnFailure(objMo10687webEntitlementsByUserId5PBZuVg);
                either = (Either) objMo10687webEntitlementsByUserId5PBZuVg;
            }
            WebEntitlements webEntitlements = (WebEntitlements) either.getSuccess();
            if (webEntitlements == null || (customerInfo = webEntitlements.getCustomerInfo()) == null) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.customerInfo, "Backend didn't return customerInfo, constructing from entitlements", null, null, 24, null);
                List listEmptyList = CollectionsKt.emptyList();
                List listEmptyList2 = CollectionsKt.emptyList();
                if (str2 == null) {
                    str2 = "";
                }
                customerInfo = new CustomerInfo(listEmptyList, listEmptyList2, str2, CollectionsKt.emptyList(), false);
            }
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.customerInfo, "Fetched web CustomerInfo: " + customerInfo.getSubscriptions().size() + " subs, " + customerInfo.getNonSubscriptions().size() + " non-subs", null, null, 24, null);
            webPaywallRedeemer.storage.write(LatestWebCustomerInfo.INSTANCE, customerInfo);
            webPaywallRedeemer.storage.write(LastWebEntitlementsFetchDate.INSTANCE, Boxing.boxLong(System.currentTimeMillis()));
            return new Either.Success(CollectionsKt.toSet(customerInfo.getEntitlements()));
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            return new Either.Failure(th);
        }
    }

    public final void clear(RedemptionOwnershipType ownership) {
        ArrayList arrayList;
        WebRedemptionResponse webRedemptionResponseCopy$default;
        List<RedemptionResult> codes;
        boolean z;
        Intrinsics.checkNotNullParameter(ownership, "ownership");
        WebRedemptionResponse webRedemptionResponse = (WebRedemptionResponse) this.storage.read(LatestRedemptionResponse.INSTANCE);
        if (webRedemptionResponse == null || (codes = webRedemptionResponse.getCodes()) == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : codes) {
                if (obj instanceof RedemptionResult.Success) {
                    arrayList2.add(obj);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : arrayList2) {
                RedemptionResult.Success success = (RedemptionResult.Success) obj2;
                int i = WhenMappings.$EnumSwitchMapping$0[ownership.ordinal()];
                if (i == 1) {
                    z = success.getRedemptionInfo().getOwnership() instanceof RedemptionOwnership.AppUser;
                } else {
                    if (i != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    z = success.getRedemptionInfo().getOwnership() instanceof RedemptionOwnership.Device;
                }
                if (z) {
                    arrayList3.add(obj2);
                }
            }
            arrayList = arrayList3;
        }
        if (webRedemptionResponse != null) {
            List<RedemptionResult> codes2 = webRedemptionResponse.getCodes();
            ArrayList arrayList4 = new ArrayList();
            for (Object obj3 : codes2) {
                if (!CollectionsKt.contains(arrayList == null ? CollectionsKt.emptyList() : arrayList, (RedemptionResult) obj3)) {
                    arrayList4.add(obj3);
                }
            }
            webRedemptionResponseCopy$default = WebRedemptionResponse.copy$default(webRedemptionResponse, arrayList4, null, null, 6, null);
        } else {
            webRedemptionResponseCopy$default = null;
        }
        if (webRedemptionResponseCopy$default != null) {
            this.storage.write(LatestRedemptionResponse.INSTANCE, webRedemptionResponseCopy$default);
        }
        this.factory.internallySetSubscriptionStatus(new SubscriptionStatus.Active(this.factory.getActiveDeviceEntitlements()));
        Job job = this.redemptionJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.redemptionJob = BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C06241(null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.web.WebPaywallRedeemer$clear$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebPaywallRedeemer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.web.WebPaywallRedeemer$clear$1", f = "WebPaywallRedeemer.kt", i = {}, l = {413}, m = "invokeSuspend", n = {}, s = {})
    static final class C06241 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C06241(Continuation<? super C06241> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WebPaywallRedeemer.this.new C06241(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06241) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (WebPaywallRedeemer.this.redeem(RedeemType.Existing.INSTANCE, this) == coroutine_suspended) {
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

    static /* synthetic */ void startPolling$default(WebPaywallRedeemer webPaywallRedeemer, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = webPaywallRedeemer.factory.maxAge();
        }
        webPaywallRedeemer.startPolling(j);
    }

    private final void startPolling(long maxAge) {
        Job job = this.pollingJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.pollingJob = BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.plus(this.ioScope, Dispatchers.getIO()), null, null, new C06261(maxAge, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.web.WebPaywallRedeemer$startPolling$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebPaywallRedeemer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.web.WebPaywallRedeemer$startPolling$1", f = "WebPaywallRedeemer.kt", i = {}, l = {TypedValues.Cycle.TYPE_CUSTOM_WAVE_SHAPE, 475}, m = "invokeSuspend", n = {}, s = {})
    static final class C06261 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $maxAge;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06261(long j, Continuation<? super C06261> continuation) {
            super(2, continuation);
            this.$maxAge = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WebPaywallRedeemer.this.new C06261(this.$maxAge, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C06261) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0022  */
        /* JADX WARN: Code duplicated, block: B:14:0x0043 A[PHI: r2
          0x0043: PHI (r2v3 java.lang.Object) = (r2v2 java.lang.Object), (r2v17 java.lang.Object) binds: [B:12:0x003f, B:9:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:16:0x004b  */
        /* JADX WARN: Code duplicated, block: B:19:0x0075 A[LOOP:0: B:17:0x006f->B:19:0x0075, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:22:0x00be  */
        /* JADX WARN: Code duplicated, block: B:28:0x00d2  */
        /* JADX WARN: Code duplicated, block: B:30:0x00d8  */
        /* JADX WARN: Code duplicated, block: B:32:0x00de  */
        /* JADX WARN: Code duplicated, block: B:36:0x00f2  */
        /* JADX WARN: Code duplicated, block: B:41:0x0133  */
        /* JADX WARN: Code duplicated, block: B:47:0x0157  */
        /* JADX WARN: Code duplicated, block: B:52:0x0170  */
        /* JADX WARN: Code duplicated, block: B:55:0x0185  */
        /* JADX WARN: Code duplicated, block: B:59:0x01b7  */
        /* JADX WARN: Code duplicated, block: B:61:0x01bb  */
        /* JADX WARN: Code duplicated, block: B:65:0x01d5  */
        /* JADX WARN: Code duplicated, block: B:69:0x0140 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:71:0x012d A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:73:0x0164 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:76:0x0151 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:79:0x0192 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:81:0x017f A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x01d2 -> B:11:0x0022). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r20) {
            /*
                Method dump skipped, instruction units count: 475
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.web.WebPaywallRedeemer.C06261.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }
}
