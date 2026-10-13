package expo.modules.notifications.notifications.handling;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.tracing.Trace;
import com.facebook.react.bridge.BaseJavaModule;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.events.BasicEventListener;
import expo.modules.kotlin.events.EventEmitter;
import expo.modules.kotlin.events.EventName;
import expo.modules.kotlin.functions.AsyncFunctionWithPromiseComponent;
import expo.modules.kotlin.modules.Module;
import expo.modules.kotlin.modules.ModuleDefinitionBuilder;
import expo.modules.kotlin.modules.ModuleDefinitionData;
import expo.modules.kotlin.types.AnyType;
import expo.modules.kotlin.types.AnyTypeProvider;
import expo.modules.kotlin.types.LazyKType;
import expo.modules.kotlin.types.TypeConverterProvider;
import expo.modules.notifications.NotificationWasAlreadyHandledException;
import expo.modules.notifications.notifications.NotificationManager;
import expo.modules.notifications.notifications.interfaces.INotificationContent;
import expo.modules.notifications.notifications.interfaces.NotificationListener;
import expo.modules.notifications.notifications.model.Notification;
import expo.modules.notifications.notifications.model.NotificationBehaviorRecord;
import expo.modules.notifications.notifications.model.NotificationResponse;
import expo.modules.notifications.notifications.model.RemoteNotificationContent;
import expo.modules.notifications.service.NotificationsService;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: NotificationsHandler.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u000e\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lexpo/modules/notifications/notifications/handling/NotificationsHandler;", "Lexpo/modules/kotlin/modules/Module;", "Lexpo/modules/notifications/notifications/interfaces/NotificationListener;", "<init>", "()V", "notificationsHandlerThread", "Landroid/os/HandlerThread;", "handler", "Landroid/os/Handler;", "tasksMap", "", "", "Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;", "definition", "Lexpo/modules/kotlin/modules/ModuleDefinitionData;", "handleNotificationAsync", "", NotificationsService.IDENTIFIER_KEY, "behavior", "Lexpo/modules/notifications/notifications/model/NotificationBehaviorRecord;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lexpo/modules/kotlin/Promise;", "onNotificationReceived", NotificationsService.NOTIFICATION_KEY, "Lexpo/modules/notifications/notifications/model/Notification;", "onTaskFinished", "task", "expo-notifications_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class NotificationsHandler extends Module implements NotificationListener {
    private Handler handler;
    private HandlerThread notificationsHandlerThread;
    private final Map<String, SingleNotificationHandlerTask> tasksMap = new LinkedHashMap();

    @Override // expo.modules.notifications.notifications.interfaces.NotificationListener
    public void onNotificationResponseIntentReceived(Bundle bundle) {
        NotificationListener.DefaultImpls.onNotificationResponseIntentReceived(this, bundle);
    }

    @Override // expo.modules.notifications.notifications.interfaces.NotificationListener
    public boolean onNotificationResponseReceived(NotificationResponse notificationResponse) {
        return NotificationListener.DefaultImpls.onNotificationResponseReceived(this, notificationResponse);
    }

    @Override // expo.modules.notifications.notifications.interfaces.NotificationListener
    public void onNotificationsDropped() {
        NotificationListener.DefaultImpls.onNotificationsDropped(this);
    }

    @Override // expo.modules.kotlin.modules.Module
    public ModuleDefinitionData definition() {
        NotificationsHandler notificationsHandler = this;
        Trace.beginSection("[ExpoModulesCore] " + (notificationsHandler.getClass() + ".ModuleDefinition"));
        try {
            final ModuleDefinitionBuilder moduleDefinitionBuilder = new ModuleDefinitionBuilder(notificationsHandler);
            moduleDefinitionBuilder.Name("ExpoNotificationsHandlerModule");
            moduleDefinitionBuilder.Events("onHandleNotification", "onHandleNotificationTimeout");
            moduleDefinitionBuilder.getEventListeners().put(EventName.MODULE_CREATE, new BasicEventListener(EventName.MODULE_CREATE, new Function0<Unit>() { // from class: expo.modules.notifications.notifications.handling.NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    NotificationManager.INSTANCE.addListener(this.this$0);
                    this.this$0.notificationsHandlerThread = new HandlerThread("NotificationsHandlerThread - " + moduleDefinitionBuilder.getClass());
                    HandlerThread handlerThread = this.this$0.notificationsHandlerThread;
                    HandlerThread handlerThread2 = null;
                    if (handlerThread == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("notificationsHandlerThread");
                        handlerThread = null;
                    }
                    handlerThread.start();
                    NotificationsHandler notificationsHandler2 = this.this$0;
                    HandlerThread handlerThread3 = this.this$0.notificationsHandlerThread;
                    if (handlerThread3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("notificationsHandlerThread");
                    } else {
                        handlerThread2 = handlerThread3;
                    }
                    notificationsHandler2.handler = new Handler(handlerThread2.getLooper());
                }
            }));
            moduleDefinitionBuilder.getEventListeners().put(EventName.MODULE_DESTROY, new BasicEventListener(EventName.MODULE_DESTROY, new Function0<Unit>() { // from class: expo.modules.notifications.notifications.handling.NotificationsHandler$definition$lambda$3$$inlined$OnDestroy$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    NotificationManager.INSTANCE.removeListener(this.this$0);
                    Iterator it = this.this$0.tasksMap.values().iterator();
                    while (it.hasNext()) {
                        ((SingleNotificationHandlerTask) it.next()).stop();
                    }
                    HandlerThread handlerThread = this.this$0.notificationsHandlerThread;
                    if (handlerThread == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("notificationsHandlerThread");
                        handlerThread = null;
                    }
                    handlerThread.quit();
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder2 = moduleDefinitionBuilder;
            TypeConverterProvider converters = moduleDefinitionBuilder2.getConverters();
            AnyType[] anyTypeArr = new AnyType[2];
            AnyType anyType = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType == null) {
                anyType = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.notifications.notifications.handling.NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters);
            }
            anyTypeArr[0] = anyType;
            AnyType anyType2 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(NotificationBehaviorRecord.class), false));
            if (anyType2 == null) {
                anyType2 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(NotificationBehaviorRecord.class), false, new Function0<KType>() { // from class: expo.modules.notifications.notifications.handling.NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(NotificationBehaviorRecord.class);
                    }
                }), converters);
            }
            anyTypeArr[1] = anyType2;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent = new AsyncFunctionWithPromiseComponent("handleNotificationAsync", anyTypeArr, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.notifications.notifications.handling.NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, Promise promise) throws NotificationWasAlreadyHandledException {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    Object obj = objArr[0];
                    NotificationBehaviorRecord notificationBehaviorRecord = (NotificationBehaviorRecord) objArr[1];
                    this.$receiver$inlined.handleNotificationAsync((String) obj, notificationBehaviorRecord, promise);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) throws NotificationWasAlreadyHandledException {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder2.getAsyncFunctions().put("handleNotificationAsync", asyncFunctionWithPromiseComponent);
            return moduleDefinitionBuilder.buildModule();
        } finally {
            Trace.endSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleNotificationAsync(String identifier, NotificationBehaviorRecord behavior, Promise promise) throws NotificationWasAlreadyHandledException {
        SingleNotificationHandlerTask singleNotificationHandlerTask = this.tasksMap.get(identifier);
        if (singleNotificationHandlerTask == null) {
            throw new NotificationWasAlreadyHandledException(identifier);
        }
        singleNotificationHandlerTask.processNotificationWithBehavior(behavior, promise);
    }

    @Override // expo.modules.notifications.notifications.interfaces.NotificationListener
    public void onNotificationReceived(Notification notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Context reactContext = getAppContext().getReactContext();
        if (reactContext == null) {
            return;
        }
        INotificationContent content = notification.getNotificationRequest().getContent();
        if ((content instanceof RemoteNotificationContent) && ((RemoteNotificationContent) content).getIsDataOnly()) {
            return;
        }
        EventEmitter eventEmitter = getAppContext().eventEmitter(this);
        Handler handler = this.handler;
        if (handler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handler");
            handler = null;
        }
        SingleNotificationHandlerTask singleNotificationHandlerTask = new SingleNotificationHandlerTask(reactContext, eventEmitter, handler, notification, this);
        this.tasksMap.put(singleNotificationHandlerTask.getIdentifier(), singleNotificationHandlerTask);
        singleNotificationHandlerTask.start();
    }

    public final void onTaskFinished(SingleNotificationHandlerTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
        this.tasksMap.remove(task.getIdentifier());
    }
}
