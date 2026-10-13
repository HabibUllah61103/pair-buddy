package com.superwall.sdk.paywall.view.webview.messaging;

import android.app.Activity;
import android.os.Build;
import android.webkit.JavascriptInterface;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.ts.TsExtractor;
import com.facebook.imageutils.JfifUtil;
import com.google.android.gms.common.internal.ImagesContract;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.analytics.superwall.SuperwallEvents;
import com.superwall.sdk.config.options.SuperwallOptions;
import com.superwall.sdk.dependencies.OptionsFactory;
import com.superwall.sdk.dependencies.VariablesFactory;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.MainScope;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.paywall.LocalNotification;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.paywall.presentation.CustomCallback;
import com.superwall.sdk.paywall.presentation.CustomCallbackRegistry;
import com.superwall.sdk.paywall.presentation.CustomCallbackResult;
import com.superwall.sdk.paywall.presentation.CustomCallbackResultStatus;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.request.PresentationInfo;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.PaywallViewState;
import com.superwall.sdk.paywall.view.delegate.PaywallLoadingState;
import com.superwall.sdk.paywall.view.webview.SendPaywallMessages;
import com.superwall.sdk.permissions.PermissionStatus;
import com.superwall.sdk.permissions.PermissionType;
import com.superwall.sdk.permissions.UserPermissions;
import com.superwall.sdk.storage.core_data.ConvertersKt;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import defpackage.TemplateLogic;
import java.net.URI;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonKt;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: compiled from: PaywallMessageHandler.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 m2\u00020\u0001:\u0001mB¹\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0007\u0012\u001e\u0010\f\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0\u000e\u0012\u0004\u0012\u00020\n0\r\u0012\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0018\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u000e\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u0011\u0012\u0006\u0010\u001e\u001a\u00020\u001f¢\u0006\u0004\b \u0010!J\u0010\u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u000fH\u0007J\u0010\u0010.\u001a\u00020\n2\u0006\u0010-\u001a\u00020+H\u0016J4\u0010/\u001a\u00020\n2\u0006\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u0002022\u0014\b\u0002\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0\u000eH\u0082@¢\u0006\u0002\u00104J\u0016\u00105\u001a\u00020\n2\u0006\u00101\u001a\u000202H\u0082@¢\u0006\u0002\u00106J\u0016\u00107\u001a\u00020\n2\u0006\u00108\u001a\u00020\u000fH\u0082@¢\u0006\u0002\u00109J\u001e\u0010:\u001a\u00020\n2\u0006\u00101\u001a\u0002022\u0006\u0010;\u001a\u00020<H\u0082@¢\u0006\u0002\u0010=J\u0006\u0010>\u001a\u00020\nJ\b\u0010?\u001a\u00020\nH\u0002J\u0018\u0010@\u001a\u00020\n2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0002J\u0010\u0010E\u001a\u00020\n2\u0006\u0010A\u001a\u00020BH\u0002J\u0010\u0010F\u001a\u00020\n2\u0006\u0010A\u001a\u00020\u000fH\u0002J\b\u0010G\u001a\u00020\nH\u0002J\u0018\u0010H\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u000f2\u0006\u0010J\u001a\u00020DH\u0002J\u0010\u0010K\u001a\u00020\n2\u0006\u0010L\u001a\u00020\u000fH\u0002J\u0018\u0010M\u001a\u00020\n2\u0006\u0010N\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020PH\u0002J\u0010\u0010Q\u001a\u00020\n2\u0006\u0010R\u001a\u00020SH\u0002J\u0010\u0010T\u001a\u00020\n2\u0006\u0010R\u001a\u00020UH\u0002J&\u0010V\u001a\u00020\n2\u0006\u0010W\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020[H\u0082@¢\u0006\u0002\u0010\\J\u0010\u0010]\u001a\u00020\n2\u0006\u0010R\u001a\u00020^H\u0002J<\u0010_\u001a\u00020\n2\u0006\u0010W\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020\u000f2\u0006\u0010Z\u001a\u00020`2\u0014\u0010a\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000eH\u0082@¢\u0006\u0002\u0010bJ(\u0010c\u001a\u00020\n2\u0006\u00100\u001a\u00020\u000f2\u0016\b\u0002\u0010d\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000eH\u0002J\b\u0010e\u001a\u00020\nH\u0002J\u0010\u0010f\u001a\u00020\n2\u0006\u0010g\u001a\u00020hH\u0002J\u001a\u0010i\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0\u000eH\u0086@¢\u0006\u0002\u0010jJ\u0012\u0010k\u001a\u00020\u000b2\b\u0010l\u001a\u0004\u0018\u00010\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\"R&\u0010\f\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0\u000e\u0012\u0004\u0012\u00020\n0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0014\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006n"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;", "Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;", "factory", "Lcom/superwall/sdk/dependencies/VariablesFactory;", "options", "Lcom/superwall/sdk/dependencies/OptionsFactory;", "track", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "Lkotlin/coroutines/Continuation;", "", "", "setAttributes", "Lkotlin/Function1;", "", "", "getView", "Lkotlin/Function0;", "Lcom/superwall/sdk/paywall/view/PaywallView;", "mainScope", "Lcom/superwall/sdk/misc/MainScope;", "ioScope", "Lkotlinx/coroutines/CoroutineScope;", "json", "Lkotlinx/serialization/json/Json;", "encodeToB64", "userPermissions", "Lcom/superwall/sdk/permissions/UserPermissions;", "getActivity", "Landroid/app/Activity;", "customCallbackRegistry", "Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;", "<init>", "(Lcom/superwall/sdk/dependencies/VariablesFactory;Lcom/superwall/sdk/dependencies/OptionsFactory;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/MainScope;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/permissions/UserPermissions;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;)V", "Lkotlin/jvm/functions/Function2;", "messageHandler", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;", "getMessageHandler", "()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;", "setMessageHandler", "(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;)V", "queue", "Ljava/util/Queue;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "postMessage", "message", "handle", "pass", "eventName", "paywall", "Lcom/superwall/sdk/models/paywall/Paywall;", "payload", "(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "passTemplatesToWebView", "(Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "passMessageToWebView", "base64String", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "didLoadWebView", "loadedAt", "Ljava/util/Date;", "(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "flushPendingMessages", "flushPendingMessagesInternal", "openUrl", ImagesContract.URL, "Ljava/net/URI;", "isPaymentSheet", "", "openUrlInBrowser", "openDeepLink", "restorePurchases", "purchaseProduct", "withId", "shouldDismiss", "handleCustomEvent", "customEvent", "handleCustomPlacement", "name", "params", "Lkotlinx/serialization/json/JsonObject;", "handleRequestReview", "request", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;", "handleRequestPermission", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;", "sendPermissionResult", "requestId", "permissionType", "Lcom/superwall/sdk/permissions/PermissionType;", "status", "Lcom/superwall/sdk/permissions/PermissionStatus;", "(Ljava/lang/String;Lcom/superwall/sdk/permissions/PermissionType;Lcom/superwall/sdk/permissions/PermissionStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleRequestCallback", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;", "sendCallbackResult", "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResultStatus;", "data", "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/CustomCallbackResultStatus;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "detectHiddenPaywallEvent", "userInfo", "hapticFeedback", "triggerHapticFeedback", "hapticType", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;", "getState", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "replaceNullsWithEmpty", RNConstants.ARG_VALUE, "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PaywallMessageHandler implements SendPaywallMessages {
    private final CustomCallbackRegistry customCallbackRegistry;
    private final Function1<String, String> encodeToB64;
    private final VariablesFactory factory;
    private final Function0<Activity> getActivity;
    private final Function0<PaywallView> getView;
    private final CoroutineScope ioScope;
    private final Json json;
    private final MainScope mainScope;
    private PaywallMessageHandlerDelegate messageHandler;
    private final OptionsFactory options;
    private final Queue<PaywallMessage> queue;
    private final Function1<Map<String, ? extends Object>, Unit> setAttributes;
    private final Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> track;
    private final UserPermissions userPermissions;
    private static final Companion Companion = new Companion(null);
    private static final String selectionString = "var css = '*{-webkit-touch-callout:none;-webkit-user-select:none} .w-webflow-badge { display: none !important; }';\n                    var head = document.head || document.getElementsByTagName('head')[0];\n                    var style = document.createElement('style'); style.type = 'text/css';\n                    style.appendChild(document.createTextNode(css)); head.appendChild(style); ";
    private static final String preventZoom = "var meta = document.createElement('meta');\n                        meta.name = 'viewport';\n                        meta.content = 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no';\n                        var head = document.getElementsByTagName('head')[0];\n                        head.appendChild(meta);";

    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[PaywallMessage.RequestReview.Type.values().length];
            try {
                iArr[PaywallMessage.RequestReview.Type.EXTERNAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[PaywallMessage.HapticFeedback.HapticType.values().length];
            try {
                iArr2[PaywallMessage.HapticFeedback.HapticType.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[PaywallMessage.HapticFeedback.HapticType.MEDIUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[PaywallMessage.HapticFeedback.HapticType.HEAVY.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[PaywallMessage.HapticFeedback.HapticType.SUCCESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[PaywallMessage.HapticFeedback.HapticType.WARNING.ordinal()] = 5;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[PaywallMessage.HapticFeedback.HapticType.ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[PaywallMessage.HapticFeedback.HapticType.SELECTION.ordinal()] = 7;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$didLoadWebView$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler", f = "PaywallMessageHandler.kt", i = {0, 0}, l = {400}, m = "didLoadWebView", n = {"this", "htmlSubstitutions"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PaywallMessageHandler.this.didLoadWebView(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$getState$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler", f = "PaywallMessageHandler.kt", i = {}, l = {869}, m = "getState", n = {}, s = {})
    static final class C05631 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C05631(Continuation<? super C05631> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PaywallMessageHandler.this.getState(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$passTemplatesToWebView$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler", f = "PaywallMessageHandler.kt", i = {0}, l = {329, 336}, m = "passTemplatesToWebView", n = {"this"}, s = {"L$0"})
    static final class C05751 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05751(Continuation<? super C05751> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PaywallMessageHandler.this.passTemplatesToWebView(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PaywallMessageHandler(VariablesFactory factory, OptionsFactory options, Function2<? super TrackableSuperwallEvent, ? super Continuation<? super Unit>, ? extends Object> track, Function1<? super Map<String, ? extends Object>, Unit> setAttributes, Function0<PaywallView> getView, MainScope mainScope, CoroutineScope ioScope, Json json, Function1<? super String, String> encodeToB64, UserPermissions userPermissions, Function0<? extends Activity> getActivity, CustomCallbackRegistry customCallbackRegistry) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(track, "track");
        Intrinsics.checkNotNullParameter(setAttributes, "setAttributes");
        Intrinsics.checkNotNullParameter(getView, "getView");
        Intrinsics.checkNotNullParameter(mainScope, "mainScope");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(encodeToB64, "encodeToB64");
        Intrinsics.checkNotNullParameter(userPermissions, "userPermissions");
        Intrinsics.checkNotNullParameter(getActivity, "getActivity");
        Intrinsics.checkNotNullParameter(customCallbackRegistry, "customCallbackRegistry");
        this.factory = factory;
        this.options = options;
        this.track = track;
        this.setAttributes = setAttributes;
        this.getView = getView;
        this.mainScope = mainScope;
        this.ioScope = ioScope;
        this.json = json;
        this.encodeToB64 = encodeToB64;
        this.userPermissions = userPermissions;
        this.getActivity = getActivity;
        this.customCallbackRegistry = customCallbackRegistry;
        this.queue = new LinkedList();
    }

    public /* synthetic */ PaywallMessageHandler(VariablesFactory variablesFactory, OptionsFactory optionsFactory, Function2 function2, Function1 function1, Function0 function0, MainScope mainScope, CoroutineScope coroutineScope, Json json, Function1 function3, UserPermissions userPermissions, Function0 function4, CustomCallbackRegistry customCallbackRegistry, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(variablesFactory, optionsFactory, function2, function1, function0, mainScope, coroutineScope, (i & 128) != 0 ? JsonKt.Json$default(null, new Function1() { // from class: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PaywallMessageHandler._init_$lambda$0((JsonBuilder) obj);
            }
        }, 1, null) : json, function3, userPermissions, function4, customCallbackRegistry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$0(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setEncodeDefaults(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u0005X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$Companion;", "", "<init>", "()V", "selectionString", "", "getSelectionString", "()Ljava/lang/String;", "preventZoom", "getPreventZoom", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getSelectionString() {
            return PaywallMessageHandler.selectionString;
        }

        public final String getPreventZoom() {
            return PaywallMessageHandler.preventZoom;
        }
    }

    public final PaywallMessageHandlerDelegate getMessageHandler() {
        return this.messageHandler;
    }

    public final void setMessageHandler(PaywallMessageHandlerDelegate paywallMessageHandlerDelegate) {
        this.messageHandler = paywallMessageHandlerDelegate;
    }

    @JavascriptInterface
    public final void postMessage(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "SWWebViewInterface: " + message, null, null, 24, null);
        Object wrappedPaywallMessages = PaywallMessageKt.parseWrappedPaywallMessages(message);
        Throwable thM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(wrappedPaywallMessages);
        if (thM11244exceptionOrNullimpl == null) {
            for (PaywallMessage paywallMessage : ((WrappedPaywallMessages) wrappedPaywallMessages).getPayload().getMessages()) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "SWWebViewInterface: " + paywallMessage.getClass().getSimpleName(), null, null, 24, null);
                handle(paywallMessage);
            }
            return;
        }
        thM11244exceptionOrNullimpl.printStackTrace();
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "SWWebViewInterface: Error parsing message - " + thM11244exceptionOrNullimpl, null, null, 24, null);
    }

    @Override // com.superwall.sdk.paywall.view.webview.SendPaywallMessages
    public void handle(PaywallMessage message) {
        PaywallViewState state;
        Paywall paywall;
        PaywallViewState state2;
        PaywallInfo info;
        PaywallViewState state3;
        Paywall paywall2;
        PaywallViewState state4;
        Paywall paywall3;
        PaywallViewState state5;
        Intrinsics.checkNotNullParameter(message, "message");
        Logger logger = Logger.INSTANCE;
        LogLevel logLevel = LogLevel.debug;
        LogScope logScope = LogScope.superwallCore;
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
        Logger.debug$default(logger, logLevel, logScope, "!! PaywallMessageHandler: Handling message: " + message + " " + ((paywallMessageHandlerDelegate == null || (state5 = paywallMessageHandlerDelegate.getState()) == null) ? null : state5.getPaywall()) + ", delegeate: " + this.messageHandler, null, null, 24, null);
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate2 = this.messageHandler;
        if (paywallMessageHandlerDelegate2 == null || (state = paywallMessageHandlerDelegate2.getState()) == null || (paywall = state.getPaywall()) == null) {
            return;
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "!! PaywallMessageHandler: Paywall: " + paywall + ", delegeate: " + this.messageHandler, null, null, 24, null);
        if (message instanceof PaywallMessage.TemplateParamsAndUserAttributes) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05651(paywall, null), 3, null);
            return;
        }
        if (message instanceof PaywallMessage.OnReady) {
            PaywallMessageHandlerDelegate paywallMessageHandlerDelegate3 = this.messageHandler;
            if (paywallMessageHandlerDelegate3 != null) {
                paywallMessageHandlerDelegate3.updateState(new PaywallViewState.Updates.SetPaywallJsVersion(((PaywallMessage.OnReady) message).getPaywallJsVersion()));
            }
            Date date = new Date();
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "!! PaywallMessageHandler: Ready !!", null, null, 24, null);
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05662(paywall, date, null), 3, null);
            return;
        }
        if (message instanceof PaywallMessage.Close) {
            hapticFeedback();
            PaywallMessageHandlerDelegate paywallMessageHandlerDelegate4 = this.messageHandler;
            if (paywallMessageHandlerDelegate4 != null) {
                paywallMessageHandlerDelegate4.eventDidOccur(PaywallWebEvent.Closed.INSTANCE);
                return;
            }
            return;
        }
        if (message instanceof PaywallMessage.OpenUrl) {
            PaywallMessage.OpenUrl openUrl = (PaywallMessage.OpenUrl) message;
            openUrl(openUrl.getUrl(), openUrl.getBrowserType() == PaywallMessage.OpenUrl.BrowserType.PAYMENT_SHEET);
            return;
        }
        if (message instanceof PaywallMessage.OpenUrlInBrowser) {
            openUrlInBrowser(((PaywallMessage.OpenUrlInBrowser) message).getUrl());
            return;
        }
        if (message instanceof PaywallMessage.OpenDeepLink) {
            String string = ((PaywallMessage.OpenDeepLink) message).getUrl().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            openDeepLink(string);
            return;
        }
        if (message instanceof PaywallMessage.Restore) {
            restorePurchases();
            return;
        }
        if (message instanceof PaywallMessage.Purchase) {
            PaywallMessage.Purchase purchase = (PaywallMessage.Purchase) message;
            purchaseProduct(purchase.getProductId(), purchase.getShouldDismiss());
            return;
        }
        if (message instanceof PaywallMessage.PaywallOpen) {
            PaywallMessageHandlerDelegate paywallMessageHandlerDelegate5 = this.messageHandler;
            if (((paywallMessageHandlerDelegate5 == null || (state4 = paywallMessageHandlerDelegate5.getState()) == null || (paywall3 = state4.getPaywall()) == null) ? null : paywall3.getPaywalljsVersion()) != null) {
                BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05673(paywall, null), 3, null);
                return;
            } else {
                this.queue.offer(message);
                return;
            }
        }
        if (message instanceof PaywallMessage.PaywallClose) {
            PaywallMessageHandlerDelegate paywallMessageHandlerDelegate6 = this.messageHandler;
            if (((paywallMessageHandlerDelegate6 == null || (state3 = paywallMessageHandlerDelegate6.getState()) == null || (paywall2 = state3.getPaywall()) == null) ? null : paywall2.getPaywalljsVersion()) != null) {
                BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass4(paywall, null), 3, null);
                return;
            } else {
                this.queue.offer(message);
                return;
            }
        }
        if (message instanceof PaywallMessage.Custom) {
            handleCustomEvent(((PaywallMessage.Custom) message).getData());
            return;
        }
        if (message instanceof PaywallMessage.CustomPlacement) {
            PaywallMessage.CustomPlacement customPlacement = (PaywallMessage.CustomPlacement) message;
            handleCustomPlacement(customPlacement.getName(), customPlacement.getParams());
            return;
        }
        if (message instanceof PaywallMessage.RestoreFailed) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass5(paywall, null), 3, null);
            return;
        }
        if (message instanceof PaywallMessage.RequestReview) {
            handleRequestReview((PaywallMessage.RequestReview) message);
            return;
        }
        if (message instanceof PaywallMessage.TransactionStart) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass6(paywall, null), 3, null);
            return;
        }
        if (message instanceof PaywallMessage.TransactionAbandon) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass7(paywall, null), 3, null);
            return;
        }
        if (message instanceof PaywallMessage.UserAttributesUpdated) {
            this.setAttributes.invoke(((PaywallMessage.UserAttributesUpdated) message).getData());
            return;
        }
        if (message instanceof PaywallMessage.TransactionComplete) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass8(paywall, message, null), 3, null);
            return;
        }
        if (message instanceof PaywallMessage.TrialStarted) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass9(paywall, message, null), 3, null);
            return;
        }
        if (message instanceof PaywallMessage.ScheduleNotification) {
            PaywallMessageHandlerDelegate paywallMessageHandlerDelegate7 = this.messageHandler;
            if (paywallMessageHandlerDelegate7 != null) {
                PaywallMessage.ScheduleNotification scheduleNotification = (PaywallMessage.ScheduleNotification) message;
                paywallMessageHandlerDelegate7.eventDidOccur(new PaywallWebEvent.ScheduleNotification(new LocalNotification(scheduleNotification.getId(), scheduleNotification.getType(), scheduleNotification.getTitle(), scheduleNotification.getSubtitle(), scheduleNotification.getBody(), scheduleNotification.getDelay())));
                return;
            }
            return;
        }
        if (message instanceof PaywallMessage.RequestPermission) {
            handleRequestPermission((PaywallMessage.RequestPermission) message);
            return;
        }
        if (message instanceof PaywallMessage.RequestCallback) {
            handleRequestCallback((PaywallMessage.RequestCallback) message);
            return;
        }
        if (message instanceof PaywallMessage.HapticFeedback) {
            triggerHapticFeedback(((PaywallMessage.HapticFeedback) message).getHapticType());
            return;
        }
        if (message instanceof PaywallMessage.PageView) {
            PaywallMessageHandlerDelegate paywallMessageHandlerDelegate8 = this.messageHandler;
            if (paywallMessageHandlerDelegate8 == null || (state2 = paywallMessageHandlerDelegate8.getState()) == null || (info = state2.getInfo()) == null) {
                return;
            }
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass10(info, message, null), 3, null);
            return;
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.superwallCore, "!! PaywallMessageHandler: Unknown message type: " + message, null, null, 24, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$1", f = "PaywallMessageHandler.kt", i = {}, l = {146}, m = "invokeSuspend", n = {}, s = {})
    static final class C05651 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Paywall $paywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05651(Paywall paywall, Continuation<? super C05651> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new C05651(this.$paywall, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05651) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PaywallMessageHandler.this.passTemplatesToWebView(this.$paywall, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$2", f = "PaywallMessageHandler.kt", i = {}, l = {158}, m = "invokeSuspend", n = {}, s = {})
    static final class C05662 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Date $loadedAt;
        final /* synthetic */ Paywall $paywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05662(Paywall paywall, Date date, Continuation<? super C05662> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
            this.$loadedAt = date;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new C05662(this.$paywall, this.$loadedAt, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05662) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PaywallMessageHandler.this.didLoadWebView(this.$paywall, this.$loadedAt, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$3", f = "PaywallMessageHandler.kt", i = {}, l = {TsExtractor.TS_PACKET_SIZE}, m = "invokeSuspend", n = {}, s = {})
    static final class C05673 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Paywall $paywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05673(Paywall paywall, Continuation<? super C05673> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new C05673(this.$paywall, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05673) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PaywallMessageHandler.pass$default(PaywallMessageHandler.this, SuperwallEvents.PaywallOpen.getRawName(), this.$paywall, null, this, 4, null) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$4, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$4", f = "PaywallMessageHandler.kt", i = {}, l = {199}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Paywall $paywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(Paywall paywall, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new AnonymousClass4(this.$paywall, continuation);
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
                String rawName = SuperwallEvents.PaywallClose.getRawName();
                this.label = 1;
                if (PaywallMessageHandler.pass$default(PaywallMessageHandler.this, rawName, this.$paywall, null, this, 4, null) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$5, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$5", f = "PaywallMessageHandler.kt", i = {}, l = {JfifUtil.MARKER_RST0}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Paywall $paywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(Paywall paywall, Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new AnonymousClass5(this.$paywall, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PaywallMessageHandler.pass$default(PaywallMessageHandler.this, SuperwallEvents.RestoreFail.getRawName(), this.$paywall, null, this, 4, null) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$6, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$6", f = "PaywallMessageHandler.kt", i = {}, l = {JfifUtil.MARKER_RST7}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass6 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Paywall $paywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass6(Paywall paywall, Continuation<? super AnonymousClass6> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new AnonymousClass6(this.$paywall, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass6) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PaywallMessageHandler.pass$default(PaywallMessageHandler.this, SuperwallEvents.TransactionStart.getRawName(), this.$paywall, null, this, 4, null) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$7, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$7", f = "PaywallMessageHandler.kt", i = {}, l = {221}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass7 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Paywall $paywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass7(Paywall paywall, Continuation<? super AnonymousClass7> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new AnonymousClass7(this.$paywall, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass7) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PaywallMessageHandler.pass$default(PaywallMessageHandler.this, SuperwallEvents.TransactionAbandon.getRawName(), this.$paywall, null, this, 4, null) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$8, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$8", f = "PaywallMessageHandler.kt", i = {}, l = {231}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass8 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallMessage $message;
        final /* synthetic */ Paywall $paywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass8(Paywall paywall, PaywallMessage paywallMessage, Continuation<? super AnonymousClass8> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
            this.$message = paywallMessage;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new AnonymousClass8(this.$paywall, this.$message, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass8) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PaywallMessageHandler.this.pass(SuperwallEvents.TransactionComplete.getRawName(), this.$paywall, MapsKt.mapOf(TuplesKt.to("product_identifier", ((PaywallMessage.TransactionComplete) this.$message).getProductIdentifier())), this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$9, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$9", f = "PaywallMessageHandler.kt", i = {}, l = {241}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass9 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallMessage $message;
        final /* synthetic */ Paywall $paywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass9(Paywall paywall, PaywallMessage paywallMessage, Continuation<? super AnonymousClass9> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
            this.$message = paywallMessage;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new AnonymousClass9(this.$paywall, this.$message, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass9) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PaywallMessageHandler paywallMessageHandler = PaywallMessageHandler.this;
                String rawName = SuperwallEvents.FreeTrialStart.getRawName();
                Paywall paywall = this.$paywall;
                PaywallMessage paywallMessage = this.$message;
                Map mapCreateMapBuilder = MapsKt.createMapBuilder();
                PaywallMessage.TrialStarted trialStarted = (PaywallMessage.TrialStarted) paywallMessage;
                Long trialEndDate = trialStarted.getTrialEndDate();
                if (trialEndDate != null) {
                    mapCreateMapBuilder.put("trial_end_date", Boxing.boxLong(trialEndDate.longValue()));
                }
                mapCreateMapBuilder.put("product_identifier", trialStarted.getProductIdentifier());
                Unit unit = Unit.INSTANCE;
                this.label = 1;
                if (paywallMessageHandler.pass(rawName, paywall, MapsKt.build(mapCreateMapBuilder), this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$10, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handle$10", f = "PaywallMessageHandler.kt", i = {}, l = {276}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass10 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallMessage $message;
        final /* synthetic */ PaywallInfo $paywallInfo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass10(PaywallInfo paywallInfo, PaywallMessage paywallMessage, Continuation<? super AnonymousClass10> continuation) {
            super(2, continuation);
            this.$paywallInfo = paywallInfo;
            this.$message = paywallMessage;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new AnonymousClass10(this.$paywallInfo, this.$message, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass10) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function2 function2 = PaywallMessageHandler.this.track;
                InternalSuperwallEvent.PaywallPageView paywallPageView = new InternalSuperwallEvent.PaywallPageView(this.$paywallInfo, ((PaywallMessage.PageView) this.$message).getData());
                this.label = 1;
                if (function2.invoke(paywallPageView, this) == coroutine_suspended) {
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

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Object pass$default(PaywallMessageHandler paywallMessageHandler, String str, Paywall paywall, Map map, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        return paywallMessageHandler.pass(str, paywall, map, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object pass(String str, Paywall paywall, Map<String, ? extends Object> map, Continuation<? super Unit> continuation) {
        String strEncodeToString;
        List listListOf = CollectionsKt.listOf(MapsKt.plus(MapsKt.mapOf(TuplesKt.to("event_name", str), TuplesKt.to("paywall_id", paywall.getDatabaseId()), TuplesKt.to("paywall_identifier", paywall.getIdentifier())), map));
        try {
            Json json = this.json;
            JsonElement jsonElementConvertToJsonElement = ConvertersKt.convertToJsonElement(listListOf);
            json.getSerializersModule();
            strEncodeToString = json.encodeToString(JsonElement.INSTANCE.serializer(), jsonElementConvertToJsonElement);
        } catch (Throwable th) {
            th.printStackTrace();
            strEncodeToString = "{\"event_name\":\"" + str + "\"}";
        }
        Object objPassMessageToWebView = passMessageToWebView(this.encodeToB64.invoke(strEncodeToString), continuation);
        return objPassMessageToWebView == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPassMessageToWebView : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007f, code lost:
    
        if (r11.passMessageToWebView((java.lang.String) r12, r7) == r0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object passTemplatesToWebView(com.superwall.sdk.models.paywall.Paywall r11, kotlin.coroutines.Continuation<? super kotlin.Unit> r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler.C05751
            if (r0 == 0) goto L14
            r0 = r12
            com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$passTemplatesToWebView$1 r0 = (com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler.C05751) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r12 = r0.label
            int r12 = r12 - r2
            r0.label = r12
            goto L19
        L14:
            com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$passTemplatesToWebView$1 r0 = new com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$passTemplatesToWebView$1
            r0.<init>(r12)
        L19:
            r7 = r0
            java.lang.Object r12 = r7.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            r8 = 0
            r9 = 2
            r2 = 1
            if (r1 == 0) goto L3f
            if (r1 == r2) goto L37
            if (r1 != r9) goto L2f
            kotlin.ResultKt.throwOnFailure(r12)
            goto L82
        L2f:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L37:
            java.lang.Object r11 = r7.L$0
            com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler r11 = (com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler) r11
            kotlin.ResultKt.throwOnFailure(r12)
            goto L75
        L3f:
            kotlin.ResultKt.throwOnFailure(r12)
            com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandlerDelegate r12 = r10.messageHandler
            if (r12 == 0) goto L5e
            com.superwall.sdk.paywall.view.PaywallViewState r12 = r12.getState()
            if (r12 == 0) goto L5e
            com.superwall.sdk.paywall.presentation.internal.PresentationRequest r12 = r12.getRequest()
            if (r12 == 0) goto L5e
            com.superwall.sdk.paywall.presentation.internal.request.PresentationInfo r12 = r12.getPresentationInfo()
            if (r12 == 0) goto L5e
            com.superwall.sdk.models.events.EventData r12 = r12.getEventData()
            r4 = r12
            goto L5f
        L5e:
            r4 = r8
        L5f:
            TemplateLogic r1 = defpackage.TemplateLogic.INSTANCE
            com.superwall.sdk.dependencies.VariablesFactory r5 = r10.factory
            r12 = r2
            kotlinx.serialization.json.Json r2 = r10.json
            kotlin.jvm.functions.Function1<java.lang.String, java.lang.String> r6 = r10.encodeToB64
            r7.L$0 = r10
            r7.label = r12
            r3 = r11
            java.lang.Object r12 = r1.getBase64EncodedTemplates(r2, r3, r4, r5, r6, r7)
            if (r12 != r0) goto L74
            goto L81
        L74:
            r11 = r10
        L75:
            java.lang.String r12 = (java.lang.String) r12
            r7.L$0 = r8
            r7.label = r9
            java.lang.Object r11 = r11.passMessageToWebView(r12, r7)
            if (r11 != r0) goto L82
        L81:
            return r0
        L82:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler.passTemplatesToWebView(com.superwall.sdk.models.paywall.Paywall, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object passMessageToWebView(String str, Continuation<? super Unit> continuation) {
        String str2 = "\n      window.paywall.accept64('" + str + "');\n    ";
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Posting Message", MapsKt.mapOf(TuplesKt.to("message", str2)), null, 16, null);
        return BuildersKt.withContext(Dispatchers.getMain(), new C05742(str2, null), continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$passMessageToWebView$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$passMessageToWebView$2", f = "PaywallMessageHandler.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05742 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $templateScript;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05742(String str, Continuation<? super C05742> continuation) {
            super(2, continuation);
            this.$templateScript = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new C05742(this.$templateScript, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05742) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            PaywallMessageHandlerDelegate messageHandler = PaywallMessageHandler.this.getMessageHandler();
            if (messageHandler == null) {
                return null;
            }
            final String str = this.$templateScript;
            messageHandler.evaluate(str, new Function1() { // from class: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$passMessageToWebView$2$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return PaywallMessageHandler.C05742.invokeSuspend$lambda$0(str, (String) obj2);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(String str, String str2) {
            if (str2 != null) {
                Logger.INSTANCE.debug(LogLevel.error, LogScope.paywallView, "Error Evaluating JS", MapsKt.mapOf(TuplesKt.to("message", str)), new Exception(str2));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object didLoadWebView(Paywall paywall, Date date, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        String str;
        PaywallMessageHandler paywallMessageHandler;
        PaywallViewState state;
        PresentationRequest request;
        PresentationInfo presentationInfo;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object obj = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass2.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass2(date, null), 3, null);
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "!! PaywallMessageHandler: didLoadWebView", null, null, 24, null);
            String htmlSubstitutions = paywall.getHtmlSubstitutions();
            PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
            EventData eventData = (paywallMessageHandlerDelegate == null || (state = paywallMessageHandlerDelegate.getState()) == null || (request = state.getRequest()) == null || (presentationInfo = request.getPresentationInfo()) == null) ? null : presentationInfo.getEventData();
            TemplateLogic templateLogic = TemplateLogic.INSTANCE;
            VariablesFactory variablesFactory = this.factory;
            Json json = this.json;
            Function1<String, String> function1 = this.encodeToB64;
            anonymousClass2.L$0 = this;
            anonymousClass2.L$1 = htmlSubstitutions;
            anonymousClass2.label = 1;
            Object base64EncodedTemplates = templateLogic.getBase64EncodedTemplates(json, paywall, eventData, variablesFactory, function1, anonymousClass2);
            if (base64EncodedTemplates == coroutine_suspended) {
                return coroutine_suspended;
            }
            str = htmlSubstitutions;
            obj = base64EncodedTemplates;
            paywallMessageHandler = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) anonymousClass2.L$1;
            paywallMessageHandler = (PaywallMessageHandler) anonymousClass2.L$0;
            ResultKt.throwOnFailure(obj);
        }
        String str2 = "\n      window.paywall.accept64('" + ((String) obj) + "');\n      window.paywall.accept64('" + str + "');\n    ";
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "!! PaywallMessageHandler: " + str2, null, null, 24, null);
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Posting Message", MapsKt.mapOf(TuplesKt.to("message", str2)), null, 16, null);
        BuildersKt__Builders_commonKt.launch$default(paywallMessageHandler.mainScope, null, null, paywallMessageHandler.new AnonymousClass3(str2, null), 3, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$didLoadWebView$2, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$didLoadWebView$2", f = "PaywallMessageHandler.kt", i = {}, l = {382}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Date $loadedAt;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Date date, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$loadedAt = date;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new AnonymousClass2(this.$loadedAt, continuation);
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
                PaywallMessageHandlerDelegate messageHandler = PaywallMessageHandler.this.getMessageHandler();
                if (messageHandler != null) {
                    messageHandler.updateState(new PaywallViewState.Updates.WebLoadingEnded(this.$loadedAt));
                    InternalSuperwallEvent.PaywallWebviewLoad paywallWebviewLoad = new InternalSuperwallEvent.PaywallWebviewLoad(new InternalSuperwallEvent.PaywallWebviewLoad.State.Complete(), messageHandler.getState().getInfo());
                    Function2 function2 = PaywallMessageHandler.this.track;
                    this.label = 1;
                    if (function2.invoke(paywallWebviewLoad, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$didLoadWebView$3, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$didLoadWebView$3", f = "PaywallMessageHandler.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $scriptSrc;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(String str, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$scriptSrc = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new AnonymousClass3(this.$scriptSrc, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            PaywallMessageHandlerDelegate messageHandler = PaywallMessageHandler.this.getMessageHandler();
            if (messageHandler != null) {
                final String str = this.$scriptSrc;
                messageHandler.evaluate(str, new Function1() { // from class: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$didLoadWebView$3$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return PaywallMessageHandler.AnonymousClass3.invokeSuspend$lambda$0(str, (String) obj2);
                    }
                });
            }
            PaywallMessageHandlerDelegate messageHandler2 = PaywallMessageHandler.this.getMessageHandler();
            if (messageHandler2 != null) {
                messageHandler2.evaluate(PaywallMessageHandler.Companion.getSelectionString(), null);
            }
            PaywallMessageHandlerDelegate messageHandler3 = PaywallMessageHandler.this.getMessageHandler();
            if (messageHandler3 != null) {
                messageHandler3.evaluate(PaywallMessageHandler.Companion.getPreventZoom(), null);
            }
            PaywallMessageHandler.this.flushPendingMessagesInternal();
            PaywallMessageHandlerDelegate messageHandler4 = PaywallMessageHandler.this.getMessageHandler();
            if (messageHandler4 != null) {
                messageHandler4.updateState(new PaywallViewState.Updates.SetLoadingState(PaywallLoadingState.Ready.INSTANCE));
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(String str, String str2) {
            if (str2 != null) {
                Logger.INSTANCE.debug(LogLevel.error, LogScope.paywallView, "Error Evaluating JS", MapsKt.mapOf(TuplesKt.to("message", str)), new Exception(str2));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$flushPendingMessages$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$flushPendingMessages$1", f = "PaywallMessageHandler.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05621 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05621(Continuation<? super C05621> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new C05621(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05621) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$flushPendingMessages$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: PaywallMessageHandler.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$flushPendingMessages$1$1", f = "PaywallMessageHandler.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C01281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ PaywallMessageHandler this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01281(PaywallMessageHandler paywallMessageHandler, Continuation<? super C01281> continuation) {
                super(2, continuation);
                this.this$0 = paywallMessageHandler;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C01281(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C01281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.this$0.flushPendingMessagesInternal();
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                BuildersKt__Builders_commonKt.launch$default(PaywallMessageHandler.this.mainScope, null, null, new C01281(PaywallMessageHandler.this, null), 3, null);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void flushPendingMessages() {
        BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05621(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void flushPendingMessagesInternal() {
        if (this.queue.isEmpty()) {
            return;
        }
        List<PaywallMessage> list = CollectionsKt.toList(this.queue);
        this.queue.clear();
        for (PaywallMessage paywallMessage : list) {
            Intrinsics.checkNotNull(paywallMessage);
            handle(paywallMessage);
        }
    }

    private final void openUrl(URI url, boolean isPaymentSheet) {
        detectHiddenPaywallEvent("openUrl", MapsKt.mapOf(TuplesKt.to(ImagesContract.URL, url.toString())));
        hapticFeedback();
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
        if (paywallMessageHandlerDelegate != null) {
            paywallMessageHandlerDelegate.eventDidOccur(new PaywallWebEvent.OpenedURL(url));
        }
        if (isPaymentSheet) {
            PaywallMessageHandlerDelegate paywallMessageHandlerDelegate2 = this.messageHandler;
            if (paywallMessageHandlerDelegate2 != null) {
                String string = url.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                paywallMessageHandlerDelegate2.presentPaymentSheet(string);
                return;
            }
            return;
        }
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate3 = this.messageHandler;
        if (paywallMessageHandlerDelegate3 != null) {
            String string2 = url.toString();
            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            paywallMessageHandlerDelegate3.presentBrowserInApp(string2);
        }
    }

    private final void openUrlInBrowser(URI url) {
        detectHiddenPaywallEvent("openUrlInSafari", MapsKt.mapOf(TuplesKt.to(ImagesContract.URL, url)));
        hapticFeedback();
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
        if (paywallMessageHandlerDelegate != null) {
            paywallMessageHandlerDelegate.eventDidOccur(new PaywallWebEvent.OpenedUrlInChrome(url));
        }
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate2 = this.messageHandler;
        if (paywallMessageHandlerDelegate2 != null) {
            String string = url.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            paywallMessageHandlerDelegate2.presentBrowserExternal(string);
        }
    }

    private final void openDeepLink(String url) {
        detectHiddenPaywallEvent("openDeepLink", MapsKt.mapOf(TuplesKt.to(ImagesContract.URL, url)));
        hapticFeedback();
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
        if (paywallMessageHandlerDelegate != null) {
            paywallMessageHandlerDelegate.openDeepLink(url);
        }
    }

    private final void restorePurchases() {
        detectHiddenPaywallEvent$default(this, "restore", null, 2, null);
        hapticFeedback();
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
        if (paywallMessageHandlerDelegate != null) {
            paywallMessageHandlerDelegate.eventDidOccur(PaywallWebEvent.InitiateRestore.INSTANCE);
        }
    }

    private final void purchaseProduct(String withId, boolean shouldDismiss) {
        detectHiddenPaywallEvent$default(this, "purchase", null, 2, null);
        hapticFeedback();
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
        if (paywallMessageHandlerDelegate != null) {
            paywallMessageHandlerDelegate.eventDidOccur(new PaywallWebEvent.InitiatePurchase(withId, shouldDismiss));
        }
    }

    private final void handleCustomEvent(String customEvent) {
        detectHiddenPaywallEvent("custom", MapsKt.mapOf(TuplesKt.to("custom_event", customEvent)));
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
        if (paywallMessageHandlerDelegate != null) {
            paywallMessageHandlerDelegate.eventDidOccur(new PaywallWebEvent.Custom(customEvent));
        }
    }

    private final void handleCustomPlacement(String name, JsonObject params) {
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
        if (paywallMessageHandlerDelegate != null) {
            paywallMessageHandlerDelegate.eventDidOccur(new PaywallWebEvent.CustomPlacement(name, params));
        }
    }

    private final void handleRequestReview(PaywallMessage.RequestReview request) {
        PaywallWebEvent.RequestReview.Type type;
        hapticFeedback();
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
        if (paywallMessageHandlerDelegate != null) {
            if (WhenMappings.$EnumSwitchMapping$0[request.getType().ordinal()] == 1) {
                type = PaywallWebEvent.RequestReview.Type.EXTERNAL;
            } else {
                type = PaywallWebEvent.RequestReview.Type.INAPP;
            }
            paywallMessageHandlerDelegate.eventDidOccur(new PaywallWebEvent.RequestReview(type));
        }
    }

    private final void handleRequestPermission(PaywallMessage.RequestPermission request) {
        String identifier;
        PaywallViewState state;
        Paywall paywall;
        Activity activityInvoke = this.getActivity.invoke();
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
        if (paywallMessageHandlerDelegate == null || (state = paywallMessageHandlerDelegate.getState()) == null || (paywall = state.getPaywall()) == null || (identifier = paywall.getIdentifier()) == null) {
            identifier = "";
        }
        String str = identifier;
        String rawValue = request.getPermissionType().getRawValue();
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate2 = this.messageHandler;
        if (paywallMessageHandlerDelegate2 != null) {
            paywallMessageHandlerDelegate2.eventDidOccur(new PaywallWebEvent.RequestPermission(request.getPermissionType(), request.getRequestId()));
        }
        BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05701(rawValue, str, null), 3, null);
        if (activityInvoke != null) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05723(activityInvoke, request, rawValue, str, null), 3, null);
        } else {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.superwallCore, "Cannot request permission - no activity available", null, null, 24, null);
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05712(request, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handleRequestPermission$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handleRequestPermission$1", f = "PaywallMessageHandler.kt", i = {}, l = {559}, m = "invokeSuspend", n = {}, s = {})
    static final class C05701 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $paywallIdentifier;
        final /* synthetic */ String $permissionName;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05701(String str, String str2, Continuation<? super C05701> continuation) {
            super(2, continuation);
            this.$permissionName = str;
            this.$paywallIdentifier = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new C05701(this.$permissionName, this.$paywallIdentifier, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05701) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function2 function2 = PaywallMessageHandler.this.track;
                InternalSuperwallEvent.Permission permission = new InternalSuperwallEvent.Permission(InternalSuperwallEvent.Permission.State.Requested, this.$permissionName, this.$paywallIdentifier);
                this.label = 1;
                if (function2.invoke(permission, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handleRequestPermission$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handleRequestPermission$2", f = "PaywallMessageHandler.kt", i = {}, l = {576}, m = "invokeSuspend", n = {}, s = {})
    static final class C05712 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallMessage.RequestPermission $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05712(PaywallMessage.RequestPermission requestPermission, Continuation<? super C05712> continuation) {
            super(2, continuation);
            this.$request = requestPermission;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new C05712(this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05712) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PaywallMessageHandler.this.sendPermissionResult(this.$request.getRequestId(), this.$request.getPermissionType(), PermissionStatus.UNSUPPORTED, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handleRequestPermission$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handleRequestPermission$3", f = "PaywallMessageHandler.kt", i = {1, 2}, l = {588, TypedValues.Motion.TYPE_QUANTIZE_MOTION_PHASE, TypedValues.Motion.TYPE_QUANTIZE_INTERPOLATOR_ID, 622}, m = "invokeSuspend", n = {"status", "status"}, s = {"L$0", "L$0"})
    static final class C05723 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Activity $activity;
        final /* synthetic */ String $paywallIdentifier;
        final /* synthetic */ String $permissionName;
        final /* synthetic */ PaywallMessage.RequestPermission $request;
        Object L$0;
        int label;

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handleRequestPermission$3$WhenMappings */
        /* JADX INFO: compiled from: PaywallMessageHandler.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[PermissionStatus.values().length];
                try {
                    iArr[PermissionStatus.GRANTED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[PermissionStatus.DENIED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[PermissionStatus.UNSUPPORTED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05723(Activity activity, PaywallMessage.RequestPermission requestPermission, String str, String str2, Continuation<? super C05723> continuation) {
            super(2, continuation);
            this.$activity = activity;
            this.$request = requestPermission;
            this.$permissionName = str;
            this.$paywallIdentifier = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new C05723(this.$activity, this.$request, this.$permissionName, this.$paywallIdentifier, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05723) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:36:0x00c5 A[PHI: r0
          0x00c5: PHI (r0v5 com.superwall.sdk.permissions.PermissionStatus) = 
          (r0v4 com.superwall.sdk.permissions.PermissionStatus)
          (r0v4 com.superwall.sdk.permissions.PermissionStatus)
          (r0v8 com.superwall.sdk.permissions.PermissionStatus)
         binds: [B:34:0x00c2, B:31:0x00a6, B:11:0x0021] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00df, code lost:
        
            if (r14.this$0.sendPermissionResult(r14.$request.getRequestId(), r14.$request.getPermissionType(), r0, r14) == r1) goto L38;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instruction units count: 229
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler.C05723.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object sendPermissionResult(String str, PermissionType permissionType, PermissionStatus permissionStatus, Continuation<? super Unit> continuation) {
        List listListOf = CollectionsKt.listOf(MapsKt.mapOf(TuplesKt.to("event_name", "permission_result"), TuplesKt.to("permission_type", permissionType.getRawValue()), TuplesKt.to("request_id", str), TuplesKt.to("status", permissionStatus.getRawValue())));
        try {
            Json json = this.json;
            JsonElement jsonElementConvertToJsonElement = ConvertersKt.convertToJsonElement(listListOf);
            json.getSerializersModule();
            String strEncodeToString = json.encodeToString(JsonElement.INSTANCE.serializer(), jsonElementConvertToJsonElement);
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "Sending permission_result: " + strEncodeToString, null, null, 24, null);
            Object objPassMessageToWebView = passMessageToWebView(this.encodeToB64.invoke(strEncodeToString), continuation);
            return objPassMessageToWebView == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPassMessageToWebView : Unit.INSTANCE;
        } catch (Throwable th) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.superwallCore, "Error encoding permission result: " + th.getMessage(), null, th, 8, null);
            return Unit.INSTANCE;
        }
    }

    private final void handleRequestCallback(PaywallMessage.RequestCallback request) {
        String identifier;
        PaywallViewState state;
        Paywall paywall;
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
        if (paywallMessageHandlerDelegate == null || (state = paywallMessageHandlerDelegate.getState()) == null || (paywall = state.getPaywall()) == null || (identifier = paywall.getIdentifier()) == null) {
            identifier = "";
        }
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate2 = this.messageHandler;
        if (paywallMessageHandlerDelegate2 != null) {
            paywallMessageHandlerDelegate2.eventDidOccur(new PaywallWebEvent.RequestCallback(request.getName(), request.getBehavior(), request.getRequestId(), request.getVariables()));
        }
        Function2<CustomCallback, Continuation<? super CustomCallbackResult>, Object> handler = this.customCallbackRegistry.getHandler(identifier);
        if (handler != null) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05692(request, handler, this, null), 3, null);
        } else {
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.superwallCore, "No custom callback handler registered for callback: " + request.getName(), null, null, 24, null);
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05681(request, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handleRequestCallback$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handleRequestCallback$1", f = "PaywallMessageHandler.kt", i = {}, l = {694}, m = "invokeSuspend", n = {}, s = {})
    static final class C05681 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallMessage.RequestCallback $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05681(PaywallMessage.RequestCallback requestCallback, Continuation<? super C05681> continuation) {
            super(2, continuation);
            this.$request = requestCallback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new C05681(this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05681) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PaywallMessageHandler.this.sendCallbackResult(this.$request.getRequestId(), this.$request.getName(), CustomCallbackResultStatus.FAILURE, null, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handleRequestCallback$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handleRequestCallback$2", f = "PaywallMessageHandler.kt", i = {}, l = {712, 723}, m = "invokeSuspend", n = {}, s = {})
    static final class C05692 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<CustomCallback, Continuation<? super CustomCallbackResult>, Object> $callbackHandler;
        final /* synthetic */ PaywallMessage.RequestCallback $request;
        int label;
        final /* synthetic */ PaywallMessageHandler this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C05692(PaywallMessage.RequestCallback requestCallback, Function2<? super CustomCallback, ? super Continuation<? super CustomCallbackResult>, ? extends Object> function2, PaywallMessageHandler paywallMessageHandler, Continuation<? super C05692> continuation) {
            super(2, continuation);
            this.$request = requestCallback;
            this.$callbackHandler = function2;
            this.this$0 = paywallMessageHandler;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05692(this.$request, this.$callbackHandler, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05692) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x008d, code lost:
        
            if (r12.this$0.sendCallbackResult(r12.$request.getRequestId(), r12.$request.getName(), r13.getStatus(), r13.getData(), r12) == r1) goto L22;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                r12 = this;
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r0 = r12.label
                r2 = 2
                r3 = 1
                if (r0 == 0) goto L22
                if (r0 == r3) goto L1b
                if (r0 != r2) goto L13
                kotlin.ResultKt.throwOnFailure(r13)
                goto L90
            L13:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r0)
                throw r13
            L1b:
                kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Exception -> L1f
                goto L41
            L1f:
                r0 = move-exception
                r13 = r0
                goto L44
            L22:
                kotlin.ResultKt.throwOnFailure(r13)
                com.superwall.sdk.paywall.presentation.CustomCallback r13 = new com.superwall.sdk.paywall.presentation.CustomCallback     // Catch: java.lang.Exception -> L1f
                com.superwall.sdk.paywall.view.webview.messaging.PaywallMessage$RequestCallback r0 = r12.$request     // Catch: java.lang.Exception -> L1f
                java.lang.String r0 = r0.getName()     // Catch: java.lang.Exception -> L1f
                com.superwall.sdk.paywall.view.webview.messaging.PaywallMessage$RequestCallback r4 = r12.$request     // Catch: java.lang.Exception -> L1f
                java.util.Map r4 = r4.getVariables()     // Catch: java.lang.Exception -> L1f
                r13.<init>(r0, r4)     // Catch: java.lang.Exception -> L1f
                kotlin.jvm.functions.Function2<com.superwall.sdk.paywall.presentation.CustomCallback, kotlin.coroutines.Continuation<? super com.superwall.sdk.paywall.presentation.CustomCallbackResult>, java.lang.Object> r0 = r12.$callbackHandler     // Catch: java.lang.Exception -> L1f
                r12.label = r3     // Catch: java.lang.Exception -> L1f
                java.lang.Object r13 = r0.invoke(r13, r12)     // Catch: java.lang.Exception -> L1f
                if (r13 != r1) goto L41
                goto L8f
            L41:
                com.superwall.sdk.paywall.presentation.CustomCallbackResult r13 = (com.superwall.sdk.paywall.presentation.CustomCallbackResult) r13     // Catch: java.lang.Exception -> L1f
                goto L6e
            L44:
                com.superwall.sdk.logger.Logger r4 = com.superwall.sdk.logger.Logger.INSTANCE
                com.superwall.sdk.logger.LogLevel r5 = com.superwall.sdk.logger.LogLevel.error
                com.superwall.sdk.logger.LogScope r6 = com.superwall.sdk.logger.LogScope.superwallCore
                java.lang.String r0 = r13.getMessage()
                java.lang.StringBuilder r7 = new java.lang.StringBuilder
                java.lang.String r8 = "Error executing custom callback: "
                r7.<init>(r8)
                java.lang.StringBuilder r0 = r7.append(r0)
                java.lang.String r7 = r0.toString()
                r9 = r13
                java.lang.Throwable r9 = (java.lang.Throwable) r9
                r10 = 8
                r11 = 0
                r8 = 0
                com.superwall.sdk.logger.Logger.debug$default(r4, r5, r6, r7, r8, r9, r10, r11)
                com.superwall.sdk.paywall.presentation.CustomCallbackResult$Companion r13 = com.superwall.sdk.paywall.presentation.CustomCallbackResult.INSTANCE
                r0 = 0
                com.superwall.sdk.paywall.presentation.CustomCallbackResult r13 = com.superwall.sdk.paywall.presentation.CustomCallbackResult.Companion.failure$default(r13, r0, r3, r0)
            L6e:
                com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler r3 = r12.this$0
                com.superwall.sdk.paywall.view.webview.messaging.PaywallMessage$RequestCallback r0 = r12.$request
                java.lang.String r4 = r0.getRequestId()
                com.superwall.sdk.paywall.view.webview.messaging.PaywallMessage$RequestCallback r0 = r12.$request
                java.lang.String r5 = r0.getName()
                com.superwall.sdk.paywall.presentation.CustomCallbackResultStatus r6 = r13.getStatus()
                java.util.Map r7 = r13.getData()
                r8 = r12
                kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8
                r12.label = r2
                java.lang.Object r13 = com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler.access$sendCallbackResult(r3, r4, r5, r6, r7, r8)
                if (r13 != r1) goto L90
            L8f:
                return r1
            L90:
                kotlin.Unit r13 = kotlin.Unit.INSTANCE
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler.C05692.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object sendCallbackResult(String str, String str2, CustomCallbackResultStatus customCallbackResultStatus, Map<String, ? extends Object> map, Continuation<? super Unit> continuation) {
        Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("event_name", "callback_result"), TuplesKt.to("request_id", str), TuplesKt.to("name", str2), TuplesKt.to("status", customCallbackResultStatus.getRawValue()));
        if (map != null) {
            mapMutableMapOf.put("data", map);
        }
        List listListOf = CollectionsKt.listOf(mapMutableMapOf);
        try {
            Json json = this.json;
            JsonElement jsonElementConvertToJsonElement = ConvertersKt.convertToJsonElement(listListOf);
            json.getSerializersModule();
            String strEncodeToString = json.encodeToString(JsonElement.INSTANCE.serializer(), jsonElementConvertToJsonElement);
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "Sending callback_result: " + strEncodeToString, null, null, 24, null);
            Object objPassMessageToWebView = passMessageToWebView(this.encodeToB64.invoke(strEncodeToString), continuation);
            return objPassMessageToWebView == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPassMessageToWebView : Unit.INSTANCE;
        } catch (Throwable th) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.superwallCore, "Error encoding callback result: " + th.getMessage(), null, th, 8, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void detectHiddenPaywallEvent$default(PaywallMessageHandler paywallMessageHandler, String str, Map map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        paywallMessageHandler.detectHiddenPaywallEvent(str, map);
    }

    private final void detectHiddenPaywallEvent(String eventName, Map<String, ? extends Object> userInfo) {
        PaywallViewState state;
        PaywallMessageHandlerDelegate paywallMessageHandlerDelegate = this.messageHandler;
        if (paywallMessageHandlerDelegate == null || (state = paywallMessageHandlerDelegate.getState()) == null || !state.isPresented()) {
            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("self", this), TuplesKt.to("Superwall.instance.paywallViewController", String.valueOf(this.getView.invoke())), TuplesKt.to(NotificationCompat.CATEGORY_EVENT, eventName));
            if (userInfo != null) {
                mapMutableMapOf.putAll(userInfo);
            }
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "Received Event on Hidden Superwall", mapMutableMapOf, null, 16, null);
        }
    }

    private final void hapticFeedback() {
        SuperwallOptions superwallOptionsMakeSuperwallOptions = this.options.makeSuperwallOptions();
        boolean isHapticFeedbackEnabled = superwallOptionsMakeSuperwallOptions.getPaywalls().getIsHapticFeedbackEnabled();
        boolean isGameControllerEnabled = superwallOptionsMakeSuperwallOptions.getIsGameControllerEnabled();
        if (!isHapticFeedbackEnabled || isGameControllerEnabled) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new C05731(null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$hapticFeedback$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$hapticFeedback$1", f = "PaywallMessageHandler.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05731 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05731(Continuation<? super C05731> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new C05731(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05731) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PaywallView paywallView = (PaywallView) PaywallMessageHandler.this.getView.invoke();
                if (paywallView != null) {
                    Boxing.boxBoolean(paywallView.performHapticFeedback(1));
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:16:0x0038  */
    private final void triggerHapticFeedback(PaywallMessage.HapticFeedback.HapticType hapticType) {
        try {
            SuperwallOptions superwallOptionsMakeSuperwallOptions = this.options.makeSuperwallOptions();
            if (superwallOptionsMakeSuperwallOptions.getPaywalls().getIsHapticFeedbackEnabled() && !superwallOptionsMakeSuperwallOptions.getIsGameControllerEnabled()) {
                int i = 1;
                switch (WhenMappings.$EnumSwitchMapping$1[hapticType.ordinal()]) {
                    case 1:
                    case 7:
                        i = 4;
                        new Either.Success(BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new PaywallMessageHandler$triggerHapticFeedback$1$1(this, i, null), 3, null));
                        return;
                    case 2:
                        new Either.Success(BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new PaywallMessageHandler$triggerHapticFeedback$1$1(this, i, null), 3, null));
                        return;
                    case 3:
                    case 5:
                        i = 0;
                        new Either.Success(BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new PaywallMessageHandler$triggerHapticFeedback$1$1(this, i, null), 3, null));
                        return;
                    case 4:
                        if (Build.VERSION.SDK_INT >= 30) {
                            i = 16;
                        }
                        new Either.Success(BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new PaywallMessageHandler$triggerHapticFeedback$1$1(this, i, null), 3, null));
                        return;
                    case 6:
                        if (Build.VERSION.SDK_INT >= 30) {
                            i = 17;
                        } else {
                            i = 0;
                        }
                        new Either.Success(BuildersKt__Builders_commonKt.launch$default(this.mainScope, null, null, new PaywallMessageHandler$triggerHapticFeedback$1$1(this, i, null), 3, null));
                        return;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            }
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            new Either.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getState(Continuation<? super Map<String, ? extends Object>> continuation) {
        C05631 c05631;
        if (continuation instanceof C05631) {
            c05631 = (C05631) continuation;
            if ((c05631.label & Integer.MIN_VALUE) != 0) {
                c05631.label -= Integer.MIN_VALUE;
            } else {
                c05631 = new C05631(continuation);
            }
        } else {
            c05631 = new C05631(continuation);
        }
        Object objWithTimeoutOrNull = c05631.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05631.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objWithTimeoutOrNull);
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Getting state", MapsKt.mapOf(TuplesKt.to("message", "window.app.getAllState();")), null, 16, null);
            C05642 c05642 = new C05642("window.app.getAllState();", null);
            c05631.label = 1;
            objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(1000L, c05642, c05631);
            if (objWithTimeoutOrNull == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objWithTimeoutOrNull);
        }
        Map map = (Map) objWithTimeoutOrNull;
        return map == null ? MapsKt.emptyMap() : map;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$getState$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallMessageHandler.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$getState$2", f = "PaywallMessageHandler.kt", i = {}, l = {911}, m = "invokeSuspend", n = {}, s = {})
    static final class C05642 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Map<String, ? extends Object>>, Object> {
        final /* synthetic */ String $messageScript;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05642(String str, Continuation<? super C05642> continuation) {
            super(2, continuation);
            this.$messageScript = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallMessageHandler.this.new C05642(this.$messageScript, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Map<String, ? extends Object>> continuation) {
            return ((C05642) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
            PaywallMessageHandler paywallMessageHandler = PaywallMessageHandler.this;
            String str = this.$messageScript;
            this.L$0 = paywallMessageHandler;
            this.L$1 = str;
            this.label = 1;
            C05642 c05642 = this;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(c05642), 1);
            cancellableContinuationImpl.initCancellability();
            BuildersKt__Builders_commonKt.launch$default(paywallMessageHandler.mainScope, null, null, new PaywallMessageHandler$getState$2$1$1(paywallMessageHandler, str, cancellableContinuationImpl, null), 3, null);
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(c05642);
            }
            return result == coroutine_suspended ? coroutine_suspended : result;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object replaceNullsWithEmpty(Object value) {
        if (value == null) {
            return "";
        }
        if (!(value instanceof Map)) {
            if (!(value instanceof List)) {
                return value;
            }
            Iterable iterable = (Iterable) value;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(replaceNullsWithEmpty(it.next()));
            }
            return arrayList;
        }
        Map map = (Map) value;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map.size()));
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), replaceNullsWithEmpty(entry.getValue()));
        }
        return linkedHashMap;
    }
}
