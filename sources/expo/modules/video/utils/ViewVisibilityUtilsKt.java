package expo.modules.video.utils;

import android.graphics.Rect;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewVisibilityUtils.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0000¨\u0006\u0005"}, d2 = {"isVisibleOnScreen", "", "Landroid/view/View;", "visiblePercentage", "", "expo-video_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ViewVisibilityUtilsKt {
    public static final boolean isVisibleOnScreen(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return view.getGlobalVisibleRect(new Rect());
    }

    public static final float visiblePercentage(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Rect rect = new Rect();
        if (!view.getGlobalVisibleRect(rect)) {
            return 0.0f;
        }
        int iHeight = rect.height() * rect.width();
        int height = view.getHeight() * view.getWidth();
        if (height == 0) {
            return 0.0f;
        }
        return (iHeight * 100.0f) / height;
    }
}
