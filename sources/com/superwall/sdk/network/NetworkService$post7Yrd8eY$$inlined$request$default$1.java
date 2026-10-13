package com.superwall.sdk.network;

import androidx.core.os.EnvironmentCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.internal.ImagesContract;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.network.session.CustomHttpUrlConnection;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KType;
import kotlin.time.Duration;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: renamed from: com.superwall.sdk.network.NetworkService$post-7Yrd8eY$$inlined$request$default$1, reason: invalid class name */
/* JADX INFO: compiled from: CustomURLSession.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u000f\b\u0000\u0010\u0002\u0018\u0001*\u00070\u0004¢\u0006\u0002\b\u0005H\n¨\u0006\u0006"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "Response", "Lcom/superwall/sdk/network/NetworkError;", "", "Lkotlinx/serialization/Serializable;", "com/superwall/sdk/network/session/CustomHttpUrlConnection$request$2"}, k = 3, mv = {2, 0, 0}, xi = 176)
@DebugMetadata(c = "com.superwall.sdk.network.NetworkService$post-7Yrd8eY$$inlined$request$default$1", f = "NetworkService.kt", i = {0}, l = {35}, m = "invokeSuspend", n = {"requestData"}, s = {"L$0"})
public final class NetworkService$post7Yrd8eY$$inlined$request$default$1<T> extends SuspendLambda implements Function1<Continuation<? super Either<? extends T, NetworkError>>, Object> {
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
    public NetworkService$post7Yrd8eY$$inlined$request$default$1(CustomHttpUrlConnection customHttpUrlConnection, Continuation continuation, NetworkService networkService, String str, byte[] bArr, String str2, boolean z, Duration duration) {
        super(1, continuation);
        this.this$0$inline_fun = customHttpUrlConnection;
        this.this$0 = networkService;
        this.$path$inlined = str;
        this.$body$inlined = bArr;
        this.$requestId$inlined = str2;
        this.$isForDebugging$inlined = z;
        this.$timeout$inlined = duration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new NetworkService$post7Yrd8eY$$inlined$request$default$1(this.this$0$inline_fun, continuation, this.this$0, this.$path$inlined, this.$body$inlined, this.$requestId$inlined, this.$isForDebugging$inlined, this.$timeout$inlined);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Either<? extends T, NetworkError>> continuation) {
        return ((NetworkService$post7Yrd8eY$$inlined$request$default$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        NetworkRequestData<?> networkRequestData;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String str = null;
            List list = null;
            URI uri = null;
            NetworkRequestData<?> networkRequestData2 = new NetworkRequestData<>(new NetworkRequestData.Components(str, this.this$0.getHost(), this.this$0.getVersion() + this.$path$inlined, list, this.$body$inlined, 9, null), uri, NetworkRequestData.HttpMethod.POST, this.$requestId$inlined, this.$isForDebugging$inlined, new NetworkService$post$2$1(this.this$0), this.$timeout$inlined, 2, null);
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
        Either map = EitherKt.map((Either) obj, new AnonymousClass1(this.this$0$inline_fun));
        Intrinsics.needClassReification();
        return EitherKt.flatMap(map, new AnonymousClass2(this.this$0$inline_fun, networkRequestData));
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        String str = null;
        List list = null;
        URI uri = null;
        NetworkRequestData<?> networkRequestData = new NetworkRequestData<>(new NetworkRequestData.Components(str, this.this$0.getHost(), this.this$0.getVersion() + this.$path$inlined, list, this.$body$inlined, 9, null), uri, NetworkRequestData.HttpMethod.POST, this.$requestId$inlined, this.$isForDebugging$inlined, new NetworkService$post$2$1(this.this$0), this.$timeout$inlined, 2, null);
        Either map = EitherKt.map((Either) this.this$0$inline_fun.getRequestExecutor().execute(networkRequestData, this), new AnonymousClass1(this.this$0$inline_fun));
        Intrinsics.needClassReification();
        return EitherKt.flatMap(map, new AnonymousClass2(this.this$0$inline_fun, networkRequestData));
    }

    /* JADX INFO: renamed from: com.superwall.sdk.network.NetworkService$post-7Yrd8eY$$inlined$request$default$1$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: com.superwall.sdk.network.NetworkService$post-7Yrd8eY$$inlined$request$default$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: CustomURLSession.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
    public static final class AnonymousClass2 implements Function1<RequestResult, Either<? extends T, NetworkError>> {
        final /* synthetic */ NetworkRequestData $requestData;
        final /* synthetic */ CustomHttpUrlConnection this$0;

        public AnonymousClass2(CustomHttpUrlConnection customHttpUrlConnection, NetworkRequestData networkRequestData) {
            this.this$0 = customHttpUrlConnection;
            this.$requestData = networkRequestData;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Either<T, NetworkError> invoke(RequestResult it) {
            String string;
            Intrinsics.checkNotNullParameter(it, "it");
            try {
                Json json = this.this$0.getJson();
                String responseMessage = it.getResponseMessage();
                SerializersModule serializersModule = json.getSerializersModule();
                Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
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
                Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
                pairArr[3] = TuplesKt.to("message", "Unable to decode response to type " + Reflection.getOrCreateKotlinClass(Object.class).getSimpleName() + " - " + th.getMessage());
                pairArr[4] = TuplesKt.to("info", it.getResponseMessage());
                pairArr[5] = TuplesKt.to("request_duration", Double.valueOf(it.getDuration()));
                Logger.debug$default(logger, logLevel, logScope, "Request Error", MapsKt.mapOf(pairArr), null, 16, null);
                return new Either.Failure(new NetworkError.Decoding(th));
            }
        }
    }
}
