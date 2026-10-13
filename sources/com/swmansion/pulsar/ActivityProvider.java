package com.swmansion.pulsar;

import android.app.Activity;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: ActivityProvider.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/swmansion/pulsar/ActivityProvider;", "", "activity", "Landroid/app/Activity;", "<init>", "(Landroid/app/Activity;)V", "getCurrentActivity", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class ActivityProvider {
    private final Activity activity;

    /* JADX WARN: Multi-variable type inference failed */
    public ActivityProvider() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public ActivityProvider(Activity activity) {
        this.activity = activity;
    }

    public /* synthetic */ ActivityProvider(Activity activity, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : activity);
    }

    /* JADX INFO: renamed from: getCurrentActivity, reason: from getter */
    public Activity getActivity() {
        return this.activity;
    }
}
