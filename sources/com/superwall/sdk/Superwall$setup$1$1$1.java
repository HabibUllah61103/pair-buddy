package com.superwall.sdk;

import com.superwall.sdk.config.ConfigManager;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: Superwall.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.Superwall$setup$1$1$1", f = "Superwall.kt", i = {}, l = {685}, m = "invokeSuspend", n = {}, s = {})
final class Superwall$setup$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ Superwall this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Superwall$setup$1$1$1(Superwall superwall, Continuation<? super Superwall$setup$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = superwall;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Superwall$setup$1$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((Superwall$setup$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Either failure;
        Object objM11241constructorimpl;
        Superwall superwall;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Superwall superwall2 = this.this$0;
                superwall2.getDependencyContainer$superwall_release().getStorage().recordAppInstall(new Superwall$setup$1$1$1$1$1(superwall2, null));
                ConfigManager configManager = superwall2.getDependencyContainer$superwall_release().getConfigManager();
                this.L$0 = superwall2;
                this.label = 1;
                if (configManager.fetchConfiguration(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                superwall = superwall2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                superwall = (Superwall) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            superwall.getDependencyContainer$superwall_release().getIdentityManager().configure(superwall.getDependencyContainer$superwall_release().getStorage().getNeverCalledStaticConfig());
            failure = new Either.Success(Unit.INSTANCE);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            failure = new Either.Failure(th);
        }
        if (failure instanceof Either.Success) {
            Result.Companion companion = Result.INSTANCE;
            objM11241constructorimpl = Result.m11241constructorimpl(((Either.Success) failure).getValue());
        } else {
            if (!(failure instanceof Either.Failure)) {
                throw new NoWhenBranchMatchedException();
            }
            Result.Companion companion2 = Result.INSTANCE;
            objM11241constructorimpl = Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
        }
        Superwall superwall3 = this.this$0;
        Throwable thM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(objM11241constructorimpl);
        if (thM11244exceptionOrNullimpl == null) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new Superwall$setup$1$1$1$2$1(superwall3, null), 3, null);
        } else {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new Superwall$setup$1$1$1$3$1(superwall3, thM11244exceptionOrNullimpl, null), 3, null);
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.superwallCore, "Superwall SDK failed to initialize - " + thM11244exceptionOrNullimpl.getMessage(), null, thM11244exceptionOrNullimpl, 8, null);
        }
        return Unit.INSTANCE;
    }
}
