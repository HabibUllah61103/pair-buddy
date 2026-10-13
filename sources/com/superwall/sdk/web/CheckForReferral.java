package com.superwall.sdk.web;

import android.net.Uri;
import com.google.android.gms.common.internal.ImagesContract;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: DeepLinkReferrer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H¦@¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\b\u001a\u00020\tH&¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/web/CheckForReferral;", "", "checkForReferral", "Lkotlin/Result;", "", "checkForReferral-IoAF18A", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleDeepLink", ImagesContract.URL, "Landroid/net/Uri;", "handleDeepLink-IoAF18A", "(Landroid/net/Uri;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface CheckForReferral {
    /* JADX INFO: renamed from: checkForReferral-IoAF18A, reason: not valid java name */
    Object mo10806checkForReferralIoAF18A(Continuation<? super Result<String>> continuation);

    /* JADX INFO: renamed from: handleDeepLink-IoAF18A, reason: not valid java name */
    Object mo10807handleDeepLinkIoAF18A(Uri url);
}
