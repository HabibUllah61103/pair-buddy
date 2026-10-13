package com.superwall.sdk.paywall.view;

import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.ComponentCaller;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.Window;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import androidx.activity.EdgeToEdge;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.SystemBarStyle;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupKt;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.sun.jna.Callback;
import com.superwall.sdk.R;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.dependencies.DeviceHelperFactory;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Color_HelpersKt;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.models.paywall.LocalNotification;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.paywall.PaywallPresentationInfo;
import com.superwall.sdk.models.paywall.PaywallPresentationStyle;
import com.superwall.sdk.network.JsonFactory;
import com.superwall.sdk.paywall.presentation.PaywallCloseReason;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import com.superwall.sdk.paywall.view.webview.PaywallWebUI;
import com.superwall.sdk.store.transactions.notifications.NotificationScheduler;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import expo.modules.interfaces.permissions.PermissionsResponse;
import expo.modules.notifications.service.NotificationsService;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: SuperwallPaywallActivity.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\u0018\u0000 R2\u00020\u0001:\u0002RSB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J\u0012\u0010\u0013\u001a\u00020\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00122\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0012H\u0002J\u0010\u0010\u001f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0012H\u0002J,\u0010 \u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\t2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020#H\u0002J\u0010\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0002J.\u0010)\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010*\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020#H\u0002J\u0018\u0010-\u001a\u00020\r2\u0006\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020#H\u0002J\b\u0010.\u001a\u00020\rH\u0014J\b\u0010/\u001a\u00020\rH\u0002J\b\u00100\u001a\u00020\rH\u0002J\b\u00101\u001a\u00020\rH\u0002J\b\u00102\u001a\u00020\rH\u0014J\b\u00103\u001a\u00020\rH\u0014J\b\u00104\u001a\u00020\rH\u0014J\u0010\u00105\u001a\u00020\r2\u0006\u00106\u001a\u00020\u0015H\u0014J\b\u00107\u001a\u00020\rH\u0014J\u0018\u00108\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00109\u001a\u00020:H\u0002J\b\u0010;\u001a\u00020\rH\u0016J.\u0010<\u001a\u00020\r2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020?0>2\u0006\u0010@\u001a\u00020A2\b\b\u0002\u0010B\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010CJ\b\u0010D\u001a\u00020\rH\u0002J\u0018\u0010E\u001a\u00020\r2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020\u0007H\u0002J\u0010\u0010I\u001a\u00020\t2\u0006\u0010F\u001a\u00020GH\u0002J+\u0010J\u001a\u00020\r2\u0006\u0010K\u001a\u00020L2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020:0N2\u0006\u0010O\u001a\u00020PH\u0016¢\u0006\u0002\u0010QR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\nR\u0014\u0010\u000b\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\nR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006T"}, d2 = {"Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "contentView", "Landroid/view/View;", "notificationPermissionCallback", "Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;", "isBottomSheetView", "", "()Z", "isPopupView", "setContentView", "", "view", "mainScope", "Lkotlinx/coroutines/CoroutineScope;", "paywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onNewIntent", "intent", "Landroid/content/Intent;", "caller", "Landroid/app/ComponentCaller;", "setupActivityWithView", "presentationStyle", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "applyNavigationBarStyle", "applyFullscreenEdgeToEdge", "setupBottomSheetLayout", "isModal", "height", "", "cornerRadius", "roundedBackground", "Landroid/graphics/drawable/GradientDrawable;", "radius", "", "setupPopupLayout", "width", "bottomSheetCallback", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;", "initBottomSheetBehavior", "onStart", "setTransparentBackground", "hideBottomSheetAndFinish", "hidePopupAndFinish", "onResume", "onPause", "onStop", "onSaveInstanceState", "outState", "onDestroy", "restorePaywallViewAfterCleanup", "key", "", "finish", "attemptToScheduleNotifications", NotificationsService.NOTIFICATIONS_KEY, "", "Lcom/superwall/sdk/models/paywall/LocalNotification;", "factory", "Lcom/superwall/sdk/dependencies/DeviceHelperFactory;", "cancelExisting", "(Ljava/util/List;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createNotificationChannel", "checkAndRequestNotificationPermissions", "context", "Landroid/content/Context;", Callback.METHOD_NAME, "areNotificationsEnabled", "onRequestPermissionsResult", "requestCode", "", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "Companion", "NotificationPermissionCallback", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SuperwallPaywallActivity extends AppCompatActivity {
    private static final String ACTIVE_PAYWALL_TAG = "active_paywall";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long DEFAULT_DELAY = 300;
    private static final String IS_LIGHT_BACKGROUND_KEY = "isLightBackgroundKey";
    private static final String NOTIFICATION_CHANNEL_DESCRIPTION = "Notifications sent when a free trial is about to end.";
    public static final String NOTIFICATION_CHANNEL_ID = "com.superwall.android.notifications";
    private static final String NOTIFICATION_CHANNEL_NAME = "Trial Reminder Notifications";
    private static final String PRESENTATION_STYLE_KEY = "presentationStyleKey";
    private static final int REQUEST_CODE_NOTIFICATION_PERMISSION = 1001;
    private static final String VIEW_KEY = "viewKey";
    private BottomSheetBehavior.BottomSheetCallback bottomSheetCallback;
    private View contentView;
    private final CoroutineScope mainScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getMain());
    private NotificationPermissionCallback notificationPermissionCallback;

    /* JADX INFO: compiled from: SuperwallPaywallActivity.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;", "", "onPermissionResult", "", PermissionsResponse.GRANTED_KEY, "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface NotificationPermissionCallback {
        void onPermissionResult(boolean granted);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupPopupLayout$lambda$11(View view) {
    }

    /* JADX INFO: compiled from: SuperwallPaywallActivity.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J,\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00072\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0014\u0010\u0019\u001a\u00020\u0011*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;", "", "<init>", "()V", "REQUEST_CODE_NOTIFICATION_PERMISSION", "", "NOTIFICATION_CHANNEL_ID", "", "NOTIFICATION_CHANNEL_NAME", "NOTIFICATION_CHANNEL_DESCRIPTION", "VIEW_KEY", "PRESENTATION_STYLE_KEY", "IS_LIGHT_BACKGROUND_KEY", "ACTIVE_PAYWALL_TAG", "DEFAULT_DELAY", "", "startWithView", "", "context", "Landroid/content/Context;", "view", "Lcom/superwall/sdk/paywall/view/PaywallView;", "key", "presentationStyleOverride", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "prepareViewForDisplay", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ void startWithView$default(Companion companion, Context context, PaywallView paywallView, String str, PaywallPresentationStyle paywallPresentationStyle, int i, Object obj) {
            if ((i & 4) != 0) {
                str = UUID.randomUUID().toString();
            }
            if ((i & 8) != 0) {
                paywallPresentationStyle = null;
            }
            companion.startWithView(context, paywallView, str, paywallPresentationStyle);
        }

        public final void startWithView(Context context, PaywallView view, String key, PaywallPresentationStyle presentationStyleOverride) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(key, "key");
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new SuperwallPaywallActivity$Companion$startWithView$1(view, key, context, presentationStyleOverride, null), 3, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void prepareViewForDisplay(PaywallView paywallView, String str) {
            ShimmerView shimmerView;
            paywallView.getWebView().enableBackgroundRendering();
            PaywallView paywallView2 = paywallView;
            paywallView.getWebView().attach(paywallView2);
            ViewStorageViewModel viewStorageViewModelMakeViewStore = Superwall.INSTANCE.getInstance().getDependencyContainer$superwall_release().makeViewStore();
            for (View view : ViewGroupKt.getChildren(paywallView2)) {
                if ((view instanceof LoadingView) || (view instanceof ShimmerView)) {
                    viewStorageViewModelMakeViewStore.storeView(str, paywallView);
                }
            }
            View viewRetrieveView = viewStorageViewModelMakeViewStore.retrieveView(LoadingView.TAG);
            Intrinsics.checkNotNull(viewRetrieveView, "null cannot be cast to non-null type com.superwall.sdk.paywall.view.LoadingView");
            LoadingView loadingView = (LoadingView) viewRetrieveView;
            if (paywallView.getState().getPaywall().getPresentation().getStyle() instanceof PaywallPresentationStyle.Popup) {
                Context context = paywallView.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                shimmerView = new ShimmerView(context, null, 2, null);
                shimmerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            } else {
                View viewRetrieveView2 = viewStorageViewModelMakeViewStore.retrieveView(ShimmerView.TAG);
                Intrinsics.checkNotNull(viewRetrieveView2, "null cannot be cast to non-null type com.superwall.sdk.paywall.view.ShimmerView");
                shimmerView = (ShimmerView) viewRetrieveView2;
            }
            paywallView.setupWith(shimmerView, loadingView);
            viewStorageViewModelMakeViewStore.storeView(str, paywallView);
        }
    }

    private final boolean isBottomSheetView() {
        return (this.contentView instanceof CoordinatorLayout) && Build.VERSION.SDK_INT >= 30;
    }

    private final boolean isPopupView() {
        return (this.contentView instanceof ConstraintLayout) && Build.VERSION.SDK_INT >= 30;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.contentView = view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PaywallView paywallView() {
        View view = this.contentView;
        if (view != null) {
            return (PaywallView) view.findViewWithTag(ACTIVE_PAYWALL_TAG);
        }
        return null;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        String stringExtra;
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
        String stringExtra2 = getIntent().getStringExtra(PRESENTATION_STYLE_KEY);
        PaywallPresentationStyle paywallPresentationStyleFromIntentString = stringExtra2 != null ? PaywallPresentationStyle.INSTANCE.fromIntentString(JsonFactory.INSTANCE.getJSON_POLYMORPHIC(), stringExtra2) : null;
        EdgeToEdge.enable$default(this, SystemBarStyle.INSTANCE.auto(0, 0, new Function1() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(SuperwallPaywallActivity.onCreate$lambda$1(this.f$0, (Resources) obj));
            }
        }), null, 2, null);
        requestWindowFeature(1);
        super.onCreate(savedInstanceState);
        if (savedInstanceState == null || (stringExtra = savedInstanceState.getString(VIEW_KEY)) == null) {
            stringExtra = getIntent().getStringExtra(VIEW_KEY);
        }
        if (stringExtra == null) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "No view key found in savedInstanceState or intent, finishing activity", null, null, 24, null);
            finish();
            return;
        }
        try {
            ViewStorageViewModel viewStorageViewModelMakeViewStore = Superwall.INSTANCE.getInstance().getDependencyContainer$superwall_release().makeViewStore();
            View viewRetrieveView = viewStorageViewModelMakeViewStore.retrieveView(stringExtra);
            PaywallView paywallView = viewRetrieveView instanceof PaywallView ? (PaywallView) viewRetrieveView : null;
            if (paywallView == null) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "PaywallView not found for key: " + stringExtra + ". Activity may have been recreated after cleanup.", null, null, 24, null);
                finish();
                return;
            }
            if (savedInstanceState != null && paywallView() == null) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Activity restored but PaywallView cleared - recreating with available view", null, null, 24, null);
                PaywallView paywallView2 = Superwall.INSTANCE.getInstance().getPaywallView();
                if (paywallView2 != null) {
                    if (paywallView2.getChildCount() == 0) {
                        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "PaywallView was cleaned up, restoring child views", null, null, 24, null);
                        restorePaywallViewAfterCleanup(paywallView2, stringExtra);
                    }
                    viewStorageViewModelMakeViewStore.storeView(stringExtra, paywallView2);
                    setupActivityWithView(paywallView2, paywallPresentationStyleFromIntentString);
                    return;
                }
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "No PaywallView available in Superwall instance for recreation", null, null, 24, null);
                finish();
                return;
            }
            setupActivityWithView(paywallView, paywallPresentationStyleFromIntentString);
        } catch (Exception unused) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "Cannot access viewStore or create view - has Superwall been initialised?", null, null, 24, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreate$lambda$1(SuperwallPaywallActivity superwallPaywallActivity, Resources it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return !superwallPaywallActivity.getIntent().getBooleanExtra(IS_LIGHT_BACKGROUND_KEY, false);
    }

    public void onNewIntent(Intent intent, ComponentCaller caller) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(caller, "caller");
        super.onNewIntent(intent, caller);
        Uri data = intent.getData();
        if (data != null) {
            Result.m11240boximpl(Superwall.INSTANCE.m10571handleDeepLinkIoAF18A(data));
        }
    }

    private final void setupActivityWithView(PaywallView view, PaywallPresentationStyle presentationStyle) {
        SuperwallPaywallActivity superwallPaywallActivity;
        final PaywallView paywallView;
        getWindow().getDecorView().setBackgroundColor(view.getBackgroundColor());
        SuperwallPaywallActivity superwallPaywallActivity2 = this;
        view.registerIntent$superwall_release(superwallPaywallActivity2, this);
        boolean z = presentationStyle instanceof PaywallPresentationStyle.Drawer;
        boolean z2 = z || (presentationStyle instanceof PaywallPresentationStyle.Modal);
        boolean z3 = presentationStyle instanceof PaywallPresentationStyle.Popup;
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        view.setTag(ACTIVE_PAYWALL_TAG);
        view.setEncapsulatingActivity(new WeakReference<>(this));
        if (z2 && Build.VERSION.SDK_INT >= 30) {
            setupBottomSheetLayout(view, presentationStyle instanceof PaywallPresentationStyle.Modal, z ? ((PaywallPresentationStyle.Drawer) presentationStyle).getHeight() : 0.0d, z ? ((PaywallPresentationStyle.Drawer) presentationStyle).getCornerRadius() : 0.0d);
            superwallPaywallActivity = this;
            paywallView = view;
        } else if (z3 && Build.VERSION.SDK_INT >= 30) {
            PaywallPresentationStyle.Popup popup = (PaywallPresentationStyle.Popup) presentationStyle;
            double height = popup.getHeight();
            double width = popup.getWidth();
            double cornerRadius = popup.getCornerRadius();
            superwallPaywallActivity = this;
            paywallView = view;
            superwallPaywallActivity.setupPopupLayout(paywallView, height, width, cornerRadius);
        } else {
            superwallPaywallActivity = this;
            paywallView = view;
            superwallPaywallActivity.setContentView(paywallView);
        }
        superwallPaywallActivity.getOnBackPressedDispatcher().addCallback(superwallPaywallActivity2, new OnBackPressedCallback() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity.setupActivityWithView.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(true);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                Function1<PaywallInfo, Boolean> onBackPressed;
                PaywallViewState state;
                Paywall paywall;
                PaywallView paywallView2 = SuperwallPaywallActivity.this.paywallView();
                boolean zBooleanValue = false;
                if (((paywallView2 == null || (state = paywallView2.getState()) == null || (paywall = state.getPaywall()) == null) ? null : paywall.getRerouteBackButton()) == Paywall.ToggleMode.ENABLED && (onBackPressed = Superwall.INSTANCE.getInstance().getOptions().getPaywalls().getOnBackPressed()) != null) {
                    PaywallView paywallView3 = SuperwallPaywallActivity.this.paywallView();
                    zBooleanValue = onBackPressed.invoke(paywallView3 != null ? paywallView3.getInfo() : null).booleanValue();
                }
                if (zBooleanValue) {
                    return;
                }
                PaywallView.dismiss$superwall_release$default(paywallView, new PaywallResult.Declined(), PaywallCloseReason.ManualClose.INSTANCE, null, 4, null);
            }
        });
        try {
            ActionBar supportActionBar = superwallPaywallActivity.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.hide();
            }
        } catch (Throwable unused) {
        }
        if (presentationStyle instanceof PaywallPresentationStyle.Push) {
            if (Build.VERSION.SDK_INT >= 34) {
                superwallPaywallActivity.overrideActivityTransition(0, R.anim.slide_in_right, R.anim.slide_out_left);
            } else {
                superwallPaywallActivity.overridePendingTransition(R.anim.slide_in_right, R.anim.slide_out_left);
            }
            applyFullscreenEdgeToEdge(view);
            return;
        }
        if (presentationStyle instanceof PaywallPresentationStyle.Fullscreen) {
            applyFullscreenEdgeToEdge(view);
            return;
        }
        if (presentationStyle instanceof PaywallPresentationStyle.FullscreenNoAnimation) {
            if (Build.VERSION.SDK_INT >= 34) {
                superwallPaywallActivity.overrideActivityTransition(0, 0, 0);
                superwallPaywallActivity.overrideActivityTransition(1, 0, 0);
            } else {
                superwallPaywallActivity.overridePendingTransition(0, 0);
            }
            applyFullscreenEdgeToEdge(view);
            return;
        }
        if ((presentationStyle instanceof PaywallPresentationStyle.None) || presentationStyle == null) {
            applyFullscreenEdgeToEdge(view);
            return;
        }
        if ((presentationStyle instanceof PaywallPresentationStyle.Modal) || z) {
            if (Build.VERSION.SDK_INT < 30) {
                applyFullscreenEdgeToEdge(view);
                return;
            } else {
                applyNavigationBarStyle(view);
                return;
            }
        }
        if (!z3) {
            throw new NoWhenBranchMatchedException();
        }
        if (Build.VERSION.SDK_INT >= 34) {
            superwallPaywallActivity.overrideActivityTransition(0, 0, 0);
            superwallPaywallActivity.overrideActivityTransition(1, 0, 0);
        } else {
            superwallPaywallActivity.overridePendingTransition(0, 0);
        }
        if (Build.VERSION.SDK_INT < 30) {
            applyFullscreenEdgeToEdge(view);
        } else {
            applyNavigationBarStyle(view);
        }
    }

    private final void applyNavigationBarStyle(PaywallView view) {
        SystemBarStyle systemBarStyleLight;
        int backgroundColor = view.getBackgroundColor();
        SuperwallPaywallActivity superwallPaywallActivity = this;
        if (Color_HelpersKt.isDarkColor(backgroundColor)) {
            systemBarStyleLight = SystemBarStyle.INSTANCE.dark(backgroundColor);
        } else {
            systemBarStyleLight = SystemBarStyle.INSTANCE.light(backgroundColor, Color_HelpersKt.readableOverlayColor(backgroundColor));
        }
        EdgeToEdge.enable$default(superwallPaywallActivity, null, systemBarStyleLight, 1, null);
    }

    private final void applyFullscreenEdgeToEdge(PaywallView view) {
        SystemBarStyle systemBarStyleLight;
        int backgroundColor = view.getBackgroundColor();
        SuperwallPaywallActivity superwallPaywallActivity = this;
        if (Color_HelpersKt.isDarkColor(backgroundColor)) {
            systemBarStyleLight = SystemBarStyle.INSTANCE.dark(backgroundColor);
        } else {
            systemBarStyleLight = SystemBarStyle.INSTANCE.light(backgroundColor, Color_HelpersKt.readableOverlayColor(backgroundColor));
        }
        EdgeToEdge.enable$default(superwallPaywallActivity, null, systemBarStyleLight, 1, null);
        view.getWebView().onView(new Function1() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SuperwallPaywallActivity.applyFullscreenEdgeToEdge$lambda$6((View) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit applyFullscreenEdgeToEdge$lambda$6(View onView) {
        Intrinsics.checkNotNullParameter(onView, "$this$onView");
        ViewCompat.setOnApplyWindowInsetsListener(onView, new OnApplyWindowInsetsListener() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return SuperwallPaywallActivity.applyFullscreenEdgeToEdge$lambda$6$lambda$5(view, windowInsetsCompat);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat applyFullscreenEdgeToEdge$lambda$6$lambda$5(View v, WindowInsetsCompat windowInsets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (layoutParams != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.bottomMargin = insets.bottom;
            v.setLayoutParams(marginLayoutParams);
            return WindowInsetsCompat.CONSUMED;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
    }

    static /* synthetic */ void setupBottomSheetLayout$default(SuperwallPaywallActivity superwallPaywallActivity, PaywallView paywallView, boolean z, double d, double d2, int i, Object obj) {
        if ((i & 4) != 0) {
            d = 0.0d;
        }
        if ((i & 8) != 0) {
            d2 = 0.0d;
        }
        superwallPaywallActivity.setupBottomSheetLayout(paywallView, z, d, d2);
    }

    private final void setupBottomSheetLayout(PaywallView paywallView, boolean isModal, double height, double cornerRadius) {
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_bottom_sheet, (ViewGroup) null);
        setContentView(viewInflate);
        initBottomSheetBehavior(isModal, height);
        FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.container);
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SuperwallPaywallActivity.setupBottomSheetLayout$lambda$7(this.f$0, view);
            }
        });
        frameLayout.addView(paywallView);
        frameLayout.requestLayout();
        frameLayout.setBackground(roundedBackground(((float) cornerRadius) * Resources.getSystem().getDisplayMetrics().density));
        ViewCompat.setOnApplyWindowInsetsListener(frameLayout, new OnApplyWindowInsetsListener() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda10
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return SuperwallPaywallActivity.setupBottomSheetLayout$lambda$8(view, windowInsetsCompat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupBottomSheetLayout$lambda$7(SuperwallPaywallActivity superwallPaywallActivity, View view) {
        PaywallView paywallView = superwallPaywallActivity.paywallView();
        if (paywallView != null) {
            PaywallView.dismiss$superwall_release$default(paywallView, new PaywallResult.Declined(), PaywallCloseReason.ManualClose.INSTANCE, null, 4, null);
        } else {
            superwallPaywallActivity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat setupBottomSheetLayout$lambda$8(View v, WindowInsetsCompat windowInsets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
        v.setPadding(v.getPaddingLeft(), v.getPaddingTop(), v.getPaddingRight(), insets.bottom);
        return WindowInsetsCompat.CONSUMED;
    }

    private final GradientDrawable roundedBackground(float radius) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadii(new float[]{radius, radius, radius, radius, radius, radius, radius, radius});
        return gradientDrawable;
    }

    static /* synthetic */ void setupPopupLayout$default(SuperwallPaywallActivity superwallPaywallActivity, PaywallView paywallView, double d, double d2, double d3, int i, Object obj) {
        if ((i & 2) != 0) {
            d = 0.0d;
        }
        if ((i & 4) != 0) {
            d2 = 0.0d;
        }
        if ((i & 8) != 0) {
            d3 = 0.0d;
        }
        superwallPaywallActivity.setupPopupLayout(paywallView, d, d2, d3);
    }

    private final void setupPopupLayout(PaywallView paywallView, double height, double width, double cornerRadius) {
        PaywallViewState state;
        Paywall paywall;
        PaywallPresentationInfo presentation;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_popup, (ViewGroup) null);
        setContentView(viewInflate);
        ViewCompat.setOnApplyWindowInsetsListener(viewInflate, new OnApplyWindowInsetsListener() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda11
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return SuperwallPaywallActivity.setupPopupLayout$lambda$10(view, windowInsetsCompat);
            }
        });
        FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.container);
        ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        layoutParams2.width = 0;
        layoutParams2.height = 0;
        layoutParams2.matchConstraintDefaultWidth = 2;
        layoutParams2.matchConstraintDefaultHeight = 2;
        layoutParams2.matchConstraintPercentWidth = RangesKt.coerceIn(((float) width) / 100.0f, 0.01f, 1.0f);
        layoutParams2.matchConstraintPercentHeight = RangesKt.coerceIn(((float) height) / 100.0f, 0.01f, 1.0f);
        frameLayout.setLayoutParams(layoutParams2);
        paywallView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        final float f = ((float) cornerRadius) * Resources.getSystem().getDisplayMetrics().density;
        frameLayout.setClipToOutline(true);
        frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity.setupPopupLayout.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(outline, "outline");
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), f);
            }
        });
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SuperwallPaywallActivity.setupPopupLayout$lambda$11(view);
            }
        });
        frameLayout.addView(paywallView);
        frameLayout.requestLayout();
        frameLayout.setScaleX(0.0f);
        frameLayout.setScaleY(0.0f);
        frameLayout.setAlpha(0.0f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(frameLayout, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(frameLayout, "scaleY", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(frameLayout, "alpha", 0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        PaywallView paywallView2 = paywallView();
        animatorSet.setDuration((paywallView2 == null || (state = paywallView2.getState()) == null || (paywall = state.getPaywall()) == null || (presentation = paywall.getPresentation()) == null) ? DEFAULT_DELAY : presentation.getDelay());
        animatorSet.setInterpolator(new OvershootInterpolator(1.1f));
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat setupPopupLayout$lambda$10(View v, WindowInsetsCompat windowInsets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
        v.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        return WindowInsetsCompat.CONSUMED;
    }

    private final void initBottomSheetBehavior(boolean isModal, double height) {
        PaywallView paywallView;
        PaywallWebUI webView;
        View view = this.contentView;
        Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.view.ViewGroup");
        final ViewGroup viewGroup = (ViewGroup) view;
        final BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(viewGroup.getChildAt(0));
        Intrinsics.checkNotNullExpressionValue(bottomSheetBehaviorFrom, "from(...)");
        if (!isModal) {
            if (height > 1.0d) {
                height /= (double) 100;
            }
            bottomSheetBehaviorFrom.setHalfExpandedRatio(RangesKt.coerceIn((float) height, 0.01f, 0.99f));
        } else {
            ViewGroup viewGroup2 = viewGroup;
            ViewGroup.LayoutParams layoutParams = viewGroup2.getLayoutParams();
            if (layoutParams != null) {
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                ((FrameLayout.LayoutParams) layoutParams).topMargin = (int) (((double) Resources.getSystem().getDisplayMetrics().heightPixels) * 0.05d);
                viewGroup2.setLayoutParams(layoutParams);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
        }
        bottomSheetBehaviorFrom.setSkipCollapsed(true);
        bottomSheetBehaviorFrom.setState(5);
        final int i = !isModal ? 6 : 3;
        ViewGroup viewGroup3 = viewGroup;
        if (viewGroup3.isLaidOut() && !viewGroup3.isLayoutRequested()) {
            viewGroup.post(new SuperwallPaywallActivity$initBottomSheetBehavior$2$1(bottomSheetBehaviorFrom, i));
        } else {
            viewGroup3.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$initBottomSheetBehavior$$inlined$doOnLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                    view2.removeOnLayoutChangeListener(this);
                    viewGroup.post(new SuperwallPaywallActivity$initBottomSheetBehavior$2$1(bottomSheetBehaviorFrom, i));
                }
            });
        }
        viewGroup.invalidate();
        final Ref.IntRef intRef = new Ref.IntRef();
        if (isModal && (paywallView = paywallView()) != null && (webView = paywallView.getWebView()) != null) {
            webView.setOnScrollChangeListener(new PaywallWebUI.OnScrollChangeListener() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity.initBottomSheetBehavior.3
                @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI.OnScrollChangeListener
                public void onScrollChanged(int currentHorizontalScroll, int currentVerticalScroll, int oldHorizontalScroll, int oldcurrentVerticalScroll) {
                    intRef.element = currentVerticalScroll;
                }
            });
        }
        AnonymousClass4 anonymousClass4 = new AnonymousClass4(isModal, intRef, bottomSheetBehaviorFrom, this);
        this.bottomSheetCallback = anonymousClass4;
        bottomSheetBehaviorFrom.addBottomSheetCallback(anonymousClass4);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$initBottomSheetBehavior$4, reason: invalid class name */
    /* JADX INFO: compiled from: SuperwallPaywallActivity.kt */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"com/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;", "onStateChanged", "", "bottomSheet", "Landroid/view/View;", "newState", "", "onSlide", "slideOffset", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AnonymousClass4 extends BottomSheetBehavior.BottomSheetCallback {
        final /* synthetic */ BottomSheetBehavior<View> $bottomSheetBehavior;
        final /* synthetic */ Ref.IntRef $currentWebViewScroll;
        final /* synthetic */ boolean $isModal;
        final /* synthetic */ SuperwallPaywallActivity this$0;

        AnonymousClass4(boolean z, Ref.IntRef intRef, BottomSheetBehavior<View> bottomSheetBehavior, SuperwallPaywallActivity superwallPaywallActivity) {
            this.$isModal = z;
            this.$currentWebViewScroll = intRef;
            this.$bottomSheetBehavior = bottomSheetBehavior;
            this.this$0 = superwallPaywallActivity;
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(View bottomSheet, int newState) {
            Intrinsics.checkNotNullParameter(bottomSheet, "bottomSheet");
            if (this.$isModal && newState == 1 && this.$currentWebViewScroll.element > 0) {
                this.$bottomSheetBehavior.setState(3);
                return;
            }
            if (this.$isModal && newState == 6) {
                this.$bottomSheetBehavior.setState(3);
                return;
            }
            if (newState == 5) {
                PaywallView paywallView = this.this$0.paywallView();
                if (paywallView != null) {
                    PaywallView.dismiss$superwall_release$default(paywallView, new PaywallResult.Declined(), PaywallCloseReason.ManualClose.INSTANCE, null, 4, null);
                } else {
                    this.this$0.finish();
                }
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(View bottomSheet, float slideOffset) {
            Intrinsics.checkNotNullParameter(bottomSheet, "bottomSheet");
            PaywallView paywallView = this.this$0.paywallView();
            PaywallWebUI webView = paywallView != null ? paywallView.getWebView() : null;
            if (webView != null) {
                final BottomSheetBehavior<View> bottomSheetBehavior = this.$bottomSheetBehavior;
                webView.onView(new Function1() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$initBottomSheetBehavior$4$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SuperwallPaywallActivity.AnonymousClass4.onSlide$lambda$0(bottomSheetBehavior, (View) obj);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit onSlide$lambda$0(BottomSheetBehavior bottomSheetBehavior, View onView) {
            Intrinsics.checkNotNullParameter(onView, "$this$onView");
            bottomSheetBehavior.setDraggable(!onView.canScrollVertically(-1));
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        PaywallView paywallView = paywallView();
        if (paywallView == null) {
            return;
        }
        if (paywallView.getState().isBrowserViewPresented()) {
            paywallView.updateState(new PaywallViewState.Updates.SetBrowserPresented(true));
        }
        paywallView.beforeViewCreated();
    }

    private final void setTransparentBackground() {
        if (Build.VERSION.SDK_INT >= 30) {
            setTranslucent(true);
            ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(Color.argb(0, 0, 0, 0)), Integer.valueOf(Color.argb(200, 0, 0, 0)));
            valueAnimatorOfObject.setDuration(600L);
            valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SuperwallPaywallActivity.setTransparentBackground$lambda$17$lambda$16(this.f$0, valueAnimator);
                }
            });
            valueAnimatorOfObject.start();
            return;
        }
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        setTheme(android.R.style.Theme.Translucent.NoTitleBar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setTransparentBackground$lambda$17$lambda$16(SuperwallPaywallActivity superwallPaywallActivity, ValueAnimator animator) {
        Intrinsics.checkNotNullParameter(animator, "animator");
        Window window = superwallPaywallActivity.getWindow();
        Object animatedValue = animator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        window.setBackgroundDrawable(new ColorDrawable(((Integer) animatedValue).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideBottomSheetAndFinish() {
        View view = this.contentView;
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup != null && (viewGroup instanceof CoordinatorLayout)) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewGroup;
            if (coordinatorLayout.getChildCount() > 0) {
                final BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(coordinatorLayout.getChildAt(0));
                Intrinsics.checkNotNullExpressionValue(bottomSheetBehaviorFrom, "from(...)");
                BottomSheetBehavior.BottomSheetCallback bottomSheetCallback = this.bottomSheetCallback;
                if (bottomSheetCallback != null) {
                    bottomSheetBehaviorFrom.removeBottomSheetCallback(bottomSheetCallback);
                    this.bottomSheetCallback = null;
                }
                coordinatorLayout.post(new Runnable() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        bottomSheetBehaviorFrom.setState(5);
                    }
                });
            }
        }
        final int iArgb = Color.argb(200, 0, 0, 0);
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(iArgb), Integer.valueOf(Color.argb(0, 0, 0, 0)));
        valueAnimatorOfObject.setDuration(DEFAULT_DELAY);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SuperwallPaywallActivity.hideBottomSheetAndFinish$lambda$21$lambda$20(iArgb, this, valueAnimator);
            }
        });
        valueAnimatorOfObject.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void hideBottomSheetAndFinish$lambda$21$lambda$20(int i, SuperwallPaywallActivity superwallPaywallActivity, ValueAnimator animator) {
        Intrinsics.checkNotNullParameter(animator, "animator");
        Object animatedValue = animator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        if (((Integer) animatedValue).intValue() / i < 0.1d) {
            super.finish();
        }
        Window window = superwallPaywallActivity.getWindow();
        Object animatedValue2 = animator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue2, "null cannot be cast to non-null type kotlin.Int");
        window.setBackgroundDrawable(new ColorDrawable(((Integer) animatedValue2).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hidePopupAndFinish() {
        super.finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        PaywallView paywallView = paywallView();
        if (paywallView == null) {
            return;
        }
        if (isBottomSheetView() || isPopupView()) {
            setTransparentBackground();
        }
        paywallView.onViewCreated();
        paywallView.getWebView().onView(new Function1() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SuperwallPaywallActivity.onResume$lambda$22((View) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onResume$lambda$22(View onView) {
        Intrinsics.checkNotNullParameter(onView, "$this$onView");
        onView.requestFocus();
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        PaywallView paywallView = paywallView();
        if (paywallView == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new C05511(paywallView, this, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$onPause$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SuperwallPaywallActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.SuperwallPaywallActivity$onPause$1", f = "SuperwallPaywallActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05511 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallView $paywallVc;
        int label;
        final /* synthetic */ SuperwallPaywallActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05511(PaywallView paywallView, SuperwallPaywallActivity superwallPaywallActivity, Continuation<? super C05511> continuation) {
            super(2, continuation);
            this.$paywallVc = paywallView;
            this.this$0 = superwallPaywallActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05511(this.$paywallVc, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05511) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$paywallVc.beforeOnDestroy(this.this$0.isFinishing());
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        PaywallView paywallView = paywallView();
        if (paywallView == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new C05521(paywallView, this, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$onStop$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SuperwallPaywallActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.SuperwallPaywallActivity$onStop$1", f = "SuperwallPaywallActivity.kt", i = {}, l = {762}, m = "invokeSuspend", n = {}, s = {})
    static final class C05521 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallView $paywallVc;
        int label;
        final /* synthetic */ SuperwallPaywallActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05521(PaywallView paywallView, SuperwallPaywallActivity superwallPaywallActivity, Continuation<? super C05521> continuation) {
            super(2, continuation);
            this.$paywallVc = paywallView;
            this.this$0 = superwallPaywallActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05521(this.$paywallVc, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05521) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (this.$paywallVc.destroyed(this.this$0.isFinishing(), this) == coroutine_suspended) {
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

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        String stringExtra = getIntent().getStringExtra(VIEW_KEY);
        if (stringExtra != null) {
            outState.putString(VIEW_KEY, stringExtra);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        Either.Failure failure;
        super.onDestroy();
        View view = this.contentView;
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup != null && (viewGroup instanceof CoordinatorLayout)) {
            BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(((CoordinatorLayout) viewGroup).getChildAt(0));
            Intrinsics.checkNotNullExpressionValue(bottomSheetBehaviorFrom, "from(...)");
            BottomSheetBehavior.BottomSheetCallback bottomSheetCallback = this.bottomSheetCallback;
            if (bottomSheetCallback != null) {
                bottomSheetBehaviorFrom.removeBottomSheetCallback(bottomSheetCallback);
            }
        }
        String stringExtra = getIntent().getStringExtra(VIEW_KEY);
        if (stringExtra != null) {
            try {
                View viewRetrieveView = Superwall.INSTANCE.getInstance().getDependencyContainer$superwall_release().makeViewStore().retrieveView(stringExtra);
                PaywallView paywallView = viewRetrieveView instanceof PaywallView ? (PaywallView) viewRetrieveView : null;
                if (paywallView != null) {
                    paywallView.cleanup();
                }
            } catch (Throwable th) {
                if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                    ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
                }
                failure = new Either.Failure(th);
            }
        }
        failure = new Either.Success(Unit.INSTANCE);
        EitherKt.onError(failure, new Function1() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SuperwallPaywallActivity.onDestroy$lambda$26((Throwable) obj);
            }
        });
        PaywallView paywallView2 = paywallView();
        if (paywallView2 != null) {
            paywallView2.cleanup();
        }
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        PaywallView paywallView3 = paywallView();
        PaywallView paywallView4 = paywallView3 instanceof ActivityEncapsulatable ? paywallView3 : null;
        if (paywallView4 != null) {
            paywallView4.setEncapsulatingActivity(null);
        }
        this.contentView = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onDestroy$lambda$26(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "Error cleaning up PaywallView: " + it, null, null, 24, null);
        return Unit.INSTANCE;
    }

    private final void restorePaywallViewAfterCleanup(PaywallView paywallView, String key) {
        Either.Failure failure;
        try {
            INSTANCE.prepareViewForDisplay(paywallView, key);
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Successfully restored PaywallView child views after cleanup", null, null, 24, null);
            failure = new Either.Success(Unit.INSTANCE);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            failure = new Either.Failure(th);
        }
        EitherKt.onError(failure, new Function1() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SuperwallPaywallActivity.restorePaywallViewAfterCleanup$lambda$28((Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit restorePaywallViewAfterCleanup$lambda$28(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "Failed to restore PaywallView after cleanup: " + it.getMessage(), null, null, 24, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$finish$1, reason: invalid class name */
    /* JADX INFO: compiled from: SuperwallPaywallActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.SuperwallPaywallActivity$finish$1", f = "SuperwallPaywallActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SuperwallPaywallActivity.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                SuperwallPaywallActivity.this.hideBottomSheetAndFinish();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // android.app.Activity
    public void finish() {
        if (isBottomSheetView()) {
            BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new AnonymousClass1(null), 3, null);
        } else if (isPopupView()) {
            BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new AnonymousClass2(null), 3, null);
        } else {
            super.finish();
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$finish$2, reason: invalid class name */
    /* JADX INFO: compiled from: SuperwallPaywallActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.SuperwallPaywallActivity$finish$2", f = "SuperwallPaywallActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SuperwallPaywallActivity.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                SuperwallPaywallActivity.this.hidePopupAndFinish();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static /* synthetic */ Object attemptToScheduleNotifications$default(SuperwallPaywallActivity superwallPaywallActivity, List list, DeviceHelperFactory deviceHelperFactory, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return superwallPaywallActivity.attemptToScheduleNotifications(list, deviceHelperFactory, z, continuation);
    }

    public final Object attemptToScheduleNotifications(final List<LocalNotification> list, final DeviceHelperFactory deviceHelperFactory, final boolean z, Continuation<? super Unit> continuation) {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
        final SafeContinuation safeContinuation2 = safeContinuation;
        if (list.isEmpty()) {
            Result.Companion companion = Result.INSTANCE;
            safeContinuation2.resumeWith(Result.m11241constructorimpl(Unit.INSTANCE));
        } else {
            createNotificationChannel();
            NotificationPermissionCallback notificationPermissionCallback = new NotificationPermissionCallback() { // from class: com.superwall.sdk.paywall.view.SuperwallPaywallActivity$attemptToScheduleNotifications$2$1
                @Override // com.superwall.sdk.paywall.view.SuperwallPaywallActivity.NotificationPermissionCallback
                public void onPermissionResult(boolean granted) {
                    if (granted) {
                        NotificationScheduler.INSTANCE.scheduleNotifications(list, deviceHelperFactory, this, z);
                    }
                    Continuation<Unit> continuation2 = safeContinuation2;
                    Result.Companion companion2 = Result.INSTANCE;
                    continuation2.resumeWith(Result.m11241constructorimpl(Unit.INSTANCE));
                }
            };
            this.notificationPermissionCallback = notificationPermissionCallback;
            Intrinsics.checkNotNull(notificationPermissionCallback);
            checkAndRequestNotificationPermissions(this, notificationPermissionCallback);
        }
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? orThrow : Unit.INSTANCE;
    }

    private final void createNotificationChannel() {
        NotificationChannel notificationChannel = new NotificationChannel(NOTIFICATION_CHANNEL_ID, NOTIFICATION_CHANNEL_NAME, 3);
        notificationChannel.setDescription(NOTIFICATION_CHANNEL_DESCRIPTION);
        notificationChannel.setShowBadge(false);
        Object systemService = getSystemService(NotificationsService.NOTIFICATION_KEY);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).createNotificationChannel(notificationChannel);
    }

    private final void checkAndRequestNotificationPermissions(Context context, NotificationPermissionCallback callback) {
        if (Build.VERSION.SDK_INT >= 33) {
            if (ContextCompat.checkSelfPermission(context, "android.permission.POST_NOTIFICATIONS") != 0) {
                Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
                Activity activity = (Activity) context;
                if (!ActivityCompat.shouldShowRequestPermissionRationale(activity, "android.permission.POST_NOTIFICATIONS")) {
                    ActivityCompat.requestPermissions(activity, new String[]{"android.permission.POST_NOTIFICATIONS"}, 1001);
                    return;
                } else {
                    callback.onPermissionResult(false);
                    return;
                }
            }
            callback.onPermissionResult(true);
            return;
        }
        callback.onPermissionResult(areNotificationsEnabled(context));
    }

    private final boolean areNotificationsEnabled(Context context) {
        Object systemService = getSystemService(NotificationsService.NOTIFICATION_KEY);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationChannel notificationChannel = ((NotificationManager) systemService).getNotificationChannel(NOTIFICATION_CHANNEL_ID);
        if (notificationChannel == null || notificationChannel.getImportance() != 0) {
            return NotificationManagerCompat.from(context).areNotificationsEnabled();
        }
        return false;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode != 1001 || Build.VERSION.SDK_INT < 33) {
            return;
        }
        boolean z = !(grantResults.length == 0) && grantResults[0] == 0;
        NotificationPermissionCallback notificationPermissionCallback = this.notificationPermissionCallback;
        if (notificationPermissionCallback != null) {
            notificationPermissionCallback.onPermissionResult(z);
        }
    }
}
