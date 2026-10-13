package com.superwall.sdk.identity;

import com.superwall.sdk.misc.primitives.StateActor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdentityPendingInterceptor.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/identity/IdentityPendingInterceptor;", "", "<init>", "()V", "install", "", "actor", "Lcom/superwall/sdk/misc/primitives/StateActor;", "Lcom/superwall/sdk/identity/IdentityContext;", "Lcom/superwall/sdk/identity/IdentityState;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class IdentityPendingInterceptor {
    public static final IdentityPendingInterceptor INSTANCE = new IdentityPendingInterceptor();

    private IdentityPendingInterceptor() {
    }

    public final void install(final StateActor<IdentityContext, IdentityState> actor) {
        Intrinsics.checkNotNullParameter(actor, "actor");
        actor.onAction(new Function2() { // from class: com.superwall.sdk.identity.IdentityPendingInterceptor$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return IdentityPendingInterceptor.install$lambda$0(actor, obj, (Function0) obj2);
            }
        });
        actor.onActionExecution(new AnonymousClass2(actor, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit install$lambda$0(StateActor stateActor, Object action, Function0 next) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(next, "next");
        if (action instanceof IdentityState.Actions.Identify) {
            stateActor.update(new IdentityState.Updates.BeginIdentify(((IdentityState.Actions.Identify) action).getUserId()));
        } else if (action instanceof IdentityState.Actions.MergeAttributes) {
            stateActor.update(IdentityState.Updates.BeginAttributes.INSTANCE);
        } else if (action instanceof IdentityState.Actions.FullReset) {
            stateActor.update(IdentityState.Updates.BeginReset.INSTANCE);
        }
        next.invoke();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityPendingInterceptor$install$2, reason: invalid class name */
    /* JADX INFO: compiled from: IdentityPendingInterceptor.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u001c\u0010\u0004\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005H\n"}, d2 = {"<anonymous>", "", "action", "", "next", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.identity.IdentityPendingInterceptor$install$2", f = "IdentityPendingInterceptor.kt", i = {0}, l = {18}, m = "invokeSuspend", n = {"action"}, s = {"L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function3<Object, Function1<? super Continuation<? super Unit>, ? extends Object>, Continuation<? super Unit>, Object> {
        final /* synthetic */ StateActor<IdentityContext, IdentityState> $actor;
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(StateActor<IdentityContext, IdentityState> stateActor, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.$actor = stateActor;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$actor, continuation);
            anonymousClass2.L$0 = obj;
            anonymousClass2.L$1 = function1;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0035  */
        /* JADX WARN: Code duplicated, block: B:20:0x0048  */
        /* JADX WARN: Code duplicated, block: B:22:0x004c  */
        /* JADX WARN: Code duplicated, block: B:23:0x0056  */
        /* JADX WARN: Code duplicated, block: B:25:0x005a  */
        /* JADX WARN: Code duplicated, block: B:32:0x006e  */
        /* JADX WARN: Code duplicated, block: B:34:0x0072  */
        /* JADX WARN: Code duplicated, block: B:36:0x0076  */
        /* JADX WARN: Code duplicated, block: B:37:0x0080  */
        /* JADX WARN: Code duplicated, block: B:38:0x008a  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object obj2;
            Throwable th;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj2 = this.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    if (obj2 instanceof IdentityState.Actions.Identify) {
                        this.$actor.update(new IdentityState.Updates.EndIdentify(((IdentityState.Actions.Identify) obj2).getUserId()));
                    } else if (obj2 instanceof IdentityState.Actions.MergeAttributes) {
                        this.$actor.update(IdentityState.Updates.EndAttributes.INSTANCE);
                    } else if (obj2 instanceof IdentityState.Actions.FullReset) {
                        this.$actor.update(IdentityState.Updates.EndReset.INSTANCE);
                    }
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    if (!(obj2 instanceof IdentityState.Actions.Identify)) {
                        this.$actor.update(new IdentityState.Updates.EndIdentify(((IdentityState.Actions.Identify) obj2).getUserId()));
                    } else if (!(obj2 instanceof IdentityState.Actions.MergeAttributes)) {
                        this.$actor.update(IdentityState.Updates.EndAttributes.INSTANCE);
                    } else if (obj2 instanceof IdentityState.Actions.FullReset) {
                        this.$actor.update(IdentityState.Updates.EndReset.INSTANCE);
                    }
                    throw th;
                }
            }
            ResultKt.throwOnFailure(obj);
            Object obj3 = this.L$0;
            Function1 function1 = (Function1) this.L$1;
            try {
                this.L$0 = obj3;
                this.label = 1;
                if (function1.invoke(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                obj2 = obj3;
                if (obj2 instanceof IdentityState.Actions.Identify) {
                    this.$actor.update(new IdentityState.Updates.EndIdentify(((IdentityState.Actions.Identify) obj2).getUserId()));
                } else if (obj2 instanceof IdentityState.Actions.MergeAttributes) {
                    this.$actor.update(IdentityState.Updates.EndAttributes.INSTANCE);
                } else if (obj2 instanceof IdentityState.Actions.FullReset) {
                    this.$actor.update(IdentityState.Updates.EndReset.INSTANCE);
                }
                return Unit.INSTANCE;
            } catch (Throwable th3) {
                obj2 = obj3;
                th = th3;
                if (!(obj2 instanceof IdentityState.Actions.Identify)) {
                    this.$actor.update(new IdentityState.Updates.EndIdentify(((IdentityState.Actions.Identify) obj2).getUserId()));
                } else if (!(obj2 instanceof IdentityState.Actions.MergeAttributes)) {
                    this.$actor.update(IdentityState.Updates.EndAttributes.INSTANCE);
                } else if (obj2 instanceof IdentityState.Actions.FullReset) {
                    this.$actor.update(IdentityState.Updates.EndReset.INSTANCE);
                }
                throw th;
            }
        }
    }
}
