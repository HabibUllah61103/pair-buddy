package com.superwall.sdk.paywall.view;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import androidx.exifinterface.media.ExifInterface;
import com.superwall.sdk.misc.Color_HelpersKt;
import com.superwall.sdk.paywall.view.delegate.PaywallLoadingState;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaywallShimmerView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a-\u0010\u0000\u001a\u00020\u0001\"\f\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004*\u0002H\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"setupFor", "", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/superwall/sdk/paywall/view/PaywallShimmerView;", "Landroid/view/View;", "paywallView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "loadingState", "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;", "(Landroid/view/View;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PaywallShimmerViewKt {
    public static final <T extends View & PaywallShimmerView> void setupFor(T t, PaywallView paywallView, PaywallLoadingState loadingState) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(paywallView, "paywallView");
        Intrinsics.checkNotNullParameter(loadingState, "loadingState");
        ViewParent parent = t.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(t);
        }
        if (t instanceof ShimmerView) {
            ShimmerView shimmerView = (ShimmerView) t;
            if (shimmerView.getBackground() != paywallView.getBackgroundColor()) {
                shimmerView.setBackground(paywallView.getBackgroundColor());
                t.setBackgroundColor(shimmerView.getBackground());
                shimmerView.setLightBackground(!Color_HelpersKt.isDarkColor(shimmerView.getBackground()));
                shimmerView.setTintColor(Color_HelpersKt.readableOverlayColor(shimmerView.getBackground()));
                shimmerView.setTintColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(Color.argb(64, Color.red(shimmerView.getTintColor()), Color.green(shimmerView.getTintColor()), Color.blue(shimmerView.getTintColor())), BlendModeCompat.SRC_IN));
            }
        }
        t.setVisibility(loadingState instanceof PaywallLoadingState.LoadingURL ? 0 : 8);
        paywallView.addView(t);
        t.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        t.checkForOrientationChanges();
    }
}
