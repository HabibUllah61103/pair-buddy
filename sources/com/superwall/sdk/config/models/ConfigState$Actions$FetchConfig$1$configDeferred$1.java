package com.superwall.sdk.config.models;

import com.superwall.sdk.config.ConfigContext;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.config.FeatureFlags;
import com.superwall.sdk.network.NetworkError;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: ConfigState.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/models/config/Config;", "Lcom/superwall/sdk/network/NetworkError;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$configDeferred$1", f = "ConfigState.kt", i = {0, 1}, l = {95, 118}, m = "invokeSuspend", n = {"start", "start"}, s = {"J$0", "J$0"})
final class ConfigState$Actions$FetchConfig$1$configDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Either<? extends Config, NetworkError>>, Object> {
    final /* synthetic */ ConfigContext $$this$exec;
    final /* synthetic */ long $cacheLimit;
    final /* synthetic */ Ref.LongRef $configDuration;
    final /* synthetic */ AtomicInteger $configRetryCount;
    final /* synthetic */ Ref.BooleanRef $isConfigFromCache;
    final /* synthetic */ Config $oldConfig;
    long J$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConfigState$Actions$FetchConfig$1$configDeferred$1(Config config, long j, ConfigContext configContext, AtomicInteger atomicInteger, Ref.BooleanRef booleanRef, Ref.LongRef longRef, Continuation<? super ConfigState$Actions$FetchConfig$1$configDeferred$1> continuation) {
        super(2, continuation);
        this.$oldConfig = config;
        this.$cacheLimit = j;
        this.$$this$exec = configContext;
        this.$configRetryCount = atomicInteger;
        this.$isConfigFromCache = booleanRef;
        this.$configDuration = longRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ConfigState$Actions$FetchConfig$1$configDeferred$1(this.$oldConfig, this.$cacheLimit, this.$$this$exec, this.$configRetryCount, this.$isConfigFromCache, this.$configDuration, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Either<? extends Config, NetworkError>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Either<Config, NetworkError>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Either<Config, NetworkError>> continuation) {
        return ((ConfigState$Actions$FetchConfig$1$configDeferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long j;
        FeatureFlags featureFlags;
        Throwable th;
        long j2;
        Either.Success success;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Config config = this.$oldConfig;
            if (config != null && (featureFlags = config.getFeatureFlags()) != null && featureFlags.getEnableConfigRefresh()) {
                try {
                    this.J$0 = jCurrentTimeMillis;
                    this.label = 1;
                    obj = TimeoutKt.m12756withTimeoutKLykuaI(this.$cacheLimit, new AnonymousClass1(this.$$this$exec, this.$configRetryCount, this.$isConfigFromCache, this.$oldConfig, null), this);
                    if (obj != coroutine_suspended) {
                        j2 = jCurrentTimeMillis;
                        success = (Either) obj;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    j2 = jCurrentTimeMillis;
                    th.printStackTrace();
                    Config config2 = this.$oldConfig;
                    this.$isConfigFromCache.element = true;
                    success = new Either.Success(config2);
                }
            } else {
                this.J$0 = jCurrentTimeMillis;
                this.label = 2;
                obj = this.$$this$exec.getNetwork().getConfig(new AnonymousClass3(this.$$this$exec, this.$configRetryCount, null), this);
                if (obj != coroutine_suspended) {
                    j = jCurrentTimeMillis;
                    success = (Either) obj;
                    j2 = j;
                }
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            j2 = this.J$0;
            try {
                ResultKt.throwOnFailure(obj);
                success = (Either) obj;
            } catch (Throwable th3) {
                th = th3;
                th.printStackTrace();
                Config config3 = this.$oldConfig;
                this.$isConfigFromCache.element = true;
                success = new Either.Success(config3);
            }
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = this.J$0;
            ResultKt.throwOnFailure(obj);
            success = (Either) obj;
            j2 = j;
        }
        this.$configDuration.element = System.currentTimeMillis() - j2;
        return success;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$configDeferred$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: ConfigState.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/models/config/Config;", "Lcom/superwall/sdk/network/NetworkError;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$configDeferred$1$1", f = "ConfigState.kt", i = {}, l = {97}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Either<? extends Config, NetworkError>>, Object> {
        final /* synthetic */ ConfigContext $$this$exec;
        final /* synthetic */ AtomicInteger $configRetryCount;
        final /* synthetic */ Ref.BooleanRef $isConfigFromCache;
        final /* synthetic */ Config $oldConfig;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ConfigContext configContext, AtomicInteger atomicInteger, Ref.BooleanRef booleanRef, Config config, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$$this$exec = configContext;
            this.$configRetryCount = atomicInteger;
            this.$isConfigFromCache = booleanRef;
            this.$oldConfig = config;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$$this$exec, this.$configRetryCount, this.$isConfigFromCache, this.$oldConfig, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Either<? extends Config, NetworkError>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super Either<Config, NetworkError>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Either<Config, NetworkError>> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.$$this$exec.getNetwork().getConfig(new C01111(this.$$this$exec, this.$configRetryCount, null), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Either either = (Either) obj;
            Ref.BooleanRef booleanRef = this.$isConfigFromCache;
            Config config = this.$oldConfig;
            if (!(either instanceof Either.Failure)) {
                return either;
            }
            booleanRef.element = true;
            return new Either.Success(config);
        }

        /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$configDeferred$1$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: ConfigState.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$configDeferred$1$1$1", f = "ConfigState.kt", i = {}, l = {100}, m = "invokeSuspend", n = {}, s = {})
        static final class C01111 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
            final /* synthetic */ ConfigContext $$this$exec;
            final /* synthetic */ AtomicInteger $configRetryCount;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01111(ConfigContext configContext, AtomicInteger atomicInteger, Continuation<? super C01111> continuation) {
                super(1, continuation);
                this.$$this$exec = configContext;
                this.$configRetryCount = atomicInteger;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Continuation<?> continuation) {
                return new C01111(this.$$this$exec, this.$configRetryCount, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super Unit> continuation) {
                return ((C01111) create(continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.$$this$exec.update(ConfigState.Updates.SetRetrying.INSTANCE);
                    this.$configRetryCount.incrementAndGet();
                    Function1<Continuation<? super Unit>, Object> awaitUtilNetwork = this.$$this$exec.getAwaitUtilNetwork();
                    this.label = 1;
                    if (awaitUtilNetwork.invoke(this) == coroutine_suspended) {
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
    }

    /* JADX INFO: renamed from: com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$configDeferred$1$3, reason: invalid class name */
    /* JADX INFO: compiled from: ConfigState.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$configDeferred$1$3", f = "ConfigState.kt", i = {}, l = {121}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ ConfigContext $$this$exec;
        final /* synthetic */ AtomicInteger $configRetryCount;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(ConfigContext configContext, AtomicInteger atomicInteger, Continuation<? super AnonymousClass3> continuation) {
            super(1, continuation);
            this.$$this$exec = configContext;
            this.$configRetryCount = atomicInteger;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass3(this.$$this$exec, this.$configRetryCount, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.$$this$exec.update(ConfigState.Updates.SetRetrying.INSTANCE);
                this.$configRetryCount.incrementAndGet();
                Function1<Continuation<? super Unit>, Object> awaitUtilNetwork = this.$$this$exec.getAwaitUtilNetwork();
                this.label = 1;
                if (awaitUtilNetwork.invoke(this) == coroutine_suspended) {
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
}
