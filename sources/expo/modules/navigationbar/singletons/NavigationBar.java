package expo.modules.navigationbar.singletons;

import android.app.Activity;
import android.util.Log;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.facebook.react.uimanager.ViewProps;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NavigationBar.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JG\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\f2!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00070\u000eJG\u0010\u0012\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\f2!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00070\u000eJ\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lexpo/modules/navigationbar/singletons/NavigationBar;", "", "<init>", "()V", "TAG", "", "setButtonStyle", "", "activity", "Landroid/app/Activity;", "buttonStyle", "successCallback", "Lkotlin/Function0;", "failureCallback", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "reason", "setVisibility", "visibility", "expo-navigation-bar_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NavigationBar {
    public static final NavigationBar INSTANCE = new NavigationBar();
    private static final String TAG = "NavigationBar";

    private NavigationBar() {
    }

    public final void setButtonStyle(Activity activity, String buttonStyle, Function0<Unit> successCallback, Function1<? super String, Unit> failureCallback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(buttonStyle, "buttonStyle");
        Intrinsics.checkNotNullParameter(successCallback, "successCallback");
        Intrinsics.checkNotNullParameter(failureCallback, "failureCallback");
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(activity.getWindow(), activity.getWindow().getDecorView());
        if (Intrinsics.areEqual(buttonStyle, "light")) {
            windowInsetsControllerCompat.setAppearanceLightNavigationBars(false);
        } else {
            if (!Intrinsics.areEqual(buttonStyle, "dark")) {
                failureCallback.invoke("Invalid style: \"" + buttonStyle + "\"");
                return;
            }
            windowInsetsControllerCompat.setAppearanceLightNavigationBars(true);
        }
        successCallback.invoke();
    }

    public final void setVisibility(Activity activity, String visibility, Function0<Unit> successCallback, Function1<? super String, Unit> failureCallback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        Intrinsics.checkNotNullParameter(successCallback, "successCallback");
        Intrinsics.checkNotNullParameter(failureCallback, "failureCallback");
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(activity.getWindow(), activity.getWindow().getDecorView());
        if (Intrinsics.areEqual(visibility, ViewProps.VISIBLE)) {
            windowInsetsControllerCompat.show(WindowInsetsCompat.Type.navigationBars());
        } else if (Intrinsics.areEqual(visibility, ViewProps.HIDDEN)) {
            windowInsetsControllerCompat.hide(WindowInsetsCompat.Type.navigationBars());
        } else {
            failureCallback.invoke("Invalid visibility: \"" + visibility + "\"");
            return;
        }
        successCallback.invoke();
    }

    @JvmStatic
    public static final void setVisibility(Activity activity, String visibility) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        INSTANCE.setVisibility(activity, visibility, new Function0() { // from class: expo.modules.navigationbar.singletons.NavigationBar$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        }, new Function1() { // from class: expo.modules.navigationbar.singletons.NavigationBar$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NavigationBar.setVisibility$lambda$3((String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setVisibility$lambda$3(String m) {
        Intrinsics.checkNotNullParameter(m, "m");
        Log.e(TAG, m);
        return Unit.INSTANCE;
    }
}
