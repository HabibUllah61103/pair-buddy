package com.superwall.sdk.misc;

import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: compiled from: SerialTaskManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J)\u0010\u000b\u001a\u00020\n2\u001c\u0010\f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b¢\u0006\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0006\u001a\u001e\u0012\u001a\u0012\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/misc/SerialTaskManager;", "", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Lkotlinx/coroutines/CoroutineScope;)V", "channel", "Lkotlinx/coroutines/channels/Channel;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "addTask", "task", "(Lkotlin/jvm/functions/Function1;)V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SerialTaskManager {
    private final Channel<Function1<Continuation<? super Unit>, Object>> channel;
    private final CoroutineScope coroutineScope;

    /* JADX WARN: Multi-variable type inference failed */
    public SerialTaskManager() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public SerialTaskManager(CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        this.coroutineScope = coroutineScope;
        this.channel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(null), 3, null);
    }

    public /* synthetic */ SerialTaskManager(CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()) : coroutineScope);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.SerialTaskManager$1, reason: invalid class name */
    /* JADX INFO: compiled from: SerialTaskManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.SerialTaskManager$1", f = "SerialTaskManager.kt", i = {}, l = {17, 19}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SerialTaskManager.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0043  */
        /* JADX WARN: Code duplicated, block: B:21:0x004e  */
        /* JADX WARN: Code duplicated, block: B:34:0x0089  */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
        
            if (r7.invoke(r6) == r0) goto L24;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x005c -> B:25:0x005f). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L28
                if (r1 == r3) goto L20
                if (r1 != r2) goto L18
                java.lang.Object r1 = r6.L$0
                kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
                kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L16
                goto L5f
            L16:
                r7 = move-exception
                goto L69
            L18:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L20:
                java.lang.Object r1 = r6.L$0
                kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
                kotlin.ResultKt.throwOnFailure(r7)
                goto L46
            L28:
                kotlin.ResultKt.throwOnFailure(r7)
                com.superwall.sdk.misc.SerialTaskManager r7 = com.superwall.sdk.misc.SerialTaskManager.this
                kotlinx.coroutines.channels.Channel r7 = com.superwall.sdk.misc.SerialTaskManager.access$getChannel$p(r7)
                kotlinx.coroutines.channels.ChannelIterator r7 = r7.iterator()
            L35:
                r1 = r6
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
                r6.L$0 = r7
                r6.label = r3
                java.lang.Object r1 = r7.hasNext(r1)
                if (r1 != r0) goto L43
                goto L5e
            L43:
                r5 = r1
                r1 = r7
                r7 = r5
            L46:
                java.lang.Boolean r7 = (java.lang.Boolean) r7
                boolean r7 = r7.booleanValue()
                if (r7 == 0) goto L89
                java.lang.Object r7 = r1.next()
                kotlin.jvm.functions.Function1 r7 = (kotlin.jvm.functions.Function1) r7
                r6.L$0 = r1     // Catch: java.lang.Throwable -> L16
                r6.label = r2     // Catch: java.lang.Throwable -> L16
                java.lang.Object r7 = r7.invoke(r6)     // Catch: java.lang.Throwable -> L16
                if (r7 != r0) goto L5f
            L5e:
                return r0
            L5f:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L16
                com.superwall.sdk.misc.Either$Success r4 = new com.superwall.sdk.misc.Either$Success     // Catch: java.lang.Throwable -> L16
                r4.<init>(r7)     // Catch: java.lang.Throwable -> L16
                com.superwall.sdk.misc.Either r4 = (com.superwall.sdk.misc.Either) r4     // Catch: java.lang.Throwable -> L16
                goto L87
            L69:
                boolean r4 = com.superwall.sdk.utilities.ErrorTrackingKt.access$shouldLog(r7)
                if (r4 == 0) goto L80
                com.superwall.sdk.Superwall$Companion r4 = com.superwall.sdk.Superwall.INSTANCE
                boolean r4 = r4.getInitialized()
                if (r4 == 0) goto L80
                com.superwall.sdk.Superwall$Companion r4 = com.superwall.sdk.Superwall.INSTANCE
                com.superwall.sdk.Superwall r4 = r4.getInstance()
                com.superwall.sdk.utilities.ErrorTrackingKt.trackError(r4, r7)
            L80:
                com.superwall.sdk.misc.Either$Failure r4 = new com.superwall.sdk.misc.Either$Failure
                r4.<init>(r7)
                com.superwall.sdk.misc.Either r4 = (com.superwall.sdk.misc.Either) r4
            L87:
                r7 = r1
                goto L35
            L89:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.misc.SerialTaskManager.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void addTask(Function1<? super Continuation<? super Unit>, ? extends Object> task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (ChannelResult.m12783isFailureimpl(this.channel.mo12759trySendJP2dKIU(task))) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.superwallCore, "SerialTaskManager: failed to enqueue task — channel closed", null, null, 24, null);
        }
    }
}
