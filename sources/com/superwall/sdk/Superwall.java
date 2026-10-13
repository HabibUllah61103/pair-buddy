package com.superwall.sdk;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import androidx.work.WorkManager;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.Purchase;
import com.google.firebase.messaging.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.sun.jna.Callback;
import com.superwall.sdk.analytics.superwall.SuperwallEventInfo;
import com.superwall.sdk.config.models.ConfigState;
import com.superwall.sdk.config.models.ConfigurationStatus;
import com.superwall.sdk.config.options.SuperwallOptions;
import com.superwall.sdk.deeplinks.DeepLinkRouter;
import com.superwall.sdk.delegate.PurchaseResult;
import com.superwall.sdk.delegate.RestorationResult;
import com.superwall.sdk.delegate.SuperwallDelegate;
import com.superwall.sdk.delegate.SuperwallDelegateJava;
import com.superwall.sdk.delegate.subscription_controller.PurchaseController;
import com.superwall.sdk.dependencies.DependencyContainer;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.ActivityProvider;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.misc.MainScope;
import com.superwall.sdk.misc.ScopesKt;
import com.superwall.sdk.misc.SerialTaskManager;
import com.superwall.sdk.models.assignment.ConfirmedAssignment;
import com.superwall.sdk.models.attribution.AttributionProvider;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.internal.RedemptionOwnershipType;
import com.superwall.sdk.models.internal.VendorId;
import com.superwall.sdk.models.triggers.Experiment;
import com.superwall.sdk.network.device.InterfaceStyle;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.presentation.PresentationItems;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.PaywallViewState;
import com.superwall.sdk.paywall.view.SuperwallPaywallActivity;
import com.superwall.sdk.paywall.view.delegate.PaywallViewEventCallback;
import com.superwall.sdk.paywall.view.webview.PaywallResource;
import com.superwall.sdk.paywall.view.webview.messaging.PaywallWebEvent;
import com.superwall.sdk.storage.LatestCustomerInfo;
import com.superwall.sdk.storage.StoredSubscriptionStatus;
import com.superwall.sdk.store.Entitlements;
import com.superwall.sdk.store.PurchasingObserverState;
import com.superwall.sdk.store.StoreKit;
import com.superwall.sdk.store.StoreManager;
import com.superwall.sdk.store.abstractions.product.RawStoreProduct;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.transactions.TransactionManager;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: Superwall.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0080\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 ð\u00012\u00020\u0001:\u0002ð\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u001a\u0010\f\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\r¢\u0006\u0004\b\u0010\u0010\u0011J\u0006\u0010Y\u001a\u00020TJ\u0017\u0010[\u001a\u00020\u000f2\b\u00108\u001a\u0004\u0018\u00010\\H\u0007¢\u0006\u0002\bFJ\u0015\u0010]\u001a\u00020\u000f2\u0006\u0010^\u001a\u00020'H\u0000¢\u0006\u0002\b_J\u000f\u0010`\u001a\u0004\u0018\u00010\\H\u0007¢\u0006\u0002\bDJ\u000e\u0010a\u001a\u00020\u000f2\u0006\u0010b\u001a\u00020cJ\u001f\u0010a\u001a\u00020\u000f2\u0012\u0010d\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050e\"\u00020\u0005¢\u0006\u0002\u0010fJ\u0015\u0010g\u001a\u00020\u000f2\u0006\u0010h\u001a\u00020cH\u0000¢\u0006\u0002\biJ\u001c\u0010m\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010k0HH\u0086@¢\u0006\u0002\u0010nJ\u001a\u0010q\u001a\u00020\u000f2\u0012\u0010r\u001a\u000e\u0012\u0004\u0012\u00020s\u0012\u0004\u0012\u00020\u00050HJ\u001d\u0010\u0098\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0005\u0012\u00030\u009a\u00010\u0099\u0001H\u0000¢\u0006\u0003\b\u009b\u0001J\t\u0010\u009c\u0001\u001a\u00020\u000fH\u0002J\t\u0010\u009f\u0001\u001a\u00020\u000fH\u0002J\u0010\u0010 \u0001\u001a\u00020\u000f2\u0007\u0010¡\u0001\u001a\u00020@J\u0019\u0010¢\u0001\u001a\u00020\u000f2\u0007\u0010£\u0001\u001a\u00020\u00052\u0007\u0010¤\u0001\u001a\u00020\u0005J\u0013\u0010¥\u0001\u001a\u00020\u000f2\n\u0010¦\u0001\u001a\u0005\u0018\u00010§\u0001J\u0007\u0010¨\u0001\u001a\u00020\u000fJa\u0010©\u0001\u001a\u00020\u000f2\u000b\b\u0002\u0010ª\u0001\u001a\u0004\u0018\u00010\u00052\u000b\b\u0002\u0010«\u0001\u001a\u0004\u0018\u00010\u00052\u000b\b\u0002\u0010¬\u0001\u001a\u0004\u0018\u00010\u00052\t\b\u0002\u0010\u00ad\u0001\u001a\u00020\u00052\u0012\b\u0002\u0010®\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010¯\u00012\u0012\b\u0002\u0010°\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010¯\u0001J\u0007\u0010±\u0001\u001a\u00020\u000fJ\u001a\u0010±\u0001\u001a\u00020\u000f2\t\b\u0002\u0010²\u0001\u001a\u00020@H\u0000¢\u0006\u0003\b³\u0001J\u000f\u0010´\u0001\u001a\u00020\u000fH\u0000¢\u0006\u0003\bµ\u0001J \u0010¶\u0001\u001a\b\u0012\u0004\u0012\u00020@0\u000e2\b\u0010·\u0001\u001a\u00030¸\u0001¢\u0006\u0006\b¹\u0001\u0010º\u0001J\u0007\u0010»\u0001\u001a\u00020\u000fJ\u0017\u0010¼\u0001\u001a\u00020\u000f2\u000e\u0010½\u0001\u001a\t\u0012\u0004\u0012\u00020\u00050¾\u0001J\u001e\u0010¿\u0001\u001a\u0010\u0012\f\u0012\n\u0012\u0005\u0012\u00030Á\u00010À\u00010\u000e¢\u0006\u0006\bÂ\u0001\u0010Ã\u0001J \u0010Ä\u0001\u001a\u0010\u0012\f\u0012\n\u0012\u0005\u0012\u00030Á\u00010À\u00010\u000eH\u0086@¢\u0006\u0005\bÅ\u0001\u0010nJ.\u0010Ä\u0001\u001a\u00020\u000f*\u00020\u00002!\u0010Æ\u0001\u001a\u001c\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0005\u0012\u00030Á\u00010À\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\rJ$\u0010Ç\u0001\u001a\t\u0012\u0005\u0012\u00030È\u00010\u000e2\b\u0010É\u0001\u001a\u00030Ê\u0001H\u0086@¢\u0006\u0006\bË\u0001\u0010Ì\u0001J$\u0010Ç\u0001\u001a\t\u0012\u0005\u0012\u00030È\u00010\u000e2\b\u0010É\u0001\u001a\u00030Í\u0001H\u0086@¢\u0006\u0006\bË\u0001\u0010Î\u0001J#\u0010Ç\u0001\u001a\t\u0012\u0005\u0012\u00030È\u00010\u000e2\u0007\u0010Ï\u0001\u001a\u00020\u0005H\u0086@¢\u0006\u0006\bË\u0001\u0010Ð\u0001J;\u0010Ñ\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u0005\u0012\u0005\u0012\u00030Í\u00010H0\u000e2\u0013\u0010Ò\u0001\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050e\"\u00020\u0005H\u0086@¢\u0006\u0006\bÓ\u0001\u0010Ô\u0001J-\u0010Ç\u0001\u001a\u00020\u000f2\b\u0010É\u0001\u001a\u00030Í\u00012\u001a\u0010Õ\u0001\u001a\u0015\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030È\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\rJ-\u0010Ç\u0001\u001a\u00020\u000f2\b\u0010É\u0001\u001a\u00030Ê\u00012\u001a\u0010Õ\u0001\u001a\u0015\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030È\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\rJ,\u0010Ç\u0001\u001a\u00020\u000f2\u0007\u0010Ï\u0001\u001a\u00020\u00052\u001a\u0010Õ\u0001\u001a\u0015\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030È\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\rJ\"\u0010Ö\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e2\u0007\u0010×\u0001\u001a\u00020\u0005H\u0086@¢\u0006\u0006\bØ\u0001\u0010Ð\u0001J+\u0010Ö\u0001\u001a\u00020\u000f2\u0007\u0010×\u0001\u001a\u00020\u00052\u0019\u0010Ù\u0001\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u000e\u0012\u0004\u0012\u00020\u000f0\rJ\u0011\u0010Ú\u0001\u001a\u00020\u000f2\b\u0010Û\u0001\u001a\u00030Ü\u0001J\u0011\u0010Ý\u0001\u001a\u00020\u000f2\b\u0010É\u0001\u001a\u00030Ê\u0001J\u001b\u0010Þ\u0001\u001a\u00020\u000f2\b\u0010É\u0001\u001a\u00030Ê\u00012\b\u0010ß\u0001\u001a\u00030\u009a\u0001J\"\u0010à\u0001\u001a\u00020\u000f2\b\u0010á\u0001\u001a\u00030â\u00012\u000f\u0010ã\u0001\u001a\n\u0012\u0005\u0012\u00030ä\u00010À\u0001J\u0019\u0010å\u0001\u001a\t\u0012\u0005\u0012\u00030æ\u00010\u000eH\u0086@¢\u0006\u0005\bç\u0001\u0010nJ#\u0010å\u0001\u001a\u00020 2\u001a\u0010Õ\u0001\u001a\u0015\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030æ\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\rJ\"\u0010è\u0001\u001a\u00020\u000f2\b\u0010é\u0001\u001a\u00030ê\u00012\u0006\u00102\u001a\u000203H\u0096@¢\u0006\u0003\u0010ë\u0001J\u0018\u0010ì\u0001\u001a\u00020\u000f2\u0007\u0010í\u0001\u001a\u00020\u0005H\u0000¢\u0006\u0003\bî\u0001J\u0007\u0010ï\u0001\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\f\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u00020\"X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020'0&X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010(\u001a\b\u0012\u0004\u0012\u00020'0)¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R(\u0010-\u001a\u0004\u0018\u00010\u00052\b\u0010,\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0013\u00102\u001a\u0004\u0018\u0001038F¢\u0006\u0006\u001a\u0004\b4\u00105R\u0011\u0010\b\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b6\u00107R$\u0010:\u001a\u0002092\u0006\u00108\u001a\u0002098F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u0011\u0010?\u001a\u00020@8F¢\u0006\u0006\u001a\u0004\b?\u0010AR(\u0010C\u001a\u0004\u0018\u00010B2\b\u00108\u001a\u0004\u0018\u00010B8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR<\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050H2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050H8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR&\u0010N\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020O0HX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010K\"\u0004\bQ\u0010MR\u001a\u0010R\u001a\b\u0012\u0004\u0012\u00020T0SX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bU\u0010VR\u0017\u0010W\u001a\b\u0012\u0004\u0012\u00020T0X8F¢\u0006\u0006\u001a\u0004\bY\u0010ZR\u001d\u0010j\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020k0H8F¢\u0006\u0006\u001a\u0004\bl\u0010KR\u001d\u0010o\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050H8F¢\u0006\u0006\u001a\u0004\bp\u0010KR\u0011\u0010t\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\bu\u0010/R\u0011\u0010v\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\bw\u0010/R\u0011\u0010x\u001a\u00020@8F¢\u0006\u0006\u001a\u0004\bx\u0010AR\u0013\u0010y\u001a\u0004\u0018\u00010z8F¢\u0006\u0006\u001a\u0004\b{\u0010|R\u001d\u0010d\u001a\u00020}8FX\u0086\u0084\u0002¢\u0006\u000e\n\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u0004\b~\u0010\u007fR$\u0010b\u001a\b\u0012\u0004\u0012\u00020c0X8FX\u0086\u0084\u0002¢\u0006\u000f\n\u0006\b\u0083\u0001\u0010\u0081\u0001\u001a\u0005\b\u0082\u0001\u0010ZR\u0017\u0010\u0084\u0001\u001a\u00030\u0085\u00018@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0086\u0001\u0010/R\u0015\u0010\u0087\u0001\u001a\u00030\u0088\u00018F¢\u0006\b\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008b\u0001\u001a\n\u0012\u0005\u0012\u00030\u0088\u00010\u008c\u00018F¢\u0006\b\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001R\u0010\u0010\u008f\u0001\u001a\u00030\u0090\u0001X\u0082.¢\u0006\u0002\n\u0000R\u0018\u0010\u0091\u0001\u001a\u00030\u0090\u00018@X\u0080\u0004¢\u0006\b\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001R\u0018\u0010\u0094\u0001\u001a\u00030\u0095\u0001X\u0080\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001R\u0012\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009e\u0001X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006ñ\u0001"}, d2 = {"Lcom/superwall/sdk/Superwall;", "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;", "context", "Landroid/content/Context;", "apiKey", "", "purchaseController", "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;", "options", "Lcom/superwall/sdk/config/options/SuperwallOptions;", "activityProvider", "Lcom/superwall/sdk/misc/ActivityProvider;", "completion", "Lkotlin/Function1;", "Lkotlin/Result;", "", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Lkotlin/jvm/functions/Function1;)V", "_options", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "getIoScope$superwall_release", "()Lcom/superwall/sdk/misc/IOScope;", "mainScope", "Lcom/superwall/sdk/misc/MainScope;", "getMainScope$superwall_release", "()Lcom/superwall/sdk/misc/MainScope;", "getContext$superwall_release", "()Landroid/content/Context;", "setContext$superwall_release", "(Landroid/content/Context;)V", "purchaseTask", "Lkotlinx/coroutines/Job;", "presentationItems", "Lcom/superwall/sdk/paywall/presentation/PresentationItems;", "getPresentationItems$superwall_release", "()Lcom/superwall/sdk/paywall/presentation/PresentationItems;", "_placements", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;", "placements", "Lkotlinx/coroutines/flow/SharedFlow;", "getPlacements", "()Lkotlinx/coroutines/flow/SharedFlow;", RNConstants.ARG_VALUE, "localeIdentifier", "getLocaleIdentifier", "()Ljava/lang/String;", "setLocaleIdentifier", "(Ljava/lang/String;)V", "paywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "getPaywallView", "()Lcom/superwall/sdk/paywall/view/PaywallView;", "getOptions", "()Lcom/superwall/sdk/config/options/SuperwallOptions;", "newValue", "Lcom/superwall/sdk/logger/LogLevel;", "logLevel", "getLogLevel", "()Lcom/superwall/sdk/logger/LogLevel;", "setLogLevel", "(Lcom/superwall/sdk/logger/LogLevel;)V", "isPaywallPresented", "", "()Z", "Lcom/superwall/sdk/delegate/SuperwallDelegate;", "delegate", "getDelegate", "()Lcom/superwall/sdk/delegate/SuperwallDelegate;", "setDelegate", "(Lcom/superwall/sdk/delegate/SuperwallDelegate;)V", "", "overrideProductsByName", "getOverrideProductsByName", "()Ljava/util/Map;", "setOverrideProductsByName", "(Ljava/util/Map;)V", "localResources", "Lcom/superwall/sdk/paywall/view/webview/PaywallResource;", "getLocalResources", "setLocalResources", "_customerInfo", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "get_customerInfo$superwall_release", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "customerInfo", "Lkotlinx/coroutines/flow/StateFlow;", "getCustomerInfo", "()Lkotlinx/coroutines/flow/StateFlow;", "setJavaDelegate", "Lcom/superwall/sdk/delegate/SuperwallDelegateJava;", "emitSuperwallEvent", "info", "emitSuperwallEvent$superwall_release", "getJavaDelegate", "setSubscriptionStatus", "subscriptionStatus", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "entitlements", "", "([Ljava/lang/String;)V", "internallySetSubscriptionStatus", "toStatus", "internallySetSubscriptionStatus$superwall_release", "userAttributes", "", "getUserAttributes", "deviceAttributes", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "integrationAttributes", "getIntegrationAttributes", "setIntegrationAttributes", "attributes", "Lcom/superwall/sdk/models/attribution/AttributionProvider;", "userId", "getUserId", "externalAccountId", "getExternalAccountId", "isLoggedIn", "latestPaywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "getLatestPaywallInfo", "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "Lcom/superwall/sdk/store/Entitlements;", "getEntitlements", "()Lcom/superwall/sdk/store/Entitlements;", "entitlements$delegate", "Lkotlin/Lazy;", "getSubscriptionStatus", "subscriptionStatus$delegate", "vendorId", "Lcom/superwall/sdk/models/internal/VendorId;", "getVendorId-6xTLGo0$superwall_release", "configurationState", "Lcom/superwall/sdk/config/models/ConfigurationStatus;", "getConfigurationState", "()Lcom/superwall/sdk/config/models/ConfigurationStatus;", "configurationStateListener", "Lkotlinx/coroutines/flow/Flow;", "getConfigurationStateListener", "()Lkotlinx/coroutines/flow/Flow;", "_dependencyContainer", "Lcom/superwall/sdk/dependencies/DependencyContainer;", "dependencyContainer", "getDependencyContainer$superwall_release", "()Lcom/superwall/sdk/dependencies/DependencyContainer;", "serialTaskManager", "Lcom/superwall/sdk/misc/SerialTaskManager;", "getSerialTaskManager$superwall_release", "()Lcom/superwall/sdk/misc/SerialTaskManager;", "setup", "Lcom/superwall/sdk/misc/Either;", "", "setup$superwall_release", "addListeners", "configurationChangeListener", "Landroid/content/ComponentCallbacks2;", "registerConfigurationChangeListener", "togglePaywallSpinner", "isHidden", "setPlatformWrapper", "wrapper", "version", "setInterfaceStyle", "interfaceStyle", "Lcom/superwall/sdk/network/device/InterfaceStyle;", "cancelAllScheduledNotifications", "showAlert", "title", "message", "actionTitle", "closeActionTitle", "action", "Lkotlin/Function0;", "onClose", "reset", "duringIdentify", "reset$superwall_release", "teardown", "teardown$superwall_release", "handleDeepLink", "uri", "Landroid/net/Uri;", "handleDeepLink-IoAF18A", "(Landroid/net/Uri;)Ljava/lang/Object;", "preloadAllPaywalls", "preloadPaywalls", "placementNames", "", "getAssignments", "", "Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;", "getAssignments-d1pmJ48", "()Ljava/lang/Object;", "confirmAllAssignments", "confirmAllAssignments-IoAF18A", Callback.METHOD_NAME, "purchase", "Lcom/superwall/sdk/delegate/PurchaseResult;", "product", "Lcom/android/billingclient/api/ProductDetails;", "purchase-gIAlu-s", "(Lcom/android/billingclient/api/ProductDetails;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "productId", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProducts", "productIds", "getProducts-gIAlu-s", "([Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onFinished", "consume", "purchaseToken", "consume-gIAlu-s", "onConsumed", "observe", "state", "Lcom/superwall/sdk/store/PurchasingObserverState;", "observePurchaseStart", "observePurchaseError", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "observePurchaseResult", "billingResult", "Lcom/android/billingclient/api/BillingResult;", "purchases", "Lcom/android/billingclient/api/Purchase;", "restorePurchases", "Lcom/superwall/sdk/delegate/RestorationResult;", "restorePurchases-IoAF18A", "eventDidOccur", "paywallEvent", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "redeem", "code", "redeem$superwall_release", "refreshConfiguration", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Superwall implements PaywallViewEventCallback {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final MutableStateFlow<Boolean> _hasInitialized;
    private static Superwall _instance;
    private static final Flow<Boolean> hasInitialized;
    private static boolean initialized;
    private static ActivityProvider retainedActivityProvider;
    private final MutableStateFlow<CustomerInfo> _customerInfo;
    private volatile DependencyContainer _dependencyContainer;
    private SuperwallOptions _options;
    private final MutableSharedFlow<SuperwallEventInfo> _placements;
    private ActivityProvider activityProvider;
    private String apiKey;
    private final Function1<Result<Unit>, Unit> completion;
    private ComponentCallbacks2 configurationChangeListener;
    private Context context;

    /* JADX INFO: renamed from: entitlements$delegate, reason: from kotlin metadata */
    private final Lazy entitlements;
    private Map<String, ? extends PaywallResource> localResources;
    private final SharedFlow<SuperwallEventInfo> placements;
    private final PresentationItems presentationItems;
    private PurchaseController purchaseController;
    private Job purchaseTask;
    private final SerialTaskManager serialTaskManager;

    /* JADX INFO: renamed from: subscriptionStatus$delegate, reason: from kotlin metadata */
    private final Lazy subscriptionStatus;

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$confirmAllAssignments$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall", f = "Superwall.kt", i = {0, 1, 1}, l = {1023, 1044}, m = "confirmAllAssignments-IoAF18A", n = {"this", "this", "assignments"}, s = {"L$0", "L$0", "L$1"})
    static final class C04401 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C04401(Continuation<? super C04401> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objM10559confirmAllAssignmentsIoAF18A = Superwall.this.m10559confirmAllAssignmentsIoAF18A(this);
            return objM10559confirmAllAssignmentsIoAF18A == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10559confirmAllAssignmentsIoAF18A : Result.m11240boximpl(objM10559confirmAllAssignmentsIoAF18A);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$consume$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall", f = "Superwall.kt", i = {0}, l = {1213, 1215}, m = "consume-gIAlu-s", n = {"this"}, s = {"L$0"})
    static final class C04411 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04411(Continuation<? super C04411> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objM10560consumegIAlus = Superwall.this.m10560consumegIAlus(null, this);
            return objM10560consumegIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10560consumegIAlus : Result.m11240boximpl(objM10560consumegIAlus);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$purchase$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall", f = "Superwall.kt", i = {}, l = {1094}, m = "purchase-gIAlu-s", n = {}, s = {})
    static final class C04471 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C04471(Continuation<? super C04471> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objM10565purchasegIAlus = Superwall.this.m10565purchasegIAlus((ProductDetails) null, this);
            return objM10565purchasegIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10565purchasegIAlus : Result.m11240boximpl(objM10565purchasegIAlus);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$purchase$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall", f = "Superwall.kt", i = {}, l = {1117}, m = "purchase-gIAlu-s", n = {}, s = {})
    static final class C04483 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C04483(Continuation<? super C04483> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objM10566purchasegIAlus = Superwall.this.m10566purchasegIAlus((StoreProduct) null, this);
            return objM10566purchasegIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10566purchasegIAlus : Result.m11240boximpl(objM10566purchasegIAlus);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$purchase$5, reason: invalid class name */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall", f = "Superwall.kt", i = {0, 0, 1}, l = {1140, 1141}, m = "purchase-gIAlu-s", n = {"this", "productId", "productId"}, s = {"L$0", "L$1", "L$0"})
    static final class AnonymousClass5 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass5(Continuation<? super AnonymousClass5> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objM10567purchasegIAlus = Superwall.this.m10567purchasegIAlus((String) null, this);
            return objM10567purchasegIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10567purchasegIAlus : Result.m11240boximpl(objM10567purchasegIAlus);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$restorePurchases$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall", f = "Superwall.kt", i = {}, l = {1345}, m = "restorePurchases-IoAF18A", n = {}, s = {})
    static final class C04501 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C04501(Continuation<? super C04501> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objM10568restorePurchasesIoAF18A = Superwall.this.m10568restorePurchasesIoAF18A(this);
            return objM10568restorePurchasesIoAF18A == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10568restorePurchasesIoAF18A : Result.m11240boximpl(objM10568restorePurchasesIoAF18A);
        }
    }

    @JvmStatic
    public static final void configure(Application application, String str) {
        INSTANCE.configure(application, str);
    }

    @JvmStatic
    public static final void configure(Application application, String str, PurchaseController purchaseController) {
        INSTANCE.configure(application, str, purchaseController);
    }

    @JvmStatic
    public static final void configure(Application application, String str, PurchaseController purchaseController, SuperwallOptions superwallOptions) {
        INSTANCE.configure(application, str, purchaseController, superwallOptions);
    }

    @JvmStatic
    public static final void configure(Application application, String str, PurchaseController purchaseController, SuperwallOptions superwallOptions, ActivityProvider activityProvider) {
        INSTANCE.configure(application, str, purchaseController, superwallOptions, activityProvider);
    }

    @JvmStatic
    public static final void configure(Application application, String str, PurchaseController purchaseController, SuperwallOptions superwallOptions, ActivityProvider activityProvider, Function1<? super Result<Unit>, Unit> function1) {
        INSTANCE.configure(application, str, purchaseController, superwallOptions, activityProvider, function1);
    }

    @JvmStatic
    public static final void teardown() {
        INSTANCE.teardown();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Superwall(Context context, String apiKey, PurchaseController purchaseController, SuperwallOptions superwallOptions, ActivityProvider activityProvider, Function1<? super Result<Unit>, Unit> function1) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        this.apiKey = apiKey;
        this.purchaseController = purchaseController;
        this.activityProvider = activityProvider;
        this.completion = function1;
        this._options = superwallOptions;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.context = applicationContext;
        this.presentationItems = new PresentationItems();
        MutableSharedFlow<SuperwallEventInfo> MutableSharedFlow = SharedFlowKt.MutableSharedFlow(0, 256, BufferOverflow.SUSPEND);
        this._placements = MutableSharedFlow;
        this.placements = MutableSharedFlow;
        this.localResources = MapsKt.emptyMap();
        this._customerInfo = StateFlowKt.MutableStateFlow(CustomerInfo.INSTANCE.empty());
        this.entitlements = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.Superwall$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Superwall.entitlements_delegate$lambda$2(this.f$0);
            }
        });
        this.subscriptionStatus = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.Superwall$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Superwall.subscriptionStatus_delegate$lambda$3(this.f$0);
            }
        });
        this.serialTaskManager = new SerialTaskManager(null, 1, 0 == true ? 1 : 0);
    }

    public final IOScope getIoScope$superwall_release() {
        return getDependencyContainer$superwall_release().ioScope();
    }

    public final MainScope getMainScope$superwall_release() {
        return getDependencyContainer$superwall_release().mainScope();
    }

    /* JADX INFO: renamed from: getContext$superwall_release, reason: from getter */
    public final Context getContext() {
        return this.context;
    }

    public final void setContext$superwall_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    /* JADX INFO: renamed from: getPresentationItems$superwall_release, reason: from getter */
    public final PresentationItems getPresentationItems() {
        return this.presentationItems;
    }

    public final SharedFlow<SuperwallEventInfo> getPlacements() {
        return this.placements;
    }

    public final String getLocaleIdentifier() {
        return getDependencyContainer$superwall_release().getConfigManager().getOptions().getLocaleIdentifier();
    }

    public final void setLocaleIdentifier(String str) {
        getDependencyContainer$superwall_release().getConfigManager().getOptions().setLocaleIdentifier(str);
        BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new Superwall$localeIdentifier$1(this, null), 3, null);
    }

    public final PaywallView getPaywallView() {
        return getDependencyContainer$superwall_release().getPaywallManager().getCurrentView();
    }

    public final SuperwallOptions getOptions() {
        return getDependencyContainer$superwall_release().getConfigManager().getOptions();
    }

    public final LogLevel getLogLevel() {
        return getOptions().getLogging().getLevel();
    }

    public final void setLogLevel(LogLevel newValue) {
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        getOptions().getLogging().setLevel(newValue);
        BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new Superwall$logLevel$1(this, null), 3, null);
    }

    public final boolean isPaywallPresented() {
        return getPaywallView() != null;
    }

    public final SuperwallDelegate getDelegate() {
        return getDependencyContainer$superwall_release().getDelegateAdapter().getKotlinDelegate();
    }

    public final void setDelegate(SuperwallDelegate superwallDelegate) {
        getDependencyContainer$superwall_release().getDelegateAdapter().setKotlinDelegate(superwallDelegate);
        BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new Superwall$delegate$1(this, null), 3, null);
    }

    public final Map<String, String> getOverrideProductsByName() {
        return getOptions().getPaywalls().getOverrideProductsByName();
    }

    public final void setOverrideProductsByName(Map<String, String> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getOptions().getPaywalls().setOverrideProductsByName(value);
    }

    public final Map<String, PaywallResource> getLocalResources() {
        return this.localResources;
    }

    public final void setLocalResources(Map<String, ? extends PaywallResource> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.localResources = map;
    }

    public final MutableStateFlow<CustomerInfo> get_customerInfo$superwall_release() {
        return this._customerInfo;
    }

    /* JADX INFO: renamed from: getCustomerInfo, reason: collision with other method in class */
    public final StateFlow<CustomerInfo> m10569getCustomerInfo() {
        return this._customerInfo;
    }

    public final CustomerInfo getCustomerInfo() {
        return this._customerInfo.getValue();
    }

    public final void setDelegate(SuperwallDelegateJava newValue) {
        try {
            getDependencyContainer$superwall_release().getDelegateAdapter().setJavaDelegate(newValue);
            new Either.Success(BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new Superwall$setJavaDelegate$1$1(this, null), 3, null));
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th)) {
                Companion companion = INSTANCE;
                if (companion.getInitialized()) {
                    ErrorTrackingKt.trackError(companion.getInstance(), th);
                }
            }
            new Either.Failure(th);
        }
    }

    public final void emitSuperwallEvent$superwall_release(SuperwallEventInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new Superwall$emitSuperwallEvent$1(this, info, null), 3, null);
    }

    /* JADX INFO: renamed from: getDelegate, reason: collision with other method in class */
    public final SuperwallDelegateJava m10570getDelegate() {
        return getDependencyContainer$superwall_release().getDelegateAdapter().getJavaDelegate();
    }

    public final void setSubscriptionStatus(SubscriptionStatus subscriptionStatus) {
        Intrinsics.checkNotNullParameter(subscriptionStatus, "subscriptionStatus");
        if (getDependencyContainer$superwall_release().getTestMode().isTestMode()) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.superwallCore, "setSubscriptionStatus ignored: test mode is active", null, null, 24, null);
        } else {
            getEntitlements().setSubscriptionStatus(subscriptionStatus);
        }
    }

    public final void setSubscriptionStatus(String... entitlements) {
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        if (getDependencyContainer$superwall_release().getTestMode().isTestMode()) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.superwallCore, "setSubscriptionStatus ignored: test mode is active", null, null, 24, null);
            return;
        }
        if (entitlements.length == 0) {
            getEntitlements().setSubscriptionStatus(SubscriptionStatus.Inactive.INSTANCE);
            return;
        }
        Entitlements entitlements2 = getEntitlements();
        ArrayList arrayList = new ArrayList(entitlements.length);
        for (String str : entitlements) {
            arrayList.add(new Entitlement(str));
        }
        entitlements2.setSubscriptionStatus(new SubscriptionStatus.Active(CollectionsKt.toSet(arrayList)));
    }

    public final void internallySetSubscriptionStatus$superwall_release(SubscriptionStatus toStatus) {
        Intrinsics.checkNotNullParameter(toStatus, "toStatus");
        if (getDependencyContainer$superwall_release().makeHasExternalPurchaseController() || getDependencyContainer$superwall_release().getTestMode().isTestMode()) {
            return;
        }
        Set<Entitlement> web = getDependencyContainer$superwall_release().getEntitlements().getWeb();
        if (toStatus instanceof SubscriptionStatus.Active) {
            Set setPlus = SetsKt.plus((Set) ((SubscriptionStatus.Active) toStatus).getEntitlements(), (Iterable) web);
            if (setPlus.isEmpty()) {
                getEntitlements().setSubscriptionStatus(SubscriptionStatus.Inactive.INSTANCE);
                return;
            } else {
                getEntitlements().setSubscriptionStatus(new SubscriptionStatus.Active(setPlus));
                return;
            }
        }
        if (Intrinsics.areEqual(toStatus, SubscriptionStatus.Inactive.INSTANCE)) {
            if (web.isEmpty()) {
                getEntitlements().setSubscriptionStatus(SubscriptionStatus.Inactive.INSTANCE);
                return;
            } else {
                getEntitlements().setSubscriptionStatus(new SubscriptionStatus.Active(web));
                return;
            }
        }
        if (!Intrinsics.areEqual(toStatus, SubscriptionStatus.Unknown.INSTANCE)) {
            throw new NoWhenBranchMatchedException();
        }
        getEntitlements().setSubscriptionStatus(SubscriptionStatus.Unknown.INSTANCE);
    }

    public final Map<String, Object> getUserAttributes() {
        return getDependencyContainer$superwall_release().getIdentityManager().getUserAttributes();
    }

    public final Object deviceAttributes(Continuation<? super Map<String, ? extends Object>> continuation) {
        return getDependencyContainer$superwall_release().makeSessionDeviceAttributes(continuation);
    }

    public final Map<String, String> getIntegrationAttributes() {
        return getDependencyContainer$superwall_release().getAttributionManager().getIntegrationAttributes();
    }

    public final void setIntegrationAttributes(Map<AttributionProvider, String> attributes) {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        getDependencyContainer$superwall_release().getAttributionManager().setIntegrationAttributes(attributes);
    }

    public final String getUserId() {
        return getDependencyContainer$superwall_release().getIdentityManager().getUserId();
    }

    public final String getExternalAccountId() {
        return getDependencyContainer$superwall_release().getIdentityManager().getExternalAccountId();
    }

    public final boolean isLoggedIn() {
        return getDependencyContainer$superwall_release().getIdentityManager().isLoggedIn();
    }

    public final PaywallInfo getLatestPaywallInfo() {
        PaywallView currentView = getDependencyContainer$superwall_release().getPaywallManager().getCurrentView();
        PaywallInfo info = currentView != null ? currentView.getInfo() : null;
        return info == null ? this.presentationItems.getPaywallInfo() : info;
    }

    public final Entitlements getEntitlements() {
        return (Entitlements) this.entitlements.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Entitlements entitlements_delegate$lambda$2(Superwall superwall) {
        return superwall.getDependencyContainer$superwall_release().getEntitlements();
    }

    public final StateFlow<SubscriptionStatus> getSubscriptionStatus() {
        return (StateFlow) this.subscriptionStatus.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StateFlow subscriptionStatus_delegate$lambda$3(Superwall superwall) {
        return superwall.getDependencyContainer$superwall_release().getEntitlements().getStatus();
    }

    /* JADX INFO: renamed from: getVendorId-6xTLGo0$superwall_release, reason: not valid java name */
    public final String m10563getVendorId6xTLGo0$superwall_release() {
        return VendorId.m10648constructorimpl(getDependencyContainer$superwall_release().getDeviceHelper().getVendorId());
    }

    public final ConfigurationStatus getConfigurationState() {
        ConfigState value = getDependencyContainer$superwall_release().getConfigManager().getConfigState$superwall_release().getValue();
        if (value instanceof ConfigState.Retrieved) {
            return ConfigurationStatus.Configured.INSTANCE;
        }
        return value instanceof ConfigState.Failed ? ConfigurationStatus.Failed.INSTANCE : ConfigurationStatus.Pending.INSTANCE;
    }

    public final Flow<ConfigurationStatus> getConfigurationStateListener() {
        final StateFlow<ConfigState> configState$superwall_release = getDependencyContainer$superwall_release().getConfigManager().getConfigState$superwall_release();
        return new Flow<ConfigurationStatus>() { // from class: com.superwall.sdk.Superwall$special$$inlined$map$1

            /* JADX INFO: renamed from: com.superwall.sdk.Superwall$special$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.superwall.sdk.Superwall$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.Superwall$special$$inlined$map$1$2", f = "Superwall.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
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
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    ConfigurationStatus configurationStatus;
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
                        ConfigState configState = (ConfigState) obj;
                        if (configState instanceof ConfigState.Retrieved) {
                            configurationStatus = ConfigurationStatus.Configured.INSTANCE;
                        } else {
                            configurationStatus = configState instanceof ConfigState.Failed ? ConfigurationStatus.Failed.INSTANCE : ConfigurationStatus.Pending.INSTANCE;
                        }
                        anonymousClass1.label = 1;
                        if (flowCollector.emit(configurationStatus, anonymousClass1) == coroutine_suspended) {
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
            public Object collect(FlowCollector<? super ConfigurationStatus> flowCollector, Continuation continuation) {
                Object objCollect = configState$superwall_release.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
    }

    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JZ\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00132\u001c\b\u0002\u0010\"\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180$\u0012\u0004\u0012\u00020\u0018\u0018\u00010#H\u0007J\u001b\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00050$2\u0006\u0010&\u001a\u00020'¢\u0006\u0004\b(\u0010)J\b\u0010*\u001a\u00020\u0018H\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0014\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006+"}, d2 = {"Lcom/superwall/sdk/Superwall$Companion;", "", "<init>", "()V", "initialized", "", "getInitialized", "()Z", "setInitialized", "(Z)V", "_hasInitialized", "Lkotlinx/coroutines/flow/MutableStateFlow;", "hasInitialized", "Lkotlinx/coroutines/flow/Flow;", "getHasInitialized", "()Lkotlinx/coroutines/flow/Flow;", "_instance", "Lcom/superwall/sdk/Superwall;", "retainedActivityProvider", "Lcom/superwall/sdk/misc/ActivityProvider;", "instance", "getInstance", "()Lcom/superwall/sdk/Superwall;", "configure", "", "applicationContext", "Landroid/app/Application;", "apiKey", "", "purchaseController", "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;", "options", "Lcom/superwall/sdk/config/options/SuperwallOptions;", "activityProvider", "completion", "Lkotlin/Function1;", "Lkotlin/Result;", "handleDeepLink", "uri", "Landroid/net/Uri;", "handleDeepLink-IoAF18A", "(Landroid/net/Uri;)Ljava/lang/Object;", "teardown", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void configure(Application applicationContext, String apiKey) {
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            Intrinsics.checkNotNullParameter(apiKey, "apiKey");
            configure$default(this, applicationContext, apiKey, null, null, null, null, 60, null);
        }

        @JvmStatic
        public final void configure(Application applicationContext, String apiKey, PurchaseController purchaseController) {
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            Intrinsics.checkNotNullParameter(apiKey, "apiKey");
            configure$default(this, applicationContext, apiKey, purchaseController, null, null, null, 56, null);
        }

        @JvmStatic
        public final void configure(Application applicationContext, String apiKey, PurchaseController purchaseController, SuperwallOptions superwallOptions) {
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            Intrinsics.checkNotNullParameter(apiKey, "apiKey");
            configure$default(this, applicationContext, apiKey, purchaseController, superwallOptions, null, null, 48, null);
        }

        @JvmStatic
        public final void configure(Application applicationContext, String apiKey, PurchaseController purchaseController, SuperwallOptions superwallOptions, ActivityProvider activityProvider) {
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            Intrinsics.checkNotNullParameter(apiKey, "apiKey");
            configure$default(this, applicationContext, apiKey, purchaseController, superwallOptions, activityProvider, null, 32, null);
        }

        private Companion() {
        }

        public final boolean getInitialized() {
            return Superwall.initialized;
        }

        public final void setInitialized(boolean z) {
            Superwall.initialized = z;
        }

        public final Flow<Boolean> getHasInitialized() {
            return Superwall.hasInitialized;
        }

        public final Superwall getInstance() {
            Superwall superwall = Superwall._instance;
            if (superwall != null) {
                return superwall;
            }
            throw new IllegalStateException("Superwall has not been initialized or configured.");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void configure$default(Companion companion, Application application, String str, PurchaseController purchaseController, SuperwallOptions superwallOptions, ActivityProvider activityProvider, Function1 function1, int i, Object obj) {
            if ((i & 4) != 0) {
                purchaseController = null;
            }
            if ((i & 8) != 0) {
                superwallOptions = null;
            }
            if ((i & 16) != 0) {
                activityProvider = null;
            }
            if ((i & 32) != 0) {
                function1 = null;
            }
            companion.configure(application, str, purchaseController, superwallOptions, activityProvider, function1);
        }

        @JvmStatic
        public final void configure(Application applicationContext, String apiKey, PurchaseController purchaseController, SuperwallOptions options, ActivityProvider activityProvider, Function1<? super Result<Unit>, Unit> completion) {
            Object objM11241constructorimpl;
            Object value;
            Object value2;
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            Intrinsics.checkNotNullParameter(apiKey, "apiKey");
            if (((Boolean) Superwall._hasInitialized.getValue()).booleanValue() && Superwall._instance == null) {
                MutableStateFlow mutableStateFlow = Superwall._hasInitialized;
                do {
                    value2 = mutableStateFlow.getValue();
                    ((Boolean) value2).booleanValue();
                } while (!mutableStateFlow.compareAndSet(value2, false));
            }
            if (Superwall._instance == null) {
                if (activityProvider == null) {
                    activityProvider = Superwall.retainedActivityProvider;
                }
                Superwall.retainedActivityProvider = null;
                Superwall._instance = new Superwall(applicationContext, apiKey, purchaseController, options, activityProvider, completion);
                Either<Unit, Throwable> either = getInstance().setup$superwall_release();
                if (either instanceof Either.Success) {
                    Result.Companion companion = Result.INSTANCE;
                    objM11241constructorimpl = Result.m11241constructorimpl(((Either.Success) either).getValue());
                } else {
                    if (!(either instanceof Either.Failure)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Result.Companion companion2 = Result.INSTANCE;
                    objM11241constructorimpl = Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) either).getError()));
                }
                Throwable thM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(objM11241constructorimpl);
                if (thM11244exceptionOrNullimpl == null) {
                    Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "SDK Version - " + Superwall.INSTANCE.getInstance().getDependencyContainer$superwall_release().getDeviceHelper().getSdkVersion(), null, null, 24, null);
                    Superwall.INSTANCE.setInitialized(true);
                    MutableStateFlow mutableStateFlow2 = Superwall._hasInitialized;
                    do {
                        value = mutableStateFlow2.getValue();
                        ((Boolean) value).booleanValue();
                    } while (!mutableStateFlow2.compareAndSet(value, true));
                    return;
                }
                if (completion != null) {
                    Result.Companion companion3 = Result.INSTANCE;
                    completion.invoke(Result.m11240boximpl(Result.m11241constructorimpl(ResultKt.createFailure(thM11244exceptionOrNullimpl))));
                }
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.superwallCore, "Superwall SDK failed to initialize - " + thM11244exceptionOrNullimpl.getMessage(), null, thM11244exceptionOrNullimpl, 8, null);
                return;
            }
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.superwallCore, "Superwall.configure called multiple times. Please make sure you only call this once on app launch.", null, null, 24, null);
            if (completion != null) {
                Result.Companion companion4 = Result.INSTANCE;
                completion.invoke(Result.m11240boximpl(Result.m11241constructorimpl(Unit.INSTANCE)));
            }
        }

        /* JADX INFO: renamed from: handleDeepLink-IoAF18A, reason: not valid java name */
        public final Object m10571handleDeepLinkIoAF18A(Uri uri) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            return DeepLinkRouter.INSTANCE.m10600handleDeepLinkIoAF18A(uri);
        }

        @JvmStatic
        public final void teardown() {
            Object value;
            DependencyContainer dependencyContainer$superwall_release;
            synchronized (this) {
                Companion companion = Superwall.INSTANCE;
                Superwall superwall = Superwall._instance;
                Superwall.retainedActivityProvider = (superwall == null || (dependencyContainer$superwall_release = superwall.getDependencyContainer$superwall_release()) == null) ? null : dependencyContainer$superwall_release.getActivityProvider();
                Superwall superwall2 = Superwall._instance;
                if (superwall2 != null) {
                    superwall2.teardown$superwall_release();
                }
                Companion companion2 = Superwall.INSTANCE;
                Superwall._instance = null;
                Superwall.INSTANCE.setInitialized(false);
                MutableStateFlow mutableStateFlow = Superwall._hasInitialized;
                do {
                    value = mutableStateFlow.getValue();
                    ((Boolean) value).booleanValue();
                } while (!mutableStateFlow.compareAndSet(value, false));
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    static {
        MutableStateFlow<Boolean> MutableStateFlow = StateFlowKt.MutableStateFlow(false);
        _hasInitialized = MutableStateFlow;
        final MutableStateFlow<Boolean> mutableStateFlow = MutableStateFlow;
        hasInitialized = FlowKt.take(new Flow<Boolean>() { // from class: com.superwall.sdk.Superwall$special$$inlined$filter$1

            /* JADX INFO: renamed from: com.superwall.sdk.Superwall$special$$inlined$filter$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.superwall.sdk.Superwall$special$$inlined$filter$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.Superwall$special$$inlined$filter$1$2", f = "Superwall.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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
                        if (((Boolean) obj).booleanValue()) {
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
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
            public Object collect(FlowCollector<? super Boolean> flowCollector, Continuation continuation) {
                Object objCollect = mutableStateFlow.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, 1);
    }

    public final DependencyContainer getDependencyContainer$superwall_release() {
        DependencyContainer dependencyContainer = this._dependencyContainer;
        if (dependencyContainer != null) {
            return dependencyContainer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("_dependencyContainer");
        return null;
    }

    /* JADX INFO: renamed from: getSerialTaskManager$superwall_release, reason: from getter */
    public final SerialTaskManager getSerialTaskManager() {
        return this.serialTaskManager;
    }

    public final Either<Unit, Throwable> setup$superwall_release() {
        Either.Failure failure;
        synchronized (this) {
            try {
                try {
                    this._dependencyContainer = new DependencyContainer(this.context, this.purchaseController, this._options, this.activityProvider, this.apiKey);
                    getDependencyContainer$superwall_release().getStorage().configure(this.apiKey);
                    SubscriptionStatus.Unknown unknown = (SubscriptionStatus) getDependencyContainer$superwall_release().getStorage().read(StoredSubscriptionStatus.INSTANCE);
                    if (unknown == null) {
                        unknown = SubscriptionStatus.Unknown.INSTANCE;
                    }
                    MutableStateFlow<CustomerInfo> mutableStateFlow = this._customerInfo;
                    CustomerInfo customerInfoEmpty = (CustomerInfo) getDependencyContainer$superwall_release().getStorage().read(LatestCustomerInfo.INSTANCE);
                    if (customerInfoEmpty == null) {
                        customerInfoEmpty = CustomerInfo.INSTANCE.empty();
                    }
                    mutableStateFlow.setValue(customerInfoEmpty);
                    setSubscriptionStatus(unknown);
                    getDependencyContainer$superwall_release().getCustomerInfoManager$superwall_release().updateMergedCustomerInfo();
                    addListeners();
                    BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new Superwall$setup$1$1$1(this, null), 3, null);
                    failure = new Either.Success(Unit.INSTANCE);
                } catch (Exception e) {
                    e.printStackTrace();
                    throw e;
                }
            } catch (Throwable th) {
                if (ErrorTrackingKt.shouldLog(th)) {
                    Companion companion = INSTANCE;
                    if (companion.getInitialized()) {
                        ErrorTrackingKt.trackError(companion.getInstance(), th);
                    }
                }
                failure = new Either.Failure(th);
            }
        }
        return failure;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$addListeners$1, reason: invalid class name */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$addListeners$1", f = "Superwall.kt", i = {}, l = {734}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Superwall.this.new AnonymousClass1(continuation);
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
                if (FlowKt.drop(FlowKt.distinctUntilChanged(Superwall.this.getEntitlements().getStatus(), new Function2() { // from class: com.superwall.sdk.Superwall$addListeners$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return Boolean.valueOf(Superwall.AnonymousClass1.invokeSuspend$lambda$2((SubscriptionStatus) obj2, (SubscriptionStatus) obj3));
                    }
                }), 1).collect(new AnonymousClass2(Superwall.this), this) == coroutine_suspended) {
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

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean invokeSuspend$lambda$2(SubscriptionStatus subscriptionStatus, SubscriptionStatus subscriptionStatus2) {
            if (subscriptionStatus == subscriptionStatus2) {
                return true;
            }
            if (!(subscriptionStatus instanceof SubscriptionStatus.Active) || !(subscriptionStatus2 instanceof SubscriptionStatus.Active)) {
                return subscriptionStatus.getClass() == subscriptionStatus2.getClass();
            }
            SubscriptionStatus.Active active = (SubscriptionStatus.Active) subscriptionStatus;
            SubscriptionStatus.Active active2 = (SubscriptionStatus.Active) subscriptionStatus2;
            if (active.getEntitlements().size() != active2.getEntitlements().size()) {
                return false;
            }
            Set<Entitlement> entitlements = active2.getEntitlements();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(entitlements, 10)), 16));
            for (Object obj : entitlements) {
                linkedHashMap.put(((Entitlement) obj).getId(), obj);
            }
            Set<Entitlement> entitlements2 = active.getEntitlements();
            if ((entitlements2 instanceof Collection) && entitlements2.isEmpty()) {
                return true;
            }
            for (Entitlement entitlement : entitlements2) {
                Entitlement entitlement2 = (Entitlement) linkedHashMap.get(entitlement.getId());
                if (entitlement2 == null || entitlement.isDistinct(entitlement2)) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: renamed from: com.superwall.sdk.Superwall$addListeners$1$2, reason: invalid class name */
        /* JADX INFO: compiled from: Superwall.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        static final class AnonymousClass2<T> implements FlowCollector {
            final /* synthetic */ Superwall this$0;

            AnonymousClass2(Superwall superwall) {
                this.this$0 = superwall;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0014  */
            /* JADX WARN: Code restructure failed: missing block: B:24:0x00a6, code lost:
            
                if (r8.recheckPreloadIfNeeded(r0) == r1) goto L25;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(com.superwall.sdk.models.entitlements.SubscriptionStatus r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
                /*
                    r7 = this;
                    boolean r0 = r9 instanceof com.superwall.sdk.Superwall$addListeners$1$2$emit$1
                    if (r0 == 0) goto L14
                    r0 = r9
                    com.superwall.sdk.Superwall$addListeners$1$2$emit$1 r0 = (com.superwall.sdk.Superwall$addListeners$1$2$emit$1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r1 = r1 & r2
                    if (r1 == 0) goto L14
                    int r9 = r0.label
                    int r9 = r9 - r2
                    r0.label = r9
                    goto L19
                L14:
                    com.superwall.sdk.Superwall$addListeners$1$2$emit$1 r0 = new com.superwall.sdk.Superwall$addListeners$1$2$emit$1
                    r0.<init>(r7, r9)
                L19:
                    java.lang.Object r9 = r0.result
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r2 = r0.label
                    r3 = 1
                    r4 = 0
                    r5 = 2
                    if (r2 == 0) goto L44
                    if (r2 == r3) goto L37
                    if (r2 != r5) goto L2f
                    kotlin.ResultKt.throwOnFailure(r9)
                    goto La9
                L2f:
                    java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                    java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                    r8.<init>(r9)
                    throw r8
                L37:
                    java.lang.Object r8 = r0.L$0
                    com.superwall.sdk.Superwall$addListeners$1$2 r8 = (com.superwall.sdk.Superwall.AnonymousClass1.AnonymousClass2) r8
                    kotlin.ResultKt.throwOnFailure(r9)
                    kotlin.Result r9 = (kotlin.Result) r9
                    r9.getValue()
                    goto L94
                L44:
                    kotlin.ResultKt.throwOnFailure(r9)
                    com.superwall.sdk.Superwall r9 = r7.this$0
                    com.superwall.sdk.dependencies.DependencyContainer r9 = r9.getDependencyContainer$superwall_release()
                    com.superwall.sdk.storage.LocalStorage r9 = r9.getStorage()
                    com.superwall.sdk.storage.StoredSubscriptionStatus r2 = com.superwall.sdk.storage.StoredSubscriptionStatus.INSTANCE
                    com.superwall.sdk.storage.Storable r2 = (com.superwall.sdk.storage.Storable) r2
                    java.lang.Object r9 = r9.read(r2)
                    com.superwall.sdk.models.entitlements.SubscriptionStatus r9 = (com.superwall.sdk.models.entitlements.SubscriptionStatus) r9
                    if (r9 != 0) goto L61
                    com.superwall.sdk.models.entitlements.SubscriptionStatus$Unknown r9 = com.superwall.sdk.models.entitlements.SubscriptionStatus.Unknown.INSTANCE
                    com.superwall.sdk.models.entitlements.SubscriptionStatus r9 = (com.superwall.sdk.models.entitlements.SubscriptionStatus) r9
                L61:
                    com.superwall.sdk.Superwall r2 = r7.this$0
                    com.superwall.sdk.dependencies.DependencyContainer r2 = r2.getDependencyContainer$superwall_release()
                    com.superwall.sdk.storage.LocalStorage r2 = r2.getStorage()
                    com.superwall.sdk.storage.StoredSubscriptionStatus r6 = com.superwall.sdk.storage.StoredSubscriptionStatus.INSTANCE
                    com.superwall.sdk.storage.Storable r6 = (com.superwall.sdk.storage.Storable) r6
                    r2.write(r6, r8)
                    com.superwall.sdk.Superwall r2 = r7.this$0
                    com.superwall.sdk.dependencies.DependencyContainer r2 = r2.getDependencyContainer$superwall_release()
                    com.superwall.sdk.delegate.SuperwallDelegateAdapter r2 = r2.getDelegateAdapter()
                    r2.subscriptionStatusDidChange(r9, r8)
                    com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$SubscriptionStatusDidChange r9 = new com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$SubscriptionStatusDidChange
                    r9.<init>(r8, r4, r5, r4)
                    com.superwall.sdk.Superwall r8 = r7.this$0
                    com.superwall.sdk.analytics.internal.trackable.Trackable r9 = (com.superwall.sdk.analytics.internal.trackable.Trackable) r9
                    r0.L$0 = r7
                    r0.label = r3
                    java.lang.Object r8 = com.superwall.sdk.analytics.internal.TrackingKt.track(r8, r9, r0)
                    if (r8 != r1) goto L93
                    goto La8
                L93:
                    r8 = r7
                L94:
                    com.superwall.sdk.Superwall r8 = r8.this$0
                    com.superwall.sdk.dependencies.DependencyContainer r8 = r8.getDependencyContainer$superwall_release()
                    com.superwall.sdk.config.ConfigManager r8 = r8.getConfigManager()
                    r0.L$0 = r4
                    r0.label = r5
                    java.lang.Object r8 = r8.recheckPreloadIfNeeded(r0)
                    if (r8 != r1) goto La9
                La8:
                    return r1
                La9:
                    kotlin.Unit r8 = kotlin.Unit.INSTANCE
                    return r8
                */
                throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.Superwall.AnonymousClass1.AnonymousClass2.emit(com.superwall.sdk.models.entitlements.SubscriptionStatus, kotlin.coroutines.Continuation):java.lang.Object");
            }

            @Override // kotlinx.coroutines.flow.FlowCollector
            public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
                return emit((SubscriptionStatus) obj, (Continuation<? super Unit>) continuation);
            }
        }
    }

    private final void addListeners() {
        ScopesKt.launchWithTracking(getIoScope$superwall_release(), new AnonymousClass1(null));
        ScopesKt.launchWithTracking(getIoScope$superwall_release(), new AnonymousClass2(null));
        registerConfigurationChangeListener();
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$addListeners$2, reason: invalid class name */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$addListeners$2", f = "Superwall.kt", i = {}, l = {757}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Superwall.this.new AnonymousClass2(continuation);
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
                final Flow flowFilterNotNull = FlowKt.filterNotNull(FlowKt.scan(FlowKt.distinctUntilChanged(FlowKt.asSharedFlow(Superwall.this.get_customerInfo$superwall_release())), null, new AnonymousClass1(null)));
                this.label = 1;
                if (new Flow<Pair<? extends CustomerInfo, ? extends CustomerInfo>>() { // from class: com.superwall.sdk.Superwall$addListeners$2$invokeSuspend$$inlined$filter$1

                    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$addListeners$2$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                    public static final class AnonymousClass2<T> implements FlowCollector {
                        final /* synthetic */ FlowCollector $this_unsafeFlow;

                        /* JADX INFO: renamed from: com.superwall.sdk.Superwall$addListeners$2$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                        @DebugMetadata(c = "com.superwall.sdk.Superwall$addListeners$2$invokeSuspend$$inlined$filter$1$2", f = "Superwall.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            Object L$0;
                            Object L$1;
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
                                if (((Pair) obj).getFirst() != null) {
                                    anonymousClass1.label = 1;
                                    if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
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
                    public Object collect(FlowCollector<? super Pair<? extends CustomerInfo, ? extends CustomerInfo>> flowCollector, Continuation continuation) {
                        Object objCollect = flowFilterNotNull.collect(new AnonymousClass2(flowCollector), continuation);
                        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                    }
                }.collect(new AnonymousClass3(Superwall.this), this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.superwall.sdk.Superwall$addListeners$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: Superwall.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00012\u0016\u0010\u0003\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "previousPair", "newStatus"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.Superwall$addListeners$2$1", f = "Superwall.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function3<Pair<? extends CustomerInfo, ? extends CustomerInfo>, CustomerInfo, Continuation<? super Pair<? extends CustomerInfo, ? extends CustomerInfo>>, Object> {
            /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                super(3, continuation);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Pair<? extends CustomerInfo, ? extends CustomerInfo> pair, CustomerInfo customerInfo, Continuation<? super Pair<? extends CustomerInfo, ? extends CustomerInfo>> continuation) {
                return invoke2((Pair<CustomerInfo, CustomerInfo>) pair, customerInfo, (Continuation<? super Pair<CustomerInfo, CustomerInfo>>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Pair<CustomerInfo, CustomerInfo> pair, CustomerInfo customerInfo, Continuation<? super Pair<CustomerInfo, CustomerInfo>> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
                anonymousClass1.L$0 = pair;
                anonymousClass1.L$1 = customerInfo;
                return anonymousClass1.invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                Pair pair = (Pair) this.L$0;
                return new Pair(pair != null ? (CustomerInfo) pair.getSecond() : null, (CustomerInfo) this.L$1);
            }
        }

        /* JADX INFO: renamed from: com.superwall.sdk.Superwall$addListeners$2$3, reason: invalid class name */
        /* JADX INFO: compiled from: Superwall.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        static final class AnonymousClass3<T> implements FlowCollector {
            final /* synthetic */ Superwall this$0;

            AnonymousClass3(Superwall superwall) {
                this.this$0 = superwall;
            }

            @Override // kotlinx.coroutines.flow.FlowCollector
            public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
                return emit((Pair<CustomerInfo, CustomerInfo>) obj, (Continuation<? super Unit>) continuation);
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0014  */
            /* JADX WARN: Code restructure failed: missing block: B:21:0x00a0, code lost:
            
                if (r12.recheckPreloadIfNeeded(r0) == r1) goto L22;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(kotlin.Pair<com.superwall.sdk.models.customer.CustomerInfo, com.superwall.sdk.models.customer.CustomerInfo> r12, kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
                /*
                    r11 = this;
                    boolean r0 = r13 instanceof com.superwall.sdk.Superwall$addListeners$2$3$emit$1
                    if (r0 == 0) goto L14
                    r0 = r13
                    com.superwall.sdk.Superwall$addListeners$2$3$emit$1 r0 = (com.superwall.sdk.Superwall$addListeners$2$3$emit$1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r1 = r1 & r2
                    if (r1 == 0) goto L14
                    int r13 = r0.label
                    int r13 = r13 - r2
                    r0.label = r13
                    goto L19
                L14:
                    com.superwall.sdk.Superwall$addListeners$2$3$emit$1 r0 = new com.superwall.sdk.Superwall$addListeners$2$3$emit$1
                    r0.<init>(r11, r13)
                L19:
                    java.lang.Object r13 = r0.result
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r2 = r0.label
                    r3 = 2
                    r4 = 1
                    if (r2 == 0) goto L43
                    if (r2 == r4) goto L36
                    if (r2 != r3) goto L2e
                    kotlin.ResultKt.throwOnFailure(r13)
                    goto La3
                L2e:
                    java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                    java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                    r12.<init>(r13)
                    throw r12
                L36:
                    java.lang.Object r12 = r0.L$0
                    com.superwall.sdk.Superwall$addListeners$2$3 r12 = (com.superwall.sdk.Superwall.AnonymousClass2.AnonymousClass3) r12
                    kotlin.ResultKt.throwOnFailure(r13)
                    kotlin.Result r13 = (kotlin.Result) r13
                    r13.getValue()
                    goto L8d
                L43:
                    kotlin.ResultKt.throwOnFailure(r13)
                    java.lang.Object r13 = r12.component1()
                    r6 = r13
                    com.superwall.sdk.models.customer.CustomerInfo r6 = (com.superwall.sdk.models.customer.CustomerInfo) r6
                    java.lang.Object r12 = r12.component2()
                    r7 = r12
                    com.superwall.sdk.models.customer.CustomerInfo r7 = (com.superwall.sdk.models.customer.CustomerInfo) r7
                    com.superwall.sdk.Superwall r12 = r11.this$0
                    com.superwall.sdk.dependencies.DependencyContainer r12 = r12.getDependencyContainer$superwall_release()
                    com.superwall.sdk.storage.LocalStorage r12 = r12.getStorage()
                    com.superwall.sdk.storage.LatestCustomerInfo r13 = com.superwall.sdk.storage.LatestCustomerInfo.INSTANCE
                    com.superwall.sdk.storage.Storable r13 = (com.superwall.sdk.storage.Storable) r13
                    r12.write(r13, r7)
                    com.superwall.sdk.Superwall r12 = r11.this$0
                    com.superwall.sdk.dependencies.DependencyContainer r12 = r12.getDependencyContainer$superwall_release()
                    com.superwall.sdk.delegate.SuperwallDelegateAdapter r12 = r12.getDelegateAdapter()
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
                    r12.customerInfoDidChange(r6, r7)
                    com.superwall.sdk.Superwall r12 = r11.this$0
                    com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$CustomerInfoDidChange r5 = new com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$CustomerInfoDidChange
                    r9 = 4
                    r10 = 0
                    r8 = 0
                    r5.<init>(r6, r7, r8, r9, r10)
                    com.superwall.sdk.analytics.internal.trackable.Trackable r5 = (com.superwall.sdk.analytics.internal.trackable.Trackable) r5
                    r0.L$0 = r11
                    r0.label = r4
                    java.lang.Object r12 = com.superwall.sdk.analytics.internal.TrackingKt.track(r12, r5, r0)
                    if (r12 != r1) goto L8c
                    goto La2
                L8c:
                    r12 = r11
                L8d:
                    com.superwall.sdk.Superwall r12 = r12.this$0
                    com.superwall.sdk.dependencies.DependencyContainer r12 = r12.getDependencyContainer$superwall_release()
                    com.superwall.sdk.config.ConfigManager r12 = r12.getConfigManager()
                    r13 = 0
                    r0.L$0 = r13
                    r0.label = r3
                    java.lang.Object r12 = r12.recheckPreloadIfNeeded(r0)
                    if (r12 != r1) goto La3
                La2:
                    return r1
                La3:
                    kotlin.Unit r12 = kotlin.Unit.INSTANCE
                    return r12
                */
                throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.Superwall.AnonymousClass2.AnonymousClass3.emit(kotlin.Pair, kotlin.coroutines.Continuation):java.lang.Object");
            }
        }
    }

    private final void registerConfigurationChangeListener() {
        ComponentCallbacks2 componentCallbacks2 = new ComponentCallbacks2() { // from class: com.superwall.sdk.Superwall$registerConfigurationChangeListener$listener$1
            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }

            @Override // android.content.ComponentCallbacks2
            public void onTrimMemory(int level) {
            }

            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration newConfig) {
                Intrinsics.checkNotNullParameter(newConfig, "newConfig");
                ScopesKt.launchWithTracking(this.this$0.getIoScope$superwall_release(), new Superwall$registerConfigurationChangeListener$listener$1$onConfigurationChanged$1(this.this$0, null));
            }
        };
        this.configurationChangeListener = componentCallbacks2;
        this.context.getApplicationContext().registerComponentCallbacks(componentCallbacks2);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$togglePaywallSpinner$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$togglePaywallSpinner$1", f = "Superwall.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C04521 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isHidden;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04521(boolean z, Continuation<? super C04521> continuation) {
            super(2, continuation);
            this.$isHidden = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Superwall.this.new C04521(this.$isHidden, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04521) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            PaywallView currentView = Superwall.this.getDependencyContainer$superwall_release().getPaywallManager().getCurrentView();
            if (currentView == null) {
                return Unit.INSTANCE;
            }
            currentView.updateState(new PaywallViewState.Updates.ToggleSpinner(this.$isHidden));
            return Unit.INSTANCE;
        }
    }

    public final void togglePaywallSpinner(boolean isHidden) {
        ScopesKt.launchWithTracking(getIoScope$superwall_release(), new C04521(isHidden, null));
    }

    public final void setPlatformWrapper(String wrapper, String version) {
        Intrinsics.checkNotNullParameter(wrapper, "wrapper");
        Intrinsics.checkNotNullParameter(version, "version");
        try {
            getDependencyContainer$superwall_release().getDeviceHelper().setPlatformWrapper(wrapper);
            getDependencyContainer$superwall_release().getDeviceHelper().setPlatformWrapperVersion(version);
            new Either.Success(BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new Superwall$setPlatformWrapper$1$1(this, null), 3, null));
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th)) {
                Companion companion = INSTANCE;
                if (companion.getInitialized()) {
                    ErrorTrackingKt.trackError(companion.getInstance(), th);
                }
            }
            new Either.Failure(th);
        }
    }

    public final void setInterfaceStyle(InterfaceStyle interfaceStyle) {
        try {
            getDependencyContainer$superwall_release().getDeviceHelper().setInterfaceStyleOverride(interfaceStyle);
            new Either.Success(BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new Superwall$setInterfaceStyle$1$1(this, null), 3, null));
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th)) {
                Companion companion = INSTANCE;
                if (companion.getInitialized()) {
                    ErrorTrackingKt.trackError(companion.getInstance(), th);
                }
            }
            new Either.Failure(th);
        }
    }

    public final void cancelAllScheduledNotifications() {
        try {
            new Either.Success(WorkManager.getInstance(this.context).cancelAllWorkByTag(SuperwallPaywallActivity.NOTIFICATION_CHANNEL_ID));
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th)) {
                Companion companion = INSTANCE;
                if (companion.getInitialized()) {
                    ErrorTrackingKt.trackError(companion.getInstance(), th);
                }
            }
            new Either.Failure(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void showAlert$default(Superwall superwall, String str, String str2, String str3, String str4, Function0 function0, Function0 function1, int i, Object obj) {
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
        superwall.showAlert(str, str2, str3, str4, function0, function1);
    }

    public final void showAlert(String title, String message, String actionTitle, String closeActionTitle, Function0<Unit> action, Function0<Unit> onClose) {
        Intrinsics.checkNotNullParameter(closeActionTitle, "closeActionTitle");
        PaywallView paywallView = getPaywallView();
        if (paywallView != null) {
            paywallView.showAlert(title, message, actionTitle, closeActionTitle, action, onClose);
        }
    }

    public final void reset() {
        try {
            reset$superwall_release(false);
            new Either.Success(Unit.INSTANCE);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th)) {
                Companion companion = INSTANCE;
                if (companion.getInitialized()) {
                    ErrorTrackingKt.trackError(companion.getInstance(), th);
                }
            }
            new Either.Failure(th);
        }
    }

    public static /* synthetic */ void reset$superwall_release$default(Superwall superwall, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        superwall.reset$superwall_release(z);
    }

    public final void reset$superwall_release(boolean duringIdentify) {
        Object objLaunch$default;
        try {
            if (!duringIdentify) {
                getDependencyContainer$superwall_release().getIdentityManager().reset();
                objLaunch$default = Unit.INSTANCE;
            } else {
                getDependencyContainer$superwall_release().getStorage().reset();
                getDependencyContainer$superwall_release().getPaywallManager().resetCache();
                this.presentationItems.reset();
                getDependencyContainer$superwall_release().getConfigManager().reset();
                getDependencyContainer$superwall_release().getReedemer().clear(RedemptionOwnershipType.AppUser);
                objLaunch$default = BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new Superwall$reset$2$1(this, null), 3, null);
            }
            new Either.Success(objLaunch$default);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th)) {
                Companion companion = INSTANCE;
                if (companion.getInitialized()) {
                    ErrorTrackingKt.trackError(companion.getInstance(), th);
                }
            }
            new Either.Failure(th);
        }
    }

    public final void teardown$superwall_release() {
        try {
            reset$superwall_release(false);
            getDependencyContainer$superwall_release().getPaywallRequestManager().resetCache$superwall_release();
            ComponentCallbacks2 componentCallbacks2 = this.configurationChangeListener;
            Unit unit = null;
            if (componentCallbacks2 != null) {
                this.context.getApplicationContext().unregisterComponentCallbacks(componentCallbacks2);
                this.configurationChangeListener = null;
                unit = Unit.INSTANCE;
            }
            new Either.Success(unit);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th)) {
                Companion companion = INSTANCE;
                if (companion.getInitialized()) {
                    ErrorTrackingKt.trackError(companion.getInstance(), th);
                }
            }
            new Either.Failure(th);
        }
    }

    /* JADX INFO: renamed from: handleDeepLink-IoAF18A, reason: not valid java name */
    public final Object m10564handleDeepLinkIoAF18A(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return DeepLinkRouter.INSTANCE.m10600handleDeepLinkIoAF18A(uri);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$preloadAllPaywalls$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$preloadAllPaywalls$1", f = "Superwall.kt", i = {}, l = {975}, m = "invokeSuspend", n = {}, s = {})
    static final class C04451 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C04451(Continuation<? super C04451> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Superwall.this.new C04451(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04451) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (Superwall.this.getDependencyContainer$superwall_release().getConfigManager().preloadAllPaywalls(this) == coroutine_suspended) {
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

    public final void preloadAllPaywalls() {
        ScopesKt.launchWithTracking(getIoScope$superwall_release(), new C04451(null));
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$preloadPaywalls$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$preloadPaywalls$1", f = "Superwall.kt", i = {}, l = {991}, m = "invokeSuspend", n = {}, s = {})
    static final class C04461 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Set<String> $placementNames;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04461(Set<String> set, Continuation<? super C04461> continuation) {
            super(2, continuation);
            this.$placementNames = set;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Superwall.this.new C04461(this.$placementNames, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04461) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (Superwall.this.getDependencyContainer$superwall_release().getConfigManager().preloadPaywallsByNames(this.$placementNames, this) == coroutine_suspended) {
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

    public final void preloadPaywalls(Set<String> placementNames) {
        Intrinsics.checkNotNullParameter(placementNames, "placementNames");
        ScopesKt.launchWithTracking(getIoScope$superwall_release(), new C04461(placementNames, null));
    }

    /* JADX INFO: renamed from: getAssignments-d1pmJ48, reason: not valid java name */
    public final Object m10561getAssignmentsd1pmJ48() {
        Either failure;
        try {
            Map<String, Experiment.Variant> confirmedAssignments = getDependencyContainer$superwall_release().getStorage().getConfirmedAssignments();
            ArrayList arrayList = new ArrayList(confirmedAssignments.size());
            for (Map.Entry<String, Experiment.Variant> entry : confirmedAssignments.entrySet()) {
                arrayList.add(new ConfirmedAssignment(entry.getKey(), entry.getValue()));
            }
            failure = new Either.Success(arrayList);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th)) {
                Companion companion = INSTANCE;
                if (companion.getInitialized()) {
                    ErrorTrackingKt.trackError(companion.getInstance(), th);
                }
            }
            failure = new Either.Failure(th);
        }
        if (failure instanceof Either.Success) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m11241constructorimpl(((Either.Success) failure).getValue());
        }
        if (!(failure instanceof Either.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        Result.Companion companion3 = Result.INSTANCE;
        return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00d3 A[Catch: all -> 0x0175, TryCatch #0 {all -> 0x0175, blocks: (B:13:0x0039, B:40:0x0127, B:42:0x012d, B:35:0x00cd, B:37:0x00d3, B:50:0x0162, B:52:0x016d, B:44:0x013a, B:45:0x013e, B:47:0x0142, B:48:0x015c, B:49:0x0161, B:18:0x004a, B:25:0x0067, B:27:0x0075, B:30:0x007d, B:31:0x009c, B:33:0x00a2, B:34:0x00bd, B:51:0x0169, B:21:0x0056), top: B:70:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0162 A[Catch: all -> 0x0175, TryCatch #0 {all -> 0x0175, blocks: (B:13:0x0039, B:40:0x0127, B:42:0x012d, B:35:0x00cd, B:37:0x00d3, B:50:0x0162, B:52:0x016d, B:44:0x013a, B:45:0x013e, B:47:0x0142, B:48:0x015c, B:49:0x0161, B:18:0x004a, B:25:0x0067, B:27:0x0075, B:30:0x007d, B:31:0x009c, B:33:0x00a2, B:34:0x00bd, B:51:0x0169, B:21:0x0056), top: B:70:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0196  */
    /* JADX WARN: Code duplicated, block: B:64:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:66:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:68:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0124, code lost:
    
        if (r0 == r3) goto L39;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0124 -> B:40:0x0127). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: confirmAllAssignments-IoAF18A, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m10559confirmAllAssignmentsIoAF18A(kotlin.coroutines.Continuation<? super kotlin.Result<? extends java.util.List<com.superwall.sdk.models.assignment.ConfirmedAssignment>>> r20) {
        /*
            Method dump skipped, instruction units count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.Superwall.m10559confirmAllAssignmentsIoAF18A(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$confirmAllAssignments$3, reason: invalid class name */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$confirmAllAssignments$3", f = "Superwall.kt", i = {}, l = {1074}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Result<? extends List<ConfirmedAssignment>>, Unit> $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(Function1<? super Result<? extends List<ConfirmedAssignment>>, Unit> function1, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$callback = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Superwall.this.new AnonymousClass3(this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM10559confirmAllAssignmentsIoAF18A;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                objM10559confirmAllAssignmentsIoAF18A = Superwall.this.m10559confirmAllAssignmentsIoAF18A(this);
                if (objM10559confirmAllAssignmentsIoAF18A == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objM10559confirmAllAssignmentsIoAF18A = ((Result) obj).getValue();
            }
            this.$callback.invoke(Result.m11240boximpl(objM10559confirmAllAssignmentsIoAF18A));
            return Unit.INSTANCE;
        }
    }

    public final void confirmAllAssignments(Superwall superwall, Function1<? super Result<? extends List<ConfirmedAssignment>>, Unit> callback) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(superwall.getIoScope$superwall_release(), null, null, superwall.new AnonymousClass3(callback, null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX INFO: renamed from: purchase-gIAlu-s, reason: not valid java name */
    public final Object m10565purchasegIAlus(ProductDetails productDetails, Continuation<? super Result<? extends PurchaseResult>> continuation) {
        C04471 c04471;
        Either failure;
        if (continuation instanceof C04471) {
            c04471 = (C04471) continuation;
            if ((c04471.label & Integer.MIN_VALUE) != 0) {
                c04471.label -= Integer.MIN_VALUE;
            } else {
                c04471 = new C04471(continuation);
            }
        } else {
            c04471 = new C04471(continuation);
        }
        Object objPurchase = c04471.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04471.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objPurchase);
                TransactionManager transactionManager = getDependencyContainer$superwall_release().getTransactionManager();
                TransactionManager.PurchaseSource.ExternalPurchase externalPurchase = new TransactionManager.PurchaseSource.ExternalPurchase(new StoreProduct(RawStoreProduct.INSTANCE.from(productDetails)));
                c04471.label = 1;
                objPurchase = transactionManager.purchase(externalPurchase, true, c04471);
                if (objPurchase == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objPurchase);
            }
            failure = new Either.Success((PurchaseResult) objPurchase);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th)) {
                Companion companion = INSTANCE;
                if (companion.getInitialized()) {
                    ErrorTrackingKt.trackError(companion.getInstance(), th);
                }
            }
            failure = new Either.Failure(th);
        }
        if (failure instanceof Either.Success) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m11241constructorimpl(((Either.Success) failure).getValue());
        }
        if (!(failure instanceof Either.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        Result.Companion companion3 = Result.INSTANCE;
        return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX INFO: renamed from: purchase-gIAlu-s, reason: not valid java name */
    public final Object m10566purchasegIAlus(StoreProduct storeProduct, Continuation<? super Result<? extends PurchaseResult>> continuation) {
        C04483 c04483;
        Either failure;
        if (continuation instanceof C04483) {
            c04483 = (C04483) continuation;
            if ((c04483.label & Integer.MIN_VALUE) != 0) {
                c04483.label -= Integer.MIN_VALUE;
            } else {
                c04483 = new C04483(continuation);
            }
        } else {
            c04483 = new C04483(continuation);
        }
        Object objPurchase = c04483.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04483.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objPurchase);
                TransactionManager transactionManager = getDependencyContainer$superwall_release().getTransactionManager();
                TransactionManager.PurchaseSource.ExternalPurchase externalPurchase = new TransactionManager.PurchaseSource.ExternalPurchase(storeProduct);
                c04483.label = 1;
                objPurchase = transactionManager.purchase(externalPurchase, true, c04483);
                if (objPurchase == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objPurchase);
            }
            failure = new Either.Success((PurchaseResult) objPurchase);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th)) {
                Companion companion = INSTANCE;
                if (companion.getInitialized()) {
                    ErrorTrackingKt.trackError(companion.getInstance(), th);
                }
            }
            failure = new Either.Failure(th);
        }
        if (failure instanceof Either.Success) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m11241constructorimpl(((Either.Success) failure).getValue());
        }
        if (!(failure instanceof Either.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        Result.Companion companion3 = Result.INSTANCE;
        return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008a, code lost:
    
        if (r9 == r2) goto L29;
     */
    /* JADX INFO: renamed from: purchase-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m10567purchasegIAlus(java.lang.String r8, kotlin.coroutines.Continuation<? super kotlin.Result<? extends com.superwall.sdk.delegate.PurchaseResult>> r9) {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.Superwall.m10567purchasegIAlus(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX INFO: renamed from: getProducts-gIAlu-s, reason: not valid java name */
    public final Object m10562getProductsgIAlus(String[] strArr, Continuation<? super Result<? extends Map<String, StoreProduct>>> continuation) {
        Superwall$getProducts$1 superwall$getProducts$1;
        Either failure;
        if (continuation instanceof Superwall$getProducts$1) {
            superwall$getProducts$1 = (Superwall$getProducts$1) continuation;
            if ((superwall$getProducts$1.label & Integer.MIN_VALUE) != 0) {
                superwall$getProducts$1.label -= Integer.MIN_VALUE;
            } else {
                superwall$getProducts$1 = new Superwall$getProducts$1(this, continuation);
            }
        } else {
            superwall$getProducts$1 = new Superwall$getProducts$1(this, continuation);
        }
        Superwall$getProducts$1 superwall$getProducts$2 = superwall$getProducts$1;
        Object productsWithoutPaywall$default = superwall$getProducts$2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = superwall$getProducts$2.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(productsWithoutPaywall$default);
                StoreManager storeManager = getDependencyContainer$superwall_release().getStoreManager();
                List list = ArraysKt.toList(strArr);
                superwall$getProducts$2.label = 1;
                productsWithoutPaywall$default = StoreKit.DefaultImpls.getProductsWithoutPaywall$default(storeManager, list, null, superwall$getProducts$2, 2, null);
                if (productsWithoutPaywall$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(productsWithoutPaywall$default);
            }
            failure = new Either.Success((Map) productsWithoutPaywall$default);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th)) {
                Companion companion = INSTANCE;
                if (companion.getInitialized()) {
                    ErrorTrackingKt.trackError(companion.getInstance(), th);
                }
            }
            failure = new Either.Failure(th);
        }
        if (failure instanceof Either.Success) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m11241constructorimpl(((Either.Success) failure).getValue());
        }
        if (!(failure instanceof Either.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        Result.Companion companion3 = Result.INSTANCE;
        return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$purchase$7, reason: invalid class name */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$purchase$7", f = "Superwall.kt", i = {}, l = {1180}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass7 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Result<? extends PurchaseResult>, Unit> $onFinished;
        final /* synthetic */ StoreProduct $product;
        Object L$0;
        int label;
        final /* synthetic */ Superwall this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass7(Function1<? super Result<? extends PurchaseResult>, Unit> function1, Superwall superwall, StoreProduct storeProduct, Continuation<? super AnonymousClass7> continuation) {
            super(2, continuation);
            this.$onFinished = function1;
            this.this$0 = superwall;
            this.$product = storeProduct;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass7(this.$onFinished, this.this$0, this.$product, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass7) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Function1<Result<? extends PurchaseResult>, Unit> function1;
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function1<Result<? extends PurchaseResult>, Unit> function2 = this.$onFinished;
                this.L$0 = function2;
                this.label = 1;
                Object objM10566purchasegIAlus = this.this$0.m10566purchasegIAlus(this.$product, this);
                if (objM10566purchasegIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                function1 = function2;
                value = objM10566purchasegIAlus;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) this.L$0;
                ResultKt.throwOnFailure(obj);
                value = ((Result) obj).getValue();
            }
            function1.invoke(Result.m11240boximpl(value));
            return Unit.INSTANCE;
        }
    }

    public final void purchase(StoreProduct product, Function1<? super Result<? extends PurchaseResult>, Unit> onFinished) {
        Intrinsics.checkNotNullParameter(product, "product");
        Intrinsics.checkNotNullParameter(onFinished, "onFinished");
        BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new AnonymousClass7(onFinished, this, product, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$purchase$8, reason: invalid class name */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$purchase$8", f = "Superwall.kt", i = {}, l = {1189}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass8 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Result<? extends PurchaseResult>, Unit> $onFinished;
        final /* synthetic */ ProductDetails $product;
        Object L$0;
        int label;
        final /* synthetic */ Superwall this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass8(Function1<? super Result<? extends PurchaseResult>, Unit> function1, Superwall superwall, ProductDetails productDetails, Continuation<? super AnonymousClass8> continuation) {
            super(2, continuation);
            this.$onFinished = function1;
            this.this$0 = superwall;
            this.$product = productDetails;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass8(this.$onFinished, this.this$0, this.$product, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass8) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Function1<Result<? extends PurchaseResult>, Unit> function1;
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function1<Result<? extends PurchaseResult>, Unit> function2 = this.$onFinished;
                this.L$0 = function2;
                this.label = 1;
                Object objM10565purchasegIAlus = this.this$0.m10565purchasegIAlus(this.$product, this);
                if (objM10565purchasegIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                function1 = function2;
                value = objM10565purchasegIAlus;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) this.L$0;
                ResultKt.throwOnFailure(obj);
                value = ((Result) obj).getValue();
            }
            function1.invoke(Result.m11240boximpl(value));
            return Unit.INSTANCE;
        }
    }

    public final void purchase(ProductDetails product, Function1<? super Result<? extends PurchaseResult>, Unit> onFinished) {
        Intrinsics.checkNotNullParameter(product, "product");
        Intrinsics.checkNotNullParameter(onFinished, "onFinished");
        BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new AnonymousClass8(onFinished, this, product, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$purchase$9, reason: invalid class name */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$purchase$9", f = "Superwall.kt", i = {}, l = {1198}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass9 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Result<? extends PurchaseResult>, Unit> $onFinished;
        final /* synthetic */ String $productId;
        Object L$0;
        int label;
        final /* synthetic */ Superwall this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass9(Function1<? super Result<? extends PurchaseResult>, Unit> function1, Superwall superwall, String str, Continuation<? super AnonymousClass9> continuation) {
            super(2, continuation);
            this.$onFinished = function1;
            this.this$0 = superwall;
            this.$productId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass9(this.$onFinished, this.this$0, this.$productId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass9) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Function1<Result<? extends PurchaseResult>, Unit> function1;
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function1<Result<? extends PurchaseResult>, Unit> function2 = this.$onFinished;
                this.L$0 = function2;
                this.label = 1;
                Object objM10567purchasegIAlus = this.this$0.m10567purchasegIAlus(this.$productId, this);
                if (objM10567purchasegIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                function1 = function2;
                value = objM10567purchasegIAlus;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) this.L$0;
                ResultKt.throwOnFailure(obj);
                value = ((Result) obj).getValue();
            }
            function1.invoke(Result.m11240boximpl(value));
            return Unit.INSTANCE;
        }
    }

    public final void purchase(String productId, Function1<? super Result<? extends PurchaseResult>, Unit> onFinished) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(onFinished, "onFinished");
        BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new AnonymousClass9(onFinished, this, productId, null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00df  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:56:0x0104  */
    /* JADX WARN: Code duplicated, block: B:58:0x010a  */
    /* JADX WARN: Code duplicated, block: B:60:0x0112  */
    /* JADX WARN: Code duplicated, block: B:62:0x0122  */
    /* JADX WARN: Code duplicated, block: B:64:0x012a  */
    /* JADX WARN: Code duplicated, block: B:67:0x013a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0086, code lost:
    
        if (r8.restorePurchases(r0) == r1) goto L31;
     */
    /* JADX INFO: renamed from: consume-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m10560consumegIAlus(java.lang.String r7, kotlin.coroutines.Continuation<? super kotlin.Result<java.lang.String>> r8) {
        /*
            Method dump skipped, instruction units count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.Superwall.m10560consumegIAlus(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$consume$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$consume$3", f = "Superwall.kt", i = {}, l = {1235}, m = "invokeSuspend", n = {}, s = {})
    static final class C04423 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Result<String>, Unit> $onConsumed;
        final /* synthetic */ String $purchaseToken;
        Object L$0;
        int label;
        final /* synthetic */ Superwall this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C04423(Function1<? super Result<String>, Unit> function1, Superwall superwall, String str, Continuation<? super C04423> continuation) {
            super(2, continuation);
            this.$onConsumed = function1;
            this.this$0 = superwall;
            this.$purchaseToken = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04423(this.$onConsumed, this.this$0, this.$purchaseToken, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04423) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Function1<Result<String>, Unit> function1;
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function1<Result<String>, Unit> function2 = this.$onConsumed;
                this.L$0 = function2;
                this.label = 1;
                Object objM10560consumegIAlus = this.this$0.m10560consumegIAlus(this.$purchaseToken, this);
                if (objM10560consumegIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                function1 = function2;
                value = objM10560consumegIAlus;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) this.L$0;
                ResultKt.throwOnFailure(obj);
                value = ((Result) obj).getValue();
            }
            function1.invoke(Result.m11240boximpl(value));
            return Unit.INSTANCE;
        }
    }

    public final void consume(String purchaseToken, Function1<? super Result<String>, Unit> onConsumed) {
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Intrinsics.checkNotNullParameter(onConsumed, "onConsumed");
        BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new C04423(onConsumed, this, purchaseToken, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$observe$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$observe$1", f = "Superwall.kt", i = {}, l = {1268, 1277, 1285}, m = "invokeSuspend", n = {}, s = {})
    static final class C04441 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PurchasingObserverState $state;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04441(PurchasingObserverState purchasingObserverState, Continuation<? super C04441> continuation) {
            super(2, continuation);
            this.$state = purchasingObserverState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Superwall.this.new C04441(this.$state, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04441) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x00a5  */
        /* JADX WARN: Code duplicated, block: B:39:0x00ef A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:41:? A[LOOP:0: B:24:0x009f->B:41:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x007d, code lost:
        
            if (r13.this$0.getDependencyContainer$superwall_release().getTransactionManager().prepareToPurchase$superwall_release(r14, new com.superwall.sdk.store.transactions.TransactionManager.PurchaseSource.ObserverMode(r14), r13) == r0) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00ed, code lost:
        
            if (r13.this$0.getDependencyContainer$superwall_release().getTransactionManager().handle$superwall_release(new com.superwall.sdk.delegate.InternalPurchaseResult.Failed(((com.superwall.sdk.store.PurchasingObserverState.PurchaseError) r13.$state).getError()), r13.$state, r13) == r0) goto L33;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            /*
                Method dump skipped, instruction units count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.Superwall.C04441.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void observe(PurchasingObserverState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        ScopesKt.launchWithTracking(getIoScope$superwall_release(), new C04441(state, null));
    }

    public final void observePurchaseStart(ProductDetails product) {
        Intrinsics.checkNotNullParameter(product, "product");
        observe(new PurchasingObserverState.PurchaseWillBegin(product));
    }

    public final void observePurchaseError(ProductDetails product, Throwable error) {
        Intrinsics.checkNotNullParameter(product, "product");
        Intrinsics.checkNotNullParameter(error, "error");
        observe(new PurchasingObserverState.PurchaseError(product, error));
    }

    public final void observePurchaseResult(BillingResult billingResult, List<? extends Purchase> purchases) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        Intrinsics.checkNotNullParameter(purchases, "purchases");
        observe(new PurchasingObserverState.PurchaseResult(billingResult, purchases));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX INFO: renamed from: restorePurchases-IoAF18A, reason: not valid java name */
    public final Object m10568restorePurchasesIoAF18A(Continuation<? super Result<? extends RestorationResult>> continuation) {
        C04501 c04501;
        Either failure;
        if (continuation instanceof C04501) {
            c04501 = (C04501) continuation;
            if ((c04501.label & Integer.MIN_VALUE) != 0) {
                c04501.label -= Integer.MIN_VALUE;
            } else {
                c04501 = new C04501(continuation);
            }
        } else {
            c04501 = new C04501(continuation);
        }
        Object objTryToRestorePurchases = c04501.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04501.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objTryToRestorePurchases);
                TransactionManager transactionManager = getDependencyContainer$superwall_release().getTransactionManager();
                c04501.label = 1;
                objTryToRestorePurchases = transactionManager.tryToRestorePurchases(null, c04501);
                if (objTryToRestorePurchases == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objTryToRestorePurchases);
            }
            failure = new Either.Success((RestorationResult) objTryToRestorePurchases);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th)) {
                Companion companion = INSTANCE;
                if (companion.getInitialized()) {
                    ErrorTrackingKt.trackError(companion.getInstance(), th);
                }
            }
            failure = new Either.Failure(th);
        }
        if (failure instanceof Either.Success) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m11241constructorimpl(((Either.Success) failure).getValue());
        }
        if (!(failure instanceof Either.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        Result.Companion companion3 = Result.INSTANCE;
        return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$restorePurchases$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$restorePurchases$3", f = "Superwall.kt", i = {}, l = {1355}, m = "invokeSuspend", n = {}, s = {})
    static final class C04513 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Result<? extends RestorationResult>, Unit> $onFinished;
        Object L$0;
        int label;
        final /* synthetic */ Superwall this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C04513(Function1<? super Result<? extends RestorationResult>, Unit> function1, Superwall superwall, Continuation<? super C04513> continuation) {
            super(2, continuation);
            this.$onFinished = function1;
            this.this$0 = superwall;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04513(this.$onFinished, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04513) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Function1<Result<? extends RestorationResult>, Unit> function1;
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function1<Result<? extends RestorationResult>, Unit> function2 = this.$onFinished;
                this.L$0 = function2;
                this.label = 1;
                Object objM10568restorePurchasesIoAF18A = this.this$0.m10568restorePurchasesIoAF18A(this);
                if (objM10568restorePurchasesIoAF18A == coroutine_suspended) {
                    return coroutine_suspended;
                }
                function1 = function2;
                value = objM10568restorePurchasesIoAF18A;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) this.L$0;
                ResultKt.throwOnFailure(obj);
                value = ((Result) obj).getValue();
            }
            function1.invoke(Result.m11240boximpl(value));
            return Unit.INSTANCE;
        }
    }

    public final Job restorePurchases(Function1<? super Result<? extends RestorationResult>, Unit> onFinished) {
        Intrinsics.checkNotNullParameter(onFinished, "onFinished");
        return BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new C04513(onFinished, this, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$eventDidOccur$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$eventDidOccur$2", f = "Superwall.kt", i = {3}, l = {1372, 1405, 1426, 1507}, m = "invokeSuspend", n = {"$this$launchWithTracking"}, s = {"L$0"})
    static final class C04432 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallWebEvent $paywallEvent;
        final /* synthetic */ PaywallView $paywallView;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ Superwall this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04432(PaywallWebEvent paywallWebEvent, PaywallView paywallView, Superwall superwall, Continuation<? super C04432> continuation) {
            super(2, continuation);
            this.$paywallEvent = paywallWebEvent;
            this.$paywallView = paywallView;
            this.this$0 = superwall;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C04432 c04432 = new C04432(this.$paywallEvent, this.$paywallView, this.this$0, continuation);
            c04432.L$0 = obj;
            return c04432;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04432) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0082, code lost:
        
            if (com.superwall.sdk.paywall.presentation.internal.InternalPresentationKt.dismiss$default(r16.$paywallView, new com.superwall.sdk.paywall.presentation.internal.state.PaywallResult.Declined(), com.superwall.sdk.paywall.presentation.PaywallCloseReason.ManualClose.INSTANCE, null, r16, 8, null) == r1) goto L78;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00e2, code lost:
        
            if (r16.this$0.getDependencyContainer$superwall_release().getTransactionManager().tryToRestorePurchases(r16.$paywallView, r16) == r1) goto L78;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0216, code lost:
        
            if (r9.attemptToScheduleNotifications(kotlin.collections.CollectionsKt.listOf(((com.superwall.sdk.paywall.view.webview.messaging.PaywallWebEvent.ScheduleNotification) r16.$paywallEvent).getLocalNotification()), r16.this$0.getDependencyContainer$superwall_release(), true, r16) == r1) goto L78;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r17) {
            /*
                Method dump skipped, instruction units count: 656
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.Superwall.C04432.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: com.superwall.sdk.Superwall$eventDidOccur$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: Superwall.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.Superwall$eventDidOccur$2$1", f = "Superwall.kt", i = {}, l = {1390}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ PaywallWebEvent $paywallEvent;
            final /* synthetic */ PaywallView $paywallView;
            int label;
            final /* synthetic */ Superwall this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Superwall superwall, PaywallWebEvent paywallWebEvent, PaywallView paywallView, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = superwall;
                this.$paywallEvent = paywallWebEvent;
                this.$paywallView = paywallView;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$paywallEvent, this.$paywallView, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.label = 1;
                        obj = this.this$0.getDependencyContainer$superwall_release().getTransactionManager().purchase(new TransactionManager.PurchaseSource.Internal(((PaywallWebEvent.InitiatePurchase) this.$paywallEvent).getProductId(), this.$paywallView.getController().getState()), ((PaywallWebEvent.InitiatePurchase) this.$paywallEvent).getShouldDismiss(), this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    this.this$0.purchaseTask = null;
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    this.this$0.purchaseTask = null;
                    throw th;
                }
            }
        }

        /* JADX INFO: renamed from: com.superwall.sdk.Superwall$eventDidOccur$2$2, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: Superwall.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.Superwall$eventDidOccur$2$2", f = "Superwall.kt", i = {}, l = {1444, 1448, 1454, 1461, 1467}, m = "invokeSuspend", n = {}, s = {})
        static final class C01072 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ PaywallWebEvent $paywallEvent;
            final /* synthetic */ PaywallView $paywallView;
            int label;
            final /* synthetic */ Superwall this$0;

            /* JADX INFO: renamed from: com.superwall.sdk.Superwall$eventDidOccur$2$2$WhenMappings */
            /* JADX INFO: compiled from: Superwall.kt */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[PaywallWebEvent.RequestReview.Type.values().length];
                    try {
                        iArr[PaywallWebEvent.RequestReview.Type.INAPP.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01072(PaywallWebEvent paywallWebEvent, Superwall superwall, PaywallView paywallView, Continuation<? super C01072> continuation) {
                super(2, continuation);
                this.$paywallEvent = paywallWebEvent;
                this.this$0 = superwall;
                this.$paywallView = paywallView;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C01072(this.$paywallEvent, this.this$0, this.$paywallView, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C01072) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Code duplicated, block: B:28:0x0083 A[Catch: Exception -> 0x0046, TryCatch #0 {Exception -> 0x0046, blocks: (B:9:0x001c, B:13:0x0029, B:39:0x00f8, B:14:0x0035, B:36:0x00b5, B:15:0x003c, B:33:0x009f, B:16:0x0040, B:26:0x0075, B:28:0x0083, B:30:0x0089, B:21:0x004c, B:23:0x005e, B:42:0x010e, B:44:0x0131, B:52:0x014b, B:48:0x013a, B:50:0x0142), top: B:57:0x0010 }] */
            /* JADX WARN: Code duplicated, block: B:30:0x0089 A[Catch: Exception -> 0x0046, TryCatch #0 {Exception -> 0x0046, blocks: (B:9:0x001c, B:13:0x0029, B:39:0x00f8, B:14:0x0035, B:36:0x00b5, B:15:0x003c, B:33:0x009f, B:16:0x0040, B:26:0x0075, B:28:0x0083, B:30:0x0089, B:21:0x004c, B:23:0x005e, B:42:0x010e, B:44:0x0131, B:52:0x014b, B:48:0x013a, B:50:0x0142), top: B:57:0x0010 }] */
            /* JADX WARN: Code duplicated, block: B:32:0x009e  */
            /* JADX WARN: Code duplicated, block: B:33:0x009f A[Catch: Exception -> 0x0046, TryCatch #0 {Exception -> 0x0046, blocks: (B:9:0x001c, B:13:0x0029, B:39:0x00f8, B:14:0x0035, B:36:0x00b5, B:15:0x003c, B:33:0x009f, B:16:0x0040, B:26:0x0075, B:28:0x0083, B:30:0x0089, B:21:0x004c, B:23:0x005e, B:42:0x010e, B:44:0x0131, B:52:0x014b, B:48:0x013a, B:50:0x0142), top: B:57:0x0010 }] */
            /* JADX WARN: Code duplicated, block: B:35:0x00b4  */
            /* JADX WARN: Code duplicated, block: B:36:0x00b5 A[Catch: Exception -> 0x0046, PHI: r0
              0x00b5: PHI (r0v17 java.lang.Object) = (r0v16 java.lang.Object), (r0v27 java.lang.Object) binds: [B:34:0x00b2, B:14:0x0035] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {Exception -> 0x0046, blocks: (B:9:0x001c, B:13:0x0029, B:39:0x00f8, B:14:0x0035, B:36:0x00b5, B:15:0x003c, B:33:0x009f, B:16:0x0040, B:26:0x0075, B:28:0x0083, B:30:0x0089, B:21:0x004c, B:23:0x005e, B:42:0x010e, B:44:0x0131, B:52:0x014b, B:48:0x013a, B:50:0x0142), top: B:57:0x0010 }] */
            /* JADX WARN: Code duplicated, block: B:38:0x00f7  */
            /* JADX WARN: Code duplicated, block: B:39:0x00f8 A[Catch: Exception -> 0x0046, TryCatch #0 {Exception -> 0x0046, blocks: (B:9:0x001c, B:13:0x0029, B:39:0x00f8, B:14:0x0035, B:36:0x00b5, B:15:0x003c, B:33:0x009f, B:16:0x0040, B:26:0x0075, B:28:0x0083, B:30:0x0089, B:21:0x004c, B:23:0x005e, B:42:0x010e, B:44:0x0131, B:52:0x014b, B:48:0x013a, B:50:0x0142), top: B:57:0x0010 }] */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x010b, code lost:
            
                if (r16.this$0.getDependencyContainer$superwall_release().getConfigManager().recheckPreloadIfNeeded(r16) == r2) goto L41;
             */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r17) {
                /*
                    Method dump skipped, instruction units count: 367
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.Superwall.C04432.C01072.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }
    }

    @Override // com.superwall.sdk.paywall.view.delegate.PaywallViewEventCallback
    public Object eventDidOccur(PaywallWebEvent paywallWebEvent, PaywallView paywallView, Continuation<? super Unit> continuation) {
        ScopesKt.launchWithTracking(getMainScope$superwall_release(), new C04432(paywallWebEvent, paywallView, this, null));
        return Unit.INSTANCE;
    }

    public final void redeem$superwall_release(String code) {
        Intrinsics.checkNotNullParameter(code, "code");
        BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new Superwall$redeem$1(this, code, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.Superwall$refreshConfiguration$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Superwall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.Superwall$refreshConfiguration$1", f = "Superwall.kt", i = {}, l = {1551}, m = "invokeSuspend", n = {}, s = {})
    static final class C04491 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C04491(Continuation<? super C04491> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Superwall.this.new C04491(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04491) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (Superwall.this.getDependencyContainer$superwall_release().getConfigManager().refreshConfiguration$superwall_release(true, this) == coroutine_suspended) {
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

    public final void refreshConfiguration() {
        BuildersKt__Builders_commonKt.launch$default(getIoScope$superwall_release(), null, null, new C04491(null), 3, null);
    }
}
