package com.superwall.sdk.misc.primitives;

import androidx.exifinterface.media.ExifInterface;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: StateActor.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004B\u0017\u0012\u0006\u0010\u0005\u001a\u00028\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJV\u0010\"\u001a\u00020\u00152N\u0010#\u001aJ\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00010\u0014¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b($\u0012%\u0012#\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0014\u0012\u0004\u0012\u00020\u00150\u0013¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u00150\u0018JD\u0010%\u001a\u00020\u00152<\u0010#\u001a8\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00150\u001d¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u00150\u0018Ji\u0010&\u001a\u00020\u00152\\\u0010#\u001aX\b\u0001\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012)\u0012'\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150!\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0013¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150!\u0012\u0006\u0012\u0004\u0018\u00010\u00190 ¢\u0006\u0002\u0010'J\u0016\u0010(\u001a\u00020\u00152\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010\u0014H\u0016J)\u0010)\u001a\u00020\u0015\"\u0004\b\u0002\u0010*2\u0006\u0010+\u001a\u0002H*2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H*0,H\u0016¢\u0006\u0002\u0010-J>\u0010.\u001a\u00028\u0001\"\u0004\b\u0002\u0010*2\u0006\u0010+\u001a\u0002H*2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H*0,2\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002000\u0013H\u0096@¢\u0006\u0002\u00101J*\u00102\u001a\u00020\u0015\"\u0004\b\u0002\u0010*2\u0006\u0010+\u001a\u0002H*2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H*0,H\u0096@¢\u0006\u0002\u00103J*\u00104\u001a\u00020\u0015\"\u0004\b\u0002\u0010*2\u0006\u0010+\u001a\u0002H*2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H*0,H\u0094@¢\u0006\u0002\u00103J4\u00105\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00192\u001c\u00106\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150!\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0013H\u0084@¢\u0006\u0002\u00107J\u001e\u00108\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00192\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u00150\u001dH\u0004R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u000fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R \u0010\u0012\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u0082\u000e¢\u0006\u0002\n\u0000RJ\u0010\u0016\u001a>\u0012:\u00128\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00150\u001d¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u00150\u00180\u0017X\u0082\u000e¢\u0006\u0002\n\u0000Rj\u0010\u001f\u001a^\u0012Z\u0012X\b\u0001\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012)\u0012'\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150!\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0013¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150!\u0012\u0006\u0012\u0004\u0018\u00010\u00190 0\u0017X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Lcom/superwall/sdk/misc/primitives/StateActor;", "Context", ExifInterface.LATITUDE_SOUTH, "Lcom/superwall/sdk/misc/primitives/StateStore;", "Lcom/superwall/sdk/misc/primitives/Actor;", "initial", PermissionsResponse.SCOPE_KEY, "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)V", "getScope$superwall_release", "()Lkotlinx/coroutines/CoroutineScope;", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "state", "Lkotlinx/coroutines/flow/StateFlow;", "getState", "()Lkotlinx/coroutines/flow/StateFlow;", "updateChain", "Lkotlin/Function1;", "Lcom/superwall/sdk/misc/primitives/Reducer;", "", "actionInterceptors", "", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "action", "Lkotlin/Function0;", "next", "asyncActionInterceptors", "Lkotlin/Function3;", "Lkotlin/coroutines/Continuation;", "onUpdate", "interceptor", "reducer", "onAction", "onActionExecution", "(Lkotlin/jvm/functions/Function3;)V", "update", "effect", "Ctx", "ctx", "Lcom/superwall/sdk/misc/primitives/TypedAction;", "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)V", "immediateUntil", "until", "", "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "immediate", "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "executeAction", "runAsyncInterceptorChain", "terminal", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runInterceptorChain", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class StateActor<Context, S> implements StateStore<S>, Actor<Context, S> {
    private final MutableStateFlow<S> _state;
    private List<? extends Function2<Object, ? super Function0<Unit>, Unit>> actionInterceptors;
    private List<? extends Function3<Object, ? super Function1<? super Continuation<? super Unit>, ? extends Object>, ? super Continuation<? super Unit>, ? extends Object>> asyncActionInterceptors;
    private final CoroutineScope scope;
    private final StateFlow<S> state;
    private Function1<? super Reducer<S>, Unit> updateChain;

    protected <Ctx> Object executeAction(Ctx ctx, TypedAction<Ctx> typedAction, Continuation<? super Unit> continuation) {
        return executeAction$suspendImpl(this, ctx, typedAction, continuation);
    }

    @Override // com.superwall.sdk.misc.primitives.Actor
    public <Ctx> Object immediate(Ctx ctx, TypedAction<Ctx> typedAction, Continuation<? super Unit> continuation) {
        return immediate$suspendImpl(this, ctx, typedAction, continuation);
    }

    @Override // com.superwall.sdk.misc.primitives.Actor
    public <Ctx> Object immediateUntil(Ctx ctx, TypedAction<Ctx> typedAction, Function1<? super S, Boolean> function1, Continuation<? super S> continuation) {
        return immediateUntil$suspendImpl(this, ctx, typedAction, function1, continuation);
    }

    public StateActor(S s, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
        MutableStateFlow<S> MutableStateFlow = StateFlowKt.MutableStateFlow(s);
        this._state = MutableStateFlow;
        this.state = FlowKt.asStateFlow(MutableStateFlow);
        this.updateChain = new Function1() { // from class: com.superwall.sdk.misc.primitives.StateActor$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StateActor.updateChain$lambda$1(this.f$0, (Reducer) obj);
            }
        };
        this.actionInterceptors = CollectionsKt.emptyList();
        this.asyncActionInterceptors = CollectionsKt.emptyList();
    }

    /* JADX INFO: renamed from: getScope$superwall_release, reason: from getter */
    public final CoroutineScope getScope() {
        return this.scope;
    }

    @Override // com.superwall.sdk.misc.primitives.StateStore
    public StateFlow<S> getState() {
        return this.state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit updateChain$lambda$1(StateActor stateActor, Reducer reducer) {
        S value;
        Intrinsics.checkNotNullParameter(reducer, "reducer");
        MutableStateFlow<S> mutableStateFlow = stateActor._state;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, (S) reducer.getReduce().invoke(value)));
        return Unit.INSTANCE;
    }

    public final void onUpdate(final Function2<? super Reducer<S>, ? super Function1<? super Reducer<S>, Unit>, Unit> interceptor) {
        Intrinsics.checkNotNullParameter(interceptor, "interceptor");
        final Function1<? super Reducer<S>, Unit> function1 = this.updateChain;
        this.updateChain = new Function1() { // from class: com.superwall.sdk.misc.primitives.StateActor$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StateActor.onUpdate$lambda$2(interceptor, function1, (Reducer) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onUpdate$lambda$2(Function2 function2, Function1 function1, Reducer reducer) {
        Intrinsics.checkNotNullParameter(reducer, "reducer");
        function2.invoke(reducer, function1);
        return Unit.INSTANCE;
    }

    public final void onAction(Function2<Object, ? super Function0<Unit>, Unit> interceptor) {
        Intrinsics.checkNotNullParameter(interceptor, "interceptor");
        this.actionInterceptors = CollectionsKt.plus((Collection<? extends Function2<Object, ? super Function0<Unit>, Unit>>) this.actionInterceptors, interceptor);
    }

    public final void onActionExecution(Function3<Object, ? super Function1<? super Continuation<? super Unit>, ? extends Object>, ? super Continuation<? super Unit>, ? extends Object> interceptor) {
        Intrinsics.checkNotNullParameter(interceptor, "interceptor");
        this.asyncActionInterceptors = CollectionsKt.plus((Collection<? extends Function3<Object, ? super Function1<? super Continuation<? super Unit>, ? extends Object>, ? super Continuation<? super Unit>, ? extends Object>>) this.asyncActionInterceptors, interceptor);
    }

    @Override // com.superwall.sdk.misc.primitives.StateStore
    public void update(Reducer<S> reducer) {
        Intrinsics.checkNotNullParameter(reducer, "reducer");
        this.updateChain.invoke(reducer);
    }

    public <Ctx> void effect(final Ctx ctx, final TypedAction<Ctx> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        runInterceptorChain(action, new Function0() { // from class: com.superwall.sdk.misc.primitives.StateActor$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return StateActor.effect$lambda$3(this.f$0, ctx, action);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit effect$lambda$3(StateActor stateActor, Object obj, TypedAction typedAction) {
        BuildersKt__Builders_commonKt.launch$default(stateActor.scope, null, null, new StateActor$effect$execute$1$1(stateActor, obj, typedAction, null), 3, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.primitives.StateActor$immediateUntil$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: StateActor.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", "", ExifInterface.LATITUDE_SOUTH, "it"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.primitives.StateActor$immediateUntil$2", f = "StateActor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C04922 extends SuspendLambda implements Function2<S, Continuation<? super Boolean>, Object> {
        final /* synthetic */ Function1<S, Boolean> $until;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C04922(Function1<? super S, Boolean> function1, Continuation<? super C04922> continuation) {
            super(2, continuation);
            this.$until = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C04922 c04922 = new C04922(this.$until, continuation);
            c04922.L$0 = obj;
            return c04922;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(S s, Continuation<? super Boolean> continuation) {
            return ((C04922) create(s, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return this.$until.invoke((S) this.L$0);
        }
    }

    static /* synthetic */ <Context, S, Ctx> Object immediateUntil$suspendImpl(StateActor<Context, S> stateActor, Ctx ctx, TypedAction<Ctx> typedAction, Function1<? super S, Boolean> function1, Continuation<? super S> continuation) {
        stateActor.effect(ctx, typedAction);
        return FlowKt.first(stateActor.getState(), new C04922(function1, null), continuation);
    }

    static /* synthetic */ <Context, S, Ctx> Object immediate$suspendImpl(StateActor<Context, S> stateActor, Ctx ctx, final TypedAction<Ctx> typedAction, Continuation<? super Unit> continuation) {
        Function0 function0;
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        if (!((StateActor) stateActor).actionInterceptors.isEmpty()) {
            booleanRef.element = false;
            final Function0 function1 = new Function0() { // from class: com.superwall.sdk.misc.primitives.StateActor$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return StateActor.immediate$lambda$4(booleanRef);
                }
            };
            int size = ((StateActor) stateActor).actionInterceptors.size() - 1;
            if (size >= 0) {
                while (true) {
                    int i = size - 1;
                    final Function2<Object, ? super Function0<Unit>, Unit> function2 = ((StateActor) stateActor).actionInterceptors.get(size);
                    function0 = new Function0() { // from class: com.superwall.sdk.misc.primitives.StateActor$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return StateActor.immediate$lambda$5(function2, typedAction, function1);
                        }
                    };
                    if (i < 0) {
                        break;
                    }
                    size = i;
                    function1 = function0;
                }
                function1 = function0;
            }
            function1.invoke();
        }
        if (booleanRef.element) {
            Object objExecuteAction = stateActor.executeAction(ctx, typedAction, continuation);
            return objExecuteAction == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objExecuteAction : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit immediate$lambda$4(Ref.BooleanRef booleanRef) {
        booleanRef.element = true;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit immediate$lambda$5(Function2 function2, TypedAction typedAction, Function0 function0) {
        function2.invoke(typedAction, function0);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.primitives.StateActor$executeAction$2, reason: invalid class name */
    /* JADX INFO: compiled from: StateActor.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.primitives.StateActor$executeAction$2", f = "StateActor.kt", i = {}, l = {157}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ TypedAction<Ctx> $action;
        final /* synthetic */ Ctx $ctx;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(TypedAction<Ctx> typedAction, Ctx ctx, Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
            this.$action = typedAction;
            this.$ctx = ctx;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass2(this.$action, this.$ctx, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function2 execute = this.$action.getExecute();
                Ctx ctx = this.$ctx;
                this.label = 1;
                if (execute.invoke(ctx, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    static /* synthetic */ <Context, S, Ctx> Object executeAction$suspendImpl(StateActor<Context, S> stateActor, Ctx ctx, TypedAction<Ctx> typedAction, Continuation<? super Unit> continuation) {
        Object objRunAsyncInterceptorChain = stateActor.runAsyncInterceptorChain(typedAction, new AnonymousClass2(typedAction, ctx, null), continuation);
        return objRunAsyncInterceptorChain == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRunAsyncInterceptorChain : Unit.INSTANCE;
    }

    protected final Object runAsyncInterceptorChain(Object obj, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Unit> continuation) {
        if (this.asyncActionInterceptors.isEmpty()) {
            Object objInvoke = function1.invoke(continuation);
            return objInvoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
        }
        int size = this.asyncActionInterceptors.size() - 1;
        if (size >= 0) {
            while (true) {
                int i = size - 1;
                function1 = new C04932(this.asyncActionInterceptors.get(size), obj, function1, null);
                if (i < 0) {
                    break;
                }
                size = i;
            }
        }
        Object objInvoke2 = function1.invoke(continuation);
        return objInvoke2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke2 : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.primitives.StateActor$runAsyncInterceptorChain$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: StateActor.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.primitives.StateActor$runAsyncInterceptorChain$2", f = "StateActor.kt", i = {}, l = {171}, m = "invokeSuspend", n = {}, s = {})
    static final class C04932 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Object $action;
        final /* synthetic */ Function3<Object, Function1<? super Continuation<? super Unit>, ? extends Object>, Continuation<? super Unit>, Object> $interceptor;
        final /* synthetic */ Function1<Continuation<? super Unit>, Object> $next;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C04932(Function3<Object, ? super Function1<? super Continuation<? super Unit>, ? extends Object>, ? super Continuation<? super Unit>, ? extends Object> function3, Object obj, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super C04932> continuation) {
            super(1, continuation);
            this.$interceptor = function3;
            this.$action = obj;
            this.$next = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C04932(this.$interceptor, this.$action, this.$next, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C04932) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function3<Object, Function1<? super Continuation<? super Unit>, ? extends Object>, Continuation<? super Unit>, Object> function3 = this.$interceptor;
                Object obj2 = this.$action;
                Function1<Continuation<? super Unit>, Object> function1 = this.$next;
                this.label = 1;
                if (function3.invoke(obj2, function1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    protected final void runInterceptorChain(final Object action, final Function0<Unit> terminal) {
        Function0<Unit> function0;
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(terminal, "terminal");
        if (this.actionInterceptors.isEmpty()) {
            terminal.invoke();
            return;
        }
        int size = this.actionInterceptors.size() - 1;
        if (size >= 0) {
            while (true) {
                int i = size - 1;
                final Function2<Object, ? super Function0<Unit>, Unit> function2 = this.actionInterceptors.get(size);
                function0 = new Function0() { // from class: com.superwall.sdk.misc.primitives.StateActor$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return StateActor.runInterceptorChain$lambda$6(function2, action, terminal);
                    }
                };
                if (i < 0) {
                    break;
                }
                size = i;
                terminal = function0;
            }
            terminal = function0;
        }
        terminal.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit runInterceptorChain$lambda$6(Function2 function2, Object obj, Function0 function0) {
        function2.invoke(obj, function0);
        return Unit.INSTANCE;
    }
}
