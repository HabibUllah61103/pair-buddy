package com.superwall.sdk.paywall.presentation.internal.operators;

import com.superwall.sdk.Superwall;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogPresentation.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a&\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0002¨\u0006\b"}, d2 = {"logPresentation", "", "", "", "Lcom/superwall/sdk/Superwall;", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "message", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class LogPresentationKt {
    public static final Map<String, Object> logPresentation(Superwall superwall, PresentationRequest request, String message) {
        String string;
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(message, "message");
        EventData eventData = request.getPresentationInfo().getEventData();
        Pair[] pairArr = new Pair[2];
        pairArr[0] = TuplesKt.to("on", String.valueOf(request.getPresenter()));
        if (eventData == null || (string = eventData.toString()) == null) {
            string = "";
        }
        pairArr[1] = TuplesKt.to("fromEvent", string);
        Map<String, Object> mapMapOf = MapsKt.mapOf(pairArr);
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallPresentation, message, mapMapOf, null, 16, null);
        return mapMapOf;
    }
}
