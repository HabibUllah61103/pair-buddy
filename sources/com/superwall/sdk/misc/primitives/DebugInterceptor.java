package com.superwall.sdk.misc.primitives;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import expo.modules.interfaces.permissions.PermissionsResponse;
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
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DebugInterceptor.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JB\u0010\u0004\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0006\"\u0004\b\u0001\u0010\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\t2\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\f\u0010\u0010\u001a\u00020\u000b*\u00020\u0001H\u0002¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/misc/primitives/DebugInterceptor;", "", "<init>", "()V", "install", "", "Ctx", ExifInterface.LATITUDE_SOUTH, "actor", "Lcom/superwall/sdk/misc/primitives/StateActor;", "name", "", PermissionsResponse.SCOPE_KEY, "Lcom/superwall/sdk/logger/LogScope;", "level", "Lcom/superwall/sdk/logger/LogLevel;", "labelOf", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DebugInterceptor {
    public static final DebugInterceptor INSTANCE = new DebugInterceptor();

    private DebugInterceptor() {
    }

    public static /* synthetic */ void install$default(DebugInterceptor debugInterceptor, StateActor stateActor, String str, LogScope logScope, LogLevel logLevel, int i, Object obj) {
        if ((i & 4) != 0) {
            logScope = LogScope.superwallCore;
        }
        if ((i & 8) != 0) {
            logLevel = LogLevel.debug;
        }
        debugInterceptor.install(stateActor, str, logScope, logLevel);
    }

    public final <Ctx, S> void install(StateActor<Ctx, S> actor, final String name, final LogScope scope, final LogLevel level) {
        Intrinsics.checkNotNullParameter(actor, "actor");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(level, "level");
        actor.onUpdate(new Function2() { // from class: com.superwall.sdk.misc.primitives.DebugInterceptor$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return DebugInterceptor.install$lambda$0(level, scope, name, (Reducer) obj, (Function1) obj2);
            }
        });
        actor.onAction(new Function2() { // from class: com.superwall.sdk.misc.primitives.DebugInterceptor$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return DebugInterceptor.install$lambda$1(level, scope, name, obj, (Function0) obj2);
            }
        });
        actor.onActionExecution(new AnonymousClass3(level, scope, name, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit install$lambda$0(LogLevel logLevel, LogScope logScope, String str, Reducer reducer, Function1 next) {
        Intrinsics.checkNotNullParameter(reducer, "reducer");
        Intrinsics.checkNotNullParameter(next, "next");
        String strLabelOf = INSTANCE.labelOf(reducer);
        long jNanoTime = System.nanoTime();
        next.invoke(reducer);
        Logger.debug$default(Logger.INSTANCE, logLevel, logScope, "Interceptor: [" + str + "] update → " + strLabelOf + " | " + ((System.nanoTime() - jNanoTime) / ((long) 1000000)) + "ms", null, null, 24, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit install$lambda$1(LogLevel logLevel, LogScope logScope, String str, Object action, Function0 next) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(next, "next");
        Logger.debug$default(Logger.INSTANCE, logLevel, logScope, "Interceptor: [" + str + "] action → " + INSTANCE.labelOf(action), null, null, 24, null);
        next.invoke();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.primitives.DebugInterceptor$install$3, reason: invalid class name */
    /* JADX INFO: compiled from: DebugInterceptor.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u001c\u0010\u0004\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005H\n"}, d2 = {"<anonymous>", "", "action", "", "next", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.primitives.DebugInterceptor$install$3", f = "DebugInterceptor.kt", i = {0, 0}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT}, m = "invokeSuspend", n = {"actionName", "start"}, s = {"L$0", "J$0"})
    static final class AnonymousClass3 extends SuspendLambda implements Function3<Object, Function1<? super Continuation<? super Unit>, ? extends Object>, Continuation<? super Unit>, Object> {
        final /* synthetic */ LogLevel $level;
        final /* synthetic */ String $name;
        final /* synthetic */ LogScope $scope;
        long J$0;
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(LogLevel logLevel, LogScope logScope, String str, Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
            this.$level = logLevel;
            this.$scope = logScope;
            this.$name = str;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Unit> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$level, this.$scope, this.$name, continuation);
            anonymousClass3.L$0 = obj;
            anonymousClass3.L$1 = function1;
            return anonymousClass3.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            long j;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.L$0;
                Function1 function1 = (Function1) this.L$1;
                String strLabelOf = DebugInterceptor.INSTANCE.labelOf(obj2);
                long jNanoTime = System.nanoTime();
                this.L$0 = strLabelOf;
                this.J$0 = jNanoTime;
                this.label = 1;
                if (function1.invoke(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                str = strLabelOf;
                j = jNanoTime;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j = this.J$0;
                str = (String) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            Logger.debug$default(Logger.INSTANCE, this.$level, this.$scope, "Interceptor: [" + this.$name + "] action ✓ " + str + " | " + ((System.nanoTime() - j) / ((long) 1000000)) + "ms", null, null, 24, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String labelOf(Object obj) {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(obj.getClass());
        String simpleName = orCreateKotlinClass.getSimpleName();
        if (simpleName == null && (simpleName = orCreateKotlinClass.getQualifiedName()) == null) {
            simpleName = "anonymous";
        }
        String string = obj.toString();
        return StringsKt.startsWith$default(string, simpleName, false, 2, (Object) null) ? string : simpleName;
    }
}
