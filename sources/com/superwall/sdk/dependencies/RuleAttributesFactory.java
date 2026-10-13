package com.superwall.sdk.dependencies;

import androidx.core.app.NotificationCompat;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.models.events.EventData;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: FactoryProtocols.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH¦@¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/dependencies/RuleAttributesFactory;", "", "makeRuleAttributes", "", "", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/models/events/EventData;", "computedPropertyRequests", "", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;", "(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface RuleAttributesFactory {
    Object makeRuleAttributes(EventData eventData, List<ComputedPropertyRequest> list, Continuation<? super Map<String, ? extends Object>> continuation);
}
