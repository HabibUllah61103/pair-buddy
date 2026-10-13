package com.superwall.sdk.dependencies;

import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: DependencyContainer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "", "debugging", "", "requestId"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$httpConnection$1", f = "DependencyContainer.kt", i = {}, l = {342}, m = "invokeSuspend", n = {}, s = {})
final class DependencyContainer$httpConnection$1 extends SuspendLambda implements Function3<Boolean, String, Continuation<? super Map<String, ? extends String>>, Object> {
    /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ DependencyContainer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DependencyContainer$httpConnection$1(DependencyContainer dependencyContainer, Continuation<? super DependencyContainer$httpConnection$1> continuation) {
        super(3, continuation);
        this.this$0 = dependencyContainer;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Boolean bool, String str, Continuation<? super Map<String, ? extends String>> continuation) {
        return invoke(bool.booleanValue(), str, (Continuation<? super Map<String, String>>) continuation);
    }

    public final Object invoke(boolean z, String str, Continuation<? super Map<String, String>> continuation) {
        DependencyContainer$httpConnection$1 dependencyContainer$httpConnection$1 = new DependencyContainer$httpConnection$1(this.this$0, continuation);
        dependencyContainer$httpConnection$1.Z$0 = z;
        dependencyContainer$httpConnection$1.L$0 = str;
        return dependencyContainer$httpConnection$1.invokeSuspend(Unit.INSTANCE);
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
        boolean z = this.Z$0;
        String str = (String) this.L$0;
        this.label = 1;
        Object objMakeHeaders = this.this$0.makeHeaders(z, str, this);
        return objMakeHeaders == coroutine_suspended ? coroutine_suspended : objMakeHeaders;
    }
}
