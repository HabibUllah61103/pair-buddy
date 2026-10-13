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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 '2\u00020\u0001:\u0002&'B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\tHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001J%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0001¢\u0006\u0002\b%R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0013¨\u0006("}, d2 = {"Lcom/superwall/sdk/models/product/AppStoreProduct;", "", "store", "Lcom/superwall/sdk/models/product/Store;", "productIdentifier", "", "<init>", "(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/product/Store;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getStore$annotations", "()V", "getStore", "()Lcom/superwall/sdk/models/product/Store;", "getProductIdentifier$annotations", "getProductIdentifier", "()Ljava/lang/String;", "fullIdentifier", "getFullIdentifier", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class AppStoreProduct {
    private final String productIdentifier;
    private final Store store;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {Store.INSTANCE.serializer(), null};

    public static /* synthetic */ AppStoreProduct copy$default(AppStoreProduct appStoreProduct, Store store, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            store = appStoreProduct.store;
        }
        if ((i & 2) != 0) {
            str = appStoreProduct.productIdentifier;
        }
        return appStoreProduct.copy(store, str);
    }

    @SerialName("product_identifier")
    public static /* synthetic */ void getProductIdentifier$annotations() {
    }

    @SerialName("store")
    public static /* synthetic */ void getStore$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Store getStore() {
        return this.store;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    public final AppStoreProduct copy(Store store, String productIdentifier) {
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
        return new AppStoreProduct(store, productIdentifier);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppStoreProduct)) {
            return false;
        }
        AppStoreProduct appStoreProduct = (AppStoreProduct) other;
        return this.store == appStoreProduct.store && Intrinsics.areEqual(this.productIdentifier, appStoreProduct.productIdentifier);
    }

    public int hashCode() {
        return (this.store.hashCode() * 31) + this.productIdentifier.hashCode();
    }

    public String toString() {
        return "AppStoreProduct(store=" + this.store + ", productIdentifier=" + this.productIdentifier + ")";
    }

    /* JADX INFO: compiled from: ProductItem.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/AppStoreProduct$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/AppStoreProduct;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<AppStoreProduct> serializer() {
            return AppStoreProduct$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ AppStoreProduct(int i, Store store, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (2 != (i & 2)) {
            PluginExceptionsKt.throwMissingFieldException(i, 2, AppStoreProduct$$serializer.INSTANCE.getDescriptor());
        }
        if ((i & 1) == 0) {
            this.store = Store.APP_STORE;
        } else {
            this.store = store;
        }
        this.productIdentifier = str;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(AppStoreProduct self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.store != Store.APP_STORE) {
            output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.store);
        }
        output.encodeStringElement(serialDesc, 1, self.productIdentifier);
    }

    public AppStoreProduct(Store store, String productIdentifier) {
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
        this.store = store;
        this.productIdentifier = productIdentifier;
    }

    public final Store getStore() {
        return this.store;
    }

    public /* synthetic */ AppStoreProduct(Store store, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Store.APP_STORE : store, str);
    }

    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    public final String getFullIdentifier() {
        return this.productIdentifier;
    }
}
