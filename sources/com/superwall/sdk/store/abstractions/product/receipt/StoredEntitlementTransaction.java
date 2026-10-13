package com.superwall.sdk.store.abstractions.product.receipt;

import com.google.firebase.messaging.Constants;
import com.superwall.sdk.storage.DateSerializer;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
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

/* JADX INFO: compiled from: StoredEntitlementTransaction.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b)\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 L2\u00020\u0001:\u0002LMBk\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013B\u0089\u0001\b\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\r\u001a\u00020\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0012\u0010\u0018J\t\u00102\u001a\u00020\u0003HÆ\u0003J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0006HÆ\u0003J\t\u00105\u001a\u00020\u0006HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u00107\u001a\u00020\nHÆ\u0003J\t\u00108\u001a\u00020\fHÆ\u0003J\t\u00109\u001a\u00020\nHÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010;\u001a\u00020\nHÆ\u0003J\t\u0010<\u001a\u00020\nHÆ\u0003J\t\u0010=\u001a\u00020\nHÆ\u0003J\u0085\u0001\u0010>\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u000f\u001a\u00020\n2\b\b\u0002\u0010\u0010\u001a\u00020\n2\b\b\u0002\u0010\u0011\u001a\u00020\nHÆ\u0001J\u0013\u0010?\u001a\u00020\n2\b\u0010@\u001a\u0004\u0018\u00010AHÖ\u0003J\t\u0010B\u001a\u00020\u0015HÖ\u0001J\t\u0010C\u001a\u00020\u0003HÖ\u0001J%\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\u00002\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020JH\u0001¢\u0006\u0002\bKR\u001c\u0010\u0002\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0004\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001d\u0010\u001a\u001a\u0004\b\u001e\u0010\u001cR\u001c\u0010\u0005\u001a\u00020\u00068\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010!R\u001c\u0010\u0007\u001a\u00020\u00068\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\"\u0010\u001a\u001a\u0004\b#\u0010!R\u001e\u0010\b\u001a\u0004\u0018\u00010\u00068\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b$\u0010\u001a\u001a\u0004\b%\u0010!R\u001c\u0010\t\u001a\u00020\n8\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b&\u0010\u001a\u001a\u0004\b\t\u0010'R\u001c\u0010\u000b\u001a\u00020\f8\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b(\u0010\u001a\u001a\u0004\b)\u0010*R\u001c\u0010\r\u001a\u00020\n8\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b+\u0010\u001a\u001a\u0004\b,\u0010'R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b-\u0010\u001a\u001a\u0004\b.\u0010!R\u001c\u0010\u000f\u001a\u00020\n8\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b/\u0010\u001a\u001a\u0004\b\u000f\u0010'R\u001c\u0010\u0010\u001a\u00020\n8\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b0\u0010\u001a\u001a\u0004\b\u0010\u0010'R\u001c\u0010\u0011\u001a\u00020\n8\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b1\u0010\u001a\u001a\u0004\b\u0011\u0010'¨\u0006N"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;", "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;", "productId", "", "transactionId", "purchaseDate", "Ljava/util/Date;", "originalPurchaseDate", "expirationDate", "isRevoked", "", "productType", "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;", "willRenew", "renewedAt", "isInGracePeriod", "isInBillingRetryPeriod", "isActive", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;ZLjava/util/Date;ZZZ)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;ZLjava/util/Date;ZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getProductId$annotations", "()V", "getProductId", "()Ljava/lang/String;", "getTransactionId$annotations", "getTransactionId", "getPurchaseDate$annotations", "getPurchaseDate", "()Ljava/util/Date;", "getOriginalPurchaseDate$annotations", "getOriginalPurchaseDate", "getExpirationDate$annotations", "getExpirationDate", "isRevoked$annotations", "()Z", "getProductType$annotations", "getProductType", "()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;", "getWillRenew$annotations", "getWillRenew", "getRenewedAt$annotations", "getRenewedAt", "isInGracePeriod$annotations", "isInBillingRetryPeriod$annotations", "isActive$annotations", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class StoredEntitlementTransaction implements EntitlementTransaction {
    private final Date expirationDate;
    private final boolean isActive;
    private final boolean isInBillingRetryPeriod;
    private final boolean isInGracePeriod;
    private final boolean isRevoked;
    private final Date originalPurchaseDate;
    private final String productId;
    private final EntitlementTransactionType productType;
    private final Date purchaseDate;
    private final Date renewedAt;
    private final String transactionId;
    private final boolean willRenew;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, EnumsKt.createSimpleEnumSerializer("com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransactionType", EntitlementTransactionType.values()), null, null, null, null, null};

    public static /* synthetic */ StoredEntitlementTransaction copy$default(StoredEntitlementTransaction storedEntitlementTransaction, String str, String str2, Date date, Date date2, Date date3, boolean z, EntitlementTransactionType entitlementTransactionType, boolean z2, Date date4, boolean z3, boolean z4, boolean z5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = storedEntitlementTransaction.productId;
        }
        if ((i & 2) != 0) {
            str2 = storedEntitlementTransaction.transactionId;
        }
        if ((i & 4) != 0) {
            date = storedEntitlementTransaction.purchaseDate;
        }
        if ((i & 8) != 0) {
            date2 = storedEntitlementTransaction.originalPurchaseDate;
        }
        if ((i & 16) != 0) {
            date3 = storedEntitlementTransaction.expirationDate;
        }
        if ((i & 32) != 0) {
            z = storedEntitlementTransaction.isRevoked;
        }
        if ((i & 64) != 0) {
            entitlementTransactionType = storedEntitlementTransaction.productType;
        }
        if ((i & 128) != 0) {
            z2 = storedEntitlementTransaction.willRenew;
        }
        if ((i & 256) != 0) {
            date4 = storedEntitlementTransaction.renewedAt;
        }
        if ((i & 512) != 0) {
            z3 = storedEntitlementTransaction.isInGracePeriod;
        }
        if ((i & 1024) != 0) {
            z4 = storedEntitlementTransaction.isInBillingRetryPeriod;
        }
        if ((i & 2048) != 0) {
            z5 = storedEntitlementTransaction.isActive;
        }
        boolean z6 = z4;
        boolean z7 = z5;
        Date date5 = date4;
        boolean z8 = z3;
        EntitlementTransactionType entitlementTransactionType2 = entitlementTransactionType;
        boolean z9 = z2;
        Date date6 = date3;
        boolean z10 = z;
        return storedEntitlementTransaction.copy(str, str2, date, date2, date6, z10, entitlementTransactionType2, z9, date5, z8, z6, z7);
    }

    @SerialName("expiration_date")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getExpirationDate$annotations() {
    }

    @SerialName("original_purchase_date")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getOriginalPurchaseDate$annotations() {
    }

    @SerialName("product_id")
    public static /* synthetic */ void getProductId$annotations() {
    }

    @SerialName("product_type")
    public static /* synthetic */ void getProductType$annotations() {
    }

    @SerialName("purchase_date")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getPurchaseDate$annotations() {
    }

    @SerialName("renewed_at")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getRenewedAt$annotations() {
    }

    @SerialName("transaction_id")
    public static /* synthetic */ void getTransactionId$annotations() {
    }

    @SerialName("will_renew")
    public static /* synthetic */ void getWillRenew$annotations() {
    }

    @SerialName("is_active")
    public static /* synthetic */ void isActive$annotations() {
    }

    @SerialName("is_in_billing_retry_period")
    public static /* synthetic */ void isInBillingRetryPeriod$annotations() {
    }

    @SerialName("is_in_grace_period")
    public static /* synthetic */ void isInGracePeriod$annotations() {
    }

    @SerialName("is_revoked")
    public static /* synthetic */ void isRevoked$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProductId() {
        return this.productId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final boolean getIsInGracePeriod() {
        return this.isInGracePeriod;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final boolean getIsInBillingRetryPeriod() {
        return this.isInBillingRetryPeriod;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final boolean getIsActive() {
        return this.isActive;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTransactionId() {
        return this.transactionId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Date getPurchaseDate() {
        return this.purchaseDate;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Date getOriginalPurchaseDate() {
        return this.originalPurchaseDate;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Date getExpirationDate() {
        return this.expirationDate;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getIsRevoked() {
        return this.isRevoked;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final EntitlementTransactionType getProductType() {
        return this.productType;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getWillRenew() {
        return this.willRenew;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Date getRenewedAt() {
        return this.renewedAt;
    }

    public final StoredEntitlementTransaction copy(String productId, String transactionId, Date purchaseDate, Date originalPurchaseDate, Date expirationDate, boolean isRevoked, EntitlementTransactionType productType, boolean willRenew, Date renewedAt, boolean isInGracePeriod, boolean isInBillingRetryPeriod, boolean isActive) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(transactionId, "transactionId");
        Intrinsics.checkNotNullParameter(purchaseDate, "purchaseDate");
        Intrinsics.checkNotNullParameter(originalPurchaseDate, "originalPurchaseDate");
        Intrinsics.checkNotNullParameter(productType, "productType");
        return new StoredEntitlementTransaction(productId, transactionId, purchaseDate, originalPurchaseDate, expirationDate, isRevoked, productType, willRenew, renewedAt, isInGracePeriod, isInBillingRetryPeriod, isActive);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StoredEntitlementTransaction)) {
            return false;
        }
        StoredEntitlementTransaction storedEntitlementTransaction = (StoredEntitlementTransaction) other;
        return Intrinsics.areEqual(this.productId, storedEntitlementTransaction.productId) && Intrinsics.areEqual(this.transactionId, storedEntitlementTransaction.transactionId) && Intrinsics.areEqual(this.purchaseDate, storedEntitlementTransaction.purchaseDate) && Intrinsics.areEqual(this.originalPurchaseDate, storedEntitlementTransaction.originalPurchaseDate) && Intrinsics.areEqual(this.expirationDate, storedEntitlementTransaction.expirationDate) && this.isRevoked == storedEntitlementTransaction.isRevoked && this.productType == storedEntitlementTransaction.productType && this.willRenew == storedEntitlementTransaction.willRenew && Intrinsics.areEqual(this.renewedAt, storedEntitlementTransaction.renewedAt) && this.isInGracePeriod == storedEntitlementTransaction.isInGracePeriod && this.isInBillingRetryPeriod == storedEntitlementTransaction.isInBillingRetryPeriod && this.isActive == storedEntitlementTransaction.isActive;
    }

    public int hashCode() {
        int iHashCode = ((((((this.productId.hashCode() * 31) + this.transactionId.hashCode()) * 31) + this.purchaseDate.hashCode()) * 31) + this.originalPurchaseDate.hashCode()) * 31;
        Date date = this.expirationDate;
        int iHashCode2 = (((((((iHashCode + (date == null ? 0 : date.hashCode())) * 31) + Boolean.hashCode(this.isRevoked)) * 31) + this.productType.hashCode()) * 31) + Boolean.hashCode(this.willRenew)) * 31;
        Date date2 = this.renewedAt;
        return ((((((iHashCode2 + (date2 != null ? date2.hashCode() : 0)) * 31) + Boolean.hashCode(this.isInGracePeriod)) * 31) + Boolean.hashCode(this.isInBillingRetryPeriod)) * 31) + Boolean.hashCode(this.isActive);
    }

    public String toString() {
        return "StoredEntitlementTransaction(productId=" + this.productId + ", transactionId=" + this.transactionId + ", purchaseDate=" + this.purchaseDate + ", originalPurchaseDate=" + this.originalPurchaseDate + ", expirationDate=" + this.expirationDate + ", isRevoked=" + this.isRevoked + ", productType=" + this.productType + ", willRenew=" + this.willRenew + ", renewedAt=" + this.renewedAt + ", isInGracePeriod=" + this.isInGracePeriod + ", isInBillingRetryPeriod=" + this.isInBillingRetryPeriod + ", isActive=" + this.isActive + ")";
    }

    public /* synthetic */ StoredEntitlementTransaction(int i, String str, String str2, Date date, Date date2, Date date3, boolean z, EntitlementTransactionType entitlementTransactionType, boolean z2, Date date4, boolean z3, boolean z4, boolean z5, SerializationConstructorMarker serializationConstructorMarker) {
        if (4095 != (i & 4095)) {
            PluginExceptionsKt.throwMissingFieldException(i, 4095, StoredEntitlementTransaction$$serializer.INSTANCE.getDescriptor());
        }
        this.productId = str;
        this.transactionId = str2;
        this.purchaseDate = date;
        this.originalPurchaseDate = date2;
        this.expirationDate = date3;
        this.isRevoked = z;
        this.productType = entitlementTransactionType;
        this.willRenew = z2;
        this.renewedAt = date4;
        this.isInGracePeriod = z3;
        this.isInBillingRetryPeriod = z4;
        this.isActive = z5;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(StoredEntitlementTransaction self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.getProductId());
        output.encodeStringElement(serialDesc, 1, self.getTransactionId());
        output.encodeSerializableElement(serialDesc, 2, DateSerializer.INSTANCE, self.getPurchaseDate());
        output.encodeSerializableElement(serialDesc, 3, DateSerializer.INSTANCE, self.getOriginalPurchaseDate());
        output.encodeNullableSerializableElement(serialDesc, 4, DateSerializer.INSTANCE, self.getExpirationDate());
        output.encodeBooleanElement(serialDesc, 5, self.isRevoked());
        output.encodeSerializableElement(serialDesc, 6, kSerializerArr[6], self.getProductType());
        output.encodeBooleanElement(serialDesc, 7, self.getWillRenew());
        output.encodeNullableSerializableElement(serialDesc, 8, DateSerializer.INSTANCE, self.getRenewedAt());
        output.encodeBooleanElement(serialDesc, 9, self.isInGracePeriod());
        output.encodeBooleanElement(serialDesc, 10, self.isInBillingRetryPeriod());
        output.encodeBooleanElement(serialDesc, 11, self.isActive());
    }

    public StoredEntitlementTransaction(String productId, String transactionId, Date purchaseDate, Date originalPurchaseDate, Date date, boolean z, EntitlementTransactionType productType, boolean z2, Date date2, boolean z3, boolean z4, boolean z5) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(transactionId, "transactionId");
        Intrinsics.checkNotNullParameter(purchaseDate, "purchaseDate");
        Intrinsics.checkNotNullParameter(originalPurchaseDate, "originalPurchaseDate");
        Intrinsics.checkNotNullParameter(productType, "productType");
        this.productId = productId;
        this.transactionId = transactionId;
        this.purchaseDate = purchaseDate;
        this.originalPurchaseDate = originalPurchaseDate;
        this.expirationDate = date;
        this.isRevoked = z;
        this.productType = productType;
        this.willRenew = z2;
        this.renewedAt = date2;
        this.isInGracePeriod = z3;
        this.isInBillingRetryPeriod = z4;
        this.isActive = z5;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public String getProductId() {
        return this.productId;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public String getTransactionId() {
        return this.transactionId;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public Date getPurchaseDate() {
        return this.purchaseDate;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public Date getOriginalPurchaseDate() {
        return this.originalPurchaseDate;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public Date getExpirationDate() {
        return this.expirationDate;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public boolean isRevoked() {
        return this.isRevoked;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public EntitlementTransactionType getProductType() {
        return this.productType;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public boolean getWillRenew() {
        return this.willRenew;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public Date getRenewedAt() {
        return this.renewedAt;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public boolean isInGracePeriod() {
        return this.isInGracePeriod;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public boolean isInBillingRetryPeriod() {
        return this.isInBillingRetryPeriod;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public boolean isActive() {
        return this.isActive;
    }

    /* JADX INFO: compiled from: StoredEntitlementTransaction.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bJ\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\r¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;", "", "<init>", "()V", Constants.MessagePayloadKeys.FROM, "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;", "transaction", "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;", "withUpdatedActiveStatus", "stored", "isCurrentlyActive", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<StoredEntitlementTransaction> serializer() {
            return StoredEntitlementTransaction$$serializer.INSTANCE;
        }

        public final StoredEntitlementTransaction from(EntitlementTransaction transaction) {
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            return new StoredEntitlementTransaction(transaction.getProductId(), transaction.getTransactionId(), transaction.getPurchaseDate(), transaction.getOriginalPurchaseDate(), transaction.getExpirationDate(), transaction.isRevoked(), transaction.getProductType(), transaction.getWillRenew(), transaction.getRenewedAt(), transaction.isInGracePeriod(), transaction.isInBillingRetryPeriod(), transaction.isActive());
        }

        public final StoredEntitlementTransaction withUpdatedActiveStatus(StoredEntitlementTransaction stored, boolean isCurrentlyActive) {
            Intrinsics.checkNotNullParameter(stored, "stored");
            return StoredEntitlementTransaction.copy$default(stored, null, null, null, null, null, false, null, !isCurrentlyActive ? false : stored.getWillRenew(), null, false, false, isCurrentlyActive, 1919, null);
        }
    }
}
