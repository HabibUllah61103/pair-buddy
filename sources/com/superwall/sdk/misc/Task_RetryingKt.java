package com.superwall.sdk.misc;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: Task+Retrying.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u001aa\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032#\b\u0002\u0010\u0004\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u00052\u001c\u0010\n\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\u0005H\u0086@¢\u0006\u0002\u0010\r\u001ar\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00100\u000f\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0011\u001a\u00020\u00032\u001e\u0010\u0012\u001a\u001a\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u00052(\u0010\n\u001a$\b\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00100\u000f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\u0005H\u0086@¢\u0006\u0002\u0010\r¨\u0006\u0014"}, d2 = {"retryOrNull", ExifInterface.GPS_DIRECTION_TRUE, "maxRetries", "", "delayMs", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "attempt", "", "operation", "Lkotlin/coroutines/Continuation;", "", "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrying", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/network/NetworkError;", "maxRetryCount", "isRetryingCallback", "", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class Task_RetryingKt {

    /* JADX INFO: renamed from: com.superwall.sdk.misc.Task_RetryingKt$retryOrNull$1, reason: invalid class name */
    /* JADX INFO: compiled from: Task+Retrying.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.Task_RetryingKt", f = "Task+Retrying.kt", i = {0, 0, 0, 0, 1, 1, 1}, l = {17, 19}, m = "retryOrNull", n = {"delayMs", "operation", "maxRetries", "attempt", "delayMs", "operation", "maxRetries"}, s = {"L$0", "L$1", "I$0", "I$2", "L$0", "L$1", "I$0"})
    static final class AnonymousClass1<T> extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
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
            return Task_RetryingKt.retryOrNull(0, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.Task_RetryingKt$retrying$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Task+Retrying.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.Task_RetryingKt", f = "Task+Retrying.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {34, 41, 43, 47}, m = "retrying", n = {"isRetryingCallback", "operation", "job", "maxRetryCount", "attempt", "isRetryingCallback", "operation", "job", "maxRetryCount", "attempt", "isRetryingCallback", "operation", "job", "maxRetryCount", "attempt"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1"})
    static final class C04911<T> extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C04911(Continuation<? super C04911> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Task_RetryingKt.retrying(0, null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long retryOrNull$lambda$0(int i) {
        return ((long) (i + 1)) * 1000;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(3:38|21|(1:30)(1:24)) */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0076, code lost:
    
        r2 = r10;
        r10 = r9;
        r9 = r8;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x007b -> B:33:0x00a2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009c -> B:32:0x009f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object retryOrNull(int r8, kotlin.jvm.functions.Function1<? super java.lang.Integer, java.lang.Long> r9, kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super T>, ? extends java.lang.Object> r10, kotlin.coroutines.Continuation<? super T> r11) {
        /*
            boolean r0 = r11 instanceof com.superwall.sdk.misc.Task_RetryingKt.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r11
            com.superwall.sdk.misc.Task_RetryingKt$retryOrNull$1 r0 = (com.superwall.sdk.misc.Task_RetryingKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            com.superwall.sdk.misc.Task_RetryingKt$retryOrNull$1 r0 = new com.superwall.sdk.misc.Task_RetryingKt$retryOrNull$1
            r0.<init>(r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L57
            if (r2 == r4) goto L42
            if (r2 != r3) goto L3a
            int r8 = r0.I$1
            int r9 = r0.I$0
            java.lang.Object r10 = r0.L$1
            kotlin.jvm.functions.Function1 r10 = (kotlin.jvm.functions.Function1) r10
            java.lang.Object r2 = r0.L$0
            kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2
            kotlin.ResultKt.throwOnFailure(r11)
            goto L9f
        L3a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L42:
            int r8 = r0.I$2
            int r9 = r0.I$1
            int r10 = r0.I$0
            java.lang.Object r2 = r0.L$1
            kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2
            java.lang.Object r5 = r0.L$0
            kotlin.jvm.functions.Function1 r5 = (kotlin.jvm.functions.Function1) r5
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L54
            return r11
        L54:
            r11 = r2
            r2 = r5
            goto L79
        L57:
            kotlin.ResultKt.throwOnFailure(r11)
            r11 = 0
            r7 = r9
            r9 = r8
            r8 = r11
            r11 = r10
            r10 = r7
        L60:
            if (r8 >= r9) goto La7
            r0.L$0 = r10     // Catch: java.lang.Throwable -> L76
            r0.L$1 = r11     // Catch: java.lang.Throwable -> L76
            r0.I$0 = r9     // Catch: java.lang.Throwable -> L76
            r0.I$1 = r8     // Catch: java.lang.Throwable -> L76
            r0.I$2 = r8     // Catch: java.lang.Throwable -> L76
            r0.label = r4     // Catch: java.lang.Throwable -> L76
            java.lang.Object r8 = r11.invoke(r0)     // Catch: java.lang.Throwable -> L76
            if (r8 != r1) goto L75
            goto L9b
        L75:
            return r8
        L76:
            r2 = r10
            r10 = r9
            r9 = r8
        L79:
            int r5 = r10 + (-1)
            if (r8 >= r5) goto La2
            java.lang.Integer r8 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r8)
            java.lang.Object r8 = r2.invoke(r8)
            java.lang.Number r8 = (java.lang.Number) r8
            long r5 = r8.longValue()
            r0.L$0 = r2
            r0.L$1 = r11
            r0.I$0 = r10
            r0.I$1 = r9
            r0.label = r3
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.delay(r5, r0)
            if (r8 != r1) goto L9c
        L9b:
            return r1
        L9c:
            r8 = r9
            r9 = r10
            r10 = r11
        L9f:
            r11 = r10
            r10 = r9
            r9 = r8
        La2:
            int r8 = r9 + 1
            r9 = r10
            r10 = r2
            goto L60
        La7:
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.misc.Task_RetryingKt.retryOrNull(int, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object retryOrNull$default(int i, Function1 function1, Function1 function2, Continuation continuation, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            function1 = new Function1() { // from class: com.superwall.sdk.misc.Task_RetryingKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Long.valueOf(Task_RetryingKt.retryOrNull$lambda$0(((Integer) obj2).intValue()));
                }
            };
        }
        return retryOrNull(i, function1, function2, continuation);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(3:49|25|(1:28)) */
    /* JADX WARN: Code duplicated, block: B:28:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:33:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d2 A[PHI: r0 r2 r8 r12 r13 r14
      0x00d2: PHI (r0v4 com.superwall.sdk.misc.Task_RetryingKt$retrying$1) = 
      (r0v6 com.superwall.sdk.misc.Task_RetryingKt$retrying$1)
      (r0v6 com.superwall.sdk.misc.Task_RetryingKt$retrying$1)
      (r0v2 com.superwall.sdk.misc.Task_RetryingKt$retrying$1)
     binds: [B:32:0x00bd, B:34:0x00cf, B:19:0x0057] A[DONT_GENERATE, DONT_INLINE]
      0x00d2: PHI (r2v3 kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super com.superwall.sdk.misc.Either<? extends T, com.superwall.sdk.network.NetworkError>>, ? extends java.lang.Object>) = 
      (r2v5 kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super com.superwall.sdk.misc.Either<? extends T, com.superwall.sdk.network.NetworkError>>, ? extends java.lang.Object>)
      (r2v5 kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super com.superwall.sdk.misc.Either<? extends T, com.superwall.sdk.network.NetworkError>>, ? extends java.lang.Object>)
      (r2v16 kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super com.superwall.sdk.misc.Either<? extends T, com.superwall.sdk.network.NetworkError>>, ? extends java.lang.Object>)
     binds: [B:32:0x00bd, B:34:0x00cf, B:19:0x0057] A[DONT_GENERATE, DONT_INLINE]
      0x00d2: PHI (r8v0 kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object>) = 
      (r8v1 kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object>)
      (r8v1 kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object>)
      (r8v14 kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object>)
     binds: [B:32:0x00bd, B:34:0x00cf, B:19:0x0057] A[DONT_GENERATE, DONT_INLINE]
      0x00d2: PHI (r12v2 int) = (r12v3 int), (r12v3 int), (r12v10 int) binds: [B:32:0x00bd, B:34:0x00cf, B:19:0x0057] A[DONT_GENERATE, DONT_INLINE]
      0x00d2: PHI (r13v2 int) = (r13v3 int), (r13v3 int), (r13v9 int) binds: [B:32:0x00bd, B:34:0x00cf, B:19:0x0057] A[DONT_GENERATE, DONT_INLINE]
      0x00d2: PHI (r14v2 kotlinx.coroutines.CompletableJob) = 
      (r14v3 kotlinx.coroutines.CompletableJob)
      (r14v3 kotlinx.coroutines.CompletableJob)
      (r14v14 kotlinx.coroutines.CompletableJob)
     binds: [B:32:0x00bd, B:34:0x00cf, B:19:0x0057] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:38:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00f7 A[PHI: r0 r2 r15
      0x00f7: PHI (r0v9 kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super com.superwall.sdk.misc.Either<? extends T, com.superwall.sdk.network.NetworkError>>, ? extends java.lang.Object>) = 
      (r0v5 kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super com.superwall.sdk.misc.Either<? extends T, com.superwall.sdk.network.NetworkError>>, ? extends java.lang.Object>)
      (r0v10 kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super com.superwall.sdk.misc.Either<? extends T, com.superwall.sdk.network.NetworkError>>, ? extends java.lang.Object>)
     binds: [B:42:0x00f6, B:24:0x008e] A[DONT_GENERATE, DONT_INLINE]
      0x00f7: PHI (r2v8 com.superwall.sdk.misc.Task_RetryingKt$retrying$1) = (r2v4 com.superwall.sdk.misc.Task_RetryingKt$retrying$1), (r2v9 com.superwall.sdk.misc.Task_RetryingKt$retrying$1) binds: [B:42:0x00f6, B:24:0x008e] A[DONT_GENERATE, DONT_INLINE]
      0x00f7: PHI (r15v10 kotlinx.coroutines.CompletableJob) = (r15v5 kotlinx.coroutines.CompletableJob), (r15v13 kotlinx.coroutines.CompletableJob) binds: [B:42:0x00f6, B:24:0x008e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:49:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b8, code lost:
    
        r8 = r2;
        r2 = r0;
        r0 = r8;
        r8 = r14;
        r14 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f1, code lost:
    
        if (kotlinx.coroutines.DelayKt.delay(r9, r2) == r1) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0108, code lost:
    
        if (r15 == r1) goto L45;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00f1 -> B:18:0x0053). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object retrying(int r12, kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r13, kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super com.superwall.sdk.misc.Either<? extends T, com.superwall.sdk.network.NetworkError>>, ? extends java.lang.Object> r14, kotlin.coroutines.Continuation<? super com.superwall.sdk.misc.Either<? extends T, com.superwall.sdk.network.NetworkError>> r15) {
        /*
            Method dump skipped, instruction units count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.misc.Task_RetryingKt.retrying(int, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
