package com.superwall.sdk.dependencies;

import com.superwall.sdk.network.device.DeviceInfo;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: FactoryProtocols.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J*\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u0007j\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u0001`\tH¦@¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/dependencies/DeviceHelperFactory;", "", "makeDeviceInfo", "Lcom/superwall/sdk/network/device/DeviceInfo;", "makeIsSandbox", "", "makeSessionDeviceAttributes", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface DeviceHelperFactory {
    DeviceInfo makeDeviceInfo();

    boolean makeIsSandbox();

    Object makeSessionDeviceAttributes(Continuation<? super HashMap<String, Object>> continuation);
}
