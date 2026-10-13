package com.superwall.sdk.paywall.presentation.internal.operators;

import com.superwall.sdk.dependencies.DependencyContainer;
import com.superwall.sdk.identity.IdentityState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: WaitForSubsStatusAndConfig.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/identity/IdentityState;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.presentation.internal.operators.WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$identityResolved$1", f = "WaitForSubsStatusAndConfig.kt", i = {}, l = {155}, m = "invokeSuspend", n = {}, s = {})
final class WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$identityResolved$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super IdentityState>, Object> {
    final /* synthetic */ DependencyContainer $dependencyContainer;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$identityResolved$1(DependencyContainer dependencyContainer, Continuation<? super WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$identityResolved$1> continuation) {
        super(2, continuation);
        this.$dependencyContainer = dependencyContainer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$identityResolved$1(this.$dependencyContainer, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super IdentityState> continuation) {
        return ((WaitForSubsStatusAndConfigKt$waitForEntitlementsAndConfig$identityResolved$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        this.label = 1;
        Object objAwaitLatestIdentity = this.$dependencyContainer.getIdentityManager().awaitLatestIdentity(this);
        return objAwaitLatestIdentity == coroutine_suspended ? coroutine_suspended : objAwaitLatestIdentity;
    }
}
