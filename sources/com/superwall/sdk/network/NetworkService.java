package com.superwall.sdk.network;

import androidx.exifinterface.media.ExifInterface;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.Task_RetryingKt;
import com.superwall.sdk.network.session.CustomHttpUrlConnection;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: compiled from: NetworkService.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\nH¦@¢\u0006\u0002\u0010\u000eJ\u0093\u0001\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00170\u0015\"\u000f\b\u0000\u0010\u0016\u0018\u0001*\u00070\u0001¢\u0006\u0002\b\u00182\u0006\u0010\u0019\u001a\u00020\n2\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2 \b\n\u0010\u001f\u001a\u001a\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0!\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010 2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$H\u0086H¢\u0006\u0004\b%\u0010&Jk\u0010'\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00170\u0015\"\u000f\b\u0000\u0010\u0016\u0018\u0001*\u00070\u0001¢\u0006\u0002\b\u00182\u0006\u0010\u0019\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)2\b\b\u0002\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$H\u0086H¢\u0006\u0004\b*\u0010+R\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0012\u0010\u000f\u001a\u00020\nX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\nX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0011¨\u0006,"}, d2 = {"Lcom/superwall/sdk/network/NetworkService;", "", "<init>", "()V", "customHttpUrlConnection", "Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;", "getCustomHttpUrlConnection", "()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;", "makeHeaders", "", "", "isForDebugging", "", "requestId", "(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "host", "getHost", "()Ljava/lang/String;", "version", "getVersion", "get", "Lcom/superwall/sdk/misc/Either;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/superwall/sdk/network/NetworkError;", "Lkotlinx/serialization/Serializable;", "path", "queryItems", "", "Lcom/superwall/sdk/network/URLQueryItem;", "retryCount", "", "isRetryingCallback", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "timeout", "Lkotlin/time/Duration;", "get-rl3MWlM", "(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "post", "body", "", "post-7Yrd8eY", "(Ljava/lang/String;Z[BLjava/lang/String;ILkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class NetworkService {
    public abstract CustomHttpUrlConnection getCustomHttpUrlConnection();

    public abstract String getHost();

    public abstract String getVersion();

    public abstract Object makeHeaders(boolean z, String str, Continuation<? super Map<String, String>> continuation);

    /* JADX INFO: renamed from: get-rl3MWlM$default, reason: not valid java name */
    public static /* synthetic */ Object m10689getrl3MWlM$default(NetworkService networkService, String str, List list, boolean z, String str2, int i, Function1 function1, Duration duration, Continuation continuation, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: get-rl3MWlM");
        }
        List list2 = (i2 & 2) != 0 ? null : list;
        if ((i2 & 4) != 0) {
            z = false;
        }
        boolean z2 = z;
        String string = (i2 & 8) != 0 ? UUID.randomUUID().toString() : str2;
        int iRetryCount = (i2 & 16) != 0 ? NetworkConsts.INSTANCE.retryCount() : i;
        Function1 function2 = (i2 & 32) != 0 ? null : function1;
        Duration duration2 = (i2 & 64) != 0 ? null : duration;
        CustomHttpUrlConnection customHttpUrlConnection = networkService.getCustomHttpUrlConnection();
        Intrinsics.needClassReification();
        return Task_RetryingKt.retrying(iRetryCount, function2, new NetworkService$getrl3MWlM$$inlined$request$1(customHttpUrlConnection, null, networkService, str, list2, string, z2, duration2), continuation);
    }

    /* JADX INFO: renamed from: get-rl3MWlM, reason: not valid java name */
    public final /* synthetic */ <T> Object m10691getrl3MWlM(String str, List<URLQueryItem> list, boolean z, String str2, int i, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Duration duration, Continuation<? super Either<? extends T, NetworkError>> continuation) {
        CustomHttpUrlConnection customHttpUrlConnection = getCustomHttpUrlConnection();
        Intrinsics.needClassReification();
        return Task_RetryingKt.retrying(i, function1, new NetworkService$getrl3MWlM$$inlined$request$1(customHttpUrlConnection, null, this, str, list, str2, z, duration), continuation);
    }

    /* JADX INFO: renamed from: post-7Yrd8eY$default, reason: not valid java name */
    public static /* synthetic */ Object m10690post7Yrd8eY$default(NetworkService networkService, String str, boolean z, byte[] bArr, String str2, int i, Duration duration, Continuation continuation, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: post-7Yrd8eY");
        }
        if ((i2 & 2) != 0) {
            z = false;
        }
        boolean z2 = z;
        byte[] bArr2 = (i2 & 4) != 0 ? null : bArr;
        if ((i2 & 8) != 0) {
            str2 = UUID.randomUUID().toString();
        }
        String str3 = str2;
        int i3 = (i2 & 16) != 0 ? 6 : i;
        Duration duration2 = (i2 & 32) != 0 ? null : duration;
        CustomHttpUrlConnection customHttpUrlConnection = networkService.getCustomHttpUrlConnection();
        Intrinsics.needClassReification();
        return Task_RetryingKt.retrying(i3, null, new NetworkService$post7Yrd8eY$$inlined$request$default$1(customHttpUrlConnection, null, networkService, str, bArr2, str3, z2, duration2), continuation);
    }

    /* JADX INFO: renamed from: post-7Yrd8eY, reason: not valid java name */
    public final /* synthetic */ <T> Object m10692post7Yrd8eY(String str, boolean z, byte[] bArr, String str2, int i, Duration duration, Continuation<? super Either<? extends T, NetworkError>> continuation) {
        CustomHttpUrlConnection customHttpUrlConnection = getCustomHttpUrlConnection();
        Intrinsics.needClassReification();
        return Task_RetryingKt.retrying(i, null, new NetworkService$post7Yrd8eY$$inlined$request$default$1(customHttpUrlConnection, null, this, str, bArr, str2, z, duration), continuation);
    }
}
