package com.superwall.sdk.config.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;

/* JADX INFO: compiled from: OnDeviceCaching.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00062\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0007\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/config/models/OnDeviceCaching;", "", "<init>", "()V", "Enabled", "Disabled", "Companion", "Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;", "Lcom/superwall/sdk/config/models/OnDeviceCaching$Enabled;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable(with = OnDeviceCachingSerializer.class)
public abstract class OnDeviceCaching {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public /* synthetic */ OnDeviceCaching(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: OnDeviceCaching.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/config/models/OnDeviceCaching$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/config/models/OnDeviceCaching;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<OnDeviceCaching> serializer() {
            return OnDeviceCachingSerializer.INSTANCE;
        }
    }

    private OnDeviceCaching() {
    }

    /* JADX INFO: compiled from: OnDeviceCaching.kt */
    @SerialName("ENABLED")
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/models/OnDeviceCaching$Enabled;", "Lcom/superwall/sdk/config/models/OnDeviceCaching;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Enabled extends OnDeviceCaching {
        public static final Enabled INSTANCE = new Enabled();

        private Enabled() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: OnDeviceCaching.kt */
    @SerialName("DISABLED")
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;", "Lcom/superwall/sdk/config/models/OnDeviceCaching;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Disabled extends OnDeviceCaching {
        public static final Disabled INSTANCE = new Disabled();

        private Disabled() {
            super(null);
        }
    }
}
