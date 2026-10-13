package com.superwall.sdk.network;

import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: compiled from: NetworkService.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
public /* synthetic */ class NetworkService$post$2$1 extends FunctionReferenceImpl implements Function3<Boolean, String, Continuation<? super Map<String, ? extends String>>, Object>, SuspendFunction {
    public NetworkService$post$2$1(Object obj) {
        super(3, obj, NetworkService.class, "makeHeaders", "makeHeaders(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Boolean bool, String str, Continuation<? super Map<String, ? extends String>> continuation) {
        return invoke(bool.booleanValue(), str, (Continuation<? super Map<String, String>>) continuation);
    }

    public final Object invoke(boolean z, String str, Continuation<? super Map<String, String>> continuation) {
        return ((NetworkService) this.receiver).makeHeaders(z, str, continuation);
    }
}
