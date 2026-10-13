package expo.modules.superwallexpo;

import android.app.Activity;
import com.superwall.sdk.misc.ActivityProvider;
import expo.modules.kotlin.AppContext;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReactNativeActivityProvider.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lexpo/modules/superwallexpo/ExpoActivityProvider;", "Lcom/superwall/sdk/misc/ActivityProvider;", "appContext", "Lexpo/modules/kotlin/AppContext;", "<init>", "(Lexpo/modules/kotlin/AppContext;)V", "getCurrentActivity", "Landroid/app/Activity;", "expo-superwall_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ExpoActivityProvider implements ActivityProvider {
    private final AppContext appContext;

    public ExpoActivityProvider(AppContext appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.appContext = appContext;
    }

    @Override // com.superwall.sdk.misc.ActivityProvider
    public Activity getCurrentActivity() {
        return this.appContext.getCurrentActivity();
    }
}
