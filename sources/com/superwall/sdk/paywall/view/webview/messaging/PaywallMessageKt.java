package com.superwall.sdk.paywall.view.webview.messaging;

import com.google.android.gms.common.internal.ImagesContract;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.paywall.LocalNotificationType;
import com.superwall.sdk.paywall.presentation.CustomCallbackBehavior;
import com.superwall.sdk.permissions.PermissionType;
import com.superwall.sdk.storage.core_data.ConvertersKt;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: compiled from: PaywallMessage.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0019\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007\u001a\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0000\u001a\u00020\nH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"json", "Lkotlinx/serialization/json/Json;", "parseWrappedPaywallMessages", "Lkotlin/Result;", "Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;", "jsonString", "", "(Ljava/lang/String;)Ljava/lang/Object;", "parsePaywallMessage", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;", "Lkotlinx/serialization/json/JsonObject;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PaywallMessageKt {
    private static final Json json = JsonKt.Json$default(null, new Function1() { // from class: com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return PaywallMessageKt.json$lambda$0((JsonBuilder) obj);
        }
    }, 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit json$lambda$0(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setIgnoreUnknownKeys(true);
        return Unit.INSTANCE;
    }

    public static final Object parseWrappedPaywallMessages(String jsonString) {
        JsonPrimitive jsonPrimitive;
        Integer intOrNull;
        Intrinsics.checkNotNullParameter(jsonString, "jsonString");
        try {
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "SWWebViewInterface " + jsonString, null, null, 24, null);
            JsonObject jsonObject = JsonElementKt.getJsonObject(json.parseToJsonElement(jsonString));
            JsonElement jsonElement = (JsonElement) jsonObject.get((Object) "version");
            int iIntValue = (jsonElement == null || (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement)) == null || (intOrNull = JsonElementKt.getIntOrNull(jsonPrimitive)) == null) ? 1 : intOrNull.intValue();
            Object obj = jsonObject.get((Object) "payload");
            Intrinsics.checkNotNull(obj);
            Object obj2 = JsonElementKt.getJsonObject((JsonElement) obj).get((Object) "events");
            Intrinsics.checkNotNull(obj2);
            JsonArray jsonArray = JsonElementKt.getJsonArray((JsonElement) obj2);
            ArrayList arrayList = new ArrayList();
            Iterator<JsonElement> it = jsonArray.iterator();
            while (it.hasNext()) {
                arrayList.add(parsePaywallMessage(JsonElementKt.getJsonObject(it.next())));
            }
            Result.Companion companion = Result.INSTANCE;
            return Result.m11241constructorimpl(new WrappedPaywallMessages(iIntValue, new PayloadMessages(arrayList)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m11241constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static final PaywallMessage parsePaywallMessage(JsonObject jsonObject) {
        JsonPrimitive jsonPrimitive;
        Long longOrNull;
        JsonPrimitive jsonPrimitive2;
        String contentOrNull;
        JsonPrimitive jsonPrimitive3;
        String contentOrNull2;
        JsonPrimitive jsonPrimitive4;
        String contentOrNull3;
        JsonPrimitive jsonPrimitive5;
        String contentOrNull4;
        JsonPrimitive jsonPrimitive6;
        JsonPrimitive jsonPrimitive7;
        String contentOrNull5;
        JsonPrimitive jsonPrimitive8;
        String contentOrNull6;
        JsonPrimitive jsonPrimitive9;
        String contentOrNull7;
        JsonPrimitive jsonPrimitive10;
        String contentOrNull8;
        JsonPrimitive jsonPrimitive11;
        String contentOrNull9;
        JsonPrimitive jsonPrimitive12;
        String contentOrNull10;
        JsonObject jsonObject2;
        JsonPrimitive jsonPrimitive13;
        JsonPrimitive jsonPrimitive14;
        JsonPrimitive jsonPrimitive15;
        JsonPrimitive jsonPrimitive16;
        Boolean booleanOrNull;
        JsonPrimitive jsonPrimitive17;
        String contentOrNull11;
        PaywallMessage.HapticFeedback.HapticType hapticTypeFromRaw;
        Object obj = jsonObject.get("event_name");
        Intrinsics.checkNotNull(obj);
        String content = JsonElementKt.getJsonPrimitive((JsonElement) obj).getContent();
        String contentOrNull12 = null;
        intOrNull = null;
        Integer intOrNull = null;
        map = null;
        map = null;
        Map map = null;
        browserType = null;
        browserType = null;
        browserType = null;
        PaywallMessage.OpenUrl.BrowserType browserType = null;
        contentOrNull12 = null;
        switch (content.hashCode()) {
            case -1673359981:
                if (content.equals("schedule_notification")) {
                    JsonElement jsonElement = (JsonElement) jsonObject.get("type");
                    if (jsonElement != null && (jsonPrimitive6 = JsonElementKt.getJsonPrimitive(jsonElement)) != null) {
                        contentOrNull12 = JsonElementKt.getContentOrNull(jsonPrimitive6);
                    }
                    LocalNotificationType localNotificationType = Intrinsics.areEqual(contentOrNull12, "TRIAL_STARTED") ? LocalNotificationType.TrialStarted.INSTANCE : LocalNotificationType.Unsupported.INSTANCE;
                    JsonElement jsonElement2 = (JsonElement) jsonObject.get("id");
                    String str = (jsonElement2 == null || (jsonPrimitive5 = JsonElementKt.getJsonPrimitive(jsonElement2)) == null || (contentOrNull4 = JsonElementKt.getContentOrNull(jsonPrimitive5)) == null) ? "" : contentOrNull4;
                    JsonElement jsonElement3 = (JsonElement) jsonObject.get("title");
                    String str2 = (jsonElement3 == null || (jsonPrimitive4 = JsonElementKt.getJsonPrimitive(jsonElement3)) == null || (contentOrNull3 = JsonElementKt.getContentOrNull(jsonPrimitive4)) == null) ? "" : contentOrNull3;
                    JsonElement jsonElement4 = (JsonElement) jsonObject.get("subtitle");
                    String str3 = (jsonElement4 == null || (jsonPrimitive3 = JsonElementKt.getJsonPrimitive(jsonElement4)) == null || (contentOrNull2 = JsonElementKt.getContentOrNull(jsonPrimitive3)) == null) ? "" : contentOrNull2;
                    JsonElement jsonElement5 = (JsonElement) jsonObject.get("body");
                    String str4 = (jsonElement5 == null || (jsonPrimitive2 = JsonElementKt.getJsonPrimitive(jsonElement5)) == null || (contentOrNull = JsonElementKt.getContentOrNull(jsonPrimitive2)) == null) ? "" : contentOrNull;
                    JsonElement jsonElement6 = (JsonElement) jsonObject.get("delay");
                    return new PaywallMessage.ScheduleNotification(str, localNotificationType, str2, str3, str4, (jsonElement6 == null || (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement6)) == null || (longOrNull = JsonElementKt.getLongOrNull(jsonPrimitive)) == null) ? 0L : longOrNull.longValue());
                }
                break;
            case -1569165660:
                if (content.equals("user_attribute_updated")) {
                    Object obj2 = jsonObject.get("attributes");
                    Intrinsics.checkNotNull(obj2);
                    Object objConvertFromJsonElement = ConvertersKt.convertFromJsonElement(JsonElementKt.getJsonArray((JsonElement) obj2));
                    Intrinsics.checkNotNull(objConvertFromJsonElement, "null cannot be cast to non-null type kotlin.collections.List<kotlin.collections.Map<kotlin.String, kotlin.Any>>");
                    List<Map> list = (List) objConvertFromJsonElement;
                    LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list, 10)), 16));
                    for (Map map2 : list) {
                        Object obj3 = map2.get("key");
                        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                        String str5 = (String) obj3;
                        Object obj4 = map2.get(RNConstants.ARG_VALUE);
                        if (obj4 == null) {
                            obj4 = "";
                        }
                        Pair pair = TuplesKt.to(str5, obj4);
                        linkedHashMap.put(pair.getFirst(), pair.getSecond());
                    }
                    return new PaywallMessage.UserAttributesUpdated(linkedHashMap);
                }
                break;
            case -1539915881:
                if (content.equals("custom_placement")) {
                    Object obj5 = jsonObject.get("name");
                    Intrinsics.checkNotNull(obj5);
                    String content2 = JsonElementKt.getJsonPrimitive((JsonElement) obj5).getContent();
                    Object obj6 = jsonObject.get("params");
                    Intrinsics.checkNotNull(obj6);
                    return new PaywallMessage.CustomPlacement(content2, JsonElementKt.getJsonObject((JsonElement) obj6));
                }
                break;
            case -1349088399:
                if (content.equals("custom")) {
                    Object obj7 = jsonObject.get("data");
                    Intrinsics.checkNotNull(obj7);
                    return new PaywallMessage.Custom(JsonElementKt.getJsonPrimitive((JsonElement) obj7).getContent());
                }
                break;
            case -561690241:
                if (content.equals("request_permission")) {
                    JsonElement jsonElement7 = (JsonElement) jsonObject.get("permission_type");
                    if (jsonElement7 == null || (jsonPrimitive7 = JsonElementKt.getJsonPrimitive(jsonElement7)) == null || (contentOrNull5 = JsonElementKt.getContentOrNull(jsonPrimitive7)) == null) {
                        throw new IllegalArgumentException("request_permission missing permission_type");
                    }
                    PermissionType permissionTypeFromRaw = PermissionType.INSTANCE.fromRaw(contentOrNull5);
                    if (permissionTypeFromRaw == null) {
                        throw new IllegalArgumentException("Unknown permission_type: " + contentOrNull5);
                    }
                    JsonElement jsonElement8 = (JsonElement) jsonObject.get("request_id");
                    if (jsonElement8 == null || (jsonPrimitive8 = JsonElementKt.getJsonPrimitive(jsonElement8)) == null || (contentOrNull6 = JsonElementKt.getContentOrNull(jsonPrimitive8)) == null) {
                        throw new IllegalArgumentException("request_permission missing request_id");
                    }
                    return new PaywallMessage.RequestPermission(permissionTypeFromRaw, contentOrNull6);
                }
                break;
            case -504306182:
                if (content.equals("open_url")) {
                    Object obj8 = jsonObject.get(ImagesContract.URL);
                    Intrinsics.checkNotNull(obj8);
                    URI uri = new URI(JsonElementKt.getJsonPrimitive((JsonElement) obj8).getContent());
                    JsonElement jsonElement9 = (JsonElement) jsonObject.get("browser_type");
                    if (jsonElement9 != null && (jsonPrimitive9 = JsonElementKt.getJsonPrimitive(jsonElement9)) != null && (contentOrNull7 = JsonElementKt.getContentOrNull(jsonPrimitive9)) != null && Intrinsics.areEqual(contentOrNull7, PaywallMessage.OpenUrl.BrowserType.PAYMENT_SHEET.getRawName())) {
                        browserType = PaywallMessage.OpenUrl.BrowserType.PAYMENT_SHEET;
                    }
                    return new PaywallMessage.OpenUrl(uri, browserType);
                }
                break;
            case 3441010:
                if (content.equals("ping")) {
                    Object obj9 = jsonObject.get("version");
                    Intrinsics.checkNotNull(obj9);
                    return new PaywallMessage.OnReady(JsonElementKt.getJsonPrimitive((JsonElement) obj9).getContent());
                }
                break;
            case 94756344:
                if (content.equals("close")) {
                    return PaywallMessage.Close.INSTANCE;
                }
                break;
            case 651675760:
                if (content.equals("open_url_external")) {
                    Object obj10 = jsonObject.get(ImagesContract.URL);
                    Intrinsics.checkNotNull(obj10);
                    return new PaywallMessage.OpenUrlInBrowser(new URI(JsonElementKt.getJsonPrimitive((JsonElement) obj10).getContent()));
                }
                break;
            case 864604149:
                if (content.equals("request_callback")) {
                    JsonElement jsonElement10 = (JsonElement) jsonObject.get("request_id");
                    if (jsonElement10 == null || (jsonPrimitive10 = JsonElementKt.getJsonPrimitive(jsonElement10)) == null || (contentOrNull8 = JsonElementKt.getContentOrNull(jsonPrimitive10)) == null) {
                        throw new IllegalArgumentException("request_callback missing request_id");
                    }
                    JsonElement jsonElement11 = (JsonElement) jsonObject.get("name");
                    if (jsonElement11 == null || (jsonPrimitive11 = JsonElementKt.getJsonPrimitive(jsonElement11)) == null || (contentOrNull9 = JsonElementKt.getContentOrNull(jsonPrimitive11)) == null) {
                        throw new IllegalArgumentException("request_callback missing name");
                    }
                    JsonElement jsonElement12 = (JsonElement) jsonObject.get("behavior");
                    if (jsonElement12 == null || (jsonPrimitive12 = JsonElementKt.getJsonPrimitive(jsonElement12)) == null || (contentOrNull10 = JsonElementKt.getContentOrNull(jsonPrimitive12)) == null) {
                        throw new IllegalArgumentException("request_callback missing behavior");
                    }
                    CustomCallbackBehavior customCallbackBehaviorFromRaw = CustomCallbackBehavior.INSTANCE.fromRaw(contentOrNull10);
                    if (customCallbackBehaviorFromRaw == null) {
                        throw new IllegalArgumentException("Unknown behavior: " + contentOrNull10);
                    }
                    JsonElement jsonElement13 = (JsonElement) jsonObject.get("variables");
                    if (jsonElement13 != null && (jsonObject2 = JsonElementKt.getJsonObject(jsonElement13)) != null) {
                        Object objConvertFromJsonElement2 = ConvertersKt.convertFromJsonElement(jsonObject2);
                        if (objConvertFromJsonElement2 instanceof Map) {
                            map = (Map) objConvertFromJsonElement2;
                        }
                    }
                    return new PaywallMessage.RequestCallback(contentOrNull8, contentOrNull9, customCallbackBehaviorFromRaw, map);
                }
                break;
            case 883937877:
                if (content.equals("page_view")) {
                    Object obj11 = jsonObject.get("page_node_id");
                    Intrinsics.checkNotNull(obj11);
                    String content3 = JsonElementKt.getJsonPrimitive((JsonElement) obj11).getContent();
                    Object obj12 = jsonObject.get("flow_position");
                    Intrinsics.checkNotNull(obj12);
                    int i = JsonElementKt.getInt(JsonElementKt.getJsonPrimitive((JsonElement) obj12));
                    Object obj13 = jsonObject.get("page_name");
                    Intrinsics.checkNotNull(obj13);
                    String content4 = JsonElementKt.getJsonPrimitive((JsonElement) obj13).getContent();
                    Object obj14 = jsonObject.get("navigation_node_id");
                    Intrinsics.checkNotNull(obj14);
                    String content5 = JsonElementKt.getJsonPrimitive((JsonElement) obj14).getContent();
                    JsonElement jsonElement14 = (JsonElement) jsonObject.get("previous_page_node_id");
                    String contentOrNull13 = (jsonElement14 == null || (jsonPrimitive15 = JsonElementKt.getJsonPrimitive(jsonElement14)) == null) ? null : JsonElementKt.getContentOrNull(jsonPrimitive15);
                    JsonElement jsonElement15 = (JsonElement) jsonObject.get("previous_flow_position");
                    Integer intOrNull2 = (jsonElement15 == null || (jsonPrimitive14 = JsonElementKt.getJsonPrimitive(jsonElement15)) == null) ? null : JsonElementKt.getIntOrNull(jsonPrimitive14);
                    Object obj15 = jsonObject.get("type");
                    Intrinsics.checkNotNull(obj15);
                    String content6 = JsonElementKt.getJsonPrimitive((JsonElement) obj15).getContent();
                    JsonElement jsonElement16 = (JsonElement) jsonObject.get("time_on_previous_page_ms");
                    if (jsonElement16 != null && (jsonPrimitive13 = JsonElementKt.getJsonPrimitive(jsonElement16)) != null) {
                        intOrNull = JsonElementKt.getIntOrNull(jsonPrimitive13);
                    }
                    return new PaywallMessage.PageView(new PageViewData(content3, i, content4, content5, contentOrNull13, intOrNull2, content6, intOrNull));
                }
                break;
            case 1097519758:
                if (content.equals("restore")) {
                    return PaywallMessage.Restore.INSTANCE;
                }
                break;
            case 1742914598:
                if (content.equals("request_store_review")) {
                    Object obj16 = jsonObject.get("review_type");
                    Intrinsics.checkNotNull(obj16);
                    String content7 = JsonElementKt.getJsonPrimitive((JsonElement) obj16).getContent();
                    return new PaywallMessage.RequestReview(Intrinsics.areEqual(content7, "external") ? PaywallMessage.RequestReview.Type.EXTERNAL : Intrinsics.areEqual(content7, "in-app") ? PaywallMessage.RequestReview.Type.INAPP : PaywallMessage.RequestReview.Type.INAPP);
                }
                break;
            case 1743324417:
                if (content.equals("purchase")) {
                    Object obj17 = jsonObject.get("product");
                    Intrinsics.checkNotNull(obj17);
                    String content8 = JsonElementKt.getJsonPrimitive((JsonElement) obj17).getContent();
                    Object obj18 = jsonObject.get("product_identifier");
                    Intrinsics.checkNotNull(obj18);
                    String content9 = JsonElementKt.getJsonPrimitive((JsonElement) obj18).getContent();
                    JsonElement jsonElement17 = (JsonElement) jsonObject.get("should_dismiss");
                    return new PaywallMessage.Purchase(content8, content9, (jsonElement17 == null || (jsonPrimitive16 = JsonElementKt.getJsonPrimitive(jsonElement17)) == null || (booleanOrNull = JsonElementKt.getBooleanOrNull(jsonPrimitive16)) == null) ? true : booleanOrNull.booleanValue());
                }
                break;
            case 1882031149:
                if (content.equals("haptic_feedback")) {
                    JsonElement jsonElement18 = (JsonElement) jsonObject.get("haptic_type");
                    if (jsonElement18 == null || (jsonPrimitive17 = JsonElementKt.getJsonPrimitive(jsonElement18)) == null || (contentOrNull11 = JsonElementKt.getContentOrNull(jsonPrimitive17)) == null || (hapticTypeFromRaw = PaywallMessage.HapticFeedback.HapticType.INSTANCE.fromRaw(contentOrNull11)) == null) {
                        throw new IllegalArgumentException("haptic_feedback missing or unknown haptic_type");
                    }
                    return new PaywallMessage.HapticFeedback(hapticTypeFromRaw);
                }
                break;
            case 2097998776:
                if (content.equals("open_deep_link")) {
                    Object obj19 = jsonObject.get("link");
                    Intrinsics.checkNotNull(obj19);
                    return new PaywallMessage.OpenDeepLink(new URI(JsonElementKt.getJsonPrimitive((JsonElement) obj19).getContent()));
                }
                break;
        }
        throw new IllegalArgumentException("Unknown event name: " + content);
    }
}
