package com.superwall.sdk.logger;

import com.google.firebase.messaging.Constants;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.config.options.SuperwallOptions;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/superwall/sdk/logger/Loggable;", "", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface Loggable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    /* JADX INFO: compiled from: Logger.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJD\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\r2\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/logger/Loggable$Companion;", "", "<init>", "()V", "shouldPrint", "", "logLevel", "Lcom/superwall/sdk/logger/LogLevel;", PermissionsResponse.SCOPE_KEY, "Lcom/superwall/sdk/logger/LogScope;", "debug", "", "message", "", "info", "", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final boolean shouldPrint(LogLevel logLevel, LogScope scope) {
            Intrinsics.checkNotNullParameter(logLevel, "logLevel");
            Intrinsics.checkNotNullParameter(scope, "scope");
            SuperwallOptions.Logging logging = new SuperwallOptions.Logging();
            if (Superwall.INSTANCE.getInitialized()) {
                logging = Superwall.INSTANCE.getInstance().getOptions().getLogging();
            }
            if (logging.getLevel() == LogLevel.none) {
                return false;
            }
            return (logLevel.getLevel() >= logging.getLevel().getLevel()) && (logging.getScopes().contains(scope) || logging.getScopes().contains(LogScope.all));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void debug$default(Companion companion, LogLevel logLevel, LogScope logScope, String str, Map map, Throwable th, int i, Object obj) {
            if ((i & 4) != 0) {
                str = "";
            }
            String str2 = str;
            if ((i & 8) != 0) {
                map = MapsKt.emptyMap();
            }
            Map map2 = map;
            if ((i & 16) != 0) {
                th = null;
            }
            companion.debug(logLevel, logScope, str2, map2, th);
        }

        public final void debug(LogLevel logLevel, LogScope scope, String message, Map<String, ? extends Object> info, Throwable error) {
            String str;
            Intrinsics.checkNotNullParameter(logLevel, "logLevel");
            Intrinsics.checkNotNullParameter(scope, "scope");
            Intrinsics.checkNotNullParameter(message, "message");
            ArrayList arrayList = new ArrayList();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            arrayList.add(message);
            if (info != null) {
                arrayList.add(info.toString());
                linkedHashMap.put("info", info);
            }
            if (error != null) {
                String localizedMessage = error.getLocalizedMessage();
                if (localizedMessage == null) {
                    localizedMessage = "";
                }
                arrayList.add(localizedMessage);
                linkedHashMap.put(Constants.IPC_BUNDLE_KEY_SEND_ERROR, error);
            }
            if (Superwall.INSTANCE.getInitialized()) {
                str = message;
                Superwall.INSTANCE.getInstance().getDependencyContainer$superwall_release().getDelegateAdapter().handleLog(logLevel.toString(), scope.toString(), str, info, error);
            } else {
                str = message;
            }
            if (shouldPrint(logLevel, scope)) {
                String str2 = "\n" + logLevel.getDescriptionEmoji() + " [!!Superwall] [" + scope + "] " + logLevel + (": " + str) + "\n";
                if (linkedHashMap.isEmpty()) {
                    System.out.println((Object) str2);
                    return;
                }
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    System.out.println((Object) (((String) entry.getKey()) + ": " + entry.getValue()));
                }
            }
        }
    }
}
