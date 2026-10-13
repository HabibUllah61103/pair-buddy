package expo.modules.superwallexpo.json;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.messaging.Constants;
import com.superwall.sdk.paywall.presentation.internal.PaywallPresentationRequestStatusReason;
import com.superwall.sdk.paywall.view.webview.WebviewError;
import com.superwall.sdk.store.abstractions.transactions.StoreTransaction;
import com.superwall.sdk.store.abstractions.transactions.StoreTransactionType;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import me.leolin.shortcutbadger.impl.NewHtcHomeBadger;

/* JADX INFO: compiled from: SuperwallEvent.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lexpo/modules/superwallexpo/json/SuperwallEvent;", "", "<init>", "()V", "Companion", "expo-superwall_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SuperwallEvent {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: SuperwallEvent.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u00052\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lexpo/modules/superwallexpo/json/SuperwallEvent$Companion;", "", "<init>", "()V", "toJson", "", "", "superwallPlacement", "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;", "expo-superwall_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Map<String, Object> toJson(com.superwall.sdk.analytics.superwall.SuperwallEvent superwallPlacement) {
            Map<String, Object> json;
            Map<String, Object> json2;
            Intrinsics.checkNotNullParameter(superwallPlacement, "superwallPlacement");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.FirstSeen) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "firstSeen");
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.Reset) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "reset");
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.Restore.Start) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "restoreStart");
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.Restore.Complete) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "restoreComplete");
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.ConfigRefresh) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "configRefresh");
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.Restore.Fail) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "restoreFail");
                linkedHashMap.put("message", ((com.superwall.sdk.analytics.superwall.SuperwallEvent.Restore.Fail) superwallPlacement).getReason());
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.AppOpen) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "appOpen");
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.AppLaunch) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "appLaunch");
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.IdentityAlias) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "identityAlias");
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.AppInstall) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "appInstall");
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.SessionStart) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "sessionStart");
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.DeviceAttributes) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "deviceAttributes");
                linkedHashMap.put("attributes", ((com.superwall.sdk.analytics.superwall.SuperwallEvent.DeviceAttributes) superwallPlacement).getAttributes());
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.SubscriptionStatusDidChange) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "subscriptionStatusDidChange");
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.AppClose) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "appClose");
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.DeepLink) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "deepLink");
                linkedHashMap.put(ImagesContract.URL, ((com.superwall.sdk.analytics.superwall.SuperwallEvent.DeepLink) superwallPlacement).getUri().toString());
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.TriggerFire) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "triggerFire");
                com.superwall.sdk.analytics.superwall.SuperwallEvent.TriggerFire triggerFire = (com.superwall.sdk.analytics.superwall.SuperwallEvent.TriggerFire) superwallPlacement;
                linkedHashMap.put("placementName", triggerFire.getPlacementName());
                linkedHashMap.put("result", TriggerResult.INSTANCE.toJson(triggerFire.getResult()));
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallOpen) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallOpen");
                linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallOpen) superwallPlacement).getPaywallInfo()));
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallClose) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallClose");
                linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallClose) superwallPlacement).getPaywallInfo()));
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallPageView) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallPageView");
                com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallPageView paywallPageView = (com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallPageView) superwallPlacement;
                linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(paywallPageView.getPaywallInfo()));
                linkedHashMap.put("data", PageViewDataKt.toJson(paywallPageView.getData()));
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallDecline) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallDecline");
                linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallDecline) superwallPlacement).getPaywallInfo()));
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionStart) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "transactionStart");
                com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionStart transactionStart = (com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionStart) superwallPlacement;
                linkedHashMap.put("product", StoreProductKt.toJson(transactionStart.getProduct()));
                linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(transactionStart.getPaywallInfo()));
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionFail) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "transactionFail");
                com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionFail transactionFail = (com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionFail) superwallPlacement;
                String localizedMessage = transactionFail.getError().getLocalizedMessage();
                if (localizedMessage == null) {
                    localizedMessage = "Error message unavailable";
                }
                linkedHashMap.put(Constants.IPC_BUNDLE_KEY_SEND_ERROR, localizedMessage);
                linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(transactionFail.getPaywallInfo()));
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionAbandon) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "transactionAbandon");
                com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionAbandon transactionAbandon = (com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionAbandon) superwallPlacement;
                linkedHashMap.put("product", StoreProductKt.toJson(transactionAbandon.getProduct()));
                linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(transactionAbandon.getPaywallInfo()));
                return linkedHashMap;
            }
            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionComplete) {
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "transactionComplete");
                com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionComplete transactionComplete = (com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionComplete) superwallPlacement;
                linkedHashMap.put("product", StoreProductKt.toJson(transactionComplete.getProduct()));
                linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(transactionComplete.getPaywallInfo()));
                StoreTransactionType transaction = transactionComplete.getTransaction();
                StoreTransaction storeTransaction = transaction instanceof StoreTransaction ? (StoreTransaction) transaction : null;
                if (storeTransaction != null && (json2 = StoreTransactionKt.toJson(storeTransaction)) != null) {
                    linkedHashMap.put("transaction", json2);
                    return linkedHashMap;
                }
            } else {
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.SubscriptionStart) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "subscriptionStart");
                    com.superwall.sdk.analytics.superwall.SuperwallEvent.SubscriptionStart subscriptionStart = (com.superwall.sdk.analytics.superwall.SuperwallEvent.SubscriptionStart) superwallPlacement;
                    linkedHashMap.put("product", StoreProductKt.toJson(subscriptionStart.getProduct()));
                    linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(subscriptionStart.getPaywallInfo()));
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.FreeTrialStart) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "freeTrialStart");
                    com.superwall.sdk.analytics.superwall.SuperwallEvent.FreeTrialStart freeTrialStart = (com.superwall.sdk.analytics.superwall.SuperwallEvent.FreeTrialStart) superwallPlacement;
                    linkedHashMap.put("product", StoreProductKt.toJson(freeTrialStart.getProduct()));
                    linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(freeTrialStart.getPaywallInfo()));
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionRestore) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "transactionRestore");
                    com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionRestore transactionRestore = (com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionRestore) superwallPlacement;
                    linkedHashMap.put("restoreType", RestoreTypeKt.toJson(transactionRestore.getRestoreType()));
                    linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(transactionRestore.getPaywallInfo()));
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionTimeout) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "transactionTimeout");
                    linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(((com.superwall.sdk.analytics.superwall.SuperwallEvent.TransactionTimeout) superwallPlacement).getPaywallInfo()));
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.UserAttributes) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "userAttributes");
                    linkedHashMap.put("attributes", ((com.superwall.sdk.analytics.superwall.SuperwallEvent.UserAttributes) superwallPlacement).getAttributes());
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.IntegrationProps) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "integrationAttributes");
                    linkedHashMap.put("attributes", ((com.superwall.sdk.analytics.superwall.SuperwallEvent.IntegrationProps) superwallPlacement).getAudienceFilterParams());
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.IntegrationAttributes) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "integrationAttributes");
                    linkedHashMap.put("attributes", ((com.superwall.sdk.analytics.superwall.SuperwallEvent.IntegrationAttributes) superwallPlacement).getAudienceFilterParams());
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.NonRecurringProductPurchase) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "nonRecurringProductPurchase");
                    com.superwall.sdk.analytics.superwall.SuperwallEvent.NonRecurringProductPurchase nonRecurringProductPurchase = (com.superwall.sdk.analytics.superwall.SuperwallEvent.NonRecurringProductPurchase) superwallPlacement;
                    linkedHashMap.put("product", TransactionProductKt.toJson(nonRecurringProductPurchase.getProduct()));
                    linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(nonRecurringProductPurchase.getPaywallInfo()));
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallResponseLoadStart) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallResponseLoadStart");
                    String triggeredPlacementName = ((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallResponseLoadStart) superwallPlacement).getTriggeredPlacementName();
                    linkedHashMap.put("triggeredPlacementName", triggeredPlacementName != null ? triggeredPlacementName : "");
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallResponseLoadNotFound) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallResponseLoadNotFound");
                    String triggeredPlacementName2 = ((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallResponseLoadNotFound) superwallPlacement).getTriggeredPlacementName();
                    linkedHashMap.put("triggeredPlacementName", triggeredPlacementName2 != null ? triggeredPlacementName2 : "");
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallResponseLoadFail) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallResponseLoadFail");
                    String triggeredPlacementName3 = ((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallResponseLoadFail) superwallPlacement).getTriggeredPlacementName();
                    linkedHashMap.put("triggeredPlacementName", triggeredPlacementName3 != null ? triggeredPlacementName3 : "");
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallResponseLoadComplete) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallResponseLoadComplete");
                    com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallResponseLoadComplete paywallResponseLoadComplete = (com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallResponseLoadComplete) superwallPlacement;
                    String triggeredPlacementName4 = paywallResponseLoadComplete.getTriggeredPlacementName();
                    linkedHashMap.put("triggeredPlacementName", triggeredPlacementName4 != null ? triggeredPlacementName4 : "");
                    linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(paywallResponseLoadComplete.getPaywallInfo()));
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallWebviewLoadStart) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallWebviewLoadStart");
                    linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallWebviewLoadStart) superwallPlacement).getPaywallInfo()));
                    return linkedHashMap;
                }
                if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallWebviewLoadFail) {
                    linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallWebviewLoadFail");
                    com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallWebviewLoadFail paywallWebviewLoadFail = (com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallWebviewLoadFail) superwallPlacement;
                    linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(paywallWebviewLoadFail.getPaywallInfo()));
                    WebviewError errorMessage = paywallWebviewLoadFail.getErrorMessage();
                    if (errorMessage != null) {
                        linkedHashMap.put("errorMessage", errorMessage.toString());
                        return linkedHashMap;
                    }
                } else {
                    if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallWebviewLoadComplete) {
                        linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallWebviewLoadComplete");
                        linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallWebviewLoadComplete) superwallPlacement).getPaywallInfo()));
                        return linkedHashMap;
                    }
                    if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallWebviewLoadTimeout) {
                        linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallWebviewLoadTimeout");
                        linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallWebviewLoadTimeout) superwallPlacement).getPaywallInfo()));
                        return linkedHashMap;
                    }
                    if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallProductsLoadStart) {
                        linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallProductsLoadStart");
                        com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallProductsLoadStart paywallProductsLoadStart = (com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallProductsLoadStart) superwallPlacement;
                        String triggeredPlacementName5 = paywallProductsLoadStart.getTriggeredPlacementName();
                        linkedHashMap.put("triggeredPlacementName", triggeredPlacementName5 != null ? triggeredPlacementName5 : "");
                        linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(paywallProductsLoadStart.getPaywallInfo()));
                        return linkedHashMap;
                    }
                    if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallProductsLoadFail) {
                        linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallProductsLoadFail");
                        com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallProductsLoadFail paywallProductsLoadFail = (com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallProductsLoadFail) superwallPlacement;
                        String triggeredPlacementName6 = paywallProductsLoadFail.getTriggeredPlacementName();
                        linkedHashMap.put("triggeredPlacementName", triggeredPlacementName6 != null ? triggeredPlacementName6 : "");
                        linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(paywallProductsLoadFail.getPaywallInfo()));
                        String errorMessage2 = paywallProductsLoadFail.getErrorMessage();
                        if (errorMessage2 != null) {
                            linkedHashMap.put("errorMessage", errorMessage2);
                            return linkedHashMap;
                        }
                    } else {
                        if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallProductsLoadComplete) {
                            linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallProductsLoadComplete");
                            String triggeredPlacementName7 = ((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallProductsLoadComplete) superwallPlacement).getTriggeredPlacementName();
                            linkedHashMap.put("triggeredPlacementName", triggeredPlacementName7 != null ? triggeredPlacementName7 : "");
                            return linkedHashMap;
                        }
                        if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.SurveyResponse) {
                            linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "surveyResponse");
                            com.superwall.sdk.analytics.superwall.SuperwallEvent.SurveyResponse surveyResponse = (com.superwall.sdk.analytics.superwall.SuperwallEvent.SurveyResponse) superwallPlacement;
                            linkedHashMap.put("survey", SurveyKt.toJson(surveyResponse.getSurvey()));
                            linkedHashMap.put("selectedOption", SurveyKt.toJson(surveyResponse.getSelectedOption()));
                            String customResponse = surveyResponse.getCustomResponse();
                            linkedHashMap.put("customResponse", customResponse != null ? customResponse : "");
                            linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(surveyResponse.getPaywallInfo()));
                            return linkedHashMap;
                        }
                        if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallPresentationRequest) {
                            linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallPresentationRequest");
                            com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallPresentationRequest paywallPresentationRequest = (com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallPresentationRequest) superwallPlacement;
                            linkedHashMap.put("status", PaywallPresentationRequestStatusKt.toJson(paywallPresentationRequest.getStatus()));
                            PaywallPresentationRequestStatusReason reason = paywallPresentationRequest.getReason();
                            if (reason != null && (json = PaywallPresentationRequestStatusKt.toJson(reason)) != null) {
                                linkedHashMap.put("reason", json);
                                return linkedHashMap;
                            }
                        } else {
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.SurveyClose) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "surveyClose");
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.ConfigAttributes) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "configAttributes");
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.CustomPlacement) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "customPlacement");
                                com.superwall.sdk.analytics.superwall.SuperwallEvent.CustomPlacement customPlacement = (com.superwall.sdk.analytics.superwall.SuperwallEvent.CustomPlacement) superwallPlacement;
                                linkedHashMap.put("name", customPlacement.getPlacementName());
                                linkedHashMap.put("params", customPlacement.getParams());
                                linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(customPlacement.getPaywallInfo()));
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallWebviewLoadFallback) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallWebviewLoadFallback");
                                linkedHashMap.put("paywallInfo", PaywallInfoKt.toJson(((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallWebviewLoadFallback) superwallPlacement).getPaywallInfo()));
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.ConfigFail) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "configFail");
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.ConfirmAllAssignments) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "confirmAllAssignments");
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallResourceLoadFail) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallResourceLoadFail");
                                com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallResourceLoadFail paywallResourceLoadFail = (com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallResourceLoadFail) superwallPlacement;
                                linkedHashMap.put(ImagesContract.URL, paywallResourceLoadFail.getUrl().toString());
                                linkedHashMap.put(Constants.IPC_BUNDLE_KEY_SEND_ERROR, paywallResourceLoadFail.getError());
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.ShimmerViewComplete) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "shimmerViewComplete");
                                linkedHashMap.put("duration", Double.valueOf(((com.superwall.sdk.analytics.superwall.SuperwallEvent.ShimmerViewComplete) superwallPlacement).getDuration()));
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.ShimmerViewStart) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "shimmerViewStart");
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.RedemptionComplete) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "redemptionComplete");
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.RedemptionFail) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "redemptionFail");
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.RedemptionStart) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "redemptionStart");
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.EnrichmentStart) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "enrichmentStart");
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.EnrichmentFail) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "enrichmentFail");
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.EnrichmentComplete) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "enrichmentComplete");
                                com.superwall.sdk.analytics.superwall.SuperwallEvent.EnrichmentComplete enrichmentComplete = (com.superwall.sdk.analytics.superwall.SuperwallEvent.EnrichmentComplete) superwallPlacement;
                                linkedHashMap.put("userEnrichment", enrichmentComplete.getUserEnrichment());
                                linkedHashMap.put("deviceEnrichment", enrichmentComplete.getDeviceEnrichment());
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.ReviewRequested) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "reviewRequested");
                                linkedHashMap.put(NewHtcHomeBadger.COUNT, Integer.valueOf(((com.superwall.sdk.analytics.superwall.SuperwallEvent.ReviewRequested) superwallPlacement).getCount()));
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.CustomerInfoDidChange) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "customerInfoDidChange");
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PermissionRequested) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "permissionRequested");
                                com.superwall.sdk.analytics.superwall.SuperwallEvent.PermissionRequested permissionRequested = (com.superwall.sdk.analytics.superwall.SuperwallEvent.PermissionRequested) superwallPlacement;
                                linkedHashMap.put("permissionName", permissionRequested.getPermissionName());
                                linkedHashMap.put("paywallIdentifier", permissionRequested.getPaywallIdentifier());
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PermissionGranted) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "permissionGranted");
                                com.superwall.sdk.analytics.superwall.SuperwallEvent.PermissionGranted permissionGranted = (com.superwall.sdk.analytics.superwall.SuperwallEvent.PermissionGranted) superwallPlacement;
                                linkedHashMap.put("permissionName", permissionGranted.getPermissionName());
                                linkedHashMap.put("paywallIdentifier", permissionGranted.getPaywallIdentifier());
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PermissionDenied) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "permissionDenied");
                                com.superwall.sdk.analytics.superwall.SuperwallEvent.PermissionDenied permissionDenied = (com.superwall.sdk.analytics.superwall.SuperwallEvent.PermissionDenied) superwallPlacement;
                                linkedHashMap.put("permissionName", permissionDenied.getPermissionName());
                                linkedHashMap.put("paywallIdentifier", permissionDenied.getPaywallIdentifier());
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallPreloadStart) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallPreloadStart");
                                linkedHashMap.put("paywallCount", Integer.valueOf(((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallPreloadStart) superwallPlacement).getPaywallCount()));
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallPreloadComplete) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "paywallPreloadComplete");
                                linkedHashMap.put("paywallCount", Integer.valueOf(((com.superwall.sdk.analytics.superwall.SuperwallEvent.PaywallPreloadComplete) superwallPlacement).getPaywallCount()));
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.TestModeModalOpen) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "testModeModalOpen");
                                return linkedHashMap;
                            }
                            if (superwallPlacement instanceof com.superwall.sdk.analytics.superwall.SuperwallEvent.TestModeModalClose) {
                                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "testModeModalClose");
                            }
                        }
                    }
                }
            }
            return linkedHashMap;
        }
    }
}
