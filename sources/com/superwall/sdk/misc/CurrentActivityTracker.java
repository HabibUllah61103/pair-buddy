package com.superwall.sdk.misc;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: CurrentActivityTracker.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u0018\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000eH\u0016J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0007H\u0016J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0086@¢\u0006\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/superwall/sdk/misc/CurrentActivityTracker;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "Lcom/superwall/sdk/misc/ActivityProvider;", "<init>", "()V", "currentActivity", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "activityState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "onActivityCreated", "", "activity", "savedInstanceState", "Landroid/os/Bundle;", "onActivityStarted", "onActivityResumed", "onActivityPaused", "onActivityStopped", "onActivitySaveInstanceState", "outState", "onActivityDestroyed", "getCurrentActivity", "awaitActivity", "timeout", "Lkotlin/time/Duration;", "awaitActivity-VtjQ1oo", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CurrentActivityTracker implements Application.ActivityLifecycleCallbacks, ActivityProvider {
    private final MutableStateFlow<Activity> activityState = StateFlowKt.MutableStateFlow(null);
    private WeakReference<Activity> currentActivity;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "!! onActivityCreated: " + activity, null, null, 24, null);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "!! onActivityStarted: " + activity, null, null, 24, null);
        this.currentActivity = new WeakReference<>(activity);
        this.activityState.setValue(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "!! onActivityResumed: " + activity, null, null, 24, null);
        this.currentActivity = new WeakReference<>(activity);
        this.activityState.setValue(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        WeakReference<Activity> weakReference = this.currentActivity;
        if ((weakReference != null ? weakReference.get() : null) == activity) {
            this.activityState.setValue(null);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "!! onActivityDestroyed: " + activity, null, null, 24, null);
        WeakReference<Activity> weakReference = this.currentActivity;
        if ((weakReference != null ? weakReference.get() : null) == activity) {
            this.currentActivity = null;
            this.activityState.setValue(null);
        }
    }

    @Override // com.superwall.sdk.misc.ActivityProvider
    public Activity getCurrentActivity() {
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "!! getCurrentActivity: " + this.currentActivity, null, null, 24, null);
        WeakReference<Activity> weakReference = this.currentActivity;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX INFO: renamed from: awaitActivity-VtjQ1oo, reason: not valid java name */
    public final Object m10627awaitActivityVtjQ1oo(long j, Continuation<? super Activity> continuation) {
        Activity activity;
        WeakReference<Activity> weakReference = this.currentActivity;
        return (weakReference == null || (activity = weakReference.get()) == null) ? TimeoutKt.m12757withTimeoutOrNullKLykuaI(j, new CurrentActivityTracker$awaitActivity$2(this, null), continuation) : activity;
    }
}
