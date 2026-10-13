package com.superwall.sdk.analytics;

import com.superwall.sdk.analytics.session.AppSession;
import com.superwall.sdk.config.ConfigManager;
import com.superwall.sdk.network.Network;
import com.superwall.sdk.storage.LocalStorage;
import com.superwall.sdk.store.abstractions.transactions.StoreTransactionType;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: SessionEventsManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0012\u001a\u00020\u0013H\u0082@¢\u0006\u0002\u0010\u0014J\u0016\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0086@¢\u0006\u0002\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u0010\u001cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/superwall/sdk/analytics/SessionEventsManager;", "Lkotlinx/coroutines/CoroutineScope;", "Lcom/superwall/sdk/analytics/SessionEventsDelegate;", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "network", "Lcom/superwall/sdk/network/Network;", "configManager", "Lcom/superwall/sdk/config/ConfigManager;", "<init>", "(Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/config/ConfigManager;)V", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "cancellables", "", "Lkotlinx/coroutines/Job;", "postCachedSessionEvents", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateAppSession", "appSession", "Lcom/superwall/sdk/analytics/session/AppSession;", "(Lcom/superwall/sdk/analytics/session/AppSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "enqueue", "transaction", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;", "(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SessionEventsManager implements CoroutineScope, SessionEventsDelegate {
    private List<Job> cancellables;
    private final ConfigManager configManager;
    private final Network network;
    private final LocalStorage storage;

    public SessionEventsManager(LocalStorage storage, Network network, ConfigManager configManager) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(configManager, "configManager");
        this.storage = storage;
        this.network = network;
        this.configManager = configManager;
        this.cancellables = new ArrayList();
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new AnonymousClass1(null), 3, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getDefault());
    }

    /* JADX INFO: renamed from: com.superwall.sdk.analytics.SessionEventsManager$1, reason: invalid class name */
    /* JADX INFO: compiled from: SessionEventsManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.analytics.SessionEventsManager$1", f = "SessionEventsManager.kt", i = {}, l = {34}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SessionEventsManager.this.new AnonymousClass1(continuation);
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
                if (SessionEventsManager.this.postCachedSessionEvents(this) == coroutine_suspended) {
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
    public final Object postCachedSessionEvents(Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }

    public final Object updateAppSession(AppSession appSession, Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }

    @Override // com.superwall.sdk.analytics.SessionEventsDelegate
    public Object enqueue(StoreTransactionType storeTransactionType, Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }
}
