package com.superwall.sdk.models.entitlements;

import java.lang.annotation.Annotation;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LinkedHashSetSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: SubscriptionStatus.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00162\u00020\u0001:\u0004\u0013\u0014\u0015\u0016B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0002\u0010\bJ \u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000b\u0082\u0001\u0003\u0017\u0018\u0019¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "", "<init>", "()V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "isActive", "", "()Z", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Unknown", "Inactive", "Active", "Companion", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public abstract class SubscriptionStatus {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.entitlements.SubscriptionStatus$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SubscriptionStatus._init_$_anonymous_();
        }
    });

    public /* synthetic */ SubscriptionStatus(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self(SubscriptionStatus self, CompositeEncoder output, SerialDescriptor serialDesc) {
    }

    /* JADX INFO: compiled from: SubscriptionStatus.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) SubscriptionStatus.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<SubscriptionStatus> serializer() {
            return get$cachedSerializer();
        }
    }

    private SubscriptionStatus() {
    }

    public /* synthetic */ SubscriptionStatus(int i, SerializationConstructorMarker serializationConstructorMarker) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ KSerializer _init_$_anonymous_() {
        return new SealedClassSerializer("com.superwall.sdk.models.entitlements.SubscriptionStatus", Reflection.getOrCreateKotlinClass(SubscriptionStatus.class), new KClass[]{Reflection.getOrCreateKotlinClass(Active.class), Reflection.getOrCreateKotlinClass(Inactive.class), Reflection.getOrCreateKotlinClass(Unknown.class)}, new KSerializer[]{SubscriptionStatus$Active$$serializer.INSTANCE, new ObjectSerializer("com.superwall.sdk.models.entitlements.SubscriptionStatus.Inactive", Inactive.INSTANCE, new Annotation[0]), new ObjectSerializer("com.superwall.sdk.models.entitlements.SubscriptionStatus.Unknown", Unknown.INSTANCE, new Annotation[0])}, new Annotation[0]);
    }

    public final boolean isActive() {
        return this instanceof Active;
    }

    /* JADX INFO: compiled from: SubscriptionStatus.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final class Unknown extends SubscriptionStatus {
        public static final Unknown INSTANCE = new Unknown();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.entitlements.SubscriptionStatus$Unknown$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SubscriptionStatus.Unknown._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("com.superwall.sdk.models.entitlements.SubscriptionStatus.Unknown", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Unknown> serializer() {
            return get$cachedSerializer();
        }

        private Unknown() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: SubscriptionStatus.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final class Inactive extends SubscriptionStatus {
        public static final Inactive INSTANCE = new Inactive();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.entitlements.SubscriptionStatus$Inactive$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SubscriptionStatus.Inactive._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("com.superwall.sdk.models.entitlements.SubscriptionStatus.Inactive", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Inactive> serializer() {
            return get$cachedSerializer();
        }

        private Inactive() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: SubscriptionStatus.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \"2\u00020\u0001:\u0002!\"B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006B+\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\u000bJ\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\u0011\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\bHÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J%\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0001¢\u0006\u0002\b R\"\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006#"}, d2 = {"Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "entitlements", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "<init>", "(Ljava/util/Set;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/Set;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getEntitlements$annotations", "()V", "getEntitlements", "()Ljava/util/Set;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Active extends SubscriptionStatus {
        private final Set<Entitlement> entitlements;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new LinkedHashSetSerializer(Entitlement$$serializer.INSTANCE)};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Active copy$default(Active active, Set set, int i, Object obj) {
            if ((i & 1) != 0) {
                set = active.entitlements;
            }
            return active.copy(set);
        }

        @SerialName("entitlements")
        public static /* synthetic */ void getEntitlements$annotations() {
        }

        public final Set<Entitlement> component1() {
            return this.entitlements;
        }

        public final Active copy(Set<Entitlement> entitlements) {
            Intrinsics.checkNotNullParameter(entitlements, "entitlements");
            return new Active(entitlements);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Active) && Intrinsics.areEqual(this.entitlements, ((Active) other).entitlements);
        }

        public int hashCode() {
            return this.entitlements.hashCode();
        }

        public String toString() {
            return "Active(entitlements=" + this.entitlements + ")";
        }

        /* JADX INFO: compiled from: SubscriptionStatus.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Active> serializer() {
                return SubscriptionStatus$Active$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Active(int i, Set set, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, SubscriptionStatus$Active$$serializer.INSTANCE.getDescriptor());
            }
            this.entitlements = set;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Active self, CompositeEncoder output, SerialDescriptor serialDesc) {
            SubscriptionStatus.write$Self(self, output, serialDesc);
            output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.entitlements);
        }

        public final Set<Entitlement> getEntitlements() {
            return this.entitlements;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Active(Set<Entitlement> entitlements) {
            super(null);
            Intrinsics.checkNotNullParameter(entitlements, "entitlements");
            this.entitlements = entitlements;
        }
    }
}
