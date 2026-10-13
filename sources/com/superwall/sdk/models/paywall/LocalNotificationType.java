package com.superwall.sdk.models.paywall;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;

/* JADX INFO: compiled from: LocalNotification.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \n2\u00020\u0001:\u0003\b\t\nB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\u000b\f¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/models/paywall/LocalNotificationType;", "", "raw", "", "<init>", "(Ljava/lang/String;)V", "getRaw", "()Ljava/lang/String;", "TrialStarted", "Unsupported", "Companion", "Lcom/superwall/sdk/models/paywall/LocalNotificationType$TrialStarted;", "Lcom/superwall/sdk/models/paywall/LocalNotificationType$Unsupported;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable(with = LocalNotificationTypeSerializer.class)
public abstract class LocalNotificationType {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String raw;

    public /* synthetic */ LocalNotificationType(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    /* JADX INFO: compiled from: LocalNotification.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/paywall/LocalNotificationType$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/paywall/LocalNotificationType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<LocalNotificationType> serializer() {
            return LocalNotificationTypeSerializer.INSTANCE;
        }
    }

    private LocalNotificationType(String str) {
        this.raw = str;
    }

    public final String getRaw() {
        return this.raw;
    }

    /* JADX INFO: compiled from: LocalNotification.kt */
    @SerialName("TRIAL_STARTED")
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/models/paywall/LocalNotificationType$TrialStarted;", "Lcom/superwall/sdk/models/paywall/LocalNotificationType;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class TrialStarted extends LocalNotificationType {
        public static final TrialStarted INSTANCE = new TrialStarted();

        private TrialStarted() {
            super("TRIAL_STARTED", null);
        }
    }

    /* JADX INFO: compiled from: LocalNotification.kt */
    @SerialName("UNSUPPORTED")
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/models/paywall/LocalNotificationType$Unsupported;", "Lcom/superwall/sdk/models/paywall/LocalNotificationType;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Unsupported extends LocalNotificationType {
        public static final Unsupported INSTANCE = new Unsupported();

        private Unsupported() {
            super("TRIAL_STARTED", null);
        }
    }
}
