package com.superwall.sdk.paywall.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.media3.common.C;
import com.facebook.react.modules.appstate.AppStateModule;
import com.superwall.sdk.R;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShimmerView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 72\u00020\u00012\u00020\u0002:\u00017B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010*\u001a\u00020+H\u0016J\b\u0010,\u001a\u00020+H\u0016J\b\u0010-\u001a\u00020+H\u0016J\u0010\u0010.\u001a\u00020+2\u0006\u0010/\u001a\u000200H\u0014J\u0010\u00101\u001a\u00020+2\u0006\u00102\u001a\u000200H\u0002J\b\u00103\u001a\u00020+H\u0014J\b\u00104\u001a\u00020+H\u0014J\u0006\u00105\u001a\u00020+J\u0006\u00106\u001a\u00020+R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u000f\u001a\u0004\u0018\u00010\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0014\u001a\u0004\u0018\u00010\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0015\u0010\u0011R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010$\"\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001f\"\u0004\b)\u0010!¨\u00068"}, d2 = {"Lcom/superwall/sdk/paywall/view/ShimmerView;", "Landroid/widget/ImageView;", "Lcom/superwall/sdk/paywall/view/PaywallShimmerView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "animator", "Landroid/animation/ValueAnimator;", "vectorDrawable", "Landroid/graphics/drawable/VectorDrawable;", "currentOrientation", "", "portraitDrawable", "getPortraitDrawable", "()Landroid/graphics/drawable/VectorDrawable;", "portraitDrawable$delegate", "Lkotlin/Lazy;", "landscapeDrawable", "getLandscapeDrawable", "landscapeDrawable$delegate", "tintColorFilter", "Landroid/graphics/ColorFilter;", "getTintColorFilter", "()Landroid/graphics/ColorFilter;", "setTintColorFilter", "(Landroid/graphics/ColorFilter;)V", AppStateModule.APP_STATE_BACKGROUND, "getBackground", "()I", "setBackground", "(I)V", "isLightBackground", "", "()Z", "setLightBackground", "(Z)V", "tintColor", "getTintColor", "setTintColor", "hideShimmer", "", "showShimmer", "checkForOrientationChanges", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "setDrawableBasedOnOrientation", "config", "onAttachedToWindow", "onDetachedFromWindow", "startShimmer", "stopShimmer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ShimmerView extends ImageView implements PaywallShimmerView {
    public static final String TAG = "ShimmerView";
    private ValueAnimator animator;
    private int background;
    private int currentOrientation;
    private boolean isLightBackground;

    /* JADX INFO: renamed from: landscapeDrawable$delegate, reason: from kotlin metadata */
    private final Lazy landscapeDrawable;

    /* JADX INFO: renamed from: portraitDrawable$delegate, reason: from kotlin metadata */
    private final Lazy portraitDrawable;
    private int tintColor;
    private ColorFilter tintColorFilter;
    private VectorDrawable vectorDrawable;

    public /* synthetic */ ShimmerView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShimmerView(Context context, AttributeSet attributeSet) {
        super(context.getApplicationContext(), attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.portraitDrawable = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.paywall.view.ShimmerView$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShimmerView.portraitDrawable_delegate$lambda$0(this.f$0);
            }
        });
        this.landscapeDrawable = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.paywall.view.ShimmerView$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShimmerView.landscapeDrawable_delegate$lambda$1(this.f$0);
            }
        });
        setLayerType(1, null);
        setTag(TAG);
        checkForOrientationChanges();
    }

    private final VectorDrawable getPortraitDrawable() {
        return (VectorDrawable) this.portraitDrawable.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VectorDrawable portraitDrawable_delegate$lambda$0(ShimmerView shimmerView) {
        Drawable drawable = ContextCompat.getDrawable(shimmerView.getContext(), R.drawable.portrait_shimmer_skeleton);
        if (drawable instanceof VectorDrawable) {
            return (VectorDrawable) drawable;
        }
        return null;
    }

    private final VectorDrawable getLandscapeDrawable() {
        return (VectorDrawable) this.landscapeDrawable.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VectorDrawable landscapeDrawable_delegate$lambda$1(ShimmerView shimmerView) {
        Drawable drawable = ContextCompat.getDrawable(shimmerView.getContext(), R.drawable.landscape_shimmer_skeleton);
        if (drawable instanceof VectorDrawable) {
            return (VectorDrawable) drawable;
        }
        return null;
    }

    public final ColorFilter getTintColorFilter() {
        return this.tintColorFilter;
    }

    public final void setTintColorFilter(ColorFilter colorFilter) {
        this.tintColorFilter = colorFilter;
    }

    @Override // android.view.View
    public final int getBackground() {
        return this.background;
    }

    public final void setBackground(int i) {
        this.background = i;
    }

    /* JADX INFO: renamed from: isLightBackground, reason: from getter */
    public final boolean getIsLightBackground() {
        return this.isLightBackground;
    }

    public final void setLightBackground(boolean z) {
        this.isLightBackground = z;
    }

    public final int getTintColor() {
        return this.tintColor;
    }

    public final void setTintColor(int i) {
        this.tintColor = i;
    }

    @Override // com.superwall.sdk.paywall.view.PaywallShimmerView
    public void hideShimmer() {
        setVisibility(8);
        stopShimmer();
    }

    @Override // com.superwall.sdk.paywall.view.PaywallShimmerView
    public void showShimmer() {
        setVisibility(0);
        startShimmer();
    }

    @Override // com.superwall.sdk.paywall.view.PaywallShimmerView
    public void checkForOrientationChanges() {
        Configuration configuration = getResources().getConfiguration();
        Intrinsics.checkNotNull(configuration);
        setDrawableBasedOnOrientation(configuration);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        if (this.currentOrientation == newConfig.orientation) {
            return;
        }
        this.currentOrientation = newConfig.orientation;
        setDrawableBasedOnOrientation(newConfig);
        invalidate();
    }

    private final void setDrawableBasedOnOrientation(Configuration config) {
        VectorDrawable portraitDrawable;
        if (config.orientation == 2) {
            portraitDrawable = getLandscapeDrawable();
        } else {
            portraitDrawable = getPortraitDrawable();
        }
        this.vectorDrawable = portraitDrawable;
        if (!Intrinsics.areEqual(portraitDrawable, getDrawable())) {
            setImageDrawable(this.vectorDrawable);
        }
        setColorFilter(this.tintColorFilter);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.superwall.sdk.paywall.view.ShimmerView.onAttachedToWindow.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ShimmerView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                ShimmerView.this.startShimmer();
            }
        });
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopShimmer();
    }

    public final void startShimmer() {
        stopShimmer();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.5f, 1.0f);
        valueAnimatorOfFloat.setDuration(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setInterpolator(new PathInterpolator(0.4f, 0.0f, 0.6f, 1.0f));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.superwall.sdk.paywall.view.ShimmerView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ShimmerView.startShimmer$lambda$3$lambda$2(this.f$0, valueAnimator);
            }
        });
        valueAnimatorOfFloat.start();
        this.animator = valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startShimmer$lambda$3$lambda$2(ShimmerView shimmerView, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Drawable drawable = shimmerView.getDrawable();
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        drawable.setAlpha((int) (((Float) animatedValue).floatValue() * 255));
    }

    public final void stopShimmer() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }
}
