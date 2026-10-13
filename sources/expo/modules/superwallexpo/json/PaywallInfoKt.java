package expo.modules.superwallexpo.json;

import com.google.android.gms.common.internal.ImagesContract;
import com.superwall.sdk.config.models.Survey;
import com.superwall.sdk.config.models.SurveyOption;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.models.paywall.LocalNotification;
import com.superwall.sdk.models.paywall.PaywallURL;
import com.superwall.sdk.models.product.ProductItem;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import expo.modules.notifications.service.NotificationsService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaywallInfo.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class PaywallInfoKt {
    public static final Map<String, Object> toJson(PaywallInfo paywallInfo) {
        char c;
        char c2;
        int i;
        Intrinsics.checkNotNullParameter(paywallInfo, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(NotificationsService.IDENTIFIER_KEY, paywallInfo.getIdentifier());
        linkedHashMap.put("name", paywallInfo.getName());
        linkedHashMap.put(ImagesContract.URL, PaywallURL.m10667toStringimpl(paywallInfo.m10701getUrl24UBhI0()));
        com.superwall.sdk.models.triggers.Experiment experiment = paywallInfo.getExperiment();
        if (experiment != null) {
            linkedHashMap.put("experiment", Experiment.INSTANCE.toJson(experiment));
        }
        List<ProductItem> products = paywallInfo.getProducts();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(products, 10));
        Iterator<T> it = products.iterator();
        while (true) {
            c = 1;
            c2 = 0;
            i = 2;
            if (!it.hasNext()) {
                break;
            }
            ProductItem productItem = (ProductItem) it.next();
            arrayList.add(MapsKt.mapOf(TuplesKt.to("type", productItem.getType().toString()), TuplesKt.to("id", productItem.getFullProductId())));
        }
        linkedHashMap.put("products", arrayList);
        linkedHashMap.put("productIds", CollectionsKt.toList(paywallInfo.getProductIds()));
        String presentedByEventWithName = paywallInfo.getPresentedByEventWithName();
        if (presentedByEventWithName != null) {
            linkedHashMap.put("presentedByEventWithName", presentedByEventWithName);
        }
        String presentedByEventWithId = paywallInfo.getPresentedByEventWithId();
        if (presentedByEventWithId != null) {
            linkedHashMap.put("presentedByEventWithId", presentedByEventWithId);
        }
        String presentedByEventAt = paywallInfo.getPresentedByEventAt();
        if (presentedByEventAt != null) {
            linkedHashMap.put("presentedByEventAt", presentedByEventAt);
        }
        linkedHashMap.put("presentedBy", paywallInfo.getPresentedBy());
        String presentationSourceType = paywallInfo.getPresentationSourceType();
        if (presentationSourceType != null) {
            linkedHashMap.put("presentationSourceType", presentationSourceType);
        }
        String responseLoadStartTime = paywallInfo.getResponseLoadStartTime();
        if (responseLoadStartTime != null) {
            linkedHashMap.put("responseLoadStartTime", responseLoadStartTime);
        }
        String responseLoadCompleteTime = paywallInfo.getResponseLoadCompleteTime();
        if (responseLoadCompleteTime != null) {
            linkedHashMap.put("responseLoadCompleteTime", responseLoadCompleteTime);
        }
        String responseLoadFailTime = paywallInfo.getResponseLoadFailTime();
        if (responseLoadFailTime != null) {
            linkedHashMap.put("responseLoadFailTime", responseLoadFailTime);
        }
        Double responseLoadDuration = paywallInfo.getResponseLoadDuration();
        if (responseLoadDuration != null) {
            linkedHashMap.put("responseLoadDuration", Double.valueOf(responseLoadDuration.doubleValue()));
        }
        linkedHashMap.put("isFreeTrialAvailable", Boolean.valueOf(paywallInfo.isFreeTrialAvailable()));
        linkedHashMap.put("featureGatingBehavior", FeatureGatingBehaviorKt.rawValue(paywallInfo.getFeatureGatingBehavior()));
        linkedHashMap.put("closeReason", PaywallCloseReasonKt.rawValue(paywallInfo.getCloseReason()));
        String webViewLoadStartTime = paywallInfo.getWebViewLoadStartTime();
        if (webViewLoadStartTime != null) {
            linkedHashMap.put("webViewLoadStartTime", webViewLoadStartTime);
        }
        String webViewLoadCompleteTime = paywallInfo.getWebViewLoadCompleteTime();
        if (webViewLoadCompleteTime != null) {
            linkedHashMap.put("webViewLoadCompleteTime", webViewLoadCompleteTime);
        }
        String webViewLoadFailTime = paywallInfo.getWebViewLoadFailTime();
        if (webViewLoadFailTime != null) {
            linkedHashMap.put("webViewLoadFailTime", webViewLoadFailTime);
        }
        Double webViewLoadDuration = paywallInfo.getWebViewLoadDuration();
        if (webViewLoadDuration != null) {
            linkedHashMap.put("webViewLoadDuration", Double.valueOf(webViewLoadDuration.doubleValue()));
        }
        String productsLoadStartTime = paywallInfo.getProductsLoadStartTime();
        if (productsLoadStartTime != null) {
            linkedHashMap.put("productsLoadStartTime", productsLoadStartTime);
        }
        String productsLoadCompleteTime = paywallInfo.getProductsLoadCompleteTime();
        if (productsLoadCompleteTime != null) {
            linkedHashMap.put("productsLoadCompleteTime", productsLoadCompleteTime);
        }
        String productsLoadFailTime = paywallInfo.getProductsLoadFailTime();
        if (productsLoadFailTime != null) {
            linkedHashMap.put("productsLoadFailTime", productsLoadFailTime);
        }
        Double productsLoadDuration = paywallInfo.getProductsLoadDuration();
        if (productsLoadDuration != null) {
            linkedHashMap.put("productsLoadDuration", Double.valueOf(productsLoadDuration.doubleValue()));
        }
        String paywalljsVersion = paywallInfo.getPaywalljsVersion();
        if (paywalljsVersion != null) {
            linkedHashMap.put("paywalljsVersion", paywalljsVersion);
        }
        List<ComputedPropertyRequest> computedPropertyRequests = paywallInfo.getComputedPropertyRequests();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(computedPropertyRequests, 10));
        for (ComputedPropertyRequest computedPropertyRequest : computedPropertyRequests) {
            arrayList2.add(MapsKt.mapOf(TuplesKt.to("placementName", computedPropertyRequest.getEventName()), TuplesKt.to("type", computedPropertyRequest.getType().toString())));
        }
        linkedHashMap.put("computedPropertyRequests", arrayList2);
        List<Survey> surveys = paywallInfo.getSurveys();
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(surveys, 10));
        for (Survey survey : surveys) {
            List<SurveyOption> options = survey.getOptions();
            char c3 = c;
            char c4 = c2;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(options, 10));
            for (SurveyOption surveyOption : options) {
                Pair[] pairArr = new Pair[i];
                pairArr[c4] = TuplesKt.to("id", surveyOption.getId());
                pairArr[c3] = TuplesKt.to("title", surveyOption.getTitle());
                arrayList4.add(MapsKt.mapOf(pairArr));
                i = i;
            }
            int i2 = i;
            Pair[] pairArr2 = new Pair[9];
            pairArr2[c4] = TuplesKt.to("id", survey.getId());
            pairArr2[c3] = TuplesKt.to("message", survey.getMessage());
            pairArr2[i2] = TuplesKt.to("title", survey.getTitle());
            pairArr2[3] = TuplesKt.to("assignmentKey", survey.getAssignmentKey());
            pairArr2[4] = TuplesKt.to("includeCloseOption", Boolean.valueOf(survey.getIncludeCloseOption()));
            pairArr2[5] = TuplesKt.to("includeOtherOption", Boolean.valueOf(survey.getIncludeOtherOption()));
            pairArr2[6] = TuplesKt.to("presentationProbability", Double.valueOf(survey.getPresentationProbability()));
            pairArr2[7] = TuplesKt.to("presentationCondition", survey.getPresentationCondition().getRawValue());
            pairArr2[8] = TuplesKt.to("options", arrayList4);
            arrayList3.add(MapsKt.mapOf(pairArr2));
            c = c3;
            c2 = c4;
            i = i2;
        }
        char c5 = c;
        char c6 = c2;
        int i3 = i;
        linkedHashMap.put("surveys", arrayList3);
        List<LocalNotification> localNotifications = paywallInfo.getLocalNotifications();
        ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(localNotifications, 10));
        for (LocalNotification localNotification : localNotifications) {
            Pair[] pairArr3 = new Pair[5];
            pairArr3[c6] = TuplesKt.to("id", localNotification.getId());
            pairArr3[c5] = TuplesKt.to("title", localNotification.getTitle());
            pairArr3[i3] = TuplesKt.to("body", localNotification.getBody());
            pairArr3[3] = TuplesKt.to("type", LocalNotificationTypeKt.toJson(localNotification.getType()));
            pairArr3[4] = TuplesKt.to("delay", Double.valueOf(localNotification.getDelay()));
            arrayList5.add(MapsKt.mapOf(pairArr3));
        }
        linkedHashMap.put("localNotifications", arrayList5);
        linkedHashMap.put("state", paywallInfo.getState());
        linkedHashMap.put("customerInfo", CustomerInfoKt.toJson(paywallInfo.getCustomerInfo()));
        return linkedHashMap;
    }
}
