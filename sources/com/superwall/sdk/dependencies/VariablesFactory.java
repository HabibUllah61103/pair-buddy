package com.superwall.sdk.dependencies;

import androidx.core.app.NotificationCompat;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.product.ProductVariable;
import com.superwall.sdk.paywall.view.webview.templating.models.JsonVariables;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: FactoryProtocols.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J6\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\b\u0010\t\u001a\u0004\u0018\u00010\nH¦@¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/dependencies/VariablesFactory;", "", "makeJsonVariables", "Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;", "products", "", "Lcom/superwall/sdk/models/product/ProductVariable;", "computedPropertyRequests", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/models/events/EventData;", "(Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface VariablesFactory {
    Object makeJsonVariables(List<ProductVariable> list, List<ComputedPropertyRequest> list2, EventData eventData, Continuation<? super JsonVariables> continuation);
}
