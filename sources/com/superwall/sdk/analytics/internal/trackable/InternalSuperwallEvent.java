package com.superwall.sdk.analytics.internal.trackable;

import androidx.core.os.EnvironmentCompat;
import com.facebook.hermes.intl.Constants;
import com.facebook.react.devsupport.StackTraceHelper;
import com.facebook.react.modules.appstate.AppStateModule;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.common.internal.ImagesContract;
import com.superwall.sdk.analytics.superwall.SuperwallEvent;
import com.superwall.sdk.analytics.superwall.TransactionProduct;
import com.superwall.sdk.config.models.Survey;
import com.superwall.sdk.config.models.SurveyOption;
import com.superwall.sdk.config.options.SuperwallOptions;
import com.superwall.sdk.config.options.SuperwallOptionsKt;
import com.superwall.sdk.dependencies.ComputedPropertyRequestsFactory;
import com.superwall.sdk.dependencies.FeatureFlagsFactory;
import com.superwall.sdk.dependencies.RuleAttributesFactory;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.enrichment.Enrichment;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.Entitlement$$serializer;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.triggers.InternalTriggerResult;
import com.superwall.sdk.network.JsonFactory;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatus;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequestType;
import com.superwall.sdk.paywall.view.survey.SurveyPresentationResult;
import com.superwall.sdk.paywall.view.webview.WebviewError;
import com.superwall.sdk.paywall.view.webview.messaging.PageViewData;
import com.superwall.sdk.store.abstractions.product.RawStoreProduct;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.abstractions.product.StoreProductType;
import com.superwall.sdk.store.abstractions.product.SubscriptionPeriod;
import com.superwall.sdk.store.abstractions.transactions.GoogleBillingPurchaseTransaction;
import com.superwall.sdk.store.abstractions.transactions.StoreTransaction;
import com.superwall.sdk.store.abstractions.transactions.StoreTransactionType;
import com.superwall.sdk.store.transactions.RestoreType;
import com.superwall.sdk.store.transactions.TransactionError;
import com.superwall.sdk.web.WebPaywallRedeemer;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.Json;
import me.leolin.shortcutbadger.impl.NewHtcHomeBadger;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b/\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:-\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<B\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f\u0082\u0001+=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefg¨\u0006h"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "superwallPlacement", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;)V", "getSuperwallPlacement", "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "rawName", "", "getRawName", "()Ljava/lang/String;", "canImplicitlyTriggerPaywall", "", "getCanImplicitlyTriggerPaywall", "()Z", "AppOpen", "AppInstall", "SurveyClose", "SurveyResponse", "AppLaunch", "Attributes", "IdentityAlias", "DeepLink", "FirstSeen", "AppClose", "PaywallLoad", "SubscriptionStatusDidChange", "SessionStart", "ConfigAttributes", "DeviceAttributes", "IntegrationAttributes", "TriggerFire", "PresentationRequest", "PaywallOpen", "PaywallClose", "PaywallDecline", "PaywallPageView", "Transaction", "SubscriptionStart", "FreeTrialStart", "NonRecurringProductPurchase", "PaywallWebviewLoad", "PaywallResourceLoadFail", "PaywallProductsLoad", "ConfigRefresh", "ConfigFail", "Reset", "Restore", "CustomPlacement", "ShimmerLoad", "ConfirmAllAssignments", "ErrorThrown", "ExpressionResult", "Redemptions", "EnrichmentLoad", "ReviewRequested", "CustomerInfoDidChange", "Permission", "PaywallPreload", "TestModeModal", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$AppClose;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$AppInstall;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$AppLaunch;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$AppOpen;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigAttributes;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigFail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigRefresh;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfirmAllAssignments;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$CustomPlacement;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$DeepLink;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$DeviceAttributes;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ErrorThrown;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ExpressionResult;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$FirstSeen;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$FreeTrialStart;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$IdentityAlias;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$IntegrationAttributes;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$NonRecurringProductPurchase;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallClose;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallDecline;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallOpen;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPageView;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallResourceLoadFail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Reset;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ReviewRequested;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SessionStart;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SubscriptionStart;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SubscriptionStatusDidChange;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SurveyClose;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SurveyResponse;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TriggerFire;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class InternalSuperwallEvent implements TrackableSuperwallEvent {
    private final SuperwallEvent superwallPlacement;

    public /* synthetic */ InternalSuperwallEvent(SuperwallEvent superwallEvent, DefaultConstructorMarker defaultConstructorMarker) {
        this(superwallEvent);
    }

    private InternalSuperwallEvent(SuperwallEvent superwallEvent) {
        this.superwallPlacement = superwallEvent;
    }

    @Override // com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent
    public SuperwallEvent getSuperwallPlacement() {
        return this.superwallPlacement;
    }

    @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
    public String getRawName() {
        return getSuperwallPlacement().getRawName();
    }

    @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
    public boolean getCanImplicitlyTriggerPaywall() {
        return getSuperwallPlacement().getCanImplicitlyTriggerPaywall();
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B-\u0012$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006H\u0096@¢\u0006\u0002\u0010\rR6\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$AppOpen;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "audienceFilterParams", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "<init>", "(Ljava/util/HashMap;)V", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AppOpen extends InternalSuperwallEvent {
        private HashMap<String, Object> audienceFilterParams;

        /* JADX WARN: Multi-variable type inference failed */
        public AppOpen() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ AppOpen(HashMap map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new HashMap() : map);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AppOpen(HashMap<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.AppOpen(), null);
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return new HashMap();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012$\b\u0002\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b`\t¢\u0006\u0004\b\n\u0010\u000bJ*\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b`\tH\u0096@¢\u0006\u0002\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR6\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b`\tX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$AppInstall;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "appInstalledAtString", "", "hasExternalPurchaseController", "", "audienceFilterParams", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "<init>", "(Ljava/lang/String;ZLjava/util/HashMap;)V", "getAppInstalledAtString", "()Ljava/lang/String;", "getHasExternalPurchaseController", "()Z", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "(Ljava/util/HashMap;)V", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AppInstall extends InternalSuperwallEvent {
        private final String appInstalledAtString;
        private HashMap<String, Object> audienceFilterParams;
        private final boolean hasExternalPurchaseController;

        public final String getAppInstalledAtString() {
            return this.appInstalledAtString;
        }

        public final boolean getHasExternalPurchaseController() {
            return this.hasExternalPurchaseController;
        }

        public /* synthetic */ AppInstall(String str, boolean z, HashMap map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, z, (i & 4) != 0 ? new HashMap() : map);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AppInstall(String appInstalledAtString, boolean z, HashMap<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.AppInstall(), null);
            Intrinsics.checkNotNullParameter(appInstalledAtString, "appInstalledAtString");
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.appInstalledAtString = appInstalledAtString;
            this.hasExternalPurchaseController = z;
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return MapsKt.hashMapOf(TuplesKt.to("application_installed_at", this.appInstalledAtString), TuplesKt.to("using_purchase_controller", Boxing.boxBoolean(this.hasExternalPurchaseController)));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u000bH\u0096@¢\u0006\u0002\u0010\fR \u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SurveyClose;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "audienceFilterParams", "", "", "", "<init>", "(Ljava/util/Map;)V", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SurveyClose extends InternalSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;

        /* JADX WARN: Multi-variable type inference failed */
        public SurveyClose() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ SurveyClose(LinkedHashMap linkedHashMap, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new LinkedHashMap() : linkedHashMap);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SurveyClose(Map<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.SurveyClose(), null);
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            return MapsKt.emptyMap();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u001a0\u0019H\u0096@¢\u0006\u0002\u0010\u001eJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\"\u001a\u00020\tHÆ\u0003J3\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010'\u001a\u00020(HÖ\u0001J\t\u0010)\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u001a0\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006*"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SurveyResponse;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "survey", "Lcom/superwall/sdk/config/models/Survey;", "selectedOption", "Lcom/superwall/sdk/config/models/SurveyOption;", "customResponse", "", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getSurvey", "()Lcom/superwall/sdk/config/models/Survey;", "getSelectedOption", "()Lcom/superwall/sdk/config/models/SurveyOption;", "getCustomResponse", "()Ljava/lang/String;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "superwallPlacement", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "getSuperwallPlacement", "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "audienceFilterParams", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class SurveyResponse extends InternalSuperwallEvent {
        private final String customResponse;
        private final PaywallInfo paywallInfo;
        private final SurveyOption selectedOption;
        private final Survey survey;

        public static /* synthetic */ SurveyResponse copy$default(SurveyResponse surveyResponse, Survey survey, SurveyOption surveyOption, String str, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                survey = surveyResponse.survey;
            }
            if ((i & 2) != 0) {
                surveyOption = surveyResponse.selectedOption;
            }
            if ((i & 4) != 0) {
                str = surveyResponse.customResponse;
            }
            if ((i & 8) != 0) {
                paywallInfo = surveyResponse.paywallInfo;
            }
            return surveyResponse.copy(survey, surveyOption, str, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Survey getSurvey() {
            return this.survey;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final SurveyOption getSelectedOption() {
            return this.selectedOption;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getCustomResponse() {
            return this.customResponse;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final SurveyResponse copy(Survey survey, SurveyOption selectedOption, String customResponse, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(survey, "survey");
            Intrinsics.checkNotNullParameter(selectedOption, "selectedOption");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new SurveyResponse(survey, selectedOption, customResponse, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SurveyResponse)) {
                return false;
            }
            SurveyResponse surveyResponse = (SurveyResponse) other;
            return Intrinsics.areEqual(this.survey, surveyResponse.survey) && Intrinsics.areEqual(this.selectedOption, surveyResponse.selectedOption) && Intrinsics.areEqual(this.customResponse, surveyResponse.customResponse) && Intrinsics.areEqual(this.paywallInfo, surveyResponse.paywallInfo);
        }

        public int hashCode() {
            int iHashCode = ((this.survey.hashCode() * 31) + this.selectedOption.hashCode()) * 31;
            String str = this.customResponse;
            return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "SurveyResponse(survey=" + this.survey + ", selectedOption=" + this.selectedOption + ", customResponse=" + this.customResponse + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final Survey getSurvey() {
            return this.survey;
        }

        public final SurveyOption getSelectedOption() {
            return this.selectedOption;
        }

        public final String getCustomResponse() {
            return this.customResponse;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SurveyResponse(Survey survey, SurveyOption selectedOption, String str, PaywallInfo paywallInfo) {
            super(new SuperwallEvent.SurveyResponse(survey, selectedOption, str, paywallInfo), null);
            Intrinsics.checkNotNullParameter(survey, "survey");
            Intrinsics.checkNotNullParameter(selectedOption, "selectedOption");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.survey = survey;
            this.selectedOption = selectedOption;
            this.customResponse = str;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent, com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent
        public SuperwallEvent getSuperwallPlacement() {
            return new SuperwallEvent.SurveyResponse(this.survey, this.selectedOption, this.customResponse, this.paywallInfo);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            Map<String, Object> mapAudienceFilterParams = this.paywallInfo.audienceFilterParams();
            Map mapMapOf = MapsKt.mapOf(TuplesKt.to("survey_selected_option_title", this.selectedOption.getTitle()), TuplesKt.to("survey_custom_response", this.customResponse));
            ArrayList arrayList = new ArrayList(mapMapOf.size());
            for (Map.Entry entry : mapMapOf.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                arrayList.add(str2 != null ? TuplesKt.to(str, str2) : null);
            }
            return MapsKt.plus(mapAudienceFilterParams, MapsKt.toMap(CollectionsKt.filterNotNull(arrayList)));
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            return PaywallInfo.eventParams$default(this.paywallInfo, null, MapsKt.mapOf(TuplesKt.to("survey_id", this.survey.getId()), TuplesKt.to("survey_assignment_key", this.survey.getAssignmentKey()), TuplesKt.to("survey_selected_option_id", this.selectedOption.getId())), 1, null);
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B-\u0012$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006H\u0096@¢\u0006\u0002\u0010\rR6\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$AppLaunch;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "audienceFilterParams", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "<init>", "(Ljava/util/HashMap;)V", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AppLaunch extends InternalSuperwallEvent {
        private HashMap<String, Object> audienceFilterParams;

        /* JADX WARN: Multi-variable type inference failed */
        public AppLaunch() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ AppLaunch(HashMap map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new HashMap() : map);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AppLaunch(HashMap<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.AppLaunch(), null);
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return new HashMap();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012$\b\u0002\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0006`\u0007¢\u0006\u0004\b\b\u0010\tJ*\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0006`\u0007H\u0096@¢\u0006\u0002\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR6\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0006`\u0007X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "appInstalledAtString", "", "audienceFilterParams", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "<init>", "(Ljava/lang/String;Ljava/util/HashMap;)V", "getAppInstalledAtString", "()Ljava/lang/String;", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "(Ljava/util/HashMap;)V", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Attributes extends InternalSuperwallEvent {
        private final String appInstalledAtString;
        private HashMap<String, Object> audienceFilterParams;

        public final String getAppInstalledAtString() {
            return this.appInstalledAtString;
        }

        public /* synthetic */ Attributes(String str, HashMap map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? new HashMap() : map);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Attributes(String appInstalledAtString, HashMap<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.UserAttributes(audienceFilterParams), null);
            Intrinsics.checkNotNullParameter(appInstalledAtString, "appInstalledAtString");
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.appInstalledAtString = appInstalledAtString;
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return MapsKt.hashMapOf(TuplesKt.to("application_installed_at", this.appInstalledAtString));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B-\u0012$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006H\u0096@¢\u0006\u0002\u0010\rR6\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$IdentityAlias;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "audienceFilterParams", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "<init>", "(Ljava/util/HashMap;)V", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class IdentityAlias extends InternalSuperwallEvent {
        private HashMap<String, Object> audienceFilterParams;

        /* JADX WARN: Multi-variable type inference failed */
        public IdentityAlias() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ IdentityAlias(HashMap map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new HashMap() : map);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IdentityAlias(HashMap<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.IdentityAlias(), null);
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return new HashMap();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J$\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b`\fH\u0002J*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b`\fH\u0096@¢\u0006\u0002\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R6\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b`\fX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$DeepLink;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "uri", "Ljava/net/URI;", "<init>", "(Ljava/net/URI;)V", "getUri", "()Ljava/net/URI;", "extractedParams", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "audienceFilterParams", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "(Ljava/util/HashMap;)V", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class DeepLink extends InternalSuperwallEvent {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private HashMap<String, Object> audienceFilterParams;
        private final URI uri;

        public final URI getUri() {
            return this.uri;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DeepLink(URI uri) {
            super(new SuperwallEvent.DeepLink(uri), null);
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.uri = uri;
            this.audienceFilterParams = new HashMap<>(MapsKt.plus(INSTANCE.extractQueryParameters(uri), extractedParams()));
        }

        private final HashMap<String, Object> extractedParams() {
            String strSubstringAfterLast$default;
            String strSubstringAfterLast$default2;
            String strSubstringAfterLast$default3;
            Pair[] pairArr = new Pair[7];
            pairArr[0] = TuplesKt.to(ImagesContract.URL, this.uri.toString());
            String path = this.uri.getPath();
            if (path == null) {
                path = "";
            }
            pairArr[1] = TuplesKt.to("path", path);
            String path2 = this.uri.getPath();
            if (path2 == null || (strSubstringAfterLast$default3 = StringsKt.substringAfterLast$default(path2, "/", (String) null, 2, (Object) null)) == null || (strSubstringAfterLast$default = StringsKt.substringAfterLast$default(strSubstringAfterLast$default3, FilenameUtils.EXTENSION_SEPARATOR, (String) null, 2, (Object) null)) == null) {
                strSubstringAfterLast$default = "";
            }
            pairArr[2] = TuplesKt.to("pathExtension", strSubstringAfterLast$default);
            String path3 = this.uri.getPath();
            if (path3 == null || (strSubstringAfterLast$default2 = StringsKt.substringAfterLast$default(path3, "/", (String) null, 2, (Object) null)) == null) {
                strSubstringAfterLast$default2 = "";
            }
            pairArr[3] = TuplesKt.to("lastPathComponent", strSubstringAfterLast$default2);
            String host = this.uri.getHost();
            if (host == null) {
                host = "";
            }
            pairArr[4] = TuplesKt.to("host", host);
            String query = this.uri.getQuery();
            if (query == null) {
                query = "";
            }
            pairArr[5] = TuplesKt.to(SearchIntents.EXTRA_QUERY, query);
            String fragment = this.uri.getFragment();
            pairArr[6] = TuplesKt.to("fragment", fragment != null ? fragment : "");
            return MapsKt.hashMapOf(pairArr);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return extractedParams();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J,\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001`\u00072\u0006\u0010\b\u001a\u00020\tH\u0002¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$DeepLink$Companion;", "", "<init>", "()V", "extractQueryParameters", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "uri", "Ljava/net/URI;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final HashMap<String, Object> extractQueryParameters(URI uri) {
                Pair pair;
                String query = uri.getQuery();
                if (query == null) {
                    query = "";
                }
                List listSplit$default = StringsKt.split$default((CharSequence) query, new String[]{"&"}, false, 0, 6, (Object) null);
                LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10)), 16));
                Iterator it = listSplit$default.iterator();
                while (it.hasNext()) {
                    List listSplit$default2 = StringsKt.split$default((CharSequence) it.next(), new String[]{"="}, false, 0, 6, (Object) null);
                    Pair pair2 = TuplesKt.to(listSplit$default2.get(0), CollectionsKt.getOrNull(listSplit$default2, 1));
                    linkedHashMap.put(pair2.getFirst(), pair2.getSecond());
                }
                ArrayList arrayList = new ArrayList(linkedHashMap.size());
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    String str = (String) entry.getKey();
                    String str2 = (String) entry.getValue();
                    if (str2 == null) {
                        pair = null;
                    } else if (StringsKt.equals(str2, "true", true)) {
                        pair = TuplesKt.to(str, true);
                    } else if (StringsKt.equals(str2, Constants.CASEFIRST_FALSE, true)) {
                        pair = TuplesKt.to(str, false);
                    } else if (StringsKt.toIntOrNull(str2) != null) {
                        pair = TuplesKt.to(str, Integer.valueOf(Integer.parseInt(str2)));
                    } else if (StringsKt.toDoubleOrNull(str2) != null) {
                        pair = TuplesKt.to(str, Double.valueOf(Double.parseDouble(str2)));
                    } else {
                        pair = TuplesKt.to(str, str2);
                    }
                    arrayList.add(pair);
                }
                return new HashMap<>(MapsKt.toMap(CollectionsKt.filterNotNull(arrayList)));
            }
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B-\u0012$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006H\u0096@¢\u0006\u0002\u0010\rR6\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$FirstSeen;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "audienceFilterParams", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "<init>", "(Ljava/util/HashMap;)V", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class FirstSeen extends InternalSuperwallEvent {
        private HashMap<String, Object> audienceFilterParams;

        /* JADX WARN: Multi-variable type inference failed */
        public FirstSeen() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ FirstSeen(HashMap map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new HashMap() : map);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FirstSeen(HashMap<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.FirstSeen(), null);
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return new HashMap();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B-\u0012$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006H\u0096@¢\u0006\u0002\u0010\rR6\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$AppClose;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "audienceFilterParams", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "<init>", "(Ljava/util/HashMap;)V", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AppClose extends InternalSuperwallEvent {
        private HashMap<String, Object> audienceFilterParams;

        /* JADX WARN: Multi-variable type inference failed */
        public AppClose() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ AppClose(HashMap map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new HashMap() : map);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AppClose(HashMap<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.AppClose(), null);
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return new HashMap();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001\u001aB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\u0016\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0017j\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013`\u0018H\u0096@¢\u0006\u0002\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "state", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State;", "eventData", "Lcom/superwall/sdk/models/events/EventData;", "<init>", "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State;Lcom/superwall/sdk/models/events/EventData;)V", "getState", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State;", "getEventData", "()Lcom/superwall/sdk/models/events/EventData;", "superwallPlacement", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "getSuperwallPlacement", "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "State", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PaywallLoad extends InternalSuperwallEvent {
        private final EventData eventData;
        private final State state;

        public final State getState() {
            return this.state;
        }

        public final EventData getEventData() {
            return this.eventData;
        }

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0004\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State;", "", "<init>", "()V", "Start", "NotFound", "Fail", "Complete", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State$Fail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State$NotFound;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State$Start;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static abstract class State {
            public /* synthetic */ State(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State$Start;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Start extends State {
                public Start() {
                    super(null);
                }
            }

            private State() {
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State$NotFound;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class NotFound extends State {
                public NotFound() {
                    super(null);
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State$Fail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Fail extends State {
                public Fail() {
                    super(null);
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Complete extends State {
                private final PaywallInfo paywallInfo;

                public final PaywallInfo getPaywallInfo() {
                    return this.paywallInfo;
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Complete(PaywallInfo paywallInfo) {
                    super(null);
                    Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
                    this.paywallInfo = paywallInfo;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallLoad(State state, EventData eventData) {
            super(new SuperwallEvent.PaywallResponseLoadStart(eventData != null ? eventData.getName() : null), null);
            Intrinsics.checkNotNullParameter(state, "state");
            this.state = state;
            this.eventData = eventData;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent, com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent
        public SuperwallEvent getSuperwallPlacement() {
            State state = this.state;
            if (state instanceof State.Start) {
                EventData eventData = this.eventData;
                return new SuperwallEvent.PaywallResponseLoadStart(eventData != null ? eventData.getName() : null);
            }
            if (state instanceof State.Complete) {
                EventData eventData2 = this.eventData;
                return new SuperwallEvent.PaywallResponseLoadComplete(eventData2 != null ? eventData2.getName() : null, ((State.Complete) this.state).getPaywallInfo());
            }
            if (state instanceof State.Fail) {
                EventData eventData3 = this.eventData;
                return new SuperwallEvent.PaywallResponseLoadFail(eventData3 != null ? eventData3.getName() : null);
            }
            if (!(state instanceof State.NotFound)) {
                throw new NoWhenBranchMatchedException();
            }
            EventData eventData4 = this.eventData;
            return new SuperwallEvent.PaywallResponseLoadNotFound(eventData4 != null ? eventData4.getName() : null);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            State state = this.state;
            return state instanceof State.Complete ? ((State.Complete) state).getPaywallInfo().audienceFilterParams() : MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.to("is_triggered_from_event", Boxing.boxBoolean(this.eventData != null)));
            State state = this.state;
            if ((state instanceof State.Start) || (state instanceof State.NotFound) || (state instanceof State.Fail)) {
                return mapHashMapOf;
            }
            if (!(state instanceof State.Complete)) {
                throw new NoWhenBranchMatchedException();
            }
            return new HashMap(PaywallInfo.eventParams$default(((State.Complete) this.state).getPaywallInfo(), null, mapHashMapOf, 1, null));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012$\b\u0002\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007`\b¢\u0006\u0004\b\t\u0010\nJ*\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007`\bH\u0096@¢\u0006\u0002\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR6\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007`\bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SubscriptionStatusDidChange;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "subscriptionStatus", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "audienceFilterParams", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "<init>", "(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;Ljava/util/HashMap;)V", "getSubscriptionStatus", "()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "(Ljava/util/HashMap;)V", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SubscriptionStatusDidChange extends InternalSuperwallEvent {
        private HashMap<String, Object> audienceFilterParams;
        private final SubscriptionStatus subscriptionStatus;

        public final SubscriptionStatus getSubscriptionStatus() {
            return this.subscriptionStatus;
        }

        public /* synthetic */ SubscriptionStatusDidChange(SubscriptionStatus subscriptionStatus, HashMap map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(subscriptionStatus, (i & 2) != 0 ? new HashMap() : map);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubscriptionStatusDidChange(SubscriptionStatus subscriptionStatus, HashMap<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.SubscriptionStatusDidChange(), null);
            Intrinsics.checkNotNullParameter(subscriptionStatus, "subscriptionStatus");
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.subscriptionStatus = subscriptionStatus;
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            String str;
            Pair[] pairArr = new Pair[1];
            SubscriptionStatus subscriptionStatus = this.subscriptionStatus;
            if (subscriptionStatus instanceof SubscriptionStatus.Active) {
                str = AppStateModule.APP_STATE_ACTIVE;
            } else if (subscriptionStatus instanceof SubscriptionStatus.Inactive) {
                str = "inactive";
            } else {
                if (!(subscriptionStatus instanceof SubscriptionStatus.Unknown)) {
                    throw new NoWhenBranchMatchedException();
                }
                str = EnvironmentCompat.MEDIA_UNKNOWN;
            }
            pairArr[0] = TuplesKt.to("subscription_status", str);
            HashMap mapHashMapOf = MapsKt.hashMapOf(pairArr);
            SubscriptionStatus subscriptionStatus2 = this.subscriptionStatus;
            if (subscriptionStatus2 instanceof SubscriptionStatus.Active) {
                mapHashMapOf.put("active_entitlement_ids", CollectionsKt.joinToString$default(((SubscriptionStatus.Active) subscriptionStatus2).getEntitlements(), ",", null, null, 0, null, new Function1() { // from class: com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$SubscriptionStatusDidChange$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return InternalSuperwallEvent.SubscriptionStatusDidChange.getSuperwallParameters$lambda$1$lambda$0((Entitlement) obj);
                    }
                }, 30, null));
            }
            return mapHashMapOf;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CharSequence getSuperwallParameters$lambda$1$lambda$0(Entitlement it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return it.getId();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B-\u0012$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006H\u0096@¢\u0006\u0002\u0010\rR6\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SessionStart;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "audienceFilterParams", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "<init>", "(Ljava/util/HashMap;)V", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SessionStart extends InternalSuperwallEvent {
        private HashMap<String, Object> audienceFilterParams;

        /* JADX WARN: Multi-variable type inference failed */
        public SessionStart() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ SessionStart(HashMap map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new HashMap() : map);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SessionStart(HashMap<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.SessionStart(), null);
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return new HashMap();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u0015j\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011`\u0016H\u0096@¢\u0006\u0002\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR \u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigAttributes;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "options", "Lcom/superwall/sdk/config/options/SuperwallOptions;", "hasExternalPurchaseController", "", "hasDelegate", "<init>", "(Lcom/superwall/sdk/config/options/SuperwallOptions;ZZ)V", "getOptions", "()Lcom/superwall/sdk/config/options/SuperwallOptions;", "getHasExternalPurchaseController", "()Z", "getHasDelegate", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConfigAttributes extends InternalSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;
        private final boolean hasDelegate;
        private final boolean hasExternalPurchaseController;
        private final SuperwallOptions options;

        public final SuperwallOptions getOptions() {
            return this.options;
        }

        public final boolean getHasExternalPurchaseController() {
            return this.hasExternalPurchaseController;
        }

        public final boolean getHasDelegate() {
            return this.hasDelegate;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConfigAttributes(SuperwallOptions options, boolean z, boolean z2) {
            super(SuperwallEvent.ConfigAttributes.INSTANCE, null);
            Intrinsics.checkNotNullParameter(options, "options");
            this.options = options;
            this.hasExternalPurchaseController = z;
            this.hasDelegate = z2;
            this.audienceFilterParams = MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            Pair[] pairArr = (Pair[]) MapsKt.toList(MapsKt.plus(SuperwallOptionsKt.toMap(this.options), MapsKt.mapOf(TuplesKt.to("using_purchase_controller", Boxing.boxBoolean(this.hasExternalPurchaseController)), TuplesKt.to("has_delegate", Boxing.boxBoolean(this.hasDelegate))))).toArray(new Pair[0]);
            return MapsKt.hashMapOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001BQ\u0012\"\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006\u0012$\b\u0002\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\u0004\b\b\u0010\tJ*\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006H\u0096@¢\u0006\u0002\u0010\u0010R-\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR6\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u000b\"\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$DeviceAttributes;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "deviceAttributes", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "audienceFilterParams", "<init>", "(Ljava/util/HashMap;Ljava/util/HashMap;)V", "getDeviceAttributes", "()Ljava/util/HashMap;", "getAudienceFilterParams", "setAudienceFilterParams", "(Ljava/util/HashMap;)V", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class DeviceAttributes extends InternalSuperwallEvent {
        private HashMap<String, Object> audienceFilterParams;
        private final HashMap<String, Object> deviceAttributes;

        public final HashMap<String, Object> getDeviceAttributes() {
            return this.deviceAttributes;
        }

        public /* synthetic */ DeviceAttributes(HashMap map, HashMap map2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(map, (i & 2) != 0 ? new HashMap() : map2);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DeviceAttributes(HashMap<String, Object> deviceAttributes, HashMap<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.DeviceAttributes(deviceAttributes), null);
            Intrinsics.checkNotNullParameter(deviceAttributes, "deviceAttributes");
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.deviceAttributes = deviceAttributes;
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return this.deviceAttributes;
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\fj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\rH\u0096@¢\u0006\u0002\u0010\u0013R&\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0007R6\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\fj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\rX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$IntegrationAttributes;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "params", "", "", "", "<init>", "(Ljava/util/Map;)V", "getParams", "()Ljava/util/Map;", "setParams", "audienceFilterParams", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "(Ljava/util/HashMap;)V", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class IntegrationAttributes extends InternalSuperwallEvent {
        private HashMap<String, Object> audienceFilterParams;
        private Map<String, ? extends Object> params;

        public final Map<String, Object> getParams() {
            return this.params;
        }

        public final void setParams(Map<String, ? extends Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.params = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IntegrationAttributes(Map<String, ? extends Object> params) {
            super(new SuperwallEvent.IntegrationAttributes(params), null);
            Intrinsics.checkNotNullParameter(params, "params");
            this.params = params;
            this.audienceFilterParams = new HashMap<>(this.params);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return new HashMap();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012$\b\u0002\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b`\t¢\u0006\u0004\b\n\u0010\u000bJ*\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b`\tH\u0096@¢\u0006\u0002\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR6\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b`\tX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TriggerFire;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "triggerResult", "Lcom/superwall/sdk/models/triggers/InternalTriggerResult;", "triggerName", "", "audienceFilterParams", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "<init>", "(Lcom/superwall/sdk/models/triggers/InternalTriggerResult;Ljava/lang/String;Ljava/util/HashMap;)V", "getTriggerResult", "()Lcom/superwall/sdk/models/triggers/InternalTriggerResult;", "getTriggerName", "()Ljava/lang/String;", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "(Ljava/util/HashMap;)V", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class TriggerFire extends InternalSuperwallEvent {
        private HashMap<String, Object> audienceFilterParams;
        private final String triggerName;
        private final InternalTriggerResult triggerResult;

        public final InternalTriggerResult getTriggerResult() {
            return this.triggerResult;
        }

        public final String getTriggerName() {
            return this.triggerName;
        }

        public /* synthetic */ TriggerFire(InternalTriggerResult internalTriggerResult, String str, HashMap map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(internalTriggerResult, str, (i & 4) != 0 ? new HashMap() : map);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TriggerFire(InternalTriggerResult triggerResult, String triggerName, HashMap<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.TriggerFire(triggerName, triggerResult.toPublicType()), null);
            Intrinsics.checkNotNullParameter(triggerResult, "triggerResult");
            Intrinsics.checkNotNullParameter(triggerName, "triggerName");
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.triggerResult = triggerResult;
            this.triggerName = triggerName;
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.to("trigger_name", this.triggerName));
            InternalTriggerResult internalTriggerResult = this.triggerResult;
            if (internalTriggerResult instanceof InternalTriggerResult.NoAudienceMatch) {
                mapHashMapOf.put("result", "no_rule_match");
                return mapHashMapOf;
            }
            if (internalTriggerResult instanceof InternalTriggerResult.Holdout) {
                HashMap map = mapHashMapOf;
                map.put("variant_id", ((InternalTriggerResult.Holdout) internalTriggerResult).getExperiment().getVariant().getId());
                map.put("experiment_id", ((InternalTriggerResult.Holdout) this.triggerResult).getExperiment().getId());
                map.put("result", "holdout");
                return mapHashMapOf;
            }
            if (internalTriggerResult instanceof InternalTriggerResult.Paywall) {
                HashMap map2 = mapHashMapOf;
                map2.put("variant_id", ((InternalTriggerResult.Paywall) internalTriggerResult).getExperiment().getVariant().getId());
                map2.put("experiment_id", ((InternalTriggerResult.Paywall) this.triggerResult).getExperiment().getId());
                String paywallId = ((InternalTriggerResult.Paywall) this.triggerResult).getExperiment().getVariant().getPaywallId();
                if (paywallId == null) {
                    paywallId = "";
                }
                map2.put("paywall_identifier", paywallId);
                map2.put("result", "present");
                return mapHashMapOf;
            }
            if (internalTriggerResult instanceof InternalTriggerResult.PlacementNotFound) {
                mapHashMapOf.put("result", "eventNotFound");
                return mapHashMapOf;
            }
            if (!(internalTriggerResult instanceof InternalTriggerResult.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            mapHashMapOf.put("result", com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR);
            return mapHashMapOf;
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u00002\u00020\u0001:\u0001#BY\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012$\b\u0002\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0010¢\u0006\u0004\b\u0011\u0010\u0012J*\u0010!\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0010H\u0096@¢\u0006\u0002\u0010\"R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR6\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0010X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "eventData", "Lcom/superwall/sdk/models/events/EventData;", "type", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;", "status", "Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus;", "statusReason", "Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;", "factory", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest$Factory;", "audienceFilterParams", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "<init>", "(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus;Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest$Factory;Ljava/util/HashMap;)V", "getEventData", "()Lcom/superwall/sdk/models/events/EventData;", "getType", "()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;", "getStatus", "()Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus;", "getStatusReason", "()Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;", "getFactory", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest$Factory;", "getAudienceFilterParams", "()Ljava/util/HashMap;", "setAudienceFilterParams", "(Ljava/util/HashMap;)V", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Factory", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PresentationRequest extends InternalSuperwallEvent {
        private HashMap<String, Object> audienceFilterParams;
        private final EventData eventData;
        private final Factory factory;
        private final PaywallPresentationRequestStatus status;
        private final PaywallPresentationRequestStatusReason statusReason;
        private final PresentationRequestType type;

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest$Factory;", "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;", "Lcom/superwall/sdk/dependencies/FeatureFlagsFactory;", "Lcom/superwall/sdk/dependencies/ComputedPropertyRequestsFactory;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public interface Factory extends RuleAttributesFactory, FeatureFlagsFactory, ComputedPropertyRequestsFactory {
        }

        public final EventData getEventData() {
            return this.eventData;
        }

        public final PresentationRequestType getType() {
            return this.type;
        }

        public final PaywallPresentationRequestStatus getStatus() {
            return this.status;
        }

        public final PaywallPresentationRequestStatusReason getStatusReason() {
            return this.statusReason;
        }

        public final Factory getFactory() {
            return this.factory;
        }

        public /* synthetic */ PresentationRequest(EventData eventData, PresentationRequestType presentationRequestType, PaywallPresentationRequestStatus paywallPresentationRequestStatus, PaywallPresentationRequestStatusReason paywallPresentationRequestStatusReason, Factory factory, HashMap map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(eventData, presentationRequestType, paywallPresentationRequestStatus, paywallPresentationRequestStatusReason, factory, (i & 32) != 0 ? new HashMap() : map);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public HashMap<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        public void setAudienceFilterParams(HashMap<String, Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.audienceFilterParams = map;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PresentationRequest(EventData eventData, PresentationRequestType type, PaywallPresentationRequestStatus status, PaywallPresentationRequestStatusReason paywallPresentationRequestStatusReason, Factory factory, HashMap<String, Object> audienceFilterParams) {
            super(new SuperwallEvent.PaywallPresentationRequest(status, paywallPresentationRequestStatusReason), null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(factory, "factory");
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.eventData = eventData;
            this.type = type;
            this.status = status;
            this.statusReason = paywallPresentationRequestStatusReason;
            this.factory = factory;
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            String name;
            String description;
            Pair[] pairArr = new Pair[4];
            EventData eventData = this.eventData;
            String str = "";
            if (eventData == null || (name = eventData.getName()) == null) {
                name = "";
            }
            pairArr[0] = TuplesKt.to("source_event_name", name);
            pairArr[1] = TuplesKt.to("pipeline_type", this.type.getDescription());
            pairArr[2] = TuplesKt.to("status", this.status.getStatus());
            PaywallPresentationRequestStatusReason paywallPresentationRequestStatusReason = this.statusReason;
            if (paywallPresentationRequestStatusReason != null && (description = paywallPresentationRequestStatusReason.getDescription()) != null) {
                str = description;
            }
            pairArr[3] = TuplesKt.to("status_reason", str);
            return MapsKt.hashMapOf(pairArr);
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ*\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0019j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007`\u001aH\u0096@¢\u0006\u0002\u0010\u001bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R \u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallOpen;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "userAttributes", "", "", "", "demandTier", "demandScore", "", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getUserAttributes", "()Ljava/util/Map;", "getDemandTier", "()Ljava/lang/String;", "getDemandScore", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "audienceFilterParams", "getAudienceFilterParams", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PaywallOpen extends InternalSuperwallEvent {
        private final Integer demandScore;
        private final String demandTier;
        private final PaywallInfo paywallInfo;
        private final Map<String, Object> userAttributes;

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final Map<String, Object> getUserAttributes() {
            return this.userAttributes;
        }

        public final String getDemandTier() {
            return this.demandTier;
        }

        public final Integer getDemandScore() {
            return this.demandScore;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallOpen(PaywallInfo paywallInfo, Map<String, ? extends Object> userAttributes, String str, Integer num) {
            super(new SuperwallEvent.PaywallOpen(paywallInfo), null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            Intrinsics.checkNotNullParameter(userAttributes, "userAttributes");
            this.paywallInfo = paywallInfo;
            this.userAttributes = userAttributes;
            this.demandTier = str;
            this.demandScore = num;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.paywallInfo.audienceFilterParams();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            Map mapEventParams$default = PaywallInfo.eventParams$default(this.paywallInfo, null, null, 3, null);
            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("user_attributes", this.userAttributes));
            String str = this.demandTier;
            if (str != null) {
                mapMutableMapOf.put("attr_demandTier", str);
            }
            Integer num = this.demandScore;
            if (num != null) {
                mapMutableMapOf.put("attr_demandScore", num);
            }
            return new HashMap(MapsKt.plus(mapEventParams$default, mapMutableMapOf));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0013j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0014H\u0096@¢\u0006\u0002\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR \u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallClose;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "surveyPresentationResult", "Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getSurveyPresentationResult", "()Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PaywallClose extends InternalSuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final SurveyPresentationResult surveyPresentationResult;

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final SurveyPresentationResult getSurveyPresentationResult() {
            return this.surveyPresentationResult;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallClose(PaywallInfo paywallInfo, SurveyPresentationResult surveyPresentationResult) {
            super(new SuperwallEvent.PaywallClose(paywallInfo), null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            Intrinsics.checkNotNullParameter(surveyPresentationResult, "surveyPresentationResult");
            this.paywallInfo = paywallInfo;
            this.surveyPresentationResult = surveyPresentationResult;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.paywallInfo.audienceFilterParams();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("survey_attached", Boxing.boxBoolean(true ^ this.paywallInfo.getSurveys().isEmpty())));
            if (this.surveyPresentationResult != SurveyPresentationResult.NOSHOW) {
                mapMutableMapOf.put("survey_presentation", this.surveyPresentationResult.getRawValue());
            }
            mapMutableMapOf.putAll(PaywallInfo.eventParams$default(this.paywallInfo, null, null, 3, null));
            return new HashMap(mapMutableMapOf);
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J*\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b`\fH\u0096@¢\u0006\u0002\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R \u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallDecline;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getSuperwallParameters", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "audienceFilterParams", "", "getAudienceFilterParams", "()Ljava/util/Map;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PaywallDecline extends InternalSuperwallEvent {
        private final PaywallInfo paywallInfo;

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallDecline(PaywallInfo paywallInfo) {
            super(new SuperwallEvent.PaywallDecline(paywallInfo), null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return new HashMap(PaywallInfo.eventParams$default(this.paywallInfo, null, null, 3, null));
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.paywallInfo.audienceFilterParams();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0013j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0014H\u0096@¢\u0006\u0002\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR \u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPageView;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "data", "Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getData", "()Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PaywallPageView extends InternalSuperwallEvent {
        private final PageViewData data;
        private final PaywallInfo paywallInfo;

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PageViewData getData() {
            return this.data;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallPageView(PaywallInfo paywallInfo, PageViewData data) {
            super(new SuperwallEvent.PaywallPageView(paywallInfo, data), null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            Intrinsics.checkNotNullParameter(data, "data");
            this.paywallInfo = paywallInfo;
            this.data = data;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.paywallInfo.audienceFilterParams();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            HashMap map = new HashMap(PaywallInfo.eventParams$default(this.paywallInfo, null, null, 3, null));
            HashMap map2 = map;
            map2.put("page_node_id", this.data.getPageNodeId());
            map2.put("flow_position", Boxing.boxInt(this.data.getFlowPosition()));
            map2.put("page_name", this.data.getPageName());
            map2.put("navigation_node_id", this.data.getNavigationNodeId());
            map2.put("navigation_type", this.data.getNavigationType());
            String previousPageNodeId = this.data.getPreviousPageNodeId();
            if (previousPageNodeId != null) {
                map2.put("previous_page_node_id", previousPageNodeId);
            }
            Integer previousFlowPosition = this.data.getPreviousFlowPosition();
            if (previousFlowPosition != null) {
                map2.put("previous_flow_position", Boxing.boxInt(previousFlowPosition.intValue()));
            }
            Integer timeOnPreviousPageMs = this.data.getTimeOnPreviousPageMs();
            if (timeOnPreviousPageMs != null) {
                map2.put("time_on_previous_page_ms", Boxing.boxInt(timeOnPreviousPageMs.intValue()));
            }
            return map;
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0002@ABq\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0011¢\u0006\u0004\b\u0016\u0010\u0017J*\u0010<\u001a\u001e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00140=j\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0014`>H\u0096@¢\u0006\u0002\u0010?R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\"R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R(\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001a\u0010\u0015\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010)\"\u0004\b1\u0010+R \u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00140\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b3\u0010-R\u0014\u00104\u001a\u0002058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u0014\u00108\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010)R\u0014\u0010:\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u0010\"¨\u0006B"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "state", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "model", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;", com.google.firebase.messaging.Constants.ScionAnalytics.PARAM_SOURCE, "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;", "isObserved", "", "demandScore", "", "demandTier", "", "userAttributes", "", "", "store", "<init>", "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V", "getState", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "getModel", "()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;", "getSource", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;", "()Z", "getDemandScore", "()Ljava/lang/Integer;", "setDemandScore", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getDemandTier", "()Ljava/lang/String;", "setDemandTier", "(Ljava/lang/String;)V", "getUserAttributes", "()Ljava/util/Map;", "setUserAttributes", "(Ljava/util/Map;)V", "getStore", "setStore", "audienceFilterParams", "getAudienceFilterParams", "superwallPlacement", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "getSuperwallPlacement", "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "rawName", "getRawName", "canImplicitlyTriggerPaywall", "getCanImplicitlyTriggerPaywall", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "TransactionSource", "State", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Transaction implements TrackableSuperwallEvent {
        private Integer demandScore;
        private String demandTier;
        private final boolean isObserved;
        private final StoreTransaction model;
        private final PaywallInfo paywallInfo;
        private final StoreProductType product;
        private final TransactionSource source;
        private final State state;
        private String store;
        private Map<String, ? extends Object> userAttributes;

        public Transaction(State state, PaywallInfo paywallInfo, StoreProductType storeProductType, StoreTransaction storeTransaction, TransactionSource source, boolean z, Integer num, String str, Map<String, ? extends Object> map, String store) {
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(store, "store");
            this.state = state;
            this.paywallInfo = paywallInfo;
            this.product = storeProductType;
            this.model = storeTransaction;
            this.source = source;
            this.isObserved = z;
            this.demandScore = num;
            this.demandTier = str;
            this.userAttributes = map;
            this.store = store;
        }

        public final State getState() {
            return this.state;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final StoreProductType getProduct() {
            return this.product;
        }

        public final StoreTransaction getModel() {
            return this.model;
        }

        public final TransactionSource getSource() {
            return this.source;
        }

        /* JADX INFO: renamed from: isObserved, reason: from getter */
        public final boolean getIsObserved() {
            return this.isObserved;
        }

        public final Integer getDemandScore() {
            return this.demandScore;
        }

        public final void setDemandScore(Integer num) {
            this.demandScore = num;
        }

        public final String getDemandTier() {
            return this.demandTier;
        }

        public final void setDemandTier(String str) {
            this.demandTier = str;
        }

        public final Map<String, Object> getUserAttributes() {
            return this.userAttributes;
        }

        public final void setUserAttributes(Map<String, ? extends Object> map) {
            this.userAttributes = map;
        }

        public /* synthetic */ Transaction(State state, PaywallInfo paywallInfo, StoreProductType storeProductType, StoreTransaction storeTransaction, TransactionSource transactionSource, boolean z, Integer num, String str, Map map, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(state, paywallInfo, storeProductType, storeTransaction, transactionSource, z, num, str, (i & 256) != 0 ? null : map, (i & 512) != 0 ? "PLAY_STORE" : str2);
        }

        public final String getStore() {
            return this.store;
        }

        public final void setStore(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.store = str;
        }

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;", "", "raw", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getRaw", "()Ljava/lang/String;", "INTERNAL", "OBSERVER", "EXTERNAL", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public enum TransactionSource {
            INTERNAL("SUPERWALL"),
            OBSERVER("OBSERVER"),
            EXTERNAL("APP");

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
            private final String raw;

            public static EnumEntries<TransactionSource> getEntries() {
                return $ENTRIES;
            }

            TransactionSource(String str) {
                this.raw = str;
            }

            public final String getRaw() {
                return this.raw;
            }
        }

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\b\tB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0006\n\u000b\f\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;", "", "<init>", "()V", "Start", "Fail", "Abandon", "Complete", "Restore", "Timeout", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Abandon;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Restore;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Start;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Timeout;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static abstract class State {
            public /* synthetic */ State(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private State() {
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Start;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "<init>", "(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)V", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Start extends State {
                private final StoreProductType product;

                public final StoreProductType getProduct() {
                    return this.product;
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Start(StoreProductType product) {
                    super(null);
                    Intrinsics.checkNotNullParameter(product, "product");
                    this.product = product;
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;", com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Lcom/superwall/sdk/store/transactions/TransactionError;", "<init>", "(Lcom/superwall/sdk/store/transactions/TransactionError;)V", "getError", "()Lcom/superwall/sdk/store/transactions/TransactionError;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Fail extends State {
                private final TransactionError error;

                public final TransactionError getError() {
                    return this.error;
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Fail(TransactionError error) {
                    super(null);
                    Intrinsics.checkNotNullParameter(error, "error");
                    this.error = error;
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Abandon;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "<init>", "(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)V", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Abandon extends State {
                private final StoreProductType product;

                public final StoreProductType getProduct() {
                    return this.product;
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Abandon(StoreProductType product) {
                    super(null);
                    Intrinsics.checkNotNullParameter(product, "product");
                    this.product = product;
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "transaction", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;", "<init>", "(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;)V", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "getTransaction", "()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Complete extends State {
                private final StoreProductType product;
                private final StoreTransactionType transaction;

                /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                public /* synthetic */ class WhenMappings {
                    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                    static {
                        int[] iArr = new int[SubscriptionPeriod.Unit.values().length];
                        try {
                            iArr[SubscriptionPeriod.Unit.day.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[SubscriptionPeriod.Unit.week.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        try {
                            iArr[SubscriptionPeriod.Unit.month.ordinal()] = 3;
                        } catch (NoSuchFieldError unused3) {
                        }
                        try {
                            iArr[SubscriptionPeriod.Unit.year.ordinal()] = 4;
                        } catch (NoSuchFieldError unused4) {
                        }
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                public final StoreProductType getProduct() {
                    return this.product;
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r13v0, types: [java.util.Date] */
                /* JADX WARN: Type inference failed for: r3v1, types: [kotlin.jvm.internal.DefaultConstructorMarker] */
                /* JADX WARN: Type inference failed for: r3v2 */
                /* JADX WARN: Type inference failed for: r3v5 */
                /* JADX WARN: Type inference failed for: r3v6 */
                public Complete(StoreProductType product, StoreTransactionType storeTransactionType) {
                    GoogleBillingPurchaseTransaction googleBillingPurchaseTransaction;
                    GoogleBillingPurchaseTransaction googleBillingPurchaseTransactionCopy$default;
                    SubscriptionPeriod subscriptionPeriod;
                    Intrinsics.checkNotNullParameter(product, "product");
                    ?? time = 0;
                    time = 0;
                    super(time);
                    this.product = product;
                    if (storeTransactionType instanceof GoogleBillingPurchaseTransaction) {
                        RawStoreProduct rawStoreProduct = product instanceof RawStoreProduct ? (RawStoreProduct) product : null;
                        if (rawStoreProduct == null) {
                            googleBillingPurchaseTransactionCopy$default = (GoogleBillingPurchaseTransaction) storeTransactionType;
                        } else {
                            GoogleBillingPurchaseTransaction googleBillingPurchaseTransaction2 = (GoogleBillingPurchaseTransaction) storeTransactionType;
                            Date transactionDate = googleBillingPurchaseTransaction2.getTransactionDate();
                            if (transactionDate != null && (subscriptionPeriod = ((RawStoreProduct) product).getSubscriptionPeriod()) != null) {
                                Calendar calendar = Calendar.getInstance();
                                calendar.setTime(transactionDate);
                                int i = WhenMappings.$EnumSwitchMapping$0[subscriptionPeriod.getUnit().ordinal()];
                                if (i == 1) {
                                    calendar.add(6, subscriptionPeriod.getValue());
                                } else if (i == 2) {
                                    calendar.add(3, subscriptionPeriod.getValue());
                                } else if (i == 3) {
                                    calendar.add(2, subscriptionPeriod.getValue());
                                } else {
                                    if (i != 4) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    calendar.add(1, subscriptionPeriod.getValue());
                                }
                                time = calendar.getTime();
                            }
                            googleBillingPurchaseTransactionCopy$default = GoogleBillingPurchaseTransaction.copy$default(googleBillingPurchaseTransaction2, null, null, null, null, null, null, null, null, rawStoreProduct.getBasePlanId(), null, time, rawStoreProduct.getOfferId$superwall_release(), null, null, null, null, null, 127743, null);
                        }
                        googleBillingPurchaseTransaction = googleBillingPurchaseTransactionCopy$default;
                    } else {
                        googleBillingPurchaseTransaction = storeTransactionType;
                    }
                    this.transaction = googleBillingPurchaseTransaction;
                }

                public final StoreTransactionType getTransaction() {
                    return this.transaction;
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Restore;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;", "restoreType", "Lcom/superwall/sdk/store/transactions/RestoreType;", "<init>", "(Lcom/superwall/sdk/store/transactions/RestoreType;)V", "getRestoreType", "()Lcom/superwall/sdk/store/transactions/RestoreType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Restore extends State {
                private final RestoreType restoreType;

                public final RestoreType getRestoreType() {
                    return this.restoreType;
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Restore(RestoreType restoreType) {
                    super(null);
                    Intrinsics.checkNotNullParameter(restoreType, "restoreType");
                    this.restoreType = restoreType;
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Timeout;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Timeout extends State {
                public Timeout() {
                    super(null);
                }
            }
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            String fullIdentifier;
            Map<String, Object> mapAudienceFilterParams = this.paywallInfo.audienceFilterParams();
            if (!(getSuperwallPlacement() instanceof SuperwallEvent.TransactionAbandon)) {
                return mapAudienceFilterParams;
            }
            StoreProductType storeProductType = this.product;
            if (storeProductType == null || (fullIdentifier = storeProductType.getFullIdentifier()) == null) {
                fullIdentifier = "";
            }
            return MapsKt.plus(mapAudienceFilterParams, TuplesKt.to("abandoned_product_id", fullIdentifier));
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent
        public SuperwallEvent getSuperwallPlacement() {
            State state = this.state;
            if (state instanceof State.Start) {
                return new SuperwallEvent.TransactionStart(((State.Start) this.state).getProduct(), this.paywallInfo);
            }
            if (state instanceof State.Fail) {
                return new SuperwallEvent.TransactionFail(((State.Fail) this.state).getError(), this.paywallInfo);
            }
            if (state instanceof State.Abandon) {
                return new SuperwallEvent.TransactionAbandon(((State.Abandon) this.state).getProduct(), this.paywallInfo);
            }
            if (state instanceof State.Complete) {
                return new SuperwallEvent.TransactionComplete(((State.Complete) this.state).getTransaction(), ((State.Complete) this.state).getProduct(), this.paywallInfo);
            }
            if (state instanceof State.Restore) {
                return new SuperwallEvent.TransactionRestore(((State.Restore) this.state).getRestoreType(), this.paywallInfo);
            }
            if (state instanceof State.Timeout) {
                return new SuperwallEvent.TransactionTimeout(this.paywallInfo);
            }
            throw new NoWhenBranchMatchedException();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public String getRawName() {
            return getSuperwallPlacement().getRawName();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public boolean getCanImplicitlyTriggerPaywall() {
            if (this.isObserved) {
                return false;
            }
            return getSuperwallPlacement().getCanImplicitlyTriggerPaywall();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            Map<String, Object> dictionary;
            Map<String, Object> dictionary2;
            State state = this.state;
            if (state instanceof State.Restore) {
                HashMap map = new HashMap(PaywallInfo.eventParams$default(this.paywallInfo, this.product, null, 2, null));
                StoreTransaction storeTransaction = this.model;
                if (storeTransaction != null && (dictionary2 = storeTransaction.toDictionary()) != null) {
                    map.putAll(dictionary2);
                }
                HashMap map2 = map;
                map2.put("store", this.store);
                map2.put("restore_via_purchase_attempt", Boxing.boxBoolean(this.model != null));
                return map;
            }
            if ((state instanceof State.Start) || (state instanceof State.Abandon) || (state instanceof State.Complete) || (state instanceof State.Timeout)) {
                HashMap map3 = new HashMap(PaywallInfo.eventParams$default(this.paywallInfo, this.product, null, 2, null));
                StoreTransaction storeTransaction2 = this.model;
                if (storeTransaction2 != null && (dictionary = storeTransaction2.toDictionary()) != null) {
                    map3.putAll(dictionary);
                }
                Integer num = this.demandScore;
                if (num != null) {
                    map3.put("attr_demandScore", num);
                }
                String str = this.demandTier;
                if (str != null) {
                    map3.put("attr_demandTier", str);
                }
                HashMap map4 = map3;
                map4.put("store", this.store);
                map4.put(com.google.firebase.messaging.Constants.ScionAnalytics.PARAM_SOURCE, this.source.getRaw());
                if (this.state instanceof State.Complete) {
                    map4.put("user_attributes", this.userAttributes);
                }
                return map3;
            }
            if (!(state instanceof State.Fail)) {
                throw new NoWhenBranchMatchedException();
            }
            TransactionError error = ((State.Fail) state).getError();
            if (!(error instanceof TransactionError.Failure) && !(error instanceof TransactionError.Pending)) {
                throw new NoWhenBranchMatchedException();
            }
            HashMap map5 = new HashMap(this.paywallInfo.eventParams(this.product, MapsKt.mapOf(TuplesKt.to("message", ((State.Fail) this.state).getError().getMessage()))));
            Integer num2 = this.demandScore;
            if (num2 != null) {
                map5.put("attr_demandScore", num2);
            }
            String str2 = this.demandTier;
            if (str2 != null) {
                map5.put("attr_demandTier", str2);
            }
            map5.put("store", this.store);
            return map5;
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0013j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0014H\u0096@¢\u0006\u0002\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR \u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SubscriptionStart;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SubscriptionStart extends InternalSuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final StoreProduct product;

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final StoreProduct getProduct() {
            return this.product;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubscriptionStart(PaywallInfo paywallInfo, StoreProduct product) {
            super(new SuperwallEvent.SubscriptionStart(product, paywallInfo), null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            Intrinsics.checkNotNullParameter(product, "product");
            this.paywallInfo = paywallInfo;
            this.product = product;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.paywallInfo.audienceFilterParams();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return new HashMap(PaywallInfo.eventParams$default(this.paywallInfo, this.product, null, 2, null));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0013j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0014H\u0096@¢\u0006\u0002\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR \u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$FreeTrialStart;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class FreeTrialStart extends InternalSuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final StoreProduct product;

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final StoreProduct getProduct() {
            return this.product;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FreeTrialStart(PaywallInfo paywallInfo, StoreProduct product) {
            super(new SuperwallEvent.FreeTrialStart(product, paywallInfo), null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            Intrinsics.checkNotNullParameter(product, "product");
            this.paywallInfo = paywallInfo;
            this.product = product;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.paywallInfo.audienceFilterParams();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return new HashMap(PaywallInfo.eventParams$default(this.paywallInfo, this.product, null, 2, null));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0013j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0014H\u0096@¢\u0006\u0002\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR \u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$NonRecurringProductPurchase;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class NonRecurringProductPurchase extends InternalSuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final StoreProduct product;

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final StoreProduct getProduct() {
            return this.product;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NonRecurringProductPurchase(PaywallInfo paywallInfo, StoreProduct product) {
            super(new SuperwallEvent.NonRecurringProductPurchase(new TransactionProduct(product), paywallInfo), null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            Intrinsics.checkNotNullParameter(product, "product");
            this.paywallInfo = paywallInfo;
            this.product = product;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.paywallInfo.audienceFilterParams();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return new HashMap(PaywallInfo.eventParams$default(this.paywallInfo, this.product, null, 2, null));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001\u001aB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\u0016\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0017j\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013`\u0018H\u0096@¢\u0006\u0002\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "state", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getState", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "superwallPlacement", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "getSuperwallPlacement", "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "State", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PaywallWebviewLoad extends InternalSuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final State state;

        public final State getState() {
            return this.state;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0004\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;", "", "<init>", "()V", "Start", "Fail", "Fallback", "Complete", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Fail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Fallback;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Start;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static abstract class State {
            public /* synthetic */ State(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Start;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Start extends State {
                public Start() {
                    super(null);
                }
            }

            private State() {
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Fail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;", com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Lcom/superwall/sdk/paywall/view/webview/WebviewError;", "urls", "", "", "<init>", "(Lcom/superwall/sdk/paywall/view/webview/WebviewError;Ljava/util/List;)V", "getError", "()Lcom/superwall/sdk/paywall/view/webview/WebviewError;", "getUrls", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final /* data */ class Fail extends State {
                private final WebviewError error;
                private final List<String> urls;

                /* JADX WARN: Multi-variable type inference failed */
                public static /* synthetic */ Fail copy$default(Fail fail, WebviewError webviewError, List list, int i, Object obj) {
                    if ((i & 1) != 0) {
                        webviewError = fail.error;
                    }
                    if ((i & 2) != 0) {
                        list = fail.urls;
                    }
                    return fail.copy(webviewError, list);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final WebviewError getError() {
                    return this.error;
                }

                public final List<String> component2() {
                    return this.urls;
                }

                public final Fail copy(WebviewError error, List<String> urls) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    Intrinsics.checkNotNullParameter(urls, "urls");
                    return new Fail(error, urls);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof Fail)) {
                        return false;
                    }
                    Fail fail = (Fail) other;
                    return Intrinsics.areEqual(this.error, fail.error) && Intrinsics.areEqual(this.urls, fail.urls);
                }

                public int hashCode() {
                    return (this.error.hashCode() * 31) + this.urls.hashCode();
                }

                public String toString() {
                    return "Fail(error=" + this.error + ", urls=" + this.urls + ")";
                }

                public final WebviewError getError() {
                    return this.error;
                }

                public final List<String> getUrls() {
                    return this.urls;
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Fail(WebviewError error, List<String> urls) {
                    super(null);
                    Intrinsics.checkNotNullParameter(error, "error");
                    Intrinsics.checkNotNullParameter(urls, "urls");
                    this.error = error;
                    this.urls = urls;
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Fallback;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Fallback extends State {
                public static final Fallback INSTANCE = new Fallback();

                private Fallback() {
                    super(null);
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Complete extends State {
                public Complete() {
                    super(null);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallWebviewLoad(State state, PaywallInfo paywallInfo) {
            super(new SuperwallEvent.PaywallWebviewLoadStart(paywallInfo), null);
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.state = state;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent, com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent
        public SuperwallEvent getSuperwallPlacement() {
            State state = this.state;
            if (state instanceof State.Start) {
                return new SuperwallEvent.PaywallWebviewLoadStart(this.paywallInfo);
            }
            if (state instanceof State.Fail) {
                return new SuperwallEvent.PaywallWebviewLoadFail(this.paywallInfo, ((State.Fail) this.state).getError());
            }
            if (state instanceof State.Complete) {
                return new SuperwallEvent.PaywallWebviewLoadComplete(this.paywallInfo);
            }
            if (!(state instanceof State.Fallback)) {
                throw new NoWhenBranchMatchedException();
            }
            return new SuperwallEvent.PaywallWebviewLoadFallback(this.paywallInfo);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.paywallInfo.audienceFilterParams();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            Map mapEmptyMap;
            if (this.state instanceof State.Fail) {
                SpreadBuilder spreadBuilder = new SpreadBuilder(2);
                spreadBuilder.add(TuplesKt.to("error_message", ((State.Fail) this.state).getError().toString()));
                List<String> urls = ((State.Fail) this.state).getUrls();
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(urls, 10));
                int i = 0;
                for (Object obj : urls) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    arrayList.add(TuplesKt.to("url_" + i, (String) obj));
                    i = i2;
                }
                spreadBuilder.addSpread(arrayList.toArray(new Pair[0]));
                mapEmptyMap = MapsKt.mapOf((Pair[]) spreadBuilder.toArray(new Pair[spreadBuilder.size()]));
            } else {
                mapEmptyMap = MapsKt.emptyMap();
            }
            return new HashMap(MapsKt.plus(PaywallInfo.eventParams$default(this.paywallInfo, null, null, 3, null), mapEmptyMap));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\f0\u000bH\u0096@¢\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR \u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\f0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallResourceLoadFail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", ImagesContract.URL, "", com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getError", "audienceFilterParams", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PaywallResourceLoadFail extends InternalSuperwallEvent {
        private final String error;
        private final String url;

        public final String getUrl() {
            return this.url;
        }

        public final String getError() {
            return this.error;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallResourceLoadFail(String url, String error) {
            super(new SuperwallEvent.PaywallResourceLoadFail(url, error), null);
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(error, "error");
            this.url = url;
            this.error = error;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            return MapsKt.mapOf(TuplesKt.to(ImagesContract.URL, this.url), TuplesKt.to(com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR, this.error));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001\u001eB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ*\u0010\u001a\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u001bj\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017`\u001cH\u0096@¢\u0006\u0002\u0010\u001dR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R \u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001f"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "state", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "eventData", "Lcom/superwall/sdk/models/events/EventData;", "<init>", "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/models/events/EventData;)V", "getState", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getEventData", "()Lcom/superwall/sdk/models/events/EventData;", "superwallPlacement", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "getSuperwallPlacement", "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "State", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PaywallProductsLoad extends InternalSuperwallEvent {
        private final EventData eventData;
        private final PaywallInfo paywallInfo;
        private final State state;

        public final State getState() {
            return this.state;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final EventData getEventData() {
            return this.eventData;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallProductsLoad(State state, PaywallInfo paywallInfo, EventData eventData) {
            super(new SuperwallEvent.PaywallProductsLoadStart(eventData != null ? eventData.getName() : null, paywallInfo), null);
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.state = state;
            this.paywallInfo = paywallInfo;
            this.eventData = eventData;
        }

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State;", "", "<init>", "()V", "Start", "Fail", "Complete", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State$Fail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State$Start;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static abstract class State {
            public /* synthetic */ State(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State$Start;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Start extends State {
                public Start() {
                    super(null);
                }
            }

            private State() {
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State$Fail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State;", "errorMessage", "", "<init>", "(Ljava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Fail extends State {
                private final String errorMessage;

                public final String getErrorMessage() {
                    return this.errorMessage;
                }

                public Fail(String str) {
                    super(null);
                    this.errorMessage = str;
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Complete extends State {
                public Complete() {
                    super(null);
                }
            }
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent, com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent
        public SuperwallEvent getSuperwallPlacement() {
            State state = this.state;
            if (state instanceof State.Start) {
                EventData eventData = this.eventData;
                return new SuperwallEvent.PaywallProductsLoadStart(eventData != null ? eventData.getName() : null, this.paywallInfo);
            }
            if (state instanceof State.Fail) {
                String errorMessage = ((State.Fail) this.state).getErrorMessage();
                EventData eventData2 = this.eventData;
                return new SuperwallEvent.PaywallProductsLoadFail(errorMessage, eventData2 != null ? eventData2.getName() : null, this.paywallInfo);
            }
            if (!(state instanceof State.Complete)) {
                throw new NoWhenBranchMatchedException();
            }
            EventData eventData3 = this.eventData;
            return new SuperwallEvent.PaywallProductsLoadComplete(eventData3 != null ? eventData3.getName() : null, this.paywallInfo);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.paywallInfo.audienceFilterParams();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.to("is_triggered_from_event", Boxing.boxBoolean(this.eventData != null)));
            State state = this.state;
            if ((state instanceof State.Fail) && ((State.Fail) state).getErrorMessage() != null) {
                mapHashMapOf.put("error_message", ((State.Fail) this.state).getErrorMessage());
            }
            mapHashMapOf.putAll(PaywallInfo.eventParams$default(this.paywallInfo, null, null, 3, null));
            return mapHashMapOf;
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00150\u0014H\u0096@¢\u0006\u0002\u0010\u0019J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\tHÆ\u0003J1\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001f\u001a\u00020\u00032\b\u0010 \u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010!\u001a\u00020\u0007HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R \u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00150\u0014X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006#"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigRefresh;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "isCached", "", "buildId", "", "retryCount", "", "fetchDuration", "", "<init>", "(ZLjava/lang/String;IJ)V", "()Z", "getBuildId", "()Ljava/lang/String;", "getRetryCount", "()I", "getFetchDuration", "()J", "audienceFilterParams", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ConfigRefresh extends InternalSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;
        private final String buildId;
        private final long fetchDuration;
        private final boolean isCached;
        private final int retryCount;

        public static /* synthetic */ ConfigRefresh copy$default(ConfigRefresh configRefresh, boolean z, String str, int i, long j, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                z = configRefresh.isCached;
            }
            if ((i2 & 2) != 0) {
                str = configRefresh.buildId;
            }
            if ((i2 & 4) != 0) {
                i = configRefresh.retryCount;
            }
            if ((i2 & 8) != 0) {
                j = configRefresh.fetchDuration;
            }
            int i3 = i;
            return configRefresh.copy(z, str, i3, j);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsCached() {
            return this.isCached;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getBuildId() {
            return this.buildId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getRetryCount() {
            return this.retryCount;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final long getFetchDuration() {
            return this.fetchDuration;
        }

        public final ConfigRefresh copy(boolean isCached, String buildId, int retryCount, long fetchDuration) {
            Intrinsics.checkNotNullParameter(buildId, "buildId");
            return new ConfigRefresh(isCached, buildId, retryCount, fetchDuration);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ConfigRefresh)) {
                return false;
            }
            ConfigRefresh configRefresh = (ConfigRefresh) other;
            return this.isCached == configRefresh.isCached && Intrinsics.areEqual(this.buildId, configRefresh.buildId) && this.retryCount == configRefresh.retryCount && this.fetchDuration == configRefresh.fetchDuration;
        }

        public int hashCode() {
            return (((((Boolean.hashCode(this.isCached) * 31) + this.buildId.hashCode()) * 31) + Integer.hashCode(this.retryCount)) * 31) + Long.hashCode(this.fetchDuration);
        }

        public String toString() {
            return "ConfigRefresh(isCached=" + this.isCached + ", buildId=" + this.buildId + ", retryCount=" + this.retryCount + ", fetchDuration=" + this.fetchDuration + ")";
        }

        public final boolean isCached() {
            return this.isCached;
        }

        public final String getBuildId() {
            return this.buildId;
        }

        public final int getRetryCount() {
            return this.retryCount;
        }

        public final long getFetchDuration() {
            return this.fetchDuration;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConfigRefresh(boolean z, String buildId, int i, long j) {
            super(SuperwallEvent.ConfigRefresh.INSTANCE, null);
            Intrinsics.checkNotNullParameter(buildId, "buildId");
            this.isCached = z;
            this.buildId = buildId;
            this.retryCount = i;
            this.fetchDuration = j;
            this.audienceFilterParams = MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            Pair[] pairArr = new Pair[4];
            pairArr[0] = TuplesKt.to("cache_status", this.isCached ? "CACHED" : "NOT_CACHED");
            pairArr[1] = TuplesKt.to("config_build_id", this.buildId);
            pairArr[2] = TuplesKt.to("retry_count", Boxing.boxInt(this.retryCount));
            pairArr[3] = TuplesKt.to("fetch_duration", Boxing.boxLong(this.fetchDuration));
            return MapsKt.mapOf(pairArr);
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n0\tH\u0096@¢\u0006\u0002\u0010\u000eJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R \u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n0\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfigFail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "errorMessage", "", "<init>", "(Ljava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "audienceFilterParams", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ConfigFail extends InternalSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;
        private final String errorMessage;

        public static /* synthetic */ ConfigFail copy$default(ConfigFail configFail, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = configFail.errorMessage;
            }
            return configFail.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getErrorMessage() {
            return this.errorMessage;
        }

        public final ConfigFail copy(String errorMessage) {
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
            return new ConfigFail(errorMessage);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ConfigFail) && Intrinsics.areEqual(this.errorMessage, ((ConfigFail) other).errorMessage);
        }

        public int hashCode() {
            return this.errorMessage.hashCode();
        }

        public String toString() {
            return "ConfigFail(errorMessage=" + this.errorMessage + ")";
        }

        public final String getErrorMessage() {
            return this.errorMessage;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConfigFail(String errorMessage) {
            super(SuperwallEvent.ConfigFail.INSTANCE, null);
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
            this.errorMessage = errorMessage;
            this.audienceFilterParams = MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            return MapsKt.mapOf(TuplesKt.to("error_message", this.errorMessage));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0096@¢\u0006\u0002\u0010\u000bR \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Reset;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "<init>", "()V", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Reset extends InternalSuperwallEvent {
        public static final Reset INSTANCE = new Reset();
        private static final Map<String, Object> audienceFilterParams = MapsKt.emptyMap();

        private Reset() {
            super(SuperwallEvent.Reset.INSTANCE, null);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            return MapsKt.emptyMap();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001dB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0096@¢\u0006\u0002\u0010\u0010J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u000eHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR \u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001e"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "state", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getState", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getSuperwallParameters", "", "", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "audienceFilterParams", "getAudienceFilterParams", "()Ljava/util/Map;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "State", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Restore extends InternalSuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final State state;

        public static /* synthetic */ Restore copy$default(Restore restore, State state, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                state = restore.state;
            }
            if ((i & 2) != 0) {
                paywallInfo = restore.paywallInfo;
            }
            return restore.copy(state, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final State getState() {
            return this.state;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final Restore copy(State state, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new Restore(state, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Restore)) {
                return false;
            }
            Restore restore = (Restore) other;
            return Intrinsics.areEqual(this.state, restore.state) && Intrinsics.areEqual(this.paywallInfo, restore.paywallInfo);
        }

        public int hashCode() {
            return (this.state.hashCode() * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "Restore(state=" + this.state + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final State getState() {
            return this.state;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Restore(State state, PaywallInfo paywallInfo) {
            SuperwallEvent.Restore.Start fail;
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            if (state instanceof State.Complete) {
                fail = SuperwallEvent.Restore.Complete.INSTANCE;
            } else if (state instanceof State.Failure) {
                fail = new SuperwallEvent.Restore.Fail(((State.Failure) state).getReason());
            } else {
                if (!(state instanceof State.Start)) {
                    throw new NoWhenBranchMatchedException();
                }
                fail = SuperwallEvent.Restore.Start.INSTANCE;
            }
            super(fail, null);
            this.state = state;
            this.paywallInfo = paywallInfo;
        }

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;", "", "<init>", "()V", "Start", "Failure", "Complete", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Failure;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Start;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static abstract class State {
            public /* synthetic */ State(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Start;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Start extends State {
                public static final Start INSTANCE = new Start();

                private Start() {
                    super(null);
                }
            }

            private State() {
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Failure;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;", "reason", "", "<init>", "(Ljava/lang/String;)V", "getReason", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final /* data */ class Failure extends State {
                private final String reason;

                public static /* synthetic */ Failure copy$default(Failure failure, String str, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = failure.reason;
                    }
                    return failure.copy(str);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getReason() {
                    return this.reason;
                }

                public final Failure copy(String reason) {
                    Intrinsics.checkNotNullParameter(reason, "reason");
                    return new Failure(reason);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof Failure) && Intrinsics.areEqual(this.reason, ((Failure) other).reason);
                }

                public int hashCode() {
                    return this.reason.hashCode();
                }

                public String toString() {
                    return "Failure(reason=" + this.reason + ")";
                }

                public final String getReason() {
                    return this.reason;
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Failure(String reason) {
                    super(null);
                    Intrinsics.checkNotNullParameter(reason, "reason");
                    this.reason = reason;
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Restore$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Complete extends State {
                public static final Complete INSTANCE = new Complete();

                private Complete() {
                    super(null);
                }
            }
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            Map mapEventParams$default = PaywallInfo.eventParams$default(this.paywallInfo, null, null, 3, null);
            State state = this.state;
            return state instanceof State.Failure ? MapsKt.plus(mapEventParams$default, MapsKt.mapOf(TuplesKt.to("error_message", ((State.Failure) state).getReason()))) : mapEventParams$default;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.paywallInfo.audienceFilterParams();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007H\u0096@¢\u0006\u0002\u0010\u0016J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\u0015\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J3\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u001f\u001a\u00020\u00182\b\u0010 \u001a\u0004\u0018\u00010\bHÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R \u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\fR\u0014\u0010\u0017\u001a\u00020\u0018X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006$"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$CustomPlacement;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "placementName", "", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "params", "", "", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Ljava/util/Map;)V", "getPlacementName", "()Ljava/lang/String;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getParams", "()Ljava/util/Map;", "audienceFilterParams", "getAudienceFilterParams", "rawName", "getRawName", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "canImplicitlyTriggerPaywall", "", "getCanImplicitlyTriggerPaywall", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class CustomPlacement extends InternalSuperwallEvent {
        private final boolean canImplicitlyTriggerPaywall;
        private final Map<String, Object> params;
        private final PaywallInfo paywallInfo;
        private final String placementName;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ CustomPlacement copy$default(CustomPlacement customPlacement, String str, PaywallInfo paywallInfo, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                str = customPlacement.placementName;
            }
            if ((i & 2) != 0) {
                paywallInfo = customPlacement.paywallInfo;
            }
            if ((i & 4) != 0) {
                map = customPlacement.params;
            }
            return customPlacement.copy(str, paywallInfo, map);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPlacementName() {
            return this.placementName;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final Map<String, Object> component3() {
            return this.params;
        }

        public final CustomPlacement copy(String placementName, PaywallInfo paywallInfo, Map<String, ? extends Object> params) {
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            Intrinsics.checkNotNullParameter(params, "params");
            return new CustomPlacement(placementName, paywallInfo, params);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CustomPlacement)) {
                return false;
            }
            CustomPlacement customPlacement = (CustomPlacement) other;
            return Intrinsics.areEqual(this.placementName, customPlacement.placementName) && Intrinsics.areEqual(this.paywallInfo, customPlacement.paywallInfo) && Intrinsics.areEqual(this.params, customPlacement.params);
        }

        public int hashCode() {
            return (((this.placementName.hashCode() * 31) + this.paywallInfo.hashCode()) * 31) + this.params.hashCode();
        }

        public String toString() {
            return "CustomPlacement(placementName=" + this.placementName + ", paywallInfo=" + this.paywallInfo + ", params=" + this.params + ")";
        }

        public final String getPlacementName() {
            return this.placementName;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final Map<String, Object> getParams() {
            return this.params;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CustomPlacement(String placementName, PaywallInfo paywallInfo, Map<String, ? extends Object> params) {
            super(new SuperwallEvent.CustomPlacement(placementName, paywallInfo, params), null);
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            Intrinsics.checkNotNullParameter(params, "params");
            this.placementName = placementName;
            this.paywallInfo = paywallInfo;
            this.params = params;
            this.canImplicitlyTriggerPaywall = true;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return MapsKt.plus(this.paywallInfo.audienceFilterParams(), this.params);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent, com.superwall.sdk.analytics.internal.trackable.Trackable
        public String getRawName() {
            return this.placementName;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            return MapsKt.plus(MapsKt.plus(PaywallInfo.eventParams$default(this.paywallInfo, null, null, 3, null), this.params), MapsKt.mapOf(TuplesKt.to("name", this.placementName)));
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent, com.superwall.sdk.analytics.internal.trackable.Trackable
        public boolean getCanImplicitlyTriggerPaywall() {
            return this.canImplicitlyTriggerPaywall;
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001/B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001a0\u0019H\u0096@¢\u0006\u0002\u0010 J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0012J\t\u0010&\u001a\u00020\u0007HÆ\u0003J\t\u0010'\u001a\u00020\nHÆ\u0003JB\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001¢\u0006\u0002\u0010)J\u0013\u0010*\u001a\u00020\n2\b\u0010+\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010,\u001a\u00020-HÖ\u0001J\t\u0010.\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001a0\u0019X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0010R\u0014\u0010!\u001a\u00020\nX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0017¨\u00060"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "state", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad$State;", "paywallId", "", "visibleDuration", "", "delay", "preloadingEnabled", "", "<init>", "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad$State;Ljava/lang/String;Ljava/lang/Double;DZ)V", "getState", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad$State;", "getPaywallId", "()Ljava/lang/String;", "getVisibleDuration", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getDelay", "()D", "getPreloadingEnabled", "()Z", "audienceFilterParams", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "rawName", "getRawName", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "canImplicitlyTriggerPaywall", "getCanImplicitlyTriggerPaywall", "component1", "component2", "component3", "component4", "component5", "copy", "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad$State;Ljava/lang/String;Ljava/lang/Double;DZ)Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad;", "equals", "other", "hashCode", "", "toString", "State", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ShimmerLoad extends InternalSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;
        private final boolean canImplicitlyTriggerPaywall;
        private final double delay;
        private final String paywallId;
        private final boolean preloadingEnabled;
        private final State state;
        private final Double visibleDuration;

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad$State;", "", "<init>", "(Ljava/lang/String;I)V", "Started", "Complete", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public enum State {
            Started,
            Complete;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

            public static EnumEntries<State> getEntries() {
                return $ENTRIES;
            }
        }

        public static /* synthetic */ ShimmerLoad copy$default(ShimmerLoad shimmerLoad, State state, String str, Double d, double d2, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                state = shimmerLoad.state;
            }
            if ((i & 2) != 0) {
                str = shimmerLoad.paywallId;
            }
            if ((i & 4) != 0) {
                d = shimmerLoad.visibleDuration;
            }
            if ((i & 8) != 0) {
                d2 = shimmerLoad.delay;
            }
            if ((i & 16) != 0) {
                z = shimmerLoad.preloadingEnabled;
            }
            boolean z2 = z;
            Double d3 = d;
            return shimmerLoad.copy(state, str, d3, d2, z2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final State getState() {
            return this.state;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getPaywallId() {
            return this.paywallId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Double getVisibleDuration() {
            return this.visibleDuration;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final double getDelay() {
            return this.delay;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getPreloadingEnabled() {
            return this.preloadingEnabled;
        }

        public final ShimmerLoad copy(State state, String paywallId, Double visibleDuration, double delay, boolean preloadingEnabled) {
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(paywallId, "paywallId");
            return new ShimmerLoad(state, paywallId, visibleDuration, delay, preloadingEnabled);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ShimmerLoad)) {
                return false;
            }
            ShimmerLoad shimmerLoad = (ShimmerLoad) other;
            return this.state == shimmerLoad.state && Intrinsics.areEqual(this.paywallId, shimmerLoad.paywallId) && Intrinsics.areEqual((Object) this.visibleDuration, (Object) shimmerLoad.visibleDuration) && Double.compare(this.delay, shimmerLoad.delay) == 0 && this.preloadingEnabled == shimmerLoad.preloadingEnabled;
        }

        public int hashCode() {
            int iHashCode = ((this.state.hashCode() * 31) + this.paywallId.hashCode()) * 31;
            Double d = this.visibleDuration;
            return ((((iHashCode + (d == null ? 0 : d.hashCode())) * 31) + Double.hashCode(this.delay)) * 31) + Boolean.hashCode(this.preloadingEnabled);
        }

        public String toString() {
            return "ShimmerLoad(state=" + this.state + ", paywallId=" + this.paywallId + ", visibleDuration=" + this.visibleDuration + ", delay=" + this.delay + ", preloadingEnabled=" + this.preloadingEnabled + ")";
        }

        public final State getState() {
            return this.state;
        }

        public final String getPaywallId() {
            return this.paywallId;
        }

        public final Double getVisibleDuration() {
            return this.visibleDuration;
        }

        public final double getDelay() {
            return this.delay;
        }

        public final boolean getPreloadingEnabled() {
            return this.preloadingEnabled;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public ShimmerLoad(State state, String paywallId, Double d, double d2, boolean z) {
            SuperwallEvent.ShimmerViewComplete shimmerViewComplete;
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(paywallId, "paywallId");
            if (state == State.Started) {
                shimmerViewComplete = SuperwallEvent.ShimmerViewStart.INSTANCE;
            } else {
                shimmerViewComplete = new SuperwallEvent.ShimmerViewComplete(d != null ? d.doubleValue() : 0.0d);
            }
            super(shimmerViewComplete, null);
            this.state = state;
            this.paywallId = paywallId;
            this.visibleDuration = d;
            this.delay = d2;
            this.preloadingEnabled = z;
            this.audienceFilterParams = MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent, com.superwall.sdk.analytics.internal.trackable.Trackable
        public String getRawName() {
            return getSuperwallPlacement().getRawName();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            Map mapMapOf = MapsKt.mapOf(TuplesKt.to("paywall_id", this.paywallId), TuplesKt.to("preloading_enabled", Boxing.boxBoolean(this.preloadingEnabled)), TuplesKt.to("visible_duration", this.visibleDuration), TuplesKt.to("unit", "ms"));
            ArrayList arrayList = new ArrayList(mapMapOf.size());
            for (Map.Entry entry : mapMapOf.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                arrayList.add(value != null ? TuplesKt.to(str, value) : null);
            }
            return MapsKt.toMap(CollectionsKt.filterNotNull(arrayList));
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent, com.superwall.sdk.analytics.internal.trackable.Trackable
        public boolean getCanImplicitlyTriggerPaywall() {
            return this.canImplicitlyTriggerPaywall;
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0096@¢\u0006\u0002\u0010\u000bR \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfirmAllAssignments;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "<init>", "()V", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConfirmAllAssignments extends InternalSuperwallEvent {
        public static final ConfirmAllAssignments INSTANCE = new ConfirmAllAssignments();
        private static final Map<String, Object> audienceFilterParams = MapsKt.emptyMap();

        private ConfirmAllAssignments() {
            super(SuperwallEvent.ConfirmAllAssignments.INSTANCE, null);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            return MapsKt.emptyMap();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00150\u0014H\u0096@¢\u0006\u0002\u0010\u0019J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\tHÆ\u0003J;\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010 \u001a\u00020\t2\b\u0010!\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0012R \u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00150\u0014X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006%"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ErrorThrown;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "message", "", "stacktrace", "occuredAt", "", "type", StackTraceHelper.IS_FATAL_KEY, "", "<init>", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V", "getMessage", "()Ljava/lang/String;", "getStacktrace", "getOccuredAt", "()J", "getType", "()Z", "audienceFilterParams", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ErrorThrown extends InternalSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;
        private final boolean isFatal;
        private final String message;
        private final long occuredAt;
        private final String stacktrace;
        private final String type;

        public static /* synthetic */ ErrorThrown copy$default(ErrorThrown errorThrown, String str, String str2, long j, String str3, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = errorThrown.message;
            }
            if ((i & 2) != 0) {
                str2 = errorThrown.stacktrace;
            }
            if ((i & 4) != 0) {
                j = errorThrown.occuredAt;
            }
            if ((i & 8) != 0) {
                str3 = errorThrown.type;
            }
            if ((i & 16) != 0) {
                z = errorThrown.isFatal;
            }
            long j2 = j;
            return errorThrown.copy(str, str2, j2, str3, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getStacktrace() {
            return this.stacktrace;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final long getOccuredAt() {
            return this.occuredAt;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getIsFatal() {
            return this.isFatal;
        }

        public final ErrorThrown copy(String message, String stacktrace, long occuredAt, String type, boolean isFatal) {
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(stacktrace, "stacktrace");
            Intrinsics.checkNotNullParameter(type, "type");
            return new ErrorThrown(message, stacktrace, occuredAt, type, isFatal);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ErrorThrown)) {
                return false;
            }
            ErrorThrown errorThrown = (ErrorThrown) other;
            return Intrinsics.areEqual(this.message, errorThrown.message) && Intrinsics.areEqual(this.stacktrace, errorThrown.stacktrace) && this.occuredAt == errorThrown.occuredAt && Intrinsics.areEqual(this.type, errorThrown.type) && this.isFatal == errorThrown.isFatal;
        }

        public int hashCode() {
            return (((((((this.message.hashCode() * 31) + this.stacktrace.hashCode()) * 31) + Long.hashCode(this.occuredAt)) * 31) + this.type.hashCode()) * 31) + Boolean.hashCode(this.isFatal);
        }

        public String toString() {
            return "ErrorThrown(message=" + this.message + ", stacktrace=" + this.stacktrace + ", occuredAt=" + this.occuredAt + ", type=" + this.type + ", isFatal=" + this.isFatal + ")";
        }

        public final String getMessage() {
            return this.message;
        }

        public final String getStacktrace() {
            return this.stacktrace;
        }

        public final long getOccuredAt() {
            return this.occuredAt;
        }

        public final String getType() {
            return this.type;
        }

        public final boolean isFatal() {
            return this.isFatal;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ErrorThrown(String message, String stacktrace, long j, String type, boolean z) {
            super(SuperwallEvent.ErrorThrown.INSTANCE, null);
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(stacktrace, "stacktrace");
            Intrinsics.checkNotNullParameter(type, "type");
            this.message = message;
            this.stacktrace = stacktrace;
            this.occuredAt = j;
            this.type = type;
            this.isFatal = z;
            this.audienceFilterParams = MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            return MapsKt.mapOf(TuplesKt.to("exception_type", this.type), TuplesKt.to("error_message", this.message), TuplesKt.to("error_stack_trace", this.stacktrace), TuplesKt.to("occured_at", Boxing.boxLong(this.occuredAt)), TuplesKt.to("is_fatal", Boxing.boxBoolean(this.isFatal)));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00190\u0018H\u0096@¢\u0006\u0002\u0010\u001dJ\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010#\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jb\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020\u00072\b\u0010(\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010)\u001a\u00020*HÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0014\u0010\u0012R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0015\u0010\u0012R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000eR \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00190\u0018X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u0006,"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ExpressionResult;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "celExpression", "", "liquidExpression", "jsExpression", "celExpressionResult", "", "liquidExpressionResult", "jsExpressionResult", "errorMessage", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V", "getCelExpression", "()Ljava/lang/String;", "getLiquidExpression", "getJsExpression", "getCelExpressionResult", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLiquidExpressionResult", "getJsExpressionResult", "getErrorMessage", "audienceFilterParams", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ExpressionResult;", "equals", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ExpressionResult extends InternalSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;
        private final String celExpression;
        private final Boolean celExpressionResult;
        private final String errorMessage;
        private final String jsExpression;
        private final Boolean jsExpressionResult;
        private final String liquidExpression;
        private final Boolean liquidExpressionResult;

        public ExpressionResult() {
            this(null, null, null, null, null, null, null, 127, null);
        }

        public static /* synthetic */ ExpressionResult copy$default(ExpressionResult expressionResult, String str, String str2, String str3, Boolean bool, Boolean bool2, Boolean bool3, String str4, int i, Object obj) {
            if ((i & 1) != 0) {
                str = expressionResult.celExpression;
            }
            if ((i & 2) != 0) {
                str2 = expressionResult.liquidExpression;
            }
            if ((i & 4) != 0) {
                str3 = expressionResult.jsExpression;
            }
            if ((i & 8) != 0) {
                bool = expressionResult.celExpressionResult;
            }
            if ((i & 16) != 0) {
                bool2 = expressionResult.liquidExpressionResult;
            }
            if ((i & 32) != 0) {
                bool3 = expressionResult.jsExpressionResult;
            }
            if ((i & 64) != 0) {
                str4 = expressionResult.errorMessage;
            }
            Boolean bool4 = bool3;
            String str5 = str4;
            Boolean bool5 = bool2;
            String str6 = str3;
            return expressionResult.copy(str, str2, str6, bool, bool5, bool4, str5);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getCelExpression() {
            return this.celExpression;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getLiquidExpression() {
            return this.liquidExpression;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getJsExpression() {
            return this.jsExpression;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Boolean getCelExpressionResult() {
            return this.celExpressionResult;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final Boolean getLiquidExpressionResult() {
            return this.liquidExpressionResult;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final Boolean getJsExpressionResult() {
            return this.jsExpressionResult;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final String getErrorMessage() {
            return this.errorMessage;
        }

        public final ExpressionResult copy(String celExpression, String liquidExpression, String jsExpression, Boolean celExpressionResult, Boolean liquidExpressionResult, Boolean jsExpressionResult, String errorMessage) {
            return new ExpressionResult(celExpression, liquidExpression, jsExpression, celExpressionResult, liquidExpressionResult, jsExpressionResult, errorMessage);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ExpressionResult)) {
                return false;
            }
            ExpressionResult expressionResult = (ExpressionResult) other;
            return Intrinsics.areEqual(this.celExpression, expressionResult.celExpression) && Intrinsics.areEqual(this.liquidExpression, expressionResult.liquidExpression) && Intrinsics.areEqual(this.jsExpression, expressionResult.jsExpression) && Intrinsics.areEqual(this.celExpressionResult, expressionResult.celExpressionResult) && Intrinsics.areEqual(this.liquidExpressionResult, expressionResult.liquidExpressionResult) && Intrinsics.areEqual(this.jsExpressionResult, expressionResult.jsExpressionResult) && Intrinsics.areEqual(this.errorMessage, expressionResult.errorMessage);
        }

        public int hashCode() {
            String str = this.celExpression;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.liquidExpression;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.jsExpression;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            Boolean bool = this.celExpressionResult;
            int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
            Boolean bool2 = this.liquidExpressionResult;
            int iHashCode5 = (iHashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
            Boolean bool3 = this.jsExpressionResult;
            int iHashCode6 = (iHashCode5 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
            String str4 = this.errorMessage;
            return iHashCode6 + (str4 != null ? str4.hashCode() : 0);
        }

        public String toString() {
            return "ExpressionResult(celExpression=" + this.celExpression + ", liquidExpression=" + this.liquidExpression + ", jsExpression=" + this.jsExpression + ", celExpressionResult=" + this.celExpressionResult + ", liquidExpressionResult=" + this.liquidExpressionResult + ", jsExpressionResult=" + this.jsExpressionResult + ", errorMessage=" + this.errorMessage + ")";
        }

        public /* synthetic */ ExpressionResult(String str, String str2, String str3, Boolean bool, Boolean bool2, Boolean bool3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : bool, (i & 16) != 0 ? null : bool2, (i & 32) != 0 ? null : bool3, (i & 64) != 0 ? null : str4);
        }

        public final String getCelExpression() {
            return this.celExpression;
        }

        public final String getLiquidExpression() {
            return this.liquidExpression;
        }

        public final String getJsExpression() {
            return this.jsExpression;
        }

        public final Boolean getCelExpressionResult() {
            return this.celExpressionResult;
        }

        public final Boolean getLiquidExpressionResult() {
            return this.liquidExpressionResult;
        }

        public final Boolean getJsExpressionResult() {
            return this.jsExpressionResult;
        }

        public final String getErrorMessage() {
            return this.errorMessage;
        }

        public ExpressionResult(String str, String str2, String str3, Boolean bool, Boolean bool2, Boolean bool3, String str4) {
            super(SuperwallEvent.ExpressionResult.INSTANCE, null);
            this.celExpression = str;
            this.liquidExpression = str2;
            this.jsExpression = str3;
            this.celExpressionResult = bool;
            this.liquidExpressionResult = bool2;
            this.jsExpressionResult = bool3;
            this.errorMessage = str4;
            this.audienceFilterParams = MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            Pair[] pairArr = new Pair[7];
            String str = this.celExpression;
            if (str == null) {
                str = "";
            }
            pairArr[0] = TuplesKt.to("cel_expression", str);
            String str2 = this.liquidExpression;
            if (str2 == null) {
                str2 = "";
            }
            pairArr[1] = TuplesKt.to("liquid_expression", str2);
            String str3 = this.jsExpression;
            if (str3 == null) {
                str3 = "";
            }
            pairArr[2] = TuplesKt.to("js_expression", str3);
            Object obj = this.celExpressionResult;
            if (obj == null) {
                obj = "";
            }
            pairArr[3] = TuplesKt.to("cel_expression_result", obj);
            Object obj2 = this.liquidExpressionResult;
            if (obj2 == null) {
                obj2 = "";
            }
            pairArr[4] = TuplesKt.to("liquid_expression_result", obj2);
            Object obj3 = this.jsExpressionResult;
            if (obj3 == null) {
                obj3 = "";
            }
            pairArr[5] = TuplesKt.to("js_expression_result", obj3);
            String str4 = this.errorMessage;
            pairArr[6] = TuplesKt.to("error_message", str4 != null ? str4 : "");
            return MapsKt.mapOf(pairArr);
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0096@¢\u0006\u0002\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR \u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "state", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;", "type", "Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;", "<init>", "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;)V", "getState", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;", "getType", "()Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "RedemptionState", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Redemptions extends InternalSuperwallEvent {
        private final RedemptionState state;
        private final WebPaywallRedeemer.RedeemType type;

        public final RedemptionState getState() {
            return this.state;
        }

        public final WebPaywallRedeemer.RedeemType getType() {
            return this.type;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Redemptions(RedemptionState state, WebPaywallRedeemer.RedeemType type) {
            SuperwallEvent.RedemptionFail redemptionFail;
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(type, "type");
            if (Intrinsics.areEqual(state, RedemptionState.Start.INSTANCE)) {
                redemptionFail = SuperwallEvent.RedemptionStart.INSTANCE;
            } else if (state instanceof RedemptionState.Complete) {
                redemptionFail = SuperwallEvent.RedemptionComplete.INSTANCE;
            } else {
                if (!(state instanceof RedemptionState.Fail)) {
                    throw new NoWhenBranchMatchedException();
                }
                redemptionFail = SuperwallEvent.RedemptionFail.INSTANCE;
            }
            super(redemptionFail, null);
            this.state = state;
            this.type = type;
        }

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;", "", "<init>", "()V", "Start", "Complete", "Fail", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState$Fail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState$Start;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static abstract class RedemptionState {
            public /* synthetic */ RedemptionState(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState$Start;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Start extends RedemptionState {
                public static final Start INSTANCE = new Start();

                private Start() {
                    super(null);
                }
            }

            private RedemptionState() {
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Complete extends RedemptionState {
                public static final Complete INSTANCE = new Complete();

                private Complete() {
                    super(null);
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState$Fail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Redemptions$RedemptionState;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Fail extends RedemptionState {
                public static final Fail INSTANCE = new Fail();

                private Fail() {
                    super(null);
                }
            }
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("type", this.type.getDescription()));
            if (this.type.getCode() != null) {
                String code = this.type.getCode();
                Intrinsics.checkNotNull(code);
                mapMutableMapOf.put("code", code);
            }
            return MapsKt.toMap(mapMutableMapOf);
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0096@¢\u0006\u0002\u0010\u000fJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\nHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R \u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "state", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State;", "<init>", "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State;)V", "getState", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State;", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "State", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class EnrichmentLoad extends InternalSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;
        private final State state;

        public static /* synthetic */ EnrichmentLoad copy$default(EnrichmentLoad enrichmentLoad, State state, int i, Object obj) {
            if ((i & 1) != 0) {
                state = enrichmentLoad.state;
            }
            return enrichmentLoad.copy(state);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final State getState() {
            return this.state;
        }

        public final EnrichmentLoad copy(State state) {
            Intrinsics.checkNotNullParameter(state, "state");
            return new EnrichmentLoad(state);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof EnrichmentLoad) && Intrinsics.areEqual(this.state, ((EnrichmentLoad) other).state);
        }

        public int hashCode() {
            return this.state.hashCode();
        }

        public String toString() {
            return "EnrichmentLoad(state=" + this.state + ")";
        }

        public final State getState() {
            return this.state;
        }

        public EnrichmentLoad(State state) {
            SuperwallEvent.EnrichmentStart enrichmentComplete;
            Intrinsics.checkNotNullParameter(state, "state");
            if (state instanceof State.Complete) {
                State.Complete complete = (State.Complete) state;
                enrichmentComplete = new SuperwallEvent.EnrichmentComplete(complete.getEnrichment().getUser(), complete.getEnrichment().getDevice());
            } else if (Intrinsics.areEqual(state, State.Fail.INSTANCE)) {
                enrichmentComplete = SuperwallEvent.EnrichmentFail.INSTANCE;
            } else {
                if (!Intrinsics.areEqual(state, State.Start.INSTANCE)) {
                    throw new NoWhenBranchMatchedException();
                }
                enrichmentComplete = SuperwallEvent.EnrichmentStart.INSTANCE;
            }
            super(enrichmentComplete, null);
            this.state = state;
            this.audienceFilterParams = MapsKt.emptyMap();
        }

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State;", "", "<init>", "()V", "Start", "Complete", "Fail", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State$Fail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State$Start;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static abstract class State {
            public /* synthetic */ State(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State$Start;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Start extends State {
                public static final Start INSTANCE = new Start();

                private Start() {
                    super(null);
                }
            }

            private State() {
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State$Complete;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State;", "enrichment", "Lcom/superwall/sdk/models/enrichment/Enrichment;", "<init>", "(Lcom/superwall/sdk/models/enrichment/Enrichment;)V", "getEnrichment", "()Lcom/superwall/sdk/models/enrichment/Enrichment;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final /* data */ class Complete extends State {
                private final Enrichment enrichment;

                public static /* synthetic */ Complete copy$default(Complete complete, Enrichment enrichment, int i, Object obj) {
                    if ((i & 1) != 0) {
                        enrichment = complete.enrichment;
                    }
                    return complete.copy(enrichment);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final Enrichment getEnrichment() {
                    return this.enrichment;
                }

                public final Complete copy(Enrichment enrichment) {
                    Intrinsics.checkNotNullParameter(enrichment, "enrichment");
                    return new Complete(enrichment);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof Complete) && Intrinsics.areEqual(this.enrichment, ((Complete) other).enrichment);
                }

                public int hashCode() {
                    return this.enrichment.hashCode();
                }

                public String toString() {
                    return "Complete(enrichment=" + this.enrichment + ")";
                }

                public final Enrichment getEnrichment() {
                    return this.enrichment;
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Complete(Enrichment enrichment) {
                    super(null);
                    Intrinsics.checkNotNullParameter(enrichment, "enrichment");
                    this.enrichment = enrichment;
                }
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State$Fail;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$EnrichmentLoad$State;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Fail extends State {
                public static final Fail INSTANCE = new Fail();

                private Fail() {
                    super(null);
                }
            }
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            State state = this.state;
            if (state instanceof State.Complete) {
                Map<String, Object> user = ((State.Complete) state).getEnrichment().getUser();
                ArrayList arrayList = new ArrayList(user.size());
                for (Map.Entry<String, Object> entry : user.entrySet()) {
                    arrayList.add(TuplesKt.to("user_" + ((Object) entry.getKey()), entry.getValue()));
                }
                ArrayList arrayList2 = arrayList;
                Map<String, Object> device = ((State.Complete) this.state).getEnrichment().getDevice();
                ArrayList arrayList3 = new ArrayList(device.size());
                for (Map.Entry<String, Object> entry2 : device.entrySet()) {
                    arrayList3.add(TuplesKt.to("device_" + ((Object) entry2.getKey()), entry2.getValue()));
                }
                return MapsKt.toMap(CollectionsKt.plus((Collection) arrayList2, (Iterable) arrayList3));
            }
            return MapsKt.emptyMap();
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e0\u0012j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e`\u0013H\u0096@¢\u0006\u0002\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR \u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e0\rX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ReviewRequested;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", NewHtcHomeBadger.COUNT, "", "type", "", "<init>", "(ILjava/lang/String;)V", "getCount", "()I", "getType", "()Ljava/lang/String;", "audienceFilterParams", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ReviewRequested extends InternalSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;
        private final int count;
        private final String type;

        public final int getCount() {
            return this.count;
        }

        public final String getType() {
            return this.type;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReviewRequested(int i, String type) {
            super(new SuperwallEvent.ReviewRequested(i), null);
            Intrinsics.checkNotNullParameter(type, "type");
            this.count = i;
            this.type = type;
            this.audienceFilterParams = MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super HashMap<String, Object>> continuation) {
            return MapsKt.hashMapOf(TuplesKt.to(NewHtcHomeBadger.COUNT, Boxing.boxInt(this.count)), TuplesKt.to("type", this.type));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001&B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0096@¢\u0006\u0002\u0010\u001cJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u0015\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006HÆ\u0003J3\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006HÆ\u0001J\u0013\u0010!\u001a\u00020\u00182\b\u0010\"\u001a\u0004\u0018\u00010\bHÖ\u0003J\t\u0010#\u001a\u00020$HÖ\u0001J\t\u0010%\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u0018X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006'"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$CustomerInfoDidChange;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "fromCustomerInfo", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "toCustomerInfo", "audienceFilterParams", "", "", "", "<init>", "(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;Ljava/util/Map;)V", "getFromCustomerInfo", "()Lcom/superwall/sdk/models/customer/CustomerInfo;", "getToCustomerInfo", "getAudienceFilterParams", "()Ljava/util/Map;", "superwallPlacement", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "getSuperwallPlacement", "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "rawName", "getRawName", "()Ljava/lang/String;", "canImplicitlyTriggerPaywall", "", "getCanImplicitlyTriggerPaywall", "()Z", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "EntitlementsSnapshot", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class CustomerInfoDidChange implements TrackableSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;
        private final boolean canImplicitlyTriggerPaywall;
        private final CustomerInfo fromCustomerInfo;
        private final String rawName;
        private final SuperwallEvent superwallPlacement;
        private final CustomerInfo toCustomerInfo;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ CustomerInfoDidChange copy$default(CustomerInfoDidChange customerInfoDidChange, CustomerInfo customerInfo, CustomerInfo customerInfo2, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                customerInfo = customerInfoDidChange.fromCustomerInfo;
            }
            if ((i & 2) != 0) {
                customerInfo2 = customerInfoDidChange.toCustomerInfo;
            }
            if ((i & 4) != 0) {
                map = customerInfoDidChange.audienceFilterParams;
            }
            return customerInfoDidChange.copy(customerInfo, customerInfo2, map);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CustomerInfo getFromCustomerInfo() {
            return this.fromCustomerInfo;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final CustomerInfo getToCustomerInfo() {
            return this.toCustomerInfo;
        }

        public final Map<String, Object> component3() {
            return this.audienceFilterParams;
        }

        public final CustomerInfoDidChange copy(CustomerInfo fromCustomerInfo, CustomerInfo toCustomerInfo, Map<String, ? extends Object> audienceFilterParams) {
            Intrinsics.checkNotNullParameter(fromCustomerInfo, "fromCustomerInfo");
            Intrinsics.checkNotNullParameter(toCustomerInfo, "toCustomerInfo");
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            return new CustomerInfoDidChange(fromCustomerInfo, toCustomerInfo, audienceFilterParams);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CustomerInfoDidChange)) {
                return false;
            }
            CustomerInfoDidChange customerInfoDidChange = (CustomerInfoDidChange) other;
            return Intrinsics.areEqual(this.fromCustomerInfo, customerInfoDidChange.fromCustomerInfo) && Intrinsics.areEqual(this.toCustomerInfo, customerInfoDidChange.toCustomerInfo) && Intrinsics.areEqual(this.audienceFilterParams, customerInfoDidChange.audienceFilterParams);
        }

        public int hashCode() {
            return (((this.fromCustomerInfo.hashCode() * 31) + this.toCustomerInfo.hashCode()) * 31) + this.audienceFilterParams.hashCode();
        }

        public String toString() {
            return "CustomerInfoDidChange(fromCustomerInfo=" + this.fromCustomerInfo + ", toCustomerInfo=" + this.toCustomerInfo + ", audienceFilterParams=" + this.audienceFilterParams + ")";
        }

        public CustomerInfoDidChange(CustomerInfo fromCustomerInfo, CustomerInfo toCustomerInfo, Map<String, ? extends Object> audienceFilterParams) {
            Intrinsics.checkNotNullParameter(fromCustomerInfo, "fromCustomerInfo");
            Intrinsics.checkNotNullParameter(toCustomerInfo, "toCustomerInfo");
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.fromCustomerInfo = fromCustomerInfo;
            this.toCustomerInfo = toCustomerInfo;
            this.audienceFilterParams = audienceFilterParams;
            this.superwallPlacement = new SuperwallEvent.CustomerInfoDidChange(fromCustomerInfo, toCustomerInfo);
            this.rawName = new SuperwallEvent.CustomerInfoDidChange(fromCustomerInfo, toCustomerInfo).getRawName();
        }

        public final CustomerInfo getFromCustomerInfo() {
            return this.fromCustomerInfo;
        }

        public final CustomerInfo getToCustomerInfo() {
            return this.toCustomerInfo;
        }

        public /* synthetic */ CustomerInfoDidChange(CustomerInfo customerInfo, CustomerInfo customerInfo2, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(customerInfo, customerInfo2, (i & 4) != 0 ? MapsKt.emptyMap() : map);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent
        public SuperwallEvent getSuperwallPlacement() {
            return this.superwallPlacement;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public String getRawName() {
            return this.rawName;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0083\b\u0018\u0000 \"2\u00020\u0001:\u0002!\"B\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bB3\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J#\u0010\u0013\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\nHÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J%\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0001¢\u0006\u0002\b R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0010¨\u0006#"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$CustomerInfoDidChange$EntitlementsSnapshot;", "", "entitlements", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "isPlaceholder", "", "<init>", "(Ljava/util/List;Z)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/List;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getEntitlements", "()Ljava/util/List;", "()Z", "component1", "component2", "copy", "equals", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable
        static final /* data */ class EntitlementsSnapshot {
            private final List<Entitlement> entitlements;
            private final boolean isPlaceholder;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final KSerializer<Object>[] $childSerializers = {new ArrayListSerializer(Entitlement$$serializer.INSTANCE), null};

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ EntitlementsSnapshot copy$default(EntitlementsSnapshot entitlementsSnapshot, List list, boolean z, int i, Object obj) {
                if ((i & 1) != 0) {
                    list = entitlementsSnapshot.entitlements;
                }
                if ((i & 2) != 0) {
                    z = entitlementsSnapshot.isPlaceholder;
                }
                return entitlementsSnapshot.copy(list, z);
            }

            public final List<Entitlement> component1() {
                return this.entitlements;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final boolean getIsPlaceholder() {
                return this.isPlaceholder;
            }

            public final EntitlementsSnapshot copy(List<Entitlement> entitlements, boolean isPlaceholder) {
                Intrinsics.checkNotNullParameter(entitlements, "entitlements");
                return new EntitlementsSnapshot(entitlements, isPlaceholder);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof EntitlementsSnapshot)) {
                    return false;
                }
                EntitlementsSnapshot entitlementsSnapshot = (EntitlementsSnapshot) other;
                return Intrinsics.areEqual(this.entitlements, entitlementsSnapshot.entitlements) && this.isPlaceholder == entitlementsSnapshot.isPlaceholder;
            }

            public int hashCode() {
                return (this.entitlements.hashCode() * 31) + Boolean.hashCode(this.isPlaceholder);
            }

            public String toString() {
                return "EntitlementsSnapshot(entitlements=" + this.entitlements + ", isPlaceholder=" + this.isPlaceholder + ")";
            }

            /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$CustomerInfoDidChange$EntitlementsSnapshot$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$CustomerInfoDidChange$EntitlementsSnapshot;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final KSerializer<EntitlementsSnapshot> serializer() {
                    return InternalSuperwallEvent$CustomerInfoDidChange$EntitlementsSnapshot$$serializer.INSTANCE;
                }
            }

            public /* synthetic */ EntitlementsSnapshot(int i, List list, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
                if (3 != (i & 3)) {
                    PluginExceptionsKt.throwMissingFieldException(i, 3, InternalSuperwallEvent$CustomerInfoDidChange$EntitlementsSnapshot$$serializer.INSTANCE.getDescriptor());
                }
                this.entitlements = list;
                this.isPlaceholder = z;
            }

            @JvmStatic
            public static final /* synthetic */ void write$Self$superwall_release(EntitlementsSnapshot self, CompositeEncoder output, SerialDescriptor serialDesc) {
                output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.entitlements);
                output.encodeBooleanElement(serialDesc, 1, self.isPlaceholder);
            }

            public EntitlementsSnapshot(List<Entitlement> entitlements, boolean z) {
                Intrinsics.checkNotNullParameter(entitlements, "entitlements");
                this.entitlements = entitlements;
                this.isPlaceholder = z;
            }

            public final List<Entitlement> getEntitlements() {
                return this.entitlements;
            }

            public final boolean isPlaceholder() {
                return this.isPlaceholder;
            }
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public boolean getCanImplicitlyTriggerPaywall() {
            return this.canImplicitlyTriggerPaywall;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            String strEncodeToString;
            String strEncodeToString2 = "{}";
            EntitlementsSnapshot entitlementsSnapshot = new EntitlementsSnapshot(this.fromCustomerInfo.getEntitlements(), this.fromCustomerInfo.isPlaceholder$superwall_release());
            EntitlementsSnapshot entitlementsSnapshot2 = new EntitlementsSnapshot(this.toCustomerInfo.getEntitlements(), this.toCustomerInfo.isPlaceholder$superwall_release());
            try {
                Json json = JsonFactory.INSTANCE.getJSON();
                json.getSerializersModule();
                strEncodeToString = json.encodeToString(EntitlementsSnapshot.INSTANCE.serializer(), entitlementsSnapshot);
            } catch (Exception e) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.customerInfo, "Unable to serialize customer info \"from\" - " + e.getMessage(), null, null, 24, null);
                strEncodeToString = "{}";
            }
            try {
                Json json2 = JsonFactory.INSTANCE.getJSON();
                json2.getSerializersModule();
                strEncodeToString2 = json2.encodeToString(EntitlementsSnapshot.INSTANCE.serializer(), entitlementsSnapshot2);
            } catch (Exception e2) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.customerInfo, "Unable to serialize customer info \"to\" - " + e2.getMessage(), null, null, 24, null);
            }
            return MapsKt.mapOf(TuplesKt.to(com.google.firebase.messaging.Constants.MessagePayloadKeys.FROM, strEncodeToString), TuplesKt.to("to", strEncodeToString2));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001#B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00140\u0013H\u0096@¢\u0006\u0002\u0010\u0018J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J'\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00140\u0013X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006$"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "state", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission$State;", "permissionName", "", "paywallIdentifier", "<init>", "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission$State;Ljava/lang/String;Ljava/lang/String;)V", "getState", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission$State;", "getPermissionName", "()Ljava/lang/String;", "getPaywallIdentifier", "superwallPlacement", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "getSuperwallPlacement", "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "audienceFilterParams", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "State", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Permission extends InternalSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;
        private final String paywallIdentifier;
        private final String permissionName;
        private final State state;

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission$State;", "", "<init>", "(Ljava/lang/String;I)V", "Requested", "Granted", "Denied", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public enum State {
            Requested,
            Granted,
            Denied;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

            public static EnumEntries<State> getEntries() {
                return $ENTRIES;
            }
        }

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[State.values().length];
                try {
                    iArr[State.Requested.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[State.Granted.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[State.Denied.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public static /* synthetic */ Permission copy$default(Permission permission, State state, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                state = permission.state;
            }
            if ((i & 2) != 0) {
                str = permission.permissionName;
            }
            if ((i & 4) != 0) {
                str2 = permission.paywallIdentifier;
            }
            return permission.copy(state, str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final State getState() {
            return this.state;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getPermissionName() {
            return this.permissionName;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getPaywallIdentifier() {
            return this.paywallIdentifier;
        }

        public final Permission copy(State state, String permissionName, String paywallIdentifier) {
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(permissionName, "permissionName");
            Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
            return new Permission(state, permissionName, paywallIdentifier);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Permission)) {
                return false;
            }
            Permission permission = (Permission) other;
            return this.state == permission.state && Intrinsics.areEqual(this.permissionName, permission.permissionName) && Intrinsics.areEqual(this.paywallIdentifier, permission.paywallIdentifier);
        }

        public int hashCode() {
            return (((this.state.hashCode() * 31) + this.permissionName.hashCode()) * 31) + this.paywallIdentifier.hashCode();
        }

        public String toString() {
            return "Permission(state=" + this.state + ", permissionName=" + this.permissionName + ", paywallIdentifier=" + this.paywallIdentifier + ")";
        }

        public final State getState() {
            return this.state;
        }

        public final String getPermissionName() {
            return this.permissionName;
        }

        public final String getPaywallIdentifier() {
            return this.paywallIdentifier;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Permission(State state, String permissionName, String paywallIdentifier) {
            super(new SuperwallEvent.PermissionRequested(permissionName, paywallIdentifier), null);
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(permissionName, "permissionName");
            Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
            this.state = state;
            this.permissionName = permissionName;
            this.paywallIdentifier = paywallIdentifier;
            this.audienceFilterParams = MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent, com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent
        public SuperwallEvent getSuperwallPlacement() {
            int i = WhenMappings.$EnumSwitchMapping$0[this.state.ordinal()];
            if (i == 1) {
                return new SuperwallEvent.PermissionRequested(this.permissionName, this.paywallIdentifier);
            }
            if (i == 2) {
                return new SuperwallEvent.PermissionGranted(this.permissionName, this.paywallIdentifier);
            }
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            return new SuperwallEvent.PermissionDenied(this.permissionName, this.paywallIdentifier);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            return MapsKt.mapOf(TuplesKt.to("permission_name", this.permissionName), TuplesKt.to("paywall_identifier", this.paywallIdentifier));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001 B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0096@¢\u0006\u0002\u0010\u0017J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006!"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "state", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload$State;", "paywallCount", "", "<init>", "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload$State;I)V", "getState", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload$State;", "getPaywallCount", "()I", "superwallPlacement", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "getSuperwallPlacement", "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "State", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallPreload extends InternalSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;
        private final int paywallCount;
        private final State state;

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload$State;", "", "<init>", "(Ljava/lang/String;I)V", "Start", "Complete", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public enum State {
            Start,
            Complete;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

            public static EnumEntries<State> getEntries() {
                return $ENTRIES;
            }
        }

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[State.values().length];
                try {
                    iArr[State.Start.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[State.Complete.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public static /* synthetic */ PaywallPreload copy$default(PaywallPreload paywallPreload, State state, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                state = paywallPreload.state;
            }
            if ((i2 & 2) != 0) {
                i = paywallPreload.paywallCount;
            }
            return paywallPreload.copy(state, i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final State getState() {
            return this.state;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getPaywallCount() {
            return this.paywallCount;
        }

        public final PaywallPreload copy(State state, int paywallCount) {
            Intrinsics.checkNotNullParameter(state, "state");
            return new PaywallPreload(state, paywallCount);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PaywallPreload)) {
                return false;
            }
            PaywallPreload paywallPreload = (PaywallPreload) other;
            return this.state == paywallPreload.state && this.paywallCount == paywallPreload.paywallCount;
        }

        public int hashCode() {
            return (this.state.hashCode() * 31) + Integer.hashCode(this.paywallCount);
        }

        public String toString() {
            return "PaywallPreload(state=" + this.state + ", paywallCount=" + this.paywallCount + ")";
        }

        public final State getState() {
            return this.state;
        }

        public final int getPaywallCount() {
            return this.paywallCount;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallPreload(State state, int i) {
            super(new SuperwallEvent.PaywallPreloadStart(i), null);
            Intrinsics.checkNotNullParameter(state, "state");
            this.state = state;
            this.paywallCount = i;
            this.audienceFilterParams = MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent, com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent
        public SuperwallEvent getSuperwallPlacement() {
            int i = WhenMappings.$EnumSwitchMapping$0[this.state.ordinal()];
            if (i == 1) {
                return new SuperwallEvent.PaywallPreloadStart(this.paywallCount);
            }
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            return new SuperwallEvent.PaywallPreloadComplete(this.paywallCount);
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            return MapsKt.mapOf(TuplesKt.to("paywall_count", Boxing.boxInt(this.paywallCount)));
        }
    }

    /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0096@¢\u0006\u0002\u0010\u0013J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u000eHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR \u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "state", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal$State;", "<init>", "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal$State;)V", "getState", "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal$State;", "superwallPlacement", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "getSuperwallPlacement", "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "audienceFilterParams", "", "", "", "getAudienceFilterParams", "()Ljava/util/Map;", "getSuperwallParameters", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "State", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TestModeModal extends InternalSuperwallEvent {
        private final Map<String, Object> audienceFilterParams;
        private final State state;

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TestModeModal$State;", "", "<init>", "(Ljava/lang/String;I)V", "Open", "Close", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public enum State {
            Open,
            Close;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

            public static EnumEntries<State> getEntries() {
                return $ENTRIES;
            }
        }

        /* JADX INFO: compiled from: TrackableSuperwallEvent.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[State.values().length];
                try {
                    iArr[State.Open.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[State.Close.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public static /* synthetic */ TestModeModal copy$default(TestModeModal testModeModal, State state, int i, Object obj) {
            if ((i & 1) != 0) {
                state = testModeModal.state;
            }
            return testModeModal.copy(state);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final State getState() {
            return this.state;
        }

        public final TestModeModal copy(State state) {
            Intrinsics.checkNotNullParameter(state, "state");
            return new TestModeModal(state);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof TestModeModal) && this.state == ((TestModeModal) other).state;
        }

        public int hashCode() {
            return this.state.hashCode();
        }

        public String toString() {
            return "TestModeModal(state=" + this.state + ")";
        }

        public final State getState() {
            return this.state;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TestModeModal(State state) {
            super(new SuperwallEvent.TestModeModalOpen(), null);
            Intrinsics.checkNotNullParameter(state, "state");
            this.state = state;
            this.audienceFilterParams = MapsKt.emptyMap();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent, com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent
        public SuperwallEvent getSuperwallPlacement() {
            int i = WhenMappings.$EnumSwitchMapping$0[this.state.ordinal()];
            if (i == 1) {
                return new SuperwallEvent.TestModeModalOpen();
            }
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            return new SuperwallEvent.TestModeModalClose();
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.internal.trackable.Trackable
        public Object getSuperwallParameters(Continuation<? super Map<String, ? extends Object>> continuation) {
            return MapsKt.emptyMap();
        }
    }
}
