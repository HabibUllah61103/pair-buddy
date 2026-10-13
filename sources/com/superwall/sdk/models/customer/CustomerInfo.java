package com.superwall.sdk.models.customer;

import com.android.billingclient.api.BillingClient;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.Entitlement$$serializer;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.internal.WebRedemptionResponse;
import com.superwall.sdk.models.product.Store;
import com.superwall.sdk.network.JsonFactory;
import com.superwall.sdk.storage.LatestDeviceCustomerInfo;
import com.superwall.sdk.storage.LatestRedemptionResponse;
import com.superwall.sdk.storage.Storage;
import com.superwall.sdk.storage.core_data.ConvertersKt;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.Transient;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: compiled from: CustomerInfo.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 <2\u00020\u0001:\u0002<=BE\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eB]\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\r\u0010\u0013J\u0014\u0010'\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\u00010(J\b\u0010)\u001a\u00020\bH\u0016J\u000f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\t\u0010,\u001a\u00020\bHÆ\u0003J\u000f\u0010-\u001a\b\u0012\u0004\u0012\u00020\n0\u0003HÆ\u0003J\u000e\u0010.\u001a\u00020\fHÀ\u0003¢\u0006\u0002\b/JM\u00100\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\u0013\u00101\u001a\u00020\f2\b\u00102\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00103\u001a\u00020\u0010HÖ\u0001J%\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u00002\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0001¢\u0006\u0002\b;R\"\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\"\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017R\u001c\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001a\u0010\u0015\u001a\u0004\b\u001b\u0010\u001cR\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001d\u0010\u0015\u001a\u0004\b\u001e\u0010\u0017R\u001c\u0010\u000b\u001a\u00020\f8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0015\u001a\u0004\b \u0010!R \u0010\"\u001a\b\u0012\u0004\u0012\u00020\b0#8FX\u0087\u0004¢\u0006\f\u0012\u0004\b$\u0010\u0015\u001a\u0004\b%\u0010&¨\u0006>"}, d2 = {"Lcom/superwall/sdk/models/customer/CustomerInfo;", "", BillingClient.FeatureType.SUBSCRIPTIONS, "", "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;", "nonSubscriptions", "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;", "userId", "", "entitlements", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "isPlaceholder", "", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getSubscriptions$annotations", "()V", "getSubscriptions", "()Ljava/util/List;", "getNonSubscriptions$annotations", "getNonSubscriptions", "getUserId$annotations", "getUserId", "()Ljava/lang/String;", "getEntitlements$annotations", "getEntitlements", "isPlaceholder$superwall_release$annotations", "isPlaceholder$superwall_release", "()Z", "activeSubscriptionProductIds", "", "getActiveSubscriptionProductIds$annotations", "getActiveSubscriptionProductIds", "()Ljava/util/Set;", "toParams", "", "toString", "component1", "component2", "component3", "component4", "component5", "component5$superwall_release", "copy", "equals", "other", "hashCode", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class CustomerInfo {
    private final List<Entitlement> entitlements;
    private final boolean isPlaceholder;
    private final List<NonSubscriptionTransaction> nonSubscriptions;
    private final List<SubscriptionTransaction> subscriptions;
    private final String userId;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new ArrayListSerializer(SubscriptionTransaction$$serializer.INSTANCE), new ArrayListSerializer(NonSubscriptionTransaction$$serializer.INSTANCE), null, new ArrayListSerializer(Entitlement$$serializer.INSTANCE), null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CustomerInfo copy$default(CustomerInfo customerInfo, List list, List list2, String str, List list3, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            list = customerInfo.subscriptions;
        }
        if ((i & 2) != 0) {
            list2 = customerInfo.nonSubscriptions;
        }
        if ((i & 4) != 0) {
            str = customerInfo.userId;
        }
        if ((i & 8) != 0) {
            list3 = customerInfo.entitlements;
        }
        if ((i & 16) != 0) {
            z = customerInfo.isPlaceholder;
        }
        boolean z2 = z;
        String str2 = str;
        return customerInfo.copy(list, list2, str2, list3, z2);
    }

    @Transient
    public static /* synthetic */ void getActiveSubscriptionProductIds$annotations() {
    }

    @SerialName("entitlements")
    public static /* synthetic */ void getEntitlements$annotations() {
    }

    @SerialName("nonSubscriptions")
    public static /* synthetic */ void getNonSubscriptions$annotations() {
    }

    @SerialName(BillingClient.FeatureType.SUBSCRIPTIONS)
    public static /* synthetic */ void getSubscriptions$annotations() {
    }

    @SerialName("userId")
    public static /* synthetic */ void getUserId$annotations() {
    }

    @SerialName("isPlaceholder")
    public static /* synthetic */ void isPlaceholder$superwall_release$annotations() {
    }

    public final List<SubscriptionTransaction> component1() {
        return this.subscriptions;
    }

    public final List<NonSubscriptionTransaction> component2() {
        return this.nonSubscriptions;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    public final List<Entitlement> component4() {
        return this.entitlements;
    }

    /* JADX INFO: renamed from: component5$superwall_release, reason: from getter */
    public final boolean getIsPlaceholder() {
        return this.isPlaceholder;
    }

    public final CustomerInfo copy(List<SubscriptionTransaction> subscriptions, List<NonSubscriptionTransaction> nonSubscriptions, String userId, List<Entitlement> entitlements, boolean isPlaceholder) {
        Intrinsics.checkNotNullParameter(subscriptions, "subscriptions");
        Intrinsics.checkNotNullParameter(nonSubscriptions, "nonSubscriptions");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        return new CustomerInfo(subscriptions, nonSubscriptions, userId, entitlements, isPlaceholder);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CustomerInfo)) {
            return false;
        }
        CustomerInfo customerInfo = (CustomerInfo) other;
        return Intrinsics.areEqual(this.subscriptions, customerInfo.subscriptions) && Intrinsics.areEqual(this.nonSubscriptions, customerInfo.nonSubscriptions) && Intrinsics.areEqual(this.userId, customerInfo.userId) && Intrinsics.areEqual(this.entitlements, customerInfo.entitlements) && this.isPlaceholder == customerInfo.isPlaceholder;
    }

    public int hashCode() {
        return (((((((this.subscriptions.hashCode() * 31) + this.nonSubscriptions.hashCode()) * 31) + this.userId.hashCode()) * 31) + this.entitlements.hashCode()) * 31) + Boolean.hashCode(this.isPlaceholder);
    }

    public /* synthetic */ CustomerInfo(int i, List list, List list2, String str, List list3, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
        if (11 != (i & 11)) {
            PluginExceptionsKt.throwMissingFieldException(i, 11, CustomerInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.subscriptions = list;
        this.nonSubscriptions = list2;
        if ((i & 4) == 0) {
            this.userId = "";
        } else {
            this.userId = str;
        }
        this.entitlements = list3;
        if ((i & 16) == 0) {
            this.isPlaceholder = false;
        } else {
            this.isPlaceholder = z;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(CustomerInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.subscriptions);
        output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.nonSubscriptions);
        if (output.shouldEncodeElementDefault(serialDesc, 2) || !Intrinsics.areEqual(self.userId, "")) {
            output.encodeStringElement(serialDesc, 2, self.userId);
        }
        output.encodeSerializableElement(serialDesc, 3, kSerializerArr[3], self.entitlements);
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.isPlaceholder) {
            output.encodeBooleanElement(serialDesc, 4, self.isPlaceholder);
        }
    }

    public CustomerInfo(List<SubscriptionTransaction> subscriptions, List<NonSubscriptionTransaction> nonSubscriptions, String userId, List<Entitlement> entitlements, boolean z) {
        Intrinsics.checkNotNullParameter(subscriptions, "subscriptions");
        Intrinsics.checkNotNullParameter(nonSubscriptions, "nonSubscriptions");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        this.subscriptions = subscriptions;
        this.nonSubscriptions = nonSubscriptions;
        this.userId = userId;
        this.entitlements = entitlements;
        this.isPlaceholder = z;
    }

    public final List<SubscriptionTransaction> getSubscriptions() {
        return this.subscriptions;
    }

    public final List<NonSubscriptionTransaction> getNonSubscriptions() {
        return this.nonSubscriptions;
    }

    public final String getUserId() {
        return this.userId;
    }

    public /* synthetic */ CustomerInfo(List list, List list2, String str, List list3, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, (i & 4) != 0 ? "" : str, list3, (i & 16) != 0 ? false : z);
    }

    public final List<Entitlement> getEntitlements() {
        return this.entitlements;
    }

    public final boolean isPlaceholder$superwall_release() {
        return this.isPlaceholder;
    }

    public final Set<String> getActiveSubscriptionProductIds() {
        List<SubscriptionTransaction> list = this.subscriptions;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((SubscriptionTransaction) obj).isActive()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((SubscriptionTransaction) it.next()).getProductId());
        }
        return CollectionsKt.toSet(arrayList3);
    }

    public final Map<String, Object> toParams() {
        if (this.isPlaceholder) {
            return MapsKt.emptyMap();
        }
        JsonObject jsonObject = JsonElementKt.getJsonObject(JsonFactory.INSTANCE.getJSON().encodeToJsonElement(INSTANCE.serializer(), this));
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(jsonObject.size()));
        Iterator<T> it = jsonObject.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), ConvertersKt.convertFromJsonElement((JsonElement) entry.getValue()));
        }
        return linkedHashMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder sbAppend = sb.append("CustomerInfo(");
        Intrinsics.checkNotNullExpressionValue(sbAppend, "append(...)");
        Intrinsics.checkNotNullExpressionValue(sbAppend.append('\n'), "append(...)");
        StringBuilder sbAppend2 = sb.append("  userId=" + this.userId + ",");
        Intrinsics.checkNotNullExpressionValue(sbAppend2, "append(...)");
        Intrinsics.checkNotNullExpressionValue(sbAppend2.append('\n'), "append(...)");
        StringBuilder sbAppend3 = sb.append("  isPlaceholder=" + this.isPlaceholder + ",");
        Intrinsics.checkNotNullExpressionValue(sbAppend3, "append(...)");
        Intrinsics.checkNotNullExpressionValue(sbAppend3.append('\n'), "append(...)");
        StringBuilder sbAppend4 = sb.append("  subscriptions=[");
        Intrinsics.checkNotNullExpressionValue(sbAppend4, "append(...)");
        Intrinsics.checkNotNullExpressionValue(sbAppend4.append('\n'), "append(...)");
        int i = 0;
        int i2 = 0;
        for (Object obj : this.subscriptions) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            StringBuilder sbAppend5 = sb.append("    #" + i2 + " " + ((SubscriptionTransaction) obj));
            Intrinsics.checkNotNullExpressionValue(sbAppend5, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend5.append('\n'), "append(...)");
            i2 = i3;
        }
        StringBuilder sbAppend6 = sb.append("  ],");
        Intrinsics.checkNotNullExpressionValue(sbAppend6, "append(...)");
        Intrinsics.checkNotNullExpressionValue(sbAppend6.append('\n'), "append(...)");
        StringBuilder sbAppend7 = sb.append("  nonSubscriptions=[");
        Intrinsics.checkNotNullExpressionValue(sbAppend7, "append(...)");
        Intrinsics.checkNotNullExpressionValue(sbAppend7.append('\n'), "append(...)");
        int i4 = 0;
        for (Object obj2 : this.nonSubscriptions) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            StringBuilder sbAppend8 = sb.append("    #" + i4 + " " + ((NonSubscriptionTransaction) obj2));
            Intrinsics.checkNotNullExpressionValue(sbAppend8, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend8.append('\n'), "append(...)");
            i4 = i5;
        }
        StringBuilder sbAppend9 = sb.append("  ],");
        Intrinsics.checkNotNullExpressionValue(sbAppend9, "append(...)");
        Intrinsics.checkNotNullExpressionValue(sbAppend9.append('\n'), "append(...)");
        StringBuilder sbAppend10 = sb.append("  entitlements=[");
        Intrinsics.checkNotNullExpressionValue(sbAppend10, "append(...)");
        Intrinsics.checkNotNullExpressionValue(sbAppend10.append('\n'), "append(...)");
        for (Object obj3 : this.entitlements) {
            int i6 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            StringBuilder sbAppend11 = sb.append("    #" + i + " " + ((Entitlement) obj3));
            Intrinsics.checkNotNullExpressionValue(sbAppend11, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend11.append('\n'), "append(...)");
            i = i6;
        }
        StringBuilder sbAppend12 = sb.append("  ],");
        Intrinsics.checkNotNullExpressionValue(sbAppend12, "append(...)");
        Intrinsics.checkNotNullExpressionValue(sbAppend12.append('\n'), "append(...)");
        sb.append(")");
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: compiled from: CustomerInfo.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\f¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;", "", "<init>", "()V", "empty", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "forExternalPurchaseController", "storage", "Lcom/superwall/sdk/storage/Storage;", "subscriptionStatus", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<CustomerInfo> serializer() {
            return CustomerInfo$$serializer.INSTANCE;
        }

        public final CustomerInfo empty() {
            return new CustomerInfo(CollectionsKt.emptyList(), CollectionsKt.emptyList(), "", CollectionsKt.emptyList(), true);
        }

        public final CustomerInfo forExternalPurchaseController(Storage storage, SubscriptionStatus subscriptionStatus) {
            CustomerInfo customerInfoEmpty;
            ArrayList arrayListEmptyList;
            Intrinsics.checkNotNullParameter(storage, "storage");
            Intrinsics.checkNotNullParameter(subscriptionStatus, "subscriptionStatus");
            WebRedemptionResponse webRedemptionResponse = (WebRedemptionResponse) storage.read(LatestRedemptionResponse.INSTANCE);
            if (webRedemptionResponse == null || (customerInfoEmpty = webRedemptionResponse.getCustomerInfo()) == null) {
                customerInfoEmpty = empty();
            }
            CustomerInfo customerInfoEmpty2 = (CustomerInfo) storage.read(LatestDeviceCustomerInfo.INSTANCE);
            if (customerInfoEmpty2 == null) {
                customerInfoEmpty2 = empty();
            }
            CustomerInfo customerInfoMerge = CustomerInfoMergingKt.merge(customerInfoEmpty2, customerInfoEmpty);
            List<Entitlement> entitlements = customerInfoEmpty2.getEntitlements();
            ArrayList arrayList = new ArrayList();
            for (Object obj : entitlements) {
                if (!((Entitlement) obj).isActive()) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            if (subscriptionStatus instanceof SubscriptionStatus.Active) {
                Set<Entitlement> entitlements2 = ((SubscriptionStatus.Active) subscriptionStatus).getEntitlements();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : entitlements2) {
                    if (((Entitlement) obj2).getStore() == Store.PLAY_STORE) {
                        arrayList3.add(obj2);
                    }
                }
                arrayListEmptyList = arrayList3;
            } else {
                if (!Intrinsics.areEqual(subscriptionStatus, SubscriptionStatus.Inactive.INSTANCE) && !Intrinsics.areEqual(subscriptionStatus, SubscriptionStatus.Unknown.INSTANCE)) {
                    throw new NoWhenBranchMatchedException();
                }
                arrayListEmptyList = CollectionsKt.emptyList();
            }
            return new CustomerInfo(customerInfoMerge.getSubscriptions(), customerInfoMerge.getNonSubscriptions(), customerInfoMerge.getUserId(), CollectionsKt.sortedWith(CustomerInfoMergingKt.mergeEntitlementsPrioritized(CustomerInfoMergingKt.plus(CustomerInfoMergingKt.plus(arrayListEmptyList, customerInfoEmpty.getEntitlements()), arrayList2)), new Comparator() { // from class: com.superwall.sdk.models.customer.CustomerInfo$Companion$forExternalPurchaseController$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(((Entitlement) t).getId(), ((Entitlement) t2).getId());
                }
            }), false);
        }
    }
}
