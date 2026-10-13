package com.superwall.sdk.store.testmode;

import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.identity.Keys;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.ActivityProvider;
import com.superwall.sdk.misc.CurrentActivityTracker;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.network.NetworkError;
import com.superwall.sdk.storage.IsTestModeActiveSubscription;
import com.superwall.sdk.storage.Storage;
import com.superwall.sdk.storage.StoredTestModeSettings;
import com.superwall.sdk.storage.TestModeSettings;
import com.superwall.sdk.store.Entitlements;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.testmode.models.SuperwallEntitlementRef;
import com.superwall.sdk.store.testmode.models.SuperwallProduct;
import com.superwall.sdk.store.testmode.models.SuperwallProductPlatform;
import com.superwall.sdk.store.testmode.models.SuperwallProductsResponse;
import com.superwall.sdk.store.testmode.models.TestStoreUser;
import com.superwall.sdk.store.testmode.models.TestStoreUserType;
import com.superwall.sdk.store.testmode.ui.EntitlementSelection;
import com.superwall.sdk.store.testmode.ui.EntitlementStateOption;
import com.superwall.sdk.store.testmode.ui.OfferTypeOption;
import java.util.ArrayList;
import java.util.Iterator;
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
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: TestMode.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Ì\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 s2\u00020\u0001:\u0001sBË\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012*\b\u0002\u0010\u0006\u001a$\b\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000f\u0012\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u000f\u0012\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u000f\u0012\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u000f\u0012$\b\u0002\u0010\u0017\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0018¢\u0006\u0004\b\u001b\u0010\u001cJ4\u0010G\u001a\u00020\u001a2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u00152\b\u0010K\u001a\u0004\u0018\u00010\u00152\b\u0010L\u001a\u0004\u0018\u00010\u00152\b\b\u0002\u0010M\u001a\u00020NJ\b\u0010O\u001a\u00020\u001aH\u0002J$\u0010P\u001a\u00020\u00052\u0006\u0010H\u001a\u00020I2\b\u0010K\u001a\u0004\u0018\u00010\u00152\b\u0010L\u001a\u0004\u0018\u00010\u0015H\u0002J\u0018\u0010Q\u001a\u00020\u00052\u0006\u0010H\u001a\u00020I2\u0006\u0010R\u001a\u00020\u0015H\u0002J\u0014\u0010S\u001a\u00020\u001a2\f\u0010.\u001a\b\u0012\u0004\u0012\u0002000/J\u001a\u0010T\u001a\u00020\u001a2\u0012\u0010U\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020504J\u0014\u0010V\u001a\u00020\u001a2\f\u0010W\u001a\b\u0012\u0004\u0012\u00020X0/J\u0014\u0010Y\u001a\u00020\u001a2\f\u0010Z\u001a\b\u0012\u0004\u0012\u00020=0/J\u0014\u0010Y\u001a\u00020\u001a2\f\u0010[\u001a\b\u0012\u0004\u0012\u00020\u001509J\u0006\u0010\\\u001a\u00020\u001aJ\u000e\u0010]\u001a\u00020\u001a2\u0006\u0010^\u001a\u00020@J\u000e\u0010_\u001a\u00020\u00052\u0006\u0010`\u001a\u00020\u0005J\u0006\u0010a\u001a\u00020\u001aJ\u0006\u0010b\u001a\u00020DJ\u0010\u0010c\u001a\u00020\u001a2\b\u0010d\u001a\u0004\u0018\u00010DJ\u0014\u0010e\u001a\b\u0012\u0004\u0012\u00020X0/2\u0006\u0010f\u001a\u000200J\f\u0010g\u001a\b\u0012\u0004\u0012\u00020\u001509J\u0006\u0010h\u001a\u00020\u001aJ\b\u0010i\u001a\u0004\u0018\u00010jJ\u0006\u0010k\u001a\u00020\u001aJ\u001e\u0010l\u001a\u00020\u001a2\u0006\u0010H\u001a\u00020I2\u0006\u0010m\u001a\u00020\u0005H\u0086@¢\u0006\u0002\u0010nJ\u000e\u0010o\u001a\u00020\u001aH\u0082@¢\u0006\u0002\u0010pJ\u0016\u0010q\u001a\u00020\u001a2\u0006\u0010H\u001a\u00020IH\u0082@¢\u0006\u0002\u0010rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u0006\u001a$\b\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001dR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\u0017\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0018X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u001e\u0010!\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020 @BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0011\u0010$\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0013\u0010&\u001a\u0004\u0018\u00010'8F¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0016\u0010*\u001a\u0004\u0018\u00010+8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0017\u0010.\u001a\b\u0012\u0004\u0012\u0002000/8F¢\u0006\u0006\u001a\u0004\b1\u00102R \u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u000205048@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u0017\u00108\u001a\b\u0012\u0004\u0012\u00020\u0015098F¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0017\u0010<\u001a\b\u0012\u0004\u0012\u00020=0/8F¢\u0006\u0006\u001a\u0004\b>\u00102R\u0011\u0010?\u001a\u00020@8F¢\u0006\u0006\u001a\u0004\bA\u0010BR\u0013\u0010C\u001a\u0004\u0018\u00010D8F¢\u0006\u0006\u001a\u0004\bE\u0010F¨\u0006t"}, d2 = {"Lcom/superwall/sdk/store/testmode/TestMode;", "", "storage", "Lcom/superwall/sdk/storage/Storage;", "isTestEnvironment", "", "getSuperwallProducts", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/store/testmode/models/SuperwallProductsResponse;", "Lcom/superwall/sdk/network/NetworkError;", "entitlements", "Lcom/superwall/sdk/store/Entitlements;", "activityProvider", "Lkotlin/Function0;", "Lcom/superwall/sdk/misc/ActivityProvider;", "activityTracker", "Lcom/superwall/sdk/misc/CurrentActivityTracker;", "hasExternalPurchaseController", "apiKey", "", "dashboardBaseUrl", "track", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "", "<init>", "(Lcom/superwall/sdk/storage/Storage;ZLkotlin/jvm/functions/Function1;Lcom/superwall/sdk/store/Entitlements;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/jvm/functions/Function1;", "Lkotlin/jvm/functions/Function2;", RNConstants.ARG_VALUE, "Lcom/superwall/sdk/store/testmode/TestModeState;", "state", "getState", "()Lcom/superwall/sdk/store/testmode/TestModeState;", "isTestMode", "()Z", "testModeReason", "Lcom/superwall/sdk/store/testmode/TestModeReason;", "getTestModeReason", "()Lcom/superwall/sdk/store/testmode/TestModeReason;", "session", "Lcom/superwall/sdk/store/testmode/TestModeSessionData;", "getSession", "()Lcom/superwall/sdk/store/testmode/TestModeSessionData;", "products", "", "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;", "getProducts", "()Ljava/util/List;", "testProductsByFullId", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "getTestProductsByFullId$superwall_release", "()Ljava/util/Map;", "testEntitlementIds", "", "getTestEntitlementIds", "()Ljava/util/Set;", "testEntitlementSelections", "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;", "getTestEntitlementSelections", "freeTrialOverride", "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;", "getFreeTrialOverride", "()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;", "overriddenSubscriptionStatus", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "getOverriddenSubscriptionStatus", "()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "evaluateTestMode", "config", "Lcom/superwall/sdk/models/config/Config;", "bundleId", Keys.APP_USER_ID, Keys.ALIAS_ID, "testModeBehavior", "Lcom/superwall/sdk/store/testmode/TestModeBehavior;", "deactivateIfActive", "checkConfigMatch", "checkPackageNameMismatch", "actualPackageName", "setProducts", "setTestProducts", "productsByFullId", "fakePurchase", "entitlementRefs", "Lcom/superwall/sdk/store/testmode/models/SuperwallEntitlementRef;", "setEntitlements", "selections", "ids", "resetEntitlements", "setFreeTrialOverride", "override", "shouldShowFreeTrial", "hasFreeTrial", "clearTestModeState", "buildSubscriptionStatus", "setOverriddenSubscriptionStatus", "status", "entitlementsForProduct", "product", "allEntitlements", "saveSettings", "loadSettings", "Lcom/superwall/sdk/storage/TestModeSettings;", "clearSettings", "activate", "justActivated", "(Lcom/superwall/sdk/models/config/Config;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refreshProducts", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "presentModal", "(Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TestMode {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<Boolean> isTestEnvironment$delegate = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestMode$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(TestMode.isTestEnvironment_delegate$lambda$21());
        }
    });
    private final Function0<ActivityProvider> activityProvider;
    private final Function0<CurrentActivityTracker> activityTracker;
    private final Function0<String> apiKey;
    private final Function0<String> dashboardBaseUrl;
    private final Entitlements entitlements;
    private final Function1<Continuation<? super Either<SuperwallProductsResponse, NetworkError>>, Object> getSuperwallProducts;
    private final Function0<Boolean> hasExternalPurchaseController;
    private final boolean isTestEnvironment;
    private TestModeState state;
    private final Storage storage;
    private final Function2<InternalSuperwallEvent, Continuation<? super Unit>, Object> track;

    /* JADX INFO: compiled from: TestMode.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[TestModeBehavior.values().length];
            try {
                iArr[TestModeBehavior.NEVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TestModeBehavior.ALWAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TestModeBehavior.WHEN_ENABLED_FOR_USER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TestModeBehavior.AUTOMATIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[TestStoreUserType.values().length];
            try {
                iArr2[TestStoreUserType.UserId.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[TestStoreUserType.AliasId.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[FreeTrialOverride.values().length];
            try {
                iArr3[FreeTrialOverride.UseDefault.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[FreeTrialOverride.ForceAvailable.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[FreeTrialOverride.ForceUnavailable.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.testmode.TestMode$activate$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TestMode.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.testmode.TestMode", f = "TestMode.kt", i = {0, 0, 0}, l = {297, 299}, m = "activate", n = {"this", "config", "justActivated"}, s = {"L$0", "L$1", "Z$0"})
    static final class C06051 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C06051(Continuation<? super C06051> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TestMode.this.activate(null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.testmode.TestMode$presentModal$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TestMode.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.testmode.TestMode", f = "TestMode.kt", i = {0, 0, 1, 1, 1, 2}, l = {339, 352, 365, 382}, m = "presentModal", n = {"this", "config", "this", "config", "activity", "this"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "L$0"})
    static final class C06061 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C06061(Continuation<? super C06061> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TestMode.this.presentModal(null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.testmode.TestMode$refreshProducts$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TestMode.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.testmode.TestMode", f = "TestMode.kt", i = {0}, l = {304}, m = "refreshProducts", n = {"this"}, s = {"L$0"})
    static final class C06071 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06071(Continuation<? super C06071> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TestMode.this.refreshProducts(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TestMode(Storage storage, boolean z, Function1<? super Continuation<? super Either<SuperwallProductsResponse, NetworkError>>, ? extends Object> getSuperwallProducts, Entitlements entitlements, Function0<? extends ActivityProvider> activityProvider, Function0<CurrentActivityTracker> activityTracker, Function0<Boolean> hasExternalPurchaseController, Function0<String> apiKey, Function0<String> dashboardBaseUrl, Function2<? super InternalSuperwallEvent, ? super Continuation<? super Unit>, ? extends Object> track) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(getSuperwallProducts, "getSuperwallProducts");
        Intrinsics.checkNotNullParameter(activityProvider, "activityProvider");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(hasExternalPurchaseController, "hasExternalPurchaseController");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(dashboardBaseUrl, "dashboardBaseUrl");
        Intrinsics.checkNotNullParameter(track, "track");
        this.storage = storage;
        this.isTestEnvironment = z;
        this.getSuperwallProducts = getSuperwallProducts;
        this.entitlements = entitlements;
        this.activityProvider = activityProvider;
        this.activityTracker = activityTracker;
        this.hasExternalPurchaseController = hasExternalPurchaseController;
        this.apiKey = apiKey;
        this.dashboardBaseUrl = dashboardBaseUrl;
        this.track = track;
        this.state = TestModeState.Inactive.INSTANCE;
    }

    public /* synthetic */ TestMode(Storage storage, boolean z, Function1 function1, Entitlements entitlements, Function0 function0, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function2 function6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(storage, (i & 2) != 0 ? INSTANCE.isTestEnvironment() : z, (i & 4) != 0 ? new AnonymousClass1(null) : function1, (i & 8) != 0 ? null : entitlements, (i & 16) != 0 ? new Function0() { // from class: com.superwall.sdk.store.testmode.TestMode.2
            @Override // kotlin.jvm.functions.Function0
            public final Void invoke() {
                return null;
            }
        } : function0, (i & 32) != 0 ? new Function0() { // from class: com.superwall.sdk.store.testmode.TestMode.3
            @Override // kotlin.jvm.functions.Function0
            public final Void invoke() {
                return null;
            }
        } : function2, (i & 64) != 0 ? new Function0() { // from class: com.superwall.sdk.store.testmode.TestMode$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(TestMode._init_$lambda$0());
            }
        } : function3, (i & 128) != 0 ? new Function0() { // from class: com.superwall.sdk.store.testmode.TestMode$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestMode._init_$lambda$1();
            }
        } : function4, (i & 256) != 0 ? new Function0() { // from class: com.superwall.sdk.store.testmode.TestMode$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestMode._init_$lambda$2();
            }
        } : function5, (i & 512) != 0 ? new AnonymousClass7(null) : function6);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.superwall.sdk.store.testmode.TestMode$1, reason: invalid class name */
    /* JADX INFO: compiled from: TestMode.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either$Failure;", "Lcom/superwall/sdk/network/NetworkError;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.testmode.TestMode$1", f = "TestMode.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Either.Failure<NetworkError>>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Either.Failure<NetworkError>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return new Either.Failure(new NetworkError.Unknown(null, 1, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$1() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.superwall.sdk.store.testmode.TestMode$7, reason: invalid class name */
    /* JADX INFO: compiled from: TestMode.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.testmode.TestMode$7", f = "TestMode.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass7 extends SuspendLambda implements Function2<InternalSuperwallEvent, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass7(Continuation<? super AnonymousClass7> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass7(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(InternalSuperwallEvent internalSuperwallEvent, Continuation<? super Unit> continuation) {
            return ((AnonymousClass7) create(internalSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$2() {
        return "";
    }

    /* JADX INFO: compiled from: TestMode.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0004\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/store/testmode/TestMode$Companion;", "", "<init>", "()V", "isTestEnvironment", "", "()Z", "isTestEnvironment$delegate", "Lkotlin/Lazy;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isTestEnvironment() {
            return ((Boolean) TestMode.isTestEnvironment$delegate.getValue()).booleanValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isTestEnvironment_delegate$lambda$21() {
        Object objM11241constructorimpl;
        Object objM11241constructorimpl2;
        Object objM11241constructorimpl3;
        boolean z = true;
        try {
            try {
                Result.Companion companion = Result.INSTANCE;
                Class.forName("org.junit.Test");
                objM11241constructorimpl = Result.m11241constructorimpl(true);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM11241constructorimpl = Result.m11241constructorimpl(ResultKt.createFailure(th));
            }
            Object obj = null;
            if (Result.m11247isFailureimpl(objM11241constructorimpl)) {
                objM11241constructorimpl = null;
            }
            Boolean bool = (Boolean) objM11241constructorimpl;
            if (!(bool != null ? bool.booleanValue() : false)) {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    Class.forName("androidx.test.espresso.Espresso");
                    objM11241constructorimpl2 = Result.m11241constructorimpl(true);
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM11241constructorimpl2 = Result.m11241constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m11247isFailureimpl(objM11241constructorimpl2)) {
                    objM11241constructorimpl2 = null;
                }
                Boolean bool2 = (Boolean) objM11241constructorimpl2;
                if (!(bool2 != null ? bool2.booleanValue() : false)) {
                    try {
                        Result.Companion companion5 = Result.INSTANCE;
                        Class.forName("android.support.test.espresso.Espresso");
                        objM11241constructorimpl3 = Result.m11241constructorimpl(true);
                    } catch (Throwable th3) {
                        Result.Companion companion6 = Result.INSTANCE;
                        objM11241constructorimpl3 = Result.m11241constructorimpl(ResultKt.createFailure(th3));
                    }
                    if (!Result.m11247isFailureimpl(objM11241constructorimpl3)) {
                        obj = objM11241constructorimpl3;
                    }
                    Boolean bool3 = (Boolean) obj;
                    if (!(bool3 != null ? bool3.booleanValue() : false)) {
                        z = false;
                    }
                }
            }
            return z;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final TestModeState getState() {
        return this.state;
    }

    public final boolean isTestMode() {
        return this.state instanceof TestModeState.Active;
    }

    public final TestModeReason getTestModeReason() {
        TestModeState testModeState = this.state;
        TestModeState.Active active = testModeState instanceof TestModeState.Active ? (TestModeState.Active) testModeState : null;
        if (active != null) {
            return active.getReason();
        }
        return null;
    }

    private final TestModeSessionData getSession() {
        TestModeState testModeState = this.state;
        TestModeState.Active active = testModeState instanceof TestModeState.Active ? (TestModeState.Active) testModeState : null;
        if (active != null) {
            return active.getSession();
        }
        return null;
    }

    public final List<SuperwallProduct> getProducts() {
        List<SuperwallProduct> products;
        TestModeSessionData session = getSession();
        return (session == null || (products = session.getProducts()) == null) ? CollectionsKt.emptyList() : products;
    }

    public final Map<String, StoreProduct> getTestProductsByFullId$superwall_release() {
        Map<String, StoreProduct> testProductsByFullId;
        TestModeSessionData session = getSession();
        return (session == null || (testProductsByFullId = session.getTestProductsByFullId()) == null) ? MapsKt.emptyMap() : testProductsByFullId;
    }

    public final Set<String> getTestEntitlementIds() {
        Set<String> entitlementIds;
        TestModeSessionData session = getSession();
        return (session == null || (entitlementIds = session.getEntitlementIds()) == null) ? SetsKt.emptySet() : entitlementIds;
    }

    public final List<EntitlementSelection> getTestEntitlementSelections() {
        List<EntitlementSelection> entitlementSelections;
        TestModeSessionData session = getSession();
        return (session == null || (entitlementSelections = session.getEntitlementSelections()) == null) ? CollectionsKt.emptyList() : entitlementSelections;
    }

    public final FreeTrialOverride getFreeTrialOverride() {
        FreeTrialOverride freeTrialOverride;
        TestModeSessionData session = getSession();
        return (session == null || (freeTrialOverride = session.getFreeTrialOverride()) == null) ? FreeTrialOverride.UseDefault : freeTrialOverride;
    }

    public final SubscriptionStatus getOverriddenSubscriptionStatus() {
        TestModeSessionData session = getSession();
        if (session != null) {
            return session.getOverriddenSubscriptionStatus();
        }
        return null;
    }

    public static /* synthetic */ void evaluateTestMode$default(TestMode testMode, Config config, String str, String str2, String str3, TestModeBehavior testModeBehavior, int i, Object obj) {
        if ((i & 16) != 0) {
            testModeBehavior = TestModeBehavior.AUTOMATIC;
        }
        testMode.evaluateTestMode(config, str, str2, str3, testModeBehavior);
    }

    public final void evaluateTestMode(Config config, String bundleId, String appUserId, String aliasId, TestModeBehavior testModeBehavior) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(bundleId, "bundleId");
        Intrinsics.checkNotNullParameter(testModeBehavior, "testModeBehavior");
        int i = WhenMappings.$EnumSwitchMapping$0[testModeBehavior.ordinal()];
        if (i == 1) {
            deactivateIfActive();
            return;
        }
        if (i == 2) {
            this.state = new TestModeState.Active(TestModeReason.TestModeOption.INSTANCE, null, 2, null);
            Logger logger = Logger.INSTANCE;
            LogLevel logLevel = LogLevel.info;
            LogScope logScope = LogScope.superwallCore;
            TestModeReason testModeReason = getTestModeReason();
            Logger.debug$default(logger, logLevel, logScope, "Test mode activated: " + (testModeReason != null ? testModeReason.getDescription() : null), null, null, 24, null);
            return;
        }
        if (i == 3) {
            if (checkConfigMatch(config, appUserId, aliasId)) {
                return;
            }
            deactivateIfActive();
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            if (this.isTestEnvironment) {
                deactivateIfActive();
            } else {
                if (checkConfigMatch(config, appUserId, aliasId) || checkPackageNameMismatch(config, bundleId)) {
                    return;
                }
                deactivateIfActive();
            }
        }
    }

    private final void deactivateIfActive() {
        if (isTestMode()) {
            clearTestModeState();
        }
    }

    private final boolean checkConfigMatch(Config config, String appUserId, String aliasId) {
        boolean zAreEqual;
        List<TestStoreUser> testModeUserIds = config.getTestModeUserIds();
        if (testModeUserIds == null) {
            return false;
        }
        for (TestStoreUser testStoreUser : testModeUserIds) {
            int i = WhenMappings.$EnumSwitchMapping$1[testStoreUser.getType().ordinal()];
            if (i == 1) {
                zAreEqual = Intrinsics.areEqual(appUserId, testStoreUser.getValue());
            } else {
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                zAreEqual = Intrinsics.areEqual(aliasId, testStoreUser.getValue());
            }
            if (zAreEqual) {
                this.state = new TestModeState.Active(new TestModeReason.ConfigMatch(testStoreUser.getValue()), null, 2, null);
                Logger logger = Logger.INSTANCE;
                LogLevel logLevel = LogLevel.info;
                LogScope logScope = LogScope.superwallCore;
                TestModeReason testModeReason = getTestModeReason();
                Logger.debug$default(logger, logLevel, logScope, "Test mode activated: " + (testModeReason != null ? testModeReason.getDescription() : null), null, null, 24, null);
                return true;
            }
        }
        return false;
    }

    private final boolean checkPackageNameMismatch(Config config, String actualPackageName) {
        String bundleIdConfig = config.getBundleIdConfig();
        String str = bundleIdConfig;
        if (str == null || str.length() == 0 || Intrinsics.areEqual(bundleIdConfig, actualPackageName)) {
            return false;
        }
        if (StringsKt.startsWith$default(actualPackageName, bundleIdConfig + ".", false, 2, (Object) null)) {
            return false;
        }
        this.state = new TestModeState.Active(new TestModeReason.ApplicationIdMismatch(bundleIdConfig, actualPackageName), null, 2, null);
        Logger logger = Logger.INSTANCE;
        LogLevel logLevel = LogLevel.info;
        LogScope logScope = LogScope.superwallCore;
        TestModeReason testModeReason = getTestModeReason();
        Logger.debug$default(logger, logLevel, logScope, "Test mode activated: " + (testModeReason != null ? testModeReason.getDescription() : null), null, null, 24, null);
        return true;
    }

    public final void setProducts(List<SuperwallProduct> products) {
        Intrinsics.checkNotNullParameter(products, "products");
        TestModeSessionData session = getSession();
        if (session != null) {
            session.setProducts(products);
        }
    }

    public final void setTestProducts(Map<String, StoreProduct> productsByFullId) {
        Intrinsics.checkNotNullParameter(productsByFullId, "productsByFullId");
        TestModeSessionData session = getSession();
        if (session != null) {
            session.setTestProductsByFullId(productsByFullId);
        }
    }

    public final void fakePurchase(List<SuperwallEntitlementRef> entitlementRefs) {
        Set<String> entitlementIds;
        Intrinsics.checkNotNullParameter(entitlementRefs, "entitlementRefs");
        List<SuperwallEntitlementRef> list = entitlementRefs;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((SuperwallEntitlementRef) it.next()).getIdentifier());
        }
        ArrayList arrayList2 = arrayList;
        TestModeSessionData session = getSession();
        if (session != null && (entitlementIds = session.getEntitlementIds()) != null) {
            entitlementIds.addAll(arrayList2);
        }
        this.storage.write(IsTestModeActiveSubscription.INSTANCE, Boolean.valueOf(!getTestEntitlementIds().isEmpty()));
    }

    public final void setEntitlements(List<EntitlementSelection> selections) {
        Intrinsics.checkNotNullParameter(selections, "selections");
        TestModeSessionData session = getSession();
        if (session == null) {
            return;
        }
        session.setEntitlementSelections(selections);
        session.getEntitlementIds().clear();
        Set<String> entitlementIds = session.getEntitlementIds();
        ArrayList arrayList = new ArrayList();
        for (Object obj : selections) {
            if (((EntitlementSelection) obj).getState().isActive()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((EntitlementSelection) it.next()).getIdentifier());
        }
        entitlementIds.addAll(arrayList3);
        this.storage.write(IsTestModeActiveSubscription.INSTANCE, Boolean.valueOf(!session.getEntitlementIds().isEmpty()));
    }

    public final void setEntitlements(Set<String> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        Set<String> set = ids;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(new EntitlementSelection((String) it.next(), EntitlementStateOption.Subscribed, (OfferTypeOption) null, 4, (DefaultConstructorMarker) null));
        }
        setEntitlements(arrayList);
    }

    public final void resetEntitlements() {
        Set<String> entitlementIds;
        TestModeSessionData session = getSession();
        if (session != null && (entitlementIds = session.getEntitlementIds()) != null) {
            entitlementIds.clear();
        }
        TestModeSessionData session2 = getSession();
        if (session2 != null) {
            session2.setEntitlementSelections(CollectionsKt.emptyList());
        }
        this.storage.write(IsTestModeActiveSubscription.INSTANCE, false);
    }

    public final void setFreeTrialOverride(FreeTrialOverride override) {
        Intrinsics.checkNotNullParameter(override, "override");
        TestModeSessionData session = getSession();
        if (session != null) {
            session.setFreeTrialOverride(override);
        }
    }

    public final boolean shouldShowFreeTrial(boolean hasFreeTrial) {
        int i = WhenMappings.$EnumSwitchMapping$2[getFreeTrialOverride().ordinal()];
        if (i == 1) {
            return hasFreeTrial;
        }
        if (i == 2) {
            return true;
        }
        if (i == 3) {
            return false;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void clearTestModeState() {
        this.state = TestModeState.Inactive.INSTANCE;
        this.storage.delete(IsTestModeActiveSubscription.INSTANCE);
        clearSettings();
    }

    public final SubscriptionStatus buildSubscriptionStatus() {
        if (getTestEntitlementIds().isEmpty()) {
            return SubscriptionStatus.Inactive.INSTANCE;
        }
        List<EntitlementSelection> testEntitlementSelections = getTestEntitlementSelections();
        ArrayList arrayList = new ArrayList();
        for (Object obj : testEntitlementSelections) {
            if (((EntitlementSelection) obj).getState().isActive()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (!arrayList2.isEmpty()) {
            ArrayList arrayList3 = arrayList2;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                arrayList4.add(((EntitlementSelection) it.next()).toEntitlement());
            }
            return new SubscriptionStatus.Active(CollectionsKt.toSet(arrayList4));
        }
        Set<String> testEntitlementIds = getTestEntitlementIds();
        ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(testEntitlementIds, 10));
        Iterator<T> it2 = testEntitlementIds.iterator();
        while (it2.hasNext()) {
            arrayList5.add(new Entitlement((String) it2.next()));
        }
        return new SubscriptionStatus.Active(CollectionsKt.toSet(arrayList5));
    }

    public final void setOverriddenSubscriptionStatus(SubscriptionStatus status) {
        TestModeSessionData session = getSession();
        if (session != null) {
            session.setOverriddenSubscriptionStatus(status);
        }
    }

    public final List<SuperwallEntitlementRef> entitlementsForProduct(SuperwallProduct product) {
        Intrinsics.checkNotNullParameter(product, "product");
        return product.getEntitlements();
    }

    public final Set<String> allEntitlements() {
        List<SuperwallProduct> products = getProducts();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = products.iterator();
        while (it.hasNext()) {
            List<SuperwallEntitlementRef> entitlements = ((SuperwallProduct) it.next()).getEntitlements();
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(entitlements, 10));
            Iterator<T> it2 = entitlements.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((SuperwallEntitlementRef) it2.next()).getIdentifier());
            }
            CollectionsKt.addAll(arrayList, arrayList2);
        }
        return CollectionsKt.toSet(arrayList);
    }

    public final void saveSettings() {
        this.storage.write(StoredTestModeSettings.INSTANCE, new TestModeSettings(getTestEntitlementSelections(), getFreeTrialOverride()));
    }

    public final TestModeSettings loadSettings() {
        return (TestModeSettings) this.storage.read(StoredTestModeSettings.INSTANCE);
    }

    public final void clearSettings() {
        this.storage.delete(StoredTestModeSettings.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
    
        if (r2.presentModal(r6, r0) == r1) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object activate(com.superwall.sdk.models.config.Config r6, boolean r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.superwall.sdk.store.testmode.TestMode.C06051
            if (r0 == 0) goto L14
            r0 = r8
            com.superwall.sdk.store.testmode.TestMode$activate$1 r0 = (com.superwall.sdk.store.testmode.TestMode.C06051) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.superwall.sdk.store.testmode.TestMode$activate$1 r0 = new com.superwall.sdk.store.testmode.TestMode$activate$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L43
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L66
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            boolean r7 = r0.Z$0
            java.lang.Object r6 = r0.L$1
            com.superwall.sdk.models.config.Config r6 = (com.superwall.sdk.models.config.Config) r6
            java.lang.Object r2 = r0.L$0
            com.superwall.sdk.store.testmode.TestMode r2 = (com.superwall.sdk.store.testmode.TestMode) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L56
        L43:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$0 = r5
            r0.L$1 = r6
            r0.Z$0 = r7
            r0.label = r4
            java.lang.Object r8 = r5.refreshProducts(r0)
            if (r8 != r1) goto L55
            goto L65
        L55:
            r2 = r5
        L56:
            if (r7 == 0) goto L69
            r7 = 0
            r0.L$0 = r7
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r6 = r2.presentModal(r6, r0)
            if (r6 != r1) goto L66
        L65:
            return r1
        L66:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L69:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.testmode.TestMode.activate(com.superwall.sdk.models.config.Config, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object refreshProducts(Continuation<? super Unit> continuation) {
        C06071 c06071;
        TestMode testMode;
        if (continuation instanceof C06071) {
            c06071 = (C06071) continuation;
            if ((c06071.label & Integer.MIN_VALUE) != 0) {
                c06071.label -= Integer.MIN_VALUE;
            } else {
                c06071 = new C06071(continuation);
            }
        } else {
            c06071 = new C06071(continuation);
        }
        Object objInvoke = c06071.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c06071.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objInvoke);
            Function1<Continuation<? super Either<SuperwallProductsResponse, NetworkError>>, Object> function1 = this.getSuperwallProducts;
            c06071.L$0 = this;
            c06071.label = 1;
            objInvoke = function1.invoke(c06071);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
            testMode = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            testMode = (TestMode) c06071.L$0;
            ResultKt.throwOnFailure(objInvoke);
        }
        Either either = (Either) objInvoke;
        if (either instanceof Either.Success) {
            List<SuperwallProduct> data = ((SuperwallProductsResponse) ((Either.Success) either).getValue()).getData();
            ArrayList arrayList = new ArrayList();
            for (Object obj : data) {
                SuperwallProduct superwallProduct = (SuperwallProduct) obj;
                if (superwallProduct.getPlatform() == SuperwallProductPlatform.ANDROID && superwallProduct.getPrice() != null) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            testMode.setProducts(arrayList2);
            ArrayList<SuperwallProduct> arrayList3 = arrayList2;
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList3, 10)), 16));
            for (SuperwallProduct superwallProduct2 : arrayList3) {
                Pair pair = TuplesKt.to(superwallProduct2.getIdentifier(), new StoreProduct(new TestStoreProduct(superwallProduct2)));
                linkedHashMap.put(pair.getFirst(), pair.getSecond());
            }
            testMode.setTestProducts(linkedHashMap);
            Logger.debug$default(Logger.INSTANCE, LogLevel.info, LogScope.superwallCore, "Test mode: loaded " + arrayList2.size() + " products", null, null, 24, null);
        } else {
            if (!(either instanceof Either.Failure)) {
                throw new NoWhenBranchMatchedException();
            }
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.superwallCore, "Test mode: failed to fetch products - " + ((NetworkError) ((Either.Failure) either).getError()).getMessage(), null, null, 24, null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x007f A[PHI: r1
      0x007f: PHI (r1v16 android.app.Activity) = (r1v9 android.app.Activity), (r1v17 android.app.Activity) binds: [B:31:0x0093, B:24:0x007c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:41:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:43:0x00df  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:52:0x0108  */
    /* JADX WARN: Code duplicated, block: B:54:0x010e  */
    /* JADX WARN: Code duplicated, block: B:57:0x0116  */
    /* JADX WARN: Code duplicated, block: B:60:0x0129  */
    /* JADX WARN: Code duplicated, block: B:63:0x014a A[LOOP:1: B:61:0x0144->B:63:0x014a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x016a  */
    /* JADX WARN: Code duplicated, block: B:70:0x0173  */
    /* JADX WARN: Code duplicated, block: B:74:0x01af  */
    /* JADX WARN: Code duplicated, block: B:77:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01e6, code lost:
    
        if (r1.invoke(r3, r11) == r2) goto L80;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object presentModal(com.superwall.sdk.models.config.Config r24, kotlin.coroutines.Continuation<? super kotlin.Unit> r25) {
        /*
            Method dump skipped, instruction units count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.testmode.TestMode.presentModal(com.superwall.sdk.models.config.Config, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
