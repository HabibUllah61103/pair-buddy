package com.superwall.sdk.dependencies;

import com.superwall.sdk.models.customer.CustomerInfo;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: FactoryProtocols.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H&¨\u0006\u0005"}, d2 = {"Lcom/superwall/sdk/dependencies/CustomerInfoFactory;", "", "customerInfoFlow", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface CustomerInfoFactory {
    StateFlow<CustomerInfo> customerInfoFlow();
}
