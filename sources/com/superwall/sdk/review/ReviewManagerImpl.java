package com.superwall.sdk.review;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.review.ReviewException;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManagerFactory;
import com.google.android.play.core.review.testing.FakeReviewManager;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: compiled from: ReviewManagerImpl.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\u0010\u001a\u00020\u0011H\u0096@¢\u0006\u0002\u0010\u0012J\u001e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0011H\u0096@¢\u0006\u0002\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/review/ReviewManagerImpl;", "Lcom/superwall/sdk/review/ReviewManager;", "context", "Landroid/content/Context;", "isDebug", "Lkotlin/Function0;", "", "<init>", "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V", "()Lkotlin/jvm/functions/Function0;", "playReviewManager", "Lcom/google/android/play/core/review/ReviewManager;", "getPlayReviewManager", "()Lcom/google/android/play/core/review/ReviewManager;", "playReviewManager$delegate", "Lkotlin/Lazy;", "requestReviewFlow", "Lcom/google/android/play/core/review/ReviewInfo;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "launchReviewFlow", "", "activity", "Landroid/app/Activity;", "reviewInfo", "(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ReviewManagerImpl implements ReviewManager {
    private final Context context;
    private final Function0<Boolean> isDebug;

    /* JADX INFO: renamed from: playReviewManager$delegate, reason: from kotlin metadata */
    private final Lazy playReviewManager;

    public ReviewManagerImpl(Context context, Function0<Boolean> isDebug) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(isDebug, "isDebug");
        this.context = context;
        this.isDebug = isDebug;
        this.playReviewManager = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.review.ReviewManagerImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ReviewManagerImpl.playReviewManager_delegate$lambda$0(this.f$0);
            }
        });
    }

    public final Function0<Boolean> isDebug() {
        return this.isDebug;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.google.android.play.core.review.ReviewManager getPlayReviewManager() {
        return (com.google.android.play.core.review.ReviewManager) this.playReviewManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.google.android.play.core.review.ReviewManager playReviewManager_delegate$lambda$0(ReviewManagerImpl reviewManagerImpl) {
        if (reviewManagerImpl.isDebug.invoke().booleanValue()) {
            return new FakeReviewManager(reviewManagerImpl.context);
        }
        return ReviewManagerFactory.create(reviewManagerImpl.context);
    }

    @Override // com.superwall.sdk.review.ReviewManager
    public Object requestReviewFlow(Continuation<? super ReviewInfo> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        Task<ReviewInfo> taskRequestReviewFlow = getPlayReviewManager().requestReviewFlow();
        Intrinsics.checkNotNullExpressionValue(taskRequestReviewFlow, "requestReviewFlow(...)");
        taskRequestReviewFlow.addOnCompleteListener(new OnCompleteListener() { // from class: com.superwall.sdk.review.ReviewManagerImpl$requestReviewFlow$2$1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task<ReviewInfo> task) {
                ReviewError.GenericError genericError;
                Intrinsics.checkNotNullParameter(task, "task");
                if (task.isSuccessful()) {
                    ReviewInfo result = task.getResult();
                    CancellableContinuation<ReviewInfo> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m11241constructorimpl(result));
                    return;
                }
                Exception exception = task.getException();
                if (exception instanceof ReviewException) {
                    genericError = new ReviewError.RequestFlowError(((ReviewException) exception).getErrorCode(), exception);
                } else {
                    genericError = new ReviewError.GenericError("Failed to request review flow: " + (exception != null ? exception.getMessage() : null), exception);
                }
                CancellableContinuation<ReviewInfo> cancellableContinuation2 = cancellableContinuationImpl2;
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuation2.resumeWith(Result.m11241constructorimpl(ResultKt.createFailure(genericError)));
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @Override // com.superwall.sdk.review.ReviewManager
    public Object launchReviewFlow(Activity activity, ReviewInfo reviewInfo, Continuation<? super Unit> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        Task<Void> taskLaunchReviewFlow = getPlayReviewManager().launchReviewFlow(activity, reviewInfo);
        Intrinsics.checkNotNullExpressionValue(taskLaunchReviewFlow, "launchReviewFlow(...)");
        taskLaunchReviewFlow.addOnCompleteListener(new OnCompleteListener() { // from class: com.superwall.sdk.review.ReviewManagerImpl$launchReviewFlow$2$1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task<Void> task) {
                Intrinsics.checkNotNullParameter(task, "task");
                if (task.isSuccessful()) {
                    CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m11241constructorimpl(Unit.INSTANCE));
                } else {
                    ReviewError.LaunchFlowError launchFlowError = new ReviewError.LaunchFlowError(task.getException());
                    CancellableContinuation<Unit> cancellableContinuation2 = cancellableContinuationImpl2;
                    Result.Companion companion2 = Result.INSTANCE;
                    cancellableContinuation2.resumeWith(Result.m11241constructorimpl(ResultKt.createFailure(launchFlowError)));
                }
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }
}
