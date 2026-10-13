package com.superwall.sdk.review;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.testing.FakeReviewManager;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: MockReviewManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\b\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\nJ\u001e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\u0010J$\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\f0\u0013H\u0002J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\f0\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/superwall/sdk/review/MockReviewManager;", "Lcom/superwall/sdk/review/ReviewManager;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "fakeReviewManager", "Lcom/google/android/play/core/review/testing/FakeReviewManager;", "requestReviewFlow", "Lcom/google/android/play/core/review/ReviewInfo;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "launchReviewFlow", "", "activity", "Landroid/app/Activity;", "reviewInfo", "(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showMockReviewBottomSheet", "onComplete", "Lkotlin/Function1;", "", "createMockReviewView", "Landroid/view/View;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MockReviewManager implements ReviewManager {
    private final Context context;
    private final FakeReviewManager fakeReviewManager;

    public MockReviewManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.fakeReviewManager = new FakeReviewManager(context);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.review.MockReviewManager$showMockReviewBottomSheet$1, reason: invalid class name */
    /* JADX INFO: compiled from: MockReviewManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.review.MockReviewManager$showMockReviewBottomSheet$1", f = "MockReviewManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Activity $activity;
        final /* synthetic */ Function1<Integer, Unit> $onComplete;
        int label;
        final /* synthetic */ MockReviewManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Activity activity, MockReviewManager mockReviewManager, Function1<? super Integer, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$activity = activity;
            this.this$0 = mockReviewManager;
            this.$onComplete = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$activity, this.this$0, this.$onComplete, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            final AlertDialog alertDialogCreate = new AlertDialog.Builder(this.$activity, R.style.Theme.DeviceDefault.Light.Dialog).setCancelable(true).create();
            Intrinsics.checkNotNullExpressionValue(alertDialogCreate, "create(...)");
            MockReviewManager mockReviewManager = this.this$0;
            Activity activity = this.$activity;
            final Function1<Integer, Unit> function1 = this.$onComplete;
            alertDialogCreate.setView(mockReviewManager.createMockReviewView(activity, new Function1() { // from class: com.superwall.sdk.review.MockReviewManager$showMockReviewBottomSheet$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return MockReviewManager.AnonymousClass1.invokeSuspend$lambda$0(alertDialogCreate, function1, ((Integer) obj2).intValue());
                }
            }));
            Window window = alertDialogCreate.getWindow();
            if (window != null) {
                window.setLayout(-1, -2);
                window.setGravity(80);
                window.setBackgroundDrawable(new ColorDrawable(0));
                window.setSoftInputMode(16);
            }
            alertDialogCreate.show();
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(AlertDialog alertDialog, Function1 function1, int i) {
            alertDialog.dismiss();
            function1.invoke(Integer.valueOf(i));
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showMockReviewBottomSheet(Activity activity, Function1<? super Integer, Unit> onComplete) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), null, null, new AnonymousClass1(activity, this, onComplete, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View createMockReviewView(Activity activity, final Function1<? super Integer, Unit> onComplete) {
        Drawable drawable;
        String str;
        String string;
        Activity activity2 = activity;
        ApplicationInfo applicationInfo = null;
        View viewInflate = LayoutInflater.from(activity2).inflate(com.superwall.sdk.R.layout.mock_review_layout, (ViewGroup) null);
        ImageView imageView = (ImageView) viewInflate.findViewById(com.superwall.sdk.R.id.app_icon);
        PackageManager packageManager = activity.getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(activity.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (applicationInfo == null || (drawable = packageManager.getApplicationIcon(applicationInfo)) == null) {
            drawable = ContextCompat.getDrawable(activity2, R.drawable.sym_def_app_icon);
        }
        imageView.setImageDrawable(drawable);
        TextView textView = (TextView) viewInflate.findViewById(com.superwall.sdk.R.id.app_name);
        if (applicationInfo != null && (string = packageManager.getApplicationLabel(applicationInfo).toString()) != null) {
            str = string;
        }
        textView.setText(str);
        final RatingBar ratingBar = (RatingBar) viewInflate.findViewById(com.superwall.sdk.R.id.rating_bar);
        Button button = (Button) viewInflate.findViewById(com.superwall.sdk.R.id.not_now_button);
        Button button2 = (Button) viewInflate.findViewById(com.superwall.sdk.R.id.submit_button);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.review.MockReviewManager$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MockReviewManager.createMockReviewView$lambda$4(onComplete, view);
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.review.MockReviewManager$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MockReviewManager.createMockReviewView$lambda$5(ratingBar, onComplete, view);
            }
        });
        Intrinsics.checkNotNull(viewInflate);
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createMockReviewView$lambda$4(Function1 function1, View view) {
        function1.invoke(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createMockReviewView$lambda$5(RatingBar ratingBar, Function1 function1, View view) {
        function1.invoke(Integer.valueOf((int) ratingBar.getRating()));
    }

    @Override // com.superwall.sdk.review.ReviewManager
    public Object requestReviewFlow(Continuation<? super ReviewInfo> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        Task<ReviewInfo> taskRequestReviewFlow = this.fakeReviewManager.requestReviewFlow();
        Intrinsics.checkNotNullExpressionValue(taskRequestReviewFlow, "requestReviewFlow(...)");
        taskRequestReviewFlow.addOnCompleteListener(new OnCompleteListener() { // from class: com.superwall.sdk.review.MockReviewManager$requestReviewFlow$2$1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task<ReviewInfo> task) {
                Intrinsics.checkNotNullParameter(task, "task");
                if (task.isSuccessful()) {
                    CancellableContinuation<ReviewInfo> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m11241constructorimpl(task.getResult()));
                } else {
                    CancellableContinuation<ReviewInfo> cancellableContinuation2 = cancellableContinuationImpl2;
                    Result.Companion companion2 = Result.INSTANCE;
                    cancellableContinuation2.resumeWith(Result.m11241constructorimpl(task.getResult()));
                }
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
        showMockReviewBottomSheet(activity, new Function1<Integer, Unit>() { // from class: com.superwall.sdk.review.MockReviewManager$launchReviewFlow$2$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m11241constructorimpl(Unit.INSTANCE));
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }
}
