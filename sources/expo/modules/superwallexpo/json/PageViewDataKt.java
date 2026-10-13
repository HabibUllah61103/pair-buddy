package expo.modules.superwallexpo.json;

import com.superwall.sdk.paywall.view.webview.messaging.PageViewData;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PageViewData.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class PageViewDataKt {
    public static final Map<String, Object> toJson(PageViewData pageViewData) {
        Intrinsics.checkNotNullParameter(pageViewData, "<this>");
        Map<String, Object> mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("pageNodeId", pageViewData.getPageNodeId()), TuplesKt.to("flowPosition", Integer.valueOf(pageViewData.getFlowPosition())), TuplesKt.to("pageName", pageViewData.getPageName()), TuplesKt.to("navigationNodeId", pageViewData.getNavigationNodeId()), TuplesKt.to("navigationType", pageViewData.getNavigationType()));
        String previousPageNodeId = pageViewData.getPreviousPageNodeId();
        if (previousPageNodeId != null) {
            mapMutableMapOf.put("previousPageNodeId", previousPageNodeId);
        }
        Integer previousFlowPosition = pageViewData.getPreviousFlowPosition();
        if (previousFlowPosition != null) {
            mapMutableMapOf.put("previousFlowPosition", Integer.valueOf(previousFlowPosition.intValue()));
        }
        Integer timeOnPreviousPageMs = pageViewData.getTimeOnPreviousPageMs();
        if (timeOnPreviousPageMs != null) {
            mapMutableMapOf.put("timeOnPreviousPageMs", Integer.valueOf(timeOnPreviousPageMs.intValue()));
        }
        return mapMutableMapOf;
    }
}
