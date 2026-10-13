package com.superwall.sdk.debug;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.superwall.sdk.R;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.debug.localizations.SWLocalizationActivity;
import com.superwall.sdk.dependencies.RequestFactory;
import com.superwall.sdk.dependencies.ViewFactory;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.network.Network;
import com.superwall.sdk.paywall.manager.PaywallManager;
import com.superwall.sdk.paywall.presentation.internal.InternalPresentationKt;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequestType;
import com.superwall.sdk.paywall.presentation.internal.request.PresentationInfo;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallSkippedReason;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import com.superwall.sdk.paywall.request.PaywallRequestManager;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.PaywallViewState;
import com.superwall.sdk.store.GetProductsResponse;
import com.superwall.sdk.store.StoreKit;
import com.superwall.sdk.store.StoreManager;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: DebugView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0002efB?\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u0006\u0010O\u001a\u00020PJ\u0006\u0010Q\u001a\u00020PJ\u000e\u0010R\u001a\u00020A2\u0006\u0010S\u001a\u00020AJ\u000e\u0010T\u001a\u00020PH\u0086@¢\u0006\u0002\u0010UJ\u000e\u0010V\u001a\u00020PH\u0086@¢\u0006\u0002\u0010UJ\u000e\u0010W\u001a\u00020PH\u0086@¢\u0006\u0002\u0010UJ\b\u0010X\u001a\u00020PH\u0002J\b\u0010Y\u001a\u00020PH\u0002J\u0006\u0010Z\u001a\u00020PJ\u000e\u0010[\u001a\u00020PH\u0086@¢\u0006\u0002\u0010UJ\b\u0010\\\u001a\u00020PH\u0002J\u0006\u0010]\u001a\u00020PJ*\u0010^\u001a\u00020P2\b\u0010_\u001a\u0004\u0018\u00010\u001a2\b\u0010`\u001a\u0004\u0018\u00010\u001a2\u000e\b\u0002\u0010a\u001a\b\u0012\u0004\u0012\u00020b0$J\u0010\u0010c\u001a\u00020P2\b\b\u0002\u0010d\u001a\u00020(R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010'\u001a\u00020(X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001b\u0010-\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b/\u00100R\u001b\u00103\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u00102\u001a\u0004\b5\u00106R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u00102\u001a\u0004\b9\u00106R\u001b\u0010;\u001a\u00020<8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u00102\u001a\u0004\b=\u0010>R\u000e\u0010@\u001a\u00020AX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020AX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010C\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bE\u00102\u001a\u0004\bD\u00106R\u000e\u0010F\u001a\u00020GX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010H\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u00102\u001a\u0004\bI\u00106R\u001b\u0010K\u001a\u00020\u00018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u00102\u001a\u0004\bL\u0010M¨\u0006g"}, d2 = {"Lcom/superwall/sdk/debug/DebugView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/superwall/sdk/debug/AppCompatActivityEncapsulatable;", "context", "Landroid/content/Context;", "storeManager", "Lcom/superwall/sdk/store/StoreManager;", "network", "Lcom/superwall/sdk/network/Network;", "paywallRequestManager", "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;", "paywallManager", "Lcom/superwall/sdk/paywall/manager/PaywallManager;", "debugManager", "Lcom/superwall/sdk/debug/DebugManager;", "factory", "Lcom/superwall/sdk/debug/DebugView$Factory;", "<init>", "(Landroid/content/Context;Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lcom/superwall/sdk/debug/DebugManager;Lcom/superwall/sdk/debug/DebugView$Factory;)V", "encapsulatingActivity", "Landroidx/appcompat/app/AppCompatActivity;", "getEncapsulatingActivity", "()Landroidx/appcompat/app/AppCompatActivity;", "setEncapsulatingActivity", "(Landroidx/appcompat/app/AppCompatActivity;)V", "paywallDatabaseId", "", "getPaywallDatabaseId$superwall_release", "()Ljava/lang/String;", "setPaywallDatabaseId$superwall_release", "(Ljava/lang/String;)V", "paywallIdentifier", "initialLocaleIdentifier", "previewViewContent", "Landroid/view/View;", "paywalls", "", "Lcom/superwall/sdk/models/paywall/Paywall;", "paywall", "isActive", "", "isActive$superwall_release", "()Z", "setActive$superwall_release", "(Z)V", "logoImageView", "Landroid/widget/ImageView;", "getLogoImageView", "()Landroid/widget/ImageView;", "logoImageView$delegate", "Lkotlin/Lazy;", "exitButton", "Landroid/widget/LinearLayout;", "getExitButton", "()Landroid/widget/LinearLayout;", "exitButton$delegate", "consoleButton", "getConsoleButton", "consoleButton$delegate", "activityIndicator", "Landroid/widget/ProgressBar;", "getActivityIndicator", "()Landroid/widget/ProgressBar;", "activityIndicator$delegate", "primaryColor", "", "lightBackgroundColor", "bottomButton", "getBottomButton", "bottomButton$delegate", "previewTextView", "Landroid/widget/TextView;", "previewPickerButton", "getPreviewPickerButton", "previewPickerButton$delegate", "previewContainerView", "getPreviewContainerView", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "previewContainerView$delegate", "viewDestroyed", "", "addSubviews", "dpToPx", "dp", "loadPreview", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "finishLoadingPreview", "addPaywallPreview", "pressedPreview", "pressedExitButton", "pressedConsoleButton", "showConsole", "showLocalizationPicker", "pressedBottomButton", "presentAlert", "title", "message", "options", "Lcom/superwall/sdk/debug/DebugView$AlertOption;", "loadAndShowPaywall", "freeTrialAvailable", "Factory", "AlertOption", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DebugView extends ConstraintLayout implements AppCompatActivityEncapsulatable {

    /* JADX INFO: renamed from: activityIndicator$delegate, reason: from kotlin metadata */
    private final Lazy activityIndicator;

    /* JADX INFO: renamed from: bottomButton$delegate, reason: from kotlin metadata */
    private final Lazy bottomButton;

    /* JADX INFO: renamed from: consoleButton$delegate, reason: from kotlin metadata */
    private final Lazy consoleButton;
    private final Context context;
    private final DebugManager debugManager;
    private AppCompatActivity encapsulatingActivity;

    /* JADX INFO: renamed from: exitButton$delegate, reason: from kotlin metadata */
    private final Lazy exitButton;
    private final Factory factory;
    private String initialLocaleIdentifier;
    private boolean isActive;
    private final int lightBackgroundColor;

    /* JADX INFO: renamed from: logoImageView$delegate, reason: from kotlin metadata */
    private final Lazy logoImageView;
    private final Network network;
    private Paywall paywall;
    private String paywallDatabaseId;
    private String paywallIdentifier;
    private final PaywallManager paywallManager;
    private final PaywallRequestManager paywallRequestManager;
    private List<Paywall> paywalls;

    /* JADX INFO: renamed from: previewContainerView$delegate, reason: from kotlin metadata */
    private final Lazy previewContainerView;

    /* JADX INFO: renamed from: previewPickerButton$delegate, reason: from kotlin metadata */
    private final Lazy previewPickerButton;
    private TextView previewTextView;
    private View previewViewContent;
    private final int primaryColor;
    private final StoreManager storeManager;

    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lcom/superwall/sdk/debug/DebugView$Factory;", "Lcom/superwall/sdk/dependencies/RequestFactory;", "Lcom/superwall/sdk/dependencies/ViewFactory;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Factory extends RequestFactory, ViewFactory {
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugView$addPaywallPreview$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.debug.DebugView", f = "DebugView.kt", i = {0}, l = {598}, m = "addPaywallPreview", n = {"this"}, s = {"L$0"})
    static final class C04671 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04671(Continuation<? super C04671> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DebugView.this.addPaywallPreview(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugView$finishLoadingPreview$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.debug.DebugView", f = "DebugView.kt", i = {0, 0, 0, 1, 1}, l = {569, 572, 579}, m = "finishLoadingPreview", n = {"this", "request", "paywall", "this", "paywall"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1"})
    static final class C04681 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C04681(Continuation<? super C04681> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DebugView.this.finishLoadingPreview(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugView$loadPreview$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.debug.DebugView", f = "DebugView.kt", i = {0, 1}, l = {525, 535, 538, 548}, m = "loadPreview", n = {"this", "this"}, s = {"L$0", "L$0"})
    static final class C04711 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04711(Continuation<? super C04711> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DebugView.this.loadPreview(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugView$showConsole$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.debug.DebugView", f = "DebugView.kt", i = {0, 0}, l = {743}, m = "showConsole", n = {"this", "paywall"}, s = {"L$0", "L$1"})
    static final class C04751 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C04751(Continuation<? super C04751> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DebugView.this.showConsole(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DebugView(Context context, StoreManager storeManager, Network network, PaywallRequestManager paywallRequestManager, PaywallManager paywallManager, DebugManager debugManager, Factory factory) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(storeManager, "storeManager");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(paywallRequestManager, "paywallRequestManager");
        Intrinsics.checkNotNullParameter(paywallManager, "paywallManager");
        Intrinsics.checkNotNullParameter(debugManager, "debugManager");
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.context = context;
        this.storeManager = storeManager;
        this.network = network;
        this.paywallRequestManager = paywallRequestManager;
        this.paywallManager = paywallManager;
        this.debugManager = debugManager;
        this.factory = factory;
        this.paywalls = CollectionsKt.emptyList();
        this.logoImageView = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DebugView.logoImageView_delegate$lambda$1(this.f$0);
            }
        });
        this.exitButton = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DebugView.exitButton_delegate$lambda$5(this.f$0);
            }
        });
        this.consoleButton = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DebugView.consoleButton_delegate$lambda$9(this.f$0);
            }
        });
        this.activityIndicator = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DebugView.activityIndicator_delegate$lambda$11(this.f$0);
            }
        });
        this.primaryColor = Color.parseColor("#75FFF1");
        this.lightBackgroundColor = Color.parseColor("#181A1E");
        this.bottomButton = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DebugView.bottomButton_delegate$lambda$18(this.f$0);
            }
        });
        this.previewPickerButton = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DebugView.previewPickerButton_delegate$lambda$24(this.f$0);
            }
        });
        this.previewContainerView = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DebugView.previewContainerView_delegate$lambda$27(this.f$0);
            }
        });
        this.initialLocaleIdentifier = Superwall.INSTANCE.getInstance().getOptions().getLocaleIdentifier();
        addSubviews();
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012 \b\u0002\u0010\u0004\u001a\u001a\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J&\u0010\u0014\u001a\u001a\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\t\u0010\u0015\u001a\u00020\tHÆ\u0003JF\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032 \b\u0002\u0010\u0004\u001a\u001a\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\tHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR+\u0010\u0004\u001a\u001a\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/superwall/sdk/debug/DebugView$AlertOption;", "", "title", "", "action", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "style", "", "<init>", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V", "getTitle", "()Ljava/lang/String;", "getAction", "()Lkotlin/jvm/functions/Function1;", "Lkotlin/jvm/functions/Function1;", "getStyle", "()I", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Lcom/superwall/sdk/debug/DebugView$AlertOption;", "equals", "", "other", "hashCode", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class AlertOption {
        private final Function1<Continuation<? super Unit>, Object> action;
        private final int style;
        private final String title;

        public AlertOption() {
            this(null, null, 0, 7, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ AlertOption copy$default(AlertOption alertOption, String str, Function1 function1, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = alertOption.title;
            }
            if ((i2 & 2) != 0) {
                function1 = alertOption.action;
            }
            if ((i2 & 4) != 0) {
                i = alertOption.style;
            }
            return alertOption.copy(str, function1, i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        public final Function1<Continuation<? super Unit>, Object> component2() {
            return this.action;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getStyle() {
            return this.style;
        }

        public final AlertOption copy(String title, Function1<? super Continuation<? super Unit>, ? extends Object> action, int style) {
            return new AlertOption(title, action, style);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AlertOption)) {
                return false;
            }
            AlertOption alertOption = (AlertOption) other;
            return Intrinsics.areEqual(this.title, alertOption.title) && Intrinsics.areEqual(this.action, alertOption.action) && this.style == alertOption.style;
        }

        public int hashCode() {
            String str = this.title;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            Function1<Continuation<? super Unit>, Object> function1 = this.action;
            return ((iHashCode + (function1 != null ? function1.hashCode() : 0)) * 31) + Integer.hashCode(this.style);
        }

        public String toString() {
            return "AlertOption(title=" + this.title + ", action=" + this.action + ", style=" + this.style + ")";
        }

        /* JADX WARN: Multi-variable type inference failed */
        public AlertOption(String str, Function1<? super Continuation<? super Unit>, ? extends Object> function1, int i) {
            this.title = str;
            this.action = function1;
            this.style = i;
        }

        public /* synthetic */ AlertOption(String str, Function1 function1, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? null : function1, (i2 & 4) != 0 ? -1 : i);
        }

        public final String getTitle() {
            return this.title;
        }

        public final Function1<Continuation<? super Unit>, Object> getAction() {
            return this.action;
        }

        public final int getStyle() {
            return this.style;
        }
    }

    @Override // com.superwall.sdk.debug.AppCompatActivityEncapsulatable
    public AppCompatActivity getEncapsulatingActivity() {
        return this.encapsulatingActivity;
    }

    @Override // com.superwall.sdk.debug.AppCompatActivityEncapsulatable
    public void setEncapsulatingActivity(AppCompatActivity appCompatActivity) {
        this.encapsulatingActivity = appCompatActivity;
    }

    /* JADX INFO: renamed from: getPaywallDatabaseId$superwall_release, reason: from getter */
    public final String getPaywallDatabaseId() {
        return this.paywallDatabaseId;
    }

    public final void setPaywallDatabaseId$superwall_release(String str) {
        this.paywallDatabaseId = str;
    }

    /* JADX INFO: renamed from: isActive$superwall_release, reason: from getter */
    public final boolean getIsActive() {
        return this.isActive;
    }

    public final void setActive$superwall_release(boolean z) {
        this.isActive = z;
    }

    private final ImageView getLogoImageView() {
        return (ImageView) this.logoImageView.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageView logoImageView_delegate$lambda$1(DebugView debugView) {
        ImageView imageView = new ImageView(debugView.context);
        imageView.setId(View.generateViewId());
        imageView.setImageDrawable(ContextCompat.getDrawable(imageView.getContext(), R.drawable.superwall_logo));
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setBackgroundColor(0);
        imageView.setClipToOutline(true);
        imageView.setVisibility(0);
        imageView.setLayoutParams(new ConstraintLayout.LayoutParams(-2, -2));
        return imageView;
    }

    private final LinearLayout getExitButton() {
        return (LinearLayout) this.exitButton.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LinearLayout exitButton_delegate$lambda$5(final DebugView debugView) {
        LinearLayout linearLayout = new LinearLayout(debugView.context);
        linearLayout.setId(View.generateViewId());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ImageView imageView = new ImageView(linearLayout.getContext());
        Drawable drawable = ContextCompat.getDrawable(imageView.getContext(), R.drawable.exit);
        Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
        if (drawableMutate != null) {
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
        }
        imageView.setImageDrawable(drawableMutate);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setAlpha(0.5f);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(imageView);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.pressedExitButton();
            }
        });
        return linearLayout;
    }

    private final LinearLayout getConsoleButton() {
        return (LinearLayout) this.consoleButton.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LinearLayout consoleButton_delegate$lambda$9(final DebugView debugView) {
        LinearLayout linearLayout = new LinearLayout(debugView.context);
        linearLayout.setId(View.generateViewId());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ImageView imageView = new ImageView(linearLayout.getContext());
        Drawable drawable = ContextCompat.getDrawable(imageView.getContext(), R.drawable.debugger);
        Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
        if (drawableMutate != null) {
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
        }
        imageView.setImageDrawable(drawableMutate);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setAlpha(0.5f);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(imageView);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.pressedConsoleButton();
            }
        });
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressBar getActivityIndicator() {
        return (ProgressBar) this.activityIndicator.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProgressBar activityIndicator_delegate$lambda$11(DebugView debugView) {
        ProgressBar progressBar = new ProgressBar(debugView.context);
        progressBar.setId(View.generateViewId());
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        progressBar.setLayoutParams(new ConstraintLayout.LayoutParams(-2, -2));
        return progressBar;
    }

    private final LinearLayout getBottomButton() {
        return (LinearLayout) this.bottomButton.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LinearLayout bottomButton_delegate$lambda$18(final DebugView debugView) {
        debugView.setId(View.generateViewId());
        LinearLayout linearLayout = new LinearLayout(debugView.context);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setClickable(true);
        linearLayout.setId(View.generateViewId());
        linearLayout.setFocusable(true);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#203133"));
        gradientDrawable.setCornerRadius(70.0f);
        linearLayout.setBackground(gradientDrawable);
        ImageView imageView = new ImageView(linearLayout.getContext());
        imageView.setId(View.generateViewId());
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setImageResource(R.drawable.play_button);
        imageView.setColorFilter(debugView.primaryColor);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.rightMargin = 8;
        imageView.setLayoutParams(layoutParams);
        linearLayout.addView(imageView);
        TextView textView = new TextView(linearLayout.getContext());
        textView.setId(View.generateViewId());
        textView.setText("Preview");
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setTextColor(debugView.primaryColor);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(textView);
        linearLayout.setPadding(32, 16, 32, 16);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.pressedBottomButton();
            }
        });
        return linearLayout;
    }

    private final LinearLayout getPreviewPickerButton() {
        return (LinearLayout) this.previewPickerButton.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LinearLayout previewPickerButton_delegate$lambda$24(final DebugView debugView) {
        LinearLayout linearLayout = new LinearLayout(debugView.context);
        linearLayout.setId(View.generateViewId());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setBackgroundColor(debugView.lightBackgroundColor);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        TextView textView = new TextView(linearLayout.getContext());
        textView.setId(View.generateViewId());
        textView.setText("");
        textView.setTextSize(14.0f);
        textView.setTypeface(null, 1);
        textView.setTextColor(debugView.primaryColor);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        debugView.previewTextView = textView;
        linearLayout.addView(textView);
        ImageView imageView = new ImageView(linearLayout.getContext());
        imageView.setId(View.generateViewId());
        imageView.setImageResource(R.drawable.down_arrow);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setColorFilter(debugView.primaryColor);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = 8;
        imageView.setLayoutParams(layoutParams);
        linearLayout.addView(imageView);
        linearLayout.setPadding(10, 10, 10, 10);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.pressedPreview();
            }
        });
        return linearLayout;
    }

    private final ConstraintLayout getPreviewContainerView() {
        return (ConstraintLayout) this.previewContainerView.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConstraintLayout previewContainerView_delegate$lambda$27(final DebugView debugView) {
        ConstraintLayout constraintLayout = new ConstraintLayout(debugView.context);
        constraintLayout.setId(View.generateViewId());
        constraintLayout.setFocusable(true);
        constraintLayout.setLayoutParams(new ConstraintLayout.LayoutParams(0, 0));
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.pressedPreview();
            }
        });
        return constraintLayout;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugView$1, reason: invalid class name */
    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.debug.DebugView$1", f = "DebugView.kt", i = {}, l = {324}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DebugView.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DebugView.this.loadPreview(this) == coroutine_suspended) {
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

    public final void viewDestroyed() {
        this.paywallManager.resetCache();
        this.debugManager.setDebuggerLaunched(false);
        Superwall.INSTANCE.getInstance().getOptions().setLocaleIdentifier(this.initialLocaleIdentifier);
    }

    public final void addSubviews() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        addView(getActivityIndicator(), layoutParams);
        addView(getLogoImageView(), layoutParams);
        addView(getConsoleButton(), layoutParams);
        addView(getExitButton(), layoutParams);
        addView(getBottomButton(), layoutParams);
        addView(getPreviewContainerView(), layoutParams);
        addView(getPreviewPickerButton(), layoutParams);
        getPreviewContainerView().setClipToOutline(false);
        setBackgroundColor(this.lightBackgroundColor);
        ConstraintSet constraintSet = new ConstraintSet();
        DebugView debugView = this;
        constraintSet.clone(debugView);
        constraintSet.connect(getPreviewContainerView().getId(), 6, 0, 6);
        constraintSet.connect(getPreviewContainerView().getId(), 7, 0, 7);
        constraintSet.connect(getPreviewContainerView().getId(), 3, getLogoImageView().getId(), 4, dpToPx(5));
        constraintSet.connect(getPreviewContainerView().getId(), 4, getBottomButton().getId(), 3, dpToPx(5));
        constraintSet.constrainHeight(getPreviewContainerView().getId(), 0);
        constraintSet.constrainWidth(getLogoImageView().getId(), 0);
        constraintSet.constrainHeight(getLogoImageView().getId(), dpToPx(20));
        constraintSet.connect(getLogoImageView().getId(), 3, 0, 3, dpToPx(30));
        constraintSet.connect(getLogoImageView().getId(), 6, getConsoleButton().getId(), 7);
        constraintSet.connect(getLogoImageView().getId(), 7, getExitButton().getId(), 6);
        constraintSet.connect(getConsoleButton().getId(), 6, 0, 6, dpToPx(25));
        constraintSet.connect(getConsoleButton().getId(), 3, 0, 3, dpToPx(30));
        constraintSet.constrainWidth(getConsoleButton().getId(), dpToPx(44));
        constraintSet.connect(getExitButton().getId(), 7, 0, 7, dpToPx(25));
        constraintSet.connect(getExitButton().getId(), 3, 0, 3, dpToPx(30));
        constraintSet.constrainWidth(getExitButton().getId(), dpToPx(44));
        constraintSet.connect(getActivityIndicator().getId(), 6, getPreviewContainerView().getId(), 6);
        constraintSet.connect(getActivityIndicator().getId(), 7, getPreviewContainerView().getId(), 7);
        constraintSet.connect(getActivityIndicator().getId(), 3, getPreviewContainerView().getId(), 3);
        constraintSet.connect(getActivityIndicator().getId(), 4, getPreviewContainerView().getId(), 4);
        constraintSet.connect(getBottomButton().getId(), 6, 0, 6, dpToPx(25));
        constraintSet.connect(getBottomButton().getId(), 7, 0, 7, dpToPx(25));
        constraintSet.constrainHeight(getBottomButton().getId(), dpToPx(60));
        constraintSet.connect(getBottomButton().getId(), 4, 0, 4, dpToPx(30));
        constraintSet.connect(getPreviewPickerButton().getId(), 6, getPreviewContainerView().getId(), 6, dpToPx(25));
        constraintSet.connect(getPreviewPickerButton().getId(), 7, getPreviewContainerView().getId(), 7, dpToPx(25));
        constraintSet.constrainHeight(getPreviewPickerButton().getId(), dpToPx(30));
        constraintSet.connect(getPreviewPickerButton().getId(), 4, getBottomButton().getId(), 3, dpToPx(10));
        constraintSet.applyTo(debugView);
    }

    public final int dpToPx(int dp) {
        return (int) (dp * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugView$loadPreview$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.debug.DebugView$loadPreview$2", f = "DebugView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C04722 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C04722(Continuation<? super C04722> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DebugView.this.new C04722(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04722) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                DebugView.this.getActivityIndicator().setVisibility(0);
                View view = DebugView.this.previewViewContent;
                if (view != null) {
                    ViewParent parent = view.getParent();
                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup != null) {
                        viewGroup.removeView(view);
                        return Unit.INSTANCE;
                    }
                }
                return null;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0089  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009f, code lost:
    
        if (r2.finishLoadingPreview(r0) == r1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d3, code lost:
    
        if (r2.finishLoadingPreview(r0) == r1) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object loadPreview(kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.debug.DebugView.loadPreview(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:41:0x009e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0141, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r0, r5, r6) == r2) goto L61;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object finishLoadingPreview(kotlin.coroutines.Continuation<? super kotlin.Unit> r19) {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.debug.DebugView.finishLoadingPreview(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugView$finishLoadingPreview$2, reason: invalid class name */
    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.debug.DebugView$finishLoadingPreview$2", f = "DebugView.kt", i = {}, l = {582}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<Paywall> $paywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Ref.ObjectRef<Paywall> objectRef, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$paywall = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DebugView.this.new AnonymousClass2(this.$paywall, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TextView textView = DebugView.this.previewTextView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("previewTextView");
                    textView = null;
                }
                textView.setText(this.$paywall.element.getName());
                DebugView.this.getActivityIndicator().setVisibility(4);
                this.label = 1;
                if (DebugView.this.addPaywallPreview(this) == coroutine_suspended) {
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

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object addPaywallPreview(Continuation<? super Unit> continuation) {
        C04671 c04671;
        DebugView debugView;
        if (continuation instanceof C04671) {
            c04671 = (C04671) continuation;
            if ((c04671.label & Integer.MIN_VALUE) != 0) {
                c04671.label -= Integer.MIN_VALUE;
            } else {
                c04671 = new C04671(continuation);
            }
        } else {
            c04671 = new C04671(continuation);
        }
        Object objMakePaywallView = c04671.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04671.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objMakePaywallView);
            Paywall paywall = this.paywall;
            if (paywall == null) {
                return Unit.INSTANCE;
            }
            Factory factory = this.factory;
            c04671.L$0 = this;
            c04671.label = 1;
            objMakePaywallView = factory.makePaywallView(paywall, null, null, c04671);
            if (objMakePaywallView == coroutine_suspended) {
                return coroutine_suspended;
            }
            debugView = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            debugView = (DebugView) c04671.L$0;
            ResultKt.throwOnFailure(objMakePaywallView);
        }
        PaywallView paywallView = (PaywallView) objMakePaywallView;
        PaywallView paywallView2 = paywallView;
        debugView.getPreviewContainerView().addView(paywallView2);
        debugView.previewViewContent = paywallView2;
        paywallView.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
        paywallView.updateState(new PaywallViewState.Updates.SetInterceptTouchEvents(true));
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(debugView.getPreviewContainerView());
        constraintSet.connect(paywallView.getId(), 6, debugView.getPreviewContainerView().getId(), 6);
        constraintSet.connect(paywallView.getId(), 7, debugView.getPreviewContainerView().getId(), 7);
        constraintSet.connect(paywallView.getId(), 3, debugView.getPreviewContainerView().getId(), 3);
        constraintSet.connect(paywallView.getId(), 4, debugView.getPreviewContainerView().getId(), 4);
        constraintSet.applyTo(debugView.getPreviewContainerView());
        paywallView.setClipToOutline(true);
        paywallView.setAlpha(0.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(52.0f);
        gradientDrawable.setStroke(2, -1);
        paywallView.setBackground(gradientDrawable);
        float height = debugView.getPreviewContainerView().getHeight() / debugView.getRootView().getHeight();
        paywallView.setScaleX(height);
        paywallView.setScaleY(height);
        paywallView.animate().alpha(1.0f).setDuration(250L).setStartDelay(100L).start();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void pressedPreview() {
        String str = this.paywallDatabaseId;
        if (str == null) {
            return;
        }
        List<Paywall> list = this.paywalls;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (Paywall paywall : list) {
            String name = paywall.getName();
            if (Intrinsics.areEqual(str, paywall.getDatabaseId())) {
                name = name + " ✓";
            }
            arrayList.add(new AlertOption(name, new DebugView$pressedPreview$options$1$alert$1(this, paywall, null), 0, 4, null));
        }
        presentAlert("Your Paywalls", null, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void pressedExitButton() {
        AppCompatActivity encapsulatingActivity = getEncapsulatingActivity();
        if (encapsulatingActivity != null) {
            encapsulatingActivity.finish();
        }
    }

    public final void pressedConsoleButton() {
        String str;
        String strValueOf = "";
        try {
            PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0);
            str = packageInfo.versionName;
            if (str == null) {
                str = "Unknown";
            }
            try {
                if (Build.VERSION.SDK_INT >= 28) {
                    strValueOf = String.valueOf(packageInfo.getLongVersionCode());
                } else {
                    strValueOf = String.valueOf(packageInfo.versionCode);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            str = "";
        }
        presentAlert("Superwall v2.7.16 | App v" + str + " (" + strValueOf + ")", null, CollectionsKt.listOf((Object[]) new AlertOption[]{new AlertOption("Localization", new C04731(this), 0, 4, null), new AlertOption("Templates", new C04742(this), 0, 4, null)}));
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugView$pressedConsoleButton$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    /* synthetic */ class C04731 extends AdaptedFunctionReference implements Function1<Continuation<? super Unit>, Object>, SuspendFunction {
        C04731(Object obj) {
            super(1, obj, DebugView.class, "showLocalizationPicker", "showLocalizationPicker()V", 4);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return DebugView.pressedConsoleButton$showLocalizationPicker((DebugView) this.receiver, continuation);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugView$pressedConsoleButton$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    /* synthetic */ class C04742 extends FunctionReferenceImpl implements Function1<Continuation<? super Unit>, Object>, SuspendFunction {
        C04742(Object obj) {
            super(1, obj, DebugView.class, "showConsole", "showConsole(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((DebugView) this.receiver).showConsole(continuation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object pressedConsoleButton$showLocalizationPicker(DebugView debugView, Continuation continuation) {
        debugView.showLocalizationPicker();
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object showConsole(Continuation<? super Unit> continuation) {
        C04751 c04751;
        DebugView debugView;
        Paywall paywall;
        if (continuation instanceof C04751) {
            c04751 = (C04751) continuation;
            if ((c04751.label & Integer.MIN_VALUE) != 0) {
                c04751.label -= Integer.MIN_VALUE;
            } else {
                c04751 = new C04751(continuation);
            }
        } else {
            c04751 = new C04751(continuation);
        }
        C04751 c04752 = c04751;
        Object products$default = c04752.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04752.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(products$default);
                Paywall paywall2 = this.paywall;
                if (paywall2 == null) {
                    Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.debugView, "Paywall is nil", null, null, 24, null);
                    return Unit.INSTANCE;
                }
                StoreManager storeManager = this.storeManager;
                c04752.L$0 = this;
                c04752.L$1 = paywall2;
                c04752.label = 1;
                products$default = StoreKit.DefaultImpls.getProducts$default(storeManager, null, paywall2, null, c04752, 5, null);
                if (products$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                debugView = this;
                paywall = paywall2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                paywall = (Paywall) c04752.L$1;
                debugView = (DebugView) c04752.L$0;
                ResultKt.throwOnFailure(products$default);
            }
            Map<String, StoreProduct> mapComponent1 = ((GetProductsResponse) products$default).component1();
            List<String> productIds = paywall.getProductIds();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = productIds.iterator();
            while (it.hasNext()) {
                StoreProduct storeProduct = mapComponent1.get((String) it.next());
                if (storeProduct != null) {
                    arrayList.add(storeProduct);
                }
            }
            SWConsoleActivity.INSTANCE.setProducts(arrayList);
            AppCompatActivity encapsulatingActivity = debugView.getEncapsulatingActivity();
            if (encapsulatingActivity == null) {
                return Unit.INSTANCE;
            }
            Intent intent = new Intent(encapsulatingActivity, (Class<?>) SWConsoleActivity.class);
            intent.putExtra("PARENT_ACTIVITY", intent.getClass().getSimpleName());
            encapsulatingActivity.startActivity(intent);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.debugView, "Error retrieving products - " + th.getMessage(), null, null, 24, null);
        }
    }

    private final void showLocalizationPicker() {
        SWLocalizationActivity.INSTANCE.setCompletion(new Function1() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DebugView.showLocalizationPicker$lambda$42(this.f$0, (String) obj);
            }
        });
        AppCompatActivity encapsulatingActivity = getEncapsulatingActivity();
        if (encapsulatingActivity == null) {
            return;
        }
        encapsulatingActivity.startActivity(new Intent(encapsulatingActivity, (Class<?>) SWLocalizationActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showLocalizationPicker$lambda$42(DebugView debugView, String locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        Superwall.INSTANCE.getInstance().setLocaleIdentifier(locale);
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new DebugView$showLocalizationPicker$1$1(debugView, null), 3, null);
        return Unit.INSTANCE;
    }

    public final void pressedBottomButton() {
        presentAlert("Which version?", null, CollectionsKt.listOf((Object[]) new AlertOption[]{new AlertOption("With Free Trial", new DebugView$pressedBottomButton$alertOptions$1(this, null), -1), new AlertOption("Without Free Trial", new DebugView$pressedBottomButton$alertOptions$2(this, null), -1)}));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void presentAlert$default(DebugView debugView, String str, String str2, List list, int i, Object obj) {
        if ((i & 4) != 0) {
            list = CollectionsKt.emptyList();
        }
        debugView.presentAlert(str, str2, list);
    }

    public final void presentAlert(String title, String message, final List<AlertOption> options) {
        View viewFindViewById;
        WindowManager.LayoutParams attributes;
        Intrinsics.checkNotNullParameter(options, "options");
        AppCompatActivity encapsulatingActivity = getEncapsulatingActivity();
        if (encapsulatingActivity == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(encapsulatingActivity);
        builder.setTitle(title);
        builder.setMessage(message);
        List<AlertOption> list = options;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((AlertOption) it.next()).getTitle());
        }
        builder.setItems((String[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DebugView.presentAlert$lambda$46(options, dialogInterface, i);
            }
        });
        final AlertDialog alertDialogCreate = builder.create();
        Window window = alertDialogCreate.getWindow();
        if (window != null && (attributes = window.getAttributes()) != null) {
            attributes.gravity = 80;
        }
        Window window2 = alertDialogCreate.getWindow();
        if (window2 != null) {
            window2.setLayout(-1, -2);
        }
        alertDialogCreate.show();
        Window window3 = alertDialogCreate.getWindow();
        if (window3 == null || (viewFindViewById = window3.findViewById(androidx.appcompat.R.id.contentPanel)) == null) {
            return;
        }
        viewFindViewById.post(new Runnable() { // from class: com.superwall.sdk.debug.DebugView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                DebugView.presentAlert$lambda$47(alertDialogCreate);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void presentAlert$lambda$46(List list, DialogInterface dialogInterface, int i) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new DebugView$presentAlert$1$1((AlertOption) list.get(i), null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void presentAlert$lambda$47(AlertDialog alertDialog) {
        Window window = alertDialog.getWindow();
        View viewFindViewById = window != null ? window.findViewById(androidx.appcompat.R.id.contentPanel) : null;
        if (viewFindViewById != null) {
            viewFindViewById.setBackground(null);
        }
    }

    public static /* synthetic */ void loadAndShowPaywall$default(DebugView debugView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        debugView.loadAndShowPaywall(z);
    }

    public final void loadAndShowPaywall(boolean freeTrialAvailable) {
        String str = this.paywallIdentifier;
        if (str == null) {
            return;
        }
        PresentationRequest presentationRequestMakePresentationRequest = this.factory.makePresentationRequest(new PresentationInfo.FromIdentifier(str, freeTrialAvailable), null, getEncapsulatingActivity(), true, StateFlowKt.MutableStateFlow(SubscriptionStatus.Inactive.INSTANCE), Superwall.INSTANCE.getInstance().isPaywallPresented(), PresentationRequestType.Presentation.INSTANCE);
        MutableSharedFlow mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new C04691(mutableSharedFlowMutableSharedFlow$default, this, null), 3, null);
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new C04702(presentationRequestMakePresentationRequest, mutableSharedFlowMutableSharedFlow$default, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugView$loadAndShowPaywall$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.debug.DebugView$loadAndShowPaywall$1", f = "DebugView.kt", i = {}, l = {861}, m = "invokeSuspend", n = {}, s = {})
    static final class C04691 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MutableSharedFlow<PaywallState> $publisher;
        int label;
        final /* synthetic */ DebugView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04691(MutableSharedFlow<PaywallState> mutableSharedFlow, DebugView debugView, Continuation<? super C04691> continuation) {
            super(2, continuation);
            this.$publisher = mutableSharedFlow;
            this.this$0 = debugView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04691(this.$publisher, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04691) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                MutableSharedFlow<PaywallState> mutableSharedFlow = this.$publisher;
                final DebugView debugView = this.this$0;
                this.label = 1;
                if (mutableSharedFlow.collect(new FlowCollector() { // from class: com.superwall.sdk.debug.DebugView.loadAndShowPaywall.1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((PaywallState) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(PaywallState paywallState, Continuation<? super Unit> continuation) {
                        String str;
                        if (paywallState instanceof PaywallState.Presented) {
                            ResourcesCompat.getDrawable(debugView.getResources(), R.drawable.play_button, null);
                        } else if (paywallState instanceof PaywallState.Skipped) {
                            PaywallSkippedReason paywallSkippedReason = ((PaywallState.Skipped) paywallState).getPaywallSkippedReason();
                            if (paywallSkippedReason instanceof PaywallSkippedReason.Holdout) {
                                str = "The user was assigned to a holdout.";
                            } else if (paywallSkippedReason instanceof PaywallSkippedReason.NoAudienceMatch) {
                                str = "The user didn't match a rule.";
                            } else if (paywallSkippedReason instanceof PaywallSkippedReason.PlacementNotFound) {
                                str = "Couldn't find event.";
                            } else {
                                if (!(paywallSkippedReason instanceof PaywallSkippedReason.UserIsSubscribed)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                str = "The user is subscribed.";
                            }
                            DebugView.presentAlert$default(debugView, "Paywall Skipped", str, null, 4, null);
                            ResourcesCompat.getDrawable(debugView.getResources(), R.drawable.play_button, null);
                        } else if (!(paywallState instanceof PaywallState.Dismissed)) {
                            if (!(paywallState instanceof PaywallState.PresentationError)) {
                                throw new NoWhenBranchMatchedException();
                            }
                            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.debugView, "Failed to Show Paywall", null, null, 24, null);
                            DebugView.presentAlert$default(debugView, "Presentation Error", ((PaywallState.PresentationError) paywallState).getError().getLocalizedMessage(), null, 4, null);
                            ResourcesCompat.getDrawable(debugView.getResources(), R.drawable.play_button, null);
                        }
                        return Unit.INSTANCE;
                    }
                }, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugView$loadAndShowPaywall$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.debug.DebugView$loadAndShowPaywall$2", f = "DebugView.kt", i = {}, l = {912}, m = "invokeSuspend", n = {}, s = {})
    static final class C04702 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PresentationRequest $presentationRequest;
        final /* synthetic */ MutableSharedFlow<PaywallState> $publisher;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04702(PresentationRequest presentationRequest, MutableSharedFlow<PaywallState> mutableSharedFlow, Continuation<? super C04702> continuation) {
            super(2, continuation);
            this.$presentationRequest = presentationRequest;
            this.$publisher = mutableSharedFlow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04702(this.$presentationRequest, this.$publisher, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04702) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (InternalPresentationKt.internallyPresent(Superwall.INSTANCE.getInstance(), this.$presentationRequest, this.$publisher, this) == coroutine_suspended) {
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
