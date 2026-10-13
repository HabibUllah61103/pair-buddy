package com.superwall.sdk.store.transactions.notifications;

import android.content.Context;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.work.WorkManager;
import com.superwall.sdk.dependencies.DeviceHelperFactory;
import com.superwall.sdk.models.paywall.LocalNotification;
import expo.modules.notifications.service.NotificationsService;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: NotificationScheduler.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.store.transactions.notifications.NotificationScheduler$Companion$scheduleNotifications$1", f = "NotificationScheduler.kt", i = {0}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE}, m = "invokeSuspend", n = {NotificationsService.NOTIFICATION_KEY}, s = {"L$4"})
final class NotificationScheduler$Companion$scheduleNotifications$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $cancelExisting;
    final /* synthetic */ Context $context;
    final /* synthetic */ DeviceHelperFactory $factory;
    final /* synthetic */ List<LocalNotification> $notifications;
    final /* synthetic */ WorkManager $workManager;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    boolean Z$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NotificationScheduler$Companion$scheduleNotifications$1(List<LocalNotification> list, boolean z, Context context, DeviceHelperFactory deviceHelperFactory, WorkManager workManager, Continuation<? super NotificationScheduler$Companion$scheduleNotifications$1> continuation) {
        super(2, continuation);
        this.$notifications = list;
        this.$cancelExisting = z;
        this.$context = context;
        this.$factory = deviceHelperFactory;
        this.$workManager = workManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NotificationScheduler$Companion$scheduleNotifications$1(this.$notifications, this.$cancelExisting, this.$context, this.$factory, this.$workManager, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((NotificationScheduler$Companion$scheduleNotifications$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0050  */
    /* JADX WARN: Code duplicated, block: B:13:0x0058  */
    /* JADX WARN: Code duplicated, block: B:14:0x0062  */
    /* JADX WARN: Code duplicated, block: B:16:0x007c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x00c3 A[LOOP:0: B:21:0x00c1->B:22:0x00c3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:28:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:29:0x010b  */
    /* JADX WARN: Code duplicated, block: B:31:0x013a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0058 -> B:20:0x0086). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x007a -> B:17:0x007d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x0050
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instruction units count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.store.transactions.notifications.NotificationScheduler$Companion$scheduleNotifications$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
