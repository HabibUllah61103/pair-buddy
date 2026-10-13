package com.superwall.sdk.analytics.superwall;

import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.messaging.Constants;
import com.superwall.sdk.config.models.Survey;
import com.superwall.sdk.config.models.SurveyOption;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.triggers.TriggerResult;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatus;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason;
import com.superwall.sdk.paywall.view.webview.WebviewError;
import com.superwall.sdk.paywall.view.webview.messaging.PageViewData;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.abstractions.product.StoreProductType;
import com.superwall.sdk.store.abstractions.transactions.StoreTransactionType;
import com.superwall.sdk.store.transactions.RestoreType;
import com.superwall.sdk.store.transactions.TransactionError;
import java.net.URI;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import me.leolin.shortcutbadger.impl.NewHtcHomeBadger;

/* JADX INFO: compiled from: SuperwallEvent.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Â\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\bI\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:G\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f\u0082\u0001eWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f\u0080\u0001\u0081\u0001\u0082\u0001\u0083\u0001\u0084\u0001\u0085\u0001\u0086\u0001\u0087\u0001\u0088\u0001\u0089\u0001\u008a\u0001\u008b\u0001\u008c\u0001\u008d\u0001\u008e\u0001\u008f\u0001\u0090\u0001\u0091\u0001\u0092\u0001\u0093\u0001\u0094\u0001\u0095\u0001\u0096\u0001\u0097\u0001\u0098\u0001\u0099\u0001\u009a\u0001\u009b\u0001\u009c\u0001\u009d\u0001¨\u0006\u009e\u0001"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "backingEvent", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;", "getBackingEvent", "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;", "canImplicitlyTriggerPaywall", "", "getCanImplicitlyTriggerPaywall", "()Z", "FirstSeen", "AppOpen", "AppLaunch", "IdentityAlias", "AppInstall", "SessionStart", "ConfigAttributes", "DeviceAttributes", "IntegrationAttributes", "IntegrationProps", "SubscriptionStatusDidChange", "AppClose", "DeepLink", "TriggerFire", "PaywallOpen", "PaywallPageView", "PaywallClose", "PaywallDecline", "TransactionStart", "TransactionFail", "TransactionAbandon", "TransactionComplete", "SubscriptionStart", "FreeTrialStart", "TransactionRestore", "Restore", "TransactionTimeout", "UserAttributes", "NonRecurringProductPurchase", "PaywallResponseLoadStart", "PaywallResponseLoadNotFound", "PaywallResponseLoadFail", "PaywallResponseLoadComplete", "PaywallWebviewLoadStart", "PaywallWebviewLoadFail", "PaywallWebviewLoadComplete", "PaywallWebviewLoadTimeout", "PaywallWebviewLoadFallback", "PaywallProductsLoadStart", "PaywallProductsLoadFail", "PaywallProductsLoadComplete", "PaywallResourceLoadFail", "PaywallPresentationRequest", "SurveyResponse", "SurveyClose", "ConfigRefresh", "ConfigFail", "ConfirmAllAssignments", "Reset", "CustomPlacement", "ShimmerViewStart", "ShimmerViewComplete", "ErrorThrown", "ExpressionResult", "TestModeModalOpen", "TestModeModalClose", "RedemptionComplete", "RedemptionFail", "RedemptionStart", "EnrichmentStart", "EnrichmentFail", "EnrichmentComplete", "ReviewRequested", "ReviewGranted", "ReviewDenied", "CustomerInfoDidChange", "PermissionRequested", "PermissionGranted", "PermissionDenied", "PaywallPreloadStart", "PaywallPreloadComplete", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$AppClose;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$AppInstall;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$AppLaunch;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$AppOpen;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ConfigAttributes;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ConfigFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ConfigRefresh;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ConfirmAllAssignments;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomPlacement;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$DeepLink;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$DeviceAttributes;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$EnrichmentComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$EnrichmentFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$EnrichmentStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ErrorThrown;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ExpressionResult;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$FirstSeen;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$FreeTrialStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IdentityAlias;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IntegrationAttributes;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IntegrationProps;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$NonRecurringProductPurchase;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallClose;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallDecline;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallOpen;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPageView;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPreloadComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPreloadStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPresentationRequest;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResourceLoadFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadNotFound;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadFallback;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadTimeout;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionDenied;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionGranted;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionRequested;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$RedemptionComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$RedemptionFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$RedemptionStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Reset;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewDenied;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewGranted;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SessionStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SubscriptionStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SubscriptionStatusDidChange;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyClose;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TestModeModalClose;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TestModeModalOpen;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionAbandon;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionRestore;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionTimeout;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TriggerFire;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$UserAttributes;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class SuperwallEvent {
    public /* synthetic */ SuperwallEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private SuperwallEvent() {
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$FirstSeen;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class FirstSeen extends SuperwallEvent {
        public FirstSeen() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "first_seen";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$AppOpen;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AppOpen extends SuperwallEvent {
        public AppOpen() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "app_open";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$AppLaunch;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AppLaunch extends SuperwallEvent {
        public AppLaunch() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "app_launch";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IdentityAlias;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class IdentityAlias extends SuperwallEvent {
        public IdentityAlias() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "identity_alias";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$AppInstall;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AppInstall extends SuperwallEvent {
        public AppInstall() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "app_install";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SessionStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SessionStart extends SuperwallEvent {
        public SessionStart() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "session_start";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ConfigAttributes;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConfigAttributes extends SuperwallEvent {
        public static final ConfigAttributes INSTANCE = new ConfigAttributes();

        private ConfigAttributes() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "config_attributes";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0004HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$DeviceAttributes;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "attributes", "", "", "", "<init>", "(Ljava/util/Map;)V", "getAttributes", "()Ljava/util/Map;", "rawName", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class DeviceAttributes extends SuperwallEvent {
        private final Map<String, Object> attributes;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ DeviceAttributes copy$default(DeviceAttributes deviceAttributes, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                map = deviceAttributes.attributes;
            }
            return deviceAttributes.copy(map);
        }

        public final Map<String, Object> component1() {
            return this.attributes;
        }

        public final DeviceAttributes copy(Map<String, ? extends Object> attributes) {
            Intrinsics.checkNotNullParameter(attributes, "attributes");
            return new DeviceAttributes(attributes);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DeviceAttributes) && Intrinsics.areEqual(this.attributes, ((DeviceAttributes) other).attributes);
        }

        public int hashCode() {
            return this.attributes.hashCode();
        }

        public String toString() {
            return "DeviceAttributes(attributes=" + this.attributes + ")";
        }

        public final Map<String, Object> getAttributes() {
            return this.attributes;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DeviceAttributes(Map<String, ? extends Object> attributes) {
            super(null);
            Intrinsics.checkNotNullParameter(attributes, "attributes");
            this.attributes = attributes;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "device_attributes";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0004HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IntegrationAttributes;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "audienceFilterParams", "", "", "", "<init>", "(Ljava/util/Map;)V", "getAudienceFilterParams", "()Ljava/util/Map;", "rawName", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class IntegrationAttributes extends SuperwallEvent {
        private final Map<String, Object> audienceFilterParams;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ IntegrationAttributes copy$default(IntegrationAttributes integrationAttributes, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                map = integrationAttributes.audienceFilterParams;
            }
            return integrationAttributes.copy(map);
        }

        public final Map<String, Object> component1() {
            return this.audienceFilterParams;
        }

        public final IntegrationAttributes copy(Map<String, ? extends Object> audienceFilterParams) {
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            return new IntegrationAttributes(audienceFilterParams);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof IntegrationAttributes) && Intrinsics.areEqual(this.audienceFilterParams, ((IntegrationAttributes) other).audienceFilterParams);
        }

        public int hashCode() {
            return this.audienceFilterParams.hashCode();
        }

        public String toString() {
            return "IntegrationAttributes(audienceFilterParams=" + this.audienceFilterParams + ")";
        }

        public final Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IntegrationAttributes(Map<String, ? extends Object> audienceFilterParams) {
            super(null);
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "integration_attributes";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Deprecated(message = "Use IntegrationAttributes instead")
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0004HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$IntegrationProps;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "audienceFilterParams", "", "", "", "<init>", "(Ljava/util/Map;)V", "getAudienceFilterParams", "()Ljava/util/Map;", "rawName", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class IntegrationProps extends SuperwallEvent {
        private final Map<String, Object> audienceFilterParams;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ IntegrationProps copy$default(IntegrationProps integrationProps, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                map = integrationProps.audienceFilterParams;
            }
            return integrationProps.copy(map);
        }

        public final Map<String, Object> component1() {
            return this.audienceFilterParams;
        }

        public final IntegrationProps copy(Map<String, ? extends Object> audienceFilterParams) {
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            return new IntegrationProps(audienceFilterParams);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof IntegrationProps) && Intrinsics.areEqual(this.audienceFilterParams, ((IntegrationProps) other).audienceFilterParams);
        }

        public int hashCode() {
            return this.audienceFilterParams.hashCode();
        }

        public String toString() {
            return "IntegrationProps(audienceFilterParams=" + this.audienceFilterParams + ")";
        }

        public final Map<String, Object> getAudienceFilterParams() {
            return this.audienceFilterParams;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IntegrationProps(Map<String, ? extends Object> audienceFilterParams) {
            super(null);
            Intrinsics.checkNotNullParameter(audienceFilterParams, "audienceFilterParams");
            this.audienceFilterParams = audienceFilterParams;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "integration_attributes";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SubscriptionStatusDidChange;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SubscriptionStatusDidChange extends SuperwallEvent {
        public SubscriptionStatusDidChange() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "subscriptionStatus_didChange";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$AppClose;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AppClose extends SuperwallEvent {
        public AppClose() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "app_close";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$DeepLink;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "uri", "Ljava/net/URI;", "<init>", "(Ljava/net/URI;)V", "getUri", "()Ljava/net/URI;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class DeepLink extends SuperwallEvent {
        private final URI uri;

        public static /* synthetic */ DeepLink copy$default(DeepLink deepLink, URI uri, int i, Object obj) {
            if ((i & 1) != 0) {
                uri = deepLink.uri;
            }
            return deepLink.copy(uri);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final URI getUri() {
            return this.uri;
        }

        public final DeepLink copy(URI uri) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            return new DeepLink(uri);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DeepLink) && Intrinsics.areEqual(this.uri, ((DeepLink) other).uri);
        }

        public int hashCode() {
            return this.uri.hashCode();
        }

        public String toString() {
            return "DeepLink(uri=" + this.uri + ")";
        }

        public final URI getUri() {
            return this.uri;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DeepLink(URI uri) {
            super(null);
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.uri = uri;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "deepLink_open";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TriggerFire;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "placementName", "", "result", "Lcom/superwall/sdk/models/triggers/TriggerResult;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerResult;)V", "getPlacementName", "()Ljava/lang/String;", "getResult", "()Lcom/superwall/sdk/models/triggers/TriggerResult;", "rawName", "getRawName", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TriggerFire extends SuperwallEvent {
        private final String placementName;
        private final TriggerResult result;

        public static /* synthetic */ TriggerFire copy$default(TriggerFire triggerFire, String str, TriggerResult triggerResult, int i, Object obj) {
            if ((i & 1) != 0) {
                str = triggerFire.placementName;
            }
            if ((i & 2) != 0) {
                triggerResult = triggerFire.result;
            }
            return triggerFire.copy(str, triggerResult);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPlacementName() {
            return this.placementName;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final TriggerResult getResult() {
            return this.result;
        }

        public final TriggerFire copy(String placementName, TriggerResult result) {
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            Intrinsics.checkNotNullParameter(result, "result");
            return new TriggerFire(placementName, result);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TriggerFire)) {
                return false;
            }
            TriggerFire triggerFire = (TriggerFire) other;
            return Intrinsics.areEqual(this.placementName, triggerFire.placementName) && Intrinsics.areEqual(this.result, triggerFire.result);
        }

        public int hashCode() {
            return (this.placementName.hashCode() * 31) + this.result.hashCode();
        }

        public String toString() {
            return "TriggerFire(placementName=" + this.placementName + ", result=" + this.result + ")";
        }

        public final String getPlacementName() {
            return this.placementName;
        }

        public final TriggerResult getResult() {
            return this.result;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TriggerFire(String placementName, TriggerResult result) {
            super(null);
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            Intrinsics.checkNotNullParameter(result, "result");
            this.placementName = placementName;
            this.result = result;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "trigger_fire";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallOpen;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallOpen extends SuperwallEvent {
        private final PaywallInfo paywallInfo;

        public static /* synthetic */ PaywallOpen copy$default(PaywallOpen paywallOpen, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                paywallInfo = paywallOpen.paywallInfo;
            }
            return paywallOpen.copy(paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PaywallOpen copy(PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new PaywallOpen(paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PaywallOpen) && Intrinsics.areEqual(this.paywallInfo, ((PaywallOpen) other).paywallInfo);
        }

        public int hashCode() {
            return this.paywallInfo.hashCode();
        }

        public String toString() {
            return "PaywallOpen(paywallInfo=" + this.paywallInfo + ")";
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallOpen(PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywall_open";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPageView;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "data", "Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getData", "()Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallPageView extends SuperwallEvent {
        private final PageViewData data;
        private final PaywallInfo paywallInfo;

        public static /* synthetic */ PaywallPageView copy$default(PaywallPageView paywallPageView, PaywallInfo paywallInfo, PageViewData pageViewData, int i, Object obj) {
            if ((i & 1) != 0) {
                paywallInfo = paywallPageView.paywallInfo;
            }
            if ((i & 2) != 0) {
                pageViewData = paywallPageView.data;
            }
            return paywallPageView.copy(paywallInfo, pageViewData);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PageViewData getData() {
            return this.data;
        }

        public final PaywallPageView copy(PaywallInfo paywallInfo, PageViewData data) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            Intrinsics.checkNotNullParameter(data, "data");
            return new PaywallPageView(paywallInfo, data);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PaywallPageView)) {
                return false;
            }
            PaywallPageView paywallPageView = (PaywallPageView) other;
            return Intrinsics.areEqual(this.paywallInfo, paywallPageView.paywallInfo) && Intrinsics.areEqual(this.data, paywallPageView.data);
        }

        public int hashCode() {
            return (this.paywallInfo.hashCode() * 31) + this.data.hashCode();
        }

        public String toString() {
            return "PaywallPageView(paywallInfo=" + this.paywallInfo + ", data=" + this.data + ")";
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PageViewData getData() {
            return this.data;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallPageView(PaywallInfo paywallInfo, PageViewData data) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            Intrinsics.checkNotNullParameter(data, "data");
            this.paywallInfo = paywallInfo;
            this.data = data;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.PaywallPageView.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallClose;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallClose extends SuperwallEvent {
        private final PaywallInfo paywallInfo;

        public static /* synthetic */ PaywallClose copy$default(PaywallClose paywallClose, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                paywallInfo = paywallClose.paywallInfo;
            }
            return paywallClose.copy(paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PaywallClose copy(PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new PaywallClose(paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PaywallClose) && Intrinsics.areEqual(this.paywallInfo, ((PaywallClose) other).paywallInfo);
        }

        public int hashCode() {
            return this.paywallInfo.hashCode();
        }

        public String toString() {
            return "PaywallClose(paywallInfo=" + this.paywallInfo + ")";
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallClose(PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywall_close";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallDecline;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallDecline extends SuperwallEvent {
        private final PaywallInfo paywallInfo;

        public static /* synthetic */ PaywallDecline copy$default(PaywallDecline paywallDecline, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                paywallInfo = paywallDecline.paywallInfo;
            }
            return paywallDecline.copy(paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PaywallDecline copy(PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new PaywallDecline(paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PaywallDecline) && Intrinsics.areEqual(this.paywallInfo, ((PaywallDecline) other).paywallInfo);
        }

        public int hashCode() {
            return this.paywallInfo.hashCode();
        }

        public String toString() {
            return "PaywallDecline(paywallInfo=" + this.paywallInfo + ")";
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallDecline(PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywall_decline";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TransactionStart extends SuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final StoreProductType product;

        public static /* synthetic */ TransactionStart copy$default(TransactionStart transactionStart, StoreProductType storeProductType, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                storeProductType = transactionStart.product;
            }
            if ((i & 2) != 0) {
                paywallInfo = transactionStart.paywallInfo;
            }
            return transactionStart.copy(storeProductType, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final StoreProductType getProduct() {
            return this.product;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final TransactionStart copy(StoreProductType product, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new TransactionStart(product, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TransactionStart)) {
                return false;
            }
            TransactionStart transactionStart = (TransactionStart) other;
            return Intrinsics.areEqual(this.product, transactionStart.product) && Intrinsics.areEqual(this.paywallInfo, transactionStart.paywallInfo);
        }

        public int hashCode() {
            return (this.product.hashCode() * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "TransactionStart(product=" + this.product + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final StoreProductType getProduct() {
            return this.product;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransactionStart(StoreProductType product, PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.product = product;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "transaction_start";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Lcom/superwall/sdk/store/transactions/TransactionError;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/store/transactions/TransactionError;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getError", "()Lcom/superwall/sdk/store/transactions/TransactionError;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TransactionFail extends SuperwallEvent {
        private final TransactionError error;
        private final PaywallInfo paywallInfo;

        public static /* synthetic */ TransactionFail copy$default(TransactionFail transactionFail, TransactionError transactionError, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                transactionError = transactionFail.error;
            }
            if ((i & 2) != 0) {
                paywallInfo = transactionFail.paywallInfo;
            }
            return transactionFail.copy(transactionError, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final TransactionError getError() {
            return this.error;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final TransactionFail copy(TransactionError error, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(error, "error");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new TransactionFail(error, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TransactionFail)) {
                return false;
            }
            TransactionFail transactionFail = (TransactionFail) other;
            return Intrinsics.areEqual(this.error, transactionFail.error) && Intrinsics.areEqual(this.paywallInfo, transactionFail.paywallInfo);
        }

        public int hashCode() {
            return (this.error.hashCode() * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "TransactionFail(error=" + this.error + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final TransactionError getError() {
            return this.error;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransactionFail(TransactionError error, PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(error, "error");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.error = error;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "transaction_fail";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionAbandon;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TransactionAbandon extends SuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final StoreProductType product;

        public static /* synthetic */ TransactionAbandon copy$default(TransactionAbandon transactionAbandon, StoreProductType storeProductType, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                storeProductType = transactionAbandon.product;
            }
            if ((i & 2) != 0) {
                paywallInfo = transactionAbandon.paywallInfo;
            }
            return transactionAbandon.copy(storeProductType, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final StoreProductType getProduct() {
            return this.product;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final TransactionAbandon copy(StoreProductType product, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new TransactionAbandon(product, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TransactionAbandon)) {
                return false;
            }
            TransactionAbandon transactionAbandon = (TransactionAbandon) other;
            return Intrinsics.areEqual(this.product, transactionAbandon.product) && Intrinsics.areEqual(this.paywallInfo, transactionAbandon.paywallInfo);
        }

        public int hashCode() {
            return (this.product.hashCode() * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "TransactionAbandon(product=" + this.product + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final StoreProductType getProduct() {
            return this.product;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransactionAbandon(StoreProductType product, PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.product = product;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "transaction_abandon";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J)\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0011HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "transaction", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getTransaction", "()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TransactionComplete extends SuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final StoreProductType product;
        private final StoreTransactionType transaction;

        public static /* synthetic */ TransactionComplete copy$default(TransactionComplete transactionComplete, StoreTransactionType storeTransactionType, StoreProductType storeProductType, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                storeTransactionType = transactionComplete.transaction;
            }
            if ((i & 2) != 0) {
                storeProductType = transactionComplete.product;
            }
            if ((i & 4) != 0) {
                paywallInfo = transactionComplete.paywallInfo;
            }
            return transactionComplete.copy(storeTransactionType, storeProductType, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final StoreTransactionType getTransaction() {
            return this.transaction;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final StoreProductType getProduct() {
            return this.product;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final TransactionComplete copy(StoreTransactionType transaction, StoreProductType product, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new TransactionComplete(transaction, product, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TransactionComplete)) {
                return false;
            }
            TransactionComplete transactionComplete = (TransactionComplete) other;
            return Intrinsics.areEqual(this.transaction, transactionComplete.transaction) && Intrinsics.areEqual(this.product, transactionComplete.product) && Intrinsics.areEqual(this.paywallInfo, transactionComplete.paywallInfo);
        }

        public int hashCode() {
            StoreTransactionType storeTransactionType = this.transaction;
            return ((((storeTransactionType == null ? 0 : storeTransactionType.hashCode()) * 31) + this.product.hashCode()) * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "TransactionComplete(transaction=" + this.transaction + ", product=" + this.product + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final StoreTransactionType getTransaction() {
            return this.transaction;
        }

        public final StoreProductType getProduct() {
            return this.product;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransactionComplete(StoreTransactionType storeTransactionType, StoreProductType product, PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.transaction = storeTransactionType;
            this.product = product;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "transaction_complete";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SubscriptionStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class SubscriptionStart extends SuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final StoreProduct product;

        public static /* synthetic */ SubscriptionStart copy$default(SubscriptionStart subscriptionStart, StoreProduct storeProduct, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                storeProduct = subscriptionStart.product;
            }
            if ((i & 2) != 0) {
                paywallInfo = subscriptionStart.paywallInfo;
            }
            return subscriptionStart.copy(storeProduct, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final StoreProduct getProduct() {
            return this.product;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final SubscriptionStart copy(StoreProduct product, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new SubscriptionStart(product, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SubscriptionStart)) {
                return false;
            }
            SubscriptionStart subscriptionStart = (SubscriptionStart) other;
            return Intrinsics.areEqual(this.product, subscriptionStart.product) && Intrinsics.areEqual(this.paywallInfo, subscriptionStart.paywallInfo);
        }

        public int hashCode() {
            return (this.product.hashCode() * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "SubscriptionStart(product=" + this.product + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final StoreProduct getProduct() {
            return this.product;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubscriptionStart(StoreProduct product, PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.product = product;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "subscription_start";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$FreeTrialStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getProduct", "()Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class FreeTrialStart extends SuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final StoreProduct product;

        public static /* synthetic */ FreeTrialStart copy$default(FreeTrialStart freeTrialStart, StoreProduct storeProduct, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                storeProduct = freeTrialStart.product;
            }
            if ((i & 2) != 0) {
                paywallInfo = freeTrialStart.paywallInfo;
            }
            return freeTrialStart.copy(storeProduct, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final StoreProduct getProduct() {
            return this.product;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final FreeTrialStart copy(StoreProduct product, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new FreeTrialStart(product, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof FreeTrialStart)) {
                return false;
            }
            FreeTrialStart freeTrialStart = (FreeTrialStart) other;
            return Intrinsics.areEqual(this.product, freeTrialStart.product) && Intrinsics.areEqual(this.paywallInfo, freeTrialStart.paywallInfo);
        }

        public int hashCode() {
            return (this.product.hashCode() * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "FreeTrialStart(product=" + this.product + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final StoreProduct getProduct() {
            return this.product;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FreeTrialStart(StoreProduct product, PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.product = product;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "freeTrial_start";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionRestore;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "restoreType", "Lcom/superwall/sdk/store/transactions/RestoreType;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/store/transactions/RestoreType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getRestoreType", "()Lcom/superwall/sdk/store/transactions/RestoreType;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TransactionRestore extends SuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final RestoreType restoreType;

        public static /* synthetic */ TransactionRestore copy$default(TransactionRestore transactionRestore, RestoreType restoreType, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                restoreType = transactionRestore.restoreType;
            }
            if ((i & 2) != 0) {
                paywallInfo = transactionRestore.paywallInfo;
            }
            return transactionRestore.copy(restoreType, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final RestoreType getRestoreType() {
            return this.restoreType;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final TransactionRestore copy(RestoreType restoreType, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(restoreType, "restoreType");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new TransactionRestore(restoreType, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TransactionRestore)) {
                return false;
            }
            TransactionRestore transactionRestore = (TransactionRestore) other;
            return Intrinsics.areEqual(this.restoreType, transactionRestore.restoreType) && Intrinsics.areEqual(this.paywallInfo, transactionRestore.paywallInfo);
        }

        public int hashCode() {
            return (this.restoreType.hashCode() * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "TransactionRestore(restoreType=" + this.restoreType + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final RestoreType getRestoreType() {
            return this.restoreType;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransactionRestore(RestoreType restoreType, PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(restoreType, "restoreType");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.restoreType = restoreType;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "transaction_restore";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "Start", "Fail", "Complete", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore$Complete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore$Fail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore$Start;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Restore extends SuperwallEvent {
        public /* synthetic */ Restore(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: SuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore$Start;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Start extends Restore {
            public static final Start INSTANCE = new Start();

            private Start() {
                super(null);
            }

            @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
            public String getRawName() {
                return SuperwallEvents.RestoreStart.getRawName();
            }
        }

        private Restore() {
            super(null);
        }

        /* JADX INFO: compiled from: SuperwallEvent.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore$Fail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore;", "reason", "", "<init>", "(Ljava/lang/String;)V", "getReason", "()Ljava/lang/String;", "rawName", "getRawName", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Fail extends Restore {
            private final String reason;

            public static /* synthetic */ Fail copy$default(Fail fail, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = fail.reason;
                }
                return fail.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getReason() {
                return this.reason;
            }

            public final Fail copy(String reason) {
                Intrinsics.checkNotNullParameter(reason, "reason");
                return new Fail(reason);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Fail) && Intrinsics.areEqual(this.reason, ((Fail) other).reason);
            }

            public int hashCode() {
                return this.reason.hashCode();
            }

            public String toString() {
                return "Fail(reason=" + this.reason + ")";
            }

            public final String getReason() {
                return this.reason;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Fail(String reason) {
                super(null);
                Intrinsics.checkNotNullParameter(reason, "reason");
                this.reason = reason;
            }

            @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
            public String getRawName() {
                return SuperwallEvents.RestoreFail.getRawName();
            }
        }

        /* JADX INFO: compiled from: SuperwallEvent.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore$Complete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Restore;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Complete extends Restore {
            public static final Complete INSTANCE = new Complete();

            private Complete() {
                super(null);
            }

            @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
            public String getRawName() {
                return SuperwallEvents.RestoreComplete.getRawName();
            }
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionTimeout;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TransactionTimeout extends SuperwallEvent {
        private final PaywallInfo paywallInfo;

        public static /* synthetic */ TransactionTimeout copy$default(TransactionTimeout transactionTimeout, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                paywallInfo = transactionTimeout.paywallInfo;
            }
            return transactionTimeout.copy(paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final TransactionTimeout copy(PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new TransactionTimeout(paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof TransactionTimeout) && Intrinsics.areEqual(this.paywallInfo, ((TransactionTimeout) other).paywallInfo);
        }

        public int hashCode() {
            return this.paywallInfo.hashCode();
        }

        public String toString() {
            return "TransactionTimeout(paywallInfo=" + this.paywallInfo + ")";
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransactionTimeout(PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "transaction_timeout";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0004HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$UserAttributes;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "attributes", "", "", "", "<init>", "(Ljava/util/Map;)V", "getAttributes", "()Ljava/util/Map;", "rawName", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class UserAttributes extends SuperwallEvent {
        private final Map<String, Object> attributes;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ UserAttributes copy$default(UserAttributes userAttributes, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                map = userAttributes.attributes;
            }
            return userAttributes.copy(map);
        }

        public final Map<String, Object> component1() {
            return this.attributes;
        }

        public final UserAttributes copy(Map<String, ? extends Object> attributes) {
            Intrinsics.checkNotNullParameter(attributes, "attributes");
            return new UserAttributes(attributes);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof UserAttributes) && Intrinsics.areEqual(this.attributes, ((UserAttributes) other).attributes);
        }

        public int hashCode() {
            return this.attributes.hashCode();
        }

        public String toString() {
            return "UserAttributes(attributes=" + this.attributes + ")";
        }

        public final Map<String, Object> getAttributes() {
            return this.attributes;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UserAttributes(Map<String, ? extends Object> attributes) {
            super(null);
            Intrinsics.checkNotNullParameter(attributes, "attributes");
            this.attributes = attributes;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "user_attributes";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$NonRecurringProductPurchase;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "product", "Lcom/superwall/sdk/analytics/superwall/TransactionProduct;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/analytics/superwall/TransactionProduct;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getProduct", "()Lcom/superwall/sdk/analytics/superwall/TransactionProduct;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class NonRecurringProductPurchase extends SuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final TransactionProduct product;

        public static /* synthetic */ NonRecurringProductPurchase copy$default(NonRecurringProductPurchase nonRecurringProductPurchase, TransactionProduct transactionProduct, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                transactionProduct = nonRecurringProductPurchase.product;
            }
            if ((i & 2) != 0) {
                paywallInfo = nonRecurringProductPurchase.paywallInfo;
            }
            return nonRecurringProductPurchase.copy(transactionProduct, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final TransactionProduct getProduct() {
            return this.product;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final NonRecurringProductPurchase copy(TransactionProduct product, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new NonRecurringProductPurchase(product, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof NonRecurringProductPurchase)) {
                return false;
            }
            NonRecurringProductPurchase nonRecurringProductPurchase = (NonRecurringProductPurchase) other;
            return Intrinsics.areEqual(this.product, nonRecurringProductPurchase.product) && Intrinsics.areEqual(this.paywallInfo, nonRecurringProductPurchase.paywallInfo);
        }

        public int hashCode() {
            return (this.product.hashCode() * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "NonRecurringProductPurchase(product=" + this.product + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final TransactionProduct getProduct() {
            return this.product;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NonRecurringProductPurchase(TransactionProduct product, PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.product = product;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "nonRecurringProduct_purchase";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "triggeredPlacementName", "", "<init>", "(Ljava/lang/String;)V", "getTriggeredPlacementName", "()Ljava/lang/String;", "rawName", "getRawName", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallResponseLoadStart extends SuperwallEvent {
        private final String triggeredPlacementName;

        public static /* synthetic */ PaywallResponseLoadStart copy$default(PaywallResponseLoadStart paywallResponseLoadStart, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = paywallResponseLoadStart.triggeredPlacementName;
            }
            return paywallResponseLoadStart.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        public final PaywallResponseLoadStart copy(String triggeredPlacementName) {
            return new PaywallResponseLoadStart(triggeredPlacementName);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PaywallResponseLoadStart) && Intrinsics.areEqual(this.triggeredPlacementName, ((PaywallResponseLoadStart) other).triggeredPlacementName);
        }

        public int hashCode() {
            String str = this.triggeredPlacementName;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "PaywallResponseLoadStart(triggeredPlacementName=" + this.triggeredPlacementName + ")";
        }

        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        public PaywallResponseLoadStart(String str) {
            super(null);
            this.triggeredPlacementName = str;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallResponseLoad_start";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadNotFound;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "triggeredPlacementName", "", "<init>", "(Ljava/lang/String;)V", "getTriggeredPlacementName", "()Ljava/lang/String;", "rawName", "getRawName", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallResponseLoadNotFound extends SuperwallEvent {
        private final String triggeredPlacementName;

        public static /* synthetic */ PaywallResponseLoadNotFound copy$default(PaywallResponseLoadNotFound paywallResponseLoadNotFound, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = paywallResponseLoadNotFound.triggeredPlacementName;
            }
            return paywallResponseLoadNotFound.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        public final PaywallResponseLoadNotFound copy(String triggeredPlacementName) {
            return new PaywallResponseLoadNotFound(triggeredPlacementName);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PaywallResponseLoadNotFound) && Intrinsics.areEqual(this.triggeredPlacementName, ((PaywallResponseLoadNotFound) other).triggeredPlacementName);
        }

        public int hashCode() {
            String str = this.triggeredPlacementName;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "PaywallResponseLoadNotFound(triggeredPlacementName=" + this.triggeredPlacementName + ")";
        }

        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        public PaywallResponseLoadNotFound(String str) {
            super(null);
            this.triggeredPlacementName = str;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallResponseLoad_notFound";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "triggeredPlacementName", "", "<init>", "(Ljava/lang/String;)V", "getTriggeredPlacementName", "()Ljava/lang/String;", "rawName", "getRawName", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallResponseLoadFail extends SuperwallEvent {
        private final String triggeredPlacementName;

        public static /* synthetic */ PaywallResponseLoadFail copy$default(PaywallResponseLoadFail paywallResponseLoadFail, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = paywallResponseLoadFail.triggeredPlacementName;
            }
            return paywallResponseLoadFail.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        public final PaywallResponseLoadFail copy(String triggeredPlacementName) {
            return new PaywallResponseLoadFail(triggeredPlacementName);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PaywallResponseLoadFail) && Intrinsics.areEqual(this.triggeredPlacementName, ((PaywallResponseLoadFail) other).triggeredPlacementName);
        }

        public int hashCode() {
            String str = this.triggeredPlacementName;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "PaywallResponseLoadFail(triggeredPlacementName=" + this.triggeredPlacementName + ")";
        }

        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        public PaywallResponseLoadFail(String str) {
            super(null);
            this.triggeredPlacementName = str;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallResponseLoad_fail";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResponseLoadComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "triggeredPlacementName", "", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getTriggeredPlacementName", "()Ljava/lang/String;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "getRawName", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallResponseLoadComplete extends SuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final String triggeredPlacementName;

        public static /* synthetic */ PaywallResponseLoadComplete copy$default(PaywallResponseLoadComplete paywallResponseLoadComplete, String str, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                str = paywallResponseLoadComplete.triggeredPlacementName;
            }
            if ((i & 2) != 0) {
                paywallInfo = paywallResponseLoadComplete.paywallInfo;
            }
            return paywallResponseLoadComplete.copy(str, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PaywallResponseLoadComplete copy(String triggeredPlacementName, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new PaywallResponseLoadComplete(triggeredPlacementName, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PaywallResponseLoadComplete)) {
                return false;
            }
            PaywallResponseLoadComplete paywallResponseLoadComplete = (PaywallResponseLoadComplete) other;
            return Intrinsics.areEqual(this.triggeredPlacementName, paywallResponseLoadComplete.triggeredPlacementName) && Intrinsics.areEqual(this.paywallInfo, paywallResponseLoadComplete.paywallInfo);
        }

        public int hashCode() {
            String str = this.triggeredPlacementName;
            return ((str == null ? 0 : str.hashCode()) * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "PaywallResponseLoadComplete(triggeredPlacementName=" + this.triggeredPlacementName + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallResponseLoadComplete(String str, PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.triggeredPlacementName = str;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallResponseLoad_complete";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallWebviewLoadStart extends SuperwallEvent {
        private final PaywallInfo paywallInfo;

        public static /* synthetic */ PaywallWebviewLoadStart copy$default(PaywallWebviewLoadStart paywallWebviewLoadStart, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                paywallInfo = paywallWebviewLoadStart.paywallInfo;
            }
            return paywallWebviewLoadStart.copy(paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PaywallWebviewLoadStart copy(PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new PaywallWebviewLoadStart(paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PaywallWebviewLoadStart) && Intrinsics.areEqual(this.paywallInfo, ((PaywallWebviewLoadStart) other).paywallInfo);
        }

        public int hashCode() {
            return this.paywallInfo.hashCode();
        }

        public String toString() {
            return "PaywallWebviewLoadStart(paywallInfo=" + this.paywallInfo + ")";
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallWebviewLoadStart(PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallWebviewLoad_start";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "errorMessage", "Lcom/superwall/sdk/paywall/view/webview/WebviewError;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/paywall/view/webview/WebviewError;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getErrorMessage", "()Lcom/superwall/sdk/paywall/view/webview/WebviewError;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallWebviewLoadFail extends SuperwallEvent {
        private final WebviewError errorMessage;
        private final PaywallInfo paywallInfo;

        public static /* synthetic */ PaywallWebviewLoadFail copy$default(PaywallWebviewLoadFail paywallWebviewLoadFail, PaywallInfo paywallInfo, WebviewError webviewError, int i, Object obj) {
            if ((i & 1) != 0) {
                paywallInfo = paywallWebviewLoadFail.paywallInfo;
            }
            if ((i & 2) != 0) {
                webviewError = paywallWebviewLoadFail.errorMessage;
            }
            return paywallWebviewLoadFail.copy(paywallInfo, webviewError);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final WebviewError getErrorMessage() {
            return this.errorMessage;
        }

        public final PaywallWebviewLoadFail copy(PaywallInfo paywallInfo, WebviewError errorMessage) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new PaywallWebviewLoadFail(paywallInfo, errorMessage);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PaywallWebviewLoadFail)) {
                return false;
            }
            PaywallWebviewLoadFail paywallWebviewLoadFail = (PaywallWebviewLoadFail) other;
            return Intrinsics.areEqual(this.paywallInfo, paywallWebviewLoadFail.paywallInfo) && Intrinsics.areEqual(this.errorMessage, paywallWebviewLoadFail.errorMessage);
        }

        public int hashCode() {
            int iHashCode = this.paywallInfo.hashCode() * 31;
            WebviewError webviewError = this.errorMessage;
            return iHashCode + (webviewError == null ? 0 : webviewError.hashCode());
        }

        public String toString() {
            return "PaywallWebviewLoadFail(paywallInfo=" + this.paywallInfo + ", errorMessage=" + this.errorMessage + ")";
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final WebviewError getErrorMessage() {
            return this.errorMessage;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallWebviewLoadFail(PaywallInfo paywallInfo, WebviewError webviewError) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.paywallInfo = paywallInfo;
            this.errorMessage = webviewError;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallWebviewLoad_fail";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallWebviewLoadComplete extends SuperwallEvent {
        private final PaywallInfo paywallInfo;

        public static /* synthetic */ PaywallWebviewLoadComplete copy$default(PaywallWebviewLoadComplete paywallWebviewLoadComplete, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                paywallInfo = paywallWebviewLoadComplete.paywallInfo;
            }
            return paywallWebviewLoadComplete.copy(paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PaywallWebviewLoadComplete copy(PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new PaywallWebviewLoadComplete(paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PaywallWebviewLoadComplete) && Intrinsics.areEqual(this.paywallInfo, ((PaywallWebviewLoadComplete) other).paywallInfo);
        }

        public int hashCode() {
            return this.paywallInfo.hashCode();
        }

        public String toString() {
            return "PaywallWebviewLoadComplete(paywallInfo=" + this.paywallInfo + ")";
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallWebviewLoadComplete(PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallWebviewLoad_complete";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Deprecated(message = "Due to confusion this event was causing we're deprecating it's usage")
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadTimeout;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallWebviewLoadTimeout extends SuperwallEvent {
        private final PaywallInfo paywallInfo;

        public static /* synthetic */ PaywallWebviewLoadTimeout copy$default(PaywallWebviewLoadTimeout paywallWebviewLoadTimeout, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                paywallInfo = paywallWebviewLoadTimeout.paywallInfo;
            }
            return paywallWebviewLoadTimeout.copy(paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PaywallWebviewLoadTimeout copy(PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new PaywallWebviewLoadTimeout(paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PaywallWebviewLoadTimeout) && Intrinsics.areEqual(this.paywallInfo, ((PaywallWebviewLoadTimeout) other).paywallInfo);
        }

        public int hashCode() {
            return this.paywallInfo.hashCode();
        }

        public String toString() {
            return "PaywallWebviewLoadTimeout(paywallInfo=" + this.paywallInfo + ")";
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallWebviewLoadTimeout(PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallWebviewLoad_timeout";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallWebviewLoadFallback;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallWebviewLoadFallback extends SuperwallEvent {
        private final PaywallInfo paywallInfo;

        public static /* synthetic */ PaywallWebviewLoadFallback copy$default(PaywallWebviewLoadFallback paywallWebviewLoadFallback, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                paywallInfo = paywallWebviewLoadFallback.paywallInfo;
            }
            return paywallWebviewLoadFallback.copy(paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PaywallWebviewLoadFallback copy(PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new PaywallWebviewLoadFallback(paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PaywallWebviewLoadFallback) && Intrinsics.areEqual(this.paywallInfo, ((PaywallWebviewLoadFallback) other).paywallInfo);
        }

        public int hashCode() {
            return this.paywallInfo.hashCode();
        }

        public String toString() {
            return "PaywallWebviewLoadFallback(paywallInfo=" + this.paywallInfo + ")";
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallWebviewLoadFallback(PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.PaywallWebviewLoadFallback.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "triggeredPlacementName", "", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getTriggeredPlacementName", "()Ljava/lang/String;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "getRawName", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallProductsLoadStart extends SuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final String triggeredPlacementName;

        public static /* synthetic */ PaywallProductsLoadStart copy$default(PaywallProductsLoadStart paywallProductsLoadStart, String str, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                str = paywallProductsLoadStart.triggeredPlacementName;
            }
            if ((i & 2) != 0) {
                paywallInfo = paywallProductsLoadStart.paywallInfo;
            }
            return paywallProductsLoadStart.copy(str, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PaywallProductsLoadStart copy(String triggeredPlacementName, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new PaywallProductsLoadStart(triggeredPlacementName, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PaywallProductsLoadStart)) {
                return false;
            }
            PaywallProductsLoadStart paywallProductsLoadStart = (PaywallProductsLoadStart) other;
            return Intrinsics.areEqual(this.triggeredPlacementName, paywallProductsLoadStart.triggeredPlacementName) && Intrinsics.areEqual(this.paywallInfo, paywallProductsLoadStart.paywallInfo);
        }

        public int hashCode() {
            String str = this.triggeredPlacementName;
            return ((str == null ? 0 : str.hashCode()) * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "PaywallProductsLoadStart(triggeredPlacementName=" + this.triggeredPlacementName + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallProductsLoadStart(String str, PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.triggeredPlacementName = str;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallProductsLoad_start";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J+\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\n¨\u0006\u001b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "errorMessage", "", "triggeredPlacementName", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getErrorMessage", "()Ljava/lang/String;", "getTriggeredPlacementName", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "getRawName", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallProductsLoadFail extends SuperwallEvent {
        private final String errorMessage;
        private final PaywallInfo paywallInfo;
        private final String triggeredPlacementName;

        public static /* synthetic */ PaywallProductsLoadFail copy$default(PaywallProductsLoadFail paywallProductsLoadFail, String str, String str2, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                str = paywallProductsLoadFail.errorMessage;
            }
            if ((i & 2) != 0) {
                str2 = paywallProductsLoadFail.triggeredPlacementName;
            }
            if ((i & 4) != 0) {
                paywallInfo = paywallProductsLoadFail.paywallInfo;
            }
            return paywallProductsLoadFail.copy(str, str2, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getErrorMessage() {
            return this.errorMessage;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PaywallProductsLoadFail copy(String errorMessage, String triggeredPlacementName, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new PaywallProductsLoadFail(errorMessage, triggeredPlacementName, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PaywallProductsLoadFail)) {
                return false;
            }
            PaywallProductsLoadFail paywallProductsLoadFail = (PaywallProductsLoadFail) other;
            return Intrinsics.areEqual(this.errorMessage, paywallProductsLoadFail.errorMessage) && Intrinsics.areEqual(this.triggeredPlacementName, paywallProductsLoadFail.triggeredPlacementName) && Intrinsics.areEqual(this.paywallInfo, paywallProductsLoadFail.paywallInfo);
        }

        public int hashCode() {
            String str = this.errorMessage;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.triggeredPlacementName;
            return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "PaywallProductsLoadFail(errorMessage=" + this.errorMessage + ", triggeredPlacementName=" + this.triggeredPlacementName + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final String getErrorMessage() {
            return this.errorMessage;
        }

        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallProductsLoadFail(String str, String str2, PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.errorMessage = str;
            this.triggeredPlacementName = str2;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallProductsLoad_fail";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallProductsLoadComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "triggeredPlacementName", "", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getTriggeredPlacementName", "()Ljava/lang/String;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "getRawName", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallProductsLoadComplete extends SuperwallEvent {
        private final PaywallInfo paywallInfo;
        private final String triggeredPlacementName;

        public static /* synthetic */ PaywallProductsLoadComplete copy$default(PaywallProductsLoadComplete paywallProductsLoadComplete, String str, PaywallInfo paywallInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                str = paywallProductsLoadComplete.triggeredPlacementName;
            }
            if ((i & 2) != 0) {
                paywallInfo = paywallProductsLoadComplete.paywallInfo;
            }
            return paywallProductsLoadComplete.copy(str, paywallInfo);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        public final PaywallProductsLoadComplete copy(String triggeredPlacementName, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            return new PaywallProductsLoadComplete(triggeredPlacementName, paywallInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PaywallProductsLoadComplete)) {
                return false;
            }
            PaywallProductsLoadComplete paywallProductsLoadComplete = (PaywallProductsLoadComplete) other;
            return Intrinsics.areEqual(this.triggeredPlacementName, paywallProductsLoadComplete.triggeredPlacementName) && Intrinsics.areEqual(this.paywallInfo, paywallProductsLoadComplete.paywallInfo);
        }

        public int hashCode() {
            String str = this.triggeredPlacementName;
            return ((str == null ? 0 : str.hashCode()) * 31) + this.paywallInfo.hashCode();
        }

        public String toString() {
            return "PaywallProductsLoadComplete(triggeredPlacementName=" + this.triggeredPlacementName + ", paywallInfo=" + this.paywallInfo + ")";
        }

        public final String getTriggeredPlacementName() {
            return this.triggeredPlacementName;
        }

        public final PaywallInfo getPaywallInfo() {
            return this.paywallInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallProductsLoadComplete(String str, PaywallInfo paywallInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.triggeredPlacementName = str;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallProductsLoad_complete";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0014\u0010\n\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallResourceLoadFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", ImagesContract.URL, "", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getError", "rawName", "getRawName", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallResourceLoadFail extends SuperwallEvent {
        private final String error;
        private final String url;

        public static /* synthetic */ PaywallResourceLoadFail copy$default(PaywallResourceLoadFail paywallResourceLoadFail, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = paywallResourceLoadFail.url;
            }
            if ((i & 2) != 0) {
                str2 = paywallResourceLoadFail.error;
            }
            return paywallResourceLoadFail.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getError() {
            return this.error;
        }

        public final PaywallResourceLoadFail copy(String url, String error) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(error, "error");
            return new PaywallResourceLoadFail(url, error);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PaywallResourceLoadFail)) {
                return false;
            }
            PaywallResourceLoadFail paywallResourceLoadFail = (PaywallResourceLoadFail) other;
            return Intrinsics.areEqual(this.url, paywallResourceLoadFail.url) && Intrinsics.areEqual(this.error, paywallResourceLoadFail.error);
        }

        public int hashCode() {
            return (this.url.hashCode() * 31) + this.error.hashCode();
        }

        public String toString() {
            return "PaywallResourceLoadFail(url=" + this.url + ", error=" + this.error + ")";
        }

        public final String getUrl() {
            return this.url;
        }

        public final String getError() {
            return this.error;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallResourceLoadFail(String url, String error) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(error, "error");
            this.url = url;
            this.error = error;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallResourceLoad_fail";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPresentationRequest;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "status", "Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus;", "reason", "Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus;Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;)V", "getStatus", "()Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus;", "getReason", "()Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallPresentationRequest extends SuperwallEvent {
        private final PaywallPresentationRequestStatusReason reason;
        private final PaywallPresentationRequestStatus status;

        public static /* synthetic */ PaywallPresentationRequest copy$default(PaywallPresentationRequest paywallPresentationRequest, PaywallPresentationRequestStatus paywallPresentationRequestStatus, PaywallPresentationRequestStatusReason paywallPresentationRequestStatusReason, int i, Object obj) {
            if ((i & 1) != 0) {
                paywallPresentationRequestStatus = paywallPresentationRequest.status;
            }
            if ((i & 2) != 0) {
                paywallPresentationRequestStatusReason = paywallPresentationRequest.reason;
            }
            return paywallPresentationRequest.copy(paywallPresentationRequestStatus, paywallPresentationRequestStatusReason);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaywallPresentationRequestStatus getStatus() {
            return this.status;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final PaywallPresentationRequestStatusReason getReason() {
            return this.reason;
        }

        public final PaywallPresentationRequest copy(PaywallPresentationRequestStatus status, PaywallPresentationRequestStatusReason reason) {
            Intrinsics.checkNotNullParameter(status, "status");
            return new PaywallPresentationRequest(status, reason);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PaywallPresentationRequest)) {
                return false;
            }
            PaywallPresentationRequest paywallPresentationRequest = (PaywallPresentationRequest) other;
            return Intrinsics.areEqual(this.status, paywallPresentationRequest.status) && Intrinsics.areEqual(this.reason, paywallPresentationRequest.reason);
        }

        public int hashCode() {
            int iHashCode = this.status.hashCode() * 31;
            PaywallPresentationRequestStatusReason paywallPresentationRequestStatusReason = this.reason;
            return iHashCode + (paywallPresentationRequestStatusReason == null ? 0 : paywallPresentationRequestStatusReason.hashCode());
        }

        public String toString() {
            return "PaywallPresentationRequest(status=" + this.status + ", reason=" + this.reason + ")";
        }

        public final PaywallPresentationRequestStatus getStatus() {
            return this.status;
        }

        public final PaywallPresentationRequestStatusReason getReason() {
            return this.reason;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaywallPresentationRequest(PaywallPresentationRequestStatus status, PaywallPresentationRequestStatusReason paywallPresentationRequestStatusReason) {
            super(null);
            Intrinsics.checkNotNullParameter(status, "status");
            this.status = status;
            this.reason = paywallPresentationRequestStatusReason;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "paywallPresentationRequest";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0019\u001a\u00020\tHÆ\u0003J3\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0011¨\u0006\""}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyResponse;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "survey", "Lcom/superwall/sdk/config/models/Survey;", "selectedOption", "Lcom/superwall/sdk/config/models/SurveyOption;", "customResponse", "", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "<init>", "(Lcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V", "getSurvey", "()Lcom/superwall/sdk/config/models/Survey;", "getSelectedOption", "()Lcom/superwall/sdk/config/models/SurveyOption;", "getCustomResponse", "()Ljava/lang/String;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "rawName", "getRawName", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class SurveyResponse extends SuperwallEvent {
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
            super(null);
            Intrinsics.checkNotNullParameter(survey, "survey");
            Intrinsics.checkNotNullParameter(selectedOption, "selectedOption");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            this.survey = survey;
            this.selectedOption = selectedOption;
            this.customResponse = str;
            this.paywallInfo = paywallInfo;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "survey_response";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$SurveyClose;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SurveyClose extends SuperwallEvent {
        public SurveyClose() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "survey_close";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ConfigRefresh;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConfigRefresh extends SuperwallEvent {
        public static final ConfigRefresh INSTANCE = new ConfigRefresh();

        private ConfigRefresh() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "config_refresh";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ConfigFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConfigFail extends SuperwallEvent {
        public static final ConfigFail INSTANCE = new ConfigFail();

        private ConfigFail() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "config_fail";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ConfirmAllAssignments;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConfirmAllAssignments extends SuperwallEvent {
        public static final ConfirmAllAssignments INSTANCE = new ConfirmAllAssignments();

        private ConfirmAllAssignments() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "confirm_all_assignments";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$Reset;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Reset extends SuperwallEvent {
        public static final Reset INSTANCE = new Reset();

        private Reset() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "reset";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u0015\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J3\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\bHÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u001d"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomPlacement;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "placementName", "", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "params", "", "", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Ljava/util/Map;)V", "getPlacementName", "()Ljava/lang/String;", "getPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getParams", "()Ljava/util/Map;", "rawName", "getRawName", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class CustomPlacement extends SuperwallEvent {
        private final Map<String, Object> params;
        private final PaywallInfo paywallInfo;
        private final String placementName;
        private final String rawName;

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
            super(null);
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
            Intrinsics.checkNotNullParameter(params, "params");
            this.placementName = placementName;
            this.paywallInfo = paywallInfo;
            this.params = params;
            this.rawName = SuperwallEvents.CustomPlacement.getRawName();
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return this.rawName;
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0005HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ShimmerViewStart extends SuperwallEvent {
        public static final ShimmerViewStart INSTANCE = new ShimmerViewStart();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ShimmerViewStart)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1596588314;
        }

        public String toString() {
            return "ShimmerViewStart";
        }

        private ShimmerViewStart() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.ShimmerViewStart.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ShimmerViewComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "duration", "", "<init>", "(D)V", "getDuration", "()D", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ShimmerViewComplete extends SuperwallEvent {
        private final double duration;

        public static /* synthetic */ ShimmerViewComplete copy$default(ShimmerViewComplete shimmerViewComplete, double d, int i, Object obj) {
            if ((i & 1) != 0) {
                d = shimmerViewComplete.duration;
            }
            return shimmerViewComplete.copy(d);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final double getDuration() {
            return this.duration;
        }

        public final ShimmerViewComplete copy(double duration) {
            return new ShimmerViewComplete(duration);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ShimmerViewComplete) && Double.compare(this.duration, ((ShimmerViewComplete) other).duration) == 0;
        }

        public int hashCode() {
            return Double.hashCode(this.duration);
        }

        public String toString() {
            return "ShimmerViewComplete(duration=" + this.duration + ")";
        }

        public final double getDuration() {
            return this.duration;
        }

        public ShimmerViewComplete(double d) {
            super(null);
            this.duration = d;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.ShimmerViewComplete.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ErrorThrown;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "Lcom/superwall/sdk/analytics/superwall/IsInternalEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ErrorThrown extends SuperwallEvent implements IsInternalEvent {
        public static final ErrorThrown INSTANCE = new ErrorThrown();

        private ErrorThrown() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "error_thrown";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ExpressionResult;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "Lcom/superwall/sdk/analytics/superwall/IsInternalEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ExpressionResult extends SuperwallEvent implements IsInternalEvent {
        public static final ExpressionResult INSTANCE = new ExpressionResult();

        private ExpressionResult() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "cel_expression_result";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TestModeModalOpen;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class TestModeModalOpen extends SuperwallEvent {
        public TestModeModalOpen() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.TestModeModalOpen.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TestModeModalClose;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class TestModeModalClose extends SuperwallEvent {
        public TestModeModalClose() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.TestModeModalClose.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$RedemptionComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "Lcom/superwall/sdk/analytics/superwall/SuperwallPlacement;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class RedemptionComplete extends SuperwallEvent {
        public static final RedemptionComplete INSTANCE = new RedemptionComplete();

        private RedemptionComplete() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.RedemptionComplete.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$RedemptionFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "Lcom/superwall/sdk/analytics/superwall/SuperwallPlacement;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class RedemptionFail extends SuperwallEvent {
        public static final RedemptionFail INSTANCE = new RedemptionFail();

        private RedemptionFail() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.RedemptionFail.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$RedemptionStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "Lcom/superwall/sdk/analytics/superwall/SuperwallPlacement;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class RedemptionStart extends SuperwallEvent {
        public static final RedemptionStart INSTANCE = new RedemptionStart();

        private RedemptionStart() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.RedemptionStart.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$EnrichmentStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "Lcom/superwall/sdk/analytics/superwall/SuperwallPlacement;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class EnrichmentStart extends SuperwallEvent {
        public static final EnrichmentStart INSTANCE = new EnrichmentStart();

        private EnrichmentStart() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "enrichment_start";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$EnrichmentFail;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "Lcom/superwall/sdk/analytics/superwall/SuperwallPlacement;", "<init>", "()V", "rawName", "", "getRawName", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class EnrichmentFail extends SuperwallEvent {
        public static final EnrichmentFail INSTANCE = new EnrichmentFail();

        private EnrichmentFail() {
            super(null);
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "enrichment_fail";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00060\u0001j\u0002`\u0002B3\u0012\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004HÆ\u0003J\u0017\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004HÆ\u0003J9\u0010\u0012\u001a\u00020\u00002\u0016\b\u0002\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00042\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u001f\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001f\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0014\u0010\r\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$EnrichmentComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "Lcom/superwall/sdk/analytics/superwall/SuperwallPlacement;", "userEnrichment", "", "", "", "deviceEnrichment", "<init>", "(Ljava/util/Map;Ljava/util/Map;)V", "getUserEnrichment", "()Ljava/util/Map;", "getDeviceEnrichment", "rawName", "getRawName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class EnrichmentComplete extends SuperwallEvent {
        private final Map<String, Object> deviceEnrichment;
        private final Map<String, Object> userEnrichment;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ EnrichmentComplete copy$default(EnrichmentComplete enrichmentComplete, Map map, Map map2, int i, Object obj) {
            if ((i & 1) != 0) {
                map = enrichmentComplete.userEnrichment;
            }
            if ((i & 2) != 0) {
                map2 = enrichmentComplete.deviceEnrichment;
            }
            return enrichmentComplete.copy(map, map2);
        }

        public final Map<String, Object> component1() {
            return this.userEnrichment;
        }

        public final Map<String, Object> component2() {
            return this.deviceEnrichment;
        }

        public final EnrichmentComplete copy(Map<String, ? extends Object> userEnrichment, Map<String, ? extends Object> deviceEnrichment) {
            Intrinsics.checkNotNullParameter(userEnrichment, "userEnrichment");
            Intrinsics.checkNotNullParameter(deviceEnrichment, "deviceEnrichment");
            return new EnrichmentComplete(userEnrichment, deviceEnrichment);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof EnrichmentComplete)) {
                return false;
            }
            EnrichmentComplete enrichmentComplete = (EnrichmentComplete) other;
            return Intrinsics.areEqual(this.userEnrichment, enrichmentComplete.userEnrichment) && Intrinsics.areEqual(this.deviceEnrichment, enrichmentComplete.deviceEnrichment);
        }

        public int hashCode() {
            return (this.userEnrichment.hashCode() * 31) + this.deviceEnrichment.hashCode();
        }

        public String toString() {
            return "EnrichmentComplete(userEnrichment=" + this.userEnrichment + ", deviceEnrichment=" + this.deviceEnrichment + ")";
        }

        public final Map<String, Object> getUserEnrichment() {
            return this.userEnrichment;
        }

        public final Map<String, Object> getDeviceEnrichment() {
            return this.deviceEnrichment;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnrichmentComplete(Map<String, ? extends Object> userEnrichment, Map<String, ? extends Object> deviceEnrichment) {
            super(null);
            Intrinsics.checkNotNullParameter(userEnrichment, "userEnrichment");
            Intrinsics.checkNotNullParameter(deviceEnrichment, "deviceEnrichment");
            this.userEnrichment = userEnrichment;
            this.deviceEnrichment = deviceEnrichment;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "enrichment_complete";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewRequested;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", NewHtcHomeBadger.COUNT, "", "<init>", "(I)V", "getCount", "()I", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ReviewRequested extends SuperwallEvent {
        private final int count;

        public static /* synthetic */ ReviewRequested copy$default(ReviewRequested reviewRequested, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = reviewRequested.count;
            }
            return reviewRequested.copy(i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getCount() {
            return this.count;
        }

        public final ReviewRequested copy(int count) {
            return new ReviewRequested(count);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ReviewRequested) && this.count == ((ReviewRequested) other).count;
        }

        public int hashCode() {
            return Integer.hashCode(this.count);
        }

        public String toString() {
            return "ReviewRequested(count=" + this.count + ")";
        }

        public final int getCount() {
            return this.count;
        }

        public ReviewRequested(int i) {
            super(null);
            this.count = i;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "review_requested";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewGranted;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", NewHtcHomeBadger.COUNT, "", "<init>", "(I)V", "getCount", "()I", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ReviewGranted extends SuperwallEvent {
        private final int count;

        public static /* synthetic */ ReviewGranted copy$default(ReviewGranted reviewGranted, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = reviewGranted.count;
            }
            return reviewGranted.copy(i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getCount() {
            return this.count;
        }

        public final ReviewGranted copy(int count) {
            return new ReviewGranted(count);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ReviewGranted) && this.count == ((ReviewGranted) other).count;
        }

        public int hashCode() {
            return Integer.hashCode(this.count);
        }

        public String toString() {
            return "ReviewGranted(count=" + this.count + ")";
        }

        public final int getCount() {
            return this.count;
        }

        public ReviewGranted(int i) {
            super(null);
            this.count = i;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "review_granted";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$ReviewDenied;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", NewHtcHomeBadger.COUNT, "", "<init>", "(I)V", "getCount", "()I", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ReviewDenied extends SuperwallEvent {
        private final int count;

        public static /* synthetic */ ReviewDenied copy$default(ReviewDenied reviewDenied, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = reviewDenied.count;
            }
            return reviewDenied.copy(i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getCount() {
            return this.count;
        }

        public final ReviewDenied copy(int count) {
            return new ReviewDenied(count);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ReviewDenied) && this.count == ((ReviewDenied) other).count;
        }

        public int hashCode() {
            return Integer.hashCode(this.count);
        }

        public String toString() {
            return "ReviewDenied(count=" + this.count + ")";
        }

        public final int getCount() {
            return this.count;
        }

        public ReviewDenied(int i) {
            super(null);
            this.count = i;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return "review_denied";
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u000bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$CustomerInfoDidChange;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", Constants.MessagePayloadKeys.FROM, "Lcom/superwall/sdk/models/customer/CustomerInfo;", "to", "<init>", "(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)V", "getFrom", "()Lcom/superwall/sdk/models/customer/CustomerInfo;", "getTo", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class CustomerInfoDidChange extends SuperwallEvent {
        private final CustomerInfo from;
        private final CustomerInfo to;

        public static /* synthetic */ CustomerInfoDidChange copy$default(CustomerInfoDidChange customerInfoDidChange, CustomerInfo customerInfo, CustomerInfo customerInfo2, int i, Object obj) {
            if ((i & 1) != 0) {
                customerInfo = customerInfoDidChange.from;
            }
            if ((i & 2) != 0) {
                customerInfo2 = customerInfoDidChange.to;
            }
            return customerInfoDidChange.copy(customerInfo, customerInfo2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CustomerInfo getFrom() {
            return this.from;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final CustomerInfo getTo() {
            return this.to;
        }

        public final CustomerInfoDidChange copy(CustomerInfo from, CustomerInfo to) {
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            return new CustomerInfoDidChange(from, to);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CustomerInfoDidChange)) {
                return false;
            }
            CustomerInfoDidChange customerInfoDidChange = (CustomerInfoDidChange) other;
            return Intrinsics.areEqual(this.from, customerInfoDidChange.from) && Intrinsics.areEqual(this.to, customerInfoDidChange.to);
        }

        public int hashCode() {
            return (this.from.hashCode() * 31) + this.to.hashCode();
        }

        public String toString() {
            return "CustomerInfoDidChange(from=" + this.from + ", to=" + this.to + ")";
        }

        public final CustomerInfo getFrom() {
            return this.from;
        }

        public final CustomerInfo getTo() {
            return this.to;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CustomerInfoDidChange(CustomerInfo from, CustomerInfo to) {
            super(null);
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            this.from = from;
            this.to = to;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.CustomerInfoDidChange.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0014\u0010\n\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionRequested;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "permissionName", "", "paywallIdentifier", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getPermissionName", "()Ljava/lang/String;", "getPaywallIdentifier", "rawName", "getRawName", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PermissionRequested extends SuperwallEvent {
        private final String paywallIdentifier;
        private final String permissionName;

        public static /* synthetic */ PermissionRequested copy$default(PermissionRequested permissionRequested, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = permissionRequested.permissionName;
            }
            if ((i & 2) != 0) {
                str2 = permissionRequested.paywallIdentifier;
            }
            return permissionRequested.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPermissionName() {
            return this.permissionName;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getPaywallIdentifier() {
            return this.paywallIdentifier;
        }

        public final PermissionRequested copy(String permissionName, String paywallIdentifier) {
            Intrinsics.checkNotNullParameter(permissionName, "permissionName");
            Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
            return new PermissionRequested(permissionName, paywallIdentifier);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PermissionRequested)) {
                return false;
            }
            PermissionRequested permissionRequested = (PermissionRequested) other;
            return Intrinsics.areEqual(this.permissionName, permissionRequested.permissionName) && Intrinsics.areEqual(this.paywallIdentifier, permissionRequested.paywallIdentifier);
        }

        public int hashCode() {
            return (this.permissionName.hashCode() * 31) + this.paywallIdentifier.hashCode();
        }

        public String toString() {
            return "PermissionRequested(permissionName=" + this.permissionName + ", paywallIdentifier=" + this.paywallIdentifier + ")";
        }

        public final String getPermissionName() {
            return this.permissionName;
        }

        public final String getPaywallIdentifier() {
            return this.paywallIdentifier;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PermissionRequested(String permissionName, String paywallIdentifier) {
            super(null);
            Intrinsics.checkNotNullParameter(permissionName, "permissionName");
            Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
            this.permissionName = permissionName;
            this.paywallIdentifier = paywallIdentifier;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.PermissionRequested.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0014\u0010\n\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionGranted;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "permissionName", "", "paywallIdentifier", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getPermissionName", "()Ljava/lang/String;", "getPaywallIdentifier", "rawName", "getRawName", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PermissionGranted extends SuperwallEvent {
        private final String paywallIdentifier;
        private final String permissionName;

        public static /* synthetic */ PermissionGranted copy$default(PermissionGranted permissionGranted, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = permissionGranted.permissionName;
            }
            if ((i & 2) != 0) {
                str2 = permissionGranted.paywallIdentifier;
            }
            return permissionGranted.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPermissionName() {
            return this.permissionName;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getPaywallIdentifier() {
            return this.paywallIdentifier;
        }

        public final PermissionGranted copy(String permissionName, String paywallIdentifier) {
            Intrinsics.checkNotNullParameter(permissionName, "permissionName");
            Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
            return new PermissionGranted(permissionName, paywallIdentifier);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PermissionGranted)) {
                return false;
            }
            PermissionGranted permissionGranted = (PermissionGranted) other;
            return Intrinsics.areEqual(this.permissionName, permissionGranted.permissionName) && Intrinsics.areEqual(this.paywallIdentifier, permissionGranted.paywallIdentifier);
        }

        public int hashCode() {
            return (this.permissionName.hashCode() * 31) + this.paywallIdentifier.hashCode();
        }

        public String toString() {
            return "PermissionGranted(permissionName=" + this.permissionName + ", paywallIdentifier=" + this.paywallIdentifier + ")";
        }

        public final String getPermissionName() {
            return this.permissionName;
        }

        public final String getPaywallIdentifier() {
            return this.paywallIdentifier;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PermissionGranted(String permissionName, String paywallIdentifier) {
            super(null);
            Intrinsics.checkNotNullParameter(permissionName, "permissionName");
            Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
            this.permissionName = permissionName;
            this.paywallIdentifier = paywallIdentifier;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.PermissionGranted.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0014\u0010\n\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PermissionDenied;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "permissionName", "", "paywallIdentifier", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getPermissionName", "()Ljava/lang/String;", "getPaywallIdentifier", "rawName", "getRawName", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PermissionDenied extends SuperwallEvent {
        private final String paywallIdentifier;
        private final String permissionName;

        public static /* synthetic */ PermissionDenied copy$default(PermissionDenied permissionDenied, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = permissionDenied.permissionName;
            }
            if ((i & 2) != 0) {
                str2 = permissionDenied.paywallIdentifier;
            }
            return permissionDenied.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPermissionName() {
            return this.permissionName;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getPaywallIdentifier() {
            return this.paywallIdentifier;
        }

        public final PermissionDenied copy(String permissionName, String paywallIdentifier) {
            Intrinsics.checkNotNullParameter(permissionName, "permissionName");
            Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
            return new PermissionDenied(permissionName, paywallIdentifier);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PermissionDenied)) {
                return false;
            }
            PermissionDenied permissionDenied = (PermissionDenied) other;
            return Intrinsics.areEqual(this.permissionName, permissionDenied.permissionName) && Intrinsics.areEqual(this.paywallIdentifier, permissionDenied.paywallIdentifier);
        }

        public int hashCode() {
            return (this.permissionName.hashCode() * 31) + this.paywallIdentifier.hashCode();
        }

        public String toString() {
            return "PermissionDenied(permissionName=" + this.permissionName + ", paywallIdentifier=" + this.paywallIdentifier + ")";
        }

        public final String getPermissionName() {
            return this.permissionName;
        }

        public final String getPaywallIdentifier() {
            return this.paywallIdentifier;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PermissionDenied(String permissionName, String paywallIdentifier) {
            super(null);
            Intrinsics.checkNotNullParameter(permissionName, "permissionName");
            Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
            this.permissionName = permissionName;
            this.paywallIdentifier = paywallIdentifier;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.PermissionDenied.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPreloadStart;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "paywallCount", "", "<init>", "(I)V", "getPaywallCount", "()I", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallPreloadStart extends SuperwallEvent {
        private final int paywallCount;

        public static /* synthetic */ PaywallPreloadStart copy$default(PaywallPreloadStart paywallPreloadStart, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = paywallPreloadStart.paywallCount;
            }
            return paywallPreloadStart.copy(i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getPaywallCount() {
            return this.paywallCount;
        }

        public final PaywallPreloadStart copy(int paywallCount) {
            return new PaywallPreloadStart(paywallCount);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PaywallPreloadStart) && this.paywallCount == ((PaywallPreloadStart) other).paywallCount;
        }

        public int hashCode() {
            return Integer.hashCode(this.paywallCount);
        }

        public String toString() {
            return "PaywallPreloadStart(paywallCount=" + this.paywallCount + ")";
        }

        public final int getPaywallCount() {
            return this.paywallCount;
        }

        public PaywallPreloadStart(int i) {
            super(null);
            this.paywallCount = i;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.PaywallPreloadStart.getRawName();
        }
    }

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$PaywallPreloadComplete;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "paywallCount", "", "<init>", "(I)V", "getPaywallCount", "()I", "rawName", "", "getRawName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PaywallPreloadComplete extends SuperwallEvent {
        private final int paywallCount;

        public static /* synthetic */ PaywallPreloadComplete copy$default(PaywallPreloadComplete paywallPreloadComplete, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = paywallPreloadComplete.paywallCount;
            }
            return paywallPreloadComplete.copy(i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getPaywallCount() {
            return this.paywallCount;
        }

        public final PaywallPreloadComplete copy(int paywallCount) {
            return new PaywallPreloadComplete(paywallCount);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PaywallPreloadComplete) && this.paywallCount == ((PaywallPreloadComplete) other).paywallCount;
        }

        public int hashCode() {
            return Integer.hashCode(this.paywallCount);
        }

        public String toString() {
            return "PaywallPreloadComplete(paywallCount=" + this.paywallCount + ")";
        }

        public final int getPaywallCount() {
            return this.paywallCount;
        }

        public PaywallPreloadComplete(int i) {
            super(null);
            this.paywallCount = i;
        }

        @Override // com.superwall.sdk.analytics.superwall.SuperwallEvent
        public String getRawName() {
            return SuperwallEvents.PaywallPreloadComplete.getRawName();
        }
    }

    public String getRawName() {
        return toString();
    }

    public SuperwallEvents getBackingEvent() {
        for (SuperwallEvents superwallEvents : SuperwallEvents.values()) {
            if (Intrinsics.areEqual(superwallEvents.getRawName(), getRawName())) {
                Intrinsics.checkNotNull(superwallEvents);
                return superwallEvents;
            }
        }
        superwallEvents = null;
        Intrinsics.checkNotNull(superwallEvents);
        return superwallEvents;
    }

    public final boolean getCanImplicitlyTriggerPaywall() {
        return (this instanceof AppInstall) || (this instanceof SessionStart) || (this instanceof AppLaunch) || (this instanceof DeepLink) || (this instanceof TransactionFail) || (this instanceof PaywallDecline) || (this instanceof TransactionAbandon) || (this instanceof SurveyResponse);
    }
}
