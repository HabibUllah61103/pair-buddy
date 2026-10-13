package com.superwall.sdk.paywall.view.webview.messaging;

import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.messaging.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.models.paywall.LocalNotificationType;
import com.superwall.sdk.paywall.presentation.CustomCallbackBehavior;
import com.superwall.sdk.permissions.PermissionType;
import java.net.URI;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: compiled from: PaywallMessage.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0018\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001bB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0018\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123¨\u00064"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "", "<init>", "()V", "OnReady", "TemplateParamsAndUserAttributes", "Close", "Restore", "RestoreFailed", "OpenUrl", "OpenUrlInBrowser", "OpenDeepLink", "Purchase", "Custom", "CustomPlacement", "PaywallOpen", "PaywallClose", "TransactionStart", "TransactionAbandon", "TransactionComplete", "TrialStarted", "UserAttributesUpdated", "RequestReview", "ScheduleNotification", "RequestPermission", "RequestCallback", "PageView", "HapticFeedback", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Close;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Custom;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$CustomPlacement;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OnReady;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenDeepLink;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrlInBrowser;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PageView;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PaywallClose;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PaywallOpen;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Purchase;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Restore;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RestoreFailed;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TemplateParamsAndUserAttributes;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TransactionAbandon;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TransactionComplete;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TransactionStart;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TrialStarted;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$UserAttributesUpdated;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class PaywallMessage {
    public /* synthetic */ PaywallMessage(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private PaywallMessage() {
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OnReady;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "paywallJsVersion", "", "<init>", "(Ljava/lang/String;)V", "getPaywallJsVersion", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class OnReady extends PaywallMessage {
        private final String paywallJsVersion;

        public static /* synthetic */ OnReady copy$default(OnReady onReady, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = onReady.paywallJsVersion;
            }
            return onReady.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPaywallJsVersion() {
            return this.paywallJsVersion;
        }

        public final OnReady copy(String paywallJsVersion) {
            Intrinsics.checkNotNullParameter(paywallJsVersion, "paywallJsVersion");
            return new OnReady(paywallJsVersion);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OnReady) && Intrinsics.areEqual(this.paywallJsVersion, ((OnReady) other).paywallJsVersion);
        }

        public int hashCode() {
            return this.paywallJsVersion.hashCode();
        }

        public String toString() {
            return "OnReady(paywallJsVersion=" + this.paywallJsVersion + ")";
        }

        public final String getPaywallJsVersion() {
            return this.paywallJsVersion;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnReady(String paywallJsVersion) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallJsVersion, "paywallJsVersion");
            this.paywallJsVersion = paywallJsVersion;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TemplateParamsAndUserAttributes;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class TemplateParamsAndUserAttributes extends PaywallMessage {
        public static final TemplateParamsAndUserAttributes INSTANCE = new TemplateParamsAndUserAttributes();

        private TemplateParamsAndUserAttributes() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Close;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Close extends PaywallMessage {
        public static final Close INSTANCE = new Close();

        private Close() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Restore;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Restore extends PaywallMessage {
        public static final Restore INSTANCE = new Restore();

        private Restore() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RestoreFailed;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class RestoreFailed extends PaywallMessage {
        private final String message;

        public static /* synthetic */ RestoreFailed copy$default(RestoreFailed restoreFailed, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = restoreFailed.message;
            }
            return restoreFailed.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final RestoreFailed copy(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new RestoreFailed(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof RestoreFailed) && Intrinsics.areEqual(this.message, ((RestoreFailed) other).message);
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return "RestoreFailed(message=" + this.message + ")";
        }

        public final String getMessage() {
            return this.message;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RestoreFailed(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0019B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", ImagesContract.URL, "Ljava/net/URI;", "browserType", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;", "<init>", "(Ljava/net/URI;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;)V", "getUrl", "()Ljava/net/URI;", "getBrowserType", "()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;", "setBrowserType", "(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;)V", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "BrowserType", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class OpenUrl extends PaywallMessage {
        private BrowserType browserType;
        private final URI url;

        public static /* synthetic */ OpenUrl copy$default(OpenUrl openUrl, URI uri, BrowserType browserType, int i, Object obj) {
            if ((i & 1) != 0) {
                uri = openUrl.url;
            }
            if ((i & 2) != 0) {
                browserType = openUrl.browserType;
            }
            return openUrl.copy(uri, browserType);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final URI getUrl() {
            return this.url;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final BrowserType getBrowserType() {
            return this.browserType;
        }

        public final OpenUrl copy(URI url, BrowserType browserType) {
            Intrinsics.checkNotNullParameter(url, "url");
            return new OpenUrl(url, browserType);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof OpenUrl)) {
                return false;
            }
            OpenUrl openUrl = (OpenUrl) other;
            return Intrinsics.areEqual(this.url, openUrl.url) && this.browserType == openUrl.browserType;
        }

        public int hashCode() {
            int iHashCode = this.url.hashCode() * 31;
            BrowserType browserType = this.browserType;
            return iHashCode + (browserType == null ? 0 : browserType.hashCode());
        }

        public String toString() {
            return "OpenUrl(url=" + this.url + ", browserType=" + this.browserType + ")";
        }

        public final URI getUrl() {
            return this.url;
        }

        public final BrowserType getBrowserType() {
            return this.browserType;
        }

        public final void setBrowserType(BrowserType browserType) {
            this.browserType = browserType;
        }

        /* JADX INFO: compiled from: PaywallMessage.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;", "", "rawName", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getRawName", "()Ljava/lang/String;", "PAYMENT_SHEET", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public enum BrowserType {
            PAYMENT_SHEET("payment_sheet");

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
            private final String rawName;

            public static EnumEntries<BrowserType> getEntries() {
                return $ENTRIES;
            }

            BrowserType(String str) {
                this.rawName = str;
            }

            public final String getRawName() {
                return this.rawName;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenUrl(URI url, BrowserType browserType) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
            this.browserType = browserType;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrlInBrowser;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", ImagesContract.URL, "Ljava/net/URI;", "<init>", "(Ljava/net/URI;)V", "getUrl", "()Ljava/net/URI;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class OpenUrlInBrowser extends PaywallMessage {
        private final URI url;

        public static /* synthetic */ OpenUrlInBrowser copy$default(OpenUrlInBrowser openUrlInBrowser, URI uri, int i, Object obj) {
            if ((i & 1) != 0) {
                uri = openUrlInBrowser.url;
            }
            return openUrlInBrowser.copy(uri);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final URI getUrl() {
            return this.url;
        }

        public final OpenUrlInBrowser copy(URI url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return new OpenUrlInBrowser(url);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OpenUrlInBrowser) && Intrinsics.areEqual(this.url, ((OpenUrlInBrowser) other).url);
        }

        public int hashCode() {
            return this.url.hashCode();
        }

        public String toString() {
            return "OpenUrlInBrowser(url=" + this.url + ")";
        }

        public final URI getUrl() {
            return this.url;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenUrlInBrowser(URI url) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenDeepLink;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", ImagesContract.URL, "Ljava/net/URI;", "<init>", "(Ljava/net/URI;)V", "getUrl", "()Ljava/net/URI;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class OpenDeepLink extends PaywallMessage {
        private final URI url;

        public static /* synthetic */ OpenDeepLink copy$default(OpenDeepLink openDeepLink, URI uri, int i, Object obj) {
            if ((i & 1) != 0) {
                uri = openDeepLink.url;
            }
            return openDeepLink.copy(uri);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final URI getUrl() {
            return this.url;
        }

        public final OpenDeepLink copy(URI url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return new OpenDeepLink(url);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OpenDeepLink) && Intrinsics.areEqual(this.url, ((OpenDeepLink) other).url);
        }

        public int hashCode() {
            return this.url.hashCode();
        }

        public String toString() {
            return "OpenDeepLink(url=" + this.url + ")";
        }

        public final URI getUrl() {
            return this.url;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenDeepLink(URI url) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Purchase;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "product", "", "productId", "shouldDismiss", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Z)V", "getProduct", "()Ljava/lang/String;", "getProductId", "getShouldDismiss", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Purchase extends PaywallMessage {
        private final String product;
        private final String productId;
        private final boolean shouldDismiss;

        public static /* synthetic */ Purchase copy$default(Purchase purchase, String str, String str2, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = purchase.product;
            }
            if ((i & 2) != 0) {
                str2 = purchase.productId;
            }
            if ((i & 4) != 0) {
                z = purchase.shouldDismiss;
            }
            return purchase.copy(str, str2, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getProduct() {
            return this.product;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getProductId() {
            return this.productId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getShouldDismiss() {
            return this.shouldDismiss;
        }

        public final Purchase copy(String product, String productId, boolean shouldDismiss) {
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(productId, "productId");
            return new Purchase(product, productId, shouldDismiss);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Purchase)) {
                return false;
            }
            Purchase purchase = (Purchase) other;
            return Intrinsics.areEqual(this.product, purchase.product) && Intrinsics.areEqual(this.productId, purchase.productId) && this.shouldDismiss == purchase.shouldDismiss;
        }

        public int hashCode() {
            return (((this.product.hashCode() * 31) + this.productId.hashCode()) * 31) + Boolean.hashCode(this.shouldDismiss);
        }

        public String toString() {
            return "Purchase(product=" + this.product + ", productId=" + this.productId + ", shouldDismiss=" + this.shouldDismiss + ")";
        }

        public final String getProduct() {
            return this.product;
        }

        public final String getProductId() {
            return this.productId;
        }

        public final boolean getShouldDismiss() {
            return this.shouldDismiss;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Purchase(String product, String productId, boolean z) {
            super(null);
            Intrinsics.checkNotNullParameter(product, "product");
            Intrinsics.checkNotNullParameter(productId, "productId");
            this.product = product;
            this.productId = productId;
            this.shouldDismiss = z;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Custom;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "data", "", "<init>", "(Ljava/lang/String;)V", "getData", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Custom extends PaywallMessage {
        private final String data;

        public static /* synthetic */ Custom copy$default(Custom custom, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = custom.data;
            }
            return custom.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getData() {
            return this.data;
        }

        public final Custom copy(String data) {
            Intrinsics.checkNotNullParameter(data, "data");
            return new Custom(data);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Custom) && Intrinsics.areEqual(this.data, ((Custom) other).data);
        }

        public int hashCode() {
            return this.data.hashCode();
        }

        public String toString() {
            return "Custom(data=" + this.data + ")";
        }

        public final String getData() {
            return this.data;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Custom(String data) {
            super(null);
            Intrinsics.checkNotNullParameter(data, "data");
            this.data = data;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$CustomPlacement;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "name", "", "params", "Lkotlinx/serialization/json/JsonObject;", "<init>", "(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V", "getName", "()Ljava/lang/String;", "getParams", "()Lkotlinx/serialization/json/JsonObject;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class CustomPlacement extends PaywallMessage {
        private final String name;
        private final JsonObject params;

        public static /* synthetic */ CustomPlacement copy$default(CustomPlacement customPlacement, String str, JsonObject jsonObject, int i, Object obj) {
            if ((i & 1) != 0) {
                str = customPlacement.name;
            }
            if ((i & 2) != 0) {
                jsonObject = customPlacement.params;
            }
            return customPlacement.copy(str, jsonObject);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final JsonObject getParams() {
            return this.params;
        }

        public final CustomPlacement copy(String name, JsonObject params) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(params, "params");
            return new CustomPlacement(name, params);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CustomPlacement)) {
                return false;
            }
            CustomPlacement customPlacement = (CustomPlacement) other;
            return Intrinsics.areEqual(this.name, customPlacement.name) && Intrinsics.areEqual(this.params, customPlacement.params);
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + this.params.hashCode();
        }

        public String toString() {
            return "CustomPlacement(name=" + this.name + ", params=" + this.params + ")";
        }

        public final String getName() {
            return this.name;
        }

        public final JsonObject getParams() {
            return this.params;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CustomPlacement(String name, JsonObject params) {
            super(null);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(params, "params");
            this.name = name;
            this.params = params;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PaywallOpen;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PaywallOpen extends PaywallMessage {
        public static final PaywallOpen INSTANCE = new PaywallOpen();

        private PaywallOpen() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PaywallClose;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PaywallClose extends PaywallMessage {
        public static final PaywallClose INSTANCE = new PaywallClose();

        private PaywallClose() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TransactionStart;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class TransactionStart extends PaywallMessage {
        public static final TransactionStart INSTANCE = new TransactionStart();

        private TransactionStart() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TransactionAbandon;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class TransactionAbandon extends PaywallMessage {
        public static final TransactionAbandon INSTANCE = new TransactionAbandon();

        private TransactionAbandon() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TransactionComplete;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "productIdentifier", "", "<init>", "(Ljava/lang/String;)V", "getProductIdentifier", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TransactionComplete extends PaywallMessage {
        private final String productIdentifier;

        public static /* synthetic */ TransactionComplete copy$default(TransactionComplete transactionComplete, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = transactionComplete.productIdentifier;
            }
            return transactionComplete.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getProductIdentifier() {
            return this.productIdentifier;
        }

        public final TransactionComplete copy(String productIdentifier) {
            Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
            return new TransactionComplete(productIdentifier);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof TransactionComplete) && Intrinsics.areEqual(this.productIdentifier, ((TransactionComplete) other).productIdentifier);
        }

        public int hashCode() {
            return this.productIdentifier.hashCode();
        }

        public String toString() {
            return "TransactionComplete(productIdentifier=" + this.productIdentifier + ")";
        }

        public final String getProductIdentifier() {
            return this.productIdentifier;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransactionComplete(String productIdentifier) {
            super(null);
            Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
            this.productIdentifier = productIdentifier;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J$\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TrialStarted;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "trialEndDate", "", "productIdentifier", "", "<init>", "(Ljava/lang/Long;Ljava/lang/String;)V", "getTrialEndDate", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getProductIdentifier", "()Ljava/lang/String;", "component1", "component2", "copy", "(Ljava/lang/Long;Ljava/lang/String;)Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TrialStarted;", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TrialStarted extends PaywallMessage {
        private final String productIdentifier;
        private final Long trialEndDate;

        public static /* synthetic */ TrialStarted copy$default(TrialStarted trialStarted, Long l, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                l = trialStarted.trialEndDate;
            }
            if ((i & 2) != 0) {
                str = trialStarted.productIdentifier;
            }
            return trialStarted.copy(l, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Long getTrialEndDate() {
            return this.trialEndDate;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getProductIdentifier() {
            return this.productIdentifier;
        }

        public final TrialStarted copy(Long trialEndDate, String productIdentifier) {
            Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
            return new TrialStarted(trialEndDate, productIdentifier);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TrialStarted)) {
                return false;
            }
            TrialStarted trialStarted = (TrialStarted) other;
            return Intrinsics.areEqual(this.trialEndDate, trialStarted.trialEndDate) && Intrinsics.areEqual(this.productIdentifier, trialStarted.productIdentifier);
        }

        public int hashCode() {
            Long l = this.trialEndDate;
            return ((l == null ? 0 : l.hashCode()) * 31) + this.productIdentifier.hashCode();
        }

        public String toString() {
            return "TrialStarted(trialEndDate=" + this.trialEndDate + ", productIdentifier=" + this.productIdentifier + ")";
        }

        public final Long getTrialEndDate() {
            return this.trialEndDate;
        }

        public final String getProductIdentifier() {
            return this.productIdentifier;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TrialStarted(Long l, String productIdentifier) {
            super(null);
            Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
            this.trialEndDate = l;
            this.productIdentifier = productIdentifier;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u001f\u0010\u000b\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$UserAttributesUpdated;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "data", "", "", "", "<init>", "(Ljava/util/Map;)V", "getData", "()Ljava/util/Map;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class UserAttributesUpdated extends PaywallMessage {
        private final Map<String, Object> data;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ UserAttributesUpdated copy$default(UserAttributesUpdated userAttributesUpdated, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                map = userAttributesUpdated.data;
            }
            return userAttributesUpdated.copy(map);
        }

        public final Map<String, Object> component1() {
            return this.data;
        }

        public final UserAttributesUpdated copy(Map<String, ? extends Object> data) {
            Intrinsics.checkNotNullParameter(data, "data");
            return new UserAttributesUpdated(data);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof UserAttributesUpdated) && Intrinsics.areEqual(this.data, ((UserAttributesUpdated) other).data);
        }

        public int hashCode() {
            return this.data.hashCode();
        }

        public String toString() {
            return "UserAttributesUpdated(data=" + this.data + ")";
        }

        public final Map<String, Object> getData() {
            return this.data;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UserAttributesUpdated(Map<String, ? extends Object> data) {
            super(null);
            Intrinsics.checkNotNullParameter(data, "data");
            this.data = data;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "type", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;", "<init>", "(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;)V", "getType", "()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Type", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class RequestReview extends PaywallMessage {
        private final Type type;

        public static /* synthetic */ RequestReview copy$default(RequestReview requestReview, Type type, int i, Object obj) {
            if ((i & 1) != 0) {
                type = requestReview.type;
            }
            return requestReview.copy(type);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Type getType() {
            return this.type;
        }

        public final RequestReview copy(Type type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return new RequestReview(type);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof RequestReview) && this.type == ((RequestReview) other).type;
        }

        public int hashCode() {
            return this.type.hashCode();
        }

        public String toString() {
            return "RequestReview(type=" + this.type + ")";
        }

        public final Type getType() {
            return this.type;
        }

        /* JADX INFO: compiled from: PaywallMessage.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;", "", "rawName", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getRawName", "()Ljava/lang/String;", "INAPP", "EXTERNAL", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public enum Type {
            INAPP("in-app"),
            EXTERNAL("external");

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
            private final String rawName;

            public static EnumEntries<Type> getEntries() {
                return $ENTRIES;
            }

            Type(String str) {
                this.rawName = str;
            }

            public final String getRawName() {
                return this.rawName;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestReview(Type type) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\nHÆ\u0003JE\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006$"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "id", "", "type", "Lcom/superwall/sdk/models/paywall/LocalNotificationType;", "title", "subtitle", "body", "delay", "", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/LocalNotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "getId", "()Ljava/lang/String;", "getType", "()Lcom/superwall/sdk/models/paywall/LocalNotificationType;", "getTitle", "getSubtitle", "getBody", "getDelay", "()J", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ScheduleNotification extends PaywallMessage {
        private final String body;
        private final long delay;
        private final String id;
        private final String subtitle;
        private final String title;
        private final LocalNotificationType type;

        public static /* synthetic */ ScheduleNotification copy$default(ScheduleNotification scheduleNotification, String str, LocalNotificationType localNotificationType, String str2, String str3, String str4, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                str = scheduleNotification.id;
            }
            if ((i & 2) != 0) {
                localNotificationType = scheduleNotification.type;
            }
            if ((i & 4) != 0) {
                str2 = scheduleNotification.title;
            }
            if ((i & 8) != 0) {
                str3 = scheduleNotification.subtitle;
            }
            if ((i & 16) != 0) {
                str4 = scheduleNotification.body;
            }
            if ((i & 32) != 0) {
                j = scheduleNotification.delay;
            }
            long j2 = j;
            String str5 = str4;
            String str6 = str2;
            return scheduleNotification.copy(str, localNotificationType, str6, str3, str5, j2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final LocalNotificationType getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getSubtitle() {
            return this.subtitle;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getBody() {
            return this.body;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final long getDelay() {
            return this.delay;
        }

        public final ScheduleNotification copy(String id, LocalNotificationType type, String title, String subtitle, String body, long delay) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(subtitle, "subtitle");
            Intrinsics.checkNotNullParameter(body, "body");
            return new ScheduleNotification(id, type, title, subtitle, body, delay);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ScheduleNotification)) {
                return false;
            }
            ScheduleNotification scheduleNotification = (ScheduleNotification) other;
            return Intrinsics.areEqual(this.id, scheduleNotification.id) && Intrinsics.areEqual(this.type, scheduleNotification.type) && Intrinsics.areEqual(this.title, scheduleNotification.title) && Intrinsics.areEqual(this.subtitle, scheduleNotification.subtitle) && Intrinsics.areEqual(this.body, scheduleNotification.body) && this.delay == scheduleNotification.delay;
        }

        public int hashCode() {
            return (((((((((this.id.hashCode() * 31) + this.type.hashCode()) * 31) + this.title.hashCode()) * 31) + this.subtitle.hashCode()) * 31) + this.body.hashCode()) * 31) + Long.hashCode(this.delay);
        }

        public String toString() {
            return "ScheduleNotification(id=" + this.id + ", type=" + this.type + ", title=" + this.title + ", subtitle=" + this.subtitle + ", body=" + this.body + ", delay=" + this.delay + ")";
        }

        public final String getId() {
            return this.id;
        }

        public final LocalNotificationType getType() {
            return this.type;
        }

        public final String getTitle() {
            return this.title;
        }

        public final String getSubtitle() {
            return this.subtitle;
        }

        public final String getBody() {
            return this.body;
        }

        public final long getDelay() {
            return this.delay;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ScheduleNotification(String id, LocalNotificationType type, String title, String subtitle, String body, long j) {
            super(null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(subtitle, "subtitle");
            Intrinsics.checkNotNullParameter(body, "body");
            this.id = id;
            this.type = type;
            this.title = title;
            this.subtitle = subtitle;
            this.body = body;
            this.delay = j;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "permissionType", "Lcom/superwall/sdk/permissions/PermissionType;", "requestId", "", "<init>", "(Lcom/superwall/sdk/permissions/PermissionType;Ljava/lang/String;)V", "getPermissionType", "()Lcom/superwall/sdk/permissions/PermissionType;", "getRequestId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class RequestPermission extends PaywallMessage {
        private final PermissionType permissionType;
        private final String requestId;

        public static /* synthetic */ RequestPermission copy$default(RequestPermission requestPermission, PermissionType permissionType, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                permissionType = requestPermission.permissionType;
            }
            if ((i & 2) != 0) {
                str = requestPermission.requestId;
            }
            return requestPermission.copy(permissionType, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PermissionType getPermissionType() {
            return this.permissionType;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getRequestId() {
            return this.requestId;
        }

        public final RequestPermission copy(PermissionType permissionType, String requestId) {
            Intrinsics.checkNotNullParameter(permissionType, "permissionType");
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            return new RequestPermission(permissionType, requestId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RequestPermission)) {
                return false;
            }
            RequestPermission requestPermission = (RequestPermission) other;
            return this.permissionType == requestPermission.permissionType && Intrinsics.areEqual(this.requestId, requestPermission.requestId);
        }

        public int hashCode() {
            return (this.permissionType.hashCode() * 31) + this.requestId.hashCode();
        }

        public String toString() {
            return "RequestPermission(permissionType=" + this.permissionType + ", requestId=" + this.requestId + ")";
        }

        public final PermissionType getPermissionType() {
            return this.permissionType;
        }

        public final String getRequestId() {
            return this.requestId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestPermission(PermissionType permissionType, String requestId) {
            super(null);
            Intrinsics.checkNotNullParameter(permissionType, "permissionType");
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            this.permissionType = permissionType;
            this.requestId = requestId;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\u0017\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J?\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\tHÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001f\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "requestId", "", "name", "behavior", "Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior;", "variables", "", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior;Ljava/util/Map;)V", "getRequestId", "()Ljava/lang/String;", "getName", "getBehavior", "()Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior;", "getVariables", "()Ljava/util/Map;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class RequestCallback extends PaywallMessage {
        private final CustomCallbackBehavior behavior;
        private final String name;
        private final String requestId;
        private final Map<String, Object> variables;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ RequestCallback copy$default(RequestCallback requestCallback, String str, String str2, CustomCallbackBehavior customCallbackBehavior, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                str = requestCallback.requestId;
            }
            if ((i & 2) != 0) {
                str2 = requestCallback.name;
            }
            if ((i & 4) != 0) {
                customCallbackBehavior = requestCallback.behavior;
            }
            if ((i & 8) != 0) {
                map = requestCallback.variables;
            }
            return requestCallback.copy(str, str2, customCallbackBehavior, map);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getRequestId() {
            return this.requestId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final CustomCallbackBehavior getBehavior() {
            return this.behavior;
        }

        public final Map<String, Object> component4() {
            return this.variables;
        }

        public final RequestCallback copy(String requestId, String name, CustomCallbackBehavior behavior, Map<String, ? extends Object> variables) {
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(behavior, "behavior");
            return new RequestCallback(requestId, name, behavior, variables);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RequestCallback)) {
                return false;
            }
            RequestCallback requestCallback = (RequestCallback) other;
            return Intrinsics.areEqual(this.requestId, requestCallback.requestId) && Intrinsics.areEqual(this.name, requestCallback.name) && this.behavior == requestCallback.behavior && Intrinsics.areEqual(this.variables, requestCallback.variables);
        }

        public int hashCode() {
            int iHashCode = ((((this.requestId.hashCode() * 31) + this.name.hashCode()) * 31) + this.behavior.hashCode()) * 31;
            Map<String, Object> map = this.variables;
            return iHashCode + (map == null ? 0 : map.hashCode());
        }

        public String toString() {
            return "RequestCallback(requestId=" + this.requestId + ", name=" + this.name + ", behavior=" + this.behavior + ", variables=" + this.variables + ")";
        }

        public final String getRequestId() {
            return this.requestId;
        }

        public final String getName() {
            return this.name;
        }

        public final CustomCallbackBehavior getBehavior() {
            return this.behavior;
        }

        public final Map<String, Object> getVariables() {
            return this.variables;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestCallback(String requestId, String name, CustomCallbackBehavior behavior, Map<String, ? extends Object> map) {
            super(null);
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(behavior, "behavior");
            this.requestId = requestId;
            this.name = name;
            this.behavior = behavior;
            this.variables = map;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PageView;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "data", "Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;", "<init>", "(Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;)V", "getData", "()Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PageView extends PaywallMessage {
        private final PageViewData data;

        public static /* synthetic */ PageView copy$default(PageView pageView, PageViewData pageViewData, int i, Object obj) {
            if ((i & 1) != 0) {
                pageViewData = pageView.data;
            }
            return pageView.copy(pageViewData);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PageViewData getData() {
            return this.data;
        }

        public final PageView copy(PageViewData data) {
            Intrinsics.checkNotNullParameter(data, "data");
            return new PageView(data);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PageView) && Intrinsics.areEqual(this.data, ((PageView) other).data);
        }

        public int hashCode() {
            return this.data.hashCode();
        }

        public String toString() {
            return "PageView(data=" + this.data + ")";
        }

        public final PageViewData getData() {
            return this.data;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PageView(PageViewData data) {
            super(null);
            Intrinsics.checkNotNullParameter(data, "data");
            this.data = data;
        }
    }

    /* JADX INFO: compiled from: PaywallMessage.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "hapticType", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;", "<init>", "(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;)V", "getHapticType", "()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "HapticType", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class HapticFeedback extends PaywallMessage {
        private final HapticType hapticType;

        public static /* synthetic */ HapticFeedback copy$default(HapticFeedback hapticFeedback, HapticType hapticType, int i, Object obj) {
            if ((i & 1) != 0) {
                hapticType = hapticFeedback.hapticType;
            }
            return hapticFeedback.copy(hapticType);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final HapticType getHapticType() {
            return this.hapticType;
        }

        public final HapticFeedback copy(HapticType hapticType) {
            Intrinsics.checkNotNullParameter(hapticType, "hapticType");
            return new HapticFeedback(hapticType);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof HapticFeedback) && this.hapticType == ((HapticFeedback) other).hapticType;
        }

        public int hashCode() {
            return this.hapticType.hashCode();
        }

        public String toString() {
            return "HapticFeedback(hapticType=" + this.hapticType + ")";
        }

        public final HapticType getHapticType() {
            return this.hapticType;
        }

        /* JADX INFO: compiled from: PaywallMessage.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;", "", "rawName", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getRawName", "()Ljava/lang/String;", "LIGHT", "MEDIUM", "HEAVY", "SUCCESS", "WARNING", "ERROR", "SELECTION", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public enum HapticType {
            LIGHT("light"),
            MEDIUM(Constants.ScionAnalytics.PARAM_MEDIUM),
            HEAVY("heavy"),
            SUCCESS("success"),
            WARNING("warning"),
            ERROR(Constants.IPC_BUNDLE_KEY_SEND_ERROR),
            SELECTION("selection");

            private final String rawName;
            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);

            public static EnumEntries<HapticType> getEntries() {
                return $ENTRIES;
            }

            HapticType(String str) {
                this.rawName = str;
            }

            public final String getRawName() {
                return this.rawName;
            }

            /* JADX INFO: compiled from: PaywallMessage.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType$Companion;", "", "<init>", "()V", "fromRaw", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;", RNConstants.ARG_VALUE, "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final HapticType fromRaw(String value) {
                    HapticType next;
                    Intrinsics.checkNotNullParameter(value, "value");
                    Iterator<HapticType> it = HapticType.getEntries().iterator();
                    while (it.hasNext()) {
                        next = it.next();
                        if (Intrinsics.areEqual(next.getRawName(), value)) {
                            return next;
                        }
                    }
                    next = null;
                    return next;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HapticFeedback(HapticType hapticType) {
            super(null);
            Intrinsics.checkNotNullParameter(hapticType, "hapticType");
            this.hapticType = hapticType;
        }
    }
}
