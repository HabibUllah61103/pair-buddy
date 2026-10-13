package com.superwall.sdk.config.options;

import com.superwall.sdk.analytics.Tier;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: compiled from: PaywallOptions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002?@B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\"\b\u0016\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007¢\u0006\u0004\b\u0002\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000b\"\u0004\b\u0016\u0010\rR\u001a\u0010\u0017\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000b\"\u0004\b\u0019\u0010\rR&\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\n0\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u000b\"\u0004\b#\u0010\rR\u001a\u0010$\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u000b\"\u0004\b&\u0010\rR&\u0010'\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020(0\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u001e\"\u0004\b*\u0010 R\u001c\u0010+\u001a\u0004\u0018\u00010,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u00101\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u000b\"\u0004\b3\u0010\rR\u001c\u00104\u001a\u0004\u0018\u000105X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R*\u0010:\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010;\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010\b¨\u0006A"}, d2 = {"Lcom/superwall/sdk/config/options/PaywallOptions;", "", "<init>", "()V", "definition", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)V", "isHapticFeedbackEnabled", "", "()Z", "setHapticFeedbackEnabled", "(Z)V", "restoreFailed", "Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;", "getRestoreFailed", "()Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;", "setRestoreFailed", "(Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;)V", "shouldShowPurchaseFailureAlert", "getShouldShowPurchaseFailureAlert", "setShouldShowPurchaseFailureAlert", "shouldPreload", "getShouldPreload", "setShouldPreload", "preloadDeviceOverrides", "", "Lcom/superwall/sdk/analytics/Tier;", "getPreloadDeviceOverrides", "()Ljava/util/Map;", "setPreloadDeviceOverrides", "(Ljava/util/Map;)V", "useCachedTemplates", "getUseCachedTemplates", "setUseCachedTemplates", "automaticallyDismiss", "getAutomaticallyDismiss", "setAutomaticallyDismiss", "overrideProductsByName", "", "getOverrideProductsByName", "setOverrideProductsByName", "transactionBackgroundView", "Lcom/superwall/sdk/config/options/PaywallOptions$TransactionBackgroundView;", "getTransactionBackgroundView", "()Lcom/superwall/sdk/config/options/PaywallOptions$TransactionBackgroundView;", "setTransactionBackgroundView", "(Lcom/superwall/sdk/config/options/PaywallOptions$TransactionBackgroundView;)V", "optimisticLoading", "getOptimisticLoading", "setOptimisticLoading", "timeoutAfter", "Lkotlin/time/Duration;", "getTimeoutAfter-FghU774", "()Lkotlin/time/Duration;", "setTimeoutAfter-BwNAW2A", "(Lkotlin/time/Duration;)V", "onBackPressed", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getOnBackPressed", "()Lkotlin/jvm/functions/Function1;", "setOnBackPressed", "RestoreFailed", "TransactionBackgroundView", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PaywallOptions {
    private boolean automaticallyDismiss;
    private boolean isHapticFeedbackEnabled;
    private Function1<? super PaywallInfo, Boolean> onBackPressed;
    private boolean optimisticLoading;
    private Map<String, String> overrideProductsByName;
    private Map<Tier, Boolean> preloadDeviceOverrides;
    private RestoreFailed restoreFailed;
    private boolean shouldPreload;
    private boolean shouldShowPurchaseFailureAlert;
    private Duration timeoutAfter;
    private TransactionBackgroundView transactionBackgroundView;
    private boolean useCachedTemplates;

    /* JADX INFO: compiled from: PaywallOptions.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/superwall/sdk/config/options/PaywallOptions$TransactionBackgroundView;", "", "<init>", "(Ljava/lang/String;I)V", "SPINNER", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public enum TransactionBackgroundView {
        SPINNER;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<TransactionBackgroundView> getEntries() {
            return $ENTRIES;
        }
    }

    public PaywallOptions() {
        this.isHapticFeedbackEnabled = true;
        this.restoreFailed = new RestoreFailed();
        this.shouldShowPurchaseFailureAlert = true;
        this.shouldPreload = true;
        this.preloadDeviceOverrides = MapsKt.emptyMap();
        this.automaticallyDismiss = true;
        this.overrideProductsByName = MapsKt.emptyMap();
        this.transactionBackgroundView = TransactionBackgroundView.SPINNER;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PaywallOptions(Function1<? super PaywallOptions, Unit> definition) {
        this();
        Intrinsics.checkNotNullParameter(definition, "definition");
        definition.invoke(this);
    }

    /* JADX INFO: renamed from: isHapticFeedbackEnabled, reason: from getter */
    public final boolean getIsHapticFeedbackEnabled() {
        return this.isHapticFeedbackEnabled;
    }

    public final void setHapticFeedbackEnabled(boolean z) {
        this.isHapticFeedbackEnabled = z;
    }

    /* JADX INFO: compiled from: PaywallOptions.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\"\b\u0016\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007¢\u0006\u0004\b\u0002\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000e¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;", "", "<init>", "()V", "definition", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)V", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "message", "getMessage", "setMessage", "closeButtonTitle", "getCloseButtonTitle", "setCloseButtonTitle", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class RestoreFailed {
        private String closeButtonTitle;
        private String message;
        private String title;

        public RestoreFailed() {
            this.title = "No Subscription Found";
            this.message = "We couldn't find an active subscription for your account.";
            this.closeButtonTitle = "Okay";
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public RestoreFailed(Function1<? super RestoreFailed, Unit> definition) {
            this();
            Intrinsics.checkNotNullParameter(definition, "definition");
            definition.invoke(this);
        }

        public final String getTitle() {
            return this.title;
        }

        public final void setTitle(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.title = str;
        }

        public final String getMessage() {
            return this.message;
        }

        public final void setMessage(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.message = str;
        }

        public final String getCloseButtonTitle() {
            return this.closeButtonTitle;
        }

        public final void setCloseButtonTitle(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.closeButtonTitle = str;
        }
    }

    public final RestoreFailed getRestoreFailed() {
        return this.restoreFailed;
    }

    public final void setRestoreFailed(RestoreFailed restoreFailed) {
        Intrinsics.checkNotNullParameter(restoreFailed, "<set-?>");
        this.restoreFailed = restoreFailed;
    }

    public final boolean getShouldShowPurchaseFailureAlert() {
        return this.shouldShowPurchaseFailureAlert;
    }

    public final void setShouldShowPurchaseFailureAlert(boolean z) {
        this.shouldShowPurchaseFailureAlert = z;
    }

    public final boolean getShouldPreload() {
        return this.shouldPreload;
    }

    public final void setShouldPreload(boolean z) {
        this.shouldPreload = z;
    }

    public final Map<Tier, Boolean> getPreloadDeviceOverrides() {
        return this.preloadDeviceOverrides;
    }

    public final void setPreloadDeviceOverrides(Map<Tier, Boolean> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.preloadDeviceOverrides = map;
    }

    public final boolean getUseCachedTemplates() {
        return this.useCachedTemplates;
    }

    public final void setUseCachedTemplates(boolean z) {
        this.useCachedTemplates = z;
    }

    public final boolean getAutomaticallyDismiss() {
        return this.automaticallyDismiss;
    }

    public final void setAutomaticallyDismiss(boolean z) {
        this.automaticallyDismiss = z;
    }

    public final Map<String, String> getOverrideProductsByName() {
        return this.overrideProductsByName;
    }

    public final void setOverrideProductsByName(Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.overrideProductsByName = map;
    }

    public final TransactionBackgroundView getTransactionBackgroundView() {
        return this.transactionBackgroundView;
    }

    public final void setTransactionBackgroundView(TransactionBackgroundView transactionBackgroundView) {
        this.transactionBackgroundView = transactionBackgroundView;
    }

    public final boolean getOptimisticLoading() {
        return this.optimisticLoading;
    }

    public final void setOptimisticLoading(boolean z) {
        this.optimisticLoading = z;
    }

    /* JADX INFO: renamed from: getTimeoutAfter-FghU774, reason: not valid java name and from getter */
    public final Duration getTimeoutAfter() {
        return this.timeoutAfter;
    }

    /* JADX INFO: renamed from: setTimeoutAfter-BwNAW2A, reason: not valid java name */
    public final void m10589setTimeoutAfterBwNAW2A(Duration duration) {
        this.timeoutAfter = duration;
    }

    public final Function1<PaywallInfo, Boolean> getOnBackPressed() {
        return this.onBackPressed;
    }

    public final void setOnBackPressed(Function1<? super PaywallInfo, Boolean> function1) {
        this.onBackPressed = function1;
    }
}
