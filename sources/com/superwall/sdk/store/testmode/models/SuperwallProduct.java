package com.superwall.sdk.store.testmode.models;

import expo.modules.notifications.service.NotificationsService;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: SuperwallProduct.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 :2\u00020\u0001:\u00029:BW\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000f\u0010\u0010Bg\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u000f\u0010\u0015J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0006HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000f\u0010)\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J]\u0010+\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010/\u001a\u00020\u0012HÖ\u0001J\t\u00100\u001a\u00020\u0003HÖ\u0001J%\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u00002\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u0001¢\u0006\u0002\b8R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0019¨\u0006;"}, d2 = {"Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;", "", "objectType", "", NotificationsService.IDENTIFIER_KEY, "platform", "Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;", "price", "Lcom/superwall/sdk/store/testmode/models/SuperwallProductPrice;", "subscription", "Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;", "entitlements", "", "Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;", "storefront", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;Lcom/superwall/sdk/store/testmode/models/SuperwallProductPrice;Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;Ljava/util/List;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;Lcom/superwall/sdk/store/testmode/models/SuperwallProductPrice;Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getObjectType$annotations", "()V", "getObjectType", "()Ljava/lang/String;", "getIdentifier", "getPlatform", "()Lcom/superwall/sdk/store/testmode/models/SuperwallProductPlatform;", "getPrice", "()Lcom/superwall/sdk/store/testmode/models/SuperwallProductPrice;", "getSubscription", "()Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;", "getEntitlements", "()Ljava/util/List;", "getStorefront", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class SuperwallProduct {
    private final List<SuperwallEntitlementRef> entitlements;
    private final String identifier;
    private final String objectType;
    private final SuperwallProductPlatform platform;
    private final SuperwallProductPrice price;
    private final String storefront;
    private final SuperwallProductSubscription subscription;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, SuperwallProductPlatform.INSTANCE.serializer(), null, null, new ArrayListSerializer(SuperwallEntitlementRef$$serializer.INSTANCE), null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SuperwallProduct copy$default(SuperwallProduct superwallProduct, String str, String str2, SuperwallProductPlatform superwallProductPlatform, SuperwallProductPrice superwallProductPrice, SuperwallProductSubscription superwallProductSubscription, List list, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = superwallProduct.objectType;
        }
        if ((i & 2) != 0) {
            str2 = superwallProduct.identifier;
        }
        if ((i & 4) != 0) {
            superwallProductPlatform = superwallProduct.platform;
        }
        if ((i & 8) != 0) {
            superwallProductPrice = superwallProduct.price;
        }
        if ((i & 16) != 0) {
            superwallProductSubscription = superwallProduct.subscription;
        }
        if ((i & 32) != 0) {
            list = superwallProduct.entitlements;
        }
        if ((i & 64) != 0) {
            str3 = superwallProduct.storefront;
        }
        List list2 = list;
        String str4 = str3;
        SuperwallProductSubscription superwallProductSubscription2 = superwallProductSubscription;
        SuperwallProductPlatform superwallProductPlatform2 = superwallProductPlatform;
        return superwallProduct.copy(str, str2, superwallProductPlatform2, superwallProductPrice, superwallProductSubscription2, list2, str4);
    }

    @SerialName("object")
    public static /* synthetic */ void getObjectType$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getObjectType() {
        return this.objectType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIdentifier() {
        return this.identifier;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final SuperwallProductPlatform getPlatform() {
        return this.platform;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final SuperwallProductPrice getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final SuperwallProductSubscription getSubscription() {
        return this.subscription;
    }

    public final List<SuperwallEntitlementRef> component6() {
        return this.entitlements;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getStorefront() {
        return this.storefront;
    }

    public final SuperwallProduct copy(String objectType, String identifier, SuperwallProductPlatform platform, SuperwallProductPrice price, SuperwallProductSubscription subscription, List<SuperwallEntitlementRef> entitlements, String storefront) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        return new SuperwallProduct(objectType, identifier, platform, price, subscription, entitlements, storefront);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SuperwallProduct)) {
            return false;
        }
        SuperwallProduct superwallProduct = (SuperwallProduct) other;
        return Intrinsics.areEqual(this.objectType, superwallProduct.objectType) && Intrinsics.areEqual(this.identifier, superwallProduct.identifier) && this.platform == superwallProduct.platform && Intrinsics.areEqual(this.price, superwallProduct.price) && Intrinsics.areEqual(this.subscription, superwallProduct.subscription) && Intrinsics.areEqual(this.entitlements, superwallProduct.entitlements) && Intrinsics.areEqual(this.storefront, superwallProduct.storefront);
    }

    public int hashCode() {
        String str = this.objectType;
        int iHashCode = (((((str == null ? 0 : str.hashCode()) * 31) + this.identifier.hashCode()) * 31) + this.platform.hashCode()) * 31;
        SuperwallProductPrice superwallProductPrice = this.price;
        int iHashCode2 = (iHashCode + (superwallProductPrice == null ? 0 : superwallProductPrice.hashCode())) * 31;
        SuperwallProductSubscription superwallProductSubscription = this.subscription;
        int iHashCode3 = (((iHashCode2 + (superwallProductSubscription == null ? 0 : superwallProductSubscription.hashCode())) * 31) + this.entitlements.hashCode()) * 31;
        String str2 = this.storefront;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "SuperwallProduct(objectType=" + this.objectType + ", identifier=" + this.identifier + ", platform=" + this.platform + ", price=" + this.price + ", subscription=" + this.subscription + ", entitlements=" + this.entitlements + ", storefront=" + this.storefront + ")";
    }

    /* JADX INFO: compiled from: SuperwallProduct.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/store/testmode/models/SuperwallProduct$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<SuperwallProduct> serializer() {
            return SuperwallProduct$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SuperwallProduct(int i, String str, String str2, SuperwallProductPlatform superwallProductPlatform, SuperwallProductPrice superwallProductPrice, SuperwallProductSubscription superwallProductSubscription, List list, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (6 != (i & 6)) {
            PluginExceptionsKt.throwMissingFieldException(i, 6, SuperwallProduct$$serializer.INSTANCE.getDescriptor());
        }
        if ((i & 1) == 0) {
            this.objectType = null;
        } else {
            this.objectType = str;
        }
        this.identifier = str2;
        this.platform = superwallProductPlatform;
        if ((i & 8) == 0) {
            this.price = null;
        } else {
            this.price = superwallProductPrice;
        }
        if ((i & 16) == 0) {
            this.subscription = null;
        } else {
            this.subscription = superwallProductSubscription;
        }
        if ((i & 32) == 0) {
            this.entitlements = CollectionsKt.emptyList();
        } else {
            this.entitlements = list;
        }
        if ((i & 64) == 0) {
            this.storefront = null;
        } else {
            this.storefront = str3;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(SuperwallProduct self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.objectType != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.objectType);
        }
        output.encodeStringElement(serialDesc, 1, self.identifier);
        output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.platform);
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.price != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, SuperwallProductPrice$$serializer.INSTANCE, self.price);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.subscription != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, SuperwallProductSubscription$$serializer.INSTANCE, self.subscription);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || !Intrinsics.areEqual(self.entitlements, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 5, kSerializerArr[5], self.entitlements);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 6) && self.storefront == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.storefront);
    }

    public SuperwallProduct(String str, String identifier, SuperwallProductPlatform platform, SuperwallProductPrice superwallProductPrice, SuperwallProductSubscription superwallProductSubscription, List<SuperwallEntitlementRef> entitlements, String str2) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        this.objectType = str;
        this.identifier = identifier;
        this.platform = platform;
        this.price = superwallProductPrice;
        this.subscription = superwallProductSubscription;
        this.entitlements = entitlements;
        this.storefront = str2;
    }

    public final String getObjectType() {
        return this.objectType;
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final SuperwallProductPlatform getPlatform() {
        return this.platform;
    }

    public final SuperwallProductPrice getPrice() {
        return this.price;
    }

    public final SuperwallProductSubscription getSubscription() {
        return this.subscription;
    }

    public /* synthetic */ SuperwallProduct(String str, String str2, SuperwallProductPlatform superwallProductPlatform, SuperwallProductPrice superwallProductPrice, SuperwallProductSubscription superwallProductSubscription, List list, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, str2, superwallProductPlatform, (i & 8) != 0 ? null : superwallProductPrice, (i & 16) != 0 ? null : superwallProductSubscription, (i & 32) != 0 ? CollectionsKt.emptyList() : list, (i & 64) != 0 ? null : str3);
    }

    public final List<SuperwallEntitlementRef> getEntitlements() {
        return this.entitlements;
    }

    public final String getStorefront() {
        return this.storefront;
    }
}
