package com.superwall.sdk.misc;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: Scopes.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/misc/MainScope;", "Lkotlinx/coroutines/CoroutineScope;", "Lcom/superwall/sdk/misc/SuperwallScope;", "overrideWithContext", "Lkotlin/coroutines/CoroutineContext;", "<init>", "(Lkotlin/coroutines/CoroutineContext;)V", "coroutineContext", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MainScope implements CoroutineScope, SuperwallScope {
    private final CoroutineContext coroutineContext;

    /* JADX WARN: Multi-variable type inference failed */
    public MainScope() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public MainScope(CoroutineContext overrideWithContext) {
        Intrinsics.checkNotNullParameter(overrideWithContext, "overrideWithContext");
        this.coroutineContext = SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(overrideWithContext).plus(getExceptionHandler());
    }

    @Override // com.superwall.sdk.misc.SuperwallScope
    public CoroutineExceptionHandler getExceptionHandler() {
        return SuperwallScope.DefaultImpls.getExceptionHandler(this);
    }

    public /* synthetic */ MainScope(MainCoroutineDispatcher mainCoroutineDispatcher, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Dispatchers.getMain() : mainCoroutineDispatcher);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }
}
