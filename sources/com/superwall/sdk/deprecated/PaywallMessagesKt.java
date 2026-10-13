package com.superwall.sdk.deprecated;

import android.net.Uri;
import com.google.android.gms.common.internal.ImagesContract;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.net.URI;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: PaywallMessages.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002¨\u0006\b"}, d2 = {"parseWrappedPaywallMessages", "Lcom/superwall/sdk/deprecated/WrappedPaywallMessages;", "jsonString", "", "parsePaywallMessage", "Lcom/superwall/sdk/deprecated/PaywallMessage;", "json", "Lorg/json/JSONObject;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PaywallMessagesKt {
    public static final WrappedPaywallMessages parseWrappedPaywallMessages(String jsonString) throws JSONException {
        Either failure;
        Intrinsics.checkNotNullParameter(jsonString, "jsonString");
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "SWWebViewInterface:" + jsonString, null, null, 24, null);
        JSONObject jSONObject = new JSONObject(jsonString);
        int iOptInt = jSONObject.optInt("version", 1);
        JSONArray jSONArray = jSONObject.getJSONObject("payload").getJSONArray("events");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            try {
                Intrinsics.checkNotNull(jSONObject2);
                failure = new Either.Success(Boolean.valueOf(arrayList.add(parsePaywallMessage(jSONObject2))));
            } catch (Throwable th) {
                if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                    ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
                }
                failure = new Either.Failure(th);
            }
            EitherKt.onError(failure, new Function1() { // from class: com.superwall.sdk.deprecated.PaywallMessagesKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PaywallMessagesKt.parseWrappedPaywallMessages$lambda$1((Throwable) obj);
                }
            });
        }
        return new WrappedPaywallMessages(iOptInt, new PayloadMessages(arrayList));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit parseWrappedPaywallMessages$lambda$1(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.printStackTrace();
        return Unit.INSTANCE;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static final PaywallMessage parsePaywallMessage(JSONObject jSONObject) throws JSONException {
        String string = jSONObject.getString("event_name");
        if (string != null) {
            switch (string.hashCode()) {
                case -1349088399:
                    if (string.equals("custom")) {
                        String string2 = jSONObject.getString("data");
                        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                        return new PaywallMessage.Custom(string2);
                    }
                    break;
                case -504306182:
                    if (string.equals("open_url")) {
                        return new PaywallMessage.OpenUrl(new URI(jSONObject.getString(ImagesContract.URL)));
                    }
                    break;
                case 3441010:
                    if (string.equals("ping")) {
                        String string3 = jSONObject.getString("version");
                        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                        return new PaywallMessage.OnReady(string3);
                    }
                    break;
                case 94756344:
                    if (string.equals("close")) {
                        return PaywallMessage.Close.INSTANCE;
                    }
                    break;
                case 651675760:
                    if (string.equals("open_url_external")) {
                        return new PaywallMessage.OpenUrlInBrowser(new URI(jSONObject.getString(ImagesContract.URL)));
                    }
                    break;
                case 1097519758:
                    if (string.equals("restore")) {
                        return PaywallMessage.Restore.INSTANCE;
                    }
                    break;
                case 1743324417:
                    if (string.equals("purchase")) {
                        String string4 = jSONObject.getString("product");
                        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                        return new PaywallMessage.Purchase(string4);
                    }
                    break;
                case 2097998776:
                    if (string.equals("open_deep_link")) {
                        Uri uri = Uri.parse(jSONObject.getString("link"));
                        Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
                        return new PaywallMessage.OpenDeepLink(uri);
                    }
                    break;
            }
        }
        throw new IllegalArgumentException("Unknown event name: " + string);
    }
}
