package com.superwall.sdk.config;

import android.content.Context;
import androidx.compose.animation.core.MutatorMutex$$ExternalSyntheticBackportWithForwarding0;
import androidx.media3.extractor.ts.TsExtractor;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.dependencies.RequestFactory;
import com.superwall.sdk.dependencies.RuleAttributesFactory;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.misc.ScopesKt;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.triggers.Trigger;
import com.superwall.sdk.paywall.manager.PaywallManager;
import com.superwall.sdk.paywall.presentation.rule_logic.javascript.RuleEvaluator;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.PaywallViewState;
import com.superwall.sdk.paywall.view.webview.WebviewChecker;
import com.superwall.sdk.storage.LocalStorage;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: PaywallPreload.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001;BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\"\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\r¢\u0006\u0004\b\u0011\u0010\u0012J*\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\"H\u0086@¢\u0006\u0002\u0010+J$\u0010,\u001a\u00020\u00102\u0006\u0010&\u001a\u00020'2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\"0.H\u0086@¢\u0006\u0002\u0010/J\u001c\u00100\u001a\u00020\u00102\f\u00101\u001a\b\u0012\u0004\u0012\u00020\"0.H\u0082@¢\u0006\u0002\u00102J$\u00103\u001a\b\u0012\u0004\u0012\u00020\"0.2\u0006\u0010&\u001a\u00020'2\f\u00104\u001a\b\u0012\u0004\u0012\u0002050.H\u0002J \u00106\u001a\u00020\u00102\u0006\u00107\u001a\u00020'2\u0006\u00108\u001a\u00020'H\u0080@¢\u0006\u0004\b9\u0010:R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR,\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\"0!X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$¨\u0006<"}, d2 = {"Lcom/superwall/sdk/config/PaywallPreload;", "", "factory", "Lcom/superwall/sdk/config/PaywallPreload$Factory;", PermissionsResponse.SCOPE_KEY, "Lcom/superwall/sdk/misc/IOScope;", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "assignments", "Lcom/superwall/sdk/config/Assignments;", "paywallManager", "Lcom/superwall/sdk/paywall/manager/PaywallManager;", "track", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;", "Lkotlin/coroutines/Continuation;", "", "<init>", "(Lcom/superwall/sdk/config/PaywallPreload$Factory;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/jvm/functions/Function2;)V", "getFactory", "()Lcom/superwall/sdk/config/PaywallPreload$Factory;", "getScope", "()Lcom/superwall/sdk/misc/IOScope;", "getStorage", "()Lcom/superwall/sdk/storage/LocalStorage;", "getAssignments", "()Lcom/superwall/sdk/config/Assignments;", "getPaywallManager", "()Lcom/superwall/sdk/paywall/manager/PaywallManager;", "Lkotlin/jvm/functions/Function2;", "currentPreloadingTask", "Lkotlinx/coroutines/Job;", "lastFingerprint", "Ljava/util/concurrent/atomic/AtomicReference;", "", "getLastFingerprint$superwall_release", "()Ljava/util/concurrent/atomic/AtomicReference;", "preloadAllPaywalls", "config", "Lcom/superwall/sdk/models/config/Config;", "context", "Landroid/content/Context;", "fingerprint", "(Lcom/superwall/sdk/models/config/Config;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "preloadPaywallsByNames", "eventNames", "", "(Lcom/superwall/sdk/models/config/Config;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "preloadPaywalls", "paywallIdentifiers", "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTreatmentPaywallIds", "triggers", "Lcom/superwall/sdk/models/triggers/Trigger;", "removeUnusedPaywallVCsFromCache", "oldConfig", "newConfig", "removeUnusedPaywallVCsFromCache$superwall_release", "(Lcom/superwall/sdk/models/config/Config;Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Factory", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PaywallPreload {
    private final Assignments assignments;
    private Job currentPreloadingTask;
    private final Factory factory;
    private final AtomicReference<String> lastFingerprint;
    private final PaywallManager paywallManager;
    private final IOScope scope;
    private final LocalStorage storage;
    private final Function2<InternalSuperwallEvent, Continuation<? super Unit>, Object> track;

    /* JADX INFO: compiled from: PaywallPreload.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/PaywallPreload$Factory;", "Lcom/superwall/sdk/dependencies/RequestFactory;", "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/javascript/RuleEvaluator$Factory;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Factory extends RequestFactory, RuleAttributesFactory, RuleEvaluator.Factory {
    }

    /* JADX INFO: renamed from: com.superwall.sdk.config.PaywallPreload$preloadPaywalls$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallPreload.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.PaywallPreload", f = "PaywallPreload.kt", i = {0, 0, 0}, l = {TsExtractor.TS_STREAM_TYPE_SPLICE_INFO}, m = "preloadPaywalls", n = {"this", "paywallIdentifiers", "paywallCount"}, s = {"L$0", "L$1", "I$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
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
            return PaywallPreload.this.preloadPaywalls(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PaywallPreload(Factory factory, IOScope scope, LocalStorage storage, Assignments assignments, PaywallManager paywallManager, Function2<? super InternalSuperwallEvent, ? super Continuation<? super Unit>, ? extends Object> track) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(assignments, "assignments");
        Intrinsics.checkNotNullParameter(paywallManager, "paywallManager");
        Intrinsics.checkNotNullParameter(track, "track");
        this.factory = factory;
        this.scope = scope;
        this.storage = storage;
        this.assignments = assignments;
        this.paywallManager = paywallManager;
        this.track = track;
        this.lastFingerprint = new AtomicReference<>(null);
    }

    public final Factory getFactory() {
        return this.factory;
    }

    public final IOScope getScope() {
        return this.scope;
    }

    public final LocalStorage getStorage() {
        return this.storage;
    }

    public final Assignments getAssignments() {
        return this.assignments;
    }

    public final PaywallManager getPaywallManager() {
        return this.paywallManager;
    }

    public final AtomicReference<String> getLastFingerprint$superwall_release() {
        return this.lastFingerprint;
    }

    public static /* synthetic */ Object preloadAllPaywalls$default(PaywallPreload paywallPreload, Config config, Context context, String str, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        return paywallPreload.preloadAllPaywalls(config, context, str, continuation);
    }

    public final Object preloadAllPaywalls(Config config, Context context, String str, Continuation<? super Unit> continuation) {
        if (str != null) {
            String str2 = this.lastFingerprint.get();
            if (!Intrinsics.areEqual(str2, str) && MutatorMutex$$ExternalSyntheticBackportWithForwarding0.m(this.lastFingerprint, str2, str)) {
                if (this.currentPreloadingTask != null) {
                    MutatorMutex$$ExternalSyntheticBackportWithForwarding0.m(this.lastFingerprint, str, str2);
                    return Unit.INSTANCE;
                }
            }
            return Unit.INSTANCE;
        }
        if (this.currentPreloadingTask != null) {
            return Unit.INSTANCE;
        }
        this.currentPreloadingTask = ScopesKt.launchWithTracking(this.scope, new AnonymousClass2(context, config, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.config.PaywallPreload$preloadAllPaywalls$2, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallPreload.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.PaywallPreload$preloadAllPaywalls$2", f = "PaywallPreload.kt", i = {1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3}, l = {TsExtractor.TS_SYNC_BYTE, TsExtractor.TS_STREAM_TYPE_DVBSUBS, 95, 99, 105, 112}, m = "invokeSuspend", n = {"expressionEvaluator", "triggers", "confirmedAssignments", "prioritizedTriggers", "expressionEvaluator", "triggers", "confirmedAssignments", "prioritizedTriggers", "expressionEvaluator", "confirmedAssignments", "remainingTriggers"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Config $config;
        final /* synthetic */ Context $context;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Context context, Config config, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$context = context;
            this.$config = config;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallPreload.this.new AnonymousClass2(this.$context, this.$config, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x009b  */
        /* JADX WARN: Code duplicated, block: B:20:0x00af  */
        /* JADX WARN: Code duplicated, block: B:28:0x00d4  */
        /* JADX WARN: Code duplicated, block: B:33:0x00f9  */
        /* JADX WARN: Code duplicated, block: B:36:0x011b  */
        /* JADX WARN: Code duplicated, block: B:40:0x013a A[PHI: r1 r3 r4 r5
          0x013a: PHI (r1v19 java.util.Set<com.superwall.sdk.models.triggers.Trigger>) = 
          (r1v16 java.util.Set<com.superwall.sdk.models.triggers.Trigger>)
          (r1v23 java.util.Set<com.superwall.sdk.models.triggers.Trigger>)
         binds: [B:38:0x0137, B:9:0x002d] A[DONT_GENERATE, DONT_INLINE]
          0x013a: PHI (r3v13 java.util.Map<java.lang.String, com.superwall.sdk.models.triggers.Experiment$Variant>) = 
          (r3v10 java.util.Map<java.lang.String, com.superwall.sdk.models.triggers.Experiment$Variant>)
          (r3v15 java.util.Map<java.lang.String, com.superwall.sdk.models.triggers.Experiment$Variant>)
         binds: [B:38:0x0137, B:9:0x002d] A[DONT_GENERATE, DONT_INLINE]
          0x013a: PHI (r4v10 java.util.Set<com.superwall.sdk.models.triggers.Trigger>) = 
          (r4v7 java.util.Set<com.superwall.sdk.models.triggers.Trigger>)
          (r4v14 java.util.Set<com.superwall.sdk.models.triggers.Trigger>)
         binds: [B:38:0x0137, B:9:0x002d] A[DONT_GENERATE, DONT_INLINE]
          0x013a: PHI (r5v5 com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating) = 
          (r5v2 com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating)
          (r5v7 com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating)
         binds: [B:38:0x0137, B:9:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:43:0x0157  */
        /* JADX WARN: Code duplicated, block: B:49:0x017e A[PHI: r12
          0x017e: PHI (r12v18 java.lang.Object) = (r12v17 java.lang.Object), (r12v0 java.lang.Object) binds: [B:47:0x017b, B:7:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:57:0x00e4 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:62:? A[LOOP:1: B:26:0x00ce->B:62:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x018c, code lost:
        
            if (r1.preloadPaywalls((java.util.Set) r12, r11) == r0) goto L51;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                Method dump skipped, instruction units count: 426
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.config.PaywallPreload.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final Object preloadPaywallsByNames(Config config, Set<String> set, Continuation<? super Unit> continuation) {
        Set<Trigger> triggers = config.getTriggers();
        ArrayList arrayList = new ArrayList();
        for (Object obj : triggers) {
            if (set.contains(((Trigger) obj).getEventName())) {
                arrayList.add(obj);
            }
        }
        Object objPreloadPaywalls = preloadPaywalls(getTreatmentPaywallIds(config, CollectionsKt.toSet(arrayList)), continuation);
        return objPreloadPaywalls == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPreloadPaywalls : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object preloadPaywalls(Set<String> set, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        int size;
        PaywallPreload paywallPreload;
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
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            size = set.size();
            Function2<InternalSuperwallEvent, Continuation<? super Unit>, Object> function2 = this.track;
            InternalSuperwallEvent.PaywallPreload paywallPreload2 = new InternalSuperwallEvent.PaywallPreload(InternalSuperwallEvent.PaywallPreload.State.Start, size);
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = set;
            anonymousClass1.I$0 = size;
            anonymousClass1.label = 1;
            if (function2.invoke(paywallPreload2, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            paywallPreload = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i2 = anonymousClass1.I$0;
            Set<String> set2 = (Set) anonymousClass1.L$1;
            paywallPreload = (PaywallPreload) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
            size = i2;
            set = set2;
        }
        if (WebviewChecker.INSTANCE.getWebviewExists()) {
            ScopesKt.launchWithTracking(paywallPreload.scope, new C04652(set, paywallPreload, size, null));
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.config.PaywallPreload$preloadPaywalls$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallPreload.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.PaywallPreload$preloadPaywalls$2", f = "PaywallPreload.kt", i = {}, l = {177, 178}, m = "invokeSuspend", n = {}, s = {})
    static final class C04652 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $paywallCount;
        final /* synthetic */ Set<String> $paywallIdentifiers;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ PaywallPreload this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04652(Set<String> set, PaywallPreload paywallPreload, int i, Continuation<? super C04652> continuation) {
            super(2, continuation);
            this.$paywallIdentifiers = set;
            this.this$0 = paywallPreload;
            this.$paywallCount = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C04652 c04652 = new C04652(this.$paywallIdentifiers, this.this$0, this.$paywallCount, continuation);
            c04652.L$0 = obj;
            return c04652;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04652) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0079, code lost:
        
            if (r11.invoke(r1, r10) == r0) goto L19;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r11)
                goto L7c
            L12:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L1a:
                kotlin.ResultKt.throwOnFailure(r11)
                goto L64
            L1e:
                kotlin.ResultKt.throwOnFailure(r11)
                java.lang.Object r11 = r10.L$0
                r4 = r11
                kotlinx.coroutines.CoroutineScope r4 = (kotlinx.coroutines.CoroutineScope) r4
                java.util.ArrayList r11 = new java.util.ArrayList
                r11.<init>()
                java.util.List r11 = (java.util.List) r11
                java.util.Set<java.lang.String> r1 = r10.$paywallIdentifiers
                java.util.Iterator r1 = r1.iterator()
            L33:
                boolean r5 = r1.hasNext()
                if (r5 == 0) goto L56
                java.lang.Object r5 = r1.next()
                java.lang.String r5 = (java.lang.String) r5
                com.superwall.sdk.config.PaywallPreload$preloadPaywalls$2$task$1 r6 = new com.superwall.sdk.config.PaywallPreload$preloadPaywalls$2$task$1
                com.superwall.sdk.config.PaywallPreload r7 = r10.this$0
                r8 = 0
                r6.<init>(r7, r5, r8)
                r7 = r6
                kotlin.jvm.functions.Function2 r7 = (kotlin.jvm.functions.Function2) r7
                r8 = 3
                r9 = 0
                r5 = 0
                r6 = 0
                kotlinx.coroutines.Deferred r5 = kotlinx.coroutines.BuildersKt.async$default(r4, r5, r6, r7, r8, r9)
                r11.add(r5)
                goto L33
            L56:
                java.util.Collection r11 = (java.util.Collection) r11
                r1 = r10
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
                r10.label = r3
                java.lang.Object r11 = kotlinx.coroutines.AwaitKt.awaitAll(r11, r1)
                if (r11 != r0) goto L64
                goto L7b
            L64:
                com.superwall.sdk.config.PaywallPreload r11 = r10.this$0
                kotlin.jvm.functions.Function2 r11 = com.superwall.sdk.config.PaywallPreload.access$getTrack$p(r11)
                com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$PaywallPreload r1 = new com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$PaywallPreload
                com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent$PaywallPreload$State r3 = com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent.PaywallPreload.State.Complete
                int r4 = r10.$paywallCount
                r1.<init>(r3, r4)
                r10.label = r2
                java.lang.Object r11 = r11.invoke(r1, r10)
                if (r11 != r0) goto L7c
            L7b:
                return r0
            L7c:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.config.PaywallPreload.C04652.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final Set<String> getTreatmentPaywallIds(Config config, Set<Trigger> triggers) {
        Set<Trigger> setFilterTriggers = ConfigLogic.INSTANCE.filterTriggers(triggers, config.getPreloadingDisabled());
        if (setFilterTriggers.isEmpty()) {
            return SetsKt.emptySet();
        }
        return ConfigLogic.INSTANCE.getActiveTreatmentPaywallIds(setFilterTriggers, this.storage.getConfirmedAssignments(), this.assignments.getUnconfirmedAssignments());
    }

    public final Object removeUnusedPaywallVCsFromCache$superwall_release(Config config, Config config2, Continuation<? super Unit> continuation) {
        PaywallViewState state;
        Paywall paywall;
        List<Paywall> paywalls = config.getPaywalls();
        List<Paywall> paywalls2 = config2.getPaywalls();
        PaywallView currentView = this.paywallManager.getCurrentView();
        String identifier = (currentView == null || (state = currentView.getState()) == null || (paywall = state.getPaywall()) == null) ? null : paywall.getIdentifier();
        List<Paywall> list = paywalls;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (Paywall paywall2 : list) {
            arrayList.add(TuplesKt.to(paywall2.getIdentifier(), paywall2.getCacheKey()));
        }
        Map map = MapsKt.toMap(arrayList);
        List<Paywall> list2 = paywalls2;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (Paywall paywall3 : list2) {
            arrayList2.add(TuplesKt.to(paywall3.getIdentifier(), paywall3.getCacheKey()));
        }
        Map map2 = MapsKt.toMap(arrayList2);
        Set set = CollectionsKt.toSet(SetsKt.minus(map.keySet(), (Iterable) map2.keySet()));
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : list2) {
            Paywall paywall4 = (Paywall) obj;
            String str = (String) map.get(paywall4.getIdentifier());
            boolean zAreEqual = Intrinsics.areEqual(str, map2.get(paywall4.getIdentifier()));
            if (str != null && !zAreEqual) {
                arrayList3.add(obj);
            }
        }
        ArrayList arrayList4 = arrayList3;
        ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList4, 10));
        Iterator it = arrayList4.iterator();
        while (it.hasNext()) {
            arrayList5.add(((Paywall) it.next()).getIdentifier());
        }
        List listFilterNotNull = CollectionsKt.filterNotNull(CollectionsKt.toSet(SetsKt.minus((Set<? extends String>) SetsKt.plus(set, (Iterable) arrayList5), identifier)));
        Iterator it2 = listFilterNotNull.iterator();
        while (it2.hasNext()) {
            this.paywallManager.removePaywallView((String) it2.next());
        }
        if (!listFilterNotNull.isEmpty()) {
            this.lastFingerprint.set(null);
        }
        return Unit.INSTANCE;
    }
}
