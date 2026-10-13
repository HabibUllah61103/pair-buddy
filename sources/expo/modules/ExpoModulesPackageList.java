package expo.modules;

import expo.modules.adapters.react.ReactAdapterPackage;
import expo.modules.application.ApplicationModule;
import expo.modules.asset.AssetModule;
import expo.modules.blur.BlurModule;
import expo.modules.clipboard.ClipboardModule;
import expo.modules.constants.ConstantsModule;
import expo.modules.constants.ConstantsService;
import expo.modules.core.BasePackage;
import expo.modules.core.interfaces.Package;
import expo.modules.device.DeviceModule;
import expo.modules.fetch.ExpoFetchModule;
import expo.modules.filesystem.FileSystemModule;
import expo.modules.filesystem.legacy.FileSystemLegacyModule;
import expo.modules.font.FontLoaderModule;
import expo.modules.font.FontUtilsModule;
import expo.modules.image.ExpoImageModule;
import expo.modules.imageloader.ImageLoaderService;
import expo.modules.imagemanipulator.ImageManipulatorModule;
import expo.modules.imagepicker.ImagePickerModule;
import expo.modules.keepawake.KeepAwakeModule;
import expo.modules.kotlin.ModulesProvider;
import expo.modules.kotlin.edgeToEdge.EdgeToEdgePackage;
import expo.modules.kotlin.modules.Module;
import expo.modules.kotlin.services.Service;
import expo.modules.lineargradient.LinearGradientModule;
import expo.modules.linking.ExpoLinkingModule;
import expo.modules.linking.ExpoLinkingPackage;
import expo.modules.localization.LocalizationModule;
import expo.modules.localization.LocalizationPackage;
import expo.modules.location.LocationModule;
import expo.modules.logbox.ExpoLogBoxPackage;
import expo.modules.navigationbar.NavigationBarModule;
import expo.modules.navigationbar.NavigationBarPackage;
import expo.modules.notifications.NotificationsPackage;
import expo.modules.notifications.badge.BadgeModule;
import expo.modules.notifications.notifications.background.ExpoBackgroundNotificationTasksModule;
import expo.modules.notifications.notifications.categories.ExpoNotificationCategoriesModule;
import expo.modules.notifications.notifications.channels.AndroidXNotificationsChannelsProvider;
import expo.modules.notifications.notifications.channels.NotificationChannelGroupManagerModule;
import expo.modules.notifications.notifications.channels.NotificationChannelManagerModule;
import expo.modules.notifications.notifications.emitting.NotificationsEmitter;
import expo.modules.notifications.notifications.handling.NotificationsHandler;
import expo.modules.notifications.notifications.presentation.ExpoNotificationPresentationModule;
import expo.modules.notifications.notifications.scheduling.NotificationScheduler;
import expo.modules.notifications.permissions.NotificationPermissionsModule;
import expo.modules.notifications.serverregistration.ServerRegistrationModule;
import expo.modules.notifications.tokens.PushTokenModule;
import expo.modules.notifications.topics.TopicSubscriptionModule;
import expo.modules.router.ExpoRouterModule;
import expo.modules.securestore.SecureStoreModule;
import expo.modules.splashscreen.SplashScreenModule;
import expo.modules.storereview.StoreReviewModule;
import expo.modules.superwallexpo.SuperwallExpoModule;
import expo.modules.taskManager.TaskManagerModule;
import expo.modules.taskManager.TaskManagerPackage;
import expo.modules.ui.ExpoUIModule;
import expo.modules.video.VideoModule;
import expo.modules.webview.DomWebViewModule;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: ExpoModulesPackageList.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0018\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0016J\u0016\u0010\t\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\u00060\nH\u0016¨\u0006\r"}, d2 = {"Lexpo/modules/ExpoModulesPackageList;", "Lexpo/modules/kotlin/ModulesProvider;", "<init>", "()V", "getModulesMap", "", "Ljava/lang/Class;", "Lexpo/modules/kotlin/modules/Module;", "", "getServices", "", "Lexpo/modules/kotlin/services/Service;", "Companion", "expo_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ExpoModulesPackageList implements ModulesProvider {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<Package> packagesList = CollectionsKt.listOf((Object[]) new Package[]{new ExpoLogBoxPackage(), new ExpoLinkingPackage(), new LocalizationPackage(), new ReactAdapterPackage(), new BasePackage(), new EdgeToEdgePackage(), new NavigationBarPackage(), new NotificationsPackage(), new TaskManagerPackage()});
    private static final Map<Class<? extends Module>, String> modulesMap = MapsKt.mapOf(TuplesKt.to(DomWebViewModule.class, null), TuplesKt.to(ExpoUIModule.class, null), TuplesKt.to(ExpoFetchModule.class, null), TuplesKt.to(ApplicationModule.class, null), TuplesKt.to(AssetModule.class, null), TuplesKt.to(BlurModule.class, null), TuplesKt.to(ClipboardModule.class, null), TuplesKt.to(ConstantsModule.class, null), TuplesKt.to(DeviceModule.class, null), TuplesKt.to(FileSystemModule.class, null), TuplesKt.to(FileSystemLegacyModule.class, null), TuplesKt.to(FontLoaderModule.class, null), TuplesKt.to(FontUtilsModule.class, null), TuplesKt.to(ExpoImageModule.class, null), TuplesKt.to(ImageManipulatorModule.class, null), TuplesKt.to(ImagePickerModule.class, null), TuplesKt.to(KeepAwakeModule.class, null), TuplesKt.to(LinearGradientModule.class, null), TuplesKt.to(ExpoLinkingModule.class, null), TuplesKt.to(LocalizationModule.class, null), TuplesKt.to(LocationModule.class, null), TuplesKt.to(NavigationBarModule.class, null), TuplesKt.to(BadgeModule.class, null), TuplesKt.to(ExpoBackgroundNotificationTasksModule.class, null), TuplesKt.to(ExpoNotificationCategoriesModule.class, null), TuplesKt.to(NotificationChannelGroupManagerModule.class, null), TuplesKt.to(NotificationChannelManagerModule.class, null), TuplesKt.to(NotificationsEmitter.class, null), TuplesKt.to(NotificationsHandler.class, null), TuplesKt.to(NotificationPermissionsModule.class, null), TuplesKt.to(ExpoNotificationPresentationModule.class, null), TuplesKt.to(NotificationScheduler.class, null), TuplesKt.to(ServerRegistrationModule.class, null), TuplesKt.to(PushTokenModule.class, null), TuplesKt.to(TopicSubscriptionModule.class, null), TuplesKt.to(AndroidXNotificationsChannelsProvider.class, null), TuplesKt.to(ExpoRouterModule.class, null), TuplesKt.to(SecureStoreModule.class, null), TuplesKt.to(SplashScreenModule.class, null), TuplesKt.to(StoreReviewModule.class, null), TuplesKt.to(SuperwallExpoModule.class, null), TuplesKt.to(TaskManagerModule.class, null), TuplesKt.to(VideoModule.class, null));

    @JvmStatic
    public static final List<Package> getPackageList() {
        return INSTANCE.getPackageList();
    }

    /* JADX INFO: compiled from: ExpoModulesPackageList.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR'\u0010\t\u001a\u0018\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lexpo/modules/ExpoModulesPackageList$Companion;", "", "<init>", "()V", "packagesList", "", "Lexpo/modules/core/interfaces/Package;", "getPackagesList", "()Ljava/util/List;", "modulesMap", "", "Ljava/lang/Class;", "Lexpo/modules/kotlin/modules/Module;", "", "getModulesMap", "()Ljava/util/Map;", "getPackageList", "expo_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<Package> getPackagesList() {
            return ExpoModulesPackageList.packagesList;
        }

        public final Map<Class<? extends Module>, String> getModulesMap() {
            return ExpoModulesPackageList.modulesMap;
        }

        @JvmStatic
        public final List<Package> getPackageList() {
            return getPackagesList();
        }
    }

    @Override // expo.modules.kotlin.ModulesProvider
    public Map<Class<? extends Module>, String> getModulesMap() {
        return modulesMap;
    }

    @Override // expo.modules.kotlin.ModulesProvider
    public List<Class<? extends Service>> getServices() {
        return CollectionsKt.listOf((Object[]) new Class[]{ConstantsService.class, ImageLoaderService.class});
    }
}
