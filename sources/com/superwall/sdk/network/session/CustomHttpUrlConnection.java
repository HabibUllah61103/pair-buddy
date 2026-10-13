package com.superwall.sdk.network.session;

import androidx.core.os.EnvironmentCompat;
import com.google.android.gms.common.internal.ImagesContract;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.misc.Task_RetryingKt;
import com.superwall.sdk.network.NetworkError;
import com.superwall.sdk.network.NetworkRequestData;
import com.superwall.sdk.network.RequestExecutor;
import com.superwall.sdk.network.RequestResult;
import com.superwall.sdk.network.RequestResultKt;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KType;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: compiled from: CustomURLSession.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u001a\b\u0002\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b0\u0007¢\u0006\u0004\b\n\u0010\u000bJ{\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u00020\u00150\u0013\"\u000f\b\u0000\u0010\u0014\u0018\u0001*\u00070\u0001¢\u0006\u0002\b\u00162$\b\u0004\u0010\u0017\u001a\u001e\b\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140\u00190\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b2\u0006\u0010\u001a\u001a\u00020\u001b2 \b\n\u0010\u001c\u001a\u001a\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\bH\u0086H¢\u0006\u0002\u0010\u001eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR#\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001f"}, d2 = {"Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;", "", "json", "Lkotlinx/serialization/json/Json;", "requestExecutor", "Lcom/superwall/sdk/network/RequestExecutor;", "interceptors", "", "Lkotlin/Function1;", "Lcom/superwall/sdk/network/RequestResult;", "<init>", "(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/network/RequestExecutor;Ljava/util/List;)V", "getJson", "()Lkotlinx/serialization/json/Json;", "getRequestExecutor", "()Lcom/superwall/sdk/network/RequestExecutor;", "getInterceptors", "()Ljava/util/List;", "request", "Lcom/superwall/sdk/misc/Either;", "Response", "Lcom/superwall/sdk/network/NetworkError;", "Lkotlinx/serialization/Serializable;", "buildRequestData", "Lkotlin/coroutines/Continuation;", "Lcom/superwall/sdk/network/NetworkRequestData;", "retryCount", "", "isRetryingCallback", "", "(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CustomHttpUrlConnection {
    private final List<Function1<RequestResult, RequestResult>> interceptors;
    private final Json json;
    private final RequestExecutor requestExecutor;

    /* JADX WARN: Multi-variable type inference failed */
    public CustomHttpUrlConnection(Json json, RequestExecutor requestExecutor, List<? extends Function1<? super RequestResult, RequestResult>> interceptors) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(requestExecutor, "requestExecutor");
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        this.json = json;
        this.requestExecutor = requestExecutor;
        this.interceptors = interceptors;
    }

    public final Json getJson() {
        return this.json;
    }

    public final RequestExecutor getRequestExecutor() {
        return this.requestExecutor;
    }

    public /* synthetic */ CustomHttpUrlConnection(Json json, RequestExecutor requestExecutor, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(json, requestExecutor, (i & 4) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Function1<RequestResult, RequestResult>> getInterceptors() {
        return this.interceptors;
    }

    public static /* synthetic */ Object request$default(CustomHttpUrlConnection customHttpUrlConnection, Function1 function1, int i, Function1 function2, Continuation continuation, int i2, Object obj) throws NetworkError {
        if ((i2 & 4) != 0) {
            function2 = null;
        }
        Intrinsics.needClassReification();
        return Task_RetryingKt.retrying(i, function2, new AnonymousClass2(function1, customHttpUrlConnection, null), continuation);
    }

    public final /* synthetic */ <Response> Object request(Function1<? super Continuation<? super NetworkRequestData<Response>>, ? extends Object> function1, int i, Function1<? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Either<? extends Response, NetworkError>> continuation) throws NetworkError {
        Intrinsics.needClassReification();
        return Task_RetryingKt.retrying(i, function2, new AnonymousClass2(function1, this, null), continuation);
    }

    /* JADX INFO: Add missing generic type declarations: [Response] */
    /* JADX INFO: renamed from: com.superwall.sdk.network.session.CustomHttpUrlConnection$request$2, reason: invalid class name */
    /* JADX INFO: compiled from: CustomURLSession.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u000f\b\u0000\u0010\u0002\u0018\u0001*\u00070\u0004¢\u0006\u0002\b\u0005H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "Response", "Lcom/superwall/sdk/network/NetworkError;", "", "Lkotlinx/serialization/Serializable;"}, k = 3, mv = {2, 0, 0}, xi = 176)
    @DebugMetadata(c = "com.superwall.sdk.network.session.CustomHttpUrlConnection$request$2", f = "CustomURLSession.kt", i = {1}, l = {33, 35}, m = "invokeSuspend", n = {"requestData"}, s = {"L$0"})
    public static final class AnonymousClass2<Response> extends SuspendLambda implements Function1<Continuation<? super Either<? extends Response, NetworkError>>, Object> {
        final /* synthetic */ Function1<Continuation<? super NetworkRequestData<Response>>, Object> $buildRequestData;
        Object L$0;
        int label;
        final /* synthetic */ CustomHttpUrlConnection this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Function1<? super Continuation<? super NetworkRequestData<Response>>, ? extends Object> function1, CustomHttpUrlConnection customHttpUrlConnection, Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
            this.$buildRequestData = function1;
            this.this$0 = customHttpUrlConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            Intrinsics.needClassReification();
            return new AnonymousClass2(this.$buildRequestData, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Either<? extends Response, NetworkError>> continuation) {
            return ((AnonymousClass2) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            NetworkRequestData<?> networkRequestData;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function1<Continuation<? super NetworkRequestData<Response>>, Object> function1 = this.$buildRequestData;
                this.label = 1;
                obj = function1.invoke(this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                networkRequestData = (NetworkRequestData) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            Either map = EitherKt.map((Either) obj, new AnonymousClass1(this.this$0));
            Intrinsics.needClassReification();
            return EitherKt.flatMap(map, new C01162(this.this$0, networkRequestData));
            NetworkRequestData<?> networkRequestData2 = (NetworkRequestData) obj;
            this.L$0 = networkRequestData2;
            this.label = 2;
            Object objExecute = this.this$0.getRequestExecutor().execute(networkRequestData2, this);
            if (objExecute != coroutine_suspended) {
                networkRequestData = networkRequestData2;
                obj = objExecute;
                Either map2 = EitherKt.map((Either) obj, new AnonymousClass1(this.this$0));
                Intrinsics.needClassReification();
                return EitherKt.flatMap(map2, new C01162(this.this$0, networkRequestData));
            }
            return coroutine_suspended;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            NetworkRequestData<?> networkRequestData = (NetworkRequestData) this.$buildRequestData.invoke(this);
            Either map = EitherKt.map((Either) this.this$0.getRequestExecutor().execute(networkRequestData, this), new AnonymousClass1(this.this$0));
            Intrinsics.needClassReification();
            return EitherKt.flatMap(map, new C01162(this.this$0, networkRequestData));
        }

        /* JADX INFO: renamed from: com.superwall.sdk.network.session.CustomHttpUrlConnection$request$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: CustomURLSession.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
        public static final class AnonymousClass1 implements Function1<RequestResult, RequestResult> {
            final /* synthetic */ CustomHttpUrlConnection this$0;

            public AnonymousClass1(CustomHttpUrlConnection customHttpUrlConnection) {
                this.this$0 = customHttpUrlConnection;
            }

            @Override // kotlin.jvm.functions.Function1
            public final RequestResult invoke(RequestResult it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (!this.this$0.getInterceptors().isEmpty()) {
                    Iterator<T> it2 = this.this$0.getInterceptors().iterator();
                    while (it2.hasNext()) {
                        it = (RequestResult) ((Function1) it2.next()).invoke(it);
                    }
                }
                return it;
            }
        }

        /* JADX INFO: renamed from: com.superwall.sdk.network.session.CustomHttpUrlConnection$request$2$2, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: CustomURLSession.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
        public static final class C01162 implements Function1<RequestResult, Either<? extends Response, NetworkError>> {
            final /* synthetic */ NetworkRequestData<Response> $requestData;
            final /* synthetic */ CustomHttpUrlConnection this$0;

            public C01162(CustomHttpUrlConnection customHttpUrlConnection, NetworkRequestData<Response> networkRequestData) {
                this.this$0 = customHttpUrlConnection;
                this.$requestData = networkRequestData;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Either<Response, NetworkError> invoke(RequestResult it) {
                String string;
                Intrinsics.checkNotNullParameter(it, "it");
                try {
                    Json json = this.this$0.getJson();
                    String responseMessage = it.getResponseMessage();
                    SerializersModule serializersModule = json.getSerializersModule();
                    Intrinsics.reifiedOperationMarker(6, "Response");
                    MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
                    return new Either.Success(json.decodeFromString(SerializersKt.serializer(serializersModule, (KType) null), responseMessage));
                } catch (Throwable th) {
                    th.printStackTrace();
                    Logger logger = Logger.INSTANCE;
                    LogLevel logLevel = LogLevel.error;
                    LogScope logScope = LogScope.network;
                    Pair[] pairArr = new Pair[6];
                    pairArr[0] = TuplesKt.to("request", it.toString());
                    pairArr[1] = TuplesKt.to("api_key", RequestResultKt.authHeader(it));
                    URI url = this.$requestData.getUrl();
                    if (url == null || (string = url.toString()) == null) {
                        string = EnvironmentCompat.MEDIA_UNKNOWN;
                    }
                    pairArr[2] = TuplesKt.to(ImagesContract.URL, string);
                    Intrinsics.reifiedOperationMarker(4, "Response");
                    pairArr[3] = TuplesKt.to("message", "Unable to decode response to type " + Reflection.getOrCreateKotlinClass(Object.class).getSimpleName() + " - " + th.getMessage());
                    pairArr[4] = TuplesKt.to("info", it.getResponseMessage());
                    pairArr[5] = TuplesKt.to("request_duration", Double.valueOf(it.getDuration()));
                    Logger.debug$default(logger, logLevel, logScope, "Request Error", MapsKt.mapOf(pairArr), null, 16, null);
                    return new Either.Failure(new NetworkError.Decoding(th));
                }
            }
        }
    }
}
