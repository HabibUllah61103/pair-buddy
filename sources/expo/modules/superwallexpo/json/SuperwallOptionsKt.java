package expo.modules.superwallexpo.json;

import com.superwall.sdk.config.options.PaywallOptions;
import com.superwall.sdk.config.options.SuperwallOptions;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.store.testmode.TestModeBehavior;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: SuperwallOptions.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003¨\u0006\u0006"}, d2 = {"superwallOptionsFromJson", "Lcom/superwall/sdk/config/options/SuperwallOptions;", "json", "", "", "", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class SuperwallOptionsKt {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:50:0x00db  */
    /* JADX WARN: Code duplicated, block: B:72:0x0131  */
    /* JADX WARN: Code duplicated, block: B:89:0x0181  */
    public static final SuperwallOptions superwallOptionsFromJson(Map<String, ? extends Object> json) {
        String lowerCase;
        TestModeBehavior testModeBehavior;
        SuperwallOptions.NetworkEnvironment.Developer networkEnvironment;
        List listEmptyList;
        LogLevel logLevel;
        LogScope logScopeValueOf;
        Intrinsics.checkNotNullParameter(json, "json");
        SuperwallOptions superwallOptions = new SuperwallOptions();
        superwallOptions.setLocaleIdentifier((String) json.get("localeIdentifier"));
        Boolean bool = (Boolean) json.get("isExternalDataCollectionEnabled");
        superwallOptions.setExternalDataCollectionEnabled(bool != null ? bool.booleanValue() : true);
        Boolean bool2 = (Boolean) json.get("isGameControllerEnabled");
        int i = 0;
        superwallOptions.setGameControllerEnabled(bool2 != null ? bool2.booleanValue() : false);
        Boolean bool3 = (Boolean) json.get("passIdentifiersToPlayStore");
        superwallOptions.setPassIdentifiersToPlayStore(bool3 != null ? bool3.booleanValue() : false);
        Boolean bool4 = (Boolean) json.get("enableExperimentalDeviceVariables");
        superwallOptions.setEnableExperimentalDeviceVariables(bool4 != null ? bool4.booleanValue() : false);
        Boolean bool5 = (Boolean) json.get("shouldObservePurchases");
        superwallOptions.setShouldObservePurchases(bool5 != null ? bool5.booleanValue() : false);
        Boolean bool6 = (Boolean) json.get("useMockReviews");
        superwallOptions.setUseMockReviews(bool6 != null ? bool6.booleanValue() : false);
        String str = (String) json.get("testModeBehavior");
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        } else {
            lowerCase = null;
        }
        if (lowerCase != null) {
            switch (lowerCase) {
                case "always":
                    testModeBehavior = TestModeBehavior.ALWAYS;
                    break;
                case "never":
                    testModeBehavior = TestModeBehavior.NEVER;
                    break;
                case "whenenabledforuser":
                    testModeBehavior = TestModeBehavior.WHEN_ENABLED_FOR_USER;
                    break;
                case "automatic":
                    testModeBehavior = TestModeBehavior.AUTOMATIC;
                    break;
                default:
                    testModeBehavior = TestModeBehavior.AUTOMATIC;
                    break;
            }
        } else {
            testModeBehavior = TestModeBehavior.AUTOMATIC;
        }
        superwallOptions.setTestModeBehavior(testModeBehavior);
        String str2 = (String) json.get("networkEnvironment");
        if (str2 == null) {
            networkEnvironment = superwallOptions.getNetworkEnvironment();
        } else {
            int iHashCode = str2.hashCode();
            if (iHashCode != -80681014) {
                if (iHashCode != 227648828) {
                    if (iHashCode == 1090594823 && str2.equals("release")) {
                        networkEnvironment = new SuperwallOptions.NetworkEnvironment.Release();
                    } else {
                        networkEnvironment = superwallOptions.getNetworkEnvironment();
                    }
                } else if (str2.equals("releaseCandidate")) {
                    networkEnvironment = new SuperwallOptions.NetworkEnvironment.ReleaseCandidate();
                } else {
                    networkEnvironment = superwallOptions.getNetworkEnvironment();
                }
            } else if (str2.equals("developer")) {
                networkEnvironment = new SuperwallOptions.NetworkEnvironment.Developer();
            } else {
                networkEnvironment = superwallOptions.getNetworkEnvironment();
            }
        }
        superwallOptions.setNetworkEnvironment(networkEnvironment);
        Map map = (Map) json.get("logging");
        List list = (List) (map != null ? map.get("scopes") : null);
        if (list != null) {
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                try {
                    logScopeValueOf = LogScope.valueOf((String) it.next());
                } catch (IllegalArgumentException unused) {
                    logScopeValueOf = null;
                }
                arrayList.add(logScopeValueOf);
            }
            listEmptyList = CollectionsKt.filterNotNull(arrayList);
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
        } else {
            listEmptyList = CollectionsKt.emptyList();
        }
        String str3 = (String) (map != null ? map.get("level") : null);
        LogLevel[] logLevelArrValues = LogLevel.values();
        int length = logLevelArrValues.length;
        while (true) {
            if (i < length) {
                logLevel = logLevelArrValues[i];
                if (!StringsKt.equals(logLevel.toString(), str3, true)) {
                    i++;
                }
            } else {
                logLevel = null;
            }
        }
        if (logLevel == null) {
            logLevel = LogLevel.warn;
        }
        SuperwallOptions.Logging logging = new SuperwallOptions.Logging();
        List list3 = listEmptyList;
        if (!list3.isEmpty()) {
            EnumSet<LogScope> enumSetCopyOf = EnumSet.copyOf((Collection) list3);
            Intrinsics.checkNotNullExpressionValue(enumSetCopyOf, "copyOf(...)");
            logging.setScopes(enumSetCopyOf);
        }
        logging.setLevel(logLevel);
        superwallOptions.setLogging(logging);
        Map map2 = (Map) json.get("paywalls");
        Boolean bool7 = (Boolean) (map2 != null ? map2.get("isHapticFeedbackEnabled") : null);
        Boolean bool8 = (Boolean) (map2 != null ? map2.get("shouldShowPurchaseFailureAlert") : null);
        Boolean bool9 = (Boolean) (map2 != null ? map2.get("shouldPreload") : null);
        Boolean bool10 = (Boolean) (map2 != null ? map2.get("automaticallyDismiss") : null);
        PaywallOptions paywallOptions = new PaywallOptions();
        paywallOptions.setHapticFeedbackEnabled(bool7 != null ? bool7.booleanValue() : paywallOptions.getIsHapticFeedbackEnabled());
        paywallOptions.setShouldShowPurchaseFailureAlert(bool8 != null ? bool8.booleanValue() : paywallOptions.getShouldShowPurchaseFailureAlert());
        paywallOptions.setShouldPreload(bool9 != null ? bool9.booleanValue() : paywallOptions.getShouldPreload());
        paywallOptions.setAutomaticallyDismiss(bool10 != null ? bool10.booleanValue() : paywallOptions.getAutomaticallyDismiss());
        Map map3 = (Map) (map2 != null ? map2.get("restoreFailed") : null);
        PaywallOptions.RestoreFailed restoreFailed = new PaywallOptions.RestoreFailed();
        if (map3 != null) {
            String title = (String) map3.get("title");
            if (title == null) {
                title = restoreFailed.getTitle();
            }
            restoreFailed.setTitle(title);
            String message = (String) map3.get("message");
            if (message == null) {
                message = restoreFailed.getMessage();
            }
            restoreFailed.setMessage(message);
            String closeButtonTitle = (String) map3.get("closeButtonTitle");
            if (closeButtonTitle == null) {
                closeButtonTitle = restoreFailed.getCloseButtonTitle();
            }
            restoreFailed.setCloseButtonTitle(closeButtonTitle);
        }
        paywallOptions.setRestoreFailed(restoreFailed);
        paywallOptions.setTransactionBackgroundView(Intrinsics.areEqual((String) (map2 != null ? map2.get("transactionBackgroundView") : null), "spinner") ? PaywallOptions.TransactionBackgroundView.SPINNER : null);
        superwallOptions.setPaywalls(paywallOptions);
        return superwallOptions;
    }
}
