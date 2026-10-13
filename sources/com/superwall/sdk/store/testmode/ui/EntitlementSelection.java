package com.superwall.sdk.store.testmode.ui;

import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.product.Store;
import expo.modules.notifications.service.NotificationsService;
import java.util.Date;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: EntitlementSelection.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 )2\u00020\u0001:\u0002()B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\b\u0010\u000eJ\u0006\u0010\u0015\u001a\u00020\u0016J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J'\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u000bHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J%\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0001¢\u0006\u0002\b'R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006*"}, d2 = {"Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;", "", NotificationsService.IDENTIFIER_KEY, "", "state", "Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;", "offerType", "Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getIdentifier", "()Ljava/lang/String;", "getState", "()Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;", "getOfferType", "()Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;", "toEntitlement", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class EntitlementSelection {
    private final String identifier;
    private final OfferTypeOption offerType;
    private final EntitlementStateOption state;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, EntitlementStateOption.INSTANCE.serializer(), OfferTypeOption.INSTANCE.serializer()};

    public static /* synthetic */ EntitlementSelection copy$default(EntitlementSelection entitlementSelection, String str, EntitlementStateOption entitlementStateOption, OfferTypeOption offerTypeOption, int i, Object obj) {
        if ((i & 1) != 0) {
            str = entitlementSelection.identifier;
        }
        if ((i & 2) != 0) {
            entitlementStateOption = entitlementSelection.state;
        }
        if ((i & 4) != 0) {
            offerTypeOption = entitlementSelection.offerType;
        }
        return entitlementSelection.copy(str, entitlementStateOption, offerTypeOption);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getIdentifier() {
        return this.identifier;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final EntitlementStateOption getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final OfferTypeOption getOfferType() {
        return this.offerType;
    }

    public final EntitlementSelection copy(String identifier, EntitlementStateOption state, OfferTypeOption offerType) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(offerType, "offerType");
        return new EntitlementSelection(identifier, state, offerType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EntitlementSelection)) {
            return false;
        }
        EntitlementSelection entitlementSelection = (EntitlementSelection) other;
        return Intrinsics.areEqual(this.identifier, entitlementSelection.identifier) && this.state == entitlementSelection.state && this.offerType == entitlementSelection.offerType;
    }

    public int hashCode() {
        return (((this.identifier.hashCode() * 31) + this.state.hashCode()) * 31) + this.offerType.hashCode();
    }

    public String toString() {
        return "EntitlementSelection(identifier=" + this.identifier + ", state=" + this.state + ", offerType=" + this.offerType + ")";
    }

    /* JADX INFO: compiled from: EntitlementSelection.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<EntitlementSelection> serializer() {
            return EntitlementSelection$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ EntitlementSelection(int i, String str, EntitlementStateOption entitlementStateOption, OfferTypeOption offerTypeOption, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, EntitlementSelection$$serializer.INSTANCE.getDescriptor());
        }
        this.identifier = str;
        if ((i & 2) == 0) {
            this.state = EntitlementStateOption.Inactive;
        } else {
            this.state = entitlementStateOption;
        }
        if ((i & 4) == 0) {
            this.offerType = OfferTypeOption.None;
        } else {
            this.offerType = offerTypeOption;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(EntitlementSelection self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.identifier);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.state != EntitlementStateOption.Inactive) {
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.state);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 2) && self.offerType == OfferTypeOption.None) {
            return;
        }
        output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.offerType);
    }

    public EntitlementSelection(String identifier, EntitlementStateOption state, OfferTypeOption offerType) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(offerType, "offerType");
        this.identifier = identifier;
        this.state = state;
        this.offerType = offerType;
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public /* synthetic */ EntitlementSelection(String str, EntitlementStateOption entitlementStateOption, OfferTypeOption offerTypeOption, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? EntitlementStateOption.Inactive : entitlementStateOption, (i & 4) != 0 ? OfferTypeOption.None : offerTypeOption);
    }

    public final EntitlementStateOption getState() {
        return this.state;
    }

    public final OfferTypeOption getOfferType() {
        return this.offerType;
    }

    public final Entitlement toEntitlement() {
        return new Entitlement(this.identifier, Entitlement.Type.SERVICE_LEVEL, this.state.isActive(), (Set) null, (String) null, (Date) null, (Date) null, (Date) null, (Boolean) null, (Boolean) null, this.state.toSubscriptionState(), this.offerType.toPeriodType(), Store.PLAY_STORE, 1016, (DefaultConstructorMarker) null);
    }
}
