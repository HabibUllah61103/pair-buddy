package com.superwall.sdk.misc;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: AppLifecycleObserver.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\t¨\u0006\u000f"}, d2 = {"Lcom/superwall/sdk/misc/AppLifecycleObserver;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "<init>", "()V", "_isInBackground", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "isInBackground", "Lkotlinx/coroutines/flow/StateFlow;", "()Lkotlinx/coroutines/flow/StateFlow;", "onStart", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "onStop", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AppLifecycleObserver implements DefaultLifecycleObserver {
    private final MutableStateFlow<Boolean> _isInBackground;
    private final StateFlow<Boolean> isInBackground;

    public AppLifecycleObserver() {
        MutableStateFlow<Boolean> MutableStateFlow = StateFlowKt.MutableStateFlow(true);
        this._isInBackground = MutableStateFlow;
        this.isInBackground = FlowKt.asStateFlow(MutableStateFlow);
    }

    public final StateFlow<Boolean> isInBackground() {
        return this.isInBackground;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onStart(owner);
        this._isInBackground.setValue(false);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onStop(owner);
        this._isInBackground.setValue(true);
    }
}
