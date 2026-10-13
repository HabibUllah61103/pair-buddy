package com.superwall.sdk.store.abstractions.transactions;

import com.android.billingclient.api.Purchase;
import com.superwall.sdk.models.serialization.DateSerializer;
import com.superwall.sdk.storage.core_data.ConvertersKt;
import java.util.Date;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: compiled from: StoreTransaction.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 L2\u00020\u0001:\u0002KLB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bBC\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0007\u0010\u000eJ\u0014\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010B0AJ%\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020\u00002\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020IH\u0001¢\u0006\u0002\bJR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0012R\u0014\u0010\u001c\u001a\u00020\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010 \u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u0012R\u0016\u0010\"\u001a\u0004\u0018\u00010#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u001c\u0010&\u001a\u0004\u0018\u00010\u00178VX\u0097\u0004¢\u0006\f\u0012\u0004\b'\u0010\u0010\u001a\u0004\b(\u0010\u0019R\u0016\u0010)\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010\u0012R\u0016\u0010+\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010\u0012R\u0016\u0010-\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010\u0012R\u0016\u0010/\u001a\u0004\u0018\u0001008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b/\u00101R\u001c\u00102\u001a\u0004\u0018\u00010\u00178VX\u0097\u0004¢\u0006\f\u0012\u0004\b3\u0010\u0010\u001a\u0004\b4\u0010\u0019R\u0016\u00105\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u0010\u0012R\u001c\u00107\u001a\u0004\u0018\u00010\u00178VX\u0097\u0004¢\u0006\f\u0012\u0004\b8\u0010\u0010\u001a\u0004\b9\u0010\u0019R\u0016\u0010:\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u0010\u0012R\u0014\u0010<\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b=\u0010\u0012R\u0016\u0010>\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010\u0012¨\u0006M"}, d2 = {"Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;", "transaction", "Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;", "configRequestId", "", "appSessionId", "<init>", "(Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "", "id", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getConfigRequestId$annotations", "()V", "getConfigRequestId", "()Ljava/lang/String;", "getAppSessionId$annotations", "getAppSessionId", "getId", "transactionDate", "Ljava/util/Date;", "getTransactionDate", "()Ljava/util/Date;", "originalTransactionIdentifier", "getOriginalTransactionIdentifier", "state", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;", "getState", "()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;", "storeTransactionId", "getStoreTransactionId", "payment", "Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;", "getPayment", "()Lcom/superwall/sdk/store/abstractions/transactions/StorePayment;", "originalTransactionDate", "getOriginalTransactionDate$annotations", "getOriginalTransactionDate", "webOrderLineItemID", "getWebOrderLineItemID", "appBundleId", "getAppBundleId", "subscriptionGroupId", "getSubscriptionGroupId", "isUpgraded", "", "()Ljava/lang/Boolean;", "expirationDate", "getExpirationDate$annotations", "getExpirationDate", "offerId", "getOfferId", "revocationDate", "getRevocationDate$annotations", "getRevocationDate", "appAccountToken", "getAppAccountToken", "purchaseToken", "getPurchaseToken", "signature", "getSignature", "toDictionary", "", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final class StoreTransaction implements StoreTransactionType {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String appSessionId;
    private final String configRequestId;
    private final String id;
    private final transient GoogleBillingPurchaseTransaction transaction;

    @SerialName("app_session_id")
    public static /* synthetic */ void getAppSessionId$annotations() {
    }

    @SerialName("config_request_id")
    public static /* synthetic */ void getConfigRequestId$annotations() {
    }

    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getExpirationDate$annotations() {
    }

    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getOriginalTransactionDate$annotations() {
    }

    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getRevocationDate$annotations() {
    }

    /* JADX INFO: compiled from: StoreTransaction.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<StoreTransaction> serializer() {
            return StoreTransaction$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ StoreTransaction(int i, GoogleBillingPurchaseTransaction googleBillingPurchaseTransaction, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, StoreTransaction$$serializer.INSTANCE.getDescriptor());
        }
        this.transaction = googleBillingPurchaseTransaction;
        this.configRequestId = str;
        this.appSessionId = str2;
        if ((i & 8) != 0) {
            this.id = str3;
            return;
        }
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.id = string;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(StoreTransaction self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeSerializableElement(serialDesc, 0, GoogleBillingPurchaseTransaction$$serializer.INSTANCE, self.transaction);
        output.encodeStringElement(serialDesc, 1, self.configRequestId);
        output.encodeStringElement(serialDesc, 2, self.appSessionId);
        if (!output.shouldEncodeElementDefault(serialDesc, 3)) {
            String str = self.id;
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            if (Intrinsics.areEqual(str, string)) {
                return;
            }
        }
        output.encodeStringElement(serialDesc, 3, self.id);
    }

    public StoreTransaction(GoogleBillingPurchaseTransaction transaction, String configRequestId, String appSessionId) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(configRequestId, "configRequestId");
        Intrinsics.checkNotNullParameter(appSessionId, "appSessionId");
        this.transaction = transaction;
        this.configRequestId = configRequestId;
        this.appSessionId = appSessionId;
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.id = string;
    }

    public final String getConfigRequestId() {
        return this.configRequestId;
    }

    public final String getAppSessionId() {
        return this.appSessionId;
    }

    public final String getId() {
        return this.id;
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public Date getTransactionDate() {
        return this.transaction.getTransactionDate();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getOriginalTransactionIdentifier() {
        return this.transaction.getOriginalTransactionIdentifier();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public StoreTransactionState getState() {
        return this.transaction.getState();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getStoreTransactionId() {
        return this.transaction.getStoreTransactionId();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public StorePayment getPayment() {
        return this.transaction.getPayment();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public Date getOriginalTransactionDate() {
        return this.transaction.getOriginalTransactionDate();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getWebOrderLineItemID() {
        return this.transaction.getWebOrderLineItemID();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getAppBundleId() {
        return this.transaction.getAppBundleId();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getSubscriptionGroupId() {
        return this.transaction.getSubscriptionGroupId();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public Boolean isUpgraded() {
        return this.transaction.isUpgraded();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public Date getExpirationDate() {
        return this.transaction.getExpirationDate();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getOfferId() {
        return this.transaction.getOfferId();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public Date getRevocationDate() {
        return this.transaction.getRevocationDate();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getAppAccountToken() {
        return this.transaction.getAppAccountToken();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getPurchaseToken() {
        return this.transaction.getPurchaseToken();
    }

    @Override // com.superwall.sdk.store.abstractions.transactions.StoreTransactionType
    public String getSignature() {
        Purchase underlyingSK2Transaction = this.transaction.getUnderlyingSK2Transaction();
        if (underlyingSK2Transaction != null) {
            return underlyingSK2Transaction.getSignature();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit toDictionary$lambda$0(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setEncodeDefaults(true);
        return Unit.INSTANCE;
    }

    public final Map<String, Object> toDictionary() {
        Json jsonJson$default = JsonKt.Json$default(null, new Function1() { // from class: com.superwall.sdk.store.abstractions.transactions.StoreTransaction$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StoreTransaction.toDictionary$lambda$0((JsonBuilder) obj);
            }
        }, 1, null);
        Map<String, Object> mutableMap = MapsKt.toMutableMap(ConvertersKt.toNullableTypedMap(jsonJson$default, jsonJson$default.encodeToString(INSTANCE.serializer(), this)));
        Object obj = mutableMap.get("transaction");
        Map<? extends String, ? extends Object> map = obj instanceof Map ? (Map) obj : null;
        if (map != null) {
            mutableMap.remove("transaction");
            mutableMap.putAll(map);
        }
        Object obj2 = mutableMap.get("payment");
        Map map2 = obj2 instanceof Map ? (Map) obj2 : null;
        if (map2 != null) {
            mutableMap.remove("payment");
            for (Map.Entry entry : map2.entrySet()) {
                mutableMap.put("payment_" + ((String) entry.getKey()), entry.getValue());
            }
        }
        return mutableMap;
    }
}
