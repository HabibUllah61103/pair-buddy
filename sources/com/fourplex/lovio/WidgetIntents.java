package com.fourplex.lovio;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: WidgetSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b¨\u0006\f"}, d2 = {"Lcom/fourplex/lovio/WidgetIntents;", "", "<init>", "()V", "createDeepLinkPendingIntent", "Landroid/app/PendingIntent;", "context", "Landroid/content/Context;", "route", "", "requestCode", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WidgetIntents {
    public static final WidgetIntents INSTANCE = new WidgetIntents();

    private WidgetIntents() {
    }

    public final PendingIntent createDeepLinkPendingIntent(Context context, String route, int requestCode) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(route, "route");
        if (!StringsKt.startsWith$default(route, "/", false, 2, (Object) null)) {
            route = "/" + route;
        }
        Intent intent = new Intent(context, (Class<?>) MainActivity.class);
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse("datemate-ai-v2://" + route));
        intent.setFlags(335544320);
        PendingIntent activity = PendingIntent.getActivity(context, requestCode, intent, 201326592);
        Intrinsics.checkNotNullExpressionValue(activity, "getActivity(...)");
        return activity;
    }
}
