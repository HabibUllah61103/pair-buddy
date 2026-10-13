package com.superwall.sdk.models.internal;

import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.customer.CustomerInfo$$serializer;
import com.superwall.sdk.models.entitlements.Redeemable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
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

/* JADX INFO: compiled from: WebRedemption.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 ,2\u00020\u0001:\u0002+,B1\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\u0004\b\t\u0010\nB5\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\t\u0010\u000fJ\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0003J5\u0010\u001c\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\fHÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001J%\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0001¢\u0006\u0002\b*R\"\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0017\u0010\u0011\u001a\u0004\b\u0018\u0010\u0013¨\u0006-"}, d2 = {"Lcom/superwall/sdk/models/internal/WebRedemptionResponse;", "", "codes", "", "Lcom/superwall/sdk/models/internal/RedemptionResult;", "customerInfo", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "allCodes", "Lcom/superwall/sdk/models/entitlements/Redeemable;", "<init>", "(Ljava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/List;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/List;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getCodes$annotations", "()V", "getCodes", "()Ljava/util/List;", "getCustomerInfo$annotations", "getCustomerInfo", "()Lcom/superwall/sdk/models/customer/CustomerInfo;", "getAllCodes$annotations", "getAllCodes", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class WebRedemptionResponse {
    private final List<Redeemable> allCodes;
    private final List<RedemptionResult> codes;
    private final CustomerInfo customerInfo;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new ArrayListSerializer(RedemptionResult.INSTANCE.serializer()), null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WebRedemptionResponse copy$default(WebRedemptionResponse webRedemptionResponse, List list, CustomerInfo customerInfo, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = webRedemptionResponse.codes;
        }
        if ((i & 2) != 0) {
            customerInfo = webRedemptionResponse.customerInfo;
        }
        if ((i & 4) != 0) {
            list2 = webRedemptionResponse.allCodes;
        }
        return webRedemptionResponse.copy(list, customerInfo, list2);
    }

    @Transient
    public static /* synthetic */ void getAllCodes$annotations() {
    }

    @SerialName("codes")
    public static /* synthetic */ void getCodes$annotations() {
    }

    @SerialName("customerInfo")
    public static /* synthetic */ void getCustomerInfo$annotations() {
    }

    public final List<RedemptionResult> component1() {
        return this.codes;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final CustomerInfo getCustomerInfo() {
        return this.customerInfo;
    }

    public final List<Redeemable> component3() {
        return this.allCodes;
    }

    public final WebRedemptionResponse copy(List<? extends RedemptionResult> codes, CustomerInfo customerInfo, List<Redeemable> allCodes) {
        Intrinsics.checkNotNullParameter(codes, "codes");
        Intrinsics.checkNotNullParameter(allCodes, "allCodes");
        return new WebRedemptionResponse(codes, customerInfo, allCodes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WebRedemptionResponse)) {
            return false;
        }
        WebRedemptionResponse webRedemptionResponse = (WebRedemptionResponse) other;
        return Intrinsics.areEqual(this.codes, webRedemptionResponse.codes) && Intrinsics.areEqual(this.customerInfo, webRedemptionResponse.customerInfo) && Intrinsics.areEqual(this.allCodes, webRedemptionResponse.allCodes);
    }

    public int hashCode() {
        int iHashCode = this.codes.hashCode() * 31;
        CustomerInfo customerInfo = this.customerInfo;
        return ((iHashCode + (customerInfo == null ? 0 : customerInfo.hashCode())) * 31) + this.allCodes.hashCode();
    }

    public String toString() {
        return "WebRedemptionResponse(codes=" + this.codes + ", customerInfo=" + this.customerInfo + ", allCodes=" + this.allCodes + ")";
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/WebRedemptionResponse$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/WebRedemptionResponse;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<WebRedemptionResponse> serializer() {
            return WebRedemptionResponse$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ WebRedemptionResponse(int i, List list, CustomerInfo customerInfo, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, WebRedemptionResponse$$serializer.INSTANCE.getDescriptor());
        }
        this.codes = list;
        if ((i & 2) == 0) {
            this.customerInfo = null;
        } else {
            this.customerInfo = customerInfo;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(new Redeemable(((RedemptionResult) it.next()).getCode(), false));
        }
        this.allCodes = arrayList;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(WebRedemptionResponse self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.codes);
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && self.customerInfo == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 1, CustomerInfo$$serializer.INSTANCE, self.customerInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WebRedemptionResponse(List<? extends RedemptionResult> codes, CustomerInfo customerInfo, List<Redeemable> allCodes) {
        Intrinsics.checkNotNullParameter(codes, "codes");
        Intrinsics.checkNotNullParameter(allCodes, "allCodes");
        this.codes = codes;
        this.customerInfo = customerInfo;
        this.allCodes = allCodes;
    }

    public final List<RedemptionResult> getCodes() {
        return this.codes;
    }

    public final CustomerInfo getCustomerInfo() {
        return this.customerInfo;
    }

    public final List<Redeemable> getAllCodes() {
        return this.allCodes;
    }

    public /* synthetic */ WebRedemptionResponse(List list, CustomerInfo customerInfo, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        customerInfo = (i & 2) != 0 ? null : customerInfo;
        if ((i & 4) != 0) {
            List list3 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                arrayList.add(new Redeemable(((RedemptionResult) it.next()).getCode(), false));
            }
            list2 = arrayList;
        }
        this(list, customerInfo, list2);
    }
}
