package com.superwall.sdk.paywall.view;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.DrawableKt;
import androidx.lifecycle.LifecycleOwner;
import com.google.android.gms.common.internal.ImagesContract;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.sun.jna.Callback;
import com.superwall.sdk.R;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.config.models.Survey;
import com.superwall.sdk.config.options.PaywallOptions;
import com.superwall.sdk.config.options.PaywallOptionsKt;
import com.superwall.sdk.dependencies.AttributesFactory;
import com.superwall.sdk.dependencies.CustomerInfoFactory;
import com.superwall.sdk.dependencies.DelegateAdapterFactory;
import com.superwall.sdk.dependencies.DeviceHelperFactory;
import com.superwall.sdk.dependencies.EnrichmentFactory;
import com.superwall.sdk.dependencies.OptionsFactory;
import com.superwall.sdk.dependencies.PresentationFactory;
import com.superwall.sdk.dependencies.TrackingFactory;
import com.superwall.sdk.dependencies.TriggerFactory;
import com.superwall.sdk.game.GameControllerDelegate;
import com.superwall.sdk.game.GameControllerEvent;
import com.superwall.sdk.game.GameControllerManager;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.AlertControllerFactory;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.misc.MainScope;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.paywall.PaywallPresentationStyle;
import com.superwall.sdk.models.triggers.TriggerRuleOccurrence;
import com.superwall.sdk.network.device.DeviceHelper;
import com.superwall.sdk.paywall.manager.PaywallViewCache;
import com.superwall.sdk.paywall.presentation.PaywallCloseReason;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import com.superwall.sdk.paywall.view.delegate.PaywallLoadingState;
import com.superwall.sdk.paywall.view.delegate.PaywallViewDelegateAdapter;
import com.superwall.sdk.paywall.view.delegate.PaywallViewEventCallback;
import com.superwall.sdk.paywall.view.survey.SurveyManager;
import com.superwall.sdk.paywall.view.survey.SurveyPresentationResult;
import com.superwall.sdk.paywall.view.webview.CustomTabsHelper;
import com.superwall.sdk.paywall.view.webview.PaywallUIDelegate;
import com.superwall.sdk.paywall.view.webview.PaywallWebUI;
import com.superwall.sdk.paywall.view.webview.SWWebView;
import com.superwall.sdk.paywall.view.webview.SendPaywallMessages;
import com.superwall.sdk.paywall.view.webview.messaging.PaywallMessage;
import com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandlerDelegate;
import com.superwall.sdk.paywall.view.webview.messaging.PaywallStateDelegate;
import com.superwall.sdk.paywall.view.webview.messaging.PaywallWebEvent;
import com.superwall.sdk.storage.LocalStorage;
import com.superwall.sdk.storage.core_data.CoreDataManager;
import com.superwall.sdk.web.WebPaywallRedeemer;
import java.lang.ref.WeakReference;
import java.net.MalformedURLException;
import java.net.URI;
import java.util.Date;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import kotlinx.serialization.json.JsonNamingStrategy;

/* JADX INFO: compiled from: PaywallView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¨\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 Á\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u0007:\u0006À\u0001Á\u0001Â\u0001Bi\u0012\u0006\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u0007\u0012\u0006\u0010\u001b\u001a\u00020\u001c¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u00102\u001a\u0002032\u0006\u00104\u001a\u000205J\u000e\u00106\u001a\u0002032\u0006\u00104\u001a\u000205J\b\u0010R\u001a\u000203H\u0002J\b\u0010S\u001a\u000203H\u0002J-\u0010T\u001a\u0002032\u0006\u0010U\u001a\u00020V2\f\u0010W\u001a\b\u0012\u0004\u0012\u00020Y0X2\b\u0010Z\u001a\u0004\u0018\u00010[H\u0000¢\u0006\u0002\b\\J\u0015\u0010]\u001a\u0002032\u0006\u0010>\u001a\u00020?H\u0000¢\u0006\u0002\b^J\u0015\u0010_\u001a\u0002032\u0006\u0010@\u001a\u00020AH\u0000¢\u0006\u0002\b`J\u0016\u0010a\u001a\u0002032\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AJL\u0010b\u001a\u0002032\u0006\u0010c\u001a\u0002092\u0006\u0010U\u001a\u00020V2\b\u0010Z\u001a\u0004\u0018\u00010[2\b\u0010d\u001a\u0004\u0018\u00010e2\f\u0010W\u001a\b\u0012\u0004\u0012\u00020Y0X2\u0012\u0010f\u001a\u000e\u0012\u0004\u0012\u00020h\u0012\u0004\u0012\u0002030gJ\u0010\u0010i\u001a\u0002032\u0006\u0010j\u001a\u00020kH\u0016J\u0006\u0010p\u001a\u000203J\u0012\u0010q\u001a\u00020h2\b\u0010r\u001a\u0004\u0018\u00010sH\u0016J\b\u0010t\u001a\u000203H\u0002J\u0010\u0010u\u001a\u0002032\b\b\u0002\u0010v\u001a\u00020hJ\u0018\u0010w\u001a\u0002032\b\b\u0002\u0010v\u001a\u00020hH\u0086@¢\u0006\u0002\u0010xJ\b\u0010y\u001a\u000203H\u0002J0\u0010z\u001a\u0002032\u0006\u0010{\u001a\u00020|2\u0006\u0010}\u001a\u00020~2\u0010\b\u0002\u0010f\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u007fH\u0000¢\u0006\u0003\b\u0080\u0001J\t\u0010\u0081\u0001\u001a\u000203H\u0014J\u001b\u0010\u0082\u0001\u001a\u0002032\b\u0010\u0083\u0001\u001a\u00030\u0084\u00012\b\u0010\u0085\u0001\u001a\u00030\u0086\u0001J\u0007\u0010\u0087\u0001\u001a\u000203J\u0010\u0010\u008a\u0001\u001a\u000203H\u0082@¢\u0006\u0003\u0010\u008b\u0001J\u0010\u0010\u008c\u0001\u001a\u000203H\u0082@¢\u0006\u0003\u0010\u008b\u0001J\u0013\u0010\u008d\u0001\u001a\u0002032\b\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u0016J\u0011\u0010z\u001a\u0002032\u0007\u0010\u0090\u0001\u001a\u00020hH\u0002J\t\u0010\u0091\u0001\u001a\u000203H\u0002J\t\u0010\u0092\u0001\u001a\u000203H\u0002J\t\u0010\u0093\u0001\u001a\u000203H\u0002J\u0007\u0010\u0094\u0001\u001a\u000203J\t\u0010\u0095\u0001\u001a\u000203H\u0002J\t\u0010\u0096\u0001\u001a\u000203H\u0002J\u0010\u0010\u0097\u0001\u001a\u0002032\u0007\u0010\u0098\u0001\u001a\u00020hJc\u0010\u0099\u0001\u001a\u0002032\f\b\u0002\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u009b\u00012\f\b\u0002\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u00012\f\b\u0002\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009b\u00012\n\b\u0002\u0010\u009e\u0001\u001a\u00030\u009b\u00012\u0011\b\u0002\u0010\u009f\u0001\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u007f2\u0011\b\u0002\u0010 \u0001\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u007fJ\u000f\u0010¡\u0001\u001a\u000203H\u0000¢\u0006\u0003\b¢\u0001J\u0007\u0010£\u0001\u001a\u000203J\t\u0010¤\u0001\u001a\u000203H\u0002J\u0013\u0010ª\u0001\u001a\u0002032\b\u0010«\u0001\u001a\u00030\u009b\u0001H\u0016J\u0013\u0010¬\u0001\u001a\u0002032\b\u0010«\u0001\u001a\u00030\u009b\u0001H\u0016J\u0013\u0010\u00ad\u0001\u001a\u0002032\b\u0010«\u0001\u001a\u00030\u009b\u0001H\u0002J\u0013\u0010®\u0001\u001a\u0002032\b\u0010«\u0001\u001a\u00030\u009b\u0001H\u0016J-\u0010¯\u0001\u001a\u0002032\b\u0010°\u0001\u001a\u00030\u009b\u00012\u0018\u0010±\u0001\u001a\u0013\u0012\u0007\u0012\u0005\u0018\u00010\u009b\u0001\u0012\u0004\u0012\u000203\u0018\u00010gH\u0016J\u0013\u0010²\u0001\u001a\u0002032\b\u0010«\u0001\u001a\u00030\u009b\u0001H\u0016J\u0013\u0010³\u0001\u001a\u0002032\b\u0010´\u0001\u001a\u00030µ\u0001H\u0016J\u0007\u0010¶\u0001\u001a\u000203J\u0007\u0010·\u0001\u001a\u000203J\u000f\u0010¸\u0001\u001a\u000203H\u0000¢\u0006\u0003\b¹\u0001J#\u0010¼\u0001\u001a\u0002032\b\u0010\u0083\u0001\u001a\u00030\u0084\u00012\b\u0010\u0085\u0001\u001a\u00030\u0086\u0001H\u0000¢\u0006\u0003\b½\u0001J\u0014\u0010¾\u0001\u001a\u0002032\b\u0010\u009c\u0001\u001a\u00030¿\u0001H\u0096\u0001R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0018\u001a\u00020\u0019¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0011\u0010\u001a\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010/\u001a\u00020\u0015@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\"\u00107\u001a\n\u0012\u0004\u0012\u000209\u0018\u000108X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010@\u001a\u0004\u0018\u00010AX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010B\u001a\u00020C8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bD\u0010ER$\u0010G\u001a\u00020F2\u0006\u0010/\u001a\u00020F8F@BX\u0086\u000e¢\u0006\f\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u0011\u0010L\u001a\u0002058F¢\u0006\u0006\u001a\u0004\bM\u0010NR\u0010\u0010O\u001a\u0004\u0018\u00010PX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010Q\u001a\u0004\u0018\u00010PX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010l\u001a\u00020m8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bn\u0010oR\u0014\u0010\u0088\u0001\u001a\u0004\u0018\u000105X\u0082\u000e¢\u0006\u0005\n\u0003\u0010\u0089\u0001R\u001f\u0010¥\u0001\u001a\u00020hX\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b¦\u0001\u0010§\u0001\"\u0006\b¨\u0001\u0010©\u0001R\u0019\u0010º\u0001\u001a\f\u0012\u0005\u0012\u00030\u009b\u0001\u0018\u00010»\u0001X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006Ã\u0001"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallView;", "Landroid/widget/FrameLayout;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandlerDelegate;", "Lcom/superwall/sdk/paywall/view/webview/PaywallUIDelegate;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallStateDelegate;", "Lcom/superwall/sdk/paywall/view/ActivityEncapsulatable;", "Lcom/superwall/sdk/game/GameControllerDelegate;", "Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;", "context", "Landroid/content/Context;", "eventCallback", "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;", Callback.METHOD_NAME, "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;", "deviceHelper", "Lcom/superwall/sdk/network/device/DeviceHelper;", "factory", "Lcom/superwall/sdk/paywall/view/PaywallView$Factory;", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "webView", "Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;", "cache", "Lcom/superwall/sdk/paywall/manager/PaywallViewCache;", "controller", "Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;", "sendMessages", "redeemer", "Lcom/superwall/sdk/web/WebPaywallRedeemer;", "<init>", "(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/paywall/view/PaywallView$Factory;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;Lcom/superwall/sdk/web/WebPaywallRedeemer;)V", "getEventCallback", "()Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;", "getCallback", "()Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;", "setCallback", "(Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;)V", "getDeviceHelper", "()Lcom/superwall/sdk/network/device/DeviceHelper;", "getFactory", "()Lcom/superwall/sdk/paywall/view/PaywallView$Factory;", "getStorage", "()Lcom/superwall/sdk/storage/LocalStorage;", "getController", "()Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;", "getSendMessages", "()Lcom/superwall/sdk/paywall/view/webview/SendPaywallMessages;", RNConstants.ARG_VALUE, "getWebView$superwall_release", "()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;", "scrollBy", "", "y", "", "scrollTo", "encapsulatingActivity", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "getEncapsulatingActivity", "()Ljava/lang/ref/WeakReference;", "setEncapsulatingActivity", "(Ljava/lang/ref/WeakReference;)V", "shimmerView", "Lcom/superwall/sdk/paywall/view/PaywallShimmerView;", "loadingView", "Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;", "info", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;", "loadingState", "getLoadingState", "()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;", "setLoadingState", "(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V", "backgroundColor", "getBackgroundColor", "()I", "stateListener", "Lkotlinx/coroutines/Job;", "customerInfoListener", "stopStateListener", "startStateListener", "set", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "paywallStatePublisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "unsavedOccurrence", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "set$superwall_release", "setupShimmer", "setupShimmer$superwall_release", "setupLoading", "setupLoading$superwall_release", "setupWith", "present", "presenter", "presentationStyleOverride", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "completion", "Lkotlin/Function1;", "", "updateState", "update", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "state", "Lcom/superwall/sdk/paywall/view/PaywallViewState;", "getState", "()Lcom/superwall/sdk/paywall/view/PaywallViewState;", "beforeViewCreated", "onInterceptTouchEvent", "ev", "Landroid/view/MotionEvent;", "presentationWillBegin", "beforeOnDestroy", "forceCleanup", "destroyed", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resetPresentationPreparations", "dismiss", "result", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "closeReason", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "Lkotlin/Function0;", "dismiss$superwall_release", "onAttachedToWindow", "registerPaymentSheetLauncher", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "registryOwner", "Landroidx/activity/result/ActivityResultRegistryOwner;", "onViewCreated", "initialOrientation", "Ljava/lang/Integer;", "trackOpen", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "trackClose", "eventDidOccur", "paywallWebEvent", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "presentationIsAnimated", "showLoadingView", "hideLoadingView", "trackShimmerStart", "onThemeChanged", "showShimmerView", "hideShimmerView", "showRefreshButtonAfterTimeout", "isVisible", "showAlert", "title", "", "message", "actionTitle", "closeActionTitle", "action", "onClose", "loadingStateDidChange", "loadingStateDidChange$superwall_release", "loadWebView", "recreateWebview", "isPaymentSheetPresented", "isPaymentSheetPresented$superwall_release", "()Z", "setPaymentSheetPresented$superwall_release", "(Z)V", "presentPaymentSheet", ImagesContract.URL, "presentBrowserInApp", "presentCheckoutBottomSheet", "presentBrowserExternal", "evaluate", "code", "resultCallback", "openDeepLink", "gameControllerEventOccured", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/game/GameControllerEvent;", "prepareToDisplay", "cleanup", "destroyWebview", "destroyWebview$superwall_release", "activityResultLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "registerIntent", "registerIntent$superwall_release", "handle", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "PaywallController", "Companion", "Factory", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PaywallView extends FrameLayout implements PaywallMessageHandlerDelegate, PaywallUIDelegate, PaywallStateDelegate, ActivityEncapsulatable, GameControllerDelegate, SendPaywallMessages {
    private static final Companion Companion = new Companion(null);
    private static final Lazy<Json> gameControllerJson$delegate = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.paywall.view.PaywallView$$ExternalSyntheticLambda5
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PaywallView.gameControllerJson_delegate$lambda$19();
        }
    });
    private static final IOScope ioScope;
    private static final MainScope mainScope;
    private ActivityResultLauncher<String> activityResultLauncher;
    private final PaywallViewCache cache;
    private PaywallViewDelegateAdapter callback;
    private final PaywallController controller;
    private Job customerInfoListener;
    private final DeviceHelper deviceHelper;
    private WeakReference<Activity> encapsulatingActivity;
    private final PaywallViewEventCallback eventCallback;
    private final Factory factory;
    private Integer initialOrientation;
    private boolean isPaymentSheetPresented;
    private PaywallPurchaseLoadingView loadingView;
    private final WebPaywallRedeemer redeemer;
    private final SendPaywallMessages sendMessages;
    private PaywallShimmerView shimmerView;
    private Job stateListener;
    private final LocalStorage storage;
    private PaywallWebUI webView;

    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallView$Factory;", "Lcom/superwall/sdk/dependencies/TriggerFactory;", "Lcom/superwall/sdk/dependencies/OptionsFactory;", "Lcom/superwall/sdk/dependencies/DeviceHelperFactory;", "Lcom/superwall/sdk/dependencies/AttributesFactory;", "Lcom/superwall/sdk/dependencies/EnrichmentFactory;", "Lcom/superwall/sdk/dependencies/TrackingFactory;", "Lcom/superwall/sdk/dependencies/DelegateAdapterFactory;", "Lcom/superwall/sdk/dependencies/CustomerInfoFactory;", "Lcom/superwall/sdk/dependencies/PresentationFactory;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Factory extends TriggerFactory, OptionsFactory, DeviceHelperFactory, AttributesFactory, EnrichmentFactory, TrackingFactory, DelegateAdapterFactory, CustomerInfoFactory, PresentationFactory {
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$destroyed$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView", f = "PaywallView.kt", i = {0, 0, 1}, l = {448, 452}, m = "destroyed", n = {"this", "result", "this"}, s = {"L$0", "L$1", "L$0"})
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
            return PaywallView.this.destroyed(false, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$trackClose$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView", f = "PaywallView.kt", i = {}, l = {659}, m = "trackClose", n = {}, s = {})
    static final class C05481 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C05481(Continuation<? super C05481> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PaywallView.this.trackClose(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$trackOpen$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView", f = "PaywallView.kt", i = {}, l = {ProgressIndicatorKt.SecondLineHeadDelay}, m = "trackOpen", n = {}, s = {})
    static final class C05491 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C05491(Continuation<? super C05491> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PaywallView.this.trackOpen(this);
        }
    }

    @Override // com.superwall.sdk.paywall.view.webview.SendPaywallMessages
    public void handle(PaywallMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.sendMessages.handle(message);
    }

    public final void showRefreshButtonAfterTimeout(boolean isVisible) {
    }

    public /* synthetic */ PaywallView(Context context, PaywallViewEventCallback paywallViewEventCallback, PaywallViewDelegateAdapter paywallViewDelegateAdapter, DeviceHelper deviceHelper, Factory factory, LocalStorage localStorage, PaywallWebUI paywallWebUI, PaywallViewCache paywallViewCache, PaywallController paywallController, SendPaywallMessages sendPaywallMessages, WebPaywallRedeemer webPaywallRedeemer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : paywallViewEventCallback, (i & 4) != 0 ? null : paywallViewDelegateAdapter, deviceHelper, factory, localStorage, paywallWebUI, paywallViewCache, paywallController, sendPaywallMessages, webPaywallRedeemer);
    }

    public final PaywallViewEventCallback getEventCallback() {
        return this.eventCallback;
    }

    public final PaywallViewDelegateAdapter getCallback() {
        return this.callback;
    }

    public final void setCallback(PaywallViewDelegateAdapter paywallViewDelegateAdapter) {
        this.callback = paywallViewDelegateAdapter;
    }

    public final DeviceHelper getDeviceHelper() {
        return this.deviceHelper;
    }

    public final Factory getFactory() {
        return this.factory;
    }

    public final LocalStorage getStorage() {
        return this.storage;
    }

    public final PaywallController getController() {
        return this.controller;
    }

    public final SendPaywallMessages getSendMessages() {
        return this.sendMessages;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaywallView(Context context, PaywallViewEventCallback paywallViewEventCallback, PaywallViewDelegateAdapter paywallViewDelegateAdapter, DeviceHelper deviceHelper, Factory factory, LocalStorage storage, PaywallWebUI webView, PaywallViewCache paywallViewCache, PaywallController controller, SendPaywallMessages sendMessages, WebPaywallRedeemer redeemer) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(deviceHelper, "deviceHelper");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(controller, "controller");
        Intrinsics.checkNotNullParameter(sendMessages, "sendMessages");
        Intrinsics.checkNotNullParameter(redeemer, "redeemer");
        this.eventCallback = paywallViewEventCallback;
        this.callback = paywallViewDelegateAdapter;
        this.deviceHelper = deviceHelper;
        this.factory = factory;
        this.storage = storage;
        this.cache = paywallViewCache;
        this.controller = controller;
        this.sendMessages = sendMessages;
        this.redeemer = redeemer;
        this.webView = webView;
        setId(View.generateViewId());
        setBackgroundColor(getBackgroundColor());
    }

    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallStateDelegate;", "initialState", "Lcom/superwall/sdk/paywall/view/PaywallViewState;", "<init>", "(Lcom/superwall/sdk/paywall/view/PaywallViewState;)V", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "currentState", "Lkotlinx/coroutines/flow/StateFlow;", "getCurrentState", "()Lkotlinx/coroutines/flow/StateFlow;", "state", "getState", "()Lcom/superwall/sdk/paywall/view/PaywallViewState;", "updateState", "", "update", "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PaywallController implements PaywallStateDelegate {
        private MutableStateFlow<PaywallViewState> _state;
        private final StateFlow<PaywallViewState> currentState;

        public PaywallController(PaywallViewState initialState) {
            Intrinsics.checkNotNullParameter(initialState, "initialState");
            MutableStateFlow<PaywallViewState> MutableStateFlow = StateFlowKt.MutableStateFlow(initialState);
            this._state = MutableStateFlow;
            this.currentState = FlowKt.asStateFlow(MutableStateFlow);
        }

        public final StateFlow<PaywallViewState> getCurrentState() {
            return this.currentState;
        }

        @Override // com.superwall.sdk.paywall.view.webview.messaging.PaywallStateDelegate
        public PaywallViewState getState() {
            return this._state.getValue();
        }

        @Override // com.superwall.sdk.paywall.view.webview.messaging.PaywallStateDelegate
        public void updateState(PaywallViewState.Updates update) {
            PaywallViewState value;
            Intrinsics.checkNotNullParameter(update, "update");
            MutableStateFlow<PaywallViewState> mutableStateFlow = this._state;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.compareAndSet(value, update.getTransform().invoke(value)));
        }
    }

    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/paywall/view/PaywallView$Companion;", "", "<init>", "()V", "mainScope", "Lcom/superwall/sdk/misc/MainScope;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "gameControllerJson", "Lkotlinx/serialization/json/Json;", "getGameControllerJson", "()Lkotlinx/serialization/json/Json;", "gameControllerJson$delegate", "Lkotlin/Lazy;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Json getGameControllerJson() {
            return (Json) PaywallView.gameControllerJson$delegate.getValue();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i = 1;
        mainScope = new MainScope(0 == true ? 1 : 0, i, 0 == true ? 1 : 0);
        ioScope = new IOScope(0 == true ? 1 : 0, i, 0 == true ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Json gameControllerJson_delegate$lambda$19() {
        return JsonKt.Json$default(null, new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallView$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PaywallView.gameControllerJson_delegate$lambda$19$lambda$18((JsonBuilder) obj);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit gameControllerJson_delegate$lambda$19$lambda$18(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setEncodeDefaults(true);
        Json.setNamingStrategy(JsonNamingStrategy.INSTANCE.getSnakeCase());
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: getWebView$superwall_release, reason: from getter */
    public final PaywallWebUI getWebView() {
        return this.webView;
    }

    public final void scrollBy(int y) {
        this.webView.scrollBy(0, y);
    }

    public final void scrollTo(int y) {
        this.webView.scrollTo(0, y);
    }

    @Override // com.superwall.sdk.paywall.view.ActivityEncapsulatable
    public WeakReference<Activity> getEncapsulatingActivity() {
        return this.encapsulatingActivity;
    }

    @Override // com.superwall.sdk.paywall.view.ActivityEncapsulatable
    public void setEncapsulatingActivity(WeakReference<Activity> weakReference) {
        this.encapsulatingActivity = weakReference;
    }

    @Override // com.superwall.sdk.paywall.view.webview.PaywallInfoDelegate
    public PaywallInfo getInfo() {
        return this.controller.getState().getInfo();
    }

    public final PaywallLoadingState getLoadingState() {
        return getState().getLoadingState();
    }

    private final void setLoadingState(PaywallLoadingState paywallLoadingState) {
        this.controller.updateState(new PaywallViewState.Updates.SetLoadingState(paywallLoadingState));
    }

    public final int getBackgroundColor() {
        if ((Build.VERSION.SDK_INT >= 29 ? getContext().getResources().getConfiguration().uiMode & 48 : 0) == 32) {
            Integer darkBackgroundColor = getState().getPaywall().getDarkBackgroundColor();
            return darkBackgroundColor != null ? darkBackgroundColor.intValue() : getState().getPaywall().getBackgroundColor();
        }
        return getState().getPaywall().getBackgroundColor();
    }

    private final void stopStateListener() {
        Job job = this.stateListener;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.stateListener = null;
        Job job2 = this.customerInfoListener;
        if (job2 != null) {
            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
        }
        this.customerInfoListener = null;
    }

    private final void startStateListener() {
        stopStateListener();
        IOScope iOScope = ioScope;
        this.stateListener = BuildersKt__Builders_commonKt.launch$default(iOScope, null, null, new C05461(null), 3, null);
        this.customerInfoListener = BuildersKt__Builders_commonKt.launch$default(iOScope, null, null, new C05472(null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$startStateListener$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$startStateListener$1", f = "PaywallView.kt", i = {}, l = {237}, m = "invokeSuspend", n = {}, s = {})
    static final class C05461 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05461(Continuation<? super C05461> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallView.this.new C05461(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05461) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                final StateFlow<PaywallViewState> currentState = PaywallView.this.getController().getCurrentState();
                this.label = 1;
                if (FlowKt.collectLatest(FlowKt.distinctUntilChanged(new Flow<PaywallLoadingState>() { // from class: com.superwall.sdk.paywall.view.PaywallView$startStateListener$1$invokeSuspend$$inlined$map$1

                    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$startStateListener$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                    public static final class AnonymousClass2<T> implements FlowCollector {
                        final /* synthetic */ FlowCollector $this_unsafeFlow;

                        /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$startStateListener$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                        @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$startStateListener$1$invokeSuspend$$inlined$map$1$2", f = "PaywallView.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            Object L$0;
                            int label;
                            /* synthetic */ Object result;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.$this_unsafeFlow = flowCollector;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
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
                            Object obj2 = anonymousClass1.result;
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            int i = anonymousClass1.label;
                            if (i == 0) {
                                ResultKt.throwOnFailure(obj2);
                                FlowCollector flowCollector = this.$this_unsafeFlow;
                                PaywallLoadingState loadingState = ((PaywallViewState) obj).getLoadingState();
                                anonymousClass1.label = 1;
                                if (flowCollector.emit(loadingState, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            } else {
                                if (i != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.throwOnFailure(obj2);
                            }
                            return Unit.INSTANCE;
                        }
                    }

                    @Override // kotlinx.coroutines.flow.Flow
                    public Object collect(FlowCollector<? super PaywallLoadingState> flowCollector, Continuation continuation) {
                        Object objCollect = currentState.collect(new AnonymousClass2(flowCollector), continuation);
                        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                    }
                }, new Function2() { // from class: com.superwall.sdk.paywall.view.PaywallView$startStateListener$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return Boolean.valueOf(PaywallView.C05461.invokeSuspend$lambda$1((PaywallLoadingState) obj2, (PaywallLoadingState) obj3));
                    }
                }), new AnonymousClass3(PaywallView.this, null), this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$startStateListener$1$3, reason: invalid class name */
        /* JADX INFO: compiled from: PaywallView.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$startStateListener$1$3", f = "PaywallView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass3 extends SuspendLambda implements Function2<PaywallLoadingState, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ PaywallView this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass3(PaywallView paywallView, Continuation<? super AnonymousClass3> continuation) {
                super(2, continuation);
                this.this$0 = paywallView;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass3(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(PaywallLoadingState paywallLoadingState, Continuation<? super Unit> continuation) {
                return ((AnonymousClass3) create(paywallLoadingState, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                this.this$0.loadingStateDidChange$superwall_release();
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean invokeSuspend$lambda$1(PaywallLoadingState paywallLoadingState, PaywallLoadingState paywallLoadingState2) {
            return paywallLoadingState.getClass() == paywallLoadingState2.getClass();
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$startStateListener$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$startStateListener$2", f = "PaywallView.kt", i = {}, l = {241}, m = "invokeSuspend", n = {}, s = {})
    static final class C05472 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05472(Continuation<? super C05472> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallView.this.new C05472(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05472) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                StateFlow<CustomerInfo> stateFlowCustomerInfoFlow = PaywallView.this.getFactory().customerInfoFlow();
                final PaywallView paywallView = PaywallView.this;
                this.label = 1;
                if (stateFlowCustomerInfoFlow.collect(new FlowCollector() { // from class: com.superwall.sdk.paywall.view.PaywallView.startStateListener.2.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((CustomerInfo) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(CustomerInfo customerInfo, Continuation<? super Unit> continuation) {
                        paywallView.getController().updateState(new PaywallViewState.Updates.SetCustomerInfo(customerInfo));
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

    public final void set$superwall_release(PresentationRequest request, MutableSharedFlow<PaywallState> paywallStatePublisher, TriggerRuleOccurrence unsavedOccurrence) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(paywallStatePublisher, "paywallStatePublisher");
        this.controller.updateState(new PaywallViewState.Updates.SetRequest(request, paywallStatePublisher, unsavedOccurrence));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setupShimmer$superwall_release(PaywallShimmerView shimmerView) {
        Intrinsics.checkNotNullParameter(shimmerView, "shimmerView");
        this.shimmerView = shimmerView;
        if (shimmerView instanceof View) {
            PaywallShimmerViewKt.setupFor((View) shimmerView, this, getLoadingState());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setupLoading$superwall_release(PaywallPurchaseLoadingView loadingView) {
        Intrinsics.checkNotNullParameter(loadingView, "loadingView");
        this.loadingView = loadingView;
        if (loadingView instanceof View) {
            LoadingViewKt.setupFor((View) loadingView, this, getLoadingState());
        }
    }

    public final void setupWith(PaywallShimmerView shimmerView, PaywallPurchaseLoadingView loadingView) {
        Intrinsics.checkNotNullParameter(shimmerView, "shimmerView");
        Intrinsics.checkNotNullParameter(loadingView, "loadingView");
        this.webView.attach(this);
        this.shimmerView = shimmerView;
        this.loadingView = loadingView;
    }

    public final void present(Activity presenter, PresentationRequest request, TriggerRuleOccurrence unsavedOccurrence, PaywallPresentationStyle presentationStyleOverride, MutableSharedFlow<PaywallState> paywallStatePublisher, Function1<? super Boolean, Unit> completion) {
        PaywallShimmerView paywallShimmerViewAcquireShimmerView;
        PaywallPurchaseLoadingView paywallPurchaseLoadingViewAcquireLoadingView;
        Intrinsics.checkNotNullParameter(presenter, "presenter");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(paywallStatePublisher, "paywallStatePublisher");
        Intrinsics.checkNotNullParameter(completion, "completion");
        this.webView.attach(this);
        PaywallViewCache paywallViewCache = this.cache;
        if (paywallViewCache != null && (paywallPurchaseLoadingViewAcquireLoadingView = paywallViewCache.acquireLoadingView()) != null) {
            setupLoading$superwall_release(paywallPurchaseLoadingViewAcquireLoadingView);
        }
        Duration timeoutAfter = this.factory.makeSuperwallOptions().getPaywalls().getTimeoutAfter();
        if (timeoutAfter != null) {
            BuildersKt__Builders_commonKt.launch$default(ioScope, null, null, new C05442(timeoutAfter, this, null), 3, null);
        }
        PaywallViewCache paywallViewCache2 = this.cache;
        if (paywallViewCache2 != null && (paywallShimmerViewAcquireShimmerView = paywallViewCache2.acquireShimmerView()) != null) {
            setupShimmer$superwall_release(paywallShimmerViewAcquireShimmerView);
        }
        set$superwall_release(request, paywallStatePublisher, unsavedOccurrence);
        this.controller.updateState(new PaywallViewState.Updates.SetPresentationConfig(presentationStyleOverride, completion));
        SuperwallPaywallActivity.INSTANCE.startWithView(presenter, this, getState().getCacheKey(), getState().getPresentationStyle());
        startStateListener();
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$present$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$present$2", f = "PaywallView.kt", i = {0, 1}, l = {TypedValues.Attributes.TYPE_PIVOT_TARGET, 321, 339}, m = "invokeSuspend", n = {NotificationCompat.CATEGORY_MESSAGE, NotificationCompat.CATEGORY_MESSAGE}, s = {"L$0", "L$0"})
    static final class C05442 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Duration $timeout;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ PaywallView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05442(Duration duration, PaywallView paywallView, Continuation<? super C05442> continuation) {
            super(2, continuation);
            this.$timeout = duration;
            this.this$0 = paywallView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05442(this.$timeout, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05442) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x0122, code lost:
        
            if (r1.getFactory().mo10617trackgIAlus(r3, r12) == r0) goto L29;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                Method dump skipped, instruction units count: 296
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.view.PaywallView.C05442.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$present$2$3, reason: invalid class name */
        /* JADX INFO: compiled from: PaywallView.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlin/Result;", "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;", NotificationCompat.CATEGORY_ERROR, ""}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$present$2$3", f = "PaywallView.kt", i = {}, l = {TypedValues.Attributes.TYPE_EASING}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super Result<? extends PaywallLoadingState>>, Throwable, Continuation<? super Unit>, Object> {
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
                super(3, continuation);
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(FlowCollector<? super Result<? extends PaywallLoadingState>> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
                AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation);
                anonymousClass3.L$0 = flowCollector;
                anonymousClass3.L$1 = th;
                return anonymousClass3.invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    FlowCollector flowCollector = (FlowCollector) this.L$0;
                    Throwable th = (Throwable) this.L$1;
                    Result.Companion companion = Result.INSTANCE;
                    this.L$0 = null;
                    this.label = 1;
                    if (flowCollector.emit(Result.m11240boximpl(Result.m11241constructorimpl(ResultKt.createFailure(th))), this) == coroutine_suspended) {
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

    @Override // com.superwall.sdk.paywall.view.webview.messaging.PaywallStateDelegate
    public void updateState(PaywallViewState.Updates update) {
        Intrinsics.checkNotNullParameter(update, "update");
        this.controller.updateState(update);
    }

    @Override // com.superwall.sdk.paywall.view.webview.messaging.PaywallStateDelegate
    public PaywallViewState getState() {
        return this.controller.getState();
    }

    public final void beforeViewCreated() {
        if (getState().isBrowserViewPresented()) {
            return;
        }
        PaywallShimmerView paywallShimmerView = this.shimmerView;
        if (paywallShimmerView != null) {
            paywallShimmerView.checkForOrientationChanges();
        }
        presentationWillBegin();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return getState().getInterceptTouchEvents();
    }

    private final void presentationWillBegin() {
        if (!getState().getPresentationWillPrepare() || getState().getPresentationDidFinishPrepare()) {
            return;
        }
        this.controller.updateState(PaywallViewState.Updates.PresentationWillBegin.INSTANCE);
        this.factory.getDelegateAdapter().willPresentPaywall(getInfo());
        this.webView.scrollTo(0, 0);
        if (getLoadingState() instanceof PaywallLoadingState.Ready) {
            this.webView.getMessageHandler().handle(PaywallMessage.TemplateParamsAndUserAttributes.INSTANCE);
        } else if ((getLoadingState() instanceof PaywallLoadingState.LoadingURL) || (getLoadingState() instanceof PaywallLoadingState.Unknown)) {
            trackShimmerStart();
            this.controller.updateState(PaywallViewState.Updates.ShimmerStarted.INSTANCE);
        }
    }

    public static /* synthetic */ void beforeOnDestroy$default(PaywallView paywallView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        paywallView.beforeOnDestroy(z);
    }

    public final void beforeOnDestroy(boolean forceCleanup) {
        if (!getState().isBrowserViewPresented() || forceCleanup) {
            this.factory.updatePaywallInfo(getInfo());
            this.factory.getDelegateAdapter().willDismissPaywall(getInfo());
        }
    }

    public static /* synthetic */ Object destroyed$default(PaywallView paywallView, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return paywallView.destroyed(z, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00df  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:47:0x010e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0133  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f7, code lost:
    
        if (r14 == r1) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object destroyed(boolean r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) {
        /*
            Method dump skipped, instruction units count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.view.PaywallView.destroyed(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$destroyed$2, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$destroyed$2", f = "PaywallView.kt", i = {}, l = {432}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallView.this.new AnonymousClass2(continuation);
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
                this.label = 1;
                if (PaywallView.this.trackClose(this) == coroutine_suspended) {
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

    private final void resetPresentationPreparations() {
        this.controller.updateState(PaywallViewState.Updates.ResetPresentationPreparations.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void dismiss$superwall_release$default(PaywallView paywallView, PaywallResult paywallResult, PaywallCloseReason paywallCloseReason, Function0 function0, int i, Object obj) {
        if ((i & 4) != 0) {
            function0 = null;
        }
        paywallView.dismiss$superwall_release(paywallResult, paywallCloseReason, function0);
    }

    public final void dismiss$superwall_release(final PaywallResult result, PaywallCloseReason closeReason, Function0<Unit> completion) {
        Activity activity;
        PresentationRequest.Flags flags;
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(closeReason, "closeReason");
        this.controller.updateState(new PaywallViewState.Updates.InitiateDismiss(result, closeReason, completion));
        final boolean z = getState().getPaywallResult() instanceof PaywallResult.Declined;
        final boolean z2 = closeReason instanceof PaywallCloseReason.ManualClose;
        final Function0 function0 = new Function0() { // from class: com.superwall.sdk.paywall.view.PaywallView$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PaywallView.dismiss$lambda$5(this.f$0, z, z2, result);
            }
        };
        if (this.isPaymentSheetPresented) {
            beforeOnDestroy$default(this, false, 1, null);
            cleanup();
            this.isPaymentSheetPresented = false;
        }
        SurveyManager surveyManager = SurveyManager.INSTANCE;
        List<Survey> surveys = getState().getPaywall().getSurveys();
        WeakReference<Activity> encapsulatingActivity = getEncapsulatingActivity();
        if (encapsulatingActivity == null || (activity = encapsulatingActivity.get()) == null) {
            function0.invoke();
            return;
        }
        PaywallLoadingState loadingState = getLoadingState();
        PresentationRequest request = getState().getRequest();
        surveyManager.presentSurveyIfAvailable(surveys, result, closeReason, activity, this, loadingState, (request == null || (flags = request.getFlags()) == null || !flags.isDebuggerLaunched()) ? false : true, getInfo(), this.storage, this.factory, new Function1() { // from class: com.superwall.sdk.paywall.view.PaywallView$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PaywallView.dismiss$lambda$7(this.f$0, function0, (SurveyPresentationResult) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:48:0x012f  */
    /* JADX WARN: Code duplicated, block: B:49:0x013c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0140  */
    /* JADX WARN: Code duplicated, block: B:55:0x0167  */
    /* JADX WARN: Code duplicated, block: B:58:0x0173  */
    /* JADX WARN: Code duplicated, block: B:61:0x0178  */
    /* JADX WARN: Code duplicated, block: B:68:0x0185  */
    /* JADX WARN: Code duplicated, block: B:70:0x018b A[PHI: r10 r13
      0x018b: PHI (r10v9 com.superwall.sdk.paywall.view.PaywallView) = 
      (r10v1 com.superwall.sdk.paywall.view.PaywallView)
      (r10v1 com.superwall.sdk.paywall.view.PaywallView)
      (r10v1 com.superwall.sdk.paywall.view.PaywallView)
      (r10v11 com.superwall.sdk.paywall.view.PaywallView)
     binds: [B:28:0x00ac, B:29:0x00ae, B:31:0x00df, B:67:0x0183] A[DONT_GENERATE, DONT_INLINE]
      0x018b: PHI (r13v6 com.superwall.sdk.paywall.presentation.internal.state.PaywallResult) = 
      (r13v1 com.superwall.sdk.paywall.presentation.internal.state.PaywallResult)
      (r13v1 com.superwall.sdk.paywall.presentation.internal.state.PaywallResult)
      (r13v1 com.superwall.sdk.paywall.presentation.internal.state.PaywallResult)
      (r13v7 com.superwall.sdk.paywall.presentation.internal.state.PaywallResult)
     binds: [B:28:0x00ac, B:29:0x00ae, B:31:0x00df, B:67:0x0183] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x018f  */
    /* JADX WARN: Code duplicated, block: B:77:0x01ab A[PHI: r10
      0x01ab: PHI (r10v15 com.superwall.sdk.paywall.view.PaywallView) = (r10v9 com.superwall.sdk.paywall.view.PaywallView), (r10v16 com.superwall.sdk.paywall.view.PaywallView) binds: [B:71:0x018d, B:76:0x01a9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01a4, code lost:
    
        if (r14 == r1) goto L74;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object dismiss$dismissView(com.superwall.sdk.paywall.view.PaywallView r10, boolean r11, boolean r12, com.superwall.sdk.paywall.presentation.internal.state.PaywallResult r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) {
        /*
            Method dump skipped, instruction units count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.view.PaywallView.dismiss$dismissView(com.superwall.sdk.paywall.view.PaywallView, boolean, boolean, com.superwall.sdk.paywall.presentation.internal.state.PaywallResult, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Job dismiss$lambda$5(PaywallView paywallView, boolean z, boolean z2, PaywallResult paywallResult) {
        return BuildersKt__Builders_commonKt.launch$default(ioScope, null, null, new PaywallView$dismiss$finalDismiss$1$1(paywallView, z, z2, paywallResult, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit dismiss$lambda$7(PaywallView paywallView, Function0 function0, SurveyPresentationResult res) {
        Intrinsics.checkNotNullParameter(res, "res");
        paywallView.controller.updateState(new PaywallViewState.Updates.UpdateSurveyState(res));
        function0.invoke();
        return Unit.INSTANCE;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        startStateListener();
        if (getLoadingState() instanceof PaywallLoadingState.Unknown) {
            loadWebView();
        }
    }

    public final void registerPaymentSheetLauncher(LifecycleOwner lifecycleOwner, ActivityResultRegistryOwner registryOwner) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(registryOwner, "registryOwner");
        registerIntent$superwall_release(lifecycleOwner, registryOwner);
    }

    public final void onViewCreated() {
        Function1<Boolean, Unit> viewCreatedCompletion = getState().getViewCreatedCompletion();
        if (viewCreatedCompletion != null) {
            viewCreatedCompletion.invoke(true);
        }
        this.controller.updateState(PaywallViewState.Updates.ClearViewCreatedCompletion.INSTANCE);
        if (getState().getPresentationDidFinishPrepare()) {
            return;
        }
        IOScope iOScope = ioScope;
        BuildersKt__Builders_commonKt.launch$default(iOScope, null, null, new C05431(null), 3, null);
        TriggerRuleOccurrence unsavedOccurrence = getState().getUnsavedOccurrence();
        if (unsavedOccurrence != null) {
            CoreDataManager.save$default(this.storage.getCoreDataManager(), unsavedOccurrence, null, 2, null);
            this.controller.updateState(PaywallViewState.Updates.ClearUnsavedOccurrence.INSTANCE);
        }
        this.controller.updateState(PaywallViewState.Updates.SetPresentedAndFinished.INSTANCE);
        this.factory.getDelegateAdapter().didPresentPaywall(getInfo());
        loadingStateDidChange$superwall_release();
        this.webView.getMessageHandler().flushPendingMessages();
        BuildersKt__Builders_commonKt.launch$default(iOScope, null, null, new AnonymousClass3(null), 3, null);
        GameControllerManager.INSTANCE.getShared().setDelegate(this);
        this.initialOrientation = Integer.valueOf(getResources().getConfiguration().orientation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$onViewCreated$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$onViewCreated$1", f = "PaywallView.kt", i = {}, l = {614}, m = "invokeSuspend", n = {}, s = {})
    static final class C05431 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05431(Continuation<? super C05431> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallView.this.new C05431(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05431) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                MutableSharedFlow<PaywallState> paywallStatePublisher = PaywallView.this.getState().getPaywallStatePublisher();
                if (paywallStatePublisher != null) {
                    PaywallView paywallView = PaywallView.this;
                    Factory factory = paywallView.getFactory();
                    PresentationRequest request = paywallView.getState().getRequest();
                    this.label = 1;
                    if (factory.storePresentationObject(request, paywallStatePublisher, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$onViewCreated$3, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$onViewCreated$3", f = "PaywallView.kt", i = {}, l = {629}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallView.this.new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PaywallView.this.trackOpen(this) == coroutine_suspended) {
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
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object trackOpen(Continuation<? super Unit> continuation) {
        C05491 c05491;
        if (continuation instanceof C05491) {
            c05491 = (C05491) continuation;
            if ((c05491.label & Integer.MIN_VALUE) != 0) {
                c05491.label -= Integer.MIN_VALUE;
            } else {
                c05491 = new C05491(continuation);
            }
        } else {
            c05491 = new C05491(continuation);
        }
        Object obj = c05491.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05491.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.controller.updateState(PaywallViewState.Updates.SetLastOpen.INSTANCE);
            this.storage.trackPaywallOpen();
            this.webView.getMessageHandler().handle(PaywallMessage.PaywallOpen.INSTANCE);
            InternalSuperwallEvent.PaywallOpen paywallOpen = new InternalSuperwallEvent.PaywallOpen(getInfo(), this.factory.getCurrentUserAttributes(), this.factory.demandTier(), this.factory.demandScore());
            c05491.label = 1;
            if (this.factory.mo10617trackgIAlus(paywallOpen, c05491) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object trackClose(Continuation<? super Unit> continuation) {
        C05481 c05481;
        if (continuation instanceof C05481) {
            c05481 = (C05481) continuation;
            if ((c05481.label & Integer.MIN_VALUE) != 0) {
                c05481.label -= Integer.MIN_VALUE;
            } else {
                c05481 = new C05481(continuation);
            }
        } else {
            c05481 = new C05481(continuation);
        }
        Object obj = c05481.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05481.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            InternalSuperwallEvent.PaywallClose paywallClose = new InternalSuperwallEvent.PaywallClose(getInfo(), getState().getSurveyPresentationResult());
            c05481.label = 1;
            if (this.factory.mo10617trackgIAlus(paywallClose, c05481) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$eventDidOccur$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$eventDidOccur$1", f = "PaywallView.kt", i = {}, l = {664}, m = "invokeSuspend", n = {}, s = {})
    static final class C05401 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallWebEvent $paywallWebEvent;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05401(PaywallWebEvent paywallWebEvent, Continuation<? super C05401> continuation) {
            super(2, continuation);
            this.$paywallWebEvent = paywallWebEvent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallView.this.new C05401(this.$paywallWebEvent, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05401) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PaywallViewEventCallback eventCallback = PaywallView.this.getEventCallback();
                if (eventCallback != null) {
                    this.label = 1;
                    if (eventCallback.eventDidOccur(this.$paywallWebEvent, PaywallView.this, this) == coroutine_suspended) {
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

    @Override // com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandlerDelegate
    public void eventDidOccur(PaywallWebEvent paywallWebEvent) {
        Intrinsics.checkNotNullParameter(paywallWebEvent, "paywallWebEvent");
        BuildersKt__Builders_commonKt.launch$default(ioScope, null, null, new C05401(paywallWebEvent, null), 3, null);
    }

    private final void dismiss(boolean presentationIsAnimated) {
        Activity activity;
        WeakReference<Activity> encapsulatingActivity = getEncapsulatingActivity();
        if (encapsulatingActivity == null || (activity = encapsulatingActivity.get()) == null) {
            return;
        }
        activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showLoadingView() {
        PaywallPurchaseLoadingView paywallPurchaseLoadingView;
        if (this.factory.makeSuperwallOptions().getPaywalls().getTransactionBackgroundView() == PaywallOptions.TransactionBackgroundView.SPINNER && (paywallPurchaseLoadingView = this.loadingView) != null) {
            BuildersKt__Builders_commonKt.launch$default(mainScope, null, null, new PaywallView$showLoadingView$1$1(paywallPurchaseLoadingView, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideLoadingView() {
        PaywallPurchaseLoadingView paywallPurchaseLoadingView = this.loadingView;
        if (paywallPurchaseLoadingView != null) {
            BuildersKt__Builders_commonKt.launch$default(mainScope, null, null, new PaywallView$hideLoadingView$1$1(paywallPurchaseLoadingView, null), 3, null);
        }
    }

    private final void trackShimmerStart() {
        BuildersKt__Builders_commonKt.launch$default(ioScope, null, null, new C05501(new InternalSuperwallEvent.ShimmerLoad(InternalSuperwallEvent.ShimmerLoad.State.Started, getState().getPaywall().getIdentifier(), null, getState().getPaywall().getPresentation().getDelay(), PaywallOptionsKt.computedShouldPreload(this.factory.makeSuperwallOptions(), this.deviceHelper.getDeviceTier())), null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$trackShimmerStart$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$trackShimmerStart$1", f = "PaywallView.kt", i = {}, l = {711}, m = "invokeSuspend", n = {}, s = {})
    static final class C05501 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ InternalSuperwallEvent.ShimmerLoad $trackedEvent;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05501(InternalSuperwallEvent.ShimmerLoad shimmerLoad, Continuation<? super C05501> continuation) {
            super(2, continuation);
            this.$trackedEvent = shimmerLoad;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallView.this.new C05501(this.$trackedEvent, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05501) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PaywallView.this.getFactory().mo10617trackgIAlus(this.$trackedEvent, this) == coroutine_suspended) {
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

    public final void onThemeChanged() {
        this.webView.getMessageHandler().handle(PaywallMessage.TemplateParamsAndUserAttributes.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showShimmerView() {
        PaywallShimmerView paywallShimmerView = this.shimmerView;
        if (paywallShimmerView != null) {
            BuildersKt__Builders_commonKt.launch$default(mainScope, null, null, new PaywallView$showShimmerView$1$1(paywallShimmerView, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideShimmerView() {
        double dM12637toDoubleimpl;
        PaywallShimmerView paywallShimmerView = this.shimmerView;
        if (paywallShimmerView != null) {
            BuildersKt__Builders_commonKt.launch$default(mainScope, null, null, new PaywallView$hideShimmerView$1$1(paywallShimmerView, null), 3, null);
        }
        if (getState().getPaywall().getShimmerLoadingInfo().getEndAt() != null) {
            return;
        }
        Date startAt = getState().getPaywall().getShimmerLoadingInfo().getStartAt();
        Date lastOpen = getState().getLastOpen();
        Date date = new Date();
        if (startAt == null || lastOpen == null) {
            dM12637toDoubleimpl = 0.0d;
        } else {
            Duration.Companion companion = Duration.INSTANCE;
            dM12637toDoubleimpl = Duration.m12637toDoubleimpl(DurationKt.toDuration(date.getTime() - lastOpen.getTime(), DurationUnit.SECONDS), DurationUnit.SECONDS);
        }
        this.controller.updateState(PaywallViewState.Updates.ShimmerEnded.INSTANCE);
        BuildersKt__Builders_commonKt.launch$default(ioScope, null, null, new C05412(dM12637toDoubleimpl, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$hideShimmerView$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$hideShimmerView$2", f = "PaywallView.kt", i = {}, l = {760}, m = "invokeSuspend", n = {}, s = {})
    static final class C05412 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ double $visibleDuration;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05412(double d, Continuation<? super C05412> continuation) {
            super(2, continuation);
            this.$visibleDuration = d;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallView.this.new C05412(this.$visibleDuration, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05412) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InternalSuperwallEvent.ShimmerLoad shimmerLoad = new InternalSuperwallEvent.ShimmerLoad(InternalSuperwallEvent.ShimmerLoad.State.Complete, PaywallView.this.getState().getPaywall().getIdentifier(), Boxing.boxDouble(this.$visibleDuration), PaywallView.this.getState().getPaywall().getPresentation().getDelay(), PaywallOptionsKt.computedShouldPreload(PaywallView.this.getFactory().makeSuperwallOptions(), PaywallView.this.getDeviceHelper().getDeviceTier()));
                this.label = 1;
                if (PaywallView.this.getFactory().mo10617trackgIAlus(shimmerLoad, this) == coroutine_suspended) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void showAlert$default(PaywallView paywallView, String str, String str2, String str3, String str4, Function0 function0, Function0 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            str3 = null;
        }
        if ((i & 8) != 0) {
            str4 = "Done";
        }
        if ((i & 16) != 0) {
            function0 = null;
        }
        if ((i & 32) != 0) {
            function1 = null;
        }
        paywallView.showAlert(str, str2, str3, str4, function0, function1);
    }

    public final void showAlert(String title, String message, String actionTitle, String closeActionTitle, Function0<Unit> action, Function0<Unit> onClose) {
        Activity activity;
        Intrinsics.checkNotNullParameter(closeActionTitle, "closeActionTitle");
        WeakReference<Activity> encapsulatingActivity = getEncapsulatingActivity();
        if (encapsulatingActivity == null || (activity = encapsulatingActivity.get()) == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(mainScope, null, null, new C05451(activity, title, message, actionTitle, closeActionTitle, this, action, onClose, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$showAlert$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$showAlert$1", f = "PaywallView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05451 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<Unit> $action;
        final /* synthetic */ String $actionTitle;
        final /* synthetic */ Activity $activity;
        final /* synthetic */ String $closeActionTitle;
        final /* synthetic */ String $message;
        final /* synthetic */ Function0<Unit> $onClose;
        final /* synthetic */ String $title;
        int label;
        final /* synthetic */ PaywallView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05451(Activity activity, String str, String str2, String str3, String str4, PaywallView paywallView, Function0<Unit> function0, Function0<Unit> function1, Continuation<? super C05451> continuation) {
            super(2, continuation);
            this.$activity = activity;
            this.$title = str;
            this.$message = str2;
            this.$actionTitle = str3;
            this.$closeActionTitle = str4;
            this.this$0 = paywallView;
            this.$action = function0;
            this.$onClose = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05451(this.$activity, this.$title, this.$message, this.$actionTitle, this.$closeActionTitle, this.this$0, this.$action, this.$onClose, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05451) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AlertControllerFactory alertControllerFactory = AlertControllerFactory.INSTANCE;
            Activity activity = this.$activity;
            String str = this.$title;
            String str2 = this.$message;
            String str3 = this.$actionTitle;
            String str4 = this.$closeActionTitle;
            final Function0<Unit> function0 = this.$action;
            Function0<Unit> function1 = new Function0() { // from class: com.superwall.sdk.paywall.view.PaywallView$showAlert$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PaywallView.C05451.invokeSuspend$lambda$0(function0);
                }
            };
            final Function0<Unit> function2 = this.$onClose;
            alertControllerFactory.make(activity, str, str2, str3, str4, function1, new Function0() { // from class: com.superwall.sdk.paywall.view.PaywallView$showAlert$1$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PaywallView.C05451.invokeSuspend$lambda$1(function2);
                }
            }).show();
            this.this$0.getController().updateState(new PaywallViewState.Updates.SetLoadingState(PaywallLoadingState.Ready.INSTANCE));
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(Function0 function0) {
            if (function0 != null) {
                function0.invoke();
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$1(Function0 function0) {
            if (function0 != null) {
                function0.invoke();
            }
            return Unit.INSTANCE;
        }
    }

    public final void loadingStateDidChange$superwall_release() {
        if (getState().isPresented()) {
            BuildersKt__Builders_commonKt.launch$default(mainScope, null, null, new PaywallView$loadingStateDidChange$1(this, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$loadWebView$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$loadWebView$1", f = "PaywallView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05421 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        C05421(Continuation<? super C05421> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05421 c05421 = PaywallView.this.new C05421(continuation);
            c05421.L$0 = obj;
            return c05421;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05421) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            String strM10661getUrl24UBhI0 = PaywallView.this.getState().getPaywall().m10661getUrl24UBhI0();
            PaywallView.this.getController().updateState(PaywallViewState.Updates.WebLoadingStarted.INSTANCE);
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C01211(PaywallView.this, null), 3, null);
            PaywallWebUI webView = PaywallView.this.getWebView();
            final PaywallView paywallView = PaywallView.this;
            webView.mo10746setupMkQ7Bds(strM10661getUrl24UBhI0, new Function2() { // from class: com.superwall.sdk.paywall.view.PaywallView$loadWebView$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return PaywallView.C05421.invokeSuspend$lambda$0(paywallView, ((Boolean) obj2).booleanValue(), ((Integer) obj3).intValue());
                }
            });
            PaywallView.this.getController().updateState(new PaywallViewState.Updates.SetLoadingState(PaywallLoadingState.LoadingURL.INSTANCE));
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.PaywallView$loadWebView$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: PaywallView.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.view.PaywallView$loadWebView$1$1", f = "PaywallView.kt", i = {}, l = {850}, m = "invokeSuspend", n = {}, s = {})
        static final class C01211 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ PaywallView this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01211(PaywallView paywallView, Continuation<? super C01211> continuation) {
                super(2, continuation);
                this.this$0 = paywallView;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C01211(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C01211) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    InternalSuperwallEvent.PaywallWebviewLoad paywallWebviewLoad = new InternalSuperwallEvent.PaywallWebviewLoad(new InternalSuperwallEvent.PaywallWebviewLoad.State.Start(), this.this$0.getInfo());
                    this.label = 1;
                    if (this.this$0.getFactory().mo10617trackgIAlus(paywallWebviewLoad, this) == coroutine_suspended) {
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

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(PaywallView paywallView, boolean z, int i) {
            paywallView.getController().updateState(PaywallViewState.Updates.CrashRetry.INSTANCE);
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "Webview Process has crashed for paywall with identifier: " + paywallView.getState().getPaywall().getIdentifier() + ".\nCrashed by the system: " + Boolean.valueOf(z) + " - priority " + Integer.valueOf(i), null, null, 24, null);
            if (paywallView.getState().getCrashRetries() < 3) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "Webview crash - recreating " + paywallView.getState().getPaywall().getIdentifier(), null, null, 24, null);
                paywallView.recreateWebview();
            } else {
                paywallView.getController().updateState(PaywallViewState.Updates.WebLoadingFailed.INSTANCE);
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "Webview keeps crashing - paywall " + paywallView.getState().getPaywall().getIdentifier() + " not recreated", null, null, 24, null);
                if (!paywallView.getState().isPresented()) {
                    BuildersKt__Builders_commonKt.launch$default(PaywallView.mainScope, null, null, new PaywallView$loadWebView$1$2$1(paywallView, null), 3, null);
                } else {
                    Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "Dismissing active paywall due to webview process crash, cannot recreate", null, null, 24, null);
                    PaywallView.dismiss$superwall_release$default(paywallView, new PaywallResult.Declined(), PaywallCloseReason.WebViewFailedToLoad.INSTANCE, null, 4, null);
                }
            }
            return Unit.INSTANCE;
        }
    }

    public final void loadWebView() {
        BuildersKt__Builders_commonKt.launch$default(ioScope, null, null, new C05421(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void recreateWebview() {
        PaywallWebUI paywallWebUI = this.webView;
        PaywallView paywallView = this;
        paywallWebUI.detach(paywallView);
        paywallWebUI.destroyView();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        SWWebView sWWebView = new SWWebView(context, paywallWebUI.getMessageHandler(), null, new Function0() { // from class: com.superwall.sdk.paywall.view.PaywallView$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PaywallView.recreateWebview$lambda$14(this.f$0);
            }
        }, null, 20, null);
        this.webView = sWWebView;
        sWWebView.attach(paywallView);
        this.webView.setDelegate(this);
        this.webView.getMessageHandler().handle(PaywallMessage.PaywallOpen.INSTANCE);
        loadWebView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PaywallOptions recreateWebview$lambda$14(PaywallView paywallView) {
        return paywallView.factory.makeSuperwallOptions().getPaywalls();
    }

    /* JADX INFO: renamed from: isPaymentSheetPresented$superwall_release, reason: from getter */
    public final boolean getIsPaymentSheetPresented() {
        return this.isPaymentSheetPresented;
    }

    public final void setPaymentSheetPresented$superwall_release(boolean z) {
        this.isPaymentSheetPresented = z;
    }

    @Override // com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandlerDelegate
    public void presentPaymentSheet(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            this.isPaymentSheetPresented = true;
            presentCheckoutBottomSheet(url);
        } catch (MalformedURLException e) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Invalid URL provided for \"Open In-App URL\" click behavior.", null, e, 8, null);
        } catch (Throwable th) {
            th.printStackTrace();
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Exception thrown for \"Open In-App URL\" click behavior.", null, th, 8, null);
        }
    }

    @Override // com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandlerDelegate
    public void presentBrowserInApp(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            URI uri = new URI(url);
            CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
            Intrinsics.checkNotNullExpressionValue(customTabsIntentBuild, "build(...)");
            customTabsIntentBuild.intent.setFlags(268435456);
            Context context = getContext();
            String string = uri.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            customTabsIntentBuild.launchUrl(context, Uri.parse(string));
            try {
                this.controller.updateState(new PaywallViewState.Updates.SetBrowserPresented(true));
            } catch (MalformedURLException unused) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Invalid URL provided for \"Open In-App URL\" click behavior.", null, null, 24, null);
            } catch (Throwable unused2) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Exception thrown for \"Open In-App URL\" click behavior.", null, null, 24, null);
            }
        } catch (MalformedURLException unused3) {
        } catch (Throwable unused4) {
        }
    }

    private final void presentCheckoutBottomSheet(String url) {
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Opening checkout URL in Chrome Custom Tab: " + url, null, null, 24, null);
        ActivityResultLauncher<String> activityResultLauncher = this.activityResultLauncher;
        if (activityResultLauncher != null) {
            activityResultLauncher.launch(url);
        } else {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.paywallView, "Activity result launcher not initialized - cannot present Chrome Custom Tab", null, null, 24, null);
            this.isPaymentSheetPresented = false;
        }
    }

    @Override // com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandlerDelegate
    public void presentBrowserExternal(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            String string = new URI(url).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(string));
            intent.addFlags(268435456);
            getContext().startActivity(intent);
        } catch (MalformedURLException unused) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Invalid URL provided for \"Open External URL\" click behavior.", null, null, 24, null);
        } catch (Throwable unused2) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Exception thrown for \"Open External URL\" click behavior.", null, null, 24, null);
        }
    }

    @Override // com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandlerDelegate
    public void evaluate(String code, Function1<? super String, Unit> resultCallback) {
        Intrinsics.checkNotNullParameter(code, "code");
        this.webView.evaluate(code, resultCallback);
    }

    @Override // com.superwall.sdk.game.GameControllerDelegate
    public void gameControllerEventOccured(GameControllerEvent event) {
        String strEncodeToString;
        Intrinsics.checkNotNullParameter(event, "event");
        try {
            Json gameControllerJson = Companion.getGameControllerJson();
            gameControllerJson.getSerializersModule();
            strEncodeToString = gameControllerJson.encodeToString(GameControllerEvent.INSTANCE.serializer(), event);
        } catch (Throwable unused) {
            strEncodeToString = null;
        }
        this.webView.evaluate("window.paywall.accept([" + strEncodeToString + "])", null);
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Game controller event occurred: " + strEncodeToString, null, null, 24, null);
    }

    public final void prepareToDisplay() {
        ViewParent parent = getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
        PaywallViewCache paywallViewCache = this.cache;
        if (paywallViewCache != null) {
            paywallViewCache.setActivePaywallVcKey(getState().getCacheKey());
        }
    }

    public final void cleanup() {
        WeakReference<Activity> encapsulatingActivity = getEncapsulatingActivity();
        if (encapsulatingActivity != null) {
            encapsulatingActivity.clear();
        }
        this.callback = null;
        this.webView.setOnScrollChangeListener(null);
        this.webView.setDelegate(null);
        ActivityResultLauncher<String> activityResultLauncher = this.activityResultLauncher;
        if (activityResultLauncher != null) {
            activityResultLauncher.unregister();
        }
        this.activityResultLauncher = null;
        ViewParent parent = getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        removeAllViews();
        detachAllViewsFromParent();
        stopStateListener();
    }

    public final void destroyWebview$superwall_release() {
        this.webView.destroyView();
    }

    public final void registerIntent$superwall_release(LifecycleOwner lifecycleOwner, ActivityResultRegistryOwner registryOwner) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(registryOwner, "registryOwner");
        this.activityResultLauncher = registryOwner.getActivityResultRegistry().register("checkoutSheet", lifecycleOwner, new ActivityResultContract<String, Integer>() { // from class: com.superwall.sdk.paywall.view.PaywallView$registerIntent$1
            @Override // androidx.activity.result.contract.ActivityResultContract
            public Intent createIntent(Context context, String input) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(input, "input");
                double d = ((double) context.getResources().getDisplayMetrics().heightPixels) * 0.9d;
                CustomTabsIntent.Builder downloadButtonEnabled = new CustomTabsIntent.Builder().setColorScheme(1).setDownloadButtonEnabled(false);
                PaywallPresentationStyle presentationStyle = this.this$0.getState().getPresentationStyle();
                if (presentationStyle instanceof PaywallPresentationStyle.Drawer) {
                    downloadButtonEnabled.setToolbarCornerRadiusDp((int) ((PaywallPresentationStyle.Drawer) presentationStyle).getCornerRadius());
                } else if (presentationStyle instanceof PaywallPresentationStyle.Popup) {
                    downloadButtonEnabled.setToolbarCornerRadiusDp((int) ((PaywallPresentationStyle.Popup) presentationStyle).getCornerRadius());
                } else {
                    Unit unit = Unit.INSTANCE;
                }
                CustomTabsIntent.Builder sendToExternalDefaultHandlerEnabled = downloadButtonEnabled.setShowTitle(true).setBookmarksButtonEnabled(false).setShareState(2).setInstantAppsEnabled(true).setSendToExternalDefaultHandlerEnabled(true);
                Drawable drawable = AppCompatResources.getDrawable(context, R.drawable.none);
                Intrinsics.checkNotNull(drawable);
                Drawable drawableMutate = drawable.mutate();
                DrawableCompat.setTint(drawableMutate, 0);
                Intrinsics.checkNotNull(drawableMutate);
                Intent intent = sendToExternalDefaultHandlerEnabled.setCloseButtonIcon(DrawableKt.toBitmap$default(drawableMutate, 0, 0, null, 7, null)).setUrlBarHidingEnabled(true).setInitialActivityHeightPx((int) (((double) ((int) d)) * 0.7d), 1).build().intent;
                Intrinsics.checkNotNullExpressionValue(intent, "intent");
                intent.setPackage(CustomTabsHelper.getPackageNameToUse(context));
                intent.setData(Uri.parse(input));
                return intent;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.activity.result.contract.ActivityResultContract
            public Integer parseResult(int resultCode, Intent intent) {
                return Integer.valueOf(resultCode);
            }
        }, new ActivityResultCallback() { // from class: com.superwall.sdk.paywall.view.PaywallView$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                PaywallView.registerIntent$lambda$17(this.f$0, ((Integer) obj).intValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerIntent$lambda$17(PaywallView paywallView, int i) {
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Chrome Custom Tab closed with status code: " + i, null, null, 24, null);
        paywallView.isPaymentSheetPresented = false;
        paywallView.controller.updateState(new PaywallViewState.Updates.SetBrowserPresented(false));
    }

    @Override // com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandlerDelegate
    public void openDeepLink(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Uri uri = Uri.parse(url);
        eventDidOccur(new PaywallWebEvent.OpenedDeepLink(uri));
        WeakReference<Activity> encapsulatingActivity = getEncapsulatingActivity();
        Activity activity = encapsulatingActivity != null ? encapsulatingActivity.get() : null;
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        if (activity == null) {
            intent.addFlags(268435456);
        }
        try {
            (activity != null ? activity : getContext()).startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.paywallView, "No activity found to handle deep link: " + url, null, null, 24, null);
        }
    }
}
