package com.superwall.sdk.paywall.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoadingView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u000f2\u00020\u00012\u00020\u0002:\u0001\u000fB1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/paywall/view/LoadingView;", "Landroid/widget/FrameLayout;", "Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "defStyleRes", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "showLoading", "", "hideLoading", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LoadingView extends FrameLayout implements PaywallPurchaseLoadingView {
    public static final String TAG = "LoadingView";

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoadingView(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoadingView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$1(View view, MotionEvent motionEvent) {
        return true;
    }

    public /* synthetic */ LoadingView(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadingView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context.getApplicationContext());
        Intrinsics.checkNotNullParameter(context, "context");
        setTag(TAG);
        setBackgroundColor(0);
        ProgressBar progressBar = new ProgressBar(context.getApplicationContext());
        progressBar.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        addView(progressBar);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.superwall.sdk.paywall.view.LoadingView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return LoadingView._init_$lambda$1(view, motionEvent);
            }
        });
    }

    @Override // com.superwall.sdk.paywall.view.PaywallPurchaseLoadingView
    public void showLoading() {
        setVisibility(0);
    }

    @Override // com.superwall.sdk.paywall.view.PaywallPurchaseLoadingView
    public void hideLoading() {
        setVisibility(8);
    }
}
