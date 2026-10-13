package com.superwall.sdk.network;

import androidx.core.os.EnvironmentCompat;
import com.google.android.gms.common.internal.ImagesContract;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.models.events.EventsResponse;
import com.superwall.sdk.network.session.CustomHttpUrlConnection;
import java.net.URI;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.time.Duration;
import kotlinx.serialization.json.Json;

/* JADX INFO: renamed from: com.superwall.sdk.network.CollectorService$events$$inlined$post-7Yrd8eY$default$1, reason: invalid class name */
/* JADX INFO: compiled from: CustomURLSession.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u000f\b\u0000\u0010\u0002\u0018\u0001*\u00070\u0004¢\u0006\u0002\b\u0005H\n¨\u0006\u0007"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "Response", "Lcom/superwall/sdk/network/NetworkError;", "", "Lkotlinx/serialization/Serializable;", "com/superwall/sdk/network/session/CustomHttpUrlConnection$request$2", "com/superwall/sdk/network/NetworkService$post-7Yrd8eY$$inlined$request$default$1"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.network.CollectorService$events$$inlined$post-7Yrd8eY$default$1", f = "CollectorService.kt", i = {0}, l = {35}, m = "invokeSuspend", n = {"requestData"}, s = {"L$0"})
public final class CollectorService$events$$inlined$post7Yrd8eY$default$1 extends SuspendLambda implements Function1<Continuation<? super Either<? extends EventsResponse, NetworkError>>, Object> {
    final /* synthetic */ byte[] $body$inlined;
    final /* synthetic */ boolean $isForDebugging$inlined;
    final /* synthetic */ String $path$inlined;
    final /* synthetic */ String $requestId$inlined;
    final /* synthetic */ Duration $timeout$inlined;
    Object L$0;
    int label;
    final /* synthetic */ NetworkService this$0;
    final /* synthetic */ CustomHttpUrlConnection this$0$inline_fun;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectorService$events$$inlined$post7Yrd8eY$default$1(CustomHttpUrlConnection customHttpUrlConnection, Continuation continuation, NetworkService networkService, String str, byte[] bArr, String str2, boolean z, Duration duration) {
        super(1, continuation);
        this.this$0 = networkService;
        this.$path$inlined = str;
        this.$body$inlined = bArr;
        this.$requestId$inlined = str2;
        this.$isForDebugging$inlined = z;
        this.$timeout$inlined = duration;
        this.this$0$inline_fun = customHttpUrlConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new CollectorService$events$$inlined$post7Yrd8eY$default$1(this.this$0$inline_fun, continuation, this.this$0, this.$path$inlined, this.$body$inlined, this.$requestId$inlined, this.$isForDebugging$inlined, this.$timeout$inlined);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Either<? extends EventsResponse, NetworkError>> continuation) {
        return ((CollectorService$events$$inlined$post7Yrd8eY$default$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        final NetworkRequestData<?> networkRequestData;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            NetworkRequestData<?> networkRequestData2 = new NetworkRequestData<>(new NetworkRequestData.Components(null, this.this$0.getHost(), this.this$0.getVersion() + this.$path$inlined, null, this.$body$inlined, 9, null), null, NetworkRequestData.HttpMethod.POST, this.$requestId$inlined, this.$isForDebugging$inlined, new AnonymousClass1(this.this$0), this.$timeout$inlined, 2, null);
            RequestExecutor requestExecutor = this.this$0$inline_fun.getRequestExecutor();
            this.L$0 = networkRequestData2;
            this.label = 1;
            obj = requestExecutor.execute(networkRequestData2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            networkRequestData = networkRequestData2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            networkRequestData = (NetworkRequestData) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        final CustomHttpUrlConnection customHttpUrlConnection = this.this$0$inline_fun;
        Either map = EitherKt.map((Either) obj, new Function1<RequestResult, RequestResult>() { // from class: com.superwall.sdk.network.CollectorService$events$$inlined$post-7Yrd8eY$default$1.2
            @Override // kotlin.jvm.functions.Function1
            public final RequestResult invoke(RequestResult it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (!customHttpUrlConnection.getInterceptors().isEmpty()) {
                    Iterator<T> it2 = customHttpUrlConnection.getInterceptors().iterator();
                    while (it2.hasNext()) {
                        it = (RequestResult) ((Function1) it2.next()).invoke(it);
                    }
                }
                return it;
            }
        });
        final CustomHttpUrlConnection customHttpUrlConnection2 = this.this$0$inline_fun;
        return EitherKt.flatMap(map, new Function1<RequestResult, Either<? extends EventsResponse, NetworkError>>() { // from class: com.superwall.sdk.network.CollectorService$events$$inlined$post-7Yrd8eY$default$1.3
            @Override // kotlin.jvm.functions.Function1
            public final Either<EventsResponse, NetworkError> invoke(RequestResult it) {
                String string;
                Intrinsics.checkNotNullParameter(it, "it");
                try {
                    Json json = customHttpUrlConnection2.getJson();
                    String responseMessage = it.getResponseMessage();
                    json.getSerializersModule();
                    return new Either.Success(json.decodeFromString(EventsResponse.INSTANCE.serializer(), responseMessage));
                } catch (Throwable th) {
                    th.printStackTrace();
                    Logger logger = Logger.INSTANCE;
                    LogLevel logLevel = LogLevel.error;
                    LogScope logScope = LogScope.network;
                    Pair[] pairArr = new Pair[6];
                    pairArr[0] = TuplesKt.to("request", it.toString());
                    pairArr[1] = TuplesKt.to("api_key", RequestResultKt.authHeader(it));
                    URI url = networkRequestData.getUrl();
                    if (url == null || (string = url.toString()) == null) {
                        string = EnvironmentCompat.MEDIA_UNKNOWN;
                    }
                    pairArr[2] = TuplesKt.to(ImagesContract.URL, string);
                    pairArr[3] = TuplesKt.to("message", "Unable to decode response to type " + Reflection.getOrCreateKotlinClass(EventsResponse.class).getSimpleName() + " - " + th.getMessage());
                    pairArr[4] = TuplesKt.to("info", it.getResponseMessage());
                    pairArr[5] = TuplesKt.to("request_duration", Double.valueOf(it.getDuration()));
                    Logger.debug$default(logger, logLevel, logScope, "Request Error", MapsKt.mapOf(pairArr), null, 16, null);
                    return new Either.Failure(new NetworkError.Decoding(th));
                }
            }
        });
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.CollectorService$events$$inlined$post-7Yrd8eY$default$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: NetworkService.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function3<Boolean, String, Continuation<? super Map<String, ? extends String>>, Object>, SuspendFunction {
        public AnonymousClass1(Object obj) {
            super(3, obj, NetworkService.class, "makeHeaders", "makeHeaders(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, String str, Continuation<? super Map<String, ? extends String>> continuation) {
            return invoke(bool.booleanValue(), str, (Continuation<? super Map<String, String>>) continuation);
        }

        public final Object invoke(boolean z, String str, Continuation<? super Map<String, String>> continuation) {
            return ((NetworkService) this.receiver).makeHeaders(z, str, continuation);
        }
    }
}
