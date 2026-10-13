package com.superwall.sdk.storage;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.TrackingResult;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.analytics.internal.trackable.Trackable;
import com.superwall.sdk.dependencies.DeviceHelperFactory;
import com.superwall.sdk.dependencies.HasExternalPurchaseControllerFactory;
import com.superwall.sdk.misc.ConstantsKt;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.models.triggers.Experiment;
import com.superwall.sdk.network.device.DeviceInfo;
import com.superwall.sdk.storage.core_data.CoreDataManager;
import java.util.Date;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.serialization.json.Json;

/* JADX INFO: compiled from: LocalStorage.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002:\u0001WBC\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u00109\u001a\u00020:2\u0006\u0010\u0015\u001a\u00020\bJ\b\u0010;\u001a\u00020:H\u0002J\u0006\u0010<\u001a\u00020:J\u0006\u0010=\u001a\u00020:J\u0006\u0010>\u001a\u00020:J5\u0010?\u001a\u00020:2(\u0010@\u001a$\b\u0001\u0012\u0004\u0012\u00020B\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020E0D0C\u0012\u0006\u0012\u0004\u0018\u00010F0A¢\u0006\u0002\u0010GJ\b\u0010H\u001a\u00020:H\u0016J\u0006\u0010I\u001a\u00020:J \u0010J\u001a\u00020:2\u0016\u0010K\u001a\u0012\u0012\b\u0012\u00060\bj\u0002`-\u0012\u0004\u0012\u00020.0,H\u0016J\u0018\u0010L\u001a\u0012\u0012\b\u0012\u00060\bj\u0002`-\u0012\u0004\u0012\u00020.0,H\u0016J \u0010M\u001a\u00020:\"\b\b\u0000\u0010N*\u00020F2\f\u0010O\u001a\b\u0012\u0004\u0012\u0002HN0PH\u0016J\b\u0010Q\u001a\u00020:H\u0016J#\u0010R\u001a\u0004\u0018\u0001HN\"\u0004\b\u0000\u0010N2\f\u0010O\u001a\b\u0012\u0004\u0012\u0002HN0PH\u0016¢\u0006\u0002\u0010SJ-\u0010T\u001a\u00020:\"\b\b\u0000\u0010N*\u00020F2\f\u0010O\u001a\b\u0012\u0004\u0012\u0002HN0P2\u0006\u0010U\u001a\u0002HNH\u0016¢\u0006\u0002\u0010VR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019R$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001e8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u000e\u0010$\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010%\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001e8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010!\"\u0004\b'\u0010#R\u000e\u0010(\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010)\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010!\"\u0004\b+\u0010#RH\u0010/\u001a\u0014\u0012\b\u0012\u00060\bj\u0002`-\u0012\u0004\u0012\u00020.\u0018\u00010,2\u0018\u0010\u001d\u001a\u0014\u0012\b\u0012\u00060\bj\u0002`-\u0012\u0004\u0012\u00020.\u0018\u00010,8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b0\u00101\"\u0004\b2\u00103R \u00104\u001a\u0014\u0012\b\u0012\u00060\bj\u0002`-\u0012\u0004\u0012\u00020.\u0018\u00010,X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00105\u001a\u000206X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00108¨\u0006X"}, d2 = {"Lcom/superwall/sdk/storage/LocalStorage;", "Lcom/superwall/sdk/storage/Storage;", "Lkotlinx/coroutines/CoroutineScope;", "context", "Landroid/content/Context;", "json", "Lkotlinx/serialization/json/Json;", "_apiKey", "", "factory", "Lcom/superwall/sdk/storage/LocalStorage$Factory;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "cache", "Lcom/superwall/sdk/storage/Cache;", "coreDataManager", "Lcom/superwall/sdk/storage/core_data/CoreDataManager;", "<init>", "(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;Lcom/superwall/sdk/storage/LocalStorage$Factory;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/Cache;Lcom/superwall/sdk/storage/core_data/CoreDataManager;)V", "getCoreDataManager", "()Lcom/superwall/sdk/storage/core_data/CoreDataManager;", "apiKey", "getApiKey", "()Ljava/lang/String;", "setApiKey", "(Ljava/lang/String;)V", "debugKey", "getDebugKey", "setDebugKey", RNConstants.ARG_VALUE, "", "didTrackFirstSeen", "getDidTrackFirstSeen", "()Z", "setDidTrackFirstSeen", "(Z)V", "_didTrackFirstSeen", "didTrackFirstSession", "getDidTrackFirstSession", "setDidTrackFirstSession", "_didTrackFirstSession", "neverCalledStaticConfig", "getNeverCalledStaticConfig", "setNeverCalledStaticConfig", "", "Lcom/superwall/sdk/models/triggers/ExperimentID;", "Lcom/superwall/sdk/models/triggers/Experiment$Variant;", "p_confirmedAssignments", "getP_confirmedAssignments", "()Ljava/util/Map;", "setP_confirmedAssignments", "(Ljava/util/Map;)V", "_confirmedAssignments", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "configure", "", "updateSdkVersion", "reset", "recordFirstSeenTracked", "recordFirstSessionTracked", "recordAppInstall", "trackEvent", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "Lcom/superwall/sdk/analytics/internal/TrackingResult;", "", "(Lkotlin/jvm/functions/Function2;)V", "clearCachedSessionEvents", "trackPaywallOpen", "saveConfirmedAssignments", "assignments", "getConfirmedAssignments", "delete", ExifInterface.GPS_DIRECTION_TRUE, "storable", "Lcom/superwall/sdk/storage/Storable;", "clean", "read", "(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;", "write", "data", "(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V", "Factory", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class LocalStorage implements Storage, CoroutineScope {
    private final String _apiKey;
    private Map<String, Experiment.Variant> _confirmedAssignments;
    private boolean _didTrackFirstSeen;
    private boolean _didTrackFirstSession;
    private String apiKey;
    private final Cache cache;
    private final CoreDataManager coreDataManager;
    private final CoroutineContext coroutineContext;
    private String debugKey;
    private final Factory factory;
    private final IOScope ioScope;
    private final Json json;
    private boolean neverCalledStaticConfig;

    /* JADX INFO: compiled from: LocalStorage.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lcom/superwall/sdk/storage/LocalStorage$Factory;", "Lcom/superwall/sdk/dependencies/DeviceHelperFactory;", "Lcom/superwall/sdk/dependencies/HasExternalPurchaseControllerFactory;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Factory extends DeviceHelperFactory, HasExternalPurchaseControllerFactory {
    }

    public LocalStorage(Context context, Json json, String _apiKey, Factory factory, IOScope ioScope, Cache cache, CoreDataManager coreDataManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(_apiKey, "_apiKey");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(cache, "cache");
        Intrinsics.checkNotNullParameter(coreDataManager, "coreDataManager");
        this.json = json;
        this._apiKey = _apiKey;
        this.factory = factory;
        this.ioScope = ioScope;
        this.cache = cache;
        this.coreDataManager = coreDataManager;
        this.apiKey = _apiKey;
        this.debugKey = "";
        this.coroutineContext = CoroutineDispatcher.limitedParallelism$default(Dispatchers.getIO(), 1, null, 2, null);
        boolean zAreEqual = Intrinsics.areEqual(cache.read(DidTrackFirstSeen.INSTANCE), (Object) true);
        this._didTrackFirstSeen = zAreEqual;
        if (!zAreEqual) {
            this._didTrackFirstSession = Intrinsics.areEqual(cache.read(DidTrackFirstSession.INSTANCE), (Object) true);
        } else {
            this._didTrackFirstSession = true;
        }
    }

    public /* synthetic */ LocalStorage(Context context, Json json, String str, Factory factory, IOScope iOScope, Cache cache, CoreDataManager coreDataManager, int i, DefaultConstructorMarker defaultConstructorMarker) {
        Json json2;
        Context context2;
        if ((i & 32) != 0) {
            json2 = json;
            context2 = context;
            cache = new Cache(context, null, json2, 2, null);
        } else {
            json2 = json;
            context2 = context;
        }
        this(context2, json2, str, factory, iOScope, cache, (i & 64) != 0 ? new CoreDataManager(context2) : coreDataManager);
    }

    public final CoreDataManager getCoreDataManager() {
        return this.coreDataManager;
    }

    public final String getApiKey() {
        return this.apiKey;
    }

    public final void setApiKey(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.apiKey = str;
    }

    public final String getDebugKey() {
        return this.debugKey;
    }

    public final void setDebugKey(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.debugKey = str;
    }

    public final boolean getDidTrackFirstSeen() {
        return ((Boolean) BuildersKt.runBlocking(getCoroutineContext(), new LocalStorage$didTrackFirstSeen$1(this, null))).booleanValue();
    }

    public final void setDidTrackFirstSeen(boolean z) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new LocalStorage$didTrackFirstSeen$2(this, z, null), 3, null);
    }

    public final boolean getDidTrackFirstSession() {
        return ((Boolean) BuildersKt.runBlocking(getCoroutineContext(), new LocalStorage$didTrackFirstSession$1(this, null))).booleanValue();
    }

    public final void setDidTrackFirstSession(boolean z) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new LocalStorage$didTrackFirstSession$2(this, z, null), 3, null);
    }

    public final boolean getNeverCalledStaticConfig() {
        return this.neverCalledStaticConfig;
    }

    public final void setNeverCalledStaticConfig(boolean z) {
        this.neverCalledStaticConfig = z;
    }

    private final Map<String, Experiment.Variant> getP_confirmedAssignments() {
        return (Map) BuildersKt.runBlocking(getCoroutineContext(), new LocalStorage$p_confirmedAssignments$1(this, null));
    }

    private final void setP_confirmedAssignments(Map<String, Experiment.Variant> map) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new LocalStorage$p_confirmedAssignments$2(this, map, null), 3, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    public final void configure(String apiKey) {
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        updateSdkVersion();
        this.apiKey = apiKey;
    }

    private final void updateSdkVersion() {
        String sdkVersion = ConstantsKt.getSdkVersion();
        String str = (String) read(SdkVersion.INSTANCE);
        if (!Intrinsics.areEqual(sdkVersion, str)) {
            write(SdkVersion.INSTANCE, sdkVersion);
        }
        if (str == null) {
            this.neverCalledStaticConfig = true;
        }
    }

    public final void reset() {
        this.coreDataManager.deleteAllEntities();
        this.cache.clean();
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C05841(null), 3, null);
        recordFirstSeenTracked();
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.LocalStorage$reset$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LocalStorage.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.LocalStorage$reset$1", f = "LocalStorage.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05841 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05841(Continuation<? super C05841> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LocalStorage.this.new C05841(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05841) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                LocalStorage.this._confirmedAssignments = null;
                LocalStorage.this._didTrackFirstSeen = false;
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.LocalStorage$recordFirstSeenTracked$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LocalStorage.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.LocalStorage$recordFirstSeenTracked$1", f = "LocalStorage.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05821 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05821(Continuation<? super C05821> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LocalStorage.this.new C05821(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05821) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (LocalStorage.this._didTrackFirstSeen) {
                    return Unit.INSTANCE;
                }
                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new C01291(null), 3, null);
                LocalStorage.this.write(DidTrackFirstSeen.INSTANCE, Boxing.boxBoolean(true));
                LocalStorage.this._didTrackFirstSeen = true;
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        /* JADX INFO: renamed from: com.superwall.sdk.storage.LocalStorage$recordFirstSeenTracked$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: LocalStorage.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.storage.LocalStorage$recordFirstSeenTracked$1$1", f = "LocalStorage.kt", i = {}, l = {144}, m = "invokeSuspend", n = {}, s = {})
        static final class C01291 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;

            C01291(Continuation<? super C01291> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C01291(continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C01291) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                int i2 = 1;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (TrackingKt.track(Superwall.INSTANCE.getInstance(), new InternalSuperwallEvent.FirstSeen(null, i2, 0 == true ? 1 : 0), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    ((Result) obj).getValue();
                }
                return Unit.INSTANCE;
            }
        }
    }

    public final void recordFirstSeenTracked() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C05821(null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.LocalStorage$recordFirstSessionTracked$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LocalStorage.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.LocalStorage$recordFirstSessionTracked$1", f = "LocalStorage.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05831 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05831(Continuation<? super C05831> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LocalStorage.this.new C05831(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05831) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (LocalStorage.this._didTrackFirstSession) {
                    return Unit.INSTANCE;
                }
                LocalStorage.this.write(DidTrackFirstSession.INSTANCE, Boxing.boxBoolean(true));
                LocalStorage.this._didTrackFirstSession = true;
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void recordFirstSessionTracked() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C05831(null), 3, null);
    }

    public final void recordAppInstall(Function2<? super Trackable, ? super Continuation<? super Result<TrackingResult>>, ? extends Object> trackEvent) {
        Intrinsics.checkNotNullParameter(trackEvent, "trackEvent");
        Boolean bool = (Boolean) read(DidTrackAppInstall.INSTANCE);
        if (bool != null ? bool.booleanValue() : false) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass1(this.factory.makeDeviceInfo(), this.factory.makeHasExternalPurchaseController(), trackEvent, null), 3, null);
        write(DidTrackAppInstall.INSTANCE, true);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.LocalStorage$recordAppInstall$1, reason: invalid class name */
    /* JADX INFO: compiled from: LocalStorage.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.LocalStorage$recordAppInstall$1", f = "LocalStorage.kt", i = {}, l = {177}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ DeviceInfo $deviceInfo;
        final /* synthetic */ boolean $hasExternalPurchaseController;
        final /* synthetic */ Function2<Trackable, Continuation<? super Result<TrackingResult>>, Object> $trackEvent;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(DeviceInfo deviceInfo, boolean z, Function2<? super Trackable, ? super Continuation<? super Result<TrackingResult>>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$deviceInfo = deviceInfo;
            this.$hasExternalPurchaseController = z;
            this.$trackEvent = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$deviceInfo, this.$hasExternalPurchaseController, this.$trackEvent, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InternalSuperwallEvent.AppInstall appInstall = new InternalSuperwallEvent.AppInstall(this.$deviceInfo.getAppInstalledAtString(), this.$hasExternalPurchaseController, null, 4, null);
                Function2<Trackable, Continuation<? super Result<TrackingResult>>, Object> function2 = this.$trackEvent;
                this.label = 1;
                if (function2.invoke(appInstall, this) == coroutine_suspended) {
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

    public void clearCachedSessionEvents() {
        this.cache.delete(Transactions.INSTANCE);
    }

    public final void trackPaywallOpen() {
        Integer num = (Integer) read(TotalPaywallViews.INSTANCE);
        write(TotalPaywallViews.INSTANCE, Integer.valueOf((num != null ? num.intValue() : 0) + 1));
        write(LastPaywallView.INSTANCE, new Date());
    }

    public void saveConfirmedAssignments(Map<String, Experiment.Variant> assignments) {
        Intrinsics.checkNotNullParameter(assignments, "assignments");
        write(ConfirmedAssignments.INSTANCE, assignments);
        setP_confirmedAssignments(assignments);
    }

    public Map<String, Experiment.Variant> getConfirmedAssignments() {
        Map<String, Experiment.Variant> p_confirmedAssignments = getP_confirmedAssignments();
        if (p_confirmedAssignments != null) {
            return p_confirmedAssignments;
        }
        Map<String, Experiment.Variant> mapEmptyMap = (Map) read(ConfirmedAssignments.INSTANCE);
        if (mapEmptyMap == null) {
            mapEmptyMap = MapsKt.emptyMap();
        }
        setP_confirmedAssignments(mapEmptyMap);
        return mapEmptyMap;
    }

    @Override // com.superwall.sdk.storage.Storage
    public <T> void delete(Storable<T> storable) {
        Intrinsics.checkNotNullParameter(storable, "storable");
        this.cache.delete(storable);
    }

    @Override // com.superwall.sdk.storage.Storage
    public void clean() {
        reset();
    }

    @Override // com.superwall.sdk.storage.Storage
    public <T> T read(Storable<T> storable) {
        Intrinsics.checkNotNullParameter(storable, "storable");
        return (T) this.cache.read(storable);
    }

    @Override // com.superwall.sdk.storage.Storage
    public <T> void write(Storable<T> storable, T data) {
        Intrinsics.checkNotNullParameter(storable, "storable");
        Intrinsics.checkNotNullParameter(data, "data");
        this.cache.write(storable, data);
    }
}
