package com.superwall.sdk.models.entitlements;

import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: RedeemRequest.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 12\u00020\u0001:\u0003/01B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tBM\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\b\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J3\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020\u000bHÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001J%\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0001¢\u0006\u0002\b.R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\f\u001a\u00020\u00038\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\u001b\u0010\u0011\u001a\u0004\b\u001c\u0010\u0013¨\u00062"}, d2 = {"Lcom/superwall/sdk/models/entitlements/TransactionReceipt;", "", "purchaseToken", "", "orderId", "productId", "productType", "Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;)V", "seen0", "", "type", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getPurchaseToken$annotations", "()V", "getPurchaseToken", "()Ljava/lang/String;", "getOrderId$annotations", "getOrderId", "getProductId$annotations", "getProductId", "getProductType$annotations", "getProductType", "()Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;", "getType$annotations", "getType", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "ProductType", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class TransactionReceipt {
    private final String orderId;
    private final String productId;
    private final ProductType productType;
    private final String purchaseToken;
    private final String type;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, ProductType.INSTANCE.serializer(), null};

    public static /* synthetic */ TransactionReceipt copy$default(TransactionReceipt transactionReceipt, String str, String str2, String str3, ProductType productType, int i, Object obj) {
        if ((i & 1) != 0) {
            str = transactionReceipt.purchaseToken;
        }
        if ((i & 2) != 0) {
            str2 = transactionReceipt.orderId;
        }
        if ((i & 4) != 0) {
            str3 = transactionReceipt.productId;
        }
        if ((i & 8) != 0) {
            productType = transactionReceipt.productType;
        }
        return transactionReceipt.copy(str, str2, str3, productType);
    }

    @SerialName("orderId")
    public static /* synthetic */ void getOrderId$annotations() {
    }

    @SerialName("productId")
    public static /* synthetic */ void getProductId$annotations() {
    }

    @SerialName("productType")
    public static /* synthetic */ void getProductType$annotations() {
    }

    @SerialName("jwsRepresentation")
    public static /* synthetic */ void getPurchaseToken$annotations() {
    }

    @SerialName("type")
    public static /* synthetic */ void getType$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getOrderId() {
        return this.orderId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getProductId() {
        return this.productId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final ProductType getProductType() {
        return this.productType;
    }

    public final TransactionReceipt copy(String purchaseToken, String orderId, String productId, ProductType productType) {
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(productType, "productType");
        return new TransactionReceipt(purchaseToken, orderId, productId, productType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TransactionReceipt)) {
            return false;
        }
        TransactionReceipt transactionReceipt = (TransactionReceipt) other;
        return Intrinsics.areEqual(this.purchaseToken, transactionReceipt.purchaseToken) && Intrinsics.areEqual(this.orderId, transactionReceipt.orderId) && Intrinsics.areEqual(this.productId, transactionReceipt.productId) && this.productType == transactionReceipt.productType;
    }

    public int hashCode() {
        int iHashCode = this.purchaseToken.hashCode() * 31;
        String str = this.orderId;
        return ((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.productId.hashCode()) * 31) + this.productType.hashCode();
    }

    public String toString() {
        return "TransactionReceipt(purchaseToken=" + this.purchaseToken + ", orderId=" + this.orderId + ", productId=" + this.productId + ", productType=" + this.productType + ")";
    }

    /* JADX INFO: compiled from: RedeemRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/entitlements/TransactionReceipt$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<TransactionReceipt> serializer() {
            return TransactionReceipt$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ TransactionReceipt(int i, String str, String str2, String str3, ProductType productType, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (13 != (i & 13)) {
            PluginExceptionsKt.throwMissingFieldException(i, 13, TransactionReceipt$$serializer.INSTANCE.getDescriptor());
        }
        this.purchaseToken = str;
        if ((i & 2) == 0) {
            this.orderId = null;
        } else {
            this.orderId = str2;
        }
        this.productId = str3;
        this.productType = productType;
        if ((i & 16) == 0) {
            this.type = "Android";
        } else {
            this.type = str4;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(TransactionReceipt self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.purchaseToken);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.orderId != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.orderId);
        }
        output.encodeStringElement(serialDesc, 2, self.productId);
        output.encodeSerializableElement(serialDesc, 3, kSerializerArr[3], self.productType);
        if (!output.shouldEncodeElementDefault(serialDesc, 4) && Intrinsics.areEqual(self.type, "Android")) {
            return;
        }
        output.encodeStringElement(serialDesc, 4, self.type);
    }

    public TransactionReceipt(String purchaseToken, String str, String productId, ProductType productType) {
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(productType, "productType");
        this.purchaseToken = purchaseToken;
        this.orderId = str;
        this.productId = productId;
        this.productType = productType;
        this.type = "Android";
    }

    public /* synthetic */ TransactionReceipt(String str, String str2, String str3, ProductType productType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, str3, productType);
    }

    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getProductId() {
        return this.productId;
    }

    public final ProductType getProductType() {
        return this.productType;
    }

    /* JADX INFO: compiled from: RedeemRequest.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \u00062\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;", "", "<init>", "(Ljava/lang/String;I)V", "IAP", "SUBSCRIPTION", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public enum ProductType {
        IAP,
        SUBSCRIPTION;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.entitlements.TransactionReceipt$ProductType$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransactionReceipt.ProductType._init_$_anonymous_();
            }
        });

        public static EnumEntries<ProductType> getEntries() {
            return $ENTRIES;
        }

        /* JADX INFO: compiled from: RedeemRequest.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/entitlements/TransactionReceipt$ProductType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private final /* synthetic */ KSerializer get$cachedSerializer() {
                return (KSerializer) ProductType.$cachedSerializer$delegate.getValue();
            }

            public final KSerializer<ProductType> serializer() {
                return get$cachedSerializer();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return EnumsKt.createAnnotatedEnumSerializer("com.superwall.sdk.models.entitlements.TransactionReceipt.ProductType", values(), new String[]{"iap", "subscription"}, new Annotation[][]{null, null}, null);
        }
    }

    public final String getType() {
        return this.type;
    }
}
