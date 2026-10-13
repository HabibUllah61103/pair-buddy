package com.superwall.sdk.network;

import com.superwall.sdk.dependencies.ApiFactory;
import com.superwall.sdk.identity.Keys;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.Task_RetryingKt;
import com.superwall.sdk.models.entitlements.RedeemRequest;
import com.superwall.sdk.models.entitlements.Redeemable;
import com.superwall.sdk.models.entitlements.TransactionReceipt;
import com.superwall.sdk.models.entitlements.WebEntitlements;
import com.superwall.sdk.models.internal.DeviceVendorId;
import com.superwall.sdk.models.internal.WebRedemptionResponse;
import com.superwall.sdk.network.session.CustomHttpUrlConnection;
import com.superwall.sdk.store.testmode.models.SuperwallProductsResponse;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: compiled from: SubscriptionService.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ*\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H\u0096@¢\u0006\u0002\u0010\u0019Jr\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001b2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001f2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010\u00032\u0006\u0010$\u001a\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020'0\u001f2\u0006\u0010(\u001a\u00020\u00032\u0014\u0010)\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020*\u0018\u00010\u0015H\u0086@¢\u0006\u0004\b+\u0010,J.\u0010-\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u001d0\u001b2\b\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010/\u001a\u00020%H\u0086@¢\u0006\u0004\b0\u00101J\"\u00102\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u001d0\u001b2\u0006\u0010/\u001a\u00020%H\u0086@¢\u0006\u0002\u00103J\u001a\u00104\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u001d0\u001bH\u0086@¢\u0006\u0002\u00106R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Lcom/superwall/sdk/network/SubscriptionService;", "Lcom/superwall/sdk/network/NetworkService;", "host", "", "version", "factory", "Lcom/superwall/sdk/dependencies/ApiFactory;", "json", "Lkotlinx/serialization/json/Json;", "customHttpUrlConnection", "Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/dependencies/ApiFactory;Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V", "getHost", "()Ljava/lang/String;", "getVersion", "getFactory", "()Lcom/superwall/sdk/dependencies/ApiFactory;", "getCustomHttpUrlConnection", "()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;", "makeHeaders", "", "isForDebugging", "", "requestId", "(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "redeemToken", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/models/internal/WebRedemptionResponse;", "Lcom/superwall/sdk/network/NetworkError;", "codes", "", "Lcom/superwall/sdk/models/entitlements/Redeemable;", "userId", "Lcom/superwall/sdk/models/internal/UserId;", Keys.ALIAS_ID, "vendorId", "Lcom/superwall/sdk/models/internal/DeviceVendorId;", "transactionReceipt", "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;", "externalAccountId", "attributionProps", "Lkotlinx/serialization/json/JsonElement;", "redeemToken-Jf2YlNw", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "webEntitlementsByUserId", "Lcom/superwall/sdk/models/entitlements/WebEntitlements;", "deviceId", "webEntitlementsByUserId-AKGx8qU", "(Ljava/lang/String;Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "webEntitlementsByDeviceId", "(Lcom/superwall/sdk/models/internal/DeviceVendorId;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProducts", "Lcom/superwall/sdk/store/testmode/models/SuperwallProductsResponse;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SubscriptionService extends NetworkService {
    private final CustomHttpUrlConnection customHttpUrlConnection;
    private final ApiFactory factory;
    private final String host;
    private final Json json;
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

    public SubscriptionService(String host, String version, ApiFactory factory, Json json, CustomHttpUrlConnection customHttpUrlConnection) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(customHttpUrlConnection, "customHttpUrlConnection");
        this.host = host;
        this.version = version;
        this.factory = factory;
        this.customHttpUrlConnection = customHttpUrlConnection;
        this.json = JsonKt.Json(json, new Function1() { // from class: com.superwall.sdk.network.SubscriptionService$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubscriptionService.json$lambda$0((JsonBuilder) obj);
            }
        });
    }

    @Override // com.superwall.sdk.network.NetworkService
    public Object makeHeaders(boolean z, String str, Continuation<? super Map<String, String>> continuation) {
        return this.factory.makeHeaders(z, str, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit json$lambda$0(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setNamingStrategy(null);
        Json.setExplicitNulls(false);
        Json.setIgnoreUnknownKeys(true);
        Json.setCoerceInputValues(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: redeemToken-Jf2YlNw, reason: not valid java name */
    public final Object m10693redeemTokenJf2YlNw(List<Redeemable> list, String str, String str2, DeviceVendorId deviceVendorId, List<TransactionReceipt> list2, String str3, Map<String, ? extends JsonElement> map, Continuation<? super Either<WebRedemptionResponse, NetworkError>> continuation) {
        Json json = this.json;
        RedeemRequest redeemRequest = new RedeemRequest(deviceVendorId.getValue(), str == null ? null : str, str2, list, list2, str3, map);
        json.getSerializersModule();
        byte[] bytes = json.encodeToString(RedeemRequest.INSTANCE.serializer(), redeemRequest).getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        Duration.Companion companion = Duration.INSTANCE;
        SubscriptionService subscriptionService = this;
        return Task_RetryingKt.retrying(0, null, new SubscriptionService$redeemTokenJf2YlNw$$inlined$post7Yrd8eY$default$1(subscriptionService.getCustomHttpUrlConnection(), null, subscriptionService, "redeem", bytes, UUID.randomUUID().toString(), false, Duration.m12599boximpl(DurationKt.toDuration(10, DurationUnit.SECONDS))), continuation);
    }

    /* JADX INFO: renamed from: webEntitlementsByUserId-AKGx8qU, reason: not valid java name */
    public final Object m10694webEntitlementsByUserIdAKGx8qU(String str, DeviceVendorId deviceVendorId, Continuation<? super Either<WebEntitlements, NetworkError>> continuation) {
        if (str == null) {
            str = deviceVendorId.getValue();
        }
        String str2 = "users/" + str + "/entitlements";
        List listListOf = CollectionsKt.listOf(new URLQueryItem("deviceId", deviceVendorId.getValue()));
        Duration.Companion companion = Duration.INSTANCE;
        SubscriptionService subscriptionService = this;
        return Task_RetryingKt.retrying(NetworkConsts.INSTANCE.retryCount(), null, new SubscriptionService$webEntitlementsByUserIdAKGx8qU$$inlined$getrl3MWlM$default$1(subscriptionService.getCustomHttpUrlConnection(), null, subscriptionService, str2, listListOf, UUID.randomUUID().toString(), false, Duration.m12599boximpl(DurationKt.toDuration(5, DurationUnit.SECONDS))), continuation);
    }

    public final Object webEntitlementsByDeviceId(DeviceVendorId deviceVendorId, Continuation<? super Either<WebEntitlements, NetworkError>> continuation) {
        String str = "users/" + deviceVendorId.getValue() + "/entitlements";
        List listListOf = CollectionsKt.listOf(new URLQueryItem("deviceId", deviceVendorId.getValue()));
        Duration.Companion companion = Duration.INSTANCE;
        SubscriptionService subscriptionService = this;
        return Task_RetryingKt.retrying(NetworkConsts.INSTANCE.retryCount(), null, new SubscriptionService$webEntitlementsByDeviceId$$inlined$getrl3MWlM$default$1(subscriptionService.getCustomHttpUrlConnection(), null, subscriptionService, str, listListOf, UUID.randomUUID().toString(), false, Duration.m12599boximpl(DurationKt.toDuration(5, DurationUnit.SECONDS))), continuation);
    }

    public final Object getProducts(Continuation<? super Either<SuperwallProductsResponse, NetworkError>> continuation) {
        SubscriptionService subscriptionService = this;
        return Task_RetryingKt.retrying(NetworkConsts.INSTANCE.retryCount(), null, new SubscriptionService$getProducts$$inlined$getrl3MWlM$default$1(subscriptionService.getCustomHttpUrlConnection(), null, subscriptionService, "products", null, UUID.randomUUID().toString(), false, null), continuation);
    }
}
