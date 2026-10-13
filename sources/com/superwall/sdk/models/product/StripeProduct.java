package com.superwall.sdk.models.product;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: ProductItem.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 22\u00020\u0001:\u000212B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000eJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u001aJ8\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\bHÖ\u0001J\t\u0010(\u001a\u00020\u0005HÖ\u0001J%\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0001¢\u0006\u0002\b0R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0010\u001a\u0004\b\u0017\u0010\u0015R \u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u001b\u0012\u0004\b\u0018\u0010\u0010\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001c\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0015¨\u00063"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProduct;", "", "store", "Lcom/superwall/sdk/models/product/Store;", "environment", "", "productIdentifier", "trialDays", "", "<init>", "(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getStore$annotations", "()V", "getStore", "()Lcom/superwall/sdk/models/product/Store;", "getEnvironment$annotations", "getEnvironment", "()Ljava/lang/String;", "getProductIdentifier$annotations", "getProductIdentifier", "getTrialDays$annotations", "getTrialDays", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "fullIdentifier", "getFullIdentifier", "component1", "component2", "component3", "component4", "copy", "(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/superwall/sdk/models/product/StripeProduct;", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class StripeProduct {
    private final String environment;
    private final String productIdentifier;
    private final Store store;
    private final Integer trialDays;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {Store.INSTANCE.serializer(), null, null, null};

    public static /* synthetic */ StripeProduct copy$default(StripeProduct stripeProduct, Store store, String str, String str2, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            store = stripeProduct.store;
        }
        if ((i & 2) != 0) {
            str = stripeProduct.environment;
        }
        if ((i & 4) != 0) {
            str2 = stripeProduct.productIdentifier;
        }
        if ((i & 8) != 0) {
            num = stripeProduct.trialDays;
        }
        return stripeProduct.copy(store, str, str2, num);
    }

    @SerialName("environment")
    public static /* synthetic */ void getEnvironment$annotations() {
    }

    @SerialName("product_identifier")
    public static /* synthetic */ void getProductIdentifier$annotations() {
    }

    @SerialName("store")
    public static /* synthetic */ void getStore$annotations() {
    }

    @SerialName("trial_days")
    public static /* synthetic */ void getTrialDays$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Store getStore() {
        return this.store;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEnvironment() {
        return this.environment;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getTrialDays() {
        return this.trialDays;
    }

    public final StripeProduct copy(Store store, String environment, String productIdentifier, Integer trialDays) {
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
        return new StripeProduct(store, environment, productIdentifier, trialDays);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StripeProduct)) {
            return false;
        }
        StripeProduct stripeProduct = (StripeProduct) other;
        return this.store == stripeProduct.store && Intrinsics.areEqual(this.environment, stripeProduct.environment) && Intrinsics.areEqual(this.productIdentifier, stripeProduct.productIdentifier) && Intrinsics.areEqual(this.trialDays, stripeProduct.trialDays);
    }

    public int hashCode() {
        int iHashCode = ((((this.store.hashCode() * 31) + this.environment.hashCode()) * 31) + this.productIdentifier.hashCode()) * 31;
        Integer num = this.trialDays;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "StripeProduct(store=" + this.store + ", environment=" + this.environment + ", productIdentifier=" + this.productIdentifier + ", trialDays=" + this.trialDays + ")";
    }

    /* JADX INFO: compiled from: ProductItem.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProduct$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/StripeProduct;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<StripeProduct> serializer() {
            return StripeProduct$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ StripeProduct(int i, Store store, String str, String str2, Integer num, SerializationConstructorMarker serializationConstructorMarker) {
        if (6 != (i & 6)) {
            PluginExceptionsKt.throwMissingFieldException(i, 6, StripeProduct$$serializer.INSTANCE.getDescriptor());
        }
        this.store = (i & 1) == 0 ? Store.STRIPE : store;
        this.environment = str;
        this.productIdentifier = str2;
        if ((i & 8) == 0) {
            this.trialDays = null;
        } else {
            this.trialDays = num;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(StripeProduct self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.store != Store.STRIPE) {
            output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.store);
        }
        output.encodeStringElement(serialDesc, 1, self.environment);
        output.encodeStringElement(serialDesc, 2, self.productIdentifier);
        if (!output.shouldEncodeElementDefault(serialDesc, 3) && self.trialDays == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 3, IntSerializer.INSTANCE, self.trialDays);
    }

    public StripeProduct(Store store, String environment, String productIdentifier, Integer num) {
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
        this.store = store;
        this.environment = environment;
        this.productIdentifier = productIdentifier;
        this.trialDays = num;
    }

    public final Store getStore() {
        return this.store;
    }

    public /* synthetic */ StripeProduct(Store store, String str, String str2, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Store.STRIPE : store, str, str2, (i & 8) != 0 ? null : num);
    }

    public final String getEnvironment() {
        return this.environment;
    }

    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    public final Integer getTrialDays() {
        return this.trialDays;
    }

    public final String getFullIdentifier() {
        return this.productIdentifier;
    }
}
