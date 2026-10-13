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
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: ProductItem.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 %2\u00020\u0001:\u0002$%B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\tHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J%\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0001¢\u0006\u0002\b#R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013¨\u0006&"}, d2 = {"Lcom/superwall/sdk/models/product/UnknownStoreProduct;", "", "productIdentifier", "", "store", "Lcom/superwall/sdk/models/product/Store;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/models/product/Store;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/superwall/sdk/models/product/Store;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getProductIdentifier$annotations", "()V", "getProductIdentifier", "()Ljava/lang/String;", "getStore$annotations", "getStore", "()Lcom/superwall/sdk/models/product/Store;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class UnknownStoreProduct {
    private final String productIdentifier;
    private final Store store;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, Store.INSTANCE.serializer()};

    public static /* synthetic */ UnknownStoreProduct copy$default(UnknownStoreProduct unknownStoreProduct, String str, Store store, int i, Object obj) {
        if ((i & 1) != 0) {
            str = unknownStoreProduct.productIdentifier;
        }
        if ((i & 2) != 0) {
            store = unknownStoreProduct.store;
        }
        return unknownStoreProduct.copy(str, store);
    }

    @SerialName("product_identifier")
    public static /* synthetic */ void getProductIdentifier$annotations() {
    }

    @SerialName("store")
    public static /* synthetic */ void getStore$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Store getStore() {
        return this.store;
    }

    public final UnknownStoreProduct copy(String productIdentifier, Store store) {
        Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
        Intrinsics.checkNotNullParameter(store, "store");
        return new UnknownStoreProduct(productIdentifier, store);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UnknownStoreProduct)) {
            return false;
        }
        UnknownStoreProduct unknownStoreProduct = (UnknownStoreProduct) other;
        return Intrinsics.areEqual(this.productIdentifier, unknownStoreProduct.productIdentifier) && this.store == unknownStoreProduct.store;
    }

    public int hashCode() {
        return (this.productIdentifier.hashCode() * 31) + this.store.hashCode();
    }

    public String toString() {
        return "UnknownStoreProduct(productIdentifier=" + this.productIdentifier + ", store=" + this.store + ")";
    }

    /* JADX INFO: compiled from: ProductItem.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/UnknownStoreProduct$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/UnknownStoreProduct;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<UnknownStoreProduct> serializer() {
            return UnknownStoreProduct$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ UnknownStoreProduct(int i, String str, Store store, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, UnknownStoreProduct$$serializer.INSTANCE.getDescriptor());
        }
        this.productIdentifier = str;
        if ((i & 2) == 0) {
            this.store = Store.OTHER;
        } else {
            this.store = store;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(UnknownStoreProduct self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.productIdentifier);
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && self.store == Store.OTHER) {
            return;
        }
        output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.store);
    }

    public UnknownStoreProduct(String productIdentifier, Store store) {
        Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
        Intrinsics.checkNotNullParameter(store, "store");
        this.productIdentifier = productIdentifier;
        this.store = store;
    }

    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    public final Store getStore() {
        return this.store;
    }

    public /* synthetic */ UnknownStoreProduct(String str, Store store, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? Store.OTHER : store);
    }
}
