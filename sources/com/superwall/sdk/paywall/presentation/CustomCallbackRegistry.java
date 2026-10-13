package com.superwall.sdk.paywall.presentation;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CustomCallbackRegistry.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00062\"\u0010\u000e\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007¢\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0006J1\u0010\u0011\u001a \b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0002\u0010\u0012J\u0006\u0010\u0013\u001a\u00020\fR6\u0010\u0004\u001a*\u0012\u0004\u0012\u00020\u0006\u0012 \u0012\u001e\b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;", "", "<init>", "()V", "handlers", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lkotlin/Function2;", "Lcom/superwall/sdk/paywall/presentation/CustomCallback;", "Lkotlin/coroutines/Continuation;", "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;", "register", "", "paywallIdentifier", "handler", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V", "unregister", "getHandler", "(Ljava/lang/String;)Lkotlin/jvm/functions/Function2;", "clear", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CustomCallbackRegistry {
    private final ConcurrentHashMap<String, Function2<CustomCallback, Continuation<? super CustomCallbackResult>, Object>> handlers = new ConcurrentHashMap<>();

    public final void register(String paywallIdentifier, Function2<? super CustomCallback, ? super Continuation<? super CustomCallbackResult>, ? extends Object> handler) {
        Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.handlers.put(paywallIdentifier, handler);
    }

    public final void unregister(String paywallIdentifier) {
        Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
        this.handlers.remove(paywallIdentifier);
    }

    public final Function2<CustomCallback, Continuation<? super CustomCallbackResult>, Object> getHandler(String paywallIdentifier) {
        Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
        return this.handlers.get(paywallIdentifier);
    }

    public final void clear() {
        this.handlers.clear();
    }
}
