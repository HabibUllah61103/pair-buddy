package com.superwall.sdk.web;

import android.content.Context;
import android.net.Uri;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.google.android.gms.common.internal.ImagesContract;
import com.superwall.sdk.deeplinks.DeepLinkRouterKt;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.IOScope;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: DeepLinkReferrer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0096@¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u001e\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u001d0\u001c*\u00020\u0013H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/superwall/sdk/web/DeepLinkReferrer;", "Lcom/superwall/sdk/web/CheckForReferral;", "context", "Lkotlin/Function0;", "Landroid/content/Context;", PermissionsResponse.SCOPE_KEY, "Lcom/superwall/sdk/misc/IOScope;", "<init>", "(Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/IOScope;)V", "referrerClient", "Lcom/android/installreferrer/api/InstallReferrerClient;", "getReferrerClient", "()Lcom/android/installreferrer/api/InstallReferrerClient;", "tryConnecting", "", "timeout", "", "checkForReferral", "Lkotlin/Result;", "", "checkForReferral-IoAF18A", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleDeepLink", ImagesContract.URL, "Landroid/net/Uri;", "handleDeepLink-IoAF18A", "(Landroid/net/Uri;)Ljava/lang/Object;", "getUrlParams", "", "", "ConnectionListener", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DeepLinkReferrer implements CheckForReferral {
    private InstallReferrerClient referrerClient;
    private final IOScope scope;

    public DeepLinkReferrer(Function0<? extends Context> context, IOScope scope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
        this.referrerClient = InstallReferrerClient.newBuilder(context.invoke()).build();
        tryConnecting$default(this, 0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InstallReferrerClient getReferrerClient() {
        InstallReferrerClient installReferrerClient = this.referrerClient;
        if (installReferrerClient == null || !installReferrerClient.isReady()) {
            return null;
        }
        return this.referrerClient;
    }

    /* JADX INFO: compiled from: DeepLinkReferrer.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B8\u0012!\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\u0012\u001a\u00020\bH\u0016R,\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/web/DeepLinkReferrer$ConnectionListener;", "Lcom/android/installreferrer/api/InstallReferrerStateListener;", "finished", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "responseCode", "", "disconnected", "Lkotlin/Function0;", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "getFinished", "()Lkotlin/jvm/functions/Function1;", "getDisconnected", "()Lkotlin/jvm/functions/Function0;", "onInstallReferrerSetupFinished", "onInstallReferrerServiceDisconnected", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class ConnectionListener implements InstallReferrerStateListener {
        private final Function0<Unit> disconnected;
        private final Function1<Integer, Unit> finished;

        /* JADX WARN: Multi-variable type inference failed */
        public ConnectionListener(Function1<? super Integer, Unit> finished, Function0<Unit> disconnected) {
            Intrinsics.checkNotNullParameter(finished, "finished");
            Intrinsics.checkNotNullParameter(disconnected, "disconnected");
            this.finished = finished;
            this.disconnected = disconnected;
        }

        public final Function1<Integer, Unit> getFinished() {
            return this.finished;
        }

        public final Function0<Unit> getDisconnected() {
            return this.disconnected;
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerSetupFinished(int responseCode) {
            this.finished.invoke(Integer.valueOf(responseCode));
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerServiceDisconnected() {
            this.disconnected.invoke();
        }
    }

    public static /* synthetic */ void tryConnecting$default(DeepLinkReferrer deepLinkReferrer, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        deepLinkReferrer.tryConnecting(i);
    }

    public final void tryConnecting(final int timeout) {
        try {
            try {
                Function0 function0 = new Function0() { // from class: com.superwall.sdk.web.DeepLinkReferrer$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DeepLinkReferrer.tryConnecting$lambda$2(this.f$0, timeout);
                    }
                };
                if (timeout != 0) {
                    BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(timeout, function0, null), 3, null);
                } else {
                    function0.invoke();
                }
            } catch (Throwable unused) {
                Result.Companion companion = Result.INSTANCE;
                InstallReferrerClient referrerClient = getReferrerClient();
                if (referrerClient != null) {
                    referrerClient.endConnection();
                }
                this.referrerClient = null;
                Result.m11241constructorimpl(Unit.INSTANCE);
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m11241constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit tryConnecting$lambda$2(final DeepLinkReferrer deepLinkReferrer, final int i) {
        InstallReferrerClient referrerClient = deepLinkReferrer.getReferrerClient();
        if (referrerClient == null) {
            return null;
        }
        referrerClient.startConnection(new ConnectionListener(new Function1() { // from class: com.superwall.sdk.web.DeepLinkReferrer$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DeepLinkReferrer.tryConnecting$lambda$2$lambda$0(this.f$0, ((Integer) obj).intValue());
            }
        }, new Function0() { // from class: com.superwall.sdk.web.DeepLinkReferrer$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DeepLinkReferrer.tryConnecting$lambda$2$lambda$1(this.f$0, i);
            }
        }));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit tryConnecting$lambda$2$lambda$0(DeepLinkReferrer deepLinkReferrer, int i) {
        ReferrerDetails installReferrer;
        if (i == 0) {
            InstallReferrerClient referrerClient = deepLinkReferrer.getReferrerClient();
            if (referrerClient != null && (installReferrer = referrerClient.getInstallReferrer()) != null) {
                installReferrer.getInstallReferrer();
            }
        } else {
            InstallReferrerClient referrerClient2 = deepLinkReferrer.getReferrerClient();
            if (referrerClient2 != null) {
                referrerClient2.endConnection();
            }
            deepLinkReferrer.referrerClient = null;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit tryConnecting$lambda$2$lambda$1(DeepLinkReferrer deepLinkReferrer, int i) {
        deepLinkReferrer.tryConnecting(i + 1000);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.web.DeepLinkReferrer$tryConnecting$1, reason: invalid class name */
    /* JADX INFO: compiled from: DeepLinkReferrer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.web.DeepLinkReferrer$tryConnecting$1", f = "DeepLinkReferrer.kt", i = {}, l = {84}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<Unit> $connect;
        final /* synthetic */ int $timeout;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i, Function0<Unit> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$timeout = i;
            this.$connect = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$timeout, this.$connect, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.superwall.sdk.web.DeepLinkReferrer$tryConnecting$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: DeepLinkReferrer.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.web.DeepLinkReferrer$tryConnecting$1$1", f = "DeepLinkReferrer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C01311 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Function0<Unit> $connect;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01311(Function0<Unit> function0, Continuation<? super C01311> continuation) {
                super(2, continuation);
                this.$connect = function0;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C01311(this.$connect, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C01311) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                this.$connect.invoke();
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Duration.Companion companion = Duration.INSTANCE;
                this.label = 1;
                if (TimeoutKt.m12756withTimeoutKLykuaI(DurationKt.toDuration(this.$timeout, DurationUnit.MILLISECONDS), new C01311(this.$connect, null), this) == coroutine_suspended) {
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

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.web.CheckForReferral
    /* JADX INFO: renamed from: checkForReferral-IoAF18A */
    public Object mo10806checkForReferralIoAF18A(Continuation<? super Result<String>> continuation) {
        DeepLinkReferrer$checkForReferral$1 deepLinkReferrer$checkForReferral$1;
        DeepLinkReferrer deepLinkReferrer;
        Map<String, List<String>> mapEmptyMap;
        if (continuation instanceof DeepLinkReferrer$checkForReferral$1) {
            deepLinkReferrer$checkForReferral$1 = (DeepLinkReferrer$checkForReferral$1) continuation;
            if ((deepLinkReferrer$checkForReferral$1.label & Integer.MIN_VALUE) != 0) {
                deepLinkReferrer$checkForReferral$1.label -= Integer.MIN_VALUE;
            } else {
                deepLinkReferrer$checkForReferral$1 = new DeepLinkReferrer$checkForReferral$1(this, continuation);
            }
        } else {
            deepLinkReferrer$checkForReferral$1 = new DeepLinkReferrer$checkForReferral$1(this, continuation);
        }
        Object objM12757withTimeoutOrNullKLykuaI = deepLinkReferrer$checkForReferral$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = deepLinkReferrer$checkForReferral$1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objM12757withTimeoutOrNullKLykuaI);
                Duration.Companion companion = Duration.INSTANCE;
                long duration = DurationKt.toDuration(30, DurationUnit.SECONDS);
                DeepLinkReferrer$checkForReferral$2 deepLinkReferrer$checkForReferral$2 = new DeepLinkReferrer$checkForReferral$2(this, null);
                deepLinkReferrer$checkForReferral$1.L$0 = this;
                deepLinkReferrer$checkForReferral$1.label = 1;
                objM12757withTimeoutOrNullKLykuaI = TimeoutKt.m12757withTimeoutOrNullKLykuaI(duration, deepLinkReferrer$checkForReferral$2, deepLinkReferrer$checkForReferral$1);
                if (objM12757withTimeoutOrNullKLykuaI == coroutine_suspended) {
                    return coroutine_suspended;
                }
                deepLinkReferrer = this;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                deepLinkReferrer = (DeepLinkReferrer) deepLinkReferrer$checkForReferral$1.L$0;
                ResultKt.throwOnFailure(objM12757withTimeoutOrNullKLykuaI);
            }
            String str = (String) objM12757withTimeoutOrNullKLykuaI;
            if (str == null || (mapEmptyMap = deepLinkReferrer.getUrlParams(str)) == null) {
                mapEmptyMap = MapsKt.emptyMap();
            }
            List<String> list = mapEmptyMap.get("code");
            String str2 = list != null ? (String) CollectionsKt.firstOrNull((List) list) : null;
            InstallReferrerClient referrerClient = deepLinkReferrer.getReferrerClient();
            if (referrerClient != null) {
                referrerClient.endConnection();
            }
            deepLinkReferrer.referrerClient = null;
            if (str2 == null) {
                Result.Companion companion2 = Result.INSTANCE;
                return Result.m11241constructorimpl(ResultKt.createFailure(new IllegalStateException("Play store cannot connect")));
            }
            Result.Companion companion3 = Result.INSTANCE;
            return Result.m11241constructorimpl(str2);
        } catch (Throwable th) {
            Result.Companion companion4 = Result.INSTANCE;
            return Result.m11241constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Override // com.superwall.sdk.web.CheckForReferral
    /* JADX INFO: renamed from: handleDeepLink-IoAF18A */
    public Object mo10807handleDeepLinkIoAF18A(Uri url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Object redeemableCode = DeepLinkRouterKt.getRedeemableCode(url);
        if (Result.m11248isSuccessimpl(redeemableCode)) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.info, LogScope.webEntitlements, "Successfully extracted code from deep link", null, null, 24, null);
        }
        Throwable thM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(redeemableCode);
        if (thM11244exceptionOrNullimpl != null) {
            Logger logger = Logger.INSTANCE;
            LogLevel logLevel = LogLevel.error;
            LogScope logScope = LogScope.webEntitlements;
            Pair[] pairArr = new Pair[2];
            pairArr[0] = TuplesKt.to("URL", url.toString());
            String message = thM11244exceptionOrNullimpl.getMessage();
            if (message == null) {
                message = "";
            }
            pairArr[1] = TuplesKt.to("Error", message);
            Logger.debug$default(logger, logLevel, logScope, "Failed to extract code from deep link", MapsKt.mapOf(pairArr), null, 16, null);
        }
        return redeemableCode;
    }

    private final Map<String, List<String>> getUrlParams(String str) {
        List<String> listSplit = new Regex("\\?").split(str, 0);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listSplit) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.size() < 2) {
            return MapsKt.emptyMap();
        }
        String str2 = (String) arrayList2.get(1);
        List listListOf = CollectionsKt.listOf("item");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(listListOf, 10)), 16));
        for (Object obj2 : listListOf) {
            LinkedHashMap linkedHashMap2 = linkedHashMap;
            List<String> listSplit2 = new Regex("&?" + ((String) obj2) + "=").split(str2, 0);
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : listSplit2) {
                if (((String) obj3).length() > 0) {
                    arrayList3.add(obj3);
                }
            }
            ArrayList arrayList4 = arrayList3;
            ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList4, 10));
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                arrayList5.add(URLDecoder.decode((String) it.next(), "UTF-8"));
            }
            linkedHashMap2.put(obj2, arrayList5);
        }
        return linkedHashMap;
    }
}
