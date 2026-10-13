package expo.modules.core.interfaces;

import expo.modules.core.ModuleRegistry;

/* JADX INFO: loaded from: classes6.dex */
public interface RegistryLifecycleListener {
    default void onCreate(ModuleRegistry moduleRegistry) {
    }

    default void onDestroy() {
    }
}
