package com.superwall.sdk.models.customer;

import androidx.core.app.FrameMetricsAggregator;
import com.superwall.sdk.models.product.Store;
import com.superwall.sdk.models.serialization.DateSerializer;
import com.superwall.sdk.store.abstractions.product.receipt.LatestPeriodType;
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
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: SubscriptionTransaction.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 M2\u00020\u0001:\u0002MNBs\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0013\u0010\u0014B\u0089\u0001\b\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u0013\u0010\u0019J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0003HÆ\u0003J\t\u00106\u001a\u00020\u0006HÆ\u0003J\t\u00107\u001a\u00020\bHÆ\u0003J\t\u00108\u001a\u00020\bHÆ\u0003J\t\u00109\u001a\u00020\bHÆ\u0003J\t\u0010:\u001a\u00020\bHÆ\u0003J\t\u0010;\u001a\u00020\bHÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010=\u001a\u00020\u000fHÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0087\u0001\u0010@\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010A\u001a\u00020\b2\b\u0010B\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010C\u001a\u00020\u0016HÖ\u0001J\t\u0010D\u001a\u00020\u0003HÖ\u0001J%\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u00002\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020KH\u0001¢\u0006\u0002\bLR\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001e\u0010\u001b\u001a\u0004\b\u001f\u0010\u001dR\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b \u0010\u001b\u001a\u0004\b!\u0010\"R\u001c\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b#\u0010\u001b\u001a\u0004\b$\u0010%R\u001c\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b&\u0010\u001b\u001a\u0004\b\t\u0010%R\u001c\u0010\n\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b'\u0010\u001b\u001a\u0004\b\n\u0010%R\u001c\u0010\u000b\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b(\u0010\u001b\u001a\u0004\b\u000b\u0010%R\u001c\u0010\f\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b)\u0010\u001b\u001a\u0004\b\f\u0010%R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b*\u0010\u001b\u001a\u0004\b+\u0010\"R\u001c\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b,\u0010\u001b\u001a\u0004\b-\u0010.R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b/\u0010\u001b\u001a\u0004\b0\u00101R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b2\u0010\u001b\u001a\u0004\b3\u0010\u001d¨\u0006O"}, d2 = {"Lcom/superwall/sdk/models/customer/SubscriptionTransaction;", "", "transactionId", "", "productId", "purchaseDate", "Ljava/util/Date;", "willRenew", "", "isRevoked", "isInGracePeriod", "isInBillingRetryPeriod", "isActive", "expirationDate", "store", "Lcom/superwall/sdk/models/product/Store;", "offerType", "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;", "subscriptionGroupId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZZZZLjava/util/Date;Lcom/superwall/sdk/models/product/Store;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getTransactionId$annotations", "()V", "getTransactionId", "()Ljava/lang/String;", "getProductId$annotations", "getProductId", "getPurchaseDate$annotations", "getPurchaseDate", "()Ljava/util/Date;", "getWillRenew$annotations", "getWillRenew", "()Z", "isRevoked$annotations", "isInGracePeriod$annotations", "isInBillingRetryPeriod$annotations", "isActive$annotations", "getExpirationDate$annotations", "getExpirationDate", "getStore$annotations", "getStore", "()Lcom/superwall/sdk/models/product/Store;", "getOfferType$annotations", "getOfferType", "()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;", "getSubscriptionGroupId$annotations", "getSubscriptionGroupId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class SubscriptionTransaction {
    private final Date expirationDate;
    private final boolean isActive;
    private final boolean isInBillingRetryPeriod;
    private final boolean isInGracePeriod;
    private final boolean isRevoked;
    private final LatestPeriodType offerType;
    private final String productId;
    private final Date purchaseDate;
    private final Store store;
    private final String subscriptionGroupId;
    private final String transactionId;
    private final boolean willRenew;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, null, null, Store.INSTANCE.serializer(), LatestPeriodType.INSTANCE.serializer(), null};

    public static /* synthetic */ SubscriptionTransaction copy$default(SubscriptionTransaction subscriptionTransaction, String str, String str2, Date date, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Date date2, Store store, LatestPeriodType latestPeriodType, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = subscriptionTransaction.transactionId;
        }
        if ((i & 2) != 0) {
            str2 = subscriptionTransaction.productId;
        }
        if ((i & 4) != 0) {
            date = subscriptionTransaction.purchaseDate;
        }
        if ((i & 8) != 0) {
            z = subscriptionTransaction.willRenew;
        }
        if ((i & 16) != 0) {
            z2 = subscriptionTransaction.isRevoked;
        }
        if ((i & 32) != 0) {
            z3 = subscriptionTransaction.isInGracePeriod;
        }
        if ((i & 64) != 0) {
            z4 = subscriptionTransaction.isInBillingRetryPeriod;
        }
        if ((i & 128) != 0) {
            z5 = subscriptionTransaction.isActive;
        }
        if ((i & 256) != 0) {
            date2 = subscriptionTransaction.expirationDate;
        }
        if ((i & 512) != 0) {
            store = subscriptionTransaction.store;
        }
        if ((i & 1024) != 0) {
            latestPeriodType = subscriptionTransaction.offerType;
        }
        if ((i & 2048) != 0) {
            str3 = subscriptionTransaction.subscriptionGroupId;
        }
        LatestPeriodType latestPeriodType2 = latestPeriodType;
        String str4 = str3;
        Date date3 = date2;
        Store store2 = store;
        boolean z6 = z4;
        boolean z7 = z5;
        boolean z8 = z2;
        boolean z9 = z3;
        return subscriptionTransaction.copy(str, str2, date, z, z8, z9, z6, z7, date3, store2, latestPeriodType2, str4);
    }

    @SerialName("expirationDate")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getExpirationDate$annotations() {
    }

    @SerialName("offerType")
    public static /* synthetic */ void getOfferType$annotations() {
    }

    @SerialName("productId")
    public static /* synthetic */ void getProductId$annotations() {
    }

    @SerialName("purchaseDate")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getPurchaseDate$annotations() {
    }

    @SerialName("store")
    public static /* synthetic */ void getStore$annotations() {
    }

    @SerialName("subscriptionGroupId")
    public static /* synthetic */ void getSubscriptionGroupId$annotations() {
    }

    @SerialName("transactionId")
    public static /* synthetic */ void getTransactionId$annotations() {
    }

    @SerialName("willRenew")
    public static /* synthetic */ void getWillRenew$annotations() {
    }

    @SerialName("isActive")
    public static /* synthetic */ void isActive$annotations() {
    }

    @SerialName("isInBillingRetryPeriod")
    public static /* synthetic */ void isInBillingRetryPeriod$annotations() {
    }

    @SerialName("isInGracePeriod")
    public static /* synthetic */ void isInGracePeriod$annotations() {
    }

    @SerialName("isRevoked")
    public static /* synthetic */ void isRevoked$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTransactionId() {
        return this.transactionId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Store getStore() {
        return this.store;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final LatestPeriodType getOfferType() {
        return this.offerType;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getSubscriptionGroupId() {
        return this.subscriptionGroupId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getProductId() {
        return this.productId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Date getPurchaseDate() {
        return this.purchaseDate;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getWillRenew() {
        return this.willRenew;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getIsRevoked() {
        return this.isRevoked;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getIsInGracePeriod() {
        return this.isInGracePeriod;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getIsInBillingRetryPeriod() {
        return this.isInBillingRetryPeriod;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getIsActive() {
        return this.isActive;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Date getExpirationDate() {
        return this.expirationDate;
    }

    public final SubscriptionTransaction copy(String transactionId, String productId, Date purchaseDate, boolean willRenew, boolean isRevoked, boolean isInGracePeriod, boolean isInBillingRetryPeriod, boolean isActive, Date expirationDate, Store store, LatestPeriodType offerType, String subscriptionGroupId) {
        Intrinsics.checkNotNullParameter(transactionId, "transactionId");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(purchaseDate, "purchaseDate");
        Intrinsics.checkNotNullParameter(store, "store");
        return new SubscriptionTransaction(transactionId, productId, purchaseDate, willRenew, isRevoked, isInGracePeriod, isInBillingRetryPeriod, isActive, expirationDate, store, offerType, subscriptionGroupId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubscriptionTransaction)) {
            return false;
        }
        SubscriptionTransaction subscriptionTransaction = (SubscriptionTransaction) other;
        return Intrinsics.areEqual(this.transactionId, subscriptionTransaction.transactionId) && Intrinsics.areEqual(this.productId, subscriptionTransaction.productId) && Intrinsics.areEqual(this.purchaseDate, subscriptionTransaction.purchaseDate) && this.willRenew == subscriptionTransaction.willRenew && this.isRevoked == subscriptionTransaction.isRevoked && this.isInGracePeriod == subscriptionTransaction.isInGracePeriod && this.isInBillingRetryPeriod == subscriptionTransaction.isInBillingRetryPeriod && this.isActive == subscriptionTransaction.isActive && Intrinsics.areEqual(this.expirationDate, subscriptionTransaction.expirationDate) && this.store == subscriptionTransaction.store && this.offerType == subscriptionTransaction.offerType && Intrinsics.areEqual(this.subscriptionGroupId, subscriptionTransaction.subscriptionGroupId);
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((this.transactionId.hashCode() * 31) + this.productId.hashCode()) * 31) + this.purchaseDate.hashCode()) * 31) + Boolean.hashCode(this.willRenew)) * 31) + Boolean.hashCode(this.isRevoked)) * 31) + Boolean.hashCode(this.isInGracePeriod)) * 31) + Boolean.hashCode(this.isInBillingRetryPeriod)) * 31) + Boolean.hashCode(this.isActive)) * 31;
        Date date = this.expirationDate;
        int iHashCode2 = (((iHashCode + (date == null ? 0 : date.hashCode())) * 31) + this.store.hashCode()) * 31;
        LatestPeriodType latestPeriodType = this.offerType;
        int iHashCode3 = (iHashCode2 + (latestPeriodType == null ? 0 : latestPeriodType.hashCode())) * 31;
        String str = this.subscriptionGroupId;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "SubscriptionTransaction(transactionId=" + this.transactionId + ", productId=" + this.productId + ", purchaseDate=" + this.purchaseDate + ", willRenew=" + this.willRenew + ", isRevoked=" + this.isRevoked + ", isInGracePeriod=" + this.isInGracePeriod + ", isInBillingRetryPeriod=" + this.isInBillingRetryPeriod + ", isActive=" + this.isActive + ", expirationDate=" + this.expirationDate + ", store=" + this.store + ", offerType=" + this.offerType + ", subscriptionGroupId=" + this.subscriptionGroupId + ")";
    }

    public /* synthetic */ SubscriptionTransaction(int i, String str, String str2, Date date, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Date date2, Store store, LatestPeriodType latestPeriodType, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (511 != (i & FrameMetricsAggregator.EVERY_DURATION)) {
            PluginExceptionsKt.throwMissingFieldException(i, FrameMetricsAggregator.EVERY_DURATION, SubscriptionTransaction$$serializer.INSTANCE.getDescriptor());
        }
        this.transactionId = str;
        this.productId = str2;
        this.purchaseDate = date;
        this.willRenew = z;
        this.isRevoked = z2;
        this.isInGracePeriod = z3;
        this.isInBillingRetryPeriod = z4;
        this.isActive = z5;
        this.expirationDate = date2;
        if ((i & 512) == 0) {
            this.store = Store.PLAY_STORE;
        } else {
            this.store = store;
        }
        if ((i & 1024) == 0) {
            this.offerType = null;
        } else {
            this.offerType = latestPeriodType;
        }
        if ((i & 2048) == 0) {
            this.subscriptionGroupId = null;
        } else {
            this.subscriptionGroupId = str3;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(SubscriptionTransaction self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.transactionId);
        output.encodeStringElement(serialDesc, 1, self.productId);
        output.encodeSerializableElement(serialDesc, 2, DateSerializer.INSTANCE, self.purchaseDate);
        output.encodeBooleanElement(serialDesc, 3, self.willRenew);
        output.encodeBooleanElement(serialDesc, 4, self.isRevoked);
        output.encodeBooleanElement(serialDesc, 5, self.isInGracePeriod);
        output.encodeBooleanElement(serialDesc, 6, self.isInBillingRetryPeriod);
        output.encodeBooleanElement(serialDesc, 7, self.isActive);
        output.encodeNullableSerializableElement(serialDesc, 8, DateSerializer.INSTANCE, self.expirationDate);
        if (output.shouldEncodeElementDefault(serialDesc, 9) || self.store != Store.PLAY_STORE) {
            output.encodeSerializableElement(serialDesc, 9, kSerializerArr[9], self.store);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 10) || self.offerType != null) {
            output.encodeNullableSerializableElement(serialDesc, 10, kSerializerArr[10], self.offerType);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 11) && self.subscriptionGroupId == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 11, StringSerializer.INSTANCE, self.subscriptionGroupId);
    }

    public SubscriptionTransaction(String transactionId, String productId, Date purchaseDate, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Date date, Store store, LatestPeriodType latestPeriodType, String str) {
        Intrinsics.checkNotNullParameter(transactionId, "transactionId");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(purchaseDate, "purchaseDate");
        Intrinsics.checkNotNullParameter(store, "store");
        this.transactionId = transactionId;
        this.productId = productId;
        this.purchaseDate = purchaseDate;
        this.willRenew = z;
        this.isRevoked = z2;
        this.isInGracePeriod = z3;
        this.isInBillingRetryPeriod = z4;
        this.isActive = z5;
        this.expirationDate = date;
        this.store = store;
        this.offerType = latestPeriodType;
        this.subscriptionGroupId = str;
    }

    public final String getTransactionId() {
        return this.transactionId;
    }

    public final String getProductId() {
        return this.productId;
    }

    public final Date getPurchaseDate() {
        return this.purchaseDate;
    }

    public final boolean getWillRenew() {
        return this.willRenew;
    }

    public final boolean isRevoked() {
        return this.isRevoked;
    }

    public final boolean isInGracePeriod() {
        return this.isInGracePeriod;
    }

    public final boolean isInBillingRetryPeriod() {
        return this.isInBillingRetryPeriod;
    }

    public final boolean isActive() {
        return this.isActive;
    }

    public final Date getExpirationDate() {
        return this.expirationDate;
    }

    public final Store getStore() {
        return this.store;
    }

    public /* synthetic */ SubscriptionTransaction(String str, String str2, Date date, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Date date2, Store store, LatestPeriodType latestPeriodType, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, date, z, z2, z3, z4, z5, date2, (i & 512) != 0 ? Store.PLAY_STORE : store, (i & 1024) != 0 ? null : latestPeriodType, (i & 2048) != 0 ? null : str3);
    }

    public final LatestPeriodType getOfferType() {
        return this.offerType;
    }

    public final String getSubscriptionGroupId() {
        return this.subscriptionGroupId;
    }

    /* JADX INFO: compiled from: SubscriptionTransaction.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/customer/SubscriptionTransaction$Companion;", "", "<init>", "()V", "empty", "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<SubscriptionTransaction> serializer() {
            return SubscriptionTransaction$$serializer.INSTANCE;
        }

        public final SubscriptionTransaction empty() {
            return new SubscriptionTransaction("", "", new Date(), false, false, false, false, false, (Date) null, Store.PLAY_STORE, (LatestPeriodType) null, (String) null, 2048, (DefaultConstructorMarker) null);
        }
    }
}
