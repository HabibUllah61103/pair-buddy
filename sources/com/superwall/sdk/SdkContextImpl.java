package com.superwall.sdk;

import com.superwall.sdk.config.ConfigManager;
import com.superwall.sdk.identity.Keys;
import com.superwall.sdk.misc.Config_AwaitFirstValidConfigKt;
import com.superwall.sdk.models.config.Config;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: SdkContext.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\"\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096@¢\u0006\u0002\u0010\fJ\u000e\u0010\r\u001a\u00020\bH\u0096@¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096@¢\u0006\u0002\u0010\u000eR\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/SdkContextImpl;", "Lcom/superwall/sdk/SdkContext;", "configManager", "Lkotlin/Function0;", "Lcom/superwall/sdk/config/ConfigManager;", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "reevaluateTestMode", "", Keys.APP_USER_ID, "", Keys.ALIAS_ID, "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchAssignments", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitConfig", "Lcom/superwall/sdk/models/config/Config;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SdkContextImpl implements SdkContext {
    private final Function0<ConfigManager> configManager;

    /* JADX WARN: Multi-variable type inference failed */
    public SdkContextImpl(Function0<? extends ConfigManager> configManager) {
        Intrinsics.checkNotNullParameter(configManager, "configManager");
        this.configManager = configManager;
    }

    @Override // com.superwall.sdk.SdkContext
    public Object reevaluateTestMode(String str, String str2, Continuation<? super Unit> continuation) {
        Object objReevaluateTestMode$default = ConfigManager.reevaluateTestMode$default(this.configManager.invoke(), null, str, str2, continuation, 1, null);
        return objReevaluateTestMode$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objReevaluateTestMode$default : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.SdkContextImpl$fetchAssignments$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SdkContext.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.SdkContextImpl$fetchAssignments$2", f = "SdkContext.kt", i = {}, l = {31}, m = "invokeSuspend", n = {}, s = {})
    static final class C04392 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C04392(Continuation<? super C04392> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SdkContextImpl.this.new C04392(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04392) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (((ConfigManager) SdkContextImpl.this.configManager.invoke()).getAssignments(this) == coroutine_suspended) {
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

    @Override // com.superwall.sdk.SdkContext
    public Object fetchAssignments(Continuation<? super Unit> continuation) {
        Duration.Companion companion = Duration.INSTANCE;
        return TimeoutKt.m12757withTimeoutOrNullKLykuaI(DurationKt.toDuration(30, DurationUnit.SECONDS), new C04392(null), continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.SdkContextImpl$awaitConfig$2, reason: invalid class name */
    /* JADX INFO: compiled from: SdkContext.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/models/config/Config;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.SdkContextImpl$awaitConfig$2", f = "SdkContext.kt", i = {}, l = {37}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Config>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SdkContextImpl.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Config> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
            Object objAwaitFirstValidConfig = Config_AwaitFirstValidConfigKt.awaitFirstValidConfig(((ConfigManager) SdkContextImpl.this.configManager.invoke()).getConfigState$superwall_release(), this);
            return objAwaitFirstValidConfig == coroutine_suspended ? coroutine_suspended : objAwaitFirstValidConfig;
        }
    }

    @Override // com.superwall.sdk.SdkContext
    public Object awaitConfig(Continuation<? super Config> continuation) {
        Duration.Companion companion = Duration.INSTANCE;
        return TimeoutKt.m12757withTimeoutOrNullKLykuaI(DurationKt.toDuration(30, DurationUnit.SECONDS), new AnonymousClass2(null), continuation);
    }
}
