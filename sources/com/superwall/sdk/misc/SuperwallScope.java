package com.superwall.sdk.misc;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: Scopes.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/misc/SuperwallScope;", "Lkotlinx/coroutines/CoroutineScope;", "exceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "getExceptionHandler", "()Lkotlinx/coroutines/CoroutineExceptionHandler;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface SuperwallScope extends CoroutineScope {
    CoroutineExceptionHandler getExceptionHandler();

    /* JADX INFO: compiled from: Scopes.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static CoroutineExceptionHandler getExceptionHandler(SuperwallScope superwallScope) {
            return new SuperwallScope$DefaultImpls$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE);
        }
    }
}
