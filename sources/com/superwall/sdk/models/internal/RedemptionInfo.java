package com.superwall.sdk.models.internal;

import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.Entitlement$$serializer;
import java.util.List;
import kotlin.Metadata;
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

/* JADX INFO: compiled from: WebRedemption.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 32\u00020\u0001:\u000223B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fBI\b\u0010\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u000b\u0010\u0011J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J9\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u000eHÖ\u0001J\t\u0010(\u001a\u00020)HÖ\u0001J%\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0001¢\u0006\u0002\b1R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u001bR\"\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0013\u001a\u0004\b\u001d\u0010\u001e¨\u00064"}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionInfo;", "", "ownership", "Lcom/superwall/sdk/models/internal/RedemptionOwnership;", "purchaserInfo", "Lcom/superwall/sdk/models/internal/PurchaserInfo;", "paywallInfo", "Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;", "entitlements", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "<init>", "(Lcom/superwall/sdk/models/internal/RedemptionOwnership;Lcom/superwall/sdk/models/internal/PurchaserInfo;Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;Ljava/util/List;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/internal/RedemptionOwnership;Lcom/superwall/sdk/models/internal/PurchaserInfo;Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getOwnership$annotations", "()V", "getOwnership", "()Lcom/superwall/sdk/models/internal/RedemptionOwnership;", "getPurchaserInfo$annotations", "getPurchaserInfo", "()Lcom/superwall/sdk/models/internal/PurchaserInfo;", "getPaywallInfo$annotations", "getPaywallInfo", "()Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;", "getEntitlements$annotations", "getEntitlements", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class RedemptionInfo {
    private final List<Entitlement> entitlements;
    private final RedemptionOwnership ownership;
    private final RedemptionResult.PaywallInfo paywallInfo;
    private final PurchaserInfo purchaserInfo;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {RedemptionOwnership.INSTANCE.serializer(), null, null, new ArrayListSerializer(Entitlement$$serializer.INSTANCE)};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RedemptionInfo copy$default(RedemptionInfo redemptionInfo, RedemptionOwnership redemptionOwnership, PurchaserInfo purchaserInfo, RedemptionResult.PaywallInfo paywallInfo, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            redemptionOwnership = redemptionInfo.ownership;
        }
        if ((i & 2) != 0) {
            purchaserInfo = redemptionInfo.purchaserInfo;
        }
        if ((i & 4) != 0) {
            paywallInfo = redemptionInfo.paywallInfo;
        }
        if ((i & 8) != 0) {
            list = redemptionInfo.entitlements;
        }
        return redemptionInfo.copy(redemptionOwnership, purchaserInfo, paywallInfo, list);
    }

    @SerialName("entitlements")
    public static /* synthetic */ void getEntitlements$annotations() {
    }

    @SerialName("ownership")
    public static /* synthetic */ void getOwnership$annotations() {
    }

    @SerialName("paywallInfo")
    public static /* synthetic */ void getPaywallInfo$annotations() {
    }

    @SerialName("purchaserInfo")
    public static /* synthetic */ void getPurchaserInfo$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final RedemptionOwnership getOwnership() {
        return this.ownership;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final PurchaserInfo getPurchaserInfo() {
        return this.purchaserInfo;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final RedemptionResult.PaywallInfo getPaywallInfo() {
        return this.paywallInfo;
    }

    public final List<Entitlement> component4() {
        return this.entitlements;
    }

    public final RedemptionInfo copy(RedemptionOwnership ownership, PurchaserInfo purchaserInfo, RedemptionResult.PaywallInfo paywallInfo, List<Entitlement> entitlements) {
        Intrinsics.checkNotNullParameter(ownership, "ownership");
        Intrinsics.checkNotNullParameter(purchaserInfo, "purchaserInfo");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        return new RedemptionInfo(ownership, purchaserInfo, paywallInfo, entitlements);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RedemptionInfo)) {
            return false;
        }
        RedemptionInfo redemptionInfo = (RedemptionInfo) other;
        return Intrinsics.areEqual(this.ownership, redemptionInfo.ownership) && Intrinsics.areEqual(this.purchaserInfo, redemptionInfo.purchaserInfo) && Intrinsics.areEqual(this.paywallInfo, redemptionInfo.paywallInfo) && Intrinsics.areEqual(this.entitlements, redemptionInfo.entitlements);
    }

    public int hashCode() {
        int iHashCode = ((this.ownership.hashCode() * 31) + this.purchaserInfo.hashCode()) * 31;
        RedemptionResult.PaywallInfo paywallInfo = this.paywallInfo;
        return ((iHashCode + (paywallInfo == null ? 0 : paywallInfo.hashCode())) * 31) + this.entitlements.hashCode();
    }

    public String toString() {
        return "RedemptionInfo(ownership=" + this.ownership + ", purchaserInfo=" + this.purchaserInfo + ", paywallInfo=" + this.paywallInfo + ", entitlements=" + this.entitlements + ")";
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionInfo$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/RedemptionInfo;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<RedemptionInfo> serializer() {
            return RedemptionInfo$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RedemptionInfo(int i, RedemptionOwnership redemptionOwnership, PurchaserInfo purchaserInfo, RedemptionResult.PaywallInfo paywallInfo, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (11 != (i & 11)) {
            PluginExceptionsKt.throwMissingFieldException(i, 11, RedemptionInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.ownership = redemptionOwnership;
        this.purchaserInfo = purchaserInfo;
        if ((i & 4) == 0) {
            this.paywallInfo = null;
        } else {
            this.paywallInfo = paywallInfo;
        }
        this.entitlements = list;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(RedemptionInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.ownership);
        output.encodeSerializableElement(serialDesc, 1, PurchaserInfo$$serializer.INSTANCE, self.purchaserInfo);
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.paywallInfo != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, RedemptionResult$PaywallInfo$$serializer.INSTANCE, self.paywallInfo);
        }
        output.encodeSerializableElement(serialDesc, 3, kSerializerArr[3], self.entitlements);
    }

    public RedemptionInfo(RedemptionOwnership ownership, PurchaserInfo purchaserInfo, RedemptionResult.PaywallInfo paywallInfo, List<Entitlement> entitlements) {
        Intrinsics.checkNotNullParameter(ownership, "ownership");
        Intrinsics.checkNotNullParameter(purchaserInfo, "purchaserInfo");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        this.ownership = ownership;
        this.purchaserInfo = purchaserInfo;
        this.paywallInfo = paywallInfo;
        this.entitlements = entitlements;
    }

    public /* synthetic */ RedemptionInfo(RedemptionOwnership redemptionOwnership, PurchaserInfo purchaserInfo, RedemptionResult.PaywallInfo paywallInfo, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(redemptionOwnership, purchaserInfo, (i & 4) != 0 ? null : paywallInfo, list);
    }

    public final RedemptionOwnership getOwnership() {
        return this.ownership;
    }

    public final PurchaserInfo getPurchaserInfo() {
        return this.purchaserInfo;
    }

    public final RedemptionResult.PaywallInfo getPaywallInfo() {
        return this.paywallInfo;
    }

    public final List<Entitlement> getEntitlements() {
        return this.entitlements;
    }
}
