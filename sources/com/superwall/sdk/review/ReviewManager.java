package com.superwall.sdk.review;

import android.app.Activity;
import com.google.android.play.core.review.ReviewInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: ReviewManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H¦@¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0003H¦@¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/review/ReviewManager;", "", "requestReviewFlow", "Lcom/google/android/play/core/review/ReviewInfo;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "launchReviewFlow", "", "activity", "Landroid/app/Activity;", "reviewInfo", "(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ReviewManager {
    Object launchReviewFlow(Activity activity, ReviewInfo reviewInfo, Continuation<? super Unit> continuation);

    Object requestReviewFlow(Continuation<? super ReviewInfo> continuation);
}
