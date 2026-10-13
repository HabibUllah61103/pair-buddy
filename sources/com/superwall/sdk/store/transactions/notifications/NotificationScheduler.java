package com.superwall.sdk.store.transactions.notifications;

import android.content.Context;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import com.google.common.util.concurrent.ListenableFuture;
import com.superwall.sdk.dependencies.DeviceHelperFactory;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.models.paywall.LocalNotification;
import expo.modules.notifications.service.NotificationsService;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.guava.ListenableFutureKt;

/* JADX INFO: compiled from: NotificationScheduler.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler;", "", "<init>", "()V", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NotificationScheduler {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG_PREFIX = "superwall_notification_";

    /* JADX INFO: compiled from: NotificationScheduler.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nJ\u001a\u0010\u000b\u001a\u00020\f*\u00020\n2\u0006\u0010\b\u001a\u00020\u0005H\u0086@¢\u0006\u0002\u0010\rJ.\u0010\u000e\u001a\u00020\u00072\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u0014\u001a\u00020\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion;", "", "<init>", "()V", "TAG_PREFIX", "", "cancelNotificationById", "", "id", "context", "Landroid/content/Context;", "existsWithTag", "", "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "scheduleNotifications", NotificationsService.NOTIFICATIONS_KEY, "", "Lcom/superwall/sdk/models/paywall/LocalNotification;", "factory", "Lcom/superwall/sdk/dependencies/DeviceHelperFactory;", "cancelExisting", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void cancelNotificationById(String id, Context context) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(context, "context");
            WorkManager workManager = WorkManager.getInstance(context);
            Intrinsics.checkNotNullExpressionValue(workManager, "getInstance(...)");
            workManager.cancelAllWorkByTag(id);
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallView, "Cancelled pending notification with tag: " + id, null, null, 24, null);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        public final Object existsWithTag(Context context, String str, Continuation<? super Boolean> continuation) throws Throwable {
            NotificationScheduler$Companion$existsWithTag$1 notificationScheduler$Companion$existsWithTag$1;
            if (continuation instanceof NotificationScheduler$Companion$existsWithTag$1) {
                notificationScheduler$Companion$existsWithTag$1 = (NotificationScheduler$Companion$existsWithTag$1) continuation;
                if ((notificationScheduler$Companion$existsWithTag$1.label & Integer.MIN_VALUE) != 0) {
                    notificationScheduler$Companion$existsWithTag$1.label -= Integer.MIN_VALUE;
                } else {
                    notificationScheduler$Companion$existsWithTag$1 = new NotificationScheduler$Companion$existsWithTag$1(this, continuation);
                }
            } else {
                notificationScheduler$Companion$existsWithTag$1 = new NotificationScheduler$Companion$existsWithTag$1(this, continuation);
            }
            Object objAwait = notificationScheduler$Companion$existsWithTag$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = notificationScheduler$Companion$existsWithTag$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(objAwait);
                WorkManager workManager = WorkManager.getInstance(context);
                Intrinsics.checkNotNullExpressionValue(workManager, "getInstance(...)");
                ListenableFuture<List<WorkInfo>> workInfosByTag = workManager.getWorkInfosByTag(str);
                Intrinsics.checkNotNullExpressionValue(workInfosByTag, "getWorkInfosByTag(...)");
                notificationScheduler$Companion$existsWithTag$1.label = 1;
                objAwait = ListenableFutureKt.await(workInfosByTag, notificationScheduler$Companion$existsWithTag$1);
                if (objAwait == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objAwait);
            }
            Intrinsics.checkNotNullExpressionValue(objAwait, "await(...)");
            return Boxing.boxBoolean(!((Collection) objAwait).isEmpty());
        }

        public static /* synthetic */ void scheduleNotifications$default(Companion companion, List list, DeviceHelperFactory deviceHelperFactory, Context context, boolean z, int i, Object obj) {
            if ((i & 8) != 0) {
                z = false;
            }
            companion.scheduleNotifications(list, deviceHelperFactory, context, z);
        }

        public final void scheduleNotifications(List<LocalNotification> notifications, DeviceHelperFactory factory, Context context, boolean cancelExisting) {
            Intrinsics.checkNotNullParameter(notifications, "notifications");
            Intrinsics.checkNotNullParameter(factory, "factory");
            Intrinsics.checkNotNullParameter(context, "context");
            WorkManager workManager = WorkManager.getInstance(context);
            Intrinsics.checkNotNullExpressionValue(workManager, "getInstance(...)");
            BuildersKt__Builders_commonKt.launch$default(new IOScope(null, 1, null), null, null, new NotificationScheduler$Companion$scheduleNotifications$1(notifications, cancelExisting, context, factory, workManager, null), 3, null);
        }
    }
}
