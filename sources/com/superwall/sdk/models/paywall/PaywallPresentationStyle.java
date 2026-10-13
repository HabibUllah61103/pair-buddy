package com.superwall.sdk.models.paywall;

import com.reactcommunity.rndatetimepicker.RNConstants;
import java.lang.annotation.Annotation;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ReplaceWith;
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
import kotlinx.serialization.Transient;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.Json;

/* JADX INFO: compiled from: PaywallPresentationStyle.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000  2\u00020\u0001:\b\u0019\u001a\u001b\u001c\u001d\u001e\u001f B\u0013\b\u0004\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\nJ\u000e\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011J \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0007R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\u0082\u0001\u0007!\"#$%&'¨\u0006("}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "", "rawValue", "", "<init>", "(Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getRawValue$annotations", "()V", "getRawValue", "()Ljava/lang/String;", "toIntentString", "json", "Lkotlinx/serialization/json/Json;", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Modal", "Fullscreen", "FullscreenNoAnimation", "Push", "Drawer", "None", "Popup", "Companion", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public abstract class PaywallPresentationStyle {
    private final String rawValue;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Modal MODAL = Modal.INSTANCE;
    private static final Fullscreen FULLSCREEN = Fullscreen.INSTANCE;
    private static final FullscreenNoAnimation FULLSCREEN_NO_ANIMATION = FullscreenNoAnimation.INSTANCE;
    private static final Push PUSH = Push.INSTANCE;
    private static final Drawer.Companion DRAWER = Drawer.INSTANCE;
    private static final None NONE = None.INSTANCE;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.paywall.PaywallPresentationStyle$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PaywallPresentationStyle._init_$_anonymous_();
        }
    });

    public /* synthetic */ PaywallPresentationStyle(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @Transient
    public static /* synthetic */ void getRawValue$annotations() {
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self(PaywallPresentationStyle self, CompositeEncoder output, SerialDescriptor serialDesc) {
    }

    public /* synthetic */ PaywallPresentationStyle(int i, SerializationConstructorMarker serializationConstructorMarker) {
        this.rawValue = "";
    }

    private PaywallPresentationStyle(String str) {
        this.rawValue = str;
    }

    public final String getRawValue() {
        return this.rawValue;
    }

    public /* synthetic */ PaywallPresentationStyle(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (DefaultConstructorMarker) null);
    }

    /* JADX INFO: compiled from: PaywallPresentationStyle.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u000bJ\t\u0010\f\u001a\u00020\rHÖ\u0001¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "serializer", "Lkotlinx/serialization/KSerializer;", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("MODAL")
    public static final /* data */ class Modal extends PaywallPresentationStyle {
        public static final Modal INSTANCE = new Modal();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.paywall.PaywallPresentationStyle$Modal$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PaywallPresentationStyle.Modal._init_$_anonymous_();
            }
        });

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Modal)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -2049473190;
        }

        public String toString() {
            return "Modal";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("MODAL", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Modal> serializer() {
            return get$cachedSerializer();
        }

        private Modal() {
            super("MODAL", (DefaultConstructorMarker) null);
        }
    }

    /* JADX INFO: compiled from: PaywallPresentationStyle.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u000bJ\t\u0010\f\u001a\u00020\rHÖ\u0001¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "serializer", "Lkotlinx/serialization/KSerializer;", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("FULLSCREEN")
    public static final /* data */ class Fullscreen extends PaywallPresentationStyle {
        public static final Fullscreen INSTANCE = new Fullscreen();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.paywall.PaywallPresentationStyle$Fullscreen$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PaywallPresentationStyle.Fullscreen._init_$_anonymous_();
            }
        });

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Fullscreen)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 2026411310;
        }

        public String toString() {
            return "Fullscreen";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("FULLSCREEN", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Fullscreen> serializer() {
            return get$cachedSerializer();
        }

        private Fullscreen() {
            super("FULLSCREEN", (DefaultConstructorMarker) null);
        }
    }

    /* JADX INFO: compiled from: PaywallPresentationStyle.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u000bJ\t\u0010\f\u001a\u00020\rHÖ\u0001¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "serializer", "Lkotlinx/serialization/KSerializer;", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("NO_ANIMATION")
    public static final /* data */ class FullscreenNoAnimation extends PaywallPresentationStyle {
        public static final FullscreenNoAnimation INSTANCE = new FullscreenNoAnimation();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.paywall.PaywallPresentationStyle$FullscreenNoAnimation$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PaywallPresentationStyle.FullscreenNoAnimation._init_$_anonymous_();
            }
        });

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof FullscreenNoAnimation)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -2063089483;
        }

        public String toString() {
            return "FullscreenNoAnimation";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("NO_ANIMATION", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<FullscreenNoAnimation> serializer() {
            return get$cachedSerializer();
        }

        private FullscreenNoAnimation() {
            super("NO_ANIMATION", (DefaultConstructorMarker) null);
        }
    }

    /* JADX INFO: compiled from: PaywallPresentationStyle.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u000bJ\t\u0010\f\u001a\u00020\rHÖ\u0001¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "serializer", "Lkotlinx/serialization/KSerializer;", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("PUSH")
    public static final /* data */ class Push extends PaywallPresentationStyle {
        public static final Push INSTANCE = new Push();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.paywall.PaywallPresentationStyle$Push$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PaywallPresentationStyle.Push._init_$_anonymous_();
            }
        });

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Push)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -204563763;
        }

        public String toString() {
            return "Push";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("PUSH", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Push> serializer() {
            return get$cachedSerializer();
        }

        private Push() {
            super("PUSH", (DefaultConstructorMarker) null);
        }
    }

    /* JADX INFO: compiled from: PaywallPresentationStyle.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 %2\u00020\u0001:\u0002$%B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B+\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\u000bJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\bHÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J%\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0001¢\u0006\u0002\b#R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u000f¨\u0006&"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "height", "", "cornerRadius", "<init>", "(DD)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IDDLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getHeight$annotations", "()V", "getHeight", "()D", "getCornerRadius$annotations", "getCornerRadius", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("DRAWER")
    public static final /* data */ class Drawer extends PaywallPresentationStyle {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final double cornerRadius;
        private final double height;

        public static /* synthetic */ Drawer copy$default(Drawer drawer, double d, double d2, int i, Object obj) {
            if ((i & 1) != 0) {
                d = drawer.height;
            }
            if ((i & 2) != 0) {
                d2 = drawer.cornerRadius;
            }
            return drawer.copy(d, d2);
        }

        @SerialName("corner_radius")
        public static /* synthetic */ void getCornerRadius$annotations() {
        }

        @SerialName("height")
        public static /* synthetic */ void getHeight$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final double getHeight() {
            return this.height;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final double getCornerRadius() {
            return this.cornerRadius;
        }

        public final Drawer copy(double height, double cornerRadius) {
            return new Drawer(height, cornerRadius);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Drawer)) {
                return false;
            }
            Drawer drawer = (Drawer) other;
            return Double.compare(this.height, drawer.height) == 0 && Double.compare(this.cornerRadius, drawer.cornerRadius) == 0;
        }

        public int hashCode() {
            return (Double.hashCode(this.height) * 31) + Double.hashCode(this.cornerRadius);
        }

        public String toString() {
            return "Drawer(height=" + this.height + ", cornerRadius=" + this.cornerRadius + ")";
        }

        /* JADX INFO: compiled from: PaywallPresentationStyle.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Drawer> serializer() {
                return PaywallPresentationStyle$Drawer$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Drawer(int i, double d, double d2, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, PaywallPresentationStyle$Drawer$$serializer.INSTANCE.getDescriptor());
            }
            this.height = d;
            this.cornerRadius = d2;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Drawer self, CompositeEncoder output, SerialDescriptor serialDesc) {
            PaywallPresentationStyle.write$Self(self, output, serialDesc);
            output.encodeDoubleElement(serialDesc, 0, self.height);
            output.encodeDoubleElement(serialDesc, 1, self.cornerRadius);
        }

        public final double getHeight() {
            return this.height;
        }

        public final double getCornerRadius() {
            return this.cornerRadius;
        }

        public Drawer(double d, double d2) {
            super("DRAWER", (DefaultConstructorMarker) null);
            this.height = d;
            this.cornerRadius = d2;
        }
    }

    /* JADX INFO: compiled from: PaywallPresentationStyle.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u000bJ\t\u0010\f\u001a\u00020\rHÖ\u0001¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "serializer", "Lkotlinx/serialization/KSerializer;", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("NONE")
    public static final /* data */ class None extends PaywallPresentationStyle {
        public static final None INSTANCE = new None();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.paywall.PaywallPresentationStyle$None$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PaywallPresentationStyle.None._init_$_anonymous_();
            }
        });

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof None)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -204629269;
        }

        public String toString() {
            return "None";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("NONE", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<None> serializer() {
            return get$cachedSerializer();
        }

        private None() {
            super("NONE", (DefaultConstructorMarker) null);
        }
    }

    /* JADX INFO: compiled from: PaywallPresentationStyle.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 )2\u00020\u0001:\u0002()B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007B3\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J'\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\tHÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J%\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0001¢\u0006\u0002\b'R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0010¨\u0006*"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "height", "", "width", "cornerRadius", "<init>", "(DDD)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IDDDLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getHeight$annotations", "()V", "getHeight", "()D", "getWidth$annotations", "getWidth", "getCornerRadius$annotations", "getCornerRadius", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("POPUP")
    public static final /* data */ class Popup extends PaywallPresentationStyle {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final double cornerRadius;
        private final double height;
        private final double width;

        public static /* synthetic */ Popup copy$default(Popup popup, double d, double d2, double d3, int i, Object obj) {
            if ((i & 1) != 0) {
                d = popup.height;
            }
            double d4 = d;
            if ((i & 2) != 0) {
                d2 = popup.width;
            }
            double d5 = d2;
            if ((i & 4) != 0) {
                d3 = popup.cornerRadius;
            }
            return popup.copy(d4, d5, d3);
        }

        @SerialName("corner_radius")
        public static /* synthetic */ void getCornerRadius$annotations() {
        }

        @SerialName("height")
        public static /* synthetic */ void getHeight$annotations() {
        }

        @SerialName("width")
        public static /* synthetic */ void getWidth$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final double getHeight() {
            return this.height;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final double getWidth() {
            return this.width;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final double getCornerRadius() {
            return this.cornerRadius;
        }

        public final Popup copy(double height, double width, double cornerRadius) {
            return new Popup(height, width, cornerRadius);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Popup)) {
                return false;
            }
            Popup popup = (Popup) other;
            return Double.compare(this.height, popup.height) == 0 && Double.compare(this.width, popup.width) == 0 && Double.compare(this.cornerRadius, popup.cornerRadius) == 0;
        }

        public int hashCode() {
            return (((Double.hashCode(this.height) * 31) + Double.hashCode(this.width)) * 31) + Double.hashCode(this.cornerRadius);
        }

        public String toString() {
            return "Popup(height=" + this.height + ", width=" + this.width + ", cornerRadius=" + this.cornerRadius + ")";
        }

        /* JADX INFO: compiled from: PaywallPresentationStyle.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Popup> serializer() {
                return PaywallPresentationStyle$Popup$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Popup(int i, double d, double d2, double d3, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (7 != (i & 7)) {
                PluginExceptionsKt.throwMissingFieldException(i, 7, PaywallPresentationStyle$Popup$$serializer.INSTANCE.getDescriptor());
            }
            this.height = d;
            this.width = d2;
            this.cornerRadius = d3;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Popup self, CompositeEncoder output, SerialDescriptor serialDesc) {
            PaywallPresentationStyle.write$Self(self, output, serialDesc);
            output.encodeDoubleElement(serialDesc, 0, self.height);
            output.encodeDoubleElement(serialDesc, 1, self.width);
            output.encodeDoubleElement(serialDesc, 2, self.cornerRadius);
        }

        public final double getHeight() {
            return this.height;
        }

        public final double getWidth() {
            return this.width;
        }

        public final double getCornerRadius() {
            return this.cornerRadius;
        }

        public Popup(double d, double d2, double d3) {
            super("POPUP", (DefaultConstructorMarker) null);
            this.height = d;
            this.width = d2;
            this.cornerRadius = d3;
        }
    }

    public final String toIntentString(Json json) {
        Intrinsics.checkNotNullParameter(json, "json");
        Json json2 = json;
        json2.getSerializersModule();
        return json2.encodeToString(INSTANCE.serializer(), this);
    }

    /* JADX INFO: compiled from: PaywallPresentationStyle.kt */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J\f\u0010(\u001a\b\u0012\u0004\u0012\u00020#0)R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\u0003\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0003\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u00020\u00148\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0003\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u00020\u00198\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001a\u0010\u0003\u001a\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u00020\u001e8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0003\u001a\u0004\b \u0010!¨\u0006*"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;", "", "<init>", "()V", "MODAL", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;", "getMODAL$annotations", "getMODAL", "()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;", "FULLSCREEN", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;", "getFULLSCREEN$annotations", "getFULLSCREEN", "()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;", "FULLSCREEN_NO_ANIMATION", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;", "getFULLSCREEN_NO_ANIMATION$annotations", "getFULLSCREEN_NO_ANIMATION", "()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;", "PUSH", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;", "getPUSH$annotations", "getPUSH", "()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;", "DRAWER", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;", "getDRAWER$annotations", "getDRAWER", "()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;", "NONE", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;", "getNONE$annotations", "getNONE", "()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;", "fromIntentString", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "json", "Lkotlinx/serialization/json/Json;", RNConstants.ARG_VALUE, "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Deprecated(message = "Use PaywallPresentationStyle.Drawer instead", replaceWith = @ReplaceWith(expression = "PaywallPresentationStyle.Drawer", imports = {}))
        public static /* synthetic */ void getDRAWER$annotations() {
        }

        @Deprecated(message = "Use PaywallPresentationStyle.Fullscreen instead", replaceWith = @ReplaceWith(expression = "PaywallPresentationStyle.Fullscreen", imports = {}))
        public static /* synthetic */ void getFULLSCREEN$annotations() {
        }

        @Deprecated(message = "Use PaywallPresentationStyle.FullscreenNoAnimation instead", replaceWith = @ReplaceWith(expression = "PaywallPresentationStyle.FullscreenNoAnimation", imports = {}))
        public static /* synthetic */ void getFULLSCREEN_NO_ANIMATION$annotations() {
        }

        @Deprecated(message = "Use PaywallPresentationStyle.Modal instead", replaceWith = @ReplaceWith(expression = "PaywallPresentationStyle.Modal", imports = {}))
        public static /* synthetic */ void getMODAL$annotations() {
        }

        @Deprecated(message = "Use PaywallPresentationStyle.None instead", replaceWith = @ReplaceWith(expression = "PaywallPresentationStyle.None", imports = {}))
        public static /* synthetic */ void getNONE$annotations() {
        }

        @Deprecated(message = "Use PaywallPresentationStyle.Push instead", replaceWith = @ReplaceWith(expression = "PaywallPresentationStyle.Push", imports = {}))
        public static /* synthetic */ void getPUSH$annotations() {
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) PaywallPresentationStyle.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<PaywallPresentationStyle> serializer() {
            return get$cachedSerializer();
        }

        public final Modal getMODAL() {
            return PaywallPresentationStyle.MODAL;
        }

        public final Fullscreen getFULLSCREEN() {
            return PaywallPresentationStyle.FULLSCREEN;
        }

        public final FullscreenNoAnimation getFULLSCREEN_NO_ANIMATION() {
            return PaywallPresentationStyle.FULLSCREEN_NO_ANIMATION;
        }

        public final Push getPUSH() {
            return PaywallPresentationStyle.PUSH;
        }

        public final Drawer.Companion getDRAWER() {
            return PaywallPresentationStyle.DRAWER;
        }

        public final None getNONE() {
            return PaywallPresentationStyle.NONE;
        }

        public final PaywallPresentationStyle fromIntentString(Json json, String value) {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(value, "value");
            json.getSerializersModule();
            return (PaywallPresentationStyle) json.decodeFromString(PaywallPresentationStyle.INSTANCE.serializer(), value);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ KSerializer _init_$_anonymous_() {
        return new SealedClassSerializer("com.superwall.sdk.models.paywall.PaywallPresentationStyle", Reflection.getOrCreateKotlinClass(PaywallPresentationStyle.class), new KClass[]{Reflection.getOrCreateKotlinClass(Drawer.class), Reflection.getOrCreateKotlinClass(Fullscreen.class), Reflection.getOrCreateKotlinClass(FullscreenNoAnimation.class), Reflection.getOrCreateKotlinClass(Modal.class), Reflection.getOrCreateKotlinClass(None.class), Reflection.getOrCreateKotlinClass(Popup.class), Reflection.getOrCreateKotlinClass(Push.class)}, new KSerializer[]{PaywallPresentationStyle$Drawer$$serializer.INSTANCE, new ObjectSerializer("FULLSCREEN", Fullscreen.INSTANCE, new Annotation[0]), new ObjectSerializer("NO_ANIMATION", FullscreenNoAnimation.INSTANCE, new Annotation[0]), new ObjectSerializer("MODAL", Modal.INSTANCE, new Annotation[0]), new ObjectSerializer("NONE", None.INSTANCE, new Annotation[0]), PaywallPresentationStyle$Popup$$serializer.INSTANCE, new ObjectSerializer("PUSH", Push.INSTANCE, new Annotation[0])}, new Annotation[0]);
    }
}
