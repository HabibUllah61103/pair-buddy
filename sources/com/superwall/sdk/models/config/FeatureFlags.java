package com.superwall.sdk.models.config;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: FeatureFlags.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b)\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 D2\u00020\u0001:\u0002CDBG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\u000b\u0010\fB[\b\u0010\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u000b\u0010\u0011J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u0003HÆ\u0003J\t\u00101\u001a\u00020\u0003HÆ\u0003J\t\u00102\u001a\u00020\u0003HÆ\u0003J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003JY\u00105\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u0003HÆ\u0001J\u0013\u00106\u001a\u00020\u00032\b\u00107\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00108\u001a\u00020\u000eHÖ\u0001J\t\u00109\u001a\u00020:HÖ\u0001J%\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u00002\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0001¢\u0006\u0002\bBR$\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R$\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001b\u0010\u0013\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R$\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001e\u0010\u0013\u001a\u0004\b\u001f\u0010\u0015\"\u0004\b \u0010\u0017R$\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b!\u0010\u0013\u001a\u0004\b\"\u0010\u0015\"\u0004\b#\u0010\u0017R$\u0010\b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b$\u0010\u0013\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R$\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b'\u0010\u0013\u001a\u0004\b(\u0010\u0015\"\u0004\b)\u0010\u0017R$\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b*\u0010\u0013\u001a\u0004\b+\u0010\u0015\"\u0004\b,\u0010\u0017¨\u0006E"}, d2 = {"Lcom/superwall/sdk/models/config/FeatureFlags;", "", "enableConfigRefresh", "", "enableSessionEvents", "enablePostback", "enableUserIdSeed", "disableVerboseEvents", "enableMultiplePaywallUrls", "enableCELLogging", "web2App", "<init>", "(ZZZZZZZZ)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZZZZZZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getEnableConfigRefresh$annotations", "()V", "getEnableConfigRefresh", "()Z", "setEnableConfigRefresh", "(Z)V", "getEnableSessionEvents$annotations", "getEnableSessionEvents", "setEnableSessionEvents", "getEnablePostback$annotations", "getEnablePostback", "setEnablePostback", "getEnableUserIdSeed$annotations", "getEnableUserIdSeed", "setEnableUserIdSeed", "getDisableVerboseEvents$annotations", "getDisableVerboseEvents", "setDisableVerboseEvents", "getEnableMultiplePaywallUrls$annotations", "getEnableMultiplePaywallUrls", "setEnableMultiplePaywallUrls", "getEnableCELLogging$annotations", "getEnableCELLogging", "setEnableCELLogging", "getWeb2App$annotations", "getWeb2App", "setWeb2App", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class FeatureFlags {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private boolean disableVerboseEvents;
    private boolean enableCELLogging;
    private boolean enableConfigRefresh;
    private boolean enableMultiplePaywallUrls;
    private boolean enablePostback;
    private boolean enableSessionEvents;
    private boolean enableUserIdSeed;
    private boolean web2App;

    public static /* synthetic */ FeatureFlags copy$default(FeatureFlags featureFlags, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i, Object obj) {
        if ((i & 1) != 0) {
            z = featureFlags.enableConfigRefresh;
        }
        if ((i & 2) != 0) {
            z2 = featureFlags.enableSessionEvents;
        }
        if ((i & 4) != 0) {
            z3 = featureFlags.enablePostback;
        }
        if ((i & 8) != 0) {
            z4 = featureFlags.enableUserIdSeed;
        }
        if ((i & 16) != 0) {
            z5 = featureFlags.disableVerboseEvents;
        }
        if ((i & 32) != 0) {
            z6 = featureFlags.enableMultiplePaywallUrls;
        }
        if ((i & 64) != 0) {
            z7 = featureFlags.enableCELLogging;
        }
        if ((i & 128) != 0) {
            z8 = featureFlags.web2App;
        }
        boolean z9 = z7;
        boolean z10 = z8;
        boolean z11 = z5;
        boolean z12 = z6;
        return featureFlags.copy(z, z2, z3, z4, z11, z12, z9, z10);
    }

    @SerialName("disable_verbose_events")
    public static /* synthetic */ void getDisableVerboseEvents$annotations() {
    }

    @SerialName("enable_cel_logging")
    public static /* synthetic */ void getEnableCELLogging$annotations() {
    }

    @SerialName("enable_config_refresh_v2")
    public static /* synthetic */ void getEnableConfigRefresh$annotations() {
    }

    @SerialName("enable_multiple_paywall_urls")
    public static /* synthetic */ void getEnableMultiplePaywallUrls$annotations() {
    }

    @SerialName("enable_postback")
    public static /* synthetic */ void getEnablePostback$annotations() {
    }

    @SerialName("enable_session_events")
    public static /* synthetic */ void getEnableSessionEvents$annotations() {
    }

    @SerialName("enable_userid_seed")
    public static /* synthetic */ void getEnableUserIdSeed$annotations() {
    }

    @SerialName("web_2_app")
    public static /* synthetic */ void getWeb2App$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getEnableConfigRefresh() {
        return this.enableConfigRefresh;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getEnableSessionEvents() {
        return this.enableSessionEvents;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getEnablePostback() {
        return this.enablePostback;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getEnableUserIdSeed() {
        return this.enableUserIdSeed;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getDisableVerboseEvents() {
        return this.disableVerboseEvents;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getEnableMultiplePaywallUrls() {
        return this.enableMultiplePaywallUrls;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getEnableCELLogging() {
        return this.enableCELLogging;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getWeb2App() {
        return this.web2App;
    }

    public final FeatureFlags copy(boolean enableConfigRefresh, boolean enableSessionEvents, boolean enablePostback, boolean enableUserIdSeed, boolean disableVerboseEvents, boolean enableMultiplePaywallUrls, boolean enableCELLogging, boolean web2App) {
        return new FeatureFlags(enableConfigRefresh, enableSessionEvents, enablePostback, enableUserIdSeed, disableVerboseEvents, enableMultiplePaywallUrls, enableCELLogging, web2App);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FeatureFlags)) {
            return false;
        }
        FeatureFlags featureFlags = (FeatureFlags) other;
        return this.enableConfigRefresh == featureFlags.enableConfigRefresh && this.enableSessionEvents == featureFlags.enableSessionEvents && this.enablePostback == featureFlags.enablePostback && this.enableUserIdSeed == featureFlags.enableUserIdSeed && this.disableVerboseEvents == featureFlags.disableVerboseEvents && this.enableMultiplePaywallUrls == featureFlags.enableMultiplePaywallUrls && this.enableCELLogging == featureFlags.enableCELLogging && this.web2App == featureFlags.web2App;
    }

    public int hashCode() {
        return (((((((((((((Boolean.hashCode(this.enableConfigRefresh) * 31) + Boolean.hashCode(this.enableSessionEvents)) * 31) + Boolean.hashCode(this.enablePostback)) * 31) + Boolean.hashCode(this.enableUserIdSeed)) * 31) + Boolean.hashCode(this.disableVerboseEvents)) * 31) + Boolean.hashCode(this.enableMultiplePaywallUrls)) * 31) + Boolean.hashCode(this.enableCELLogging)) * 31) + Boolean.hashCode(this.web2App);
    }

    public String toString() {
        return "FeatureFlags(enableConfigRefresh=" + this.enableConfigRefresh + ", enableSessionEvents=" + this.enableSessionEvents + ", enablePostback=" + this.enablePostback + ", enableUserIdSeed=" + this.enableUserIdSeed + ", disableVerboseEvents=" + this.disableVerboseEvents + ", enableMultiplePaywallUrls=" + this.enableMultiplePaywallUrls + ", enableCELLogging=" + this.enableCELLogging + ", web2App=" + this.web2App + ")";
    }

    /* JADX INFO: compiled from: FeatureFlags.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/config/FeatureFlags$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/config/FeatureFlags;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<FeatureFlags> serializer() {
            return FeatureFlags$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ FeatureFlags(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, SerializationConstructorMarker serializationConstructorMarker) {
        if (255 != (i & 255)) {
            PluginExceptionsKt.throwMissingFieldException(i, 255, FeatureFlags$$serializer.INSTANCE.getDescriptor());
        }
        this.enableConfigRefresh = z;
        this.enableSessionEvents = z2;
        this.enablePostback = z3;
        this.enableUserIdSeed = z4;
        this.disableVerboseEvents = z5;
        this.enableMultiplePaywallUrls = z6;
        this.enableCELLogging = z7;
        this.web2App = z8;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(FeatureFlags self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeBooleanElement(serialDesc, 0, self.enableConfigRefresh);
        output.encodeBooleanElement(serialDesc, 1, self.enableSessionEvents);
        output.encodeBooleanElement(serialDesc, 2, self.enablePostback);
        output.encodeBooleanElement(serialDesc, 3, self.enableUserIdSeed);
        output.encodeBooleanElement(serialDesc, 4, self.disableVerboseEvents);
        output.encodeBooleanElement(serialDesc, 5, self.enableMultiplePaywallUrls);
        output.encodeBooleanElement(serialDesc, 6, self.enableCELLogging);
        output.encodeBooleanElement(serialDesc, 7, self.web2App);
    }

    public FeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        this.enableConfigRefresh = z;
        this.enableSessionEvents = z2;
        this.enablePostback = z3;
        this.enableUserIdSeed = z4;
        this.disableVerboseEvents = z5;
        this.enableMultiplePaywallUrls = z6;
        this.enableCELLogging = z7;
        this.web2App = z8;
    }

    public final boolean getEnableConfigRefresh() {
        return this.enableConfigRefresh;
    }

    public final void setEnableConfigRefresh(boolean z) {
        this.enableConfigRefresh = z;
    }

    public final boolean getEnableSessionEvents() {
        return this.enableSessionEvents;
    }

    public final void setEnableSessionEvents(boolean z) {
        this.enableSessionEvents = z;
    }

    public final boolean getEnablePostback() {
        return this.enablePostback;
    }

    public final void setEnablePostback(boolean z) {
        this.enablePostback = z;
    }

    public final boolean getEnableUserIdSeed() {
        return this.enableUserIdSeed;
    }

    public final void setEnableUserIdSeed(boolean z) {
        this.enableUserIdSeed = z;
    }

    public final boolean getDisableVerboseEvents() {
        return this.disableVerboseEvents;
    }

    public final void setDisableVerboseEvents(boolean z) {
        this.disableVerboseEvents = z;
    }

    public final boolean getEnableMultiplePaywallUrls() {
        return this.enableMultiplePaywallUrls;
    }

    public final void setEnableMultiplePaywallUrls(boolean z) {
        this.enableMultiplePaywallUrls = z;
    }

    public final boolean getEnableCELLogging() {
        return this.enableCELLogging;
    }

    public final void setEnableCELLogging(boolean z) {
        this.enableCELLogging = z;
    }

    public final boolean getWeb2App() {
        return this.web2App;
    }

    public final void setWeb2App(boolean z) {
        this.web2App = z;
    }
}
