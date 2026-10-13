package com.superwall.sdk.storage;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.storage.memory.LRUCache;
import com.superwall.sdk.storage.memory.PerpetualCache;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.serialization.json.Json;

/* JADX INFO: compiled from: Cache.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\n\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ!\u0010\u0010\u001a\u0004\u0018\u0001H\u0011\"\u0004\b\u0000\u0010\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0013¢\u0006\u0002\u0010\u0014J+\u0010\u0015\u001a\u00020\u0016\"\b\b\u0000\u0010\u0011*\u00020\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00110\u00132\u0006\u0010\u0017\u001a\u0002H\u0011¢\u0006\u0002\u0010\u0018J\u001e\u0010\u0019\u001a\u00020\u0016\"\b\b\u0000\u0010\u0011*\u00020\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0013J\u0006\u0010\u001a\u001a\u00020\u0016J\b\u0010\u001b\u001a\u00020\u0016H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\u0005X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/superwall/sdk/storage/Cache;", "Lkotlinx/coroutines/CoroutineScope;", "context", "Landroid/content/Context;", "ioQueue", "Lkotlin/coroutines/CoroutineContext;", "json", "Lkotlinx/serialization/json/Json;", "<init>", "(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlinx/serialization/json/Json;)V", "getContext", "()Landroid/content/Context;", "memCache", "Lcom/superwall/sdk/storage/memory/LRUCache;", "", "", "read", ExifInterface.GPS_DIRECTION_TRUE, "storable", "Lcom/superwall/sdk/storage/Storable;", "(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;", "write", "", "data", "(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V", "delete", "clean", "cleanDiskCache", "coroutineContext", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Cache implements CoroutineScope {
    private static final String appSpecificDocumentDirectoryPrefix = "com.superwall.document.appSpecific.Store";
    private static final String cacheDirectoryPrefix = "com.superwall.cache.Store";
    private static final long defaultMaxCachePeriodInSecond = 604800;
    private static final String ioQueuePrefix = "com.superwall.queue.Store";
    private static final String userSpecificDocumentDirectoryPrefix = "com.superwall.document.userSpecific.Store";
    private final /* synthetic */ CoroutineScope $$delegate_0;
    private final Context context;
    private final CoroutineContext ioQueue;
    private final Json json;
    private final LRUCache<String, Object> memCache;

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }

    public Cache(Context context, CoroutineContext ioQueue, Json json) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(ioQueue, "ioQueue");
        Intrinsics.checkNotNullParameter(json, "json");
        this.$$delegate_0 = CoroutineScopeKt.CoroutineScope(ioQueue);
        this.context = context;
        this.ioQueue = ioQueue;
        this.json = json;
        this.memCache = new LRUCache<>(new PerpetualCache(), 1000);
    }

    public final Context getContext() {
        return this.context;
    }

    public /* synthetic */ Cache(Context context, CoroutineDispatcher coroutineDispatcher, Json json, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? CoroutineDispatcher.limitedParallelism$default(Dispatchers.getIO(), 1, null, 2, null) : coroutineDispatcher, json);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final <T> T read(Storable<T> storable) {
        Intrinsics.checkNotNullParameter(storable, "storable");
        T t = null;
        try {
            Object obj = this.memCache.get(storable.getKey());
            if (obj != null) {
                t = (T) obj;
            }
        } catch (ClassCastException e) {
            this.memCache.remove(storable.getKey());
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.cache, "ClassCastException reading from memory cache for key: " + storable.getKey(), null, e, 8, null);
        }
        if (t == null) {
            File file = storable.file(this.context);
            if (file.exists()) {
                String text = "";
                try {
                    text = FilesKt.readText(file, Charsets.UTF_8);
                    t = (T) this.json.decodeFromString(storable.getSerializer(), text);
                    if (t != null) {
                        this.memCache.set(storable.getKey(), t);
                        Unit unit = Unit.INSTANCE;
                    }
                } catch (Throwable th) {
                    Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.cache, "Unable to read key: " + storable.getKey() + ", got " + text, null, th, 8, null);
                    Unit unit2 = Unit.INSTANCE;
                }
            }
        }
        return t;
    }

    public final <T> void write(Storable<T> storable, T data) {
        Intrinsics.checkNotNullParameter(storable, "storable");
        Intrinsics.checkNotNullParameter(data, "data");
        this.memCache.set(storable.getKey(), data);
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C05771(storable, this, data, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.Cache$write$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Cache.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.Cache$write$1", f = "Cache.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05771 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ T $data;
        final /* synthetic */ Storable<T> $storable;
        int label;
        final /* synthetic */ Cache this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05771(Storable<T> storable, Cache cache, T t, Continuation<? super C05771> continuation) {
            super(2, continuation);
            this.$storable = storable;
            this.this$0 = cache;
            this.$data = t;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05771(this.$storable, this.this$0, this.$data, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05771) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                FilesKt.writeText(this.$storable.file(this.this$0.getContext()), this.this$0.json.encodeToString(this.$storable.getSerializer(), this.$data), Charsets.UTF_8);
            } catch (Throwable th) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.cache, "Unable to write key: " + this.$storable.getKey(), null, th, 8, null);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.Cache$delete$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Cache.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.Cache$delete$1", f = "Cache.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05761 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Storable<T> $storable;
        int label;
        final /* synthetic */ Cache this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05761(Storable<T> storable, Cache cache, Continuation<? super C05761> continuation) {
            super(2, continuation);
            this.$storable = storable;
            this.this$0 = cache;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05761(this.$storable, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05761) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Storable<T> storable = this.$storable;
            try {
                try {
                    File file = storable.file(this.this$0.getContext());
                    if (file.exists()) {
                        file.delete();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                    Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.cache, "Unable to delete key: " + storable.getKey(), null, th, 8, null);
                }
                new Either.Success(Unit.INSTANCE);
            } catch (Throwable th2) {
                if (ErrorTrackingKt.shouldLog(th2) && Superwall.INSTANCE.getInitialized()) {
                    ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th2);
                }
                new Either.Failure(th2);
            }
            return Unit.INSTANCE;
        }
    }

    public final <T> void delete(Storable<T> storable) {
        Intrinsics.checkNotNullParameter(storable, "storable");
        this.memCache.remove(storable.getKey());
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C05761(storable, this, null), 3, null);
    }

    public final void clean() {
        this.memCache.clear();
        cleanDiskCache();
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.Cache$cleanDiskCache$1, reason: invalid class name */
    /* JADX INFO: compiled from: Cache.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.Cache$cleanDiskCache$1", f = "Cache.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Cache.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Either.Failure failure;
            File[] fileArrListFiles;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                File cacheDir = Cache.this.getContext().getCacheDir();
                if (cacheDir.exists() && (fileArrListFiles = cacheDir.listFiles()) != null) {
                    for (File file : fileArrListFiles) {
                        file.delete();
                    }
                }
                failure = new Either.Success(Unit.INSTANCE);
            } catch (Throwable th) {
                if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                    ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
                }
                failure = new Either.Failure(th);
            }
            EitherKt.onError(failure, new Function1() { // from class: com.superwall.sdk.storage.Cache$cleanDiskCache$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Cache.AnonymousClass1.invokeSuspend$lambda$2((Throwable) obj2);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$2(Throwable th) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.cache, "Unable to clean disk cache", null, th, 8, null);
            return Unit.INSTANCE;
        }
    }

    private final void cleanDiskCache() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new AnonymousClass1(null), 3, null);
    }
}
