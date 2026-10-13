package com.superwall.sdk.paywall.presentation;

import java.lang.annotation.Annotation;
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
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: PaywallCloseReason.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00192\u00020\u0001:\u0006\u0014\u0015\u0016\u0017\u0018\u0019B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0002\u0010\bJ \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\u0082\u0001\u0005\u001a\u001b\u001c\u001d\u001e¨\u0006\u001f"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "", "<init>", "()V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "stateShouldComplete", "", "getStateShouldComplete", "()Z", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "SystemLogic", "ForNextPaywall", "WebViewFailedToLoad", "ManualClose", "None", "Companion", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ForNextPaywall;", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$SystemLogic;", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$WebViewFailedToLoad;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public abstract class PaywallCloseReason {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.PaywallCloseReason$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PaywallCloseReason._init_$_anonymous_();
        }
    });

    public /* synthetic */ PaywallCloseReason(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self(PaywallCloseReason self, CompositeEncoder output, SerialDescriptor serialDesc) {
    }

    /* JADX INFO: compiled from: PaywallCloseReason.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) PaywallCloseReason.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<PaywallCloseReason> serializer() {
            return get$cachedSerializer();
        }
    }

    private PaywallCloseReason() {
    }

    public /* synthetic */ PaywallCloseReason(int i, SerializationConstructorMarker serializationConstructorMarker) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ KSerializer _init_$_anonymous_() {
        return new SealedClassSerializer("com.superwall.sdk.paywall.presentation.PaywallCloseReason", Reflection.getOrCreateKotlinClass(PaywallCloseReason.class), new KClass[0], new KSerializer[0], new Annotation[0]);
    }

    /* JADX INFO: compiled from: PaywallCloseReason.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$SystemLogic;", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SystemLogic extends PaywallCloseReason {
        public static final SystemLogic INSTANCE = new SystemLogic();

        private SystemLogic() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallCloseReason.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ForNextPaywall;", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ForNextPaywall extends PaywallCloseReason {
        public static final ForNextPaywall INSTANCE = new ForNextPaywall();

        private ForNextPaywall() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallCloseReason.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$WebViewFailedToLoad;", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class WebViewFailedToLoad extends PaywallCloseReason {
        public static final WebViewFailedToLoad INSTANCE = new WebViewFailedToLoad();

        private WebViewFailedToLoad() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallCloseReason.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ManualClose extends PaywallCloseReason {
        public static final ManualClose INSTANCE = new ManualClose();

        private ManualClose() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallCloseReason.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class None extends PaywallCloseReason {
        public static final None INSTANCE = new None();

        private None() {
            super(null);
        }
    }

    public final boolean getStateShouldComplete() {
        return ((this instanceof ForNextPaywall) || Intrinsics.areEqual(this, None.INSTANCE)) ? false : true;
    }
}
