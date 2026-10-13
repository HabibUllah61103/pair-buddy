package com.superwall.sdk.paywall.view.webview;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.messaging.Constants;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.config.options.PaywallOptions;
import com.superwall.sdk.game.PublicGameControllerKt;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.ActivityProvider;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.misc.MainScope;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.paywall.PaywallWebviewUrl;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.view.PaywallViewState;
import com.superwall.sdk.paywall.view.delegate.PaywallLoadingState;
import com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: SWWebView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000ð\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u007f2\u00020\u00012\u00020\u0002:\u0001\u007fBr\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012%\b\u0002\u0010\u0007\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r\u0018\u00010\b\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012$\b\u0002\u0010\u0011\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0012¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010=\u001a\u00020\r2\u0006\u0010>\u001a\u00020<H\u0016J\r\u0010P\u001a\u00020\rH\u0000¢\u0006\u0002\bQJ\u0015\u0010R\u001a\u00020\r2\u0006\u0010S\u001a\u00020TH\u0000¢\u0006\u0002\bUJ\b\u0010V\u001a\u00020\rH\u0016J\u0012\u0010W\u001a\u00020X2\b\u0010Y\u001a\u0004\u0018\u00010ZH\u0016J\u0012\u0010[\u001a\u00020@2\b\u0010\\\u001a\u0004\u0018\u00010]H\u0016J\u0012\u0010^\u001a\u00020@2\b\u0010\\\u001a\u0004\u0018\u00010_H\u0016J\u0010\u0010`\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\tH\u0016J\u0010\u0010a\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0002J\u0010\u0010b\u001a\u00020\r2\u0006\u0010c\u001a\u00020dH\u0002J\b\u0010e\u001a\u00020\rH\u0002J\u001e\u0010f\u001a\u00020\r2\u0006\u0010g\u001a\u00020h2\f\u0010i\u001a\b\u0012\u0004\u0012\u00020\t0jH\u0002J\u0018\u0010k\u001a\u00020\r2\u0006\u0010g\u001a\u00020h2\u0006\u0010\f\u001a\u00020\tH\u0002J\u0010\u0010l\u001a\u00020@2\u0006\u0010\\\u001a\u00020_H\u0016J(\u0010m\u001a\u00020\r2\u0006\u0010n\u001a\u00020G2\u0006\u0010o\u001a\u00020G2\u0006\u0010p\u001a\u00020G2\u0006\u0010q\u001a\u00020GH\u0014J\b\u0010r\u001a\u00020\rH\u0016J\b\u0010s\u001a\u00020\rH\u0016J!\u0010t\u001a\u00020\r2\u0017\u0010u\u001a\u0013\u0012\u0004\u0012\u00020v\u0012\u0004\u0012\u00020\r0\b¢\u0006\u0002\bwH\u0016J(\u0010x\u001a\u00020\r2\u0006\u0010y\u001a\u00020\t2\u0016\u0010z\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\r\u0018\u00010\bH\u0016J1\u0010{\u001a\u00020\r2\u0006\u0010\f\u001a\u00020|2\u0018\u0010E\u001a\u0014\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020\r0\u0012H\u0016¢\u0006\u0004\b}\u0010~R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R+\u0010\u0007\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\u0011\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0012X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010%\u001a\u0004\u0018\u00010&8F¢\u0006\u0006\u001a\u0004\b'\u0010(R\u001b\u0010)\u001a\u00020*8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b+\u0010,R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001b\u00105\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010.\u001a\u0004\b7\u00108R\u001a\u0010?\u001a\u00020@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DRJ\u0010E\u001a2\u0012\u0013\u0012\u00110@¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110G¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(H\u0012\u0004\u0012\u00020\r0\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u0010\u0010M\u001a\u0004\u0018\u00010NX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010O\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0080\u0001"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/SWWebView;", "Landroid/webkit/WebView;", "Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;", "context", "Landroid/content/Context;", "messageHandler", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;", "onFinishedLoading", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", ImagesContract.URL, "", "options", "Lkotlin/Function0;", "Lcom/superwall/sdk/config/options/PaywallOptions;", "track", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "Lkotlin/coroutines/Continuation;", "", "<init>", "(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V", "getMessageHandler", "()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;", "Lkotlin/jvm/functions/Function2;", "delegate", "Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;", "getDelegate", "()Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;", "setDelegate", "(Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;)V", "mainScope", "Lcom/superwall/sdk/misc/MainScope;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "activity", "Landroid/app/Activity;", "getActivity", "()Landroid/app/Activity;", "gestureDetector", "Landroid/view/GestureDetector;", "getGestureDetector", "()Landroid/view/GestureDetector;", "gestureDetector$delegate", "Lkotlin/Lazy;", "onScrollChangeListener", "Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;", "getOnScrollChangeListener", "()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;", "setOnScrollChangeListener", "(Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;)V", "localResourceHandler", "Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;", "getLocalResourceHandler", "()Lcom/superwall/sdk/paywall/view/webview/LocalResourceHandler;", "localResourceHandler$delegate", "detach", "fromView", "Landroid/view/ViewGroup;", "attach", "toView", "scrollEnabled", "", "getScrollEnabled", "()Z", "setScrollEnabled", "(Z)V", "onRenderCrashed", "didCrash", "", "priority", "getOnRenderCrashed", "()Lkotlin/jvm/functions/Function2;", "setOnRenderCrashed", "(Lkotlin/jvm/functions/Function2;)V", "lastWebViewClient", "Landroid/webkit/WebViewClient;", "lastLoadedUrl", "prepareWebview", "prepareWebview$superwall_release", "loadPaywallWithFallbackUrl", "paywall", "Lcom/superwall/sdk/models/paywall/Paywall;", "loadPaywallWithFallbackUrl$superwall_release", "enableBackgroundRendering", "onCreateInputConnection", "Landroid/view/inputmethod/InputConnection;", "outAttrs", "Landroid/view/inputmethod/EditorInfo;", "dispatchKeyEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "dispatchGenericMotionEvent", "Landroid/view/MotionEvent;", "loadUrl", "transformUri", "listenToWebviewClientEvents", "client", "Lcom/superwall/sdk/paywall/view/webview/DefaultWebviewClient;", "trackLoadFallback", "trackPaywallError", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Lcom/superwall/sdk/paywall/view/webview/WebviewError;", "urls", "", "trackPaywallResourceError", "onTouchEvent", "onScrollChanged", "horizontalOrigin", "verticalOrigin", "oldHorizontal", "oldVertical", "destroyView", "destroy", "onView", "perform", "Landroid/view/View;", "Lkotlin/ExtensionFunctionType;", "evaluate", "code", "resultCallback", "setup", "Lcom/superwall/sdk/models/paywall/PaywallURL;", "setup-MkQ7Bds", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V", "ChromeClient", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SWWebView extends WebView implements PaywallWebUI {
    private static final ChromeClient ChromeClient = new ChromeClient(null);
    private static final Lazy<Bitmap> posterBmp$delegate = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$$ExternalSyntheticLambda6
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SWWebView.posterBmp_delegate$lambda$11();
        }
    });
    private PaywallUIDelegate delegate;

    /* JADX INFO: renamed from: gestureDetector$delegate, reason: from kotlin metadata */
    private final Lazy gestureDetector;
    private final IOScope ioScope;
    private String lastLoadedUrl;
    private WebViewClient lastWebViewClient;

    /* JADX INFO: renamed from: localResourceHandler$delegate, reason: from kotlin metadata */
    private final Lazy localResourceHandler;
    private final MainScope mainScope;
    private final PaywallMessageHandler messageHandler;
    private final Function1<String, Unit> onFinishedLoading;
    private Function2<? super Boolean, ? super Integer, Unit> onRenderCrashed;
    private PaywallWebUI.OnScrollChangeListener onScrollChangeListener;
    private final Function0<PaywallOptions> options;
    private boolean scrollEnabled;
    private final Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> track;

    @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI
    public void enableBackgroundRendering() {
    }

    @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI
    public PaywallMessageHandler getMessageHandler() {
        return this.messageHandler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.SWWebView$1, reason: invalid class name */
    /* JADX INFO: compiled from: SWWebView.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.SWWebView$1", f = "SWWebView.kt", i = {}, l = {74}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
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
        public final Object invoke(TrackableSuperwallEvent trackableSuperwallEvent, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(trackableSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TrackableSuperwallEvent trackableSuperwallEvent = (TrackableSuperwallEvent) this.L$0;
                this.label = 1;
                if (TrackingKt.track(Superwall.INSTANCE.getInstance(), trackableSuperwallEvent, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }

    public /* synthetic */ SWWebView(Context context, PaywallMessageHandler paywallMessageHandler, Function1 function1, Function0 function0, AnonymousClass1 anonymousClass1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, paywallMessageHandler, (i & 4) != 0 ? null : function1, function0, (i & 16) != 0 ? new AnonymousClass1(null) : anonymousClass1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SWWebView(final Context context, PaywallMessageHandler messageHandler, Function1<? super String, Unit> function1, Function0<PaywallOptions> options, Function2<? super TrackableSuperwallEvent, ? super Continuation<? super Unit>, ? extends Object> track) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(messageHandler, "messageHandler");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(track, "track");
        this.messageHandler = messageHandler;
        this.onFinishedLoading = function1;
        this.options = options;
        this.track = track;
        this.mainScope = new MainScope(null, 1, null);
        this.ioScope = new IOScope(null, 1, null);
        this.gestureDetector = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SWWebView.gestureDetector_delegate$lambda$0(context);
            }
        });
        this.localResourceHandler = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SWWebView.localResourceHandler_delegate$lambda$2(context);
            }
        });
        this.scrollEnabled = true;
        this.onRenderCrashed = new Function2() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return SWWebView.onRenderCrashed$lambda$3(((Boolean) obj).booleanValue(), ((Integer) obj2).intValue());
            }
        };
    }

    @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI
    public PaywallUIDelegate getDelegate() {
        return this.delegate;
    }

    @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI
    public void setDelegate(PaywallUIDelegate paywallUIDelegate) {
        this.delegate = paywallUIDelegate;
    }

    public final Activity getActivity() {
        ActivityProvider activityProvider = Superwall.INSTANCE.getInstance().getDependencyContainer$superwall_release().getActivityProvider();
        if (activityProvider != null) {
            return activityProvider.getCurrentActivity();
        }
        return null;
    }

    private final GestureDetector getGestureDetector() {
        return (GestureDetector) this.gestureDetector.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GestureDetector gestureDetector_delegate$lambda$0(Context context) {
        return new GestureDetector(context, new ScrollDisabledListener());
    }

    @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI
    public PaywallWebUI.OnScrollChangeListener getOnScrollChangeListener() {
        return this.onScrollChangeListener;
    }

    @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI
    public void setOnScrollChangeListener(PaywallWebUI.OnScrollChangeListener onScrollChangeListener) {
        this.onScrollChangeListener = onScrollChangeListener;
    }

    private final LocalResourceHandler getLocalResourceHandler() {
        return (LocalResourceHandler) this.localResourceHandler.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LocalResourceHandler localResourceHandler_delegate$lambda$2(Context context) {
        return new LocalResourceHandler(context, new Function0() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SWWebView.localResourceHandler_delegate$lambda$2$lambda$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map localResourceHandler_delegate$lambda$2$lambda$1() {
        return Superwall.INSTANCE.getInstance().getLocalResources();
    }

    @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI
    public void detach(ViewGroup fromView) {
        Intrinsics.checkNotNullParameter(fromView, "fromView");
        fromView.removeView(this);
    }

    @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI
    public void attach(ViewGroup toView) {
        Intrinsics.checkNotNullParameter(toView, "toView");
        if (getParent() == null) {
            toView.addView(this);
        }
        if (getLayoutParams().height == -1 || getLayoutParams().width == -1) {
            return;
        }
        setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    }

    public final boolean getScrollEnabled() {
        return this.scrollEnabled;
    }

    public final void setScrollEnabled(boolean z) {
        this.scrollEnabled = z;
    }

    public final Function2<Boolean, Integer, Unit> getOnRenderCrashed() {
        return this.onRenderCrashed;
    }

    public final void setOnRenderCrashed(Function2<? super Boolean, ? super Integer, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onRenderCrashed = function2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onRenderCrashed$lambda$3(boolean z, int i) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: SWWebView.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0003\u0018\u00002\u00020\u0001:\u0001\nB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient;", "Landroid/webkit/WebChromeClient;", "<init>", "()V", "posterBmp", "Landroid/graphics/Bitmap;", "getPosterBmp", "()Landroid/graphics/Bitmap;", "posterBmp$delegate", "Lkotlin/Lazy;", "ChromeClient", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    static final class ChromeClient extends WebChromeClient {
        public /* synthetic */ ChromeClient(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private ChromeClient() {
        }

        public final Bitmap getPosterBmp() {
            return (Bitmap) SWWebView.posterBmp$delegate.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.SWWebView$ChromeClient$ChromeClient, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SWWebView.kt */
        @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J(\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J(\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J2\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0019\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u001aH\u0016R\u0019\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u001b"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/SWWebView$ChromeClient$ChromeClient;", "Landroid/webkit/WebChromeClient;", "activity", "Lkotlin/Function0;", "Landroid/app/Activity;", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "getActivity", "()Lkotlin/jvm/functions/Function0;", "onConsoleMessage", "", "consoleMessage", "Landroid/webkit/ConsoleMessage;", "getDefaultVideoPoster", "Landroid/graphics/Bitmap;", "onJsAlert", "view", "Landroid/webkit/WebView;", ImagesContract.URL, "", "message", "result", "Landroid/webkit/JsResult;", "onJsConfirm", "onJsPrompt", "defaultValue", "Landroid/webkit/JsPromptResult;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        static final class C0123ChromeClient extends WebChromeClient {
            private final Function0<Activity> activity;

            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                Intrinsics.checkNotNullParameter(consoleMessage, "consoleMessage");
                return true;
            }

            public final Function0<Activity> getActivity() {
                return this.activity;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public C0123ChromeClient(Function0<? extends Activity> activity) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                this.activity = activity;
            }

            @Override // android.webkit.WebChromeClient
            public Bitmap getDefaultVideoPoster() {
                return SWWebView.ChromeClient.getPosterBmp();
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView view, String url, String message, final JsResult result) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(message, "message");
                Intrinsics.checkNotNullParameter(result, "result");
                Activity activityInvoke = this.activity.invoke();
                if (activityInvoke == null) {
                    return false;
                }
                new AlertDialog.Builder(activityInvoke).setMessage(message).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$ChromeClient$ChromeClient$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        result.confirm();
                    }
                }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$ChromeClient$ChromeClient$$ExternalSyntheticLambda3
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        result.cancel();
                    }
                }).show();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView view, String url, String message, final JsResult result) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(message, "message");
                Intrinsics.checkNotNullParameter(result, "result");
                Activity activityInvoke = this.activity.invoke();
                if (activityInvoke == null) {
                    return false;
                }
                new AlertDialog.Builder(activityInvoke).setMessage(message).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$ChromeClient$ChromeClient$$ExternalSyntheticLambda4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        result.confirm();
                    }
                }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$ChromeClient$ChromeClient$$ExternalSyntheticLambda5
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        result.cancel();
                    }
                }).show();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, final JsPromptResult result) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(message, "message");
                Intrinsics.checkNotNullParameter(result, "result");
                final EditText editText = new EditText(this.activity.invoke());
                if (defaultValue == null) {
                    defaultValue = "";
                }
                editText.setText(defaultValue);
                Activity activityInvoke = this.activity.invoke();
                if (activityInvoke == null) {
                    return false;
                }
                new AlertDialog.Builder(activityInvoke).setMessage(message).setView(editText).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$ChromeClient$ChromeClient$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        SWWebView.ChromeClient.C0123ChromeClient.onJsPrompt$lambda$5(result, editText, dialogInterface, i);
                    }
                }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$ChromeClient$ChromeClient$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        result.cancel();
                    }
                }).show();
                return true;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void onJsPrompt$lambda$5(JsPromptResult jsPromptResult, EditText editText, DialogInterface dialogInterface, int i) {
                jsPromptResult.confirm(editText.getText().toString());
            }
        }
    }

    public final void prepareWebview$superwall_release() {
        addJavascriptInterface(getMessageHandler(), "SWAndroid");
        WebSettings settings = getSettings();
        Intrinsics.checkNotNullExpressionValue(settings, "getSettings(...)");
        WebView.setWebContentsDebuggingEnabled(false);
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(false);
        settings.setBuiltInZoomControls(false);
        settings.setDisplayZoomControls(false);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setTextZoom(100);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setBackgroundColor(0);
        setWebChromeClient(new ChromeClient.C0123ChromeClient(new Function0() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.getActivity();
            }
        }));
    }

    public final void loadPaywallWithFallbackUrl$superwall_release(Paywall paywall) {
        Intrinsics.checkNotNullParameter(paywall, "paywall");
        prepareWebview$superwall_release();
        PaywallWebviewUrl.Config urlConfig = paywall.getUrlConfig();
        if (urlConfig == null) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "Tried to start a paywall with multiple URLS but without URL config", null, null, 24, null);
            return;
        }
        MainScope mainScope = this.mainScope;
        WebviewFallbackClient webviewFallbackClient = new WebviewFallbackClient(urlConfig, this.ioScope, mainScope, new Function1() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SWWebView.loadPaywallWithFallbackUrl$lambda$6(this.f$0, (PaywallWebviewUrl) obj);
            }
        }, new Function0() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SWWebView.loadPaywallWithFallbackUrl$lambda$7(this.f$0);
            }
        }, new Function2() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return SWWebView.loadPaywallWithFallbackUrl$lambda$8(this.f$0, (WebView) obj, (RenderProcessGoneDetail) obj2);
            }
        }, getLocalResourceHandler());
        setWebViewClient(webviewFallbackClient);
        listenToWebviewClientEvents(webviewFallbackClient);
        webviewFallbackClient.loadWithFallback$superwall_release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadPaywallWithFallbackUrl$lambda$6(SWWebView sWWebView, PaywallWebviewUrl it) {
        Intrinsics.checkNotNullParameter(it, "it");
        sWWebView.lastLoadedUrl = it.getUrl();
        super.loadUrl(sWWebView.transformUri(it.getUrl()));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadPaywallWithFallbackUrl$lambda$7(SWWebView sWWebView) {
        sWWebView.stopLoading();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadPaywallWithFallbackUrl$lambda$8(SWWebView sWWebView, WebView view, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        if (Intrinsics.areEqual(view, sWWebView)) {
            sWWebView.onRenderCrashed.invoke(Boolean.valueOf(detail.didCrash()), Integer.valueOf(detail.rendererPriorityAtExit()));
        }
        return Unit.INSTANCE;
    }

    @Override // android.webkit.WebView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
        return new BaseInputConnection(this, false);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event == null || !Superwall.INSTANCE.getInstance().getOptions().getIsGameControllerEnabled()) {
            return super.dispatchKeyEvent(event);
        }
        PublicGameControllerKt.dispatchKeyEvent(Superwall.INSTANCE.getInstance(), event);
        return true;
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent event) {
        if (event == null || !Superwall.INSTANCE.getInstance().getOptions().getIsGameControllerEnabled()) {
            return super.dispatchGenericMotionEvent(event);
        }
        PublicGameControllerKt.dispatchMotionEvent(Superwall.INSTANCE.getInstance(), event);
        return true;
    }

    @Override // android.webkit.WebView
    public void loadUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.lastLoadedUrl = url;
        prepareWebview$superwall_release();
        DefaultWebviewClient defaultWebviewClient = new DefaultWebviewClient(url, CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), new Function2() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return SWWebView.loadUrl$lambda$9(this.f$0, (WebView) obj, (RenderProcessGoneDetail) obj2);
            }
        }, getLocalResourceHandler());
        setWebViewClient(defaultWebviewClient);
        listenToWebviewClientEvents(defaultWebviewClient);
        super.loadUrl(transformUri(url));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadUrl$lambda$9(SWWebView sWWebView, WebView v, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(detail, "detail");
        if (Intrinsics.areEqual(v, sWWebView)) {
            sWWebView.onRenderCrashed.invoke(Boolean.valueOf(detail.didCrash()), Integer.valueOf(detail.rendererPriorityAtExit()));
        }
        return Unit.INSTANCE;
    }

    private final String transformUri(String url) {
        Uri.Builder builderBuildUpon = Uri.parse(url).buildUpon();
        builderBuildUpon.appendQueryParameter("platform", "android");
        builderBuildUpon.appendQueryParameter(NotificationCompat.CATEGORY_TRANSPORT, "android");
        builderBuildUpon.appendQueryParameter("debug", "true");
        String string = builderBuildUpon.build().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "SWWebView.loadUrl: " + string, null, null, 24, null);
        return string;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.SWWebView$listenToWebviewClientEvents$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SWWebView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.SWWebView$listenToWebviewClientEvents$1", f = "SWWebView.kt", i = {}, l = {340}, m = "invokeSuspend", n = {}, s = {})
    static final class C05571 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ DefaultWebviewClient $client;
        int label;
        final /* synthetic */ SWWebView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05571(DefaultWebviewClient defaultWebviewClient, SWWebView sWWebView, Continuation<? super C05571> continuation) {
            super(2, continuation);
            this.$client = defaultWebviewClient;
            this.this$0 = sWWebView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05571(this.$client, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05571) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Flow flowTakeWhile = FlowKt.takeWhile(this.$client.getWebviewClientEvents(), new C01241(this.this$0, this.$client, null));
                final SWWebView sWWebView = this.this$0;
                this.label = 1;
                if (flowTakeWhile.collect(new FlowCollector() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView.listenToWebviewClientEvents.1.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((WebviewClientEvent) obj2, (Continuation<? super Unit>) continuation);
                    }

                    static /* synthetic */ void emit$log$default(String str, Map map, int i2, Object obj2) {
                        if ((i2 & 2) != 0) {
                            map = MapsKt.emptyMap();
                        }
                        emit$log(str, map);
                    }

                    private static final void emit$log(String str, Map<String, ? extends Object> map) {
                        Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, str, map, null, 16, null);
                    }

                    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.SWWebView$listenToWebviewClientEvents$1$2$1, reason: invalid class name and collision with other inner class name */
                    /* JADX INFO: compiled from: SWWebView.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.SWWebView$listenToWebviewClientEvents$1$2$1", f = "SWWebView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                    static final class C01261 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ WebviewClientEvent $it;
                        int label;
                        final /* synthetic */ SWWebView this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C01261(WebviewClientEvent webviewClientEvent, SWWebView sWWebView, Continuation<? super C01261> continuation) {
                            super(2, continuation);
                            this.$it = webviewClientEvent;
                            this.this$0 = sWWebView;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new C01261(this.$it, this.this$0, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return ((C01261) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        /* JADX WARN: Code duplicated, block: B:37:0x012d  */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            PaywallUIDelegate delegate;
                            String url;
                            List<String> listListOfNotNull;
                            IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            if (this.label != 0) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                            WebviewClientEvent webviewClientEvent = this.$it;
                            if (webviewClientEvent instanceof WebviewClientEvent.OnError) {
                                SWWebView sWWebView = this.this$0;
                                WebviewError webviewError = ((WebviewClientEvent.OnError) webviewClientEvent).getWebviewError();
                                WebviewError webviewError2 = ((WebviewClientEvent.OnError) this.$it).getWebviewError();
                                if (webviewError2 instanceof WebviewError.NetworkError) {
                                    WebviewError.NetworkError networkError = (WebviewError.NetworkError) webviewError2;
                                    AnonymousClass2.emit$log$default("Paywall loading failed due to network error - " + networkError.getCode() + " - " + networkError.getDescription(), null, 2, null);
                                    listListOfNotNull = CollectionsKt.listOf(networkError.getUrl());
                                } else if (webviewError2 instanceof WebviewError.NoUrls) {
                                    AnonymousClass2.emit$log$default("Paywall loading failed - no URL's to load", null, 2, null);
                                    listListOfNotNull = CollectionsKt.emptyList();
                                } else if (webviewError2 instanceof WebviewError.MaxAttemptsReached) {
                                    AnonymousClass2.emit$log$default("Paywall loading failed - maximum attempts reached.", null, 2, null);
                                    listListOfNotNull = ((WebviewError.MaxAttemptsReached) webviewError2).getUrls();
                                } else if (webviewError2 instanceof WebviewError.AllUrlsFailed) {
                                    WebviewError.AllUrlsFailed allUrlsFailed = (WebviewError.AllUrlsFailed) webviewError2;
                                    AnonymousClass2.emit$log$default("Paywall loading failed - " + allUrlsFailed.getUrls().size() + "/" + allUrlsFailed.getUrls().size() + " tried", null, 2, null);
                                    listListOfNotNull = allUrlsFailed.getUrls();
                                } else {
                                    if (!(webviewError2 instanceof WebviewError.Timeout)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    AnonymousClass2.emit$log$default("Paywall loading reached user defined timeout - the paywall might still display", null, 2, null);
                                    listListOfNotNull = CollectionsKt.listOfNotNull(this.this$0.lastLoadedUrl);
                                }
                                sWWebView.trackPaywallError(webviewError, listListOfNotNull);
                                if (this.this$0.lastLoadedUrl != null) {
                                    WebViewClient webViewClient = this.this$0.lastWebViewClient;
                                    if (!(webViewClient instanceof WebviewFallbackClient) && (webViewClient instanceof DefaultWebviewClient)) {
                                        AnonymousClass2.emit$log$default("Paywall loading failed - retrying " + this.this$0.lastLoadedUrl, null, 2, null);
                                        SWWebView sWWebView2 = this.this$0;
                                        String str = sWWebView2.lastLoadedUrl;
                                        Intrinsics.checkNotNull(str);
                                        sWWebView2.loadUrl(str);
                                    }
                                }
                            } else if (webviewClientEvent instanceof WebviewClientEvent.OnResourceError) {
                                SWWebView sWWebView3 = this.this$0;
                                WebviewError webviewError3 = ((WebviewClientEvent.OnResourceError) webviewClientEvent).getWebviewError();
                                WebviewError webviewError4 = ((WebviewClientEvent.OnResourceError) this.$it).getWebviewError();
                                if (webviewError4 instanceof WebviewError.NetworkError) {
                                    url = ((WebviewError.NetworkError) webviewError4).getUrl();
                                } else if (webviewError4 instanceof WebviewError.NoUrls) {
                                    url = "";
                                } else if (webviewError4 instanceof WebviewError.MaxAttemptsReached) {
                                    url = (String) CollectionsKt.first((List) ((WebviewError.MaxAttemptsReached) webviewError4).getUrls());
                                } else if (webviewError4 instanceof WebviewError.AllUrlsFailed) {
                                    url = (String) CollectionsKt.first((List) ((WebviewError.AllUrlsFailed) webviewError4).getUrls());
                                } else if (webviewError4 instanceof WebviewError.Timeout) {
                                    url = this.this$0.lastLoadedUrl;
                                    if (url == null) {
                                        url = "";
                                    }
                                } else {
                                    throw new NoWhenBranchMatchedException();
                                }
                                sWWebView3.trackPaywallResourceError(webviewError3, url);
                            } else if (webviewClientEvent instanceof WebviewClientEvent.OnPageFinished) {
                                SWWebView sWWebView4 = this.this$0;
                                try {
                                    C01261 c01261 = this;
                                    new Either.Success(BuildersKt__Builders_commonKt.launch$default(sWWebView4.mainScope, null, null, new SWWebView$listenToWebviewClientEvents$1$2$1$1$1(sWWebView4, null), 3, null));
                                } catch (Throwable th) {
                                    new Either.Failure(th);
                                }
                                if (((PaywallOptions) this.this$0.options.invoke()).getOptimisticLoading() && (delegate = this.this$0.getDelegate()) != null) {
                                    delegate.updateState(new PaywallViewState.Updates.SetLoadingState(PaywallLoadingState.Ready.INSTANCE));
                                }
                                Function1 function1 = this.this$0.onFinishedLoading;
                                if (function1 != null) {
                                    function1.invoke(((WebviewClientEvent.OnPageFinished) this.$it).getUrl());
                                }
                            } else if (webviewClientEvent instanceof WebviewClientEvent.LoadingFallback) {
                                this.this$0.trackLoadFallback();
                            } else {
                                throw new NoWhenBranchMatchedException();
                            }
                            return Unit.INSTANCE;
                        }
                    }

                    public final Object emit(WebviewClientEvent webviewClientEvent, Continuation<? super Unit> continuation) {
                        BuildersKt__Builders_commonKt.launch$default(sWWebView.mainScope, null, null, new C01261(webviewClientEvent, sWWebView, null), 3, null);
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
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.SWWebView$listenToWebviewClientEvents$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: SWWebView.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/paywall/view/webview/WebviewClientEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.SWWebView$listenToWebviewClientEvents$1$1", f = "SWWebView.kt", i = {}, l = {339}, m = "invokeSuspend", n = {}, s = {})
        static final class C01241 extends SuspendLambda implements Function2<WebviewClientEvent, Continuation<? super Boolean>, Object> {
            final /* synthetic */ DefaultWebviewClient $client;
            int label;
            final /* synthetic */ SWWebView this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01241(SWWebView sWWebView, DefaultWebviewClient defaultWebviewClient, Continuation<? super C01241> continuation) {
                super(2, continuation);
                this.this$0 = sWWebView;
                this.$client = defaultWebviewClient;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C01241(this.this$0, this.$client, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(WebviewClientEvent webviewClientEvent, Continuation<? super Boolean> continuation) {
                return ((C01241) create(webviewClientEvent, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                Object objAwait = BuildersKt__Builders_commonKt.async$default(this.this$0.mainScope, null, null, new C01251(this.this$0, this.$client, null), 3, null).await(this);
                return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
            }

            /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.SWWebView$listenToWebviewClientEvents$1$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: SWWebView.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.SWWebView$listenToWebviewClientEvents$1$1$1", f = "SWWebView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class C01251 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
                final /* synthetic */ DefaultWebviewClient $client;
                int label;
                final /* synthetic */ SWWebView this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C01251(SWWebView sWWebView, DefaultWebviewClient defaultWebviewClient, Continuation<? super C01251> continuation) {
                    super(2, continuation);
                    this.this$0 = sWWebView;
                    this.$client = defaultWebviewClient;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C01251(this.this$0, this.$client, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
                    return ((C01251) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Boxing.boxBoolean(Intrinsics.areEqual(this.this$0.getWebViewClient(), this.$client));
                }
            }
        }
    }

    private final void listenToWebviewClientEvents(DefaultWebviewClient client) {
        BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05571(client, this, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.SWWebView$trackLoadFallback$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SWWebView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.SWWebView$trackLoadFallback$1", f = "SWWebView.kt", i = {}, l = {467}, m = "invokeSuspend", n = {}, s = {})
    static final class C05581 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05581(Continuation<? super C05581> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SWWebView.this.new C05581(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05581) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            PaywallInfo info;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PaywallUIDelegate delegate = SWWebView.this.getDelegate();
                if (delegate != null) {
                    delegate.updateState(PaywallViewState.Updates.WebLoadingFailed.INSTANCE);
                }
                PaywallUIDelegate delegate2 = SWWebView.this.getDelegate();
                if (delegate2 == null || (info = delegate2.getInfo()) == null) {
                    return Unit.INSTANCE;
                }
                InternalSuperwallEvent.PaywallWebviewLoad paywallWebviewLoad = new InternalSuperwallEvent.PaywallWebviewLoad(InternalSuperwallEvent.PaywallWebviewLoad.State.Fallback.INSTANCE, info);
                Function2 function2 = SWWebView.this.track;
                this.label = 1;
                if (function2.invoke(paywallWebviewLoad, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void trackLoadFallback() {
        BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new C05581(null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.SWWebView$trackPaywallError$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SWWebView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.SWWebView$trackPaywallError$1", f = "SWWebView.kt", i = {}, l = {489}, m = "invokeSuspend", n = {}, s = {})
    static final class C05591 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ WebviewError $error;
        final /* synthetic */ List<String> $urls;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05591(WebviewError webviewError, List<String> list, Continuation<? super C05591> continuation) {
            super(2, continuation);
            this.$error = webviewError;
            this.$urls = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SWWebView.this.new C05591(this.$error, this.$urls, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05591) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            PaywallInfo info;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PaywallUIDelegate delegate = SWWebView.this.getDelegate();
                if (delegate != null) {
                    delegate.updateState(PaywallViewState.Updates.WebLoadingFailed.INSTANCE);
                }
                PaywallUIDelegate delegate2 = SWWebView.this.getDelegate();
                if (delegate2 == null || (info = delegate2.getInfo()) == null) {
                    return Unit.INSTANCE;
                }
                InternalSuperwallEvent.PaywallWebviewLoad paywallWebviewLoad = new InternalSuperwallEvent.PaywallWebviewLoad(new InternalSuperwallEvent.PaywallWebviewLoad.State.Fail(this.$error, this.$urls), info);
                Function2 function2 = SWWebView.this.track;
                this.label = 1;
                if (function2.invoke(paywallWebviewLoad, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void trackPaywallError(WebviewError error, List<String> urls) {
        BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new C05591(error, urls, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.SWWebView$trackPaywallResourceError$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SWWebView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.SWWebView$trackPaywallResourceError$1", f = "SWWebView.kt", i = {}, l = {TypedValues.Position.TYPE_PERCENT_WIDTH}, m = "invokeSuspend", n = {}, s = {})
    static final class C05601 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ WebviewError $error;
        final /* synthetic */ String $url;
        int label;
        final /* synthetic */ SWWebView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05601(String str, WebviewError webviewError, SWWebView sWWebView, Continuation<? super C05601> continuation) {
            super(2, continuation);
            this.$url = str;
            this.$error = webviewError;
            this.this$0 = sWWebView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05601(this.$url, this.$error, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05601) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InternalSuperwallEvent.PaywallResourceLoadFail paywallResourceLoadFail = new InternalSuperwallEvent.PaywallResourceLoadFail(this.$url, this.$error.toString());
                Function2 function2 = this.this$0.track;
                this.label = 1;
                if (function2.invoke(paywallResourceLoadFail, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void trackPaywallResourceError(WebviewError error, String url) {
        BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new C05601(url, error, this, null), 3, null);
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.scrollEnabled || event.getAction() != 2) {
            return super.onTouchEvent(event);
        }
        boolean zOnTouchEvent = getGestureDetector().onTouchEvent(event);
        return !zOnTouchEvent ? super.onTouchEvent(event) : zOnTouchEvent;
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int horizontalOrigin, int verticalOrigin, int oldHorizontal, int oldVertical) {
        super.onScrollChanged(horizontalOrigin, verticalOrigin, oldHorizontal, oldVertical);
        PaywallWebUI.OnScrollChangeListener onScrollChangeListener = getOnScrollChangeListener();
        if (onScrollChangeListener != null) {
            onScrollChangeListener.onScrollChanged(horizontalOrigin, verticalOrigin, oldHorizontal, oldVertical);
        }
    }

    @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI
    public void destroyView() {
        setOnScrollChangeListener((PaywallWebUI.OnScrollChangeListener) null);
        destroy();
    }

    @Override // android.webkit.WebView
    public void destroy() {
        setOnScrollChangeListener((PaywallWebUI.OnScrollChangeListener) null);
        super.destroy();
    }

    @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI
    public void onView(Function1<? super View, Unit> perform) {
        Intrinsics.checkNotNullParameter(perform, "perform");
        perform.invoke(this);
    }

    @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI
    public void evaluate(String code, final Function1<? super String, Unit> resultCallback) {
        Intrinsics.checkNotNullParameter(code, "code");
        evaluateJavascript(code, resultCallback != null ? new ValueCallback() { // from class: com.superwall.sdk.paywall.view.webview.SWWebView$$ExternalSyntheticLambda0
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                resultCallback.invoke((String) obj);
            }
        } : null);
    }

    @Override // com.superwall.sdk.paywall.view.webview.PaywallWebUI
    /* JADX INFO: renamed from: setup-MkQ7Bds */
    public void mo10746setupMkQ7Bds(String url, Function2<? super Boolean, ? super Integer, Unit> onRenderCrashed) {
        PaywallViewState state;
        Paywall paywall;
        Boolean boolIsScrollEnabled;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(onRenderCrashed, "onRenderCrashed");
        this.onRenderCrashed = onRenderCrashed;
        PaywallUIDelegate delegate = getDelegate();
        this.scrollEnabled = (delegate == null || (state = delegate.getState()) == null || (paywall = state.getPaywall()) == null || (boolIsScrollEnabled = paywall.isScrollEnabled()) == null) ? true : boolIsScrollEnabled.booleanValue();
        BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new SWWebView$setup$1(this, url, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bitmap posterBmp_delegate$lambda$11() {
        return Bitmap.createBitmap(10, 10, Bitmap.Config.ARGB_8888);
    }
}
