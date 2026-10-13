package com.superwall.sdk.store.transactions.notifications;

import android.content.Context;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.superwall.sdk.paywall.view.SuperwallPaywallActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NotificationWorker.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/store/transactions/notifications/NotificationWorker;", "Landroidx/work/Worker;", "context", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "getContext", "()Landroid/content/Context;", "doWork", "Landroidx/work/ListenableWorker$Result;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NotificationWorker extends Worker {
    private final Context context;

    public final Context getContext() {
        return this.context;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationWorker(Context context, WorkerParameters workerParams) {
        super(context, workerParams);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(workerParams, "workerParams");
        this.context = context;
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        NotificationCompat.Builder subText;
        int i = getInputData().getInt("id", 0);
        String string = getInputData().getString("title");
        String string2 = getInputData().getString("body");
        NotificationCompat.Builder contentTitle = new NotificationCompat.Builder(getApplicationContext(), SuperwallPaywallActivity.NOTIFICATION_CHANNEL_ID).setSmallIcon(this.context.getApplicationInfo().icon).setContentTitle(string);
        String string3 = getInputData().getString("subtitle");
        if (string3 == null || (subText = contentTitle.setSubText(string3)) == null) {
            Intrinsics.checkNotNull(contentTitle);
        } else {
            contentTitle = subText;
        }
        NotificationCompat.Builder priority = contentTitle.setContentText(string2).setPriority(1);
        Intrinsics.checkNotNullExpressionValue(priority, "setPriority(...)");
        NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(getApplicationContext());
        if (ActivityCompat.checkSelfPermission(this.context, "android.permission.POST_NOTIFICATIONS") != 0) {
            ListenableWorker.Result resultFailure = ListenableWorker.Result.failure();
            Intrinsics.checkNotNullExpressionValue(resultFailure, "failure(...)");
            return resultFailure;
        }
        notificationManagerCompatFrom.notify(i, priority.build());
        ListenableWorker.Result resultSuccess = ListenableWorker.Result.success();
        Intrinsics.checkNotNullExpressionValue(resultSuccess, "success(...)");
        return resultSuccess;
    }
}
