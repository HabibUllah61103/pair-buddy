package com.superwall.sdk.models.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
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
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonClassDiscriminator;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;

/* JADX INFO: compiled from: WebRedemption.kt */
/* JADX INFO: loaded from: classes6.dex */
@JsonClassDiscriminator(discriminator = "store")
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00132\u00020\u0001:\u0004\u0010\u0011\u0012\u0013B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0002\u0010\bJ \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u0082\u0001\u0003\u0014\u0015\u0016¨\u0006\u0017"}, d2 = {"Lcom/superwall/sdk/models/internal/StoreIdentifiers;", "", "<init>", "()V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Stripe", "Paddle", "Unknown", "Companion", "Lcom/superwall/sdk/models/internal/StoreIdentifiers$Paddle;", "Lcom/superwall/sdk/models/internal/StoreIdentifiers$Stripe;", "Lcom/superwall/sdk/models/internal/StoreIdentifiers$Unknown;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public abstract class StoreIdentifiers {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.internal.StoreIdentifiers$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return StoreIdentifiers._init_$_anonymous_();
        }
    });

    public /* synthetic */ StoreIdentifiers(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self(StoreIdentifiers self, CompositeEncoder output, SerialDescriptor serialDesc) {
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/StoreIdentifiers$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/StoreIdentifiers;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) StoreIdentifiers.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<StoreIdentifiers> serializer() {
            return get$cachedSerializer();
        }
    }

    private StoreIdentifiers() {
    }

    public /* synthetic */ StoreIdentifiers(int i, SerializationConstructorMarker serializationConstructorMarker) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ KSerializer _init_$_anonymous_() {
        return new SealedClassSerializer("com.superwall.sdk.models.internal.StoreIdentifiers", Reflection.getOrCreateKotlinClass(StoreIdentifiers.class), new KClass[]{Reflection.getOrCreateKotlinClass(Paddle.class), Reflection.getOrCreateKotlinClass(Stripe.class), Reflection.getOrCreateKotlinClass(Unknown.class)}, new KSerializer[]{StoreIdentifiers$Paddle$$serializer.INSTANCE, StoreIdentifiers$Stripe$$serializer.INSTANCE, StoreIdentifiers$Unknown$$serializer.INSTANCE}, new Annotation[]{new RedemptionResult$Error$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0("store")});
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0002%&B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0004\b\u0006\u0010\u0007B5\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J#\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\tHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J%\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0001¢\u0006\u0002\b$R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013¨\u0006'"}, d2 = {"Lcom/superwall/sdk/models/internal/StoreIdentifiers$Stripe;", "Lcom/superwall/sdk/models/internal/StoreIdentifiers;", "stripeCustomerId", "", "subscriptionIds", "", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getStripeCustomerId$annotations", "()V", "getStripeCustomerId", "()Ljava/lang/String;", "getSubscriptionIds$annotations", "getSubscriptionIds", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("STRIPE")
    public static final /* data */ class Stripe extends StoreIdentifiers {
        private final String stripeCustomerId;
        private final List<String> subscriptionIds;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {null, new ArrayListSerializer(StringSerializer.INSTANCE)};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Stripe copy$default(Stripe stripe, String str, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = stripe.stripeCustomerId;
            }
            if ((i & 2) != 0) {
                list = stripe.subscriptionIds;
            }
            return stripe.copy(str, list);
        }

        @SerialName("stripeCustomerId")
        public static /* synthetic */ void getStripeCustomerId$annotations() {
        }

        @SerialName("stripeSubscriptionIds")
        public static /* synthetic */ void getSubscriptionIds$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getStripeCustomerId() {
            return this.stripeCustomerId;
        }

        public final List<String> component2() {
            return this.subscriptionIds;
        }

        public final Stripe copy(String stripeCustomerId, List<String> subscriptionIds) {
            Intrinsics.checkNotNullParameter(stripeCustomerId, "stripeCustomerId");
            Intrinsics.checkNotNullParameter(subscriptionIds, "subscriptionIds");
            return new Stripe(stripeCustomerId, subscriptionIds);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Stripe)) {
                return false;
            }
            Stripe stripe = (Stripe) other;
            return Intrinsics.areEqual(this.stripeCustomerId, stripe.stripeCustomerId) && Intrinsics.areEqual(this.subscriptionIds, stripe.subscriptionIds);
        }

        public int hashCode() {
            return (this.stripeCustomerId.hashCode() * 31) + this.subscriptionIds.hashCode();
        }

        public String toString() {
            return "Stripe(stripeCustomerId=" + this.stripeCustomerId + ", subscriptionIds=" + this.subscriptionIds + ")";
        }

        /* JADX INFO: compiled from: WebRedemption.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/StoreIdentifiers$Stripe$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/StoreIdentifiers$Stripe;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Stripe> serializer() {
                return StoreIdentifiers$Stripe$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Stripe(int i, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, StoreIdentifiers$Stripe$$serializer.INSTANCE.getDescriptor());
            }
            this.stripeCustomerId = str;
            this.subscriptionIds = list;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Stripe self, CompositeEncoder output, SerialDescriptor serialDesc) {
            StoreIdentifiers.write$Self(self, output, serialDesc);
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeStringElement(serialDesc, 0, self.stripeCustomerId);
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.subscriptionIds);
        }

        public final String getStripeCustomerId() {
            return this.stripeCustomerId;
        }

        public final List<String> getSubscriptionIds() {
            return this.subscriptionIds;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Stripe(String stripeCustomerId, List<String> subscriptionIds) {
            super(null);
            Intrinsics.checkNotNullParameter(stripeCustomerId, "stripeCustomerId");
            Intrinsics.checkNotNullParameter(subscriptionIds, "subscriptionIds");
            this.stripeCustomerId = stripeCustomerId;
            this.subscriptionIds = subscriptionIds;
        }
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0002%&B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0004\b\u0006\u0010\u0007B5\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J#\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\tHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J%\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0001¢\u0006\u0002\b$R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013¨\u0006'"}, d2 = {"Lcom/superwall/sdk/models/internal/StoreIdentifiers$Paddle;", "Lcom/superwall/sdk/models/internal/StoreIdentifiers;", "paddleCustomerId", "", "paddleSubscriptionIds", "", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getPaddleCustomerId$annotations", "()V", "getPaddleCustomerId", "()Ljava/lang/String;", "getPaddleSubscriptionIds$annotations", "getPaddleSubscriptionIds", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("PADDLE")
    public static final /* data */ class Paddle extends StoreIdentifiers {
        private final String paddleCustomerId;
        private final List<String> paddleSubscriptionIds;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {null, new ArrayListSerializer(StringSerializer.INSTANCE)};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Paddle copy$default(Paddle paddle, String str, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = paddle.paddleCustomerId;
            }
            if ((i & 2) != 0) {
                list = paddle.paddleSubscriptionIds;
            }
            return paddle.copy(str, list);
        }

        @SerialName("paddleCustomerId")
        public static /* synthetic */ void getPaddleCustomerId$annotations() {
        }

        @SerialName("paddleSubscriptionIds")
        public static /* synthetic */ void getPaddleSubscriptionIds$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPaddleCustomerId() {
            return this.paddleCustomerId;
        }

        public final List<String> component2() {
            return this.paddleSubscriptionIds;
        }

        public final Paddle copy(String paddleCustomerId, List<String> paddleSubscriptionIds) {
            Intrinsics.checkNotNullParameter(paddleCustomerId, "paddleCustomerId");
            Intrinsics.checkNotNullParameter(paddleSubscriptionIds, "paddleSubscriptionIds");
            return new Paddle(paddleCustomerId, paddleSubscriptionIds);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Paddle)) {
                return false;
            }
            Paddle paddle = (Paddle) other;
            return Intrinsics.areEqual(this.paddleCustomerId, paddle.paddleCustomerId) && Intrinsics.areEqual(this.paddleSubscriptionIds, paddle.paddleSubscriptionIds);
        }

        public int hashCode() {
            return (this.paddleCustomerId.hashCode() * 31) + this.paddleSubscriptionIds.hashCode();
        }

        public String toString() {
            return "Paddle(paddleCustomerId=" + this.paddleCustomerId + ", paddleSubscriptionIds=" + this.paddleSubscriptionIds + ")";
        }

        /* JADX INFO: compiled from: WebRedemption.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/StoreIdentifiers$Paddle$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/StoreIdentifiers$Paddle;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Paddle> serializer() {
                return StoreIdentifiers$Paddle$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Paddle(int i, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, StoreIdentifiers$Paddle$$serializer.INSTANCE.getDescriptor());
            }
            this.paddleCustomerId = str;
            this.paddleSubscriptionIds = list;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Paddle self, CompositeEncoder output, SerialDescriptor serialDesc) {
            StoreIdentifiers.write$Self(self, output, serialDesc);
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeStringElement(serialDesc, 0, self.paddleCustomerId);
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.paddleSubscriptionIds);
        }

        public final String getPaddleCustomerId() {
            return this.paddleCustomerId;
        }

        public final List<String> getPaddleSubscriptionIds() {
            return this.paddleSubscriptionIds;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Paddle(String paddleCustomerId, List<String> paddleSubscriptionIds) {
            super(null);
            Intrinsics.checkNotNullParameter(paddleCustomerId, "paddleCustomerId");
            Intrinsics.checkNotNullParameter(paddleSubscriptionIds, "paddleSubscriptionIds");
            this.paddleCustomerId = paddleCustomerId;
            this.paddleSubscriptionIds = paddleSubscriptionIds;
        }
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000  2\u00020\u0001:\u0002\u001f B\u001d\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007B3\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\u0017\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003HÆ\u0003J!\u0010\u0010\u001a\u00020\u00002\u0016\b\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\tHÖ\u0001J\t\u0010\u0016\u001a\u00020\u0004HÖ\u0001J%\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0001¢\u0006\u0002\b\u001eR\u001f\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006!"}, d2 = {"Lcom/superwall/sdk/models/internal/StoreIdentifiers$Unknown;", "Lcom/superwall/sdk/models/internal/StoreIdentifiers;", "properties", "", "", "Lkotlinx/serialization/json/JsonElement;", "<init>", "(Ljava/util/Map;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getProperties", "()Ljava/util/Map;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("UNKNOWN")
    public static final /* data */ class Unknown extends StoreIdentifiers {
        private final Map<String, JsonElement> properties;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new LinkedHashMapSerializer(StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(JsonElementSerializer.INSTANCE))};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Unknown copy$default(Unknown unknown, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                map = unknown.properties;
            }
            return unknown.copy(map);
        }

        public final Map<String, JsonElement> component1() {
            return this.properties;
        }

        public final Unknown copy(Map<String, ? extends JsonElement> properties) {
            Intrinsics.checkNotNullParameter(properties, "properties");
            return new Unknown(properties);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Unknown) && Intrinsics.areEqual(this.properties, ((Unknown) other).properties);
        }

        public int hashCode() {
            return this.properties.hashCode();
        }

        public String toString() {
            return "Unknown(properties=" + this.properties + ")";
        }

        /* JADX INFO: compiled from: WebRedemption.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/StoreIdentifiers$Unknown$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/StoreIdentifiers$Unknown;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Unknown> serializer() {
                return StoreIdentifiers$Unknown$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Unknown(int i, Map map, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, StoreIdentifiers$Unknown$$serializer.INSTANCE.getDescriptor());
            }
            this.properties = map;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Unknown self, CompositeEncoder output, SerialDescriptor serialDesc) {
            StoreIdentifiers.write$Self(self, output, serialDesc);
            output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.properties);
        }

        public final Map<String, JsonElement> getProperties() {
            return this.properties;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Unknown(Map<String, ? extends JsonElement> properties) {
            super(null);
            Intrinsics.checkNotNullParameter(properties, "properties");
            this.properties = properties;
        }
    }
}
