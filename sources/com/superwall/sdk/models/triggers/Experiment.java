package com.superwall.sdk.models.triggers;

import com.facebook.hermes.intl.Constants;
import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Experiment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 )2\u00020\u0001:\u0003()*B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J'\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\nHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J%\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0001¢\u0006\u0002\b'R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0016¨\u0006+"}, d2 = {"Lcom/superwall/sdk/models/triggers/Experiment;", "", "id", "", "groupId", Constants.SENSITIVITY_VARIANT, "Lcom/superwall/sdk/models/triggers/Experiment$Variant;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getId$annotations", "()V", "getId", "()Ljava/lang/String;", "getGroupId$annotations", "getGroupId", "getVariant$annotations", "getVariant", "()Lcom/superwall/sdk/models/triggers/Experiment$Variant;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Variant", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class Experiment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String groupId;
    private final String id;
    private final Variant variant;

    public static /* synthetic */ Experiment copy$default(Experiment experiment, String str, String str2, Variant variant, int i, Object obj) {
        if ((i & 1) != 0) {
            str = experiment.id;
        }
        if ((i & 2) != 0) {
            str2 = experiment.groupId;
        }
        if ((i & 4) != 0) {
            variant = experiment.variant;
        }
        return experiment.copy(str, str2, variant);
    }

    @SerialName("trigger_experiment_group_id")
    public static /* synthetic */ void getGroupId$annotations() {
    }

    @SerialName("experiment_id")
    public static /* synthetic */ void getId$annotations() {
    }

    @SerialName(Constants.SENSITIVITY_VARIANT)
    public static /* synthetic */ void getVariant$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getGroupId() {
        return this.groupId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Variant getVariant() {
        return this.variant;
    }

    public final Experiment copy(String id, String groupId, Variant variant) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(variant, "variant");
        return new Experiment(id, groupId, variant);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Experiment)) {
            return false;
        }
        Experiment experiment = (Experiment) other;
        return Intrinsics.areEqual(this.id, experiment.id) && Intrinsics.areEqual(this.groupId, experiment.groupId) && Intrinsics.areEqual(this.variant, experiment.variant);
    }

    public int hashCode() {
        return (((this.id.hashCode() * 31) + this.groupId.hashCode()) * 31) + this.variant.hashCode();
    }

    public String toString() {
        return "Experiment(id=" + this.id + ", groupId=" + this.groupId + ", variant=" + this.variant + ")";
    }

    public /* synthetic */ Experiment(int i, String str, String str2, Variant variant, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, Experiment$$serializer.INSTANCE.getDescriptor());
        }
        this.id = str;
        this.groupId = str2;
        this.variant = variant;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(Experiment self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeStringElement(serialDesc, 0, self.id);
        output.encodeStringElement(serialDesc, 1, self.groupId);
        output.encodeSerializableElement(serialDesc, 2, Experiment$Variant$$serializer.INSTANCE, self.variant);
    }

    public Experiment(String id, String groupId, Variant variant) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(variant, "variant");
        this.id = id;
        this.groupId = groupId;
        this.variant = variant;
    }

    public final String getId() {
        return this.id;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public final Variant getVariant() {
        return this.variant;
    }

    /* JADX INFO: compiled from: Experiment.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 *2\u00020\u0001:\u0003()*B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J)\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\nHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J%\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0001¢\u0006\u0002\b'R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0011¨\u0006+"}, d2 = {"Lcom/superwall/sdk/models/triggers/Experiment$Variant;", "", "id", "", "type", "Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;", "paywallId", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getId$annotations", "()V", "getId", "()Ljava/lang/String;", "getType$annotations", "getType", "()Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;", "getPaywallId$annotations", "getPaywallId", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "VariantType", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Variant {
        private final String id;
        private final String paywallId;
        private final VariantType type;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {null, VariantType.INSTANCE.serializer(), null};

        public static /* synthetic */ Variant copy$default(Variant variant, String str, VariantType variantType, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = variant.id;
            }
            if ((i & 2) != 0) {
                variantType = variant.type;
            }
            if ((i & 4) != 0) {
                str2 = variant.paywallId;
            }
            return variant.copy(str, variantType, str2);
        }

        @SerialName("id")
        public static /* synthetic */ void getId$annotations() {
        }

        @SerialName("paywall_identifier")
        public static /* synthetic */ void getPaywallId$annotations() {
        }

        @SerialName("type")
        public static /* synthetic */ void getType$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final VariantType getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getPaywallId() {
            return this.paywallId;
        }

        public final Variant copy(String id, VariantType type, String paywallId) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            return new Variant(id, type, paywallId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Variant)) {
                return false;
            }
            Variant variant = (Variant) other;
            return Intrinsics.areEqual(this.id, variant.id) && this.type == variant.type && Intrinsics.areEqual(this.paywallId, variant.paywallId);
        }

        public int hashCode() {
            int iHashCode = ((this.id.hashCode() * 31) + this.type.hashCode()) * 31;
            String str = this.paywallId;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "Variant(id=" + this.id + ", type=" + this.type + ", paywallId=" + this.paywallId + ")";
        }

        /* JADX INFO: compiled from: Experiment.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/triggers/Experiment$Variant$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/triggers/Experiment$Variant;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Variant> serializer() {
                return Experiment$Variant$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Variant(int i, String str, VariantType variantType, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            if (7 != (i & 7)) {
                PluginExceptionsKt.throwMissingFieldException(i, 7, Experiment$Variant$$serializer.INSTANCE.getDescriptor());
            }
            this.id = str;
            this.type = variantType;
            this.paywallId = str2;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Variant self, CompositeEncoder output, SerialDescriptor serialDesc) {
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeStringElement(serialDesc, 0, self.id);
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.type);
            output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.paywallId);
        }

        public Variant(String id, VariantType type, String str) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            this.id = id;
            this.type = type;
            this.paywallId = str;
        }

        public final String getId() {
            return this.id;
        }

        public final VariantType getType() {
            return this.type;
        }

        public final String getPaywallId() {
            return this.paywallId;
        }

        /* JADX INFO: compiled from: Experiment.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \u00062\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;", "", "<init>", "(Ljava/lang/String;I)V", "TREATMENT", "HOLDOUT", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable
        public enum VariantType {
            TREATMENT,
            HOLDOUT;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.triggers.Experiment$Variant$VariantType$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Experiment.Variant.VariantType._init_$_anonymous_();
                }
            });

            public static EnumEntries<VariantType> getEntries() {
                return $ENTRIES;
            }

            /* JADX INFO: compiled from: Experiment.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private final /* synthetic */ KSerializer get$cachedSerializer() {
                    return (KSerializer) VariantType.$cachedSerializer$delegate.getValue();
                }

                public final KSerializer<VariantType> serializer() {
                    return get$cachedSerializer();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final /* synthetic */ KSerializer _init_$_anonymous_() {
                return EnumsKt.createAnnotatedEnumSerializer("com.superwall.sdk.models.triggers.Experiment.Variant.VariantType", values(), new String[]{"TREATMENT", "HOLDOUT"}, new Annotation[][]{null, null}, null);
            }
        }
    }

    /* JADX INFO: compiled from: Experiment.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/models/triggers/Experiment$Companion;", "", "<init>", "()V", "presentById", "Lcom/superwall/sdk/models/triggers/Experiment;", "id", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Experiment> serializer() {
            return Experiment$$serializer.INSTANCE;
        }

        public final Experiment presentById(String id) {
            Intrinsics.checkNotNullParameter(id, "id");
            return new Experiment(id, "", new Variant("", Variant.VariantType.TREATMENT, id));
        }
    }
}
