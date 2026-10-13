package com.superwall.sdk.network;

import androidx.core.app.NotificationCompat;
import com.superwall.sdk.identity.Keys;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.models.assignment.Assignment;
import com.superwall.sdk.models.assignment.AssignmentPostback;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.enrichment.Enrichment;
import com.superwall.sdk.models.enrichment.EnrichmentRequest;
import com.superwall.sdk.models.entitlements.Redeemable;
import com.superwall.sdk.models.entitlements.TransactionReceipt;
import com.superwall.sdk.models.entitlements.WebEntitlements;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.events.EventsRequest;
import com.superwall.sdk.models.internal.DeviceVendorId;
import com.superwall.sdk.models.internal.WebRedemptionResponse;
import com.superwall.sdk.models.paywall.Paywall;
import expo.modules.notifications.service.NotificationsService;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.serialization.json.JsonElement;

/* JADX INFO: compiled from: SuperwallAPI.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0006\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\bJ8\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\u00032\u001c\u0010\u000b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\fH¦@¢\u0006\u0002\u0010\u000eJ\"\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0010\u001a\u00020\u0011H¦@¢\u0006\u0002\u0010\u0012J2\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00050\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H¦@¢\u0006\u0002\u0010\u0019J*\u0010\u001a\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u001b\u0012\u0004\u0012\u00020\u00050\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u001dH¦@¢\u0006\u0002\u0010\u001eJ4\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H¦@¢\u0006\u0004\b'\u0010(J \u0010)\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0\u001b\u0012\u0004\u0012\u00020\u00050\u0003H¦@¢\u0006\u0002\u0010+J,\u0010,\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H¦@¢\u0006\u0004\b2\u00103J\"\u00104\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u00100\u001a\u000201H¦@¢\u0006\u0002\u00105Jr\u00106\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u00050\u00032\f\u00108\u001a\b\u0012\u0004\u0012\u0002090\u001b2\b\u0010.\u001a\u0004\u0018\u00010/2\b\u0010:\u001a\u0004\u0018\u00010\u00162\u0006\u0010;\u001a\u0002012\f\u0010<\u001a\b\u0012\u0004\u0012\u00020=0\u001b2\u0006\u0010>\u001a\u00020\u00162\u0014\u0010?\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020A\u0018\u00010@H¦@¢\u0006\u0004\bB\u0010C¨\u0006D"}, d2 = {"Lcom/superwall/sdk/network/SuperwallAPI;", "", "sendEvents", "Lcom/superwall/sdk/misc/Either;", "", "Lcom/superwall/sdk/network/NetworkError;", "events", "Lcom/superwall/sdk/models/events/EventsRequest;", "(Lcom/superwall/sdk/models/events/EventsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getConfig", "Lcom/superwall/sdk/models/config/Config;", "isRetryingCallback", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmAssignments", "confirmableAssignments", "Lcom/superwall/sdk/models/assignment/AssignmentPostback;", "(Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPaywall", "Lcom/superwall/sdk/models/paywall/Paywall;", NotificationsService.IDENTIFIER_KEY, "", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/models/events/EventData;", "(Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPaywalls", "", "isForDebugging", "", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getEnrichment", "Lcom/superwall/sdk/models/enrichment/Enrichment;", "enrichmentRequest", "Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;", "maxRetry", "", "timeout", "Lkotlin/time/Duration;", "getEnrichment-exY8QGI", "(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAssignments", "Lcom/superwall/sdk/models/assignment/Assignment;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "webEntitlementsByUserId", "Lcom/superwall/sdk/models/entitlements/WebEntitlements;", "userId", "Lcom/superwall/sdk/models/internal/UserId;", "deviceId", "Lcom/superwall/sdk/models/internal/DeviceVendorId;", "webEntitlementsByUserId-5PBZuVg", "(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "webEntitlementsByDeviceID", "(Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "redeemToken", "Lcom/superwall/sdk/models/internal/WebRedemptionResponse;", "token", "Lcom/superwall/sdk/models/entitlements/Redeemable;", Keys.ALIAS_ID, "vendorId", "receipts", "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;", "externalAccountId", "attributionProps", "", "Lkotlinx/serialization/json/JsonElement;", "redeemToken-Jf2YlNw", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface SuperwallAPI {
    Object confirmAssignments(AssignmentPostback assignmentPostback, Continuation<? super Either<Unit, NetworkError>> continuation);

    Object getAssignments(Continuation<? super Either<? extends List<Assignment>, NetworkError>> continuation);

    Object getConfig(Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Either<Config, NetworkError>> continuation);

    /* JADX INFO: renamed from: getEnrichment-exY8QGI */
    Object mo10685getEnrichmentexY8QGI(EnrichmentRequest enrichmentRequest, int i, long j, Continuation<? super Either<Enrichment, NetworkError>> continuation);

    Object getPaywall(String str, EventData eventData, Continuation<? super Either<Paywall, NetworkError>> continuation);

    Object getPaywalls(boolean z, Continuation<? super Either<? extends List<Paywall>, NetworkError>> continuation);

    /* JADX INFO: renamed from: redeemToken-Jf2YlNw */
    Object mo10686redeemTokenJf2YlNw(List<Redeemable> list, String str, String str2, DeviceVendorId deviceVendorId, List<TransactionReceipt> list2, String str3, Map<String, ? extends JsonElement> map, Continuation<? super Either<WebRedemptionResponse, NetworkError>> continuation);

    Object sendEvents(EventsRequest eventsRequest, Continuation<? super Either<Unit, NetworkError>> continuation);

    Object webEntitlementsByDeviceID(DeviceVendorId deviceVendorId, Continuation<? super Either<WebEntitlements, NetworkError>> continuation);

    /* JADX INFO: renamed from: webEntitlementsByUserId-5PBZuVg */
    Object mo10687webEntitlementsByUserId5PBZuVg(String str, DeviceVendorId deviceVendorId, Continuation<? super Either<WebEntitlements, NetworkError>> continuation);

    /* JADX INFO: compiled from: SuperwallAPI.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static /* synthetic */ Object getPaywall$default(SuperwallAPI superwallAPI, String str, EventData eventData, Continuation continuation, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPaywall");
            }
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                eventData = null;
            }
            return superwallAPI.getPaywall(str, eventData, continuation);
        }

        public static /* synthetic */ Object getPaywalls$default(SuperwallAPI superwallAPI, boolean z, Continuation continuation, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPaywalls");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return superwallAPI.getPaywalls(z, continuation);
        }
    }
}
