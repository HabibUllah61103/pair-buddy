package com.superwall.sdk.models.triggers;

import com.facebook.hermes.intl.Constants;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.Transient;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: VariantOption.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 :2\u00020\u0001:\u0002:;B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nBA\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000eJ\u0006\u0010'\u001a\u00020#J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0005HÆ\u0003J\t\u0010*\u001a\u00020\u0007HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0005HÆ\u0003J3\u0010,\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00100\u001a\u00020\u0007HÖ\u0001J\t\u00101\u001a\u00020\u0005HÖ\u0001J%\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u00002\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208H\u0001¢\u0006\u0002\b9R$\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R$\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001a\u0010\u0010\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR&\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001f\u0010\u0010\u001a\u0004\b \u0010\u0017\"\u0004\b!\u0010\u0019R\u001c\u0010\"\u001a\u00020#8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b$\u0010\u0010\u001a\u0004\b%\u0010&¨\u0006<"}, d2 = {"Lcom/superwall/sdk/models/triggers/VariantOption;", "", "type", "Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;", "id", "", "percentage", "", "paywallId", "<init>", "(Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getType$annotations", "()V", "getType", "()Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;", "setType", "(Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;)V", "getId$annotations", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getPercentage$annotations", "getPercentage", "()I", "setPercentage", "(I)V", "getPaywallId$annotations", "getPaywallId", "setPaywallId", Constants.SENSITIVITY_VARIANT, "Lcom/superwall/sdk/models/triggers/Experiment$Variant;", "getVariant$annotations", "getVariant", "()Lcom/superwall/sdk/models/triggers/Experiment$Variant;", "toVariant", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class VariantOption {
    private String id;
    private String paywallId;
    private int percentage;
    private Experiment.Variant.VariantType type;
    private final Experiment.Variant variant;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {Experiment.Variant.VariantType.INSTANCE.serializer(), null, null, null};

    public static /* synthetic */ VariantOption copy$default(VariantOption variantOption, Experiment.Variant.VariantType variantType, String str, int i, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            variantType = variantOption.type;
        }
        if ((i2 & 2) != 0) {
            str = variantOption.id;
        }
        if ((i2 & 4) != 0) {
            i = variantOption.percentage;
        }
        if ((i2 & 8) != 0) {
            str2 = variantOption.paywallId;
        }
        return variantOption.copy(variantType, str, i, str2);
    }

    @SerialName("variant_id")
    public static /* synthetic */ void getId$annotations() {
    }

    @SerialName("paywall_identifier")
    public static /* synthetic */ void getPaywallId$annotations() {
    }

    @SerialName("percentage")
    public static /* synthetic */ void getPercentage$annotations() {
    }

    @SerialName("variant_type")
    public static /* synthetic */ void getType$annotations() {
    }

    @Transient
    public static /* synthetic */ void getVariant$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Experiment.Variant.VariantType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getPercentage() {
        return this.percentage;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getPaywallId() {
        return this.paywallId;
    }

    public final VariantOption copy(Experiment.Variant.VariantType type, String id, int percentage, String paywallId) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(id, "id");
        return new VariantOption(type, id, percentage, paywallId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VariantOption)) {
            return false;
        }
        VariantOption variantOption = (VariantOption) other;
        return this.type == variantOption.type && Intrinsics.areEqual(this.id, variantOption.id) && this.percentage == variantOption.percentage && Intrinsics.areEqual(this.paywallId, variantOption.paywallId);
    }

    public int hashCode() {
        int iHashCode = ((((this.type.hashCode() * 31) + this.id.hashCode()) * 31) + Integer.hashCode(this.percentage)) * 31;
        String str = this.paywallId;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "VariantOption(type=" + this.type + ", id=" + this.id + ", percentage=" + this.percentage + ", paywallId=" + this.paywallId + ")";
    }

    public /* synthetic */ VariantOption(int i, Experiment.Variant.VariantType variantType, String str, int i2, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, VariantOption$$serializer.INSTANCE.getDescriptor());
        }
        this.type = variantType;
        this.id = str;
        this.percentage = i2;
        if ((i & 8) == 0) {
            this.paywallId = null;
        } else {
            this.paywallId = str2;
        }
        this.variant = toVariant();
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(VariantOption self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.type);
        output.encodeStringElement(serialDesc, 1, self.id);
        output.encodeIntElement(serialDesc, 2, self.percentage);
        if (!output.shouldEncodeElementDefault(serialDesc, 3) && self.paywallId == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.paywallId);
    }

    public VariantOption(Experiment.Variant.VariantType type, String id, int i, String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(id, "id");
        this.type = type;
        this.id = id;
        this.percentage = i;
        this.paywallId = str;
        this.variant = toVariant();
    }

    public /* synthetic */ VariantOption(Experiment.Variant.VariantType variantType, String str, int i, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(variantType, str, i, (i2 & 8) != 0 ? null : str2);
    }

    public final Experiment.Variant.VariantType getType() {
        return this.type;
    }

    public final void setType(Experiment.Variant.VariantType variantType) {
        Intrinsics.checkNotNullParameter(variantType, "<set-?>");
        this.type = variantType;
    }

    public final String getId() {
        return this.id;
    }

    public final void setId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final int getPercentage() {
        return this.percentage;
    }

    public final void setPercentage(int i) {
        this.percentage = i;
    }

    public final String getPaywallId() {
        return this.paywallId;
    }

    public final void setPaywallId(String str) {
        this.paywallId = str;
    }

    public final Experiment.Variant getVariant() {
        return this.variant;
    }

    public final Experiment.Variant toVariant() {
        return new Experiment.Variant(this.id, this.type, this.paywallId);
    }

    /* JADX INFO: compiled from: VariantOption.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/triggers/VariantOption$Companion;", "", "<init>", "()V", "stub", "Lcom/superwall/sdk/models/triggers/VariantOption;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<VariantOption> serializer() {
            return VariantOption$$serializer.INSTANCE;
        }

        public final VariantOption stub() {
            Experiment.Variant.VariantType variantType = Experiment.Variant.VariantType.TREATMENT;
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return new VariantOption(variantType, string, 100, UUID.randomUUID().toString());
        }
    }
}
