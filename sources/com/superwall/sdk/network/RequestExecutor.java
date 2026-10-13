package com.superwall.sdk.network;

import androidx.core.os.EnvironmentCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.common.net.HttpHeaders;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.time.Duration;

/* JADX INFO: compiled from: RequestExecutor.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0000\u0018\u00002\u00020\u0001B[\u0012R\u0010\u0002\u001aN\b\u0001\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003¢\u0006\u0004\b\f\u0010\rJ&\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00122\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0086@¢\u0006\u0002\u0010\u0017J7\u0010\u0018\u001a\u0004\u0018\u00010\u0019\"\r\b\u0000\u0010\u001a*\u00070\u0001¢\u0006\u0002\b\u001b*\b\u0012\u0004\u0012\u0002H\u001a0\u00162\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000bH\u0002J\u001c\u0010\u001d\u001a\u00020\b*\u00020\u00192\u0006\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020 H\u0002R_\u0010\u0002\u001aN\b\u0001\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000f¨\u0006!"}, d2 = {"Lcom/superwall/sdk/network/RequestExecutor;", "", "buildHeaders", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "isForDebugging", "", "requestId", "Lkotlin/coroutines/Continuation;", "", "<init>", "(Lkotlin/jvm/functions/Function3;)V", "getBuildHeaders", "()Lkotlin/jvm/functions/Function3;", "Lkotlin/jvm/functions/Function3;", "execute", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/network/RequestResult;", "Lcom/superwall/sdk/network/NetworkError;", "requestData", "Lcom/superwall/sdk/network/NetworkRequestData;", "(Lcom/superwall/sdk/network/NetworkRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "buildRequest", "Ljava/net/HttpURLConnection;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/serialization/Serializable;", "headers", "getRequestId", "auth", "requestDuration", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RequestExecutor {
    private final Function3<Boolean, String, Continuation<? super Map<String, String>>, Object> buildHeaders;

    /* JADX INFO: renamed from: com.superwall.sdk.network.RequestExecutor$execute$1, reason: invalid class name */
    /* JADX INFO: compiled from: RequestExecutor.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.RequestExecutor", f = "RequestExecutor.kt", i = {0, 0}, l = {18, 63}, m = "execute", n = {"this", "requestData"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RequestExecutor.this.execute(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RequestExecutor(Function3<? super Boolean, ? super String, ? super Continuation<? super Map<String, String>>, ? extends Object> buildHeaders) {
        Intrinsics.checkNotNullParameter(buildHeaders, "buildHeaders");
        this.buildHeaders = buildHeaders;
    }

    public final Function3<Boolean, String, Continuation<? super Map<String, String>>, Object> getBuildHeaders() {
        return this.buildHeaders;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0022  */
    public final Object execute(NetworkRequestData<?> networkRequestData, Continuation<? super Either<RequestResult, NetworkError>> continuation) {
        AnonymousClass1 anonymousClass1;
        NetworkRequestData<?> networkRequestData2;
        RequestExecutor requestExecutor;
        Map<String, String> map;
        String requestProperty;
        String string;
        NetworkError.Unknown unknown;
        String string2;
        String string3;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objInvoke = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        try {
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(objInvoke);
                    Function3<Boolean, String, Continuation<? super Map<String, String>>, Object> function3 = this.buildHeaders;
                    Boolean boolBoxBoolean = Boxing.boxBoolean(networkRequestData.getIsForDebugging());
                    String requestId = networkRequestData.getRequestId();
                    anonymousClass1.L$0 = this;
                    networkRequestData2 = networkRequestData;
                    anonymousClass1.L$1 = networkRequestData2;
                    anonymousClass1.label = 1;
                    objInvoke = function3.invoke(boolBoxBoolean, requestId, anonymousClass1);
                    if (objInvoke != coroutine_suspended) {
                        requestExecutor = this;
                    }
                }
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(objInvoke);
                    return objInvoke;
                }
                NetworkRequestData<?> networkRequestData3 = (NetworkRequestData) anonymousClass1.L$1;
                requestExecutor = (RequestExecutor) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke);
                networkRequestData2 = networkRequestData3;
                HttpURLConnection httpURLConnectionBuildRequest = requestExecutor.buildRequest(networkRequestData2, map);
                if (httpURLConnectionBuildRequest != null && (requestProperty = httpURLConnectionBuildRequest.getRequestProperty(HttpHeaders.AUTHORIZATION)) != null) {
                    Logger logger = Logger.INSTANCE;
                    LogLevel logLevel = LogLevel.debug;
                    LogScope logScope = LogScope.network;
                    URL url = httpURLConnectionBuildRequest.getURL();
                    Logger.debug$default(logger, logLevel, logScope, "Request Started", MapsKt.mapOf(TuplesKt.to(ImagesContract.URL, (url == null || (string3 = url.toString()) == null) ? EnvironmentCompat.MEDIA_UNKNOWN : string3)), null, 16, null);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    try {
                        int responseCode = httpURLConnectionBuildRequest.getResponseCode();
                        if (200 <= responseCode && responseCode < 300) {
                            InputStream inputStream = httpURLConnectionBuildRequest.getInputStream();
                            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                            Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
                            BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
                            try {
                                String text = TextStreamsKt.readText(bufferedReader);
                                CloseableKt.closeFinally(bufferedReader, null);
                                httpURLConnectionBuildRequest.disconnect();
                                double dCurrentTimeMillis = (System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0d;
                                try {
                                    String requestId2 = requestExecutor.getRequestId(httpURLConnectionBuildRequest, requestProperty, dCurrentTimeMillis);
                                    Logger logger2 = Logger.INSTANCE;
                                    LogLevel logLevel2 = LogLevel.debug;
                                    LogScope logScope2 = LogScope.network;
                                    Pair[] pairArr = new Pair[5];
                                    pairArr[0] = TuplesKt.to("request", httpURLConnectionBuildRequest.toString());
                                    pairArr[1] = TuplesKt.to("api_key", requestProperty);
                                    URL url2 = httpURLConnectionBuildRequest.getURL();
                                    if (url2 == null || (string2 = url2.toString()) == null) {
                                        string2 = EnvironmentCompat.MEDIA_UNKNOWN;
                                    }
                                    pairArr[2] = TuplesKt.to(ImagesContract.URL, string2);
                                    pairArr[3] = TuplesKt.to("request_id", requestId2);
                                    pairArr[4] = TuplesKt.to("request_duration", Boxing.boxDouble(dCurrentTimeMillis));
                                    Logger.debug$default(logger2, logLevel2, logScope2, "Request Completed", MapsKt.mapOf(pairArr), null, 16, null);
                                    return new Either.Success(new RequestResult(requestId2, responseCode, text, dCurrentTimeMillis, map));
                                } catch (Throwable th) {
                                    if (th instanceof NetworkError) {
                                        unknown = (NetworkError) th;
                                    } else {
                                        unknown = new NetworkError.Unknown(new Exception("Failed to get request id. " + th.getMessage()));
                                    }
                                    return new Either.Failure(unknown);
                                }
                            } catch (Throwable th2) {
                                try {
                                    throw th2;
                                } catch (Throwable th3) {
                                    CloseableKt.closeFinally(bufferedReader, th2);
                                    throw th3;
                                }
                            }
                        }
                        if (responseCode != 301 && responseCode != 302 && responseCode != 303) {
                            Logger logger3 = Logger.INSTANCE;
                            LogLevel logLevel3 = LogLevel.error;
                            LogScope logScope3 = LogScope.network;
                            String str = "Request failed : " + httpURLConnectionBuildRequest.getResponseCode();
                            Pair[] pairArr2 = new Pair[3];
                            pairArr2[0] = TuplesKt.to("request", httpURLConnectionBuildRequest.toString());
                            pairArr2[r11] = TuplesKt.to("api_key", requestProperty);
                            URL url3 = httpURLConnectionBuildRequest.getURL();
                            if (url3 == null || (string = url3.toString()) == null) {
                                string = EnvironmentCompat.MEDIA_UNKNOWN;
                            }
                            pairArr2[2] = TuplesKt.to(ImagesContract.URL, string);
                            Logger.debug$default(logger3, logLevel3, logScope3, str, MapsKt.mapOf(pairArr2), null, 16, null);
                            httpURLConnectionBuildRequest.disconnect();
                            return new Either.Failure(new NetworkError.Unknown(new Exception("Failed, response code  " + responseCode)));
                        }
                        String headerField = httpURLConnectionBuildRequest.getHeaderField(HttpHeaders.LOCATION);
                        httpURLConnectionBuildRequest.disconnect();
                        NetworkRequestData<?> networkRequestDataCopyWithUrl = networkRequestData2.copyWithUrl(new URI(headerField));
                        anonymousClass1.L$0 = null;
                        anonymousClass1.L$1 = null;
                        anonymousClass1.label = 2;
                        Object objExecute = requestExecutor.execute(networkRequestDataCopyWithUrl, anonymousClass1);
                        return objExecute == coroutine_suspended ? coroutine_suspended : objExecute;
                    } catch (Throwable th4) {
                        th4.printStackTrace();
                        Logger logger4 = Logger.INSTANCE;
                        LogLevel logLevel4 = LogLevel.error;
                        LogScope logScope4 = LogScope.network;
                        URL url4 = httpURLConnectionBuildRequest.getURL();
                        Logger.debug$default(logger4, logLevel4, logScope4, "Request failed - " + (url4 != null ? url4.toString() : null) + " - " + th4.getMessage(), null, th4, 8, null);
                        return new Either.Failure(new NetworkError.Unknown(th4));
                    }
                }
                return new Either.Failure(new NetworkError.NotAuthenticated());
            } catch (Throwable th5) {
                return new Either.Failure(new NetworkError.Unknown(th5));
            }
            map = (Map) objInvoke;
        } catch (Throwable th6) {
            return new Either.Failure(new NetworkError.Unknown(th6));
        }
    }

    private final <T> HttpURLConnection buildRequest(NetworkRequestData<T> networkRequestData, Map<String, String> map) throws IOException {
        URL url;
        if (networkRequestData.getComponents() != null) {
            List<URLQueryItem> queryItems = networkRequestData.getComponents().getQueryItems();
            String strJoinToString$default = queryItems != null ? CollectionsKt.joinToString$default(queryItems, "&", null, null, 0, null, new Function1() { // from class: com.superwall.sdk.network.RequestExecutor$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RequestExecutor.buildRequest$lambda$1((URLQueryItem) obj);
                }
            }, 30, null) : null;
            String scheme = networkRequestData.getComponents().getScheme();
            String host = networkRequestData.getComponents().getHost();
            String path = networkRequestData.getComponents().getPath();
            if (strJoinToString$default == null) {
                strJoinToString$default = "";
            }
            url = new URL(scheme + "://" + host + path + "?" + strJoinToString$default);
        } else {
            if (networkRequestData.getUrl() == null) {
                return null;
            }
            url = networkRequestData.getUrl().toURL();
        }
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        httpURLConnection.setDoOutput(Intrinsics.areEqual(networkRequestData.getMethod().getMethod(), NetworkRequestData.HttpMethod.POST.getMethod()));
        NetworkRequestData.Components components = networkRequestData.getComponents();
        if ((components != null ? components.getBodyData() : null) != null) {
            httpURLConnection.setDoInput(true);
        }
        Duration timeout = networkRequestData.getTimeout();
        httpURLConnection.setConnectTimeout(timeout != null ? (int) Duration.m12612getInWholeMillisecondsimpl(timeout.getRawValue()) : 0);
        Duration timeout2 = networkRequestData.getTimeout();
        httpURLConnection.setReadTimeout(timeout2 != null ? (int) Duration.m12612getInWholeMillisecondsimpl(timeout2.getRawValue()) : 0);
        NetworkRequestData.Components components2 = networkRequestData.getComponents();
        if ((components2 != null ? components2.getBodyData() : null) != null) {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(networkRequestData.getComponents().getBodyData());
            outputStream.close();
        }
        httpURLConnection.setRequestMethod(networkRequestData.getMethod().getMethod());
        return httpURLConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence buildRequest$lambda$1(URLQueryItem it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getName() + "=" + it.getValue();
    }

    private final String getRequestId(HttpURLConnection httpURLConnection, String str, double d) throws IOException, NetworkError {
        String headerField = httpURLConnection.getHeaderField("x-request-id");
        if (headerField == null) {
            headerField = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 401) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.network, "Unable to Authenticate", MapsKt.mapOf(TuplesKt.to("request", httpURLConnection.toString()), TuplesKt.to("api_key", str), TuplesKt.to(ImagesContract.URL, httpURLConnection.getURL().toString()), TuplesKt.to("request_id", headerField), TuplesKt.to("request_duration", Double.valueOf(d))), null, 16, null);
            throw new NetworkError.NotAuthenticated();
        }
        if (responseCode != 404) {
            return headerField;
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.network, "Not Found", MapsKt.mapOf(TuplesKt.to("request", httpURLConnection.toString()), TuplesKt.to("api_key", str), TuplesKt.to(ImagesContract.URL, httpURLConnection.getURL().toString()), TuplesKt.to("request_id", headerField), TuplesKt.to("request_duration", Double.valueOf(d))), null, 16, null);
        throw new NetworkError.NotFound();
    }
}
