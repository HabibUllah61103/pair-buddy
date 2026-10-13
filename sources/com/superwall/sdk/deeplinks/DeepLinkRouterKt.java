package com.superwall.sdk.deeplinks;

import android.net.Uri;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DeepLinkRouter.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"redeemableCode", "Lkotlin/Result;", "", "Landroid/net/Uri;", "getRedeemableCode", "(Landroid/net/Uri;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class DeepLinkRouterKt {
    public static final Object getRedeemableCode(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Result.Companion companion = Result.INSTANCE;
        Object objM11241constructorimpl = Result.m11241constructorimpl(ResultKt.createFailure(new UnsupportedOperationException("Link not valid for redemption")));
        String host = uri.getHost();
        if (host != null && StringsKt.contains$default((CharSequence) host, (CharSequence) "superwall", false, 2, (Object) null) && StringsKt.equals$default(uri.getLastPathSegment(), "redeem", false, 2, null)) {
            String queryParameter = uri.getQueryParameter("code");
            if (queryParameter == null) {
                queryParameter = uri.getQueryParameter("codes");
            }
            if (queryParameter != null) {
                Result.Companion companion2 = Result.INSTANCE;
                return Result.m11241constructorimpl(queryParameter);
            }
        }
        return objM11241constructorimpl;
    }
}
