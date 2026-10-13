package com.superwall.sdk.config.models;

import androidx.compose.runtime.ComposerKt;
import androidx.media3.extractor.ts.TsExtractor;
import com.facebook.imagepipeline.common.RotationOptions;
import com.google.firebase.messaging.Constants;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.config.ConfigContext;
import com.superwall.sdk.config.ConfigLogic;
import com.superwall.sdk.config.PaywallPreload;
import com.superwall.sdk.config.options.PaywallOptionsKt;
import com.superwall.sdk.identity.IdentityManager;
import com.superwall.sdk.identity.Keys;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.misc.primitives.Reducer;
import com.superwall.sdk.misc.primitives.TypedAction;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.enrichment.Enrichment;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.product.CrossplatformProduct;
import com.superwall.sdk.network.NetworkError;
import com.superwall.sdk.network.device.DeviceHelper;
import com.superwall.sdk.storage.DisableVerboseEvents;
import com.superwall.sdk.storage.LatestConfig;
import com.superwall.sdk.store.testmode.TestMode;
import com.superwall.sdk.web.WebPaywallRedeemer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ConfigState.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\b\t\nB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0005\u000b\f\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState;", "", "<init>", "()V", "None", "Retrieving", "Retrying", "Retrieved", "Failed", "Updates", "Actions", "Lcom/superwall/sdk/config/models/ConfigState$Failed;", "Lcom/superwall/sdk/config/models/ConfigState$None;", "Lcom/superwall/sdk/config/models/ConfigState$Retrieved;", "Lcom/superwall/sdk/config/models/ConfigState$Retrieving;", "Lcom/superwall/sdk/config/models/ConfigState$Retrying;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class ConfigState {
    public /* synthetic */ ConfigState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: ConfigState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$None;", "Lcom/superwall/sdk/config/models/ConfigState;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class None extends ConfigState {
        public static final None INSTANCE = new None();

        private None() {
            super(null);
        }
    }

    private ConfigState() {
    }

    /* JADX INFO: compiled from: ConfigState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Retrieving;", "Lcom/superwall/sdk/config/models/ConfigState;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Retrieving extends ConfigState {
        public static final Retrieving INSTANCE = new Retrieving();

        private Retrieving() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: ConfigState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Retrying;", "Lcom/superwall/sdk/config/models/ConfigState;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Retrying extends ConfigState {
        public static final Retrying INSTANCE = new Retrying();

        private Retrying() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: ConfigState.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Retrieved;", "Lcom/superwall/sdk/config/models/ConfigState;", "config", "Lcom/superwall/sdk/models/config/Config;", "<init>", "(Lcom/superwall/sdk/models/config/Config;)V", "getConfig", "()Lcom/superwall/sdk/models/config/Config;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Retrieved extends ConfigState {
        private final Config config;

        public static /* synthetic */ Retrieved copy$default(Retrieved retrieved, Config config, int i, Object obj) {
            if ((i & 1) != 0) {
                config = retrieved.config;
            }
            return retrieved.copy(config);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Config getConfig() {
            return this.config;
        }

        public final Retrieved copy(Config config) {
            Intrinsics.checkNotNullParameter(config, "config");
            return new Retrieved(config);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Retrieved) && Intrinsics.areEqual(this.config, ((Retrieved) other).config);
        }

        public int hashCode() {
            return this.config.hashCode();
        }

        public String toString() {
            return "Retrieved(config=" + this.config + ")";
        }

        public final Config getConfig() {
            return this.config;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Retrieved(Config config) {
            super(null);
            Intrinsics.checkNotNullParameter(config, "config");
            this.config = config;
        }
    }

    /* JADX INFO: compiled from: ConfigState.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Failed;", "Lcom/superwall/sdk/config/models/ConfigState;", "throwable", "", "retryCount", "", "<init>", "(Ljava/lang/Throwable;I)V", "getThrowable", "()Ljava/lang/Throwable;", "getRetryCount", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Failed extends ConfigState {
        private final int retryCount;
        private final Throwable throwable;

        public static /* synthetic */ Failed copy$default(Failed failed, Throwable th, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                th = failed.throwable;
            }
            if ((i2 & 2) != 0) {
                i = failed.retryCount;
            }
            return failed.copy(th, i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Throwable getThrowable() {
            return this.throwable;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getRetryCount() {
            return this.retryCount;
        }

        public final Failed copy(Throwable throwable, int retryCount) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            return new Failed(throwable, retryCount);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Failed)) {
                return false;
            }
            Failed failed = (Failed) other;
            return Intrinsics.areEqual(this.throwable, failed.throwable) && this.retryCount == failed.retryCount;
        }

        public int hashCode() {
            return (this.throwable.hashCode() * 31) + Integer.hashCode(this.retryCount);
        }

        public String toString() {
            return "Failed(throwable=" + this.throwable + ", retryCount=" + this.retryCount + ")";
        }

        public /* synthetic */ Failed(Throwable th, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(th, (i2 & 2) != 0 ? 0 : i);
        }

        public final Throwable getThrowable() {
            return this.throwable;
        }

        public final int getRetryCount() {
            return this.retryCount;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failed(Throwable throwable, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            this.throwable = throwable;
            this.retryCount = i;
        }
    }

    /* JADX INFO: compiled from: ConfigState.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\t\n\u000b\f\rB\u001d\b\u0004\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R \u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b\u0082\u0001\u0005\u000e\u000f\u0010\u0011\u0012¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Updates;", "Lcom/superwall/sdk/misc/primitives/Reducer;", "Lcom/superwall/sdk/config/models/ConfigState;", "reduce", "Lkotlin/Function1;", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "getReduce", "()Lkotlin/jvm/functions/Function1;", "SetRetrieving", "SetRetrying", "SetRetrieved", "SetFailed", "Set", "Lcom/superwall/sdk/config/models/ConfigState$Updates$Set;", "Lcom/superwall/sdk/config/models/ConfigState$Updates$SetFailed;", "Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;", "Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieving;", "Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrying;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Updates implements Reducer<ConfigState> {
        private final Function1<ConfigState, ConfigState> reduce;

        public /* synthetic */ Updates(Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
            this(function1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Updates(Function1<? super ConfigState, ? extends ConfigState> function1) {
            this.reduce = function1;
        }

        @Override // com.superwall.sdk.misc.primitives.Reducer
        public Function1<ConfigState, ConfigState> getReduce() {
            return this.reduce;
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieving;", "Lcom/superwall/sdk/config/models/ConfigState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SetRetrieving extends Updates {
            public static final SetRetrieving INSTANCE = new SetRetrieving();

            private SetRetrieving() {
                super(new Function1() { // from class: com.superwall.sdk.config.models.ConfigState$Updates$SetRetrieving$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ConfigState.Updates.SetRetrieving._init_$lambda$0((ConfigState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final ConfigState _init_$lambda$0(ConfigState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Retrieving.INSTANCE;
            }
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrying;", "Lcom/superwall/sdk/config/models/ConfigState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SetRetrying extends Updates {
            public static final SetRetrying INSTANCE = new SetRetrying();

            private SetRetrying() {
                super(new Function1() { // from class: com.superwall.sdk.config.models.ConfigState$Updates$SetRetrying$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ConfigState.Updates.SetRetrying._init_$lambda$0((ConfigState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final ConfigState _init_$lambda$0(ConfigState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Retrying.INSTANCE;
            }
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;", "Lcom/superwall/sdk/config/models/ConfigState$Updates;", "config", "Lcom/superwall/sdk/models/config/Config;", "<init>", "(Lcom/superwall/sdk/models/config/Config;)V", "getConfig", "()Lcom/superwall/sdk/models/config/Config;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class SetRetrieved extends Updates {
            private final Config config;

            public static /* synthetic */ SetRetrieved copy$default(SetRetrieved setRetrieved, Config config, int i, Object obj) {
                if ((i & 1) != 0) {
                    config = setRetrieved.config;
                }
                return setRetrieved.copy(config);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Config getConfig() {
                return this.config;
            }

            public final SetRetrieved copy(Config config) {
                Intrinsics.checkNotNullParameter(config, "config");
                return new SetRetrieved(config);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof SetRetrieved) && Intrinsics.areEqual(this.config, ((SetRetrieved) other).config);
            }

            public int hashCode() {
                return this.config.hashCode();
            }

            public String toString() {
                return "SetRetrieved(config=" + this.config + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SetRetrieved(final Config config) {
                super(new Function1() { // from class: com.superwall.sdk.config.models.ConfigState$Updates$SetRetrieved$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ConfigState.Updates.SetRetrieved._init_$lambda$0(config, (ConfigState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(config, "config");
                this.config = config;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final ConfigState _init_$lambda$0(Config config, ConfigState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new Retrieved(config);
            }

            public final Config getConfig() {
                return this.config;
            }
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Updates$SetFailed;", "Lcom/superwall/sdk/config/models/ConfigState$Updates;", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "", "retryCount", "", "<init>", "(Ljava/lang/Throwable;I)V", "getError", "()Ljava/lang/Throwable;", "getRetryCount", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class SetFailed extends Updates {
            private final Throwable error;
            private final int retryCount;

            public static /* synthetic */ SetFailed copy$default(SetFailed setFailed, Throwable th, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    th = setFailed.error;
                }
                if ((i2 & 2) != 0) {
                    i = setFailed.retryCount;
                }
                return setFailed.copy(th, i);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Throwable getError() {
                return this.error;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final int getRetryCount() {
                return this.retryCount;
            }

            public final SetFailed copy(Throwable error, int retryCount) {
                Intrinsics.checkNotNullParameter(error, "error");
                return new SetFailed(error, retryCount);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof SetFailed)) {
                    return false;
                }
                SetFailed setFailed = (SetFailed) other;
                return Intrinsics.areEqual(this.error, setFailed.error) && this.retryCount == setFailed.retryCount;
            }

            public int hashCode() {
                return (this.error.hashCode() * 31) + Integer.hashCode(this.retryCount);
            }

            public String toString() {
                return "SetFailed(error=" + this.error + ", retryCount=" + this.retryCount + ")";
            }

            public /* synthetic */ SetFailed(Throwable th, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(th, (i2 & 2) != 0 ? 0 : i);
            }

            public final Throwable getError() {
                return this.error;
            }

            public final int getRetryCount() {
                return this.retryCount;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SetFailed(final Throwable error, final int i) {
                super(new Function1() { // from class: com.superwall.sdk.config.models.ConfigState$Updates$SetFailed$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ConfigState.Updates.SetFailed._init_$lambda$0(error, i, (ConfigState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(error, "error");
                this.error = error;
                this.retryCount = i;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final ConfigState _init_$lambda$0(Throwable th, int i, ConfigState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new Failed(th, i);
            }
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Updates$Set;", "Lcom/superwall/sdk/config/models/ConfigState$Updates;", "state", "Lcom/superwall/sdk/config/models/ConfigState;", "<init>", "(Lcom/superwall/sdk/config/models/ConfigState;)V", "getState", "()Lcom/superwall/sdk/config/models/ConfigState;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Set extends Updates {
            private final ConfigState state;

            /* JADX INFO: Access modifiers changed from: private */
            public static final ConfigState _init_$lambda$0(ConfigState configState, ConfigState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return configState;
            }

            public static /* synthetic */ Set copy$default(Set set, ConfigState configState, int i, Object obj) {
                if ((i & 1) != 0) {
                    configState = set.state;
                }
                return set.copy(configState);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final ConfigState getState() {
                return this.state;
            }

            public final Set copy(ConfigState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return new Set(state);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Set) && Intrinsics.areEqual(this.state, ((Set) other).state);
            }

            public int hashCode() {
                return this.state.hashCode();
            }

            public String toString() {
                return "Set(state=" + this.state + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Set(final ConfigState state) {
                super(new Function1() { // from class: com.superwall.sdk.config.models.ConfigState$Updates$Set$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ConfigState.Updates.Set._init_$lambda$0(state, (ConfigState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(state, "state");
                this.state = state;
            }

            public final ConfigState getState() {
                return this.state;
            }
        }
    }

    /* JADX INFO: compiled from: ConfigState.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\t\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016B2\b\u0004\u0012'\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\b¢\u0006\u0004\b\t\u0010\nR7\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bX\u0096\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\f\u0082\u0001\t\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f¨\u0006 "}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Actions;", "Lcom/superwall/sdk/misc/primitives/TypedAction;", "Lcom/superwall/sdk/config/ConfigContext;", "execute", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "<init>", "(Lkotlin/jvm/functions/Function2;)V", "getExecute", "()Lkotlin/jvm/functions/Function2;", "Lkotlin/jvm/functions/Function2;", "FetchConfig", "HandleFetchFailure", "RefreshConfig", "ApplyConfig", "ReevaluateTestMode", "PreloadIfEnabled", "PreloadAll", "PreloadByNames", "GetAssignments", "Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig;", "Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;", "Lcom/superwall/sdk/config/models/ConfigState$Actions$GetAssignments;", "Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure;", "Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadAll;", "Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadByNames;", "Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;", "Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode;", "Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Actions implements TypedAction<ConfigContext> {
        private final Function2<ConfigContext, Continuation<? super Unit>, Object> execute;

        public /* synthetic */ Actions(Function2 function2, DefaultConstructorMarker defaultConstructorMarker) {
            this(function2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Actions(Function2<? super ConfigContext, ? super Continuation<? super Unit>, ? extends Object> function2) {
            this.execute = function2;
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;", "Lcom/superwall/sdk/config/models/ConfigState$Actions;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class FetchConfig extends Actions {
            public static final FetchConfig INSTANCE = new FetchConfig();

            /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1, reason: invalid class name */
            /* JADX INFO: compiled from: ConfigState.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/config/ConfigContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1", f = "ConfigState.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 7, 7, 7}, l = {154, 155, 168, 177, 178, 182, 199, ComposerKt.providerKey, 214}, m = "invokeSuspend", n = {"$this$exec", "isConfigFromCache", "isEnrichmentFromCache", "configRetryCount", "configDuration", "attributesDeferred", "priorRetries", "$this$exec", "isConfigFromCache", "isEnrichmentFromCache", "configRetryCount", "configDuration", "configResultAny", "enrichmentResultAny", "priorRetries", "$this$exec", "isConfigFromCache", "isEnrichmentFromCache", "enrichmentResult", "priorRetries", "$this$exec", "isConfigFromCache", "isEnrichmentFromCache", "enrichmentResult", "priorRetries", "$this$exec", "isConfigFromCache", "isEnrichmentFromCache", "enrichmentResult", "priorRetries", "$this$exec", "isConfigFromCache", "isEnrichmentFromCache", "enrichmentResult", "priorRetries", "$this$exec", "isConfigFromCache", "isEnrichmentFromCache", "enrichmentResult", "priorRetries", "$this$exec", "isConfigFromCache", "priorRetries"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0", "L$0", "L$1", "I$0"})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<ConfigContext, Continuation<? super Unit>, Object> {
                int I$0;
                private /* synthetic */ Object L$0;
                Object L$1;
                Object L$2;
                Object L$3;
                Object L$4;
                Object L$5;
                Object L$6;
                int label;

                AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(ConfigContext configContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(configContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code duplicated, block: B:14:0x00db A[PHI: r2 r3 r4 r7 r8 r10 r11 r12 r15
                  0x00db: PHI (r2v13 int) = (r2v11 int), (r2v14 int) binds: [B:37:0x022b, B:13:0x00b5] A[DONT_GENERATE, DONT_INLINE]
                  0x00db: PHI (r3v2 java.lang.Object) = (r3v1 java.lang.Object), (r3v11 java.lang.Object) binds: [B:37:0x022b, B:13:0x00b5] A[DONT_GENERATE, DONT_INLINE]
                  0x00db: PHI (r4v5 com.superwall.sdk.misc.Either) = (r4v4 com.superwall.sdk.misc.Either), (r4v6 com.superwall.sdk.misc.Either) binds: [B:37:0x022b, B:13:0x00b5] A[DONT_GENERATE, DONT_INLINE]
                  0x00db: PHI (r7v30 com.superwall.sdk.misc.Either) = (r7v26 com.superwall.sdk.misc.Either), (r7v33 com.superwall.sdk.misc.Either) binds: [B:37:0x022b, B:13:0x00b5] A[DONT_GENERATE, DONT_INLINE]
                  0x00db: PHI (r8v8 kotlin.jvm.internal.Ref$LongRef) = (r8v5 kotlin.jvm.internal.Ref$LongRef), (r8v13 kotlin.jvm.internal.Ref$LongRef) binds: [B:37:0x022b, B:13:0x00b5] A[DONT_GENERATE, DONT_INLINE]
                  0x00db: PHI (r10v12 kotlin.jvm.internal.Ref$BooleanRef) = (r10v9 kotlin.jvm.internal.Ref$BooleanRef), (r10v14 kotlin.jvm.internal.Ref$BooleanRef) binds: [B:37:0x022b, B:13:0x00b5] A[DONT_GENERATE, DONT_INLINE]
                  0x00db: PHI (r11v5 kotlin.jvm.internal.Ref$BooleanRef) = (r11v2 kotlin.jvm.internal.Ref$BooleanRef), (r11v9 kotlin.jvm.internal.Ref$BooleanRef) binds: [B:37:0x022b, B:13:0x00b5] A[DONT_GENERATE, DONT_INLINE]
                  0x00db: PHI (r12v8 com.superwall.sdk.config.ConfigContext) = (r12v5 com.superwall.sdk.config.ConfigContext), (r12v10 com.superwall.sdk.config.ConfigContext) binds: [B:37:0x022b, B:13:0x00b5] A[DONT_GENERATE, DONT_INLINE]
                  0x00db: PHI (r15v4 java.util.concurrent.atomic.AtomicInteger) = (r15v2 java.util.concurrent.atomic.AtomicInteger), (r15v5 java.util.concurrent.atomic.AtomicInteger) binds: [B:37:0x022b, B:13:0x00b5] A[DONT_GENERATE, DONT_INLINE]] */
                /* JADX WARN: Code duplicated, block: B:42:0x027a  */
                /* JADX WARN: Code duplicated, block: B:46:0x029d A[PHI: r2 r3 r7 r8 r9 r10
                  0x029d: PHI (r2v17 int) = (r2v15 int), (r2v18 int) binds: [B:44:0x0299, B:11:0x007f] A[DONT_GENERATE, DONT_INLINE]
                  0x029d: PHI (r3v18 java.lang.Object) = (r3v14 java.lang.Object), (r3v23 java.lang.Object) binds: [B:44:0x0299, B:11:0x007f] A[DONT_GENERATE, DONT_INLINE]
                  0x029d: PHI (r7v38 com.superwall.sdk.misc.Either) = (r7v34 com.superwall.sdk.misc.Either), (r7v41 com.superwall.sdk.misc.Either) binds: [B:44:0x0299, B:11:0x007f] A[DONT_GENERATE, DONT_INLINE]
                  0x029d: PHI (r8v17 kotlin.jvm.internal.Ref$BooleanRef) = (r8v14 kotlin.jvm.internal.Ref$BooleanRef), (r8v19 kotlin.jvm.internal.Ref$BooleanRef) binds: [B:44:0x0299, B:11:0x007f] A[DONT_GENERATE, DONT_INLINE]
                  0x029d: PHI (r9v18 com.superwall.sdk.config.ConfigContext) = (r9v15 com.superwall.sdk.config.ConfigContext), (r9v20 com.superwall.sdk.config.ConfigContext) binds: [B:44:0x0299, B:11:0x007f] A[DONT_GENERATE, DONT_INLINE]
                  0x029d: PHI (r10v17 kotlin.jvm.internal.Ref$BooleanRef) = (r10v15 kotlin.jvm.internal.Ref$BooleanRef), (r10v18 kotlin.jvm.internal.Ref$BooleanRef) binds: [B:44:0x0299, B:11:0x007f] A[DONT_GENERATE, DONT_INLINE]] */
                /* JADX WARN: Code duplicated, block: B:48:0x02a5  */
                /* JADX WARN: Code duplicated, block: B:51:0x02ad  */
                /* JADX WARN: Code duplicated, block: B:55:0x02ce A[PHI: r2 r3 r7 r8 r9 r10
                  0x02ce: PHI (r2v19 int) = (r2v17 int), (r2v20 int) binds: [B:53:0x02ca, B:10:0x0064] A[DONT_GENERATE, DONT_INLINE]
                  0x02ce: PHI (r3v24 java.lang.Object) = (r3v20 java.lang.Object), (r3v29 java.lang.Object) binds: [B:53:0x02ca, B:10:0x0064] A[DONT_GENERATE, DONT_INLINE]
                  0x02ce: PHI (r7v42 com.superwall.sdk.misc.Either) = (r7v38 com.superwall.sdk.misc.Either), (r7v45 com.superwall.sdk.misc.Either) binds: [B:53:0x02ca, B:10:0x0064] A[DONT_GENERATE, DONT_INLINE]
                  0x02ce: PHI (r8v20 kotlin.jvm.internal.Ref$BooleanRef) = (r8v17 kotlin.jvm.internal.Ref$BooleanRef), (r8v22 kotlin.jvm.internal.Ref$BooleanRef) binds: [B:53:0x02ca, B:10:0x0064] A[DONT_GENERATE, DONT_INLINE]
                  0x02ce: PHI (r9v21 com.superwall.sdk.config.ConfigContext) = (r9v18 com.superwall.sdk.config.ConfigContext), (r9v23 com.superwall.sdk.config.ConfigContext) binds: [B:53:0x02ca, B:10:0x0064] A[DONT_GENERATE, DONT_INLINE]
                  0x02ce: PHI (r10v19 kotlin.jvm.internal.Ref$BooleanRef) = (r10v17 kotlin.jvm.internal.Ref$BooleanRef), (r10v20 kotlin.jvm.internal.Ref$BooleanRef) binds: [B:53:0x02ca, B:10:0x0064] A[DONT_GENERATE, DONT_INLINE]] */
                /* JADX WARN: Code duplicated, block: B:58:0x02ef A[PHI: r2 r3 r7 r8 r9 r10
                  0x02ef: PHI (r2v21 int) = (r2v19 int), (r2v22 int) binds: [B:56:0x02eb, B:9:0x0049] A[DONT_GENERATE, DONT_INLINE]
                  0x02ef: PHI (r3v30 java.lang.Object) = (r3v26 java.lang.Object), (r3v35 java.lang.Object) binds: [B:56:0x02eb, B:9:0x0049] A[DONT_GENERATE, DONT_INLINE]
                  0x02ef: PHI (r7v46 com.superwall.sdk.misc.Either) = (r7v42 com.superwall.sdk.misc.Either), (r7v49 com.superwall.sdk.misc.Either) binds: [B:56:0x02eb, B:9:0x0049] A[DONT_GENERATE, DONT_INLINE]
                  0x02ef: PHI (r8v23 kotlin.jvm.internal.Ref$BooleanRef) = (r8v20 kotlin.jvm.internal.Ref$BooleanRef), (r8v25 kotlin.jvm.internal.Ref$BooleanRef) binds: [B:56:0x02eb, B:9:0x0049] A[DONT_GENERATE, DONT_INLINE]
                  0x02ef: PHI (r9v24 com.superwall.sdk.config.ConfigContext) = (r9v21 com.superwall.sdk.config.ConfigContext), (r9v26 com.superwall.sdk.config.ConfigContext) binds: [B:56:0x02eb, B:9:0x0049] A[DONT_GENERATE, DONT_INLINE]
                  0x02ef: PHI (r10v21 kotlin.jvm.internal.Ref$BooleanRef) = (r10v19 kotlin.jvm.internal.Ref$BooleanRef), (r10v22 kotlin.jvm.internal.Ref$BooleanRef) binds: [B:56:0x02eb, B:9:0x0049] A[DONT_GENERATE, DONT_INLINE]] */
                /* JADX WARN: Code duplicated, block: B:61:0x030f A[PHI: r2 r3 r7 r8 r9 r10
                  0x030f: PHI (r2v23 int) = (r2v21 int), (r2v24 int) binds: [B:59:0x030c, B:8:0x002e] A[DONT_GENERATE, DONT_INLINE]
                  0x030f: PHI (r3v36 java.lang.Object) = (r3v32 java.lang.Object), (r3v41 java.lang.Object) binds: [B:59:0x030c, B:8:0x002e] A[DONT_GENERATE, DONT_INLINE]
                  0x030f: PHI (r7v50 com.superwall.sdk.misc.Either) = (r7v46 com.superwall.sdk.misc.Either), (r7v56 com.superwall.sdk.misc.Either) binds: [B:59:0x030c, B:8:0x002e] A[DONT_GENERATE, DONT_INLINE]
                  0x030f: PHI (r8v26 kotlin.jvm.internal.Ref$BooleanRef) = (r8v23 kotlin.jvm.internal.Ref$BooleanRef), (r8v28 kotlin.jvm.internal.Ref$BooleanRef) binds: [B:59:0x030c, B:8:0x002e] A[DONT_GENERATE, DONT_INLINE]
                  0x030f: PHI (r9v27 com.superwall.sdk.config.ConfigContext) = (r9v24 com.superwall.sdk.config.ConfigContext), (r9v29 com.superwall.sdk.config.ConfigContext) binds: [B:59:0x030c, B:8:0x002e] A[DONT_GENERATE, DONT_INLINE]
                  0x030f: PHI (r10v23 kotlin.jvm.internal.Ref$BooleanRef) = (r10v21 kotlin.jvm.internal.Ref$BooleanRef), (r10v25 kotlin.jvm.internal.Ref$BooleanRef) binds: [B:59:0x030c, B:8:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
                /* JADX WARN: Code duplicated, block: B:64:0x0330  */
                /* JADX WARN: Code duplicated, block: B:67:0x0337  */
                /* JADX WARN: Code duplicated, block: B:69:0x034d  */
                /* JADX WARN: Code duplicated, block: B:70:0x0359  */
                /* JADX WARN: Code duplicated, block: B:72:0x035d  */
                /* JADX WARN: Code duplicated, block: B:77:0x0381  */
                /* JADX WARN: Code restructure failed: missing block: B:73:0x037b, code lost:
                
                    if (r7.immediate(r4, r27) == r1) goto L74;
                 */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r28) {
                    /*
                        Method dump skipped, instruction units count: 930
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.config.models.ConfigState.Actions.FetchConfig.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$1", f = "ConfigState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                static final class C01081 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ ConfigContext $$this$exec;
                    final /* synthetic */ HashMap<String, Object> $attributes;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C01081(ConfigContext configContext, HashMap<String, Object> map, Continuation<? super C01081> continuation) {
                        super(2, continuation);
                        this.$$this$exec = configContext;
                        this.$attributes = map;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C01081(this.$$this$exec, this.$attributes, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C01081) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        ConfigContext configContext = this.$$this$exec;
                        HashMap<String, Object> map = this.$attributes;
                        Intrinsics.checkNotNull(map, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.Any>");
                        configContext.track(new InternalSuperwallEvent.DeviceAttributes(map, null, 2, 0 == true ? 1 : 0));
                        return Unit.INSTANCE;
                    }
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "config", "Lcom/superwall/sdk/models/config/Config;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$2", f = "ConfigState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                static final class AnonymousClass2 extends SuspendLambda implements Function2<Config, Continuation<? super Unit>, Object> {
                    final /* synthetic */ ConfigContext $$this$exec;
                    final /* synthetic */ Ref.LongRef $configDuration;
                    final /* synthetic */ AtomicInteger $configRetryCount;
                    final /* synthetic */ Ref.BooleanRef $isConfigFromCache;
                    /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass2(ConfigContext configContext, Ref.BooleanRef booleanRef, Ref.LongRef longRef, AtomicInteger atomicInteger, Continuation<? super AnonymousClass2> continuation) {
                        super(2, continuation);
                        this.$$this$exec = configContext;
                        this.$isConfigFromCache = booleanRef;
                        this.$configDuration = longRef;
                        this.$configRetryCount = atomicInteger;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$$this$exec, this.$isConfigFromCache, this.$configDuration, this.$configRetryCount, continuation);
                        anonymousClass2.L$0 = obj;
                        return anonymousClass2;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Config config, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass2) create(config, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        Config config = (Config) this.L$0;
                        this.$$this$exec.track(new InternalSuperwallEvent.ConfigRefresh(this.$isConfigFromCache.element, config.getBuildId(), this.$configRetryCount.get(), this.$configDuration.element));
                        return Unit.INSTANCE;
                    }
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$3, reason: invalid class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "config", "Lcom/superwall/sdk/models/config/Config;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$3", f = "ConfigState.kt", i = {}, l = {177}, m = "invokeSuspend", n = {}, s = {})
                static final class AnonymousClass3 extends SuspendLambda implements Function2<Config, Continuation<? super Unit>, Object> {
                    final /* synthetic */ ConfigContext $$this$exec;
                    /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass3(ConfigContext configContext, Continuation<? super AnonymousClass3> continuation) {
                        super(2, continuation);
                        this.$$this$exec = configContext;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$$this$exec, continuation);
                        anonymousClass3.L$0 = obj;
                        return anonymousClass3;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Config config, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass3) create(config, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj);
                            Config config = (Config) this.L$0;
                            this.label = 1;
                            if (this.$$this$exec.immediate(new ApplyConfig(config), this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                        }
                        return Unit.INSTANCE;
                    }
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$4, reason: invalid class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/models/config/Config;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$4", f = "ConfigState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                static final class AnonymousClass4 extends SuspendLambda implements Function2<Config, Continuation<? super Unit>, Object> {
                    final /* synthetic */ ConfigContext $$this$exec;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass4(ConfigContext configContext, Continuation<? super AnonymousClass4> continuation) {
                        super(2, continuation);
                        this.$$this$exec = configContext;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass4(this.$$this$exec, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Config config, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass4) create(config, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$4$1, reason: invalid class name and collision with other inner class name */
                    /* JADX INFO: compiled from: ConfigState.kt */
                    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$4$1", f = "ConfigState.kt", i = {}, l = {RotationOptions.ROTATE_180}, m = "invokeSuspend", n = {}, s = {})
                    static final class C01091 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
                        final /* synthetic */ ConfigContext $$this$exec;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C01091(ConfigContext configContext, Continuation<? super C01091> continuation) {
                            super(1, continuation);
                            this.$$this$exec = configContext;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Continuation<?> continuation) {
                            return new C01091(this.$$this$exec, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Continuation<? super Unit> continuation) {
                            return ((C01091) create(continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            int i = this.label;
                            if (i == 0) {
                                ResultKt.throwOnFailure(obj);
                                this.label = 1;
                                if (this.$$this$exec.getWebPaywallRedeemer().invoke().redeem(WebPaywallRedeemer.RedeemType.Existing.INSTANCE, this) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            } else {
                                if (i != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.throwOnFailure(obj);
                            }
                            return Unit.INSTANCE;
                        }
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        this.$$this$exec.sideEffect(new C01091(this.$$this$exec, null));
                        return Unit.INSTANCE;
                    }
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$5, reason: invalid class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "config", "Lcom/superwall/sdk/models/config/Config;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$5", f = "ConfigState.kt", i = {0}, l = {TsExtractor.TS_PACKET_SIZE}, m = "invokeSuspend", n = {"config"}, s = {"L$0"})
                static final class AnonymousClass5 extends SuspendLambda implements Function2<Config, Continuation<? super Unit>, Object> {
                    final /* synthetic */ ConfigContext $$this$exec;
                    /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass5(ConfigContext configContext, Continuation<? super AnonymousClass5> continuation) {
                        super(2, continuation);
                        this.$$this$exec = configContext;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        AnonymousClass5 anonymousClass5 = new AnonymousClass5(this.$$this$exec, continuation);
                        anonymousClass5.L$0 = obj;
                        return anonymousClass5;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Config config, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass5) create(config, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        try {
                            if (i == 0) {
                                ResultKt.throwOnFailure(obj);
                                Config config = (Config) this.L$0;
                                TestMode testMode = this.$$this$exec.getTestMode();
                                if ((testMode == null || !testMode.isTestMode()) && PaywallOptionsKt.computedShouldPreload(this.$$this$exec.getOptions(), this.$$this$exec.getDeviceHelper().getDeviceTier())) {
                                    List<Paywall> paywalls = config.getPaywalls();
                                    ArrayList arrayList = new ArrayList();
                                    Iterator<T> it = paywalls.iterator();
                                    while (it.hasNext()) {
                                        CollectionsKt.addAll(arrayList, ((Paywall) it.next()).getProductIds());
                                    }
                                    Set<String> set = CollectionsKt.toSet(arrayList);
                                    this.L$0 = config;
                                    this.label = 1;
                                    if (this.$$this$exec.getStoreManager().products(set, this) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                }
                                return Unit.INSTANCE;
                            }
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                        } catch (Throwable th) {
                            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.productsManager, "Failed to preload products", null, th, 8, null);
                            Unit unit = Unit.INSTANCE;
                        }
                        return Unit.INSTANCE;
                    }
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$6, reason: invalid class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "config", "Lcom/superwall/sdk/models/config/Config;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$6", f = "ConfigState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                static final class AnonymousClass6 extends SuspendLambda implements Function2<Config, Continuation<? super Unit>, Object> {
                    final /* synthetic */ ConfigContext $$this$exec;
                    /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass6(ConfigContext configContext, Continuation<? super AnonymousClass6> continuation) {
                        super(2, continuation);
                        this.$$this$exec = configContext;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        AnonymousClass6 anonymousClass6 = new AnonymousClass6(this.$$this$exec, continuation);
                        anonymousClass6.L$0 = obj;
                        return anonymousClass6;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Config config, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass6) create(config, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        this.$$this$exec.update(new Updates.SetRetrieved((Config) this.L$0));
                        return Unit.INSTANCE;
                    }
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$7, reason: invalid class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/models/config/Config;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$7", f = "ConfigState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                static final class AnonymousClass7 extends SuspendLambda implements Function2<Config, Continuation<? super Unit>, Object> {
                    final /* synthetic */ ConfigContext $$this$exec;
                    final /* synthetic */ Either<Enrichment, Throwable> $enrichmentResult;
                    final /* synthetic */ Ref.BooleanRef $isEnrichmentFromCache;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass7(Ref.BooleanRef booleanRef, Either<Enrichment, Throwable> either, ConfigContext configContext, Continuation<? super AnonymousClass7> continuation) {
                        super(2, continuation);
                        this.$isEnrichmentFromCache = booleanRef;
                        this.$enrichmentResult = either;
                        this.$$this$exec = configContext;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass7(this.$isEnrichmentFromCache, this.$enrichmentResult, this.$$this$exec, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Config config, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass7) create(config, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        if (this.$isEnrichmentFromCache.element || this.$enrichmentResult.getThrowable() != null) {
                            BuildersKt__Builders_commonKt.launch$default(this.$$this$exec.getScope(), null, null, new C01101(this.$$this$exec, null), 3, null);
                        }
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$7$1, reason: invalid class name and collision with other inner class name */
                    /* JADX INFO: compiled from: ConfigState.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$7$1", f = "ConfigState.kt", i = {}, l = {ComposerKt.providerValuesKey}, m = "invokeSuspend", n = {}, s = {})
                    static final class C01101 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ ConfigContext $$this$exec;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C01101(ConfigContext configContext, Continuation<? super C01101> continuation) {
                            super(2, continuation);
                            this.$$this$exec = configContext;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new C01101(this.$$this$exec, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return ((C01101) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            int i = this.label;
                            if (i == 0) {
                                ResultKt.throwOnFailure(obj);
                                DeviceHelper deviceHelper = this.$$this$exec.getDeviceHelper();
                                Duration.Companion companion = Duration.INSTANCE;
                                this.label = 1;
                                if (deviceHelper.m10697getEnrichment8Mi8wO0(6, DurationKt.toDuration(1, DurationUnit.SECONDS), this) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            } else {
                                if (i != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.throwOnFailure(obj);
                            }
                            return Unit.INSTANCE;
                        }
                    }
                }
            }

            private FetchConfig() {
                super(new AnonymousClass1(null), null);
            }
        }

        @Override // com.superwall.sdk.misc.primitives.TypedAction
        public Function2<ConfigContext, Continuation<? super Unit>, Object> getExecute() {
            return this.execute;
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure;", "Lcom/superwall/sdk/config/models/ConfigState$Actions;", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "", "priorRetries", "", "isConfigFromCache", "", "<init>", "(Ljava/lang/Throwable;IZ)V", "getError", "()Ljava/lang/Throwable;", "getPriorRetries", "()I", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "", "hashCode", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class HandleFetchFailure extends Actions {
            private final Throwable error;
            private final boolean isConfigFromCache;
            private final int priorRetries;

            public static /* synthetic */ HandleFetchFailure copy$default(HandleFetchFailure handleFetchFailure, Throwable th, int i, boolean z, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    th = handleFetchFailure.error;
                }
                if ((i2 & 2) != 0) {
                    i = handleFetchFailure.priorRetries;
                }
                if ((i2 & 4) != 0) {
                    z = handleFetchFailure.isConfigFromCache;
                }
                return handleFetchFailure.copy(th, i, z);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Throwable getError() {
                return this.error;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final int getPriorRetries() {
                return this.priorRetries;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final boolean getIsConfigFromCache() {
                return this.isConfigFromCache;
            }

            public final HandleFetchFailure copy(Throwable error, int priorRetries, boolean isConfigFromCache) {
                Intrinsics.checkNotNullParameter(error, "error");
                return new HandleFetchFailure(error, priorRetries, isConfigFromCache);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof HandleFetchFailure)) {
                    return false;
                }
                HandleFetchFailure handleFetchFailure = (HandleFetchFailure) other;
                return Intrinsics.areEqual(this.error, handleFetchFailure.error) && this.priorRetries == handleFetchFailure.priorRetries && this.isConfigFromCache == handleFetchFailure.isConfigFromCache;
            }

            public int hashCode() {
                return (((this.error.hashCode() * 31) + Integer.hashCode(this.priorRetries)) * 31) + Boolean.hashCode(this.isConfigFromCache);
            }

            public String toString() {
                return "HandleFetchFailure(error=" + this.error + ", priorRetries=" + this.priorRetries + ", isConfigFromCache=" + this.isConfigFromCache + ")";
            }

            public final Throwable getError() {
                return this.error;
            }

            public final int getPriorRetries() {
                return this.priorRetries;
            }

            /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$HandleFetchFailure$1, reason: invalid class name */
            /* JADX INFO: compiled from: ConfigState.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/config/ConfigContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$HandleFetchFailure$1", f = "ConfigState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<ConfigContext, Continuation<? super Unit>, Object> {
                final /* synthetic */ Throwable $error;
                final /* synthetic */ boolean $isConfigFromCache;
                final /* synthetic */ int $priorRetries;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(Throwable th, int i, boolean z, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$error = th;
                    this.$priorRetries = i;
                    this.$isConfigFromCache = z;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$error, this.$priorRetries, this.$isConfigFromCache, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(ConfigContext configContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(configContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    ConfigContext configContext = (ConfigContext) this.L$0;
                    this.$error.printStackTrace();
                    int i = this.$priorRetries + 1;
                    configContext.update(new Updates.SetFailed(this.$error, i));
                    if (!this.$isConfigFromCache && i <= 1) {
                        configContext.effect(FetchConfig.INSTANCE);
                    }
                    String message = this.$error.getMessage();
                    if (message == null) {
                        message = "Unknown error";
                    }
                    configContext.track(new InternalSuperwallEvent.ConfigFail(message));
                    Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.superwallCore, "Failed to Fetch Configuration", null, this.$error, 8, null);
                    return Unit.INSTANCE;
                }
            }

            public final boolean isConfigFromCache() {
                return this.isConfigFromCache;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public HandleFetchFailure(Throwable error, int i, boolean z) {
                super(new AnonymousClass1(error, i, z, null), null);
                Intrinsics.checkNotNullParameter(error, "error");
                this.error = error;
                this.priorRetries = i;
                this.isConfigFromCache = z;
            }
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;", "Lcom/superwall/sdk/config/models/ConfigState$Actions;", "force", "", "<init>", "(Z)V", "getForce", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class RefreshConfig extends Actions {
            private final boolean force;

            public RefreshConfig() {
                this(false, 1, null);
            }

            public static /* synthetic */ RefreshConfig copy$default(RefreshConfig refreshConfig, boolean z, int i, Object obj) {
                if ((i & 1) != 0) {
                    z = refreshConfig.force;
                }
                return refreshConfig.copy(z);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final boolean getForce() {
                return this.force;
            }

            public final RefreshConfig copy(boolean force) {
                return new RefreshConfig(force);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof RefreshConfig) && this.force == ((RefreshConfig) other).force;
            }

            public int hashCode() {
                return Boolean.hashCode(this.force);
            }

            public String toString() {
                return "RefreshConfig(force=" + this.force + ")";
            }

            /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$RefreshConfig$1, reason: invalid class name */
            /* JADX INFO: compiled from: ConfigState.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/config/ConfigContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$RefreshConfig$1", f = "ConfigState.kt", i = {0, 0, 0, 1, 1, 1, 2}, l = {248, 254, 261}, m = "invokeSuspend", n = {"$this$exec", "retryCount", "startTime", "$this$exec", "retryCount", "startTime", "$this$exec"}, s = {"L$0", "L$1", "J$0", "L$0", "L$1", "J$0", "L$0"})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<ConfigContext, Continuation<? super Unit>, Object> {
                final /* synthetic */ boolean $force;
                long J$0;
                private /* synthetic */ Object L$0;
                Object L$1;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(boolean z, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$force = z;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$force, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(ConfigContext configContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(configContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code duplicated, block: B:34:0x00e4  */
                /* JADX WARN: Code duplicated, block: B:37:0x00eb  */
                /* JADX WARN: Code duplicated, block: B:38:0x00fe  */
                /* JADX WARN: Code duplicated, block: B:40:0x0102  */
                /* JADX WARN: Code duplicated, block: B:43:0x011f  */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    AtomicInteger atomicInteger;
                    long jCurrentTimeMillis;
                    ConfigContext configContext;
                    long j;
                    ConfigContext configContext2;
                    ConfigContext configContext3;
                    Either either;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        ConfigContext configContext4 = (ConfigContext) this.L$0;
                        Config config = ConfigStateKt.getConfig(configContext4.getState().getValue());
                        if (config == null) {
                            return Unit.INSTANCE;
                        }
                        if (!this.$force && !config.getFeatureFlags().getEnableConfigRefresh()) {
                            return Unit.INSTANCE;
                        }
                        BuildersKt__Builders_commonKt.launch$default(configContext4.getScope(), null, null, new C01131(configContext4, null), 3, null);
                        atomicInteger = new AtomicInteger(0);
                        jCurrentTimeMillis = System.currentTimeMillis();
                        this.L$0 = configContext4;
                        this.L$1 = atomicInteger;
                        this.J$0 = jCurrentTimeMillis;
                        this.label = 1;
                        Object config2 = configContext4.getNetwork().getConfig(new ConfigState$Actions$RefreshConfig$1$result$1(atomicInteger, configContext4, null), this);
                        if (config2 != coroutine_suspended) {
                            configContext = configContext4;
                            obj = config2;
                        }
                        return coroutine_suspended;
                    }
                    if (i == 1) {
                        jCurrentTimeMillis = this.J$0;
                        atomicInteger = (AtomicInteger) this.L$1;
                        configContext = (ConfigContext) this.L$0;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        if (i == 2) {
                            long j2 = this.J$0;
                            atomicInteger = (AtomicInteger) this.L$1;
                            ConfigContext configContext5 = (ConfigContext) this.L$0;
                            ResultKt.throwOnFailure(obj);
                            j = j2;
                            configContext2 = configContext5;
                            this.L$0 = configContext2;
                            this.L$1 = null;
                            this.label = 3;
                            obj = EitherKt.then((Either) obj, new AnonymousClass3(configContext2, j, atomicInteger, null), this);
                            if (obj != coroutine_suspended) {
                                configContext3 = configContext2;
                            }
                            return coroutine_suspended;
                        }
                        if (i != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        configContext3 = (ConfigContext) this.L$0;
                        ResultKt.throwOnFailure(obj);
                    }
                    either = (Either) obj;
                    if (either instanceof Either.Success) {
                        configContext3.effect(PreloadIfEnabled.INSTANCE);
                    } else {
                        if (either instanceof Either.Failure) {
                            throw new NoWhenBranchMatchedException();
                        }
                        Logger.INSTANCE.debug(LogLevel.warn, LogScope.superwallCore, "Failed to refresh configuration.", null, (NetworkError) ((Either.Failure) either).getError());
                    }
                    return Unit.INSTANCE;
                    this.L$0 = configContext;
                    this.L$1 = atomicInteger;
                    this.J$0 = jCurrentTimeMillis;
                    this.label = 2;
                    obj = EitherKt.then((Either) obj, new AnonymousClass2(configContext, null), this);
                    if (obj != coroutine_suspended) {
                        j = jCurrentTimeMillis;
                        configContext2 = configContext;
                        this.L$0 = configContext2;
                        this.L$1 = null;
                        this.label = 3;
                        obj = EitherKt.then((Either) obj, new AnonymousClass3(configContext2, j, atomicInteger, null), this);
                        if (obj != coroutine_suspended) {
                            configContext3 = configContext2;
                            either = (Either) obj;
                            if (either instanceof Either.Success) {
                                configContext3.effect(PreloadIfEnabled.INSTANCE);
                            } else {
                                if (either instanceof Either.Failure) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                Logger.INSTANCE.debug(LogLevel.warn, LogScope.superwallCore, "Failed to refresh configuration.", null, (NetworkError) ((Either.Failure) either).getError());
                            }
                            return Unit.INSTANCE;
                        }
                    }
                    return coroutine_suspended;
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$RefreshConfig$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$RefreshConfig$1$1", f = "ConfigState.kt", i = {}, l = {243}, m = "invokeSuspend", n = {}, s = {})
                static final class C01131 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ ConfigContext $$this$exec;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C01131(ConfigContext configContext, Continuation<? super C01131> continuation) {
                        super(2, continuation);
                        this.$$this$exec = configContext;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C01131(this.$$this$exec, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C01131) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj);
                            DeviceHelper deviceHelper = this.$$this$exec.getDeviceHelper();
                            Duration.Companion companion = Duration.INSTANCE;
                            this.label = 1;
                            if (deviceHelper.m10697getEnrichment8Mi8wO0(0, DurationKt.toDuration(1, DurationUnit.SECONDS), this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                        }
                        return Unit.INSTANCE;
                    }
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$RefreshConfig$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "newConfig", "Lcom/superwall/sdk/models/config/Config;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$RefreshConfig$1$2", f = "ConfigState.kt", i = {0}, l = {258}, m = "invokeSuspend", n = {"newConfig"}, s = {"L$0"})
                static final class AnonymousClass2 extends SuspendLambda implements Function2<Config, Continuation<? super Unit>, Object> {
                    final /* synthetic */ ConfigContext $$this$exec;
                    /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass2(ConfigContext configContext, Continuation<? super AnonymousClass2> continuation) {
                        super(2, continuation);
                        this.$$this$exec = configContext;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$$this$exec, continuation);
                        anonymousClass2.L$0 = obj;
                        return anonymousClass2;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Config config, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass2) create(config, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj);
                            Config config = (Config) this.L$0;
                            this.$$this$exec.getPaywallManager().resetPaywallRequestCache$superwall_release();
                            Config config2 = ConfigStateKt.getConfig(this.$$this$exec.getState().getValue());
                            if (config2 != null) {
                                this.L$0 = config;
                                this.label = 1;
                                if (this.$$this$exec.getPaywallPreload().removeUnusedPaywallVCsFromCache$superwall_release(config2, config, this) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                        }
                        return Unit.INSTANCE;
                    }
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$RefreshConfig$1$3, reason: invalid class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "newConfig", "Lcom/superwall/sdk/models/config/Config;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$RefreshConfig$1$3", f = "ConfigState.kt", i = {0}, l = {262}, m = "invokeSuspend", n = {"newConfig"}, s = {"L$0"})
                static final class AnonymousClass3 extends SuspendLambda implements Function2<Config, Continuation<? super Unit>, Object> {
                    final /* synthetic */ ConfigContext $$this$exec;
                    final /* synthetic */ AtomicInteger $retryCount;
                    final /* synthetic */ long $startTime;
                    /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass3(ConfigContext configContext, long j, AtomicInteger atomicInteger, Continuation<? super AnonymousClass3> continuation) {
                        super(2, continuation);
                        this.$$this$exec = configContext;
                        this.$startTime = j;
                        this.$retryCount = atomicInteger;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$$this$exec, this.$startTime, this.$retryCount, continuation);
                        anonymousClass3.L$0 = obj;
                        return anonymousClass3;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Config config, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass3) create(config, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Config config;
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj);
                            Config config2 = (Config) this.L$0;
                            this.L$0 = config2;
                            this.label = 1;
                            if (this.$$this$exec.immediate(new ApplyConfig(config2), this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            config = config2;
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            config = (Config) this.L$0;
                            ResultKt.throwOnFailure(obj);
                        }
                        this.$$this$exec.update(new Updates.SetRetrieved(config));
                        this.$$this$exec.track(new InternalSuperwallEvent.ConfigRefresh(false, config.getBuildId(), this.$retryCount.get(), System.currentTimeMillis() - this.$startTime));
                        return Unit.INSTANCE;
                    }
                }
            }

            public RefreshConfig(boolean z) {
                super(new AnonymousClass1(z, null), null);
                this.force = z;
            }

            public /* synthetic */ RefreshConfig(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? false : z);
            }

            public final boolean getForce() {
                return this.force;
            }
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig;", "Lcom/superwall/sdk/config/models/ConfigState$Actions;", "config", "Lcom/superwall/sdk/models/config/Config;", "<init>", "(Lcom/superwall/sdk/models/config/Config;)V", "getConfig", "()Lcom/superwall/sdk/models/config/Config;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class ApplyConfig extends Actions {
            private final Config config;

            public static /* synthetic */ ApplyConfig copy$default(ApplyConfig applyConfig, Config config, int i, Object obj) {
                if ((i & 1) != 0) {
                    config = applyConfig.config;
                }
                return applyConfig.copy(config);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Config getConfig() {
                return this.config;
            }

            public final ApplyConfig copy(Config config) {
                Intrinsics.checkNotNullParameter(config, "config");
                return new ApplyConfig(config);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ApplyConfig) && Intrinsics.areEqual(this.config, ((ApplyConfig) other).config);
            }

            public int hashCode() {
                return this.config.hashCode();
            }

            public String toString() {
                return "ApplyConfig(config=" + this.config + ")";
            }

            /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$ApplyConfig$1, reason: invalid class name */
            /* JADX INFO: compiled from: ConfigState.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/config/ConfigContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$ApplyConfig$1", f = "ConfigState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<ConfigContext, Continuation<? super Unit>, Object> {
                final /* synthetic */ Config $config;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(Config config, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$config = config;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$config, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(ConfigContext configContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(configContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IdentityManager identityManagerInvoke;
                    IdentityManager identityManagerInvoke2;
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    ConfigContext configContext = (ConfigContext) this.L$0;
                    configContext.getStorage().write(DisableVerboseEvents.INSTANCE, Boxing.boxBoolean(this.$config.getFeatureFlags().getDisableVerboseEvents()));
                    if (this.$config.getFeatureFlags().getEnableConfigRefresh()) {
                        configContext.getStorage().write(LatestConfig.INSTANCE, this.$config);
                    }
                    configContext.setTriggers(ConfigLogic.INSTANCE.getTriggersByEventName(this.$config.getTriggers()));
                    configContext.getAssignments().choosePaywallVariants(this.$config.getTriggers());
                    configContext.getEntitlements().addEntitlementsByProductId$superwall_release(ConfigLogic.INSTANCE.extractEntitlementsByProductId(this.$config.getProducts()));
                    List<CrossplatformProduct> productsV3 = this.$config.getProductsV3();
                    if (productsV3 != null) {
                        configContext.getEntitlements().addEntitlementsByProductId$superwall_release(ConfigLogic.INSTANCE.extractEntitlementsByProductIdFromCrossplatform(productsV3));
                    }
                    TestMode testMode = configContext.getTestMode();
                    boolean z = false;
                    boolean z2 = testMode != null && testMode.isTestMode();
                    if (testMode != null) {
                        Config config = this.$config;
                        String bundleId = configContext.getDeviceHelper().getBundleId();
                        Function0<IdentityManager> identityManager = configContext.getIdentityManager();
                        String appUserId = (identityManager == null || (identityManagerInvoke2 = identityManager.invoke()) == null) ? null : identityManagerInvoke2.getAppUserId();
                        Function0<IdentityManager> identityManager2 = configContext.getIdentityManager();
                        testMode.evaluateTestMode(config, bundleId, appUserId, (identityManager2 == null || (identityManagerInvoke = identityManager2.invoke()) == null) ? null : identityManagerInvoke.getAliasId(), configContext.getOptions().getTestModeBehavior());
                    }
                    if (!z2 && testMode != null && testMode.isTestMode()) {
                        z = true;
                    }
                    if (testMode == null || !testMode.isTestMode()) {
                        if (z2) {
                            if (testMode != null) {
                                testMode.clearTestModeState();
                            }
                            Function1<SubscriptionStatus, Unit> setSubscriptionStatus = configContext.getSetSubscriptionStatus();
                            if (setSubscriptionStatus != null) {
                                setSubscriptionStatus.invoke(SubscriptionStatus.Inactive.INSTANCE);
                            }
                        }
                        BuildersKt__Builders_commonKt.launch$default(configContext.getScope(), null, null, new AnonymousClass4(configContext, null), 3, null);
                    } else {
                        if (z) {
                            SubscriptionStatus subscriptionStatusBuildSubscriptionStatus = testMode.buildSubscriptionStatus();
                            testMode.setOverriddenSubscriptionStatus(subscriptionStatusBuildSubscriptionStatus);
                            configContext.getEntitlements().setSubscriptionStatus(subscriptionStatusBuildSubscriptionStatus);
                        }
                        BuildersKt__Builders_commonKt.launch$default(configContext.getScope(), null, null, new AnonymousClass3(configContext, this.$config, z, null), 3, null);
                    }
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$ApplyConfig$1$3, reason: invalid class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$ApplyConfig$1$3", f = "ConfigState.kt", i = {}, l = {321}, m = "invokeSuspend", n = {}, s = {})
                static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ Config $config;
                    final /* synthetic */ boolean $testModeJustActivated;
                    final /* synthetic */ ConfigContext $this;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass3(ConfigContext configContext, Config config, boolean z, Continuation<? super AnonymousClass3> continuation) {
                        super(2, continuation);
                        this.$this = configContext;
                        this.$config = config;
                        this.$testModeJustActivated = z;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass3(this.$this, this.$config, this.$testModeJustActivated, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj);
                            Function3<Config, Boolean, Continuation<? super Unit>, Object> activateTestMode = this.$this.getActivateTestMode();
                            Config config = this.$config;
                            Boolean boolBoxBoolean = Boxing.boxBoolean(this.$testModeJustActivated);
                            this.label = 1;
                            if (activateTestMode.invoke(config, boolBoxBoolean, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                        }
                        return Unit.INSTANCE;
                    }
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$ApplyConfig$1$4, reason: invalid class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$ApplyConfig$1$4", f = "ConfigState.kt", i = {}, l = {328}, m = "invokeSuspend", n = {}, s = {})
                static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ ConfigContext $this;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass4(ConfigContext configContext, Continuation<? super AnonymousClass4> continuation) {
                        super(2, continuation);
                        this.$this = configContext;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass4(this.$this, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj);
                            this.label = 1;
                            if (this.$this.getStoreManager().loadPurchasedProducts(this.$this.getEntitlements().getEntitlementsByProductId(), this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                        }
                        return Unit.INSTANCE;
                    }
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ApplyConfig(Config config) {
                super(new AnonymousClass1(config, null), null);
                Intrinsics.checkNotNullParameter(config, "config");
                this.config = config;
            }

            public final Config getConfig() {
                return this.config;
            }
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J+\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode;", "Lcom/superwall/sdk/config/models/ConfigState$Actions;", "config", "Lcom/superwall/sdk/models/config/Config;", Keys.APP_USER_ID, "", Keys.ALIAS_ID, "<init>", "(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;)V", "getConfig", "()Lcom/superwall/sdk/models/config/Config;", "getAppUserId", "()Ljava/lang/String;", "getAliasId", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class ReevaluateTestMode extends Actions {
            private final String aliasId;
            private final String appUserId;
            private final Config config;

            public static /* synthetic */ ReevaluateTestMode copy$default(ReevaluateTestMode reevaluateTestMode, Config config, String str, String str2, int i, Object obj) {
                if ((i & 1) != 0) {
                    config = reevaluateTestMode.config;
                }
                if ((i & 2) != 0) {
                    str = reevaluateTestMode.appUserId;
                }
                if ((i & 4) != 0) {
                    str2 = reevaluateTestMode.aliasId;
                }
                return reevaluateTestMode.copy(config, str, str2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Config getConfig() {
                return this.config;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getAppUserId() {
                return this.appUserId;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final String getAliasId() {
                return this.aliasId;
            }

            public final ReevaluateTestMode copy(Config config, String appUserId, String aliasId) {
                Intrinsics.checkNotNullParameter(config, "config");
                return new ReevaluateTestMode(config, appUserId, aliasId);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ReevaluateTestMode)) {
                    return false;
                }
                ReevaluateTestMode reevaluateTestMode = (ReevaluateTestMode) other;
                return Intrinsics.areEqual(this.config, reevaluateTestMode.config) && Intrinsics.areEqual(this.appUserId, reevaluateTestMode.appUserId) && Intrinsics.areEqual(this.aliasId, reevaluateTestMode.aliasId);
            }

            public int hashCode() {
                int iHashCode = this.config.hashCode() * 31;
                String str = this.appUserId;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.aliasId;
                return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
            }

            public String toString() {
                return "ReevaluateTestMode(config=" + this.config + ", appUserId=" + this.appUserId + ", aliasId=" + this.aliasId + ")";
            }

            public final Config getConfig() {
                return this.config;
            }

            public final String getAppUserId() {
                return this.appUserId;
            }

            /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$ReevaluateTestMode$1, reason: invalid class name */
            /* JADX INFO: compiled from: ConfigState.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/config/ConfigContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$ReevaluateTestMode$1", f = "ConfigState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<ConfigContext, Continuation<? super Unit>, Object> {
                final /* synthetic */ String $aliasId;
                final /* synthetic */ String $appUserId;
                final /* synthetic */ Config $config;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(Config config, String str, String str2, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$config = config;
                    this.$appUserId = str;
                    this.$aliasId = str2;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$config, this.$appUserId, this.$aliasId, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(ConfigContext configContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(configContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IdentityManager identityManagerInvoke;
                    IdentityManager identityManagerInvoke2;
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    ConfigContext configContext = (ConfigContext) this.L$0;
                    TestMode testMode = configContext.getTestMode();
                    if (testMode == null) {
                        return Unit.INSTANCE;
                    }
                    boolean zIsTestMode = testMode.isTestMode();
                    Config config = this.$config;
                    String bundleId = configContext.getDeviceHelper().getBundleId();
                    String appUserId = this.$appUserId;
                    if (appUserId == null) {
                        Function0<IdentityManager> identityManager = configContext.getIdentityManager();
                        appUserId = (identityManager == null || (identityManagerInvoke2 = identityManager.invoke()) == null) ? null : identityManagerInvoke2.getAppUserId();
                    }
                    String aliasId = this.$aliasId;
                    if (aliasId == null) {
                        Function0<IdentityManager> identityManager2 = configContext.getIdentityManager();
                        aliasId = (identityManager2 == null || (identityManagerInvoke = identityManager2.invoke()) == null) ? null : identityManagerInvoke.getAliasId();
                    }
                    testMode.evaluateTestMode(config, bundleId, appUserId, aliasId, configContext.getOptions().getTestModeBehavior());
                    boolean zIsTestMode2 = testMode.isTestMode();
                    if (zIsTestMode && !zIsTestMode2) {
                        testMode.clearTestModeState();
                        Function1<SubscriptionStatus, Unit> setSubscriptionStatus = configContext.getSetSubscriptionStatus();
                        if (setSubscriptionStatus != null) {
                            setSubscriptionStatus.invoke(SubscriptionStatus.Inactive.INSTANCE);
                        }
                    } else if (!zIsTestMode && zIsTestMode2) {
                        BuildersKt__Builders_commonKt.launch$default(configContext.getScope(), null, null, new C01121(configContext, this.$config, null), 3, null);
                    }
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$ReevaluateTestMode$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: ConfigState.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$ReevaluateTestMode$1$1", f = "ConfigState.kt", i = {}, l = {352}, m = "invokeSuspend", n = {}, s = {})
                static final class C01121 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ ConfigContext $$this$exec;
                    final /* synthetic */ Config $config;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C01121(ConfigContext configContext, Config config, Continuation<? super C01121> continuation) {
                        super(2, continuation);
                        this.$$this$exec = configContext;
                        this.$config = config;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C01121(this.$$this$exec, this.$config, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C01121) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj);
                            Function3<Config, Boolean, Continuation<? super Unit>, Object> activateTestMode = this.$$this$exec.getActivateTestMode();
                            Config config = this.$config;
                            Boolean boolBoxBoolean = Boxing.boxBoolean(true);
                            this.label = 1;
                            if (activateTestMode.invoke(config, boolBoxBoolean, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                        }
                        return Unit.INSTANCE;
                    }
                }
            }

            public final String getAliasId() {
                return this.aliasId;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ReevaluateTestMode(Config config, String str, String str2) {
                super(new AnonymousClass1(config, str, str2, null), null);
                Intrinsics.checkNotNullParameter(config, "config");
                this.config = config;
                this.appUserId = str;
                this.aliasId = str2;
            }
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;", "Lcom/superwall/sdk/config/models/ConfigState$Actions;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class PreloadIfEnabled extends Actions {
            public static final PreloadIfEnabled INSTANCE = new PreloadIfEnabled();

            /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$PreloadIfEnabled$1, reason: invalid class name */
            /* JADX INFO: compiled from: ConfigState.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/config/ConfigContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$PreloadIfEnabled$1", f = "ConfigState.kt", i = {}, l = {362, 359}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<ConfigContext, Continuation<? super Unit>, Object> {
                private /* synthetic */ Object L$0;
                Object L$1;
                Object L$2;
                int label;

                AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(ConfigContext configContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(configContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code restructure failed: missing block: B:23:0x008c, code lost:
                
                    if (r4.preloadAllPaywalls(r3, r1, (java.lang.String) r8, r7) == r0) goto L24;
                 */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r8) {
                    /*
                        r7 = this;
                        java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r1 = r7.label
                        r2 = 2
                        r3 = 1
                        if (r1 == 0) goto L2b
                        if (r1 == r3) goto L1b
                        if (r1 != r2) goto L13
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L8f
                    L13:
                        java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                        java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                        r8.<init>(r0)
                        throw r8
                    L1b:
                        java.lang.Object r1 = r7.L$2
                        android.content.Context r1 = (android.content.Context) r1
                        java.lang.Object r3 = r7.L$1
                        com.superwall.sdk.models.config.Config r3 = (com.superwall.sdk.models.config.Config) r3
                        java.lang.Object r4 = r7.L$0
                        com.superwall.sdk.config.PaywallPreload r4 = (com.superwall.sdk.config.PaywallPreload) r4
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L7a
                    L2b:
                        kotlin.ResultKt.throwOnFailure(r8)
                        java.lang.Object r8 = r7.L$0
                        com.superwall.sdk.config.ConfigContext r8 = (com.superwall.sdk.config.ConfigContext) r8
                        com.superwall.sdk.config.options.SuperwallOptions r1 = r8.getOptions()
                        com.superwall.sdk.network.device.DeviceHelper r4 = r8.getDeviceHelper()
                        com.superwall.sdk.analytics.Tier r4 = r4.getDeviceTier()
                        boolean r1 = com.superwall.sdk.config.options.PaywallOptionsKt.computedShouldPreload(r1, r4)
                        if (r1 != 0) goto L47
                        kotlin.Unit r8 = kotlin.Unit.INSTANCE
                        return r8
                    L47:
                        kotlinx.coroutines.flow.StateFlow r1 = r8.getState()
                        java.lang.Object r1 = r1.getValue()
                        com.superwall.sdk.config.models.ConfigState r1 = (com.superwall.sdk.config.models.ConfigState) r1
                        com.superwall.sdk.models.config.Config r1 = com.superwall.sdk.config.models.ConfigStateKt.getConfig(r1)
                        if (r1 != 0) goto L5a
                        kotlin.Unit r8 = kotlin.Unit.INSTANCE
                        return r8
                    L5a:
                        com.superwall.sdk.config.PaywallPreload r4 = r8.getPaywallPreload()
                        android.content.Context r5 = r8.getContext()
                        com.superwall.sdk.network.device.DeviceHelper r8 = r8.getDeviceHelper()
                        r6 = r7
                        kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                        r7.L$0 = r4
                        r7.L$1 = r1
                        r7.L$2 = r5
                        r7.label = r3
                        java.lang.Object r8 = r8.preloadFingerprint(r6)
                        if (r8 != r0) goto L78
                        goto L8e
                    L78:
                        r3 = r1
                        r1 = r5
                    L7a:
                        java.lang.String r8 = (java.lang.String) r8
                        r5 = r7
                        kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                        r6 = 0
                        r7.L$0 = r6
                        r7.L$1 = r6
                        r7.L$2 = r6
                        r7.label = r2
                        java.lang.Object r8 = r4.preloadAllPaywalls(r3, r1, r8, r5)
                        if (r8 != r0) goto L8f
                    L8e:
                        return r0
                    L8f:
                        kotlin.Unit r8 = kotlin.Unit.INSTANCE
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.config.models.ConfigState.Actions.PreloadIfEnabled.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            private PreloadIfEnabled() {
                super(new AnonymousClass1(null), null);
            }
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadAll;", "Lcom/superwall/sdk/config/models/ConfigState$Actions;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class PreloadAll extends Actions {
            public static final PreloadAll INSTANCE = new PreloadAll();

            /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$PreloadAll$1, reason: invalid class name */
            /* JADX INFO: compiled from: ConfigState.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/config/ConfigContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$PreloadAll$1", f = "ConfigState.kt", i = {}, l = {368}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<ConfigContext, Continuation<? super Unit>, Object> {
                private /* synthetic */ Object L$0;
                int label;

                AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(ConfigContext configContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(configContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        ConfigContext configContext = (ConfigContext) this.L$0;
                        Config config = ConfigStateKt.getConfig(configContext.getState().getValue());
                        if (config == null) {
                            return Unit.INSTANCE;
                        }
                        this.label = 1;
                        if (PaywallPreload.preloadAllPaywalls$default(configContext.getPaywallPreload(), config, configContext.getContext(), null, this, 4, null) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }
            }

            private PreloadAll() {
                super(new AnonymousClass1(null), null);
            }
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadByNames;", "Lcom/superwall/sdk/config/models/ConfigState$Actions;", "eventNames", "", "", "<init>", "(Ljava/util/Set;)V", "getEventNames", "()Ljava/util/Set;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class PreloadByNames extends Actions {
            private final Set<String> eventNames;

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ PreloadByNames copy$default(PreloadByNames preloadByNames, Set set, int i, Object obj) {
                if ((i & 1) != 0) {
                    set = preloadByNames.eventNames;
                }
                return preloadByNames.copy(set);
            }

            public final Set<String> component1() {
                return this.eventNames;
            }

            public final PreloadByNames copy(Set<String> eventNames) {
                Intrinsics.checkNotNullParameter(eventNames, "eventNames");
                return new PreloadByNames(eventNames);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof PreloadByNames) && Intrinsics.areEqual(this.eventNames, ((PreloadByNames) other).eventNames);
            }

            public int hashCode() {
                return this.eventNames.hashCode();
            }

            public String toString() {
                return "PreloadByNames(eventNames=" + this.eventNames + ")";
            }

            /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$PreloadByNames$1, reason: invalid class name */
            /* JADX INFO: compiled from: ConfigState.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/config/ConfigContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$PreloadByNames$1", f = "ConfigState.kt", i = {}, l = {375}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<ConfigContext, Continuation<? super Unit>, Object> {
                final /* synthetic */ Set<String> $eventNames;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(Set<String> set, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$eventNames = set;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$eventNames, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(ConfigContext configContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(configContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        ConfigContext configContext = (ConfigContext) this.L$0;
                        Config config = ConfigStateKt.getConfig(configContext.getState().getValue());
                        if (config == null) {
                            return Unit.INSTANCE;
                        }
                        this.label = 1;
                        if (configContext.getPaywallPreload().preloadPaywallsByNames(config, this.$eventNames, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }
            }

            public final Set<String> getEventNames() {
                return this.eventNames;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public PreloadByNames(Set<String> eventNames) {
                super(new AnonymousClass1(eventNames, null), null);
                Intrinsics.checkNotNullParameter(eventNames, "eventNames");
                this.eventNames = eventNames;
            }
        }

        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/models/ConfigState$Actions$GetAssignments;", "Lcom/superwall/sdk/config/models/ConfigState$Actions;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class GetAssignments extends Actions {
            public static final GetAssignments INSTANCE = new GetAssignments();

            /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$GetAssignments$1, reason: invalid class name */
            /* JADX INFO: compiled from: ConfigState.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/config/ConfigContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$GetAssignments$1", f = "ConfigState.kt", i = {0}, l = {383, 384}, m = "invokeSuspend", n = {"$this$exec"}, s = {"L$0"})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<ConfigContext, Continuation<? super Unit>, Object> {
                private /* synthetic */ Object L$0;
                int label;

                AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(ConfigContext configContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(configContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code restructure failed: missing block: B:28:0x0070, code lost:
                
                    if (r9 == r0) goto L29;
                 */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r9) {
                    /*
                        r8 = this;
                        java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r1 = r8.label
                        r2 = 2
                        r3 = 1
                        r4 = 0
                        if (r1 == 0) goto L27
                        if (r1 == r3) goto L1b
                        if (r1 != r2) goto L13
                        kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L23
                        goto L73
                    L13:
                        java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                        java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                        r9.<init>(r0)
                        throw r9
                    L1b:
                        java.lang.Object r1 = r8.L$0
                        com.superwall.sdk.config.ConfigContext r1 = (com.superwall.sdk.config.ConfigContext) r1
                        kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L23
                        goto L5f
                    L23:
                        r0 = move-exception
                        r9 = r0
                        r5 = r9
                        goto L7e
                    L27:
                        kotlin.ResultKt.throwOnFailure(r9)
                        java.lang.Object r9 = r8.L$0
                        r1 = r9
                        com.superwall.sdk.config.ConfigContext r1 = (com.superwall.sdk.config.ConfigContext) r1
                        kotlinx.coroutines.flow.StateFlow r9 = r1.getState()
                        java.lang.Object r9 = r9.getValue()
                        com.superwall.sdk.config.models.ConfigState r9 = (com.superwall.sdk.config.models.ConfigState) r9
                        com.superwall.sdk.models.config.Config r9 = com.superwall.sdk.config.models.ConfigStateKt.getConfig(r9)
                        if (r9 != 0) goto L42
                        kotlin.Unit r9 = kotlin.Unit.INSTANCE
                        return r9
                    L42:
                        java.util.Set r9 = r9.getTriggers()
                        boolean r5 = r9.isEmpty()
                        if (r5 != 0) goto L4d
                        goto L4e
                    L4d:
                        r9 = r4
                    L4e:
                        if (r9 == 0) goto L90
                        com.superwall.sdk.config.Assignments r5 = r1.getAssignments()     // Catch: java.lang.Throwable -> L23
                        r8.L$0 = r1     // Catch: java.lang.Throwable -> L23
                        r8.label = r3     // Catch: java.lang.Throwable -> L23
                        java.lang.Object r9 = r5.getAssignments(r9, r8)     // Catch: java.lang.Throwable -> L23
                        if (r9 != r0) goto L5f
                        goto L72
                    L5f:
                        com.superwall.sdk.misc.Either r9 = (com.superwall.sdk.misc.Either) r9     // Catch: java.lang.Throwable -> L23
                        com.superwall.sdk.config.models.ConfigState$Actions$GetAssignments$1$2$1 r3 = new com.superwall.sdk.config.models.ConfigState$Actions$GetAssignments$1$2$1     // Catch: java.lang.Throwable -> L23
                        r3.<init>(r1, r4)     // Catch: java.lang.Throwable -> L23
                        kotlin.jvm.functions.Function2 r3 = (kotlin.jvm.functions.Function2) r3     // Catch: java.lang.Throwable -> L23
                        r8.L$0 = r4     // Catch: java.lang.Throwable -> L23
                        r8.label = r2     // Catch: java.lang.Throwable -> L23
                        java.lang.Object r9 = com.superwall.sdk.misc.EitherKt.then(r9, r3, r8)     // Catch: java.lang.Throwable -> L23
                        if (r9 != r0) goto L73
                    L72:
                        return r0
                    L73:
                        com.superwall.sdk.misc.Either r9 = (com.superwall.sdk.misc.Either) r9     // Catch: java.lang.Throwable -> L23
                        com.superwall.sdk.config.models.ConfigState$Actions$GetAssignments$1$$ExternalSyntheticLambda0 r0 = new com.superwall.sdk.config.models.ConfigState$Actions$GetAssignments$1$$ExternalSyntheticLambda0     // Catch: java.lang.Throwable -> L23
                        r0.<init>()     // Catch: java.lang.Throwable -> L23
                        com.superwall.sdk.misc.EitherKt.onError(r9, r0)     // Catch: java.lang.Throwable -> L23
                        goto L90
                    L7e:
                        r5.printStackTrace()
                        com.superwall.sdk.logger.Logger r0 = com.superwall.sdk.logger.Logger.INSTANCE
                        com.superwall.sdk.logger.LogLevel r1 = com.superwall.sdk.logger.LogLevel.error
                        com.superwall.sdk.logger.LogScope r2 = com.superwall.sdk.logger.LogScope.configManager
                        r6 = 8
                        r7 = 0
                        java.lang.String r3 = "Error retrieving assignments."
                        r4 = 0
                        com.superwall.sdk.logger.Logger.debug$default(r0, r1, r2, r3, r4, r5, r6, r7)
                    L90:
                        kotlin.Unit r9 = kotlin.Unit.INSTANCE
                        return r9
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.config.models.ConfigState.Actions.GetAssignments.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static final Unit invokeSuspend$lambda$2$lambda$1(NetworkError networkError) {
                    Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.configManager, "Error retrieving assignments.", null, networkError, 8, null);
                    return Unit.INSTANCE;
                }
            }

            private GetAssignments() {
                super(new AnonymousClass1(null), null);
            }
        }
    }
}
