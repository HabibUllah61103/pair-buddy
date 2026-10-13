package com.swmansion.pulsar.reactnative;

import android.app.Activity;
import com.facebook.react.bridge.ReactApplicationContext;
import com.swmansion.pulsar.ActivityProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReactNativeActivityProvider.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/reactnative/ReactNativeActivityProvider;", "Lcom/swmansion/pulsar/ActivityProvider;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getCurrentActivity", "Landroid/app/Activity;", "react-native-pulsar_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ReactNativeActivityProvider extends ActivityProvider {
    private final ReactApplicationContext reactContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReactNativeActivityProvider(ReactApplicationContext reactContext) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        this.reactContext = reactContext;
    }

    @Override // com.swmansion.pulsar.ActivityProvider
    /* JADX INFO: renamed from: getCurrentActivity */
    public Activity getActivity() {
        return this.reactContext.getCurrentActivity();
    }
}
