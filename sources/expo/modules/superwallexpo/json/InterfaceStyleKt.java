package expo.modules.superwallexpo.json;

import com.superwall.sdk.network.device.InterfaceStyle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InterfaceStyle.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"interfaceStyleFromString", "Lcom/superwall/sdk/network/device/InterfaceStyle;", "interfaceStyle", "", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class InterfaceStyleKt {
    public static final InterfaceStyle interfaceStyleFromString(String interfaceStyle) {
        Intrinsics.checkNotNullParameter(interfaceStyle, "interfaceStyle");
        if (Intrinsics.areEqual(interfaceStyle, "LIGHT")) {
            return InterfaceStyle.LIGHT;
        }
        return Intrinsics.areEqual(interfaceStyle, "DARK") ? InterfaceStyle.DARK : InterfaceStyle.LIGHT;
    }
}
