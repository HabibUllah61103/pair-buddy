package com.superwall.sdk.paywall.view;

import android.view.View;
import androidx.lifecycle.ViewModel;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;

/* JADX INFO: compiled from: ViewStorageViewModel.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004R \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;", "Landroidx/lifecycle/ViewModel;", "Lcom/superwall/sdk/paywall/view/ViewStorage;", "<init>", "()V", "views", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Landroid/view/View;", "getViews", "()Ljava/util/concurrent/ConcurrentHashMap;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ViewStorageViewModel extends ViewModel implements ViewStorage {
    private final ConcurrentHashMap<String, View> views = new ConcurrentHashMap<>();

    @Override // com.superwall.sdk.paywall.view.ViewStorage
    public List<View> all() {
        return ViewStorage.DefaultImpls.all(this);
    }

    @Override // com.superwall.sdk.paywall.view.ViewStorage
    public Set<String> keys() {
        return ViewStorage.DefaultImpls.keys(this);
    }

    @Override // com.superwall.sdk.paywall.view.ViewStorage
    public void removeView(String str) {
        ViewStorage.DefaultImpls.removeView(this, str);
    }

    @Override // com.superwall.sdk.paywall.view.ViewStorage
    public View retrieveView(String str) {
        return ViewStorage.DefaultImpls.retrieveView(this, str);
    }

    @Override // com.superwall.sdk.paywall.view.ViewStorage
    public void storeView(String str, View view) {
        ViewStorage.DefaultImpls.storeView(this, str, view);
    }

    @Override // com.superwall.sdk.paywall.view.ViewStorage
    public ConcurrentHashMap<String, View> getViews() {
        return this.views;
    }
}
