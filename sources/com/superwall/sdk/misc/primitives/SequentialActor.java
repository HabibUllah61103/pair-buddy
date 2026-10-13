package com.superwall.sdk.misc.primitives;

import androidx.exifinterface.media.ExifInterface;
import expo.modules.interfaces.permissions.PermissionsResponse;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: compiled from: ActorTypes.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0001\u0018B\u0019\u0012\u0006\u0010\u0004\u001a\u00028\u0001\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000f\u001a\u00020\r\"\u0004\b\u0002\u0010\u00102\u0006\u0010\u0011\u001a\u0002H\u00102\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00100\u0013H\u0094@¢\u0006\u0002\u0010\u0014J)\u0010\u0015\u001a\u00020\r\"\u0004\b\u0002\u0010\u00102\u0006\u0010\u0011\u001a\u0002H\u00102\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00100\u0013H\u0016¢\u0006\u0002\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\rR*\u0010\t\u001a\u001e\u0012\u001a\u0012\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/misc/primitives/SequentialActor;", "Context", ExifInterface.LATITUDE_SOUTH, "Lcom/superwall/sdk/misc/primitives/StateActor;", "initial", PermissionsResponse.SCOPE_KEY, "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)V", "queue", "Lkotlinx/coroutines/channels/Channel;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "", "executeAction", "Ctx", "ctx", "action", "Lcom/superwall/sdk/misc/primitives/TypedAction;", "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "effect", "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)V", "close", "OwnerElement", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SequentialActor<Context, S> extends StateActor<Context, S> {
    private final Channel<Function1<Continuation<? super Unit>, Object>> queue;

    public /* synthetic */ SequentialActor(Object obj, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i & 2) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()) : coroutineScope);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequentialActor(S s, CoroutineScope scope) {
        super(s, scope);
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.queue = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        BuildersKt__Builders_commonKt.launch$default(scope, new OwnerElement(this), null, new AnonymousClass1(this, null), 2, null);
    }

    /* JADX INFO: compiled from: ActorTypes.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "actor", "", "<init>", "(Ljava/lang/Object;)V", "getActor", "()Ljava/lang/Object;", "Key", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class OwnerElement extends AbstractCoroutineContextElement {

        /* JADX INFO: renamed from: Key, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final Object actor;

        /* JADX INFO: renamed from: com.superwall.sdk.misc.primitives.SequentialActor$OwnerElement$Key, reason: from kotlin metadata */
        /* JADX INFO: compiled from: ActorTypes.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion implements CoroutineContext.Key<OwnerElement> {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OwnerElement(Object actor) {
            super(INSTANCE);
            Intrinsics.checkNotNullParameter(actor, "actor");
            this.actor = actor;
        }

        public final Object getActor() {
            return this.actor;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.primitives.SequentialActor$1, reason: invalid class name */
    /* JADX INFO: compiled from: ActorTypes.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.primitives.SequentialActor$1", f = "ActorTypes.kt", i = {}, l = {36, 37}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;
        final /* synthetic */ SequentialActor<Context, S> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SequentialActor<Context, S> sequentialActor, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = sequentialActor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0042  */
        /* JADX WARN: Code duplicated, block: B:18:0x004d  */
        /* JADX WARN: Code duplicated, block: B:21:0x005e  */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
        
            if (r6.invoke(r5) == r0) goto L20;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005b -> B:7:0x0015). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L27
                if (r1 == r3) goto L1f
                if (r1 != r2) goto L17
                java.lang.Object r1 = r5.L$0
                kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
                kotlin.ResultKt.throwOnFailure(r6)
            L15:
                r6 = r1
                goto L34
            L17:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1f:
                java.lang.Object r1 = r5.L$0
                kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
                kotlin.ResultKt.throwOnFailure(r6)
                goto L45
            L27:
                kotlin.ResultKt.throwOnFailure(r6)
                com.superwall.sdk.misc.primitives.SequentialActor<Context, S> r6 = r5.this$0
                kotlinx.coroutines.channels.Channel r6 = com.superwall.sdk.misc.primitives.SequentialActor.access$getQueue$p(r6)
                kotlinx.coroutines.channels.ChannelIterator r6 = r6.iterator()
            L34:
                r1 = r5
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
                r5.L$0 = r6
                r5.label = r3
                java.lang.Object r1 = r6.hasNext(r1)
                if (r1 != r0) goto L42
                goto L5d
            L42:
                r4 = r1
                r1 = r6
                r6 = r4
            L45:
                java.lang.Boolean r6 = (java.lang.Boolean) r6
                boolean r6 = r6.booleanValue()
                if (r6 == 0) goto L5e
                java.lang.Object r6 = r1.next()
                kotlin.jvm.functions.Function1 r6 = (kotlin.jvm.functions.Function1) r6
                r5.L$0 = r1
                r5.label = r2
                java.lang.Object r6 = r6.invoke(r5)
                if (r6 != r0) goto L15
            L5d:
                return r0
            L5e:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.misc.primitives.SequentialActor.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.superwall.sdk.misc.primitives.StateActor
    public <Ctx> Object executeAction(Ctx ctx, TypedAction<Ctx> typedAction, Continuation<? super Unit> continuation) {
        OwnerElement ownerElement = (OwnerElement) continuation.getContext().get(OwnerElement.INSTANCE);
        if ((ownerElement != null ? ownerElement.getActor() : null) == this) {
            Object objExecuteAction = super.executeAction(ctx, typedAction, continuation);
            return objExecuteAction == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objExecuteAction : Unit.INSTANCE;
        }
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        this.queue.mo12759trySendJP2dKIU(new AnonymousClass2(this, ctx, typedAction, completableDeferredCompletableDeferred$default, null));
        Object objAwait = completableDeferredCompletableDeferred$default.await(continuation);
        return objAwait == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwait : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.primitives.SequentialActor$executeAction$2, reason: invalid class name */
    /* JADX INFO: compiled from: ActorTypes.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.primitives.SequentialActor$executeAction$2", f = "ActorTypes.kt", i = {}, l = {54}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ TypedAction<Ctx> $action;
        final /* synthetic */ Ctx $ctx;
        final /* synthetic */ CompletableDeferred<Unit> $done;
        int label;
        final /* synthetic */ SequentialActor<Context, S> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(SequentialActor<Context, S> sequentialActor, Ctx ctx, TypedAction<Ctx> typedAction, CompletableDeferred<Unit> completableDeferred, Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
            this.this$0 = sequentialActor;
            this.$ctx = ctx;
            this.$action = typedAction;
            this.$done = completableDeferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, this.$ctx, this.$action, this.$done, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (SequentialActor.super.executeAction(this.$ctx, this.$action, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$done.complete(Unit.INSTANCE);
            } catch (Throwable th) {
                this.$done.completeExceptionally(th);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.superwall.sdk.misc.primitives.StateActor, com.superwall.sdk.misc.primitives.Actor
    public <Ctx> void effect(final Ctx ctx, final TypedAction<Ctx> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        runInterceptorChain(action, new Function0() { // from class: com.superwall.sdk.misc.primitives.SequentialActor$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SequentialActor.effect$lambda$0(this.f$0, action, ctx);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit effect$lambda$0(SequentialActor sequentialActor, TypedAction typedAction, Object obj) {
        sequentialActor.queue.mo12759trySendJP2dKIU(new SequentialActor$effect$1$1(sequentialActor, typedAction, obj, null));
        return Unit.INSTANCE;
    }

    public final void close() {
        SendChannel.DefaultImpls.close$default(this.queue, null, 1, null);
    }
}
