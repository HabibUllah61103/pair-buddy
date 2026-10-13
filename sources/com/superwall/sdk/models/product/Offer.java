package com.superwall.sdk.models.product;

import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: ProductItem.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/models/product/Offer;", "", "<init>", "()V", "Automatic", "NoOffer", "Specified", "Lcom/superwall/sdk/models/product/Offer$Automatic;", "Lcom/superwall/sdk/models/product/Offer$NoOffer;", "Lcom/superwall/sdk/models/product/Offer$Specified;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class Offer {
    public /* synthetic */ Offer(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: ProductItem.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001d\u001eB\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J%\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0001¢\u0006\u0002\b\u001cR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/superwall/sdk/models/product/Offer$Automatic;", "Lcom/superwall/sdk/models/product/Offer;", "type", "", "<init>", "(Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getType", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Automatic extends Offer {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String type;

        /* JADX WARN: Multi-variable type inference failed */
        public Automatic() {
            this((String) null, 1, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        public static /* synthetic */ Automatic copy$default(Automatic automatic, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = automatic.type;
            }
            return automatic.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        public final Automatic copy(String type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return new Automatic(type);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Automatic) && Intrinsics.areEqual(this.type, ((Automatic) other).type);
        }

        public int hashCode() {
            return this.type.hashCode();
        }

        public String toString() {
            return "Automatic(type=" + this.type + ")";
        }

        /* JADX INFO: compiled from: ProductItem.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/Offer$Automatic$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/Offer$Automatic;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Automatic> serializer() {
                return Offer$Automatic$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Automatic(int i, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if ((i & 1) == 0) {
                this.type = "AUTOMATIC";
            } else {
                this.type = str;
            }
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Automatic self, CompositeEncoder output, SerialDescriptor serialDesc) {
            if (!output.shouldEncodeElementDefault(serialDesc, 0) && Intrinsics.areEqual(self.type, "AUTOMATIC")) {
                return;
            }
            output.encodeStringElement(serialDesc, 0, self.type);
        }

        public /* synthetic */ Automatic(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "AUTOMATIC" : str);
        }

        public final String getType() {
            return this.type;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Automatic(String type) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
        }
    }

    private Offer() {
    }

    /* JADX INFO: compiled from: ProductItem.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/product/Offer$NoOffer;", "Lcom/superwall/sdk/models/product/Offer;", "<init>", "()V", "TYPE", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final class NoOffer extends Offer {
        public static final String TYPE = "NO_OFFER";
        public static final NoOffer INSTANCE = new NoOffer();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.product.Offer$NoOffer$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Offer.NoOffer._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("com.superwall.sdk.models.product.Offer.NoOffer", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<NoOffer> serializer() {
            return get$cachedSerializer();
        }

        private NoOffer() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: ProductItem.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 !2\u00020\u0001:\u0002 !B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\u000bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\bHÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J%\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0001¢\u0006\u0002\b\u001fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\""}, d2 = {"Lcom/superwall/sdk/models/product/Offer$Specified;", "Lcom/superwall/sdk/models/product/Offer;", "type", "", "offerIdentifier", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getType", "()Ljava/lang/String;", "getOfferIdentifier", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Specified extends Offer {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String offerIdentifier;
        private final String type;

        public static /* synthetic */ Specified copy$default(Specified specified, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = specified.type;
            }
            if ((i & 2) != 0) {
                str2 = specified.offerIdentifier;
            }
            return specified.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getOfferIdentifier() {
            return this.offerIdentifier;
        }

        public final Specified copy(String type, String offerIdentifier) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(offerIdentifier, "offerIdentifier");
            return new Specified(type, offerIdentifier);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Specified)) {
                return false;
            }
            Specified specified = (Specified) other;
            return Intrinsics.areEqual(this.type, specified.type) && Intrinsics.areEqual(this.offerIdentifier, specified.offerIdentifier);
        }

        public int hashCode() {
            return (this.type.hashCode() * 31) + this.offerIdentifier.hashCode();
        }

        public String toString() {
            return "Specified(type=" + this.type + ", offerIdentifier=" + this.offerIdentifier + ")";
        }

        /* JADX INFO: compiled from: ProductItem.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/Offer$Specified$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/Offer$Specified;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Specified> serializer() {
                return Offer$Specified$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Specified(int i, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (2 != (i & 2)) {
                PluginExceptionsKt.throwMissingFieldException(i, 2, Offer$Specified$$serializer.INSTANCE.getDescriptor());
            }
            if ((i & 1) == 0) {
                this.type = "SPECIFIED";
            } else {
                this.type = str;
            }
            this.offerIdentifier = str2;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Specified self, CompositeEncoder output, SerialDescriptor serialDesc) {
            if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.type, "SPECIFIED")) {
                output.encodeStringElement(serialDesc, 0, self.type);
            }
            output.encodeStringElement(serialDesc, 1, self.offerIdentifier);
        }

        public /* synthetic */ Specified(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "SPECIFIED" : str, str2);
        }

        public final String getType() {
            return this.type;
        }

        public final String getOfferIdentifier() {
            return this.offerIdentifier;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Specified(String type, String offerIdentifier) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(offerIdentifier, "offerIdentifier");
            this.type = type;
            this.offerIdentifier = offerIdentifier;
        }
    }
}
