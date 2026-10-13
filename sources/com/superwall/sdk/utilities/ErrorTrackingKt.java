package com.superwall.sdk.utilities;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.react.devsupport.StackTraceHelper;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.billing.BillingError;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.network.NetworkError;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallSkippedReason;
import com.superwall.sdk.store.transactions.TransactionError;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ErrorTracking.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u0014\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002H\u0000\u001a,\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00020\b\"\u0004\b\u0000\u0010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000bH\u0080\bø\u0001\u0000\u001a*\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000e0\r\"\u0004\b\u0000\u0010\u000e*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\r0\rH\u0080\b¢\u0006\u0002\u0010\u000f\u001a\f\u0010\u0010\u001a\u00020\u0001*\u00020\u0002H\u0002\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0011"}, d2 = {StackTraceHelper.IS_FATAL_KEY, "", "", "trackError", "", "Lcom/superwall/sdk/Superwall;", "e", "withErrorTracking", "Lcom/superwall/sdk/misc/Either;", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function0;", "flatten", "Lkotlin/Result;", "R", "(Ljava/lang/Object;)Ljava/lang/Object;", "shouldLog", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ErrorTrackingKt {
    public static final boolean isFatal(Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        return (th instanceof RuntimeException) || (th instanceof StackOverflowError) || (th instanceof OutOfMemoryError) || (th instanceof ClassNotFoundException) || (th instanceof NoClassDefFoundError);
    }

    public static final void trackError(Superwall superwall, Throwable e) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(e, "e");
        try {
            superwall.getDependencyContainer$superwall_release().getErrorTracker().trackError(e);
        } catch (Exception e2) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.all, "Error tracking failed for " + e.getMessage() + ". Cause " + e2.getMessage() + "} ", null, null, 24, null);
        }
    }

    public static final <T> Either<T, Throwable> withErrorTracking(Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            return new Either.Success(block.invoke());
        } catch (Throwable th) {
            if (shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                trackError(Superwall.INSTANCE.getInstance(), th);
            }
            return new Either.Failure(th);
        }
    }

    public static final <R> Object flatten(Object obj) {
        if (Result.m11248isSuccessimpl(obj)) {
            if (Result.m11244exceptionOrNullimpl(obj) == null) {
                return ((Result) obj).getValue();
            }
            Result.Companion companion = Result.INSTANCE;
            IllegalStateException illegalStateExceptionM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(obj);
            if (illegalStateExceptionM11244exceptionOrNullimpl == null) {
                illegalStateExceptionM11244exceptionOrNullimpl = new IllegalStateException("Unknown error");
            }
            return Result.m11241constructorimpl(ResultKt.createFailure(illegalStateExceptionM11244exceptionOrNullimpl));
        }
        if (Result.m11247isFailureimpl(obj)) {
            Result.Companion companion2 = Result.INSTANCE;
            IllegalStateException illegalStateExceptionM11244exceptionOrNullimpl2 = Result.m11244exceptionOrNullimpl(obj);
            if (illegalStateExceptionM11244exceptionOrNullimpl2 == null) {
                illegalStateExceptionM11244exceptionOrNullimpl2 = new IllegalStateException("Unknown error");
            }
            return Result.m11241constructorimpl(ResultKt.createFailure(illegalStateExceptionM11244exceptionOrNullimpl2));
        }
        Result.Companion companion3 = Result.INSTANCE;
        IllegalStateException illegalStateExceptionM11244exceptionOrNullimpl3 = Result.m11244exceptionOrNullimpl(obj);
        if (illegalStateExceptionM11244exceptionOrNullimpl3 == null) {
            illegalStateExceptionM11244exceptionOrNullimpl3 = new IllegalStateException("Unknown error");
        }
        return Result.m11241constructorimpl(ResultKt.createFailure(illegalStateExceptionM11244exceptionOrNullimpl3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean shouldLog(Throwable th) {
        return (((th instanceof CancellationException) || (th instanceof InterruptedException) || (th instanceof PaywallPresentationRequestStatusReason) || (th instanceof TransactionError) || (th instanceof PaywallSkippedReason) || ((!(th instanceof NetworkError.Decoding) && (th instanceof NetworkError)) || (th instanceof BillingError))) && (th instanceof PaywallPresentationRequestStatusReason)) ? false : true;
    }
}
