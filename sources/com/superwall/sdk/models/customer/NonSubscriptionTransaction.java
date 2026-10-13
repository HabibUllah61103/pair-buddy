package com.superwall.sdk.models.customer;

import com.superwall.sdk.models.product.Store;
import com.superwall.sdk.models.serialization.DateSerializer;
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

/* JADX INFO: compiled from: NonSubscriptionTransaction.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 52\u00020\u0001:\u000256B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rBS\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\f\u0010\u0012J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0006HÆ\u0003J\t\u0010%\u001a\u00020\bHÆ\u0003J\t\u0010&\u001a\u00020\bHÆ\u0003J\t\u0010'\u001a\u00020\u000bHÆ\u0003JE\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010)\u001a\u00020\b2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\u000fHÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001J%\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0001¢\u0006\u0002\b4R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0018\u0010\u0016R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u0007\u0010\u001dR\u001c\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001e\u0010\u0014\u001a\u0004\b\t\u0010\u001dR\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0014\u001a\u0004\b \u0010!¨\u00067"}, d2 = {"Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;", "", "transactionId", "", "productId", "purchaseDate", "Ljava/util/Date;", "isConsumable", "", "isRevoked", "store", "Lcom/superwall/sdk/models/product/Store;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;ZZLcom/superwall/sdk/models/product/Store;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getTransactionId$annotations", "()V", "getTransactionId", "()Ljava/lang/String;", "getProductId$annotations", "getProductId", "getPurchaseDate$annotations", "getPurchaseDate", "()Ljava/util/Date;", "isConsumable$annotations", "()Z", "isRevoked$annotations", "getStore$annotations", "getStore", "()Lcom/superwall/sdk/models/product/Store;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class NonSubscriptionTransaction {
    private final boolean isConsumable;
    private final boolean isRevoked;
    private final String productId;
    private final Date purchaseDate;
    private final Store store;
    private final String transactionId;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, Store.INSTANCE.serializer()};

    public static /* synthetic */ NonSubscriptionTransaction copy$default(NonSubscriptionTransaction nonSubscriptionTransaction, String str, String str2, Date date, boolean z, boolean z2, Store store, int i, Object obj) {
        if ((i & 1) != 0) {
            str = nonSubscriptionTransaction.transactionId;
        }
        if ((i & 2) != 0) {
            str2 = nonSubscriptionTransaction.productId;
        }
        if ((i & 4) != 0) {
            date = nonSubscriptionTransaction.purchaseDate;
        }
        if ((i & 8) != 0) {
            z = nonSubscriptionTransaction.isConsumable;
        }
        if ((i & 16) != 0) {
            z2 = nonSubscriptionTransaction.isRevoked;
        }
        if ((i & 32) != 0) {
            store = nonSubscriptionTransaction.store;
        }
        boolean z3 = z2;
        Store store2 = store;
        return nonSubscriptionTransaction.copy(str, str2, date, z, z3, store2);
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

    @SerialName("transactionId")
    public static /* synthetic */ void getTransactionId$annotations() {
    }

    @SerialName("isConsumable")
    public static /* synthetic */ void isConsumable$annotations() {
    }

    @SerialName("isRevoked")
    public static /* synthetic */ void isRevoked$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTransactionId() {
        return this.transactionId;
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
    public final boolean getIsConsumable() {
        return this.isConsumable;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getIsRevoked() {
        return this.isRevoked;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Store getStore() {
        return this.store;
    }

    public final NonSubscriptionTransaction copy(String transactionId, String productId, Date purchaseDate, boolean isConsumable, boolean isRevoked, Store store) {
        Intrinsics.checkNotNullParameter(transactionId, "transactionId");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(purchaseDate, "purchaseDate");
        Intrinsics.checkNotNullParameter(store, "store");
        return new NonSubscriptionTransaction(transactionId, productId, purchaseDate, isConsumable, isRevoked, store);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NonSubscriptionTransaction)) {
            return false;
        }
        NonSubscriptionTransaction nonSubscriptionTransaction = (NonSubscriptionTransaction) other;
        return Intrinsics.areEqual(this.transactionId, nonSubscriptionTransaction.transactionId) && Intrinsics.areEqual(this.productId, nonSubscriptionTransaction.productId) && Intrinsics.areEqual(this.purchaseDate, nonSubscriptionTransaction.purchaseDate) && this.isConsumable == nonSubscriptionTransaction.isConsumable && this.isRevoked == nonSubscriptionTransaction.isRevoked && this.store == nonSubscriptionTransaction.store;
    }

    public int hashCode() {
        return (((((((((this.transactionId.hashCode() * 31) + this.productId.hashCode()) * 31) + this.purchaseDate.hashCode()) * 31) + Boolean.hashCode(this.isConsumable)) * 31) + Boolean.hashCode(this.isRevoked)) * 31) + this.store.hashCode();
    }

    public String toString() {
        return "NonSubscriptionTransaction(transactionId=" + this.transactionId + ", productId=" + this.productId + ", purchaseDate=" + this.purchaseDate + ", isConsumable=" + this.isConsumable + ", isRevoked=" + this.isRevoked + ", store=" + this.store + ")";
    }

    public /* synthetic */ NonSubscriptionTransaction(int i, String str, String str2, Date date, boolean z, boolean z2, Store store, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i & 31)) {
            PluginExceptionsKt.throwMissingFieldException(i, 31, NonSubscriptionTransaction$$serializer.INSTANCE.getDescriptor());
        }
        this.transactionId = str;
        this.productId = str2;
        this.purchaseDate = date;
        this.isConsumable = z;
        this.isRevoked = z2;
        if ((i & 32) == 0) {
            this.store = Store.PLAY_STORE;
        } else {
            this.store = store;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(NonSubscriptionTransaction self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.transactionId);
        output.encodeStringElement(serialDesc, 1, self.productId);
        output.encodeSerializableElement(serialDesc, 2, DateSerializer.INSTANCE, self.purchaseDate);
        output.encodeBooleanElement(serialDesc, 3, self.isConsumable);
        output.encodeBooleanElement(serialDesc, 4, self.isRevoked);
        if (!output.shouldEncodeElementDefault(serialDesc, 5) && self.store == Store.PLAY_STORE) {
            return;
        }
        output.encodeSerializableElement(serialDesc, 5, kSerializerArr[5], self.store);
    }

    public NonSubscriptionTransaction(String transactionId, String productId, Date purchaseDate, boolean z, boolean z2, Store store) {
        Intrinsics.checkNotNullParameter(transactionId, "transactionId");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(purchaseDate, "purchaseDate");
        Intrinsics.checkNotNullParameter(store, "store");
        this.transactionId = transactionId;
        this.productId = productId;
        this.purchaseDate = purchaseDate;
        this.isConsumable = z;
        this.isRevoked = z2;
        this.store = store;
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

    public final boolean isConsumable() {
        return this.isConsumable;
    }

    public final boolean isRevoked() {
        return this.isRevoked;
    }

    public final Store getStore() {
        return this.store;
    }

    public /* synthetic */ NonSubscriptionTransaction(String str, String str2, Date date, boolean z, boolean z2, Store store, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, date, z, z2, (i & 32) != 0 ? Store.PLAY_STORE : store);
    }

    /* JADX INFO: compiled from: NonSubscriptionTransaction.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction$Companion;", "", "<init>", "()V", "empty", "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<NonSubscriptionTransaction> serializer() {
            return NonSubscriptionTransaction$$serializer.INSTANCE;
        }

        public final NonSubscriptionTransaction empty() {
            return new NonSubscriptionTransaction("", "", new Date(), false, false, Store.PLAY_STORE);
        }
    }
}
