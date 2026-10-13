package com.superwall.sdk.paywall.request;

import com.superwall.sdk.models.paywall.Paywall;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PaywallRequestManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$2$1$1$2", f = "PaywallRequestManager.kt", i = {}, l = {142, 144}, m = "invokeSuspend", n = {}, s = {})
final class PaywallRequestManager$getPaywall$2$1$1$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CancellableContinuation<Paywall> $continuation;
    final /* synthetic */ CompletableDeferred<Paywall> $deferredTask;
    final /* synthetic */ boolean $isPreloading;
    final /* synthetic */ PaywallRequest $request;
    final /* synthetic */ String $requestHash;
    int label;
    final /* synthetic */ PaywallRequestManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PaywallRequestManager$getPaywall$2$1$1$2(PaywallRequestManager paywallRequestManager, PaywallRequest paywallRequest, boolean z, String str, CompletableDeferred<Paywall> completableDeferred, CancellableContinuation<? super Paywall> cancellableContinuation, Continuation<? super PaywallRequestManager$getPaywall$2$1$1$2> continuation) {
        super(2, continuation);
        this.this$0 = paywallRequestManager;
        this.$request = paywallRequest;
        this.$isPreloading = z;
        this.$requestHash = str;
        this.$deferredTask = completableDeferred;
        this.$continuation = cancellableContinuation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaywallRequestManager$getPaywall$2$1$1$2(this.this$0, this.$request, this.$isPreloading, this.$requestHash, this.$deferredTask, this.$continuation, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PaywallRequestManager$getPaywall$2$1$1$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
    
        if (r11 == r0) goto L20;
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
            if (r1 == 0) goto L21
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L1e
            goto L56
        L12:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L1a:
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L1e
            goto L36
        L1e:
            r0 = move-exception
            r11 = r0
            goto L6b
        L21:
            kotlin.ResultKt.throwOnFailure(r11)
            com.superwall.sdk.paywall.request.PaywallRequestManager r11 = r10.this$0     // Catch: java.lang.Throwable -> L1e
            com.superwall.sdk.paywall.request.PaywallRequest r1 = r10.$request     // Catch: java.lang.Throwable -> L1e
            boolean r4 = r10.$isPreloading     // Catch: java.lang.Throwable -> L1e
            r5 = r10
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5     // Catch: java.lang.Throwable -> L1e
            r10.label = r3     // Catch: java.lang.Throwable -> L1e
            java.lang.Object r11 = r11.getRawPaywall(r1, r4, r5)     // Catch: java.lang.Throwable -> L1e
            if (r11 != r0) goto L36
            goto L55
        L36:
            com.superwall.sdk.misc.Either r11 = (com.superwall.sdk.misc.Either) r11     // Catch: java.lang.Throwable -> L1e
            com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$2$1$1$2$1 r3 = new com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$2$1$1$2$1     // Catch: java.lang.Throwable -> L1e
            com.superwall.sdk.paywall.request.PaywallRequestManager r4 = r10.this$0     // Catch: java.lang.Throwable -> L1e
            com.superwall.sdk.paywall.request.PaywallRequest r5 = r10.$request     // Catch: java.lang.Throwable -> L1e
            java.lang.String r6 = r10.$requestHash     // Catch: java.lang.Throwable -> L1e
            kotlinx.coroutines.CompletableDeferred<com.superwall.sdk.models.paywall.Paywall> r7 = r10.$deferredTask     // Catch: java.lang.Throwable -> L1e
            kotlinx.coroutines.CancellableContinuation<com.superwall.sdk.models.paywall.Paywall> r8 = r10.$continuation     // Catch: java.lang.Throwable -> L1e
            r9 = 0
            r3.<init>(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L1e
            kotlin.jvm.functions.Function2 r3 = (kotlin.jvm.functions.Function2) r3     // Catch: java.lang.Throwable -> L1e
            r1 = r10
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1     // Catch: java.lang.Throwable -> L1e
            r10.label = r2     // Catch: java.lang.Throwable -> L1e
            java.lang.Object r11 = com.superwall.sdk.misc.EitherKt.then(r11, r3, r1)     // Catch: java.lang.Throwable -> L1e
            if (r11 != r0) goto L56
        L55:
            return r0
        L56:
            com.superwall.sdk.misc.Either r11 = (com.superwall.sdk.misc.Either) r11     // Catch: java.lang.Throwable -> L1e
            com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$2$1$1$2$2 r0 = new com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$2$1$1$2$2     // Catch: java.lang.Throwable -> L1e
            com.superwall.sdk.paywall.request.PaywallRequestManager r1 = r10.this$0     // Catch: java.lang.Throwable -> L1e
            java.lang.String r2 = r10.$requestHash     // Catch: java.lang.Throwable -> L1e
            kotlinx.coroutines.CompletableDeferred<com.superwall.sdk.models.paywall.Paywall> r3 = r10.$deferredTask     // Catch: java.lang.Throwable -> L1e
            kotlinx.coroutines.CancellableContinuation<com.superwall.sdk.models.paywall.Paywall> r4 = r10.$continuation     // Catch: java.lang.Throwable -> L1e
            r0.<init>()     // Catch: java.lang.Throwable -> L1e
            kotlin.jvm.functions.Function1 r0 = (kotlin.jvm.functions.Function1) r0     // Catch: java.lang.Throwable -> L1e
            com.superwall.sdk.misc.EitherKt.onError(r11, r0)     // Catch: java.lang.Throwable -> L1e
            goto L8c
        L6b:
            com.superwall.sdk.paywall.request.PaywallRequestManager r0 = r10.this$0
            java.util.Map r0 = com.superwall.sdk.paywall.request.PaywallRequestManager.access$getActiveTasks$p(r0)
            java.lang.String r1 = r10.$requestHash
            r0.remove(r1)
            kotlinx.coroutines.CompletableDeferred<com.superwall.sdk.models.paywall.Paywall> r0 = r10.$deferredTask
            r0.completeExceptionally(r11)
            kotlinx.coroutines.CancellableContinuation<com.superwall.sdk.models.paywall.Paywall> r0 = r10.$continuation
            kotlin.coroutines.Continuation r0 = (kotlin.coroutines.Continuation) r0
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            java.lang.Object r11 = kotlin.ResultKt.createFailure(r11)
            java.lang.Object r11 = kotlin.Result.m11241constructorimpl(r11)
            r0.resumeWith(r11)
        L8c:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$2$1$1$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$2$1$1$2$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/models/paywall/Paywall;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$2$1$1$2$1", f = "PaywallRequestManager.kt", i = {1}, l = {145, 146}, m = "invokeSuspend", n = {"finalPaywall"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<Paywall, Continuation<? super Unit>, Object> {
        final /* synthetic */ CancellableContinuation<Paywall> $continuation;
        final /* synthetic */ CompletableDeferred<Paywall> $deferredTask;
        final /* synthetic */ PaywallRequest $request;
        final /* synthetic */ String $requestHash;
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ PaywallRequestManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PaywallRequestManager paywallRequestManager, PaywallRequest paywallRequest, String str, CompletableDeferred<Paywall> completableDeferred, CancellableContinuation<? super Paywall> cancellableContinuation, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = paywallRequestManager;
            this.$request = paywallRequest;
            this.$requestHash = str;
            this.$deferredTask = completableDeferred;
            this.$continuation = cancellableContinuation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$request, this.$requestHash, this.$deferredTask, this.$continuation, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Paywall paywall, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(paywall, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Paywall paywall;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Paywall paywall2 = (Paywall) this.L$0;
                this.label = 1;
                obj = this.this$0.addProducts(paywall2, this.$request, this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                paywall = (Paywall) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            this.$deferredTask.complete(paywall);
            CancellableContinuation<Paywall> cancellableContinuation = this.$continuation;
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuation.resumeWith(Result.m11241constructorimpl(paywall));
            return Unit.INSTANCE;
            Paywall paywall3 = (Paywall) obj;
            this.L$0 = paywall3;
            this.label = 2;
            if (this.this$0.saveRequestHash(this.$requestHash, paywall3, this.$request.isDebuggerLaunched(), this) != coroutine_suspended) {
                paywall = paywall3;
                this.$deferredTask.complete(paywall);
                CancellableContinuation<Paywall> cancellableContinuation2 = this.$continuation;
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuation2.resumeWith(Result.m11241constructorimpl(paywall));
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        }
    }
}
