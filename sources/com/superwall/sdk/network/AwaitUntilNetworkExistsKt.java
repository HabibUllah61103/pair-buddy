package com.superwall.sdk.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import androidx.core.content.ContextCompat;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AwaitUntilNetworkExists.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0080@¢\u0006\u0002\u0010\u0005\u001a\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0002\u001a\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0002¨\u0006\n"}, d2 = {"awaitUntilNetworkExists", "", "Landroid/content/Context;", "checkInterval", "", "(Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "hasNetworkPermission", "", "context", "isNetworkAvailable", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class AwaitUntilNetworkExistsKt {

    /* JADX INFO: renamed from: com.superwall.sdk.network.AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1, reason: invalid class name */
    /* JADX INFO: compiled from: AwaitUntilNetworkExists.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.network.AwaitUntilNetworkExistsKt", f = "AwaitUntilNetworkExists.kt", i = {0, 0}, l = {14, 16}, m = "awaitUntilNetworkExists", n = {"$this$awaitUntilNetworkExists", "checkInterval"}, s = {"L$0", "J$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AwaitUntilNetworkExistsKt.awaitUntilNetworkExists(null, 0L, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0061, code lost:
    
        if (kotlinx.coroutines.DelayKt.delay(r8, r0) == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitUntilNetworkExists(android.content.Context r7, long r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            boolean r0 = r10 instanceof com.superwall.sdk.network.AwaitUntilNetworkExistsKt.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r10
            com.superwall.sdk.network.AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1 r0 = (com.superwall.sdk.network.AwaitUntilNetworkExistsKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            com.superwall.sdk.network.AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1 r0 = new com.superwall.sdk.network.AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L42
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r10)
            goto L64
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            long r7 = r0.J$0
            java.lang.Object r9 = r0.L$0
            android.content.Context r9 = (android.content.Context) r9
            kotlin.ResultKt.throwOnFailure(r10)
            r5 = r7
            r7 = r9
            r8 = r5
            goto L45
        L42:
            kotlin.ResultKt.throwOnFailure(r10)
        L45:
            boolean r10 = isNetworkAvailable(r7)
            if (r10 != 0) goto L58
            r0.L$0 = r7
            r0.J$0 = r8
            r0.label = r4
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.delay(r8, r0)
            if (r10 != r1) goto L45
            goto L63
        L58:
            r7 = 0
            r0.L$0 = r7
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r8, r0)
            if (r7 != r1) goto L64
        L63:
            return r1
        L64:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.network.AwaitUntilNetworkExistsKt.awaitUntilNetworkExists(android.content.Context, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object awaitUntilNetworkExists$default(Context context, long j, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 1000;
        }
        return awaitUntilNetworkExists(context, j, continuation);
    }

    private static final boolean hasNetworkPermission(Context context) {
        return ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") == 0;
    }

    private static final boolean isNetworkAvailable(Context context) {
        NetworkCapabilities networkCapabilities;
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        if (!hasNetworkPermission(context)) {
            return true;
        }
        android.net.Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return false;
        }
        return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0);
    }
}
