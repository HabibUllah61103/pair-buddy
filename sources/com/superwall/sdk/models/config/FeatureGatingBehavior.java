package com.superwall.sdk.models.config;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;

/* JADX INFO: compiled from: FeatureGatingBehaviour.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00062\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0007\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/models/config/FeatureGatingBehavior;", "", "<init>", "()V", "Gated", "NonGated", "Companion", "Lcom/superwall/sdk/models/config/FeatureGatingBehavior$Gated;", "Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable(with = FeatureGatingBehaviorSerializer.class)
public abstract class FeatureGatingBehavior {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public /* synthetic */ FeatureGatingBehavior(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: FeatureGatingBehaviour.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/config/FeatureGatingBehavior$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<FeatureGatingBehavior> serializer() {
            return FeatureGatingBehaviorSerializer.INSTANCE;
        }
    }

    private FeatureGatingBehavior() {
    }

    /* JADX INFO: compiled from: FeatureGatingBehaviour.kt */
    @SerialName("GATED")
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/models/config/FeatureGatingBehavior$Gated;", "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Gated extends FeatureGatingBehavior {
        public static final Gated INSTANCE = new Gated();

        private Gated() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: FeatureGatingBehaviour.kt */
    @SerialName("NON_GATED")
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;", "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class NonGated extends FeatureGatingBehavior {
        public static final NonGated INSTANCE = new NonGated();

        private NonGated() {
            super(null);
        }
    }
}
