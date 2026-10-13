package com.superwall.sdk.analytics.internal;

import androidx.core.app.NotificationCompat;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.analytics.internal.trackable.Trackable;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.analytics.superwall.SuperwallEvents;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.paywall.PaywallURL;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.storage.core_data.ConvertersKt;
import java.net.URI;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import org.threeten.bp.LocalDateTime;
import org.threeten.bp.ZoneId;
import org.threeten.bp.ZoneOffset;

/* JADX INFO: compiled from: TrackingLogic.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b6\u0018\u0000 \u00052\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/analytics/internal/TrackingLogic;", "", "<init>", "()V", "ImplicitTriggerOutcome", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class TrackingLogic {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public /* synthetic */ TrackingLogic(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: TrackingLogic.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\bB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0005\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;", "", "<init>", "()V", "TriggerPaywall", "DeepLinkTrigger", "DisallowedEventAsTrigger", "DontTriggerPaywall", "ClosePaywallThenTriggerPaywall", "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$ClosePaywallThenTriggerPaywall;", "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DeepLinkTrigger;", "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DisallowedEventAsTrigger;", "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DontTriggerPaywall;", "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$TriggerPaywall;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class ImplicitTriggerOutcome {
        public /* synthetic */ ImplicitTriggerOutcome(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: TrackingLogic.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$TriggerPaywall;", "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class TriggerPaywall extends ImplicitTriggerOutcome {
            public static final TriggerPaywall INSTANCE = new TriggerPaywall();

            private TriggerPaywall() {
                super(null);
            }
        }

        private ImplicitTriggerOutcome() {
        }

        /* JADX INFO: compiled from: TrackingLogic.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DeepLinkTrigger;", "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class DeepLinkTrigger extends ImplicitTriggerOutcome {
            public static final DeepLinkTrigger INSTANCE = new DeepLinkTrigger();

            private DeepLinkTrigger() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: TrackingLogic.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DisallowedEventAsTrigger;", "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class DisallowedEventAsTrigger extends ImplicitTriggerOutcome {
            public static final DisallowedEventAsTrigger INSTANCE = new DisallowedEventAsTrigger();

            private DisallowedEventAsTrigger() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: TrackingLogic.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DontTriggerPaywall;", "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class DontTriggerPaywall extends ImplicitTriggerOutcome {
            public static final DontTriggerPaywall INSTANCE = new DontTriggerPaywall();

            private DontTriggerPaywall() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: TrackingLogic.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$ClosePaywallThenTriggerPaywall;", "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class ClosePaywallThenTriggerPaywall extends ImplicitTriggerOutcome {
            public static final ClosePaywallThenTriggerPaywall INSTANCE = new ClosePaywallThenTriggerPaywall();

            private ClosePaywallThenTriggerPaywall() {
                super(null);
            }
        }
    }

    private TrackingLogic() {
    }

    /* JADX INFO: compiled from: TrackingLogic.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\nJ%\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0002J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\tJ&\u0010\u0015\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u00072\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a¨\u0006\u001b"}, d2 = {"Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;", "", "<init>", "()V", "processParameters", "Lcom/superwall/sdk/analytics/internal/TrackingParameters;", "trackableEvent", "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;", "appSessionId", "", "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isNotDisabledVerboseEvent", "", NotificationCompat.CATEGORY_EVENT, "disableVerboseEvents", "isSandbox", "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Ljava/lang/Boolean;Z)Z", "clean", "input", "checkNotSuperwallEvent", "", "canTriggerPaywall", "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;", "triggers", "", "paywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: TrackingLogic.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SuperwallEvents.values().length];
                try {
                    iArr[SuperwallEvents.TransactionAbandon.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SuperwallEvents.TransactionFail.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SuperwallEvents.SurveyResponse.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[SuperwallEvents.PaywallDecline.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[SuperwallEvents.CustomPlacement.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Object processParameters(Trackable trackable, String str, Continuation<? super TrackingParameters> continuation) {
            return BuildersKt.withContext(Dispatchers.getIO(), new TrackingLogic$Companion$processParameters$2(trackable, str, null), continuation);
        }

        public final boolean isNotDisabledVerboseEvent(Trackable event, Boolean disableVerboseEvents, boolean isSandbox) {
            Intrinsics.checkNotNullParameter(event, "event");
            if (disableVerboseEvents != null) {
                boolean zBooleanValue = disableVerboseEvents.booleanValue();
                if (isSandbox) {
                    return true;
                }
                if (event instanceof InternalSuperwallEvent.PresentationRequest) {
                    return !zBooleanValue;
                }
                InternalSuperwallEvent.PaywallLoad paywallLoad = event instanceof InternalSuperwallEvent.PaywallLoad ? (InternalSuperwallEvent.PaywallLoad) event : null;
                if (paywallLoad != null) {
                    InternalSuperwallEvent.PaywallLoad.State state = paywallLoad.getState();
                    return (((state instanceof InternalSuperwallEvent.PaywallLoad.State.Start) || (state instanceof InternalSuperwallEvent.PaywallLoad.State.Complete)) && zBooleanValue) ? false : true;
                }
                if (event instanceof InternalSuperwallEvent.ShimmerLoad) {
                    return !zBooleanValue;
                }
                InternalSuperwallEvent.PaywallProductsLoad paywallProductsLoad = event instanceof InternalSuperwallEvent.PaywallProductsLoad ? (InternalSuperwallEvent.PaywallProductsLoad) event : null;
                if (paywallProductsLoad != null) {
                    InternalSuperwallEvent.PaywallProductsLoad.State state2 = paywallProductsLoad.getState();
                    return (((state2 instanceof InternalSuperwallEvent.PaywallProductsLoad.State.Start) || (state2 instanceof InternalSuperwallEvent.PaywallProductsLoad.State.Complete)) && zBooleanValue) ? false : true;
                }
                InternalSuperwallEvent.PaywallWebviewLoad paywallWebviewLoad = event instanceof InternalSuperwallEvent.PaywallWebviewLoad ? (InternalSuperwallEvent.PaywallWebviewLoad) event : null;
                if (paywallWebviewLoad != null) {
                    InternalSuperwallEvent.PaywallWebviewLoad.State state3 = paywallWebviewLoad.getState();
                    return (((state3 instanceof InternalSuperwallEvent.PaywallWebviewLoad.State.Start) || (state3 instanceof InternalSuperwallEvent.PaywallWebviewLoad.State.Complete)) && zBooleanValue) ? false : true;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object clean(Object input) {
            Object objM10667toStringimpl = null;
            if (input == null) {
                return null;
            }
            if (!(input instanceof List)) {
                if ((input instanceof Map) || (input instanceof String) || (input instanceof Integer) || (input instanceof Float) || (input instanceof Double) || (input instanceof Long) || (input instanceof Boolean)) {
                    return input;
                }
                if (input instanceof JsonElement) {
                    return ConvertersKt.convertFromJsonElement((JsonElement) input);
                }
                try {
                    Json.Companion companion = Json.INSTANCE;
                    companion.encodeToString(SerializersKt.noCompiledSerializer(companion.getSerializersModule(), Reflection.getOrCreateKotlinClass(Object.class)), input);
                    return input;
                } catch (SerializationException unused) {
                    if (input instanceof LocalDateTime) {
                        objM10667toStringimpl = Long.valueOf(((LocalDateTime) input).atZone((ZoneId) ZoneOffset.UTC).toInstant().toEpochMilli());
                    } else if (input instanceof URI) {
                        objM10667toStringimpl = ((URI) input).toString();
                    } else if (input instanceof PaywallURL) {
                        objM10667toStringimpl = PaywallURL.m10667toStringimpl(((PaywallURL) input).m10668unboximpl());
                    }
                }
            }
            return objM10667toStringimpl;
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0020 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:11:0x0021  */
        public final void checkNotSuperwallEvent(String event) throws Exception {
            Intrinsics.checkNotNullParameter(event, "event");
            for (SuperwallEvents superwallEvents : SuperwallEvents.values()) {
                if (Intrinsics.areEqual(superwallEvents.getRawName(), event)) {
                    if (superwallEvents == null) {
                        throw new Exception("Do not track an event with the same name as a SuperwallEvent");
                    }
                }
            }
            superwallEvents = null;
            if (superwallEvents == null) {
                throw new Exception("Do not track an event with the same name as a SuperwallEvent");
            }
        }

        public final ImplicitTriggerOutcome canTriggerPaywall(Trackable event, Set<String> triggers, PaywallView paywallView) {
            PaywallInfo info;
            Intrinsics.checkNotNullParameter(event, "event");
            Intrinsics.checkNotNullParameter(triggers, "triggers");
            boolean z = event instanceof TrackableSuperwallEvent;
            if (z && Intrinsics.areEqual(((TrackableSuperwallEvent) event).getSuperwallPlacement().getRawName(), SuperwallEvents.DeepLink.getRawName())) {
                return ImplicitTriggerOutcome.DeepLinkTrigger.INSTANCE;
            }
            if (!triggers.contains(event.getRawName())) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "!! canTriggerPaywall: triggers.contains(event.rawName) " + event.getRawName() + " " + triggers, null, null, 24, null);
                return ImplicitTriggerOutcome.DontTriggerPaywall.INSTANCE;
            }
            String presentedByEventWithName = (paywallView == null || (info = paywallView.getInfo()) == null) ? null : info.getPresentedByEventWithName();
            if (presentedByEventWithName != null && z) {
                String rawName = ((TrackableSuperwallEvent) event).getSuperwallPlacement().getBackingEvent().getRawName();
                if (SetsKt.setOf((Object[]) new String[]{SuperwallEvents.TransactionAbandon.getRawName(), SuperwallEvents.TransactionFail.getRawName(), SuperwallEvents.PaywallDecline.getRawName(), SuperwallEvents.CustomPlacement.getRawName()}).contains(presentedByEventWithName) && Intrinsics.areEqual(presentedByEventWithName, rawName)) {
                    Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "!! canTriggerPaywall: Blocking duplicate exit offer event: " + rawName, null, null, 24, null);
                    return ImplicitTriggerOutcome.DontTriggerPaywall.INSTANCE;
                }
            }
            if (!z) {
                if (paywallView != null) {
                    Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "!! canTriggerPaywall: paywallViewController != null", null, null, 24, null);
                    return ImplicitTriggerOutcome.DontTriggerPaywall.INSTANCE;
                }
                return ImplicitTriggerOutcome.TriggerPaywall.INSTANCE;
            }
            int i = WhenMappings.$EnumSwitchMapping$0[((TrackableSuperwallEvent) event).getSuperwallPlacement().getBackingEvent().ordinal()];
            if (i == 1 || i == 2 || i == 3 || i == 4 || i == 5) {
                return ImplicitTriggerOutcome.ClosePaywallThenTriggerPaywall.INSTANCE;
            }
            return ImplicitTriggerOutcome.TriggerPaywall.INSTANCE;
        }
    }
}
