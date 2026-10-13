package expo.modules.notifications.notifications.channels;

import android.app.NotificationChannel;
import android.os.Bundle;
import androidx.tracing.Trace;
import expo.modules.core.arguments.ReadableArguments;
import expo.modules.core.logging.Logger;
import expo.modules.kotlin.ModuleRegistry;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.functions.AsyncFunctionWithPromiseComponent;
import expo.modules.kotlin.functions.BoolAsyncFunctionComponent;
import expo.modules.kotlin.functions.DoubleAsyncFunctionComponent;
import expo.modules.kotlin.functions.FloatAsyncFunctionComponent;
import expo.modules.kotlin.functions.IntAsyncFunctionComponent;
import expo.modules.kotlin.functions.StringAsyncFunctionComponent;
import expo.modules.kotlin.functions.UntypedAsyncFunctionComponent;
import expo.modules.kotlin.modules.Module;
import expo.modules.kotlin.modules.ModuleDefinitionBuilder;
import expo.modules.kotlin.modules.ModuleDefinitionData;
import expo.modules.kotlin.types.AnyType;
import expo.modules.kotlin.types.AnyTypeProvider;
import expo.modules.kotlin.types.LazyKType;
import expo.modules.kotlin.types.TypeConverterProvider;
import expo.modules.notifications.notifications.channels.managers.NotificationsChannelManager;
import expo.modules.notifications.notifications.channels.serializers.NotificationsChannelSerializer;
import expo.modules.notifications.notifications.enums.NotificationImportance;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: NotificationChannelManagerModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015H\u0003R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\n\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lexpo/modules/notifications/notifications/channels/NotificationChannelManagerModule;", "Lexpo/modules/kotlin/modules/Module;", "Lexpo/modules/notifications/notifications/channels/NotificationsChannelProviderAccessor;", "<init>", "()V", "channelManager", "Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;", "getChannelManager", "()Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelManager;", "channelManager$delegate", "Lkotlin/Lazy;", "channelSerializer", "Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;", "getChannelSerializer", "()Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelSerializer;", "channelSerializer$delegate", "definition", "Lexpo/modules/kotlin/modules/ModuleDefinitionData;", "getNameFromOptions", "", "channelOptions", "Lexpo/modules/core/arguments/ReadableArguments;", "getImportanceFromOptions", "", "expo-notifications_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class NotificationChannelManagerModule extends Module implements NotificationsChannelProviderAccessor {

    /* JADX INFO: renamed from: channelManager$delegate, reason: from kotlin metadata */
    private final Lazy channelManager = LazyKt.lazy(new Function0() { // from class: expo.modules.notifications.notifications.channels.NotificationChannelManagerModule$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return NotificationChannelManagerModule.channelManager_delegate$lambda$0(this.f$0);
        }
    });

    /* JADX INFO: renamed from: channelSerializer$delegate, reason: from kotlin metadata */
    private final Lazy channelSerializer = LazyKt.lazy(new Function0() { // from class: expo.modules.notifications.notifications.channels.NotificationChannelManagerModule$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return NotificationChannelManagerModule.channelSerializer_delegate$lambda$1(this.f$0);
        }
    });

    @Override // expo.modules.notifications.notifications.channels.NotificationsChannelProviderAccessor
    public NotificationsChannelsProvider getChannelProvider(ModuleRegistry moduleRegistry) {
        return NotificationsChannelProviderAccessor.DefaultImpls.getChannelProvider(this, moduleRegistry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NotificationsChannelManager getChannelManager() {
        return (NotificationsChannelManager) this.channelManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NotificationsChannelManager channelManager_delegate$lambda$0(NotificationChannelManagerModule notificationChannelManagerModule) {
        return notificationChannelManagerModule.getChannelProvider(notificationChannelManagerModule.getAppContext().getRegistry()).getChannelManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NotificationsChannelSerializer getChannelSerializer() {
        return (NotificationsChannelSerializer) this.channelSerializer.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NotificationsChannelSerializer channelSerializer_delegate$lambda$1(NotificationChannelManagerModule notificationChannelManagerModule) {
        return notificationChannelManagerModule.getChannelProvider(notificationChannelManagerModule.getAppContext().getRegistry()).getChannelSerializer();
    }

    @Override // expo.modules.kotlin.modules.Module
    public ModuleDefinitionData definition() {
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent2;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent3;
        NotificationChannelManagerModule notificationChannelManagerModule = this;
        Trace.beginSection("[ExpoModulesCore] " + (notificationChannelManagerModule.getClass() + ".ModuleDefinition"));
        try {
            ModuleDefinitionBuilder moduleDefinitionBuilder = new ModuleDefinitionBuilder(notificationChannelManagerModule);
            moduleDefinitionBuilder.Name("ExpoNotificationChannelManager");
            ModuleDefinitionBuilder moduleDefinitionBuilder2 = moduleDefinitionBuilder;
            AnyType[] anyTypeArr = new AnyType[0];
            Function1<Object[], List<? extends Bundle>> function1 = new Function1<Object[], List<? extends Bundle>>() { // from class: expo.modules.notifications.notifications.channels.NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$1
                @Override // kotlin.jvm.functions.Function1
                public final List<? extends Bundle> invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    List<NotificationChannel> notificationChannels = this.this$0.getChannelManager().getNotificationChannels();
                    Intrinsics.checkNotNullExpressionValue(notificationChannels, "getNotificationChannels(...)");
                    List<NotificationChannel> list = notificationChannels;
                    NotificationsChannelSerializer channelSerializer = this.this$0.getChannelSerializer();
                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator<T> it2 = list.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(channelSerializer.toBundle((NotificationChannel) it2.next()));
                    }
                    return arrayList;
                }
            };
            if (!Intrinsics.areEqual(List.class, Integer.TYPE)) {
                if (!Intrinsics.areEqual(List.class, Boolean.TYPE)) {
                    if (!Intrinsics.areEqual(List.class, Double.TYPE)) {
                        if (!Intrinsics.areEqual(List.class, Float.TYPE)) {
                            if (Intrinsics.areEqual(List.class, String.class)) {
                                untypedAsyncFunctionComponent = new StringAsyncFunctionComponent("getNotificationChannelsAsync", anyTypeArr, function1);
                            } else {
                                untypedAsyncFunctionComponent = new UntypedAsyncFunctionComponent("getNotificationChannelsAsync", anyTypeArr, function1);
                            }
                        } else {
                            untypedAsyncFunctionComponent = new FloatAsyncFunctionComponent("getNotificationChannelsAsync", anyTypeArr, function1);
                        }
                    } else {
                        untypedAsyncFunctionComponent = new DoubleAsyncFunctionComponent("getNotificationChannelsAsync", anyTypeArr, function1);
                    }
                } else {
                    untypedAsyncFunctionComponent = new BoolAsyncFunctionComponent("getNotificationChannelsAsync", anyTypeArr, function1);
                }
            } else {
                untypedAsyncFunctionComponent = new IntAsyncFunctionComponent("getNotificationChannelsAsync", anyTypeArr, function1);
            }
            moduleDefinitionBuilder2.getAsyncFunctions().put("getNotificationChannelsAsync", untypedAsyncFunctionComponent);
            ModuleDefinitionBuilder moduleDefinitionBuilder3 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(String.class, Promise.class)) {
                untypedAsyncFunctionComponent2 = new AsyncFunctionWithPromiseComponent("getNotificationChannelAsync", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.notifications.notifications.channels.NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$2
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        NotificationChannel notificationChannel = this.this$0.getChannelManager().getNotificationChannel((String) promise);
                        if (notificationChannel != null) {
                            this.this$0.getChannelSerializer().toBundle(notificationChannel);
                        }
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                TypeConverterProvider converters = moduleDefinitionBuilder3.getConverters();
                AnyType[] anyTypeArr2 = new AnyType[1];
                AnyType anyType = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
                if (anyType == null) {
                    anyType = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.notifications.notifications.channels.NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$3
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(String.class);
                        }
                    }), converters);
                }
                anyTypeArr2[0] = anyType;
                untypedAsyncFunctionComponent2 = new UntypedAsyncFunctionComponent("getNotificationChannelAsync", anyTypeArr2, new Function1<Object[], Bundle>() { // from class: expo.modules.notifications.notifications.channels.NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$4
                    @Override // kotlin.jvm.functions.Function1
                    public final Bundle invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        NotificationChannel notificationChannel = this.this$0.getChannelManager().getNotificationChannel((String) objArr[0]);
                        if (notificationChannel != null) {
                            return this.this$0.getChannelSerializer().toBundle(notificationChannel);
                        }
                        return null;
                    }
                });
            }
            moduleDefinitionBuilder3.getAsyncFunctions().put("getNotificationChannelAsync", untypedAsyncFunctionComponent2);
            ModuleDefinitionBuilder moduleDefinitionBuilder4 = moduleDefinitionBuilder;
            TypeConverterProvider converters2 = moduleDefinitionBuilder4.getConverters();
            AnyType[] anyTypeArr3 = new AnyType[2];
            AnyType anyType2 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType2 == null) {
                anyType2 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.notifications.notifications.channels.NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$5
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters2);
            }
            anyTypeArr3[0] = anyType2;
            AnyType anyType3 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ReadableArguments.class), false));
            if (anyType3 == null) {
                anyType3 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ReadableArguments.class), false, new Function0<KType>() { // from class: expo.modules.notifications.notifications.channels.NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$6
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(ReadableArguments.class);
                    }
                }), converters2);
            }
            anyTypeArr3[1] = anyType3;
            moduleDefinitionBuilder4.getAsyncFunctions().put("setNotificationChannelAsync", new UntypedAsyncFunctionComponent("setNotificationChannelAsync", anyTypeArr3, new Function1<Object[], Bundle>() { // from class: expo.modules.notifications.notifications.channels.NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$7
                @Override // kotlin.jvm.functions.Function1
                public final Bundle invoke(Object[] objArr) {
                    Logger jsLogger;
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Object obj = objArr[0];
                    ReadableArguments readableArguments = (ReadableArguments) objArr[1];
                    String str = (String) obj;
                    if (!this.this$0.getChannelManager().customSoundExists(readableArguments) && (jsLogger = this.this$0.getAppContext().getJsLogger()) != null) {
                        Logger.error$default(jsLogger, "expo-notifications: Custom sound '" + readableArguments.getString("sound", null) + "' not found in native app. Make sure the sound file (e.g. 'custom_sound.wav') is included in the expo-notifications config plugin sounds array in app config.", null, 2, null);
                    }
                    NotificationChannel notificationChannelCreateNotificationChannel = this.this$0.getChannelManager().createNotificationChannel(str, this.this$0.getNameFromOptions(readableArguments), this.this$0.getImportanceFromOptions(readableArguments), readableArguments);
                    NotificationsChannelSerializer channelSerializer = this.this$0.getChannelSerializer();
                    Intrinsics.checkNotNull(notificationChannelCreateNotificationChannel);
                    return channelSerializer.toBundle(notificationChannelCreateNotificationChannel);
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder5 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(String.class, Promise.class)) {
                untypedAsyncFunctionComponent3 = new AsyncFunctionWithPromiseComponent("deleteNotificationChannelAsync", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.notifications.notifications.channels.NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$8
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        this.this$0.getChannelManager().deleteNotificationChannel((String) promise);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                TypeConverterProvider converters3 = moduleDefinitionBuilder5.getConverters();
                AnyType[] anyTypeArr4 = new AnyType[1];
                AnyType anyType4 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
                if (anyType4 == null) {
                    anyType4 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.notifications.notifications.channels.NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$9
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(String.class);
                        }
                    }), converters3);
                }
                anyTypeArr4[0] = anyType4;
                Function1<Object[], Unit> function2 = new Function1<Object[], Unit>() { // from class: expo.modules.notifications.notifications.channels.NotificationChannelManagerModule$definition$lambda$7$$inlined$AsyncFunction$10
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        this.this$0.getChannelManager().deleteNotificationChannel((String) objArr[0]);
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent3 = new StringAsyncFunctionComponent("deleteNotificationChannelAsync", anyTypeArr4, function2);
                                } else {
                                    untypedAsyncFunctionComponent3 = new UntypedAsyncFunctionComponent("deleteNotificationChannelAsync", anyTypeArr4, function2);
                                }
                            } else {
                                untypedAsyncFunctionComponent3 = new FloatAsyncFunctionComponent("deleteNotificationChannelAsync", anyTypeArr4, function2);
                            }
                        } else {
                            untypedAsyncFunctionComponent3 = new DoubleAsyncFunctionComponent("deleteNotificationChannelAsync", anyTypeArr4, function2);
                        }
                    } else {
                        untypedAsyncFunctionComponent3 = new BoolAsyncFunctionComponent("deleteNotificationChannelAsync", anyTypeArr4, function2);
                    }
                } else {
                    untypedAsyncFunctionComponent3 = new IntAsyncFunctionComponent("deleteNotificationChannelAsync", anyTypeArr4, function2);
                }
            }
            moduleDefinitionBuilder5.getAsyncFunctions().put("deleteNotificationChannelAsync", untypedAsyncFunctionComponent3);
            return moduleDefinitionBuilder.buildModule();
        } finally {
            Trace.endSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CharSequence getNameFromOptions(ReadableArguments channelOptions) {
        String string = channelOptions.getString("name");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getImportanceFromOptions(ReadableArguments channelOptions) {
        return ((NotificationImportance) Objects.requireNonNull(NotificationImportance.fromEnumValue(channelOptions.getInt("importance", NotificationImportance.DEFAULT.getEnumValue())))).getNativeValue();
    }
}
