package com.superwall.sdk.identity;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.react.modules.dialog.AlertFragment;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.misc.String_SHA256Kt;
import com.superwall.sdk.misc.primitives.Reducer;
import com.superwall.sdk.misc.primitives.TypedAction;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.storage.DidTrackFirstSeen;
import com.superwall.sdk.web.WebPaywallRedeemer;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdentityManagerActor.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0086\b\u0018\u00002\u00020\u0001:\u00044567BQ\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\"J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0006HÆ\u0003J\u0015\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\bHÆ\u0003J\t\u0010-\u001a\u00020\nHÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003JS\u0010/\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u0003HÆ\u0001J\u0013\u00100\u001a\u00020\u00192\b\u00101\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00102\u001a\u00020\u0006HÖ\u0001J\t\u00103\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0011\u0010\u0018\u001a\u00020\u00198F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u000fR\u0011\u0010\u001d\u001a\u00020\u00198F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001aR\u001d\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0014R\u0017\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!8F¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0011\u0010%\u001a\u00020\u00198F¢\u0006\u0006\u001a\u0004\b&\u0010\u001a¨\u00068"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState;", "", Keys.APP_USER_ID, "", Keys.ALIAS_ID, Keys.SEED, "", "userAttributes", "", TypedValues.Cycle.S_WAVE_PHASE, "Lcom/superwall/sdk/identity/IdentityState$Phase;", "appInstalledAtString", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;)V", "getAppUserId", "()Ljava/lang/String;", "getAliasId", "getSeed", "()I", "getUserAttributes", "()Ljava/util/Map;", "getPhase", "()Lcom/superwall/sdk/identity/IdentityState$Phase;", "getAppInstalledAtString", "isReady", "", "()Z", "userId", "getUserId", "isLoggedIn", "enrichedAttributes", "getEnrichedAttributes", "pending", "", "Lcom/superwall/sdk/identity/IdentityState$Pending;", "getPending", "()Ljava/util/Set;", "hasPendingIdentityResolution", "getHasPendingIdentityResolution", "resolve", "item", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "toString", "Pending", "Phase", "Updates", "Actions", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class IdentityState {
    private final String aliasId;
    private final String appInstalledAtString;
    private final String appUserId;
    private final Phase phase;
    private final int seed;
    private final Map<String, Object> userAttributes;

    public IdentityState() {
        this(null, null, 0, null, null, null, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ IdentityState copy$default(IdentityState identityState, String str, String str2, int i, Map map, Phase phase, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = identityState.appUserId;
        }
        if ((i2 & 2) != 0) {
            str2 = identityState.aliasId;
        }
        if ((i2 & 4) != 0) {
            i = identityState.seed;
        }
        if ((i2 & 8) != 0) {
            map = identityState.userAttributes;
        }
        if ((i2 & 16) != 0) {
            phase = identityState.phase;
        }
        if ((i2 & 32) != 0) {
            str3 = identityState.appInstalledAtString;
        }
        Phase phase2 = phase;
        String str4 = str3;
        return identityState.copy(str, str2, i, map, phase2, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppUserId() {
        return this.appUserId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAliasId() {
        return this.aliasId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getSeed() {
        return this.seed;
    }

    public final Map<String, Object> component4() {
        return this.userAttributes;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Phase getPhase() {
        return this.phase;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getAppInstalledAtString() {
        return this.appInstalledAtString;
    }

    public final IdentityState copy(String appUserId, String aliasId, int seed, Map<String, ? extends Object> userAttributes, Phase phase, String appInstalledAtString) {
        Intrinsics.checkNotNullParameter(aliasId, "aliasId");
        Intrinsics.checkNotNullParameter(userAttributes, "userAttributes");
        Intrinsics.checkNotNullParameter(phase, "phase");
        Intrinsics.checkNotNullParameter(appInstalledAtString, "appInstalledAtString");
        return new IdentityState(appUserId, aliasId, seed, userAttributes, phase, appInstalledAtString);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IdentityState)) {
            return false;
        }
        IdentityState identityState = (IdentityState) other;
        return Intrinsics.areEqual(this.appUserId, identityState.appUserId) && Intrinsics.areEqual(this.aliasId, identityState.aliasId) && this.seed == identityState.seed && Intrinsics.areEqual(this.userAttributes, identityState.userAttributes) && Intrinsics.areEqual(this.phase, identityState.phase) && Intrinsics.areEqual(this.appInstalledAtString, identityState.appInstalledAtString);
    }

    public int hashCode() {
        String str = this.appUserId;
        return ((((((((((str == null ? 0 : str.hashCode()) * 31) + this.aliasId.hashCode()) * 31) + Integer.hashCode(this.seed)) * 31) + this.userAttributes.hashCode()) * 31) + this.phase.hashCode()) * 31) + this.appInstalledAtString.hashCode();
    }

    public String toString() {
        return "IdentityState(appUserId=" + this.appUserId + ", aliasId=" + this.aliasId + ", seed=" + this.seed + ", userAttributes=" + this.userAttributes + ", phase=" + this.phase + ", appInstalledAtString=" + this.appInstalledAtString + ")";
    }

    public IdentityState(String str, String aliasId, int i, Map<String, ? extends Object> userAttributes, Phase phase, String appInstalledAtString) {
        Intrinsics.checkNotNullParameter(aliasId, "aliasId");
        Intrinsics.checkNotNullParameter(userAttributes, "userAttributes");
        Intrinsics.checkNotNullParameter(phase, "phase");
        Intrinsics.checkNotNullParameter(appInstalledAtString, "appInstalledAtString");
        this.appUserId = str;
        this.aliasId = aliasId;
        this.seed = i;
        this.userAttributes = userAttributes;
        this.phase = phase;
        this.appInstalledAtString = appInstalledAtString;
    }

    public final String getAppUserId() {
        return this.appUserId;
    }

    public /* synthetic */ IdentityState(String str, String str2, int i, Map map, Phase.Pending pending, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? IdentityLogic.INSTANCE.generateAlias() : str2, (i2 & 4) != 0 ? IdentityLogic.INSTANCE.generateSeed() : i, (i2 & 8) != 0 ? MapsKt.emptyMap() : map, (i2 & 16) != 0 ? new Phase.Pending(SetsKt.setOf(Pending.Configuration.INSTANCE)) : pending, (i2 & 32) != 0 ? "" : str3);
    }

    public final String getAliasId() {
        return this.aliasId;
    }

    public final int getSeed() {
        return this.seed;
    }

    public final Map<String, Object> getUserAttributes() {
        return this.userAttributes;
    }

    public final Phase getPhase() {
        return this.phase;
    }

    public final String getAppInstalledAtString() {
        return this.appInstalledAtString;
    }

    /* JADX INFO: compiled from: IdentityManagerActor.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\b\tB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0006\n\u000b\f\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Pending;", "", "<init>", "()V", "Configuration", "Identification", "Attributes", "Reset", "Seed", "Assignments", "Lcom/superwall/sdk/identity/IdentityState$Pending$Assignments;", "Lcom/superwall/sdk/identity/IdentityState$Pending$Attributes;", "Lcom/superwall/sdk/identity/IdentityState$Pending$Configuration;", "Lcom/superwall/sdk/identity/IdentityState$Pending$Identification;", "Lcom/superwall/sdk/identity/IdentityState$Pending$Reset;", "Lcom/superwall/sdk/identity/IdentityState$Pending$Seed;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Pending {
        public /* synthetic */ Pending(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Pending$Configuration;", "Lcom/superwall/sdk/identity/IdentityState$Pending;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Configuration extends Pending {
            public static final Configuration INSTANCE = new Configuration();

            private Configuration() {
                super(null);
            }
        }

        private Pending() {
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Pending$Identification;", "Lcom/superwall/sdk/identity/IdentityState$Pending;", "id", "", "<init>", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Identification extends Pending {
            private final String id;

            public static /* synthetic */ Identification copy$default(Identification identification, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = identification.id;
                }
                return identification.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getId() {
                return this.id;
            }

            public final Identification copy(String id) {
                Intrinsics.checkNotNullParameter(id, "id");
                return new Identification(id);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Identification) && Intrinsics.areEqual(this.id, ((Identification) other).id);
            }

            public int hashCode() {
                return this.id.hashCode();
            }

            public String toString() {
                return "Identification(id=" + this.id + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Identification(String id) {
                super(null);
                Intrinsics.checkNotNullParameter(id, "id");
                this.id = id;
            }

            public final String getId() {
                return this.id;
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Pending$Attributes;", "Lcom/superwall/sdk/identity/IdentityState$Pending;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Attributes extends Pending {
            public static final Attributes INSTANCE = new Attributes();

            private Attributes() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Pending$Reset;", "Lcom/superwall/sdk/identity/IdentityState$Pending;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Reset extends Pending {
            public static final Reset INSTANCE = new Reset();

            private Reset() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Pending$Seed;", "Lcom/superwall/sdk/identity/IdentityState$Pending;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Seed extends Pending {
            public static final Seed INSTANCE = new Seed();

            private Seed() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Pending$Assignments;", "Lcom/superwall/sdk/identity/IdentityState$Pending;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Assignments extends Pending {
            public static final Assignments INSTANCE = new Assignments();

            private Assignments() {
                super(null);
            }
        }
    }

    /* JADX INFO: compiled from: IdentityManagerActor.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Phase;", "", "<init>", "()V", "Pending", "Ready", "Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;", "Lcom/superwall/sdk/identity/IdentityState$Phase$Ready;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Phase {
        public /* synthetic */ Phase(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;", "Lcom/superwall/sdk/identity/IdentityState$Phase;", AlertFragment.ARG_ITEMS, "", "Lcom/superwall/sdk/identity/IdentityState$Pending;", "<init>", "(Ljava/util/Set;)V", "getItems", "()Ljava/util/Set;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Pending extends Phase {
            private final Set<Pending> items;

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Pending copy$default(Pending pending, Set set, int i, Object obj) {
                if ((i & 1) != 0) {
                    set = pending.items;
                }
                return pending.copy(set);
            }

            public final Set<Pending> component1() {
                return this.items;
            }

            public final Pending copy(Set<? extends Pending> items) {
                Intrinsics.checkNotNullParameter(items, "items");
                return new Pending(items);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Pending) && Intrinsics.areEqual(this.items, ((Pending) other).items);
            }

            public int hashCode() {
                return this.items.hashCode();
            }

            public String toString() {
                return "Pending(items=" + this.items + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public Pending(Set<? extends Pending> items) {
                super(null);
                Intrinsics.checkNotNullParameter(items, "items");
                this.items = items;
            }

            public final Set<Pending> getItems() {
                return this.items;
            }
        }

        private Phase() {
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Phase$Ready;", "Lcom/superwall/sdk/identity/IdentityState$Phase;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Ready extends Phase {
            public static final Ready INSTANCE = new Ready();

            private Ready() {
                super(null);
            }
        }
    }

    public final boolean isReady() {
        return this.phase instanceof Phase.Ready;
    }

    public final String getUserId() {
        String str = this.appUserId;
        return str == null ? this.aliasId : str;
    }

    public final boolean isLoggedIn() {
        return this.appUserId != null;
    }

    public final Map<String, Object> getEnrichedAttributes() {
        Map<String, Object> mutableMap = MapsKt.toMutableMap(this.userAttributes);
        String str = this.appUserId;
        if (str != null) {
            mutableMap.put(Keys.APP_USER_ID, str);
        }
        mutableMap.put(Keys.ALIAS_ID, this.aliasId);
        return mutableMap;
    }

    public final Set<Pending> getPending() {
        Set<Pending> items;
        Phase phase = this.phase;
        Phase.Pending pending = phase instanceof Phase.Pending ? (Phase.Pending) phase : null;
        return (pending == null || (items = pending.getItems()) == null) ? SetsKt.emptySet() : items;
    }

    public final boolean getHasPendingIdentityResolution() {
        Set<Pending> pending = getPending();
        if ((pending instanceof Collection) && pending.isEmpty()) {
            return false;
        }
        for (Pending pending2 : pending) {
            if ((pending2 instanceof Pending.Identification) || (pending2 instanceof Pending.Attributes) || (pending2 instanceof Pending.Reset) || (pending2 instanceof Pending.Seed) || (pending2 instanceof Pending.Assignments)) {
                return true;
            }
        }
        return false;
    }

    public final IdentityState resolve(Pending item) {
        Set<Pending> items;
        Intrinsics.checkNotNullParameter(item, "item");
        Phase phase = this.phase;
        Phase.Pending pending = phase instanceof Phase.Pending ? (Phase.Pending) phase : null;
        if (pending == null || (items = pending.getItems()) == null) {
            return this;
        }
        Set setMinus = SetsKt.minus(items, item);
        return copy$default(this, null, null, 0, null, setMinus.isEmpty() ? Phase.Ready.INSTANCE : new Phase.Pending(setMinus), null, 47, null);
    }

    /* JADX INFO: compiled from: IdentityManagerActor.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\r\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015B\u001d\b\u0004\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R \u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b\u0082\u0001\r\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"¨\u0006#"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates;", "Lcom/superwall/sdk/misc/primitives/Reducer;", "Lcom/superwall/sdk/identity/IdentityState;", "reduce", "Lkotlin/Function1;", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "getReduce", "()Lkotlin/jvm/functions/Function1;", "Identify", "SeedResolved", "SeedSkipped", "AttributesMerged", "AssignmentsCompleted", "BeginIdentify", "EndIdentify", "BeginAttributes", "EndAttributes", "BeginReset", "EndReset", "Configure", "Reset", "Lcom/superwall/sdk/identity/IdentityState$Updates$AssignmentsCompleted;", "Lcom/superwall/sdk/identity/IdentityState$Updates$AttributesMerged;", "Lcom/superwall/sdk/identity/IdentityState$Updates$BeginAttributes;", "Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;", "Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset;", "Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;", "Lcom/superwall/sdk/identity/IdentityState$Updates$EndAttributes;", "Lcom/superwall/sdk/identity/IdentityState$Updates$EndIdentify;", "Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;", "Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;", "Lcom/superwall/sdk/identity/IdentityState$Updates$Reset;", "Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;", "Lcom/superwall/sdk/identity/IdentityState$Updates$SeedSkipped;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Updates implements Reducer<IdentityState> {
        private final Function1<IdentityState, IdentityState> reduce;

        public /* synthetic */ Updates(Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
            this(function1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Updates(Function1<? super IdentityState, IdentityState> function1) {
            this.reduce = function1;
        }

        @Override // com.superwall.sdk.misc.primitives.Reducer
        public Function1<IdentityState, IdentityState> getReduce() {
            return this.reduce;
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", "userId", "", "restoreAssignments", "", "<init>", "(Ljava/lang/String;Z)V", "getUserId", "()Ljava/lang/String;", "getRestoreAssignments", "()Z", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Identify extends Updates {
            private final boolean restoreAssignments;
            private final String userId;

            public static /* synthetic */ Identify copy$default(Identify identify, String str, boolean z, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = identify.userId;
                }
                if ((i & 2) != 0) {
                    z = identify.restoreAssignments;
                }
                return identify.copy(str, z);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getUserId() {
                return this.userId;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final boolean getRestoreAssignments() {
                return this.restoreAssignments;
            }

            public final Identify copy(String userId, boolean restoreAssignments) {
                Intrinsics.checkNotNullParameter(userId, "userId");
                return new Identify(userId, restoreAssignments);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Identify)) {
                    return false;
                }
                Identify identify = (Identify) other;
                return Intrinsics.areEqual(this.userId, identify.userId) && this.restoreAssignments == identify.restoreAssignments;
            }

            public int hashCode() {
                return (this.userId.hashCode() * 31) + Boolean.hashCode(this.restoreAssignments);
            }

            public String toString() {
                return "Identify(userId=" + this.userId + ", restoreAssignments=" + this.restoreAssignments + ")";
            }

            public final String getUserId() {
                return this.userId;
            }

            public final boolean getRestoreAssignments() {
                return this.restoreAssignments;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Identify(final String userId, final boolean z) {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$Identify$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.Identify._init_$lambda$1(userId, z, (IdentityState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(userId, "userId");
                this.userId = userId;
                this.restoreAssignments = z;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$1(String str, boolean z, IdentityState state) {
                IdentityState identityState;
                Intrinsics.checkNotNullParameter(state, "state");
                if (Intrinsics.areEqual(str, state.getAppUserId())) {
                    return state;
                }
                if (state.getAppUserId() != null) {
                    identityState = new IdentityState(null, null, 0, null, Phase.Ready.INSTANCE, state.getAppInstalledAtString(), 15, null);
                } else {
                    identityState = state;
                }
                Map<String, Object> mapMergeAttributes = IdentityLogic.INSTANCE.mergeAttributes(MapsKt.mapOf(TuplesKt.to(Keys.APP_USER_ID, str), TuplesKt.to(Keys.ALIAS_ID, identityState.getAliasId()), TuplesKt.to(Keys.SEED, Integer.valueOf(identityState.getSeed()))), identityState.getUserAttributes(), state.getAppInstalledAtString());
                Phase phase = state.getPhase();
                Phase.Pending pending = phase instanceof Phase.Pending ? (Phase.Pending) phase : null;
                Set<Pending> items = pending != null ? pending.getItems() : null;
                if (items == null) {
                    items = SetsKt.emptySet();
                }
                Set setCreateSetBuilder = SetsKt.createSetBuilder();
                setCreateSetBuilder.add(Pending.Seed.INSTANCE);
                if (z) {
                    setCreateSetBuilder.add(Pending.Assignments.INSTANCE);
                }
                Unit unit = Unit.INSTANCE;
                return IdentityState.copy$default(identityState, str, null, 0, mapMergeAttributes, new Phase.Pending(SetsKt.plus((Set) items, (Iterable) SetsKt.build(setCreateSetBuilder))), null, 38, null);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", Keys.SEED, "", "<init>", "(I)V", "getSeed", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class SeedResolved extends Updates {
            private final int seed;

            public static /* synthetic */ SeedResolved copy$default(SeedResolved seedResolved, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = seedResolved.seed;
                }
                return seedResolved.copy(i);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getSeed() {
                return this.seed;
            }

            public final SeedResolved copy(int seed) {
                return new SeedResolved(seed);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof SeedResolved) && this.seed == ((SeedResolved) other).seed;
            }

            public int hashCode() {
                return Integer.hashCode(this.seed);
            }

            public String toString() {
                return "SeedResolved(seed=" + this.seed + ")";
            }

            public final int getSeed() {
                return this.seed;
            }

            public SeedResolved(final int i) {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$SeedResolved$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.SeedResolved._init_$lambda$0(i, (IdentityState) obj);
                    }
                }, null);
                this.seed = i;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$0(int i, IdentityState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return IdentityState.copy$default(state, null, null, i, IdentityLogic.INSTANCE.mergeAttributes(MapsKt.mapOf(TuplesKt.to(Keys.APP_USER_ID, state.getUserId()), TuplesKt.to(Keys.ALIAS_ID, state.getAliasId()), TuplesKt.to(Keys.SEED, Integer.valueOf(i))), state.getUserAttributes(), state.getAppInstalledAtString()), null, null, 51, null).resolve(Pending.Seed.INSTANCE);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$SeedSkipped;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SeedSkipped extends Updates {
            public static final SeedSkipped INSTANCE = new SeedSkipped();

            private SeedSkipped() {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$SeedSkipped$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.SeedSkipped._init_$lambda$0((IdentityState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$0(IdentityState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return state.resolve(Pending.Seed.INSTANCE);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\u0016\b\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001R\u001f\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$AttributesMerged;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", "attrs", "", "", "", "<init>", "(Ljava/util/Map;)V", "getAttrs", "()Ljava/util/Map;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class AttributesMerged extends Updates {
            private final Map<String, Object> attrs;

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ AttributesMerged copy$default(AttributesMerged attributesMerged, Map map, int i, Object obj) {
                if ((i & 1) != 0) {
                    map = attributesMerged.attrs;
                }
                return attributesMerged.copy(map);
            }

            public final Map<String, Object> component1() {
                return this.attrs;
            }

            public final AttributesMerged copy(Map<String, ? extends Object> attrs) {
                Intrinsics.checkNotNullParameter(attrs, "attrs");
                return new AttributesMerged(attrs);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof AttributesMerged) && Intrinsics.areEqual(this.attrs, ((AttributesMerged) other).attrs);
            }

            public int hashCode() {
                return this.attrs.hashCode();
            }

            public String toString() {
                return "AttributesMerged(attrs=" + this.attrs + ")";
            }

            public final Map<String, Object> getAttrs() {
                return this.attrs;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AttributesMerged(final Map<String, ? extends Object> attrs) {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$AttributesMerged$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.AttributesMerged._init_$lambda$0(attrs, (IdentityState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(attrs, "attrs");
                this.attrs = attrs;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$0(Map map, IdentityState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return IdentityState.copy$default(state, null, null, 0, IdentityLogic.INSTANCE.mergeAttributes(map, state.getUserAttributes(), state.getAppInstalledAtString()), null, null, 55, null);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$AssignmentsCompleted;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class AssignmentsCompleted extends Updates {
            public static final AssignmentsCompleted INSTANCE = new AssignmentsCompleted();

            private AssignmentsCompleted() {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$AssignmentsCompleted$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.AssignmentsCompleted._init_$lambda$0((IdentityState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$0(IdentityState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return state.resolve(Pending.Assignments.INSTANCE);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", "id", "", "<init>", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class BeginIdentify extends Updates {
            private final String id;

            public static /* synthetic */ BeginIdentify copy$default(BeginIdentify beginIdentify, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = beginIdentify.id;
                }
                return beginIdentify.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getId() {
                return this.id;
            }

            public final BeginIdentify copy(String id) {
                Intrinsics.checkNotNullParameter(id, "id");
                return new BeginIdentify(id);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof BeginIdentify) && Intrinsics.areEqual(this.id, ((BeginIdentify) other).id);
            }

            public int hashCode() {
                return this.id.hashCode();
            }

            public String toString() {
                return "BeginIdentify(id=" + this.id + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public BeginIdentify(final String id) {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$BeginIdentify$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.BeginIdentify._init_$lambda$0(id, (IdentityState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(id, "id");
                this.id = id;
            }

            public final String getId() {
                return this.id;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$0(String str, IdentityState state) {
                Set<Pending> setEmptySet;
                Intrinsics.checkNotNullParameter(state, "state");
                Phase phase = state.getPhase();
                Phase.Pending pending = phase instanceof Phase.Pending ? (Phase.Pending) phase : null;
                if (pending == null || (setEmptySet = pending.getItems()) == null) {
                    setEmptySet = SetsKt.emptySet();
                }
                return IdentityState.copy$default(state, null, null, 0, null, new Phase.Pending(SetsKt.plus(setEmptySet, new Pending.Identification(str))), null, 47, null);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$EndIdentify;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", "id", "", "<init>", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class EndIdentify extends Updates {
            private final String id;

            public static /* synthetic */ EndIdentify copy$default(EndIdentify endIdentify, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = endIdentify.id;
                }
                return endIdentify.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getId() {
                return this.id;
            }

            public final EndIdentify copy(String id) {
                Intrinsics.checkNotNullParameter(id, "id");
                return new EndIdentify(id);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof EndIdentify) && Intrinsics.areEqual(this.id, ((EndIdentify) other).id);
            }

            public int hashCode() {
                return this.id.hashCode();
            }

            public String toString() {
                return "EndIdentify(id=" + this.id + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public EndIdentify(final String id) {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$EndIdentify$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.EndIdentify._init_$lambda$0(id, (IdentityState) obj);
                    }
                }, null);
                Intrinsics.checkNotNullParameter(id, "id");
                this.id = id;
            }

            public final String getId() {
                return this.id;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$0(String str, IdentityState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return state.resolve(new Pending.Identification(str));
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$BeginAttributes;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class BeginAttributes extends Updates {
            public static final BeginAttributes INSTANCE = new BeginAttributes();

            private BeginAttributes() {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$BeginAttributes$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.BeginAttributes._init_$lambda$0((IdentityState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$0(IdentityState state) {
                Set<Pending> setEmptySet;
                Intrinsics.checkNotNullParameter(state, "state");
                Phase phase = state.getPhase();
                Phase.Pending pending = phase instanceof Phase.Pending ? (Phase.Pending) phase : null;
                if (pending == null || (setEmptySet = pending.getItems()) == null) {
                    setEmptySet = SetsKt.emptySet();
                }
                return IdentityState.copy$default(state, null, null, 0, null, new Phase.Pending(SetsKt.plus(setEmptySet, Pending.Attributes.INSTANCE)), null, 47, null);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$EndAttributes;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class EndAttributes extends Updates {
            public static final EndAttributes INSTANCE = new EndAttributes();

            private EndAttributes() {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$EndAttributes$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.EndAttributes._init_$lambda$0((IdentityState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$0(IdentityState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return state.resolve(Pending.Attributes.INSTANCE);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class BeginReset extends Updates {
            public static final BeginReset INSTANCE = new BeginReset();

            private BeginReset() {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$BeginReset$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.BeginReset._init_$lambda$0((IdentityState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$0(IdentityState state) {
                Set<Pending> setEmptySet;
                Intrinsics.checkNotNullParameter(state, "state");
                Phase phase = state.getPhase();
                Phase.Pending pending = phase instanceof Phase.Pending ? (Phase.Pending) phase : null;
                if (pending == null || (setEmptySet = pending.getItems()) == null) {
                    setEmptySet = SetsKt.emptySet();
                }
                return IdentityState.copy$default(state, null, null, 0, null, new Phase.Pending(SetsKt.plus(setEmptySet, Pending.Reset.INSTANCE)), null, 47, null);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class EndReset extends Updates {
            public static final EndReset INSTANCE = new EndReset();

            private EndReset() {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$EndReset$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.EndReset._init_$lambda$0((IdentityState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$0(IdentityState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                return state.resolve(Pending.Reset.INSTANCE);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", "needsAssignments", "", "<init>", "(Z)V", "getNeedsAssignments", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Configure extends Updates {
            private final boolean needsAssignments;

            public static /* synthetic */ Configure copy$default(Configure configure, boolean z, int i, Object obj) {
                if ((i & 1) != 0) {
                    z = configure.needsAssignments;
                }
                return configure.copy(z);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final boolean getNeedsAssignments() {
                return this.needsAssignments;
            }

            public final Configure copy(boolean needsAssignments) {
                return new Configure(needsAssignments);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Configure) && this.needsAssignments == ((Configure) other).needsAssignments;
            }

            public int hashCode() {
                return Boolean.hashCode(this.needsAssignments);
            }

            public String toString() {
                return "Configure(needsAssignments=" + this.needsAssignments + ")";
            }

            public final boolean getNeedsAssignments() {
                return this.needsAssignments;
            }

            public Configure(final boolean z) {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$Configure$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.Configure._init_$lambda$0(z, (IdentityState) obj);
                    }
                }, null);
                this.needsAssignments = z;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$0(boolean z, IdentityState state) {
                Set<Pending> setEmptySet;
                Intrinsics.checkNotNullParameter(state, "state");
                Phase phase = state.getPhase();
                Phase.Pending pending = phase instanceof Phase.Pending ? (Phase.Pending) phase : null;
                if (pending == null || (setEmptySet = pending.getItems()) == null) {
                    setEmptySet = SetsKt.emptySet();
                }
                Set setPlus = SetsKt.plus(SetsKt.minus(setEmptySet, Pending.Configuration.INSTANCE), (Iterable) (z ? SetsKt.setOf(Pending.Assignments.INSTANCE) : SetsKt.emptySet()));
                if (setPlus.isEmpty()) {
                    return IdentityState.copy$default(state, null, null, 0, null, Phase.Ready.INSTANCE, null, 47, null);
                }
                return IdentityState.copy$default(state, null, null, 0, null, new Phase.Pending(setPlus), null, 47, null);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Updates$Reset;", "Lcom/superwall/sdk/identity/IdentityState$Updates;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Reset extends Updates {
            public static final Reset INSTANCE = new Reset();

            private Reset() {
                super(new Function1() { // from class: com.superwall.sdk.identity.IdentityState$Updates$Reset$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return IdentityState.Updates.Reset._init_$lambda$0((IdentityState) obj);
                    }
                }, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final IdentityState _init_$lambda$0(IdentityState state) {
                Phase.Pending pending;
                Intrinsics.checkNotNullParameter(state, "state");
                IdentityState identityState = new IdentityState(null, null, 0, null, null, state.getAppInstalledAtString(), 31, null);
                Map<String, Object> mapMergeAttributes = IdentityLogic.INSTANCE.mergeAttributes(MapsKt.mapOf(TuplesKt.to(Keys.ALIAS_ID, identityState.getAliasId()), TuplesKt.to(Keys.SEED, Integer.valueOf(identityState.getSeed()))), MapsKt.emptyMap(), state.getAppInstalledAtString());
                Phase phase = state.getPhase();
                Phase.Pending pending2 = phase instanceof Phase.Pending ? (Phase.Pending) phase : null;
                Set<Pending> items = pending2 != null ? pending2.getItems() : null;
                if (items == null) {
                    items = SetsKt.emptySet();
                }
                if (items.isEmpty()) {
                    pending = Phase.Ready.INSTANCE;
                } else {
                    pending = new Phase.Pending(items);
                }
                return IdentityState.copy$default(identityState, null, null, 0, mapMergeAttributes, pending, null, 39, null);
            }
        }
    }

    /* JADX INFO: compiled from: IdentityManagerActor.kt */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\n\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017B2\b\u0004\u0012'\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\b¢\u0006\u0004\b\t\u0010\nR7\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bX\u0096\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\f\u0082\u0001\n\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !¨\u0006\""}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Actions;", "Lcom/superwall/sdk/misc/primitives/TypedAction;", "Lcom/superwall/sdk/identity/IdentityContext;", "execute", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "<init>", "(Lkotlin/jvm/functions/Function2;)V", "getExecute", "()Lkotlin/jvm/functions/Function2;", "Lkotlin/jvm/functions/Function2;", "Configure", "Identify", "IdentityChanged", "ResolveSeed", "FetchAssignments", "CheckWebEntitlements", "MergeAttributes", "NotifyUserChange", "Reset", "FullReset", "Lcom/superwall/sdk/identity/IdentityState$Actions$CheckWebEntitlements;", "Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;", "Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments;", "Lcom/superwall/sdk/identity/IdentityState$Actions$FullReset;", "Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;", "Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged;", "Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes;", "Lcom/superwall/sdk/identity/IdentityState$Actions$NotifyUserChange;", "Lcom/superwall/sdk/identity/IdentityState$Actions$Reset;", "Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Actions implements TypedAction<IdentityContext> {
        private final Function2<IdentityContext, Continuation<? super Unit>, Object> execute;

        public /* synthetic */ Actions(Function2 function2, DefaultConstructorMarker defaultConstructorMarker) {
            this(function2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Actions(Function2<? super IdentityContext, ? super Continuation<? super Unit>, ? extends Object> function2) {
            this.execute = function2;
        }

        @Override // com.superwall.sdk.misc.primitives.TypedAction
        public Function2<IdentityContext, Continuation<? super Unit>, Object> getExecute() {
            return this.execute;
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;", "Lcom/superwall/sdk/identity/IdentityState$Actions;", "neverCalledStaticConfig", "", "<init>", "(Z)V", "getNeverCalledStaticConfig", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Configure extends Actions {
            private final boolean neverCalledStaticConfig;

            public static /* synthetic */ Configure copy$default(Configure configure, boolean z, int i, Object obj) {
                if ((i & 1) != 0) {
                    z = configure.neverCalledStaticConfig;
                }
                return configure.copy(z);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final boolean getNeverCalledStaticConfig() {
                return this.neverCalledStaticConfig;
            }

            public final Configure copy(boolean neverCalledStaticConfig) {
                return new Configure(neverCalledStaticConfig);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Configure) && this.neverCalledStaticConfig == ((Configure) other).neverCalledStaticConfig;
            }

            public int hashCode() {
                return Boolean.hashCode(this.neverCalledStaticConfig);
            }

            public String toString() {
                return "Configure(neverCalledStaticConfig=" + this.neverCalledStaticConfig + ")";
            }

            /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityState$Actions$Configure$1, reason: invalid class name */
            /* JADX INFO: compiled from: IdentityManagerActor.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/identity/IdentityContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.identity.IdentityState$Actions$Configure$1", f = "IdentityManagerActor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<IdentityContext, Continuation<? super Unit>, Object> {
                final /* synthetic */ boolean $neverCalledStaticConfig;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(boolean z, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$neverCalledStaticConfig = z;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$neverCalledStaticConfig, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(IdentityContext identityContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(identityContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    IdentityContext identityContext = (IdentityContext) this.L$0;
                    Boolean bool = (Boolean) identityContext.getStorage().read(DidTrackFirstSeen.INSTANCE);
                    boolean zShouldGetAssignments = IdentityLogic.INSTANCE.shouldGetAssignments(((IdentityState) identityContext.getActor().getState().getValue()).isLoggedIn(), this.$neverCalledStaticConfig, !(bool != null ? bool.booleanValue() : false));
                    identityContext.update(new Updates.Configure(zShouldGetAssignments));
                    if (zShouldGetAssignments) {
                        identityContext.effect(FetchAssignments.INSTANCE);
                    }
                    return Unit.INSTANCE;
                }
            }

            public final boolean getNeverCalledStaticConfig() {
                return this.neverCalledStaticConfig;
            }

            public Configure(boolean z) {
                super(new AnonymousClass1(z, null), null);
                this.neverCalledStaticConfig = z;
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;", "Lcom/superwall/sdk/identity/IdentityState$Actions;", "userId", "", "options", "Lcom/superwall/sdk/identity/IdentityOptions;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;)V", "getUserId", "()Ljava/lang/String;", "getOptions", "()Lcom/superwall/sdk/identity/IdentityOptions;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Identify extends Actions {
            private final IdentityOptions options;
            private final String userId;

            public static /* synthetic */ Identify copy$default(Identify identify, String str, IdentityOptions identityOptions, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = identify.userId;
                }
                if ((i & 2) != 0) {
                    identityOptions = identify.options;
                }
                return identify.copy(str, identityOptions);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getUserId() {
                return this.userId;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final IdentityOptions getOptions() {
                return this.options;
            }

            public final Identify copy(String userId, IdentityOptions options) {
                Intrinsics.checkNotNullParameter(userId, "userId");
                return new Identify(userId, options);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Identify)) {
                    return false;
                }
                Identify identify = (Identify) other;
                return Intrinsics.areEqual(this.userId, identify.userId) && Intrinsics.areEqual(this.options, identify.options);
            }

            public int hashCode() {
                int iHashCode = this.userId.hashCode() * 31;
                IdentityOptions identityOptions = this.options;
                return iHashCode + (identityOptions == null ? 0 : identityOptions.hashCode());
            }

            public String toString() {
                return "Identify(userId=" + this.userId + ", options=" + this.options + ")";
            }

            public final String getUserId() {
                return this.userId;
            }

            /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityState$Actions$Identify$1, reason: invalid class name */
            /* JADX INFO: compiled from: IdentityManagerActor.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/identity/IdentityContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.identity.IdentityState$Actions$Identify$1", f = "IdentityManagerActor.kt", i = {0, 0}, l = {281, 288}, m = "invokeSuspend", n = {"<this>", "sanitized"}, s = {"L$0", "L$1"})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<IdentityContext, Continuation<? super Unit>, Object> {
                final /* synthetic */ IdentityOptions $options;
                final /* synthetic */ String $userId;
                private /* synthetic */ Object L$0;
                Object L$1;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(String str, IdentityOptions identityOptions, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$userId = str;
                    this.$options = identityOptions;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$userId, this.$options, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(IdentityContext identityContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(identityContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code duplicated, block: B:22:0x0083 A[PHI: r1 r4
                  0x0083: PHI (r1v4 java.lang.String) = (r1v2 java.lang.String), (r1v2 java.lang.String), (r1v6 java.lang.String) binds: [B:18:0x0066, B:20:0x0080, B:9:0x001b] A[DONT_GENERATE, DONT_INLINE]
                  0x0083: PHI (r4v3 com.superwall.sdk.identity.IdentityContext) = 
                  (r4v1 com.superwall.sdk.identity.IdentityContext)
                  (r4v1 com.superwall.sdk.identity.IdentityContext)
                  (r4v5 com.superwall.sdk.identity.IdentityContext)
                 binds: [B:18:0x0066, B:20:0x0080, B:9:0x001b] A[DONT_GENERATE, DONT_INLINE]] */
                /* JADX WARN: Code duplicated, block: B:24:0x008a  */
                /* JADX WARN: Code duplicated, block: B:27:0x0091  */
                /* JADX WARN: Code duplicated, block: B:30:0x00af  */
                /* JADX WARN: Code duplicated, block: B:31:0x00b8  */
                /* JADX WARN: Code restructure failed: missing block: B:33:0x00cb, code lost:
                
                    if (r4.immediate(new com.superwall.sdk.identity.IdentityState.Actions.IdentityChanged(r1, r10, r5), r9) == r0) goto L34;
                 */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r10) {
                    /*
                        Method dump skipped, instruction units count: 225
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.identity.IdentityState.Actions.Identify.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            public final IdentityOptions getOptions() {
                return this.options;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Identify(String userId, IdentityOptions identityOptions) {
                super(new AnonymousClass1(userId, identityOptions, null), null);
                Intrinsics.checkNotNullParameter(userId, "userId");
                this.userId = userId;
                this.options = identityOptions;
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\rJ.\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged;", "Lcom/superwall/sdk/identity/IdentityState$Actions;", "id", "", "alias", "restoreAssignments", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getId", "()Ljava/lang/String;", "getAlias", "getRestoreAssignments", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged;", "equals", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class IdentityChanged extends Actions {
            private final String alias;
            private final String id;
            private final Boolean restoreAssignments;

            public static /* synthetic */ IdentityChanged copy$default(IdentityChanged identityChanged, String str, String str2, Boolean bool, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = identityChanged.id;
                }
                if ((i & 2) != 0) {
                    str2 = identityChanged.alias;
                }
                if ((i & 4) != 0) {
                    bool = identityChanged.restoreAssignments;
                }
                return identityChanged.copy(str, str2, bool);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getId() {
                return this.id;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getAlias() {
                return this.alias;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final Boolean getRestoreAssignments() {
                return this.restoreAssignments;
            }

            public final IdentityChanged copy(String id, String alias, Boolean restoreAssignments) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(alias, "alias");
                return new IdentityChanged(id, alias, restoreAssignments);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof IdentityChanged)) {
                    return false;
                }
                IdentityChanged identityChanged = (IdentityChanged) other;
                return Intrinsics.areEqual(this.id, identityChanged.id) && Intrinsics.areEqual(this.alias, identityChanged.alias) && Intrinsics.areEqual(this.restoreAssignments, identityChanged.restoreAssignments);
            }

            public int hashCode() {
                int iHashCode = ((this.id.hashCode() * 31) + this.alias.hashCode()) * 31;
                Boolean bool = this.restoreAssignments;
                return iHashCode + (bool == null ? 0 : bool.hashCode());
            }

            public String toString() {
                return "IdentityChanged(id=" + this.id + ", alias=" + this.alias + ", restoreAssignments=" + this.restoreAssignments + ")";
            }

            public final String getId() {
                return this.id;
            }

            public final String getAlias() {
                return this.alias;
            }

            /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityState$Actions$IdentityChanged$1, reason: invalid class name */
            /* JADX INFO: compiled from: IdentityManagerActor.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/identity/IdentityContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.identity.IdentityState$Actions$IdentityChanged$1", f = "IdentityManagerActor.kt", i = {0}, l = {TypedValues.Attributes.TYPE_EASING, 321}, m = "invokeSuspend", n = {"<this>"}, s = {"L$0"})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<IdentityContext, Continuation<? super Unit>, Object> {
                final /* synthetic */ String $alias;
                final /* synthetic */ String $id;
                final /* synthetic */ Boolean $restoreAssignments;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(String str, String str2, Boolean bool, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$id = str;
                    this.$alias = str2;
                    this.$restoreAssignments = bool;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$id, this.$alias, this.$restoreAssignments, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(IdentityContext identityContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(identityContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code restructure failed: missing block: B:16:0x009b, code lost:
                
                    if (r1.immediate(com.superwall.sdk.identity.IdentityState.Actions.FetchAssignments.INSTANCE, r8) == r0) goto L17;
                 */
                /* JADX WARN: Multi-variable type inference failed */
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
                        r3 = 0
                        r4 = 1
                        if (r1 == 0) goto L24
                        if (r1 == r4) goto L1c
                        if (r1 != r2) goto L14
                        kotlin.ResultKt.throwOnFailure(r9)
                        goto La5
                    L14:
                        java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                        java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                        r9.<init>(r0)
                        throw r9
                    L1c:
                        java.lang.Object r1 = r8.L$0
                        com.superwall.sdk.identity.IdentityContext r1 = (com.superwall.sdk.identity.IdentityContext) r1
                        kotlin.ResultKt.throwOnFailure(r9)
                        goto L80
                    L24:
                        kotlin.ResultKt.throwOnFailure(r9)
                        java.lang.Object r9 = r8.L$0
                        r1 = r9
                        com.superwall.sdk.identity.IdentityContext r1 = (com.superwall.sdk.identity.IdentityContext) r1
                        com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$IdentityAlias r9 = new com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$IdentityAlias
                        r9.<init>(r3, r4, r3)
                        com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent r9 = (com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent) r9
                        r1.track(r9)
                        kotlinx.coroutines.flow.StateFlow r9 = r1.getState()
                        java.lang.Object r9 = r9.getValue()
                        com.superwall.sdk.identity.IdentityState r9 = (com.superwall.sdk.identity.IdentityState) r9
                        com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$Attributes r5 = new com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$Attributes
                        java.lang.String r6 = r9.getAppInstalledAtString()
                        java.util.HashMap r7 = new java.util.HashMap
                        java.util.Map r9 = r9.getUserAttributes()
                        r7.<init>(r9)
                        r5.<init>(r6, r7)
                        com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent r5 = (com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent) r5
                        r1.track(r5)
                        com.superwall.sdk.identity.IdentityState$Actions$ResolveSeed r9 = new com.superwall.sdk.identity.IdentityState$Actions$ResolveSeed
                        java.lang.String r5 = r8.$id
                        r9.<init>(r5)
                        com.superwall.sdk.misc.primitives.TypedAction r9 = (com.superwall.sdk.misc.primitives.TypedAction) r9
                        r1.effect(r9)
                        com.superwall.sdk.identity.IdentityState$Actions$CheckWebEntitlements r9 = com.superwall.sdk.identity.IdentityState.Actions.CheckWebEntitlements.INSTANCE
                        com.superwall.sdk.misc.primitives.TypedAction r9 = (com.superwall.sdk.misc.primitives.TypedAction) r9
                        r1.effect(r9)
                        com.superwall.sdk.SdkContext r9 = r1.getSdkContext()
                        java.lang.String r5 = r8.$id
                        java.lang.String r6 = r8.$alias
                        r7 = r8
                        kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
                        r8.L$0 = r1
                        r8.label = r4
                        java.lang.Object r9 = r9.reevaluateTestMode(r5, r6, r7)
                        if (r9 != r0) goto L80
                        goto L9d
                    L80:
                        java.lang.Boolean r9 = r8.$restoreAssignments
                        java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
                        boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r4)
                        if (r9 == 0) goto L9e
                        com.superwall.sdk.identity.IdentityState$Actions$FetchAssignments r9 = com.superwall.sdk.identity.IdentityState.Actions.FetchAssignments.INSTANCE
                        com.superwall.sdk.misc.primitives.TypedAction r9 = (com.superwall.sdk.misc.primitives.TypedAction) r9
                        r4 = r8
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        r8.L$0 = r3
                        r8.label = r2
                        java.lang.Object r9 = r1.immediate(r9, r4)
                        if (r9 != r0) goto La5
                    L9d:
                        return r0
                    L9e:
                        com.superwall.sdk.identity.IdentityState$Actions$FetchAssignments r9 = com.superwall.sdk.identity.IdentityState.Actions.FetchAssignments.INSTANCE
                        com.superwall.sdk.misc.primitives.TypedAction r9 = (com.superwall.sdk.misc.primitives.TypedAction) r9
                        r1.effect(r9)
                    La5:
                        kotlin.Unit r9 = kotlin.Unit.INSTANCE
                        return r9
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.identity.IdentityState.Actions.IdentityChanged.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            public final Boolean getRestoreAssignments() {
                return this.restoreAssignments;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public IdentityChanged(String id, String alias, Boolean bool) {
                super(new AnonymousClass1(id, alias, bool, null), null);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(alias, "alias");
                this.id = id;
                this.alias = alias;
                this.restoreAssignments = bool;
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed;", "Lcom/superwall/sdk/identity/IdentityState$Actions;", "userId", "", "<init>", "(Ljava/lang/String;)V", "getUserId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class ResolveSeed extends Actions {
            private final String userId;

            public static /* synthetic */ ResolveSeed copy$default(ResolveSeed resolveSeed, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = resolveSeed.userId;
                }
                return resolveSeed.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getUserId() {
                return this.userId;
            }

            public final ResolveSeed copy(String userId) {
                Intrinsics.checkNotNullParameter(userId, "userId");
                return new ResolveSeed(userId);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ResolveSeed) && Intrinsics.areEqual(this.userId, ((ResolveSeed) other).userId);
            }

            public int hashCode() {
                return this.userId.hashCode();
            }

            public String toString() {
                return "ResolveSeed(userId=" + this.userId + ")";
            }

            /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityState$Actions$ResolveSeed$1, reason: invalid class name */
            /* JADX INFO: compiled from: IdentityManagerActor.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/identity/IdentityContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.identity.IdentityState$Actions$ResolveSeed$1", f = "IdentityManagerActor.kt", i = {0}, l = {331}, m = "invokeSuspend", n = {"<this>"}, s = {"L$0"})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<IdentityContext, Continuation<? super Unit>, Object> {
                final /* synthetic */ String $userId;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$userId = str;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$userId, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(IdentityContext identityContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(identityContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IdentityContext identityContext;
                    Config config;
                    Integer numSha256MappedToRange;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        IdentityContext identityContext2 = (IdentityContext) this.L$0;
                        try {
                            this.L$0 = identityContext2;
                            this.label = 1;
                            Object objAwaitConfig = identityContext2.getSdkContext().awaitConfig(this);
                            if (objAwaitConfig == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            identityContext = identityContext2;
                            obj = objAwaitConfig;
                            config = (Config) obj;
                            if (config == null) {
                                identityContext.update(Updates.SeedSkipped.INSTANCE);
                            } else {
                                identityContext.update(Updates.SeedSkipped.INSTANCE);
                            }
                        } catch (Exception unused) {
                            identityContext = identityContext2;
                            identityContext.update(Updates.SeedSkipped.INSTANCE);
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        identityContext = (IdentityContext) this.L$0;
                        try {
                            ResultKt.throwOnFailure(obj);
                            config = (Config) obj;
                            if (config == null && config.getFeatureFlags().getEnableUserIdSeed() && (numSha256MappedToRange = String_SHA256Kt.sha256MappedToRange(this.$userId)) != null) {
                                identityContext.update(new Updates.SeedResolved(numSha256MappedToRange.intValue()));
                                IdentityState value = identityContext.getState().getValue();
                                identityContext.track(new InternalSuperwallEvent.Attributes(value.getAppInstalledAtString(), new HashMap(value.getUserAttributes())));
                            } else {
                                identityContext.update(Updates.SeedSkipped.INSTANCE);
                            }
                        } catch (Exception unused2) {
                            identityContext.update(Updates.SeedSkipped.INSTANCE);
                        }
                    }
                    return Unit.INSTANCE;
                }
            }

            public final String getUserId() {
                return this.userId;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ResolveSeed(String userId) {
                super(new AnonymousClass1(userId, null), null);
                Intrinsics.checkNotNullParameter(userId, "userId");
                this.userId = userId;
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments;", "Lcom/superwall/sdk/identity/IdentityState$Actions;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class FetchAssignments extends Actions {
            public static final FetchAssignments INSTANCE = new FetchAssignments();

            /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityState$Actions$FetchAssignments$1, reason: invalid class name */
            /* JADX INFO: compiled from: IdentityManagerActor.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/identity/IdentityContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.identity.IdentityState$Actions$FetchAssignments$1", f = "IdentityManagerActor.kt", i = {0}, l = {355}, m = "invokeSuspend", n = {"<this>"}, s = {"L$0"})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<IdentityContext, Continuation<? super Unit>, Object> {
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
                public final Object invoke(IdentityContext identityContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(identityContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    IdentityContext identityContext;
                    Throwable th;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i != 0) {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        identityContext = (IdentityContext) this.L$0;
                        try {
                            ResultKt.throwOnFailure(obj);
                            identityContext.update(Updates.AssignmentsCompleted.INSTANCE);
                            return Unit.INSTANCE;
                        } catch (Throwable th2) {
                            th = th2;
                            identityContext.update(Updates.AssignmentsCompleted.INSTANCE);
                            throw th;
                        }
                    }
                    ResultKt.throwOnFailure(obj);
                    IdentityContext identityContext2 = (IdentityContext) this.L$0;
                    try {
                        this.L$0 = identityContext2;
                        this.label = 1;
                        if (identityContext2.getSdkContext().fetchAssignments(this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        identityContext = identityContext2;
                        identityContext.update(Updates.AssignmentsCompleted.INSTANCE);
                        return Unit.INSTANCE;
                    } catch (Throwable th3) {
                        identityContext = identityContext2;
                        th = th3;
                        identityContext.update(Updates.AssignmentsCompleted.INSTANCE);
                        throw th;
                    }
                }
            }

            private FetchAssignments() {
                super(new AnonymousClass1(null), null);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Actions$CheckWebEntitlements;", "Lcom/superwall/sdk/identity/IdentityState$Actions;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class CheckWebEntitlements extends Actions {
            public static final CheckWebEntitlements INSTANCE = new CheckWebEntitlements();

            /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityState$Actions$CheckWebEntitlements$1, reason: invalid class name */
            /* JADX INFO: compiled from: IdentityManagerActor.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/identity/IdentityContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.identity.IdentityState$Actions$CheckWebEntitlements$1", f = "IdentityManagerActor.kt", i = {}, l = {362}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<IdentityContext, Continuation<? super Unit>, Object> {
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
                public final Object invoke(IdentityContext identityContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(identityContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.label = 1;
                        if (((IdentityContext) this.L$0).getWebPaywallRedeemer().invoke().redeem(WebPaywallRedeemer.RedeemType.Existing.INSTANCE, this) == coroutine_suspended) {
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

            private CheckWebEntitlements() {
                super(new AnonymousClass1(null), null);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J5\u0010\u0013\u001a\u00020\u00002\u0016\b\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0004HÖ\u0001R\u001f\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes;", "Lcom/superwall/sdk/identity/IdentityState$Actions;", "attrs", "", "", "", "shouldTrackMerge", "", "shouldNotify", "<init>", "(Ljava/util/Map;ZZ)V", "getAttrs", "()Ljava/util/Map;", "getShouldTrackMerge", "()Z", "getShouldNotify", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class MergeAttributes extends Actions {
            private final Map<String, Object> attrs;
            private final boolean shouldNotify;
            private final boolean shouldTrackMerge;

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ MergeAttributes copy$default(MergeAttributes mergeAttributes, Map map, boolean z, boolean z2, int i, Object obj) {
                if ((i & 1) != 0) {
                    map = mergeAttributes.attrs;
                }
                if ((i & 2) != 0) {
                    z = mergeAttributes.shouldTrackMerge;
                }
                if ((i & 4) != 0) {
                    z2 = mergeAttributes.shouldNotify;
                }
                return mergeAttributes.copy(map, z, z2);
            }

            public final Map<String, Object> component1() {
                return this.attrs;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final boolean getShouldTrackMerge() {
                return this.shouldTrackMerge;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final boolean getShouldNotify() {
                return this.shouldNotify;
            }

            public final MergeAttributes copy(Map<String, ? extends Object> attrs, boolean shouldTrackMerge, boolean shouldNotify) {
                Intrinsics.checkNotNullParameter(attrs, "attrs");
                return new MergeAttributes(attrs, shouldTrackMerge, shouldNotify);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof MergeAttributes)) {
                    return false;
                }
                MergeAttributes mergeAttributes = (MergeAttributes) other;
                return Intrinsics.areEqual(this.attrs, mergeAttributes.attrs) && this.shouldTrackMerge == mergeAttributes.shouldTrackMerge && this.shouldNotify == mergeAttributes.shouldNotify;
            }

            public int hashCode() {
                return (((this.attrs.hashCode() * 31) + Boolean.hashCode(this.shouldTrackMerge)) * 31) + Boolean.hashCode(this.shouldNotify);
            }

            public String toString() {
                return "MergeAttributes(attrs=" + this.attrs + ", shouldTrackMerge=" + this.shouldTrackMerge + ", shouldNotify=" + this.shouldNotify + ")";
            }

            public /* synthetic */ MergeAttributes(Map map, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(map, (i & 2) != 0 ? true : z, (i & 4) != 0 ? false : z2);
            }

            public final Map<String, Object> getAttrs() {
                return this.attrs;
            }

            public final boolean getShouldTrackMerge() {
                return this.shouldTrackMerge;
            }

            /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityState$Actions$MergeAttributes$1, reason: invalid class name */
            /* JADX INFO: compiled from: IdentityManagerActor.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/identity/IdentityContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.identity.IdentityState$Actions$MergeAttributes$1", f = "IdentityManagerActor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<IdentityContext, Continuation<? super Unit>, Object> {
                final /* synthetic */ Map<String, Object> $attrs;
                final /* synthetic */ boolean $shouldNotify;
                final /* synthetic */ boolean $shouldTrackMerge;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(Map<String, ? extends Object> map, boolean z, boolean z2, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$attrs = map;
                    this.$shouldTrackMerge = z;
                    this.$shouldNotify = z2;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$attrs, this.$shouldTrackMerge, this.$shouldNotify, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(IdentityContext identityContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(identityContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    IdentityContext identityContext = (IdentityContext) this.L$0;
                    identityContext.update(new Updates.AttributesMerged(this.$attrs));
                    if (this.$shouldTrackMerge) {
                        IdentityState value = identityContext.getState().getValue();
                        identityContext.track(new InternalSuperwallEvent.Attributes(value.getAppInstalledAtString(), new HashMap(value.getUserAttributes())));
                    }
                    if (this.$shouldNotify) {
                        identityContext.effect(new NotifyUserChange(identityContext.getState().getValue().getUserAttributes()));
                    }
                    return Unit.INSTANCE;
                }
            }

            public final boolean getShouldNotify() {
                return this.shouldNotify;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public MergeAttributes(Map<String, ? extends Object> attrs, boolean z, boolean z2) {
                super(new AnonymousClass1(attrs, z, z2, null), null);
                Intrinsics.checkNotNullParameter(attrs, "attrs");
                this.attrs = attrs;
                this.shouldTrackMerge = z;
                this.shouldNotify = z2;
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u001f\u0010\u000b\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Actions$NotifyUserChange;", "Lcom/superwall/sdk/identity/IdentityState$Actions;", "attributes", "", "", "", "<init>", "(Ljava/util/Map;)V", "getAttributes", "()Ljava/util/Map;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class NotifyUserChange extends Actions {
            private final Map<String, Object> attributes;

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ NotifyUserChange copy$default(NotifyUserChange notifyUserChange, Map map, int i, Object obj) {
                if ((i & 1) != 0) {
                    map = notifyUserChange.attributes;
                }
                return notifyUserChange.copy(map);
            }

            public final Map<String, Object> component1() {
                return this.attributes;
            }

            public final NotifyUserChange copy(Map<String, ? extends Object> attributes) {
                Intrinsics.checkNotNullParameter(attributes, "attributes");
                return new NotifyUserChange(attributes);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof NotifyUserChange) && Intrinsics.areEqual(this.attributes, ((NotifyUserChange) other).attributes);
            }

            public int hashCode() {
                return this.attributes.hashCode();
            }

            public String toString() {
                return "NotifyUserChange(attributes=" + this.attributes + ")";
            }

            /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityState$Actions$NotifyUserChange$1, reason: invalid class name */
            /* JADX INFO: compiled from: IdentityManagerActor.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/identity/IdentityContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.identity.IdentityState$Actions$NotifyUserChange$1", f = "IdentityManagerActor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<IdentityContext, Continuation<? super Unit>, Object> {
                final /* synthetic */ Map<String, Object> $attributes;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(Map<String, ? extends Object> map, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$attributes = map;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$attributes, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(IdentityContext identityContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(identityContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    Function1<Map<String, ? extends Object>, Unit> notifyUserChange = ((IdentityContext) this.L$0).getNotifyUserChange();
                    if (notifyUserChange != null) {
                        notifyUserChange.invoke(this.$attributes);
                    }
                    return Unit.INSTANCE;
                }
            }

            public final Map<String, Object> getAttributes() {
                return this.attributes;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NotifyUserChange(Map<String, ? extends Object> attributes) {
                super(new AnonymousClass1(attributes, null), null);
                Intrinsics.checkNotNullParameter(attributes, "attributes");
                this.attributes = attributes;
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Actions$Reset;", "Lcom/superwall/sdk/identity/IdentityState$Actions;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Reset extends Actions {
            public static final Reset INSTANCE = new Reset();

            /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityState$Actions$Reset$1, reason: invalid class name */
            /* JADX INFO: compiled from: IdentityManagerActor.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/identity/IdentityContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.identity.IdentityState$Actions$Reset$1", f = "IdentityManagerActor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<IdentityContext, Continuation<? super Unit>, Object> {
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
                public final Object invoke(IdentityContext identityContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(identityContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    IdentityContext identityContext = (IdentityContext) this.L$0;
                    identityContext.update(Updates.Reset.INSTANCE);
                    IdentityState value = identityContext.getState().getValue();
                    identityContext.track(new InternalSuperwallEvent.Attributes(value.getAppInstalledAtString(), new HashMap(value.getUserAttributes())));
                    return Unit.INSTANCE;
                }
            }

            private Reset() {
                super(new AnonymousClass1(null), null);
            }
        }

        /* JADX INFO: compiled from: IdentityManagerActor.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/identity/IdentityState$Actions$FullReset;", "Lcom/superwall/sdk/identity/IdentityState$Actions;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class FullReset extends Actions {
            public static final FullReset INSTANCE = new FullReset();

            /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityState$Actions$FullReset$1, reason: invalid class name */
            /* JADX INFO: compiled from: IdentityManagerActor.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/identity/IdentityContext;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.identity.IdentityState$Actions$FullReset$1", f = "IdentityManagerActor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<IdentityContext, Continuation<? super Unit>, Object> {
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
                public final Object invoke(IdentityContext identityContext, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(identityContext, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    IdentityContext identityContext = (IdentityContext) this.L$0;
                    identityContext.update(Updates.Reset.INSTANCE);
                    IdentityState value = identityContext.getState().getValue();
                    identityContext.track(new InternalSuperwallEvent.Attributes(value.getAppInstalledAtString(), new HashMap(value.getUserAttributes())));
                    identityContext.getCompleteReset().invoke();
                    return Unit.INSTANCE;
                }
            }

            private FullReset() {
                super(new AnonymousClass1(null), null);
            }
        }
    }
}
