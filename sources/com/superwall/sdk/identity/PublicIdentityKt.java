package com.superwall.sdk.identity;

import com.superwall.sdk.Superwall;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: PublicIdentity.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u001a \u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u001a*\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\n0\t2\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\n0\t¨\u0006\f"}, d2 = {"identify", "", "Lcom/superwall/sdk/Superwall;", "userId", "", "options", "Lcom/superwall/sdk/identity/IdentityOptions;", "setUserAttributes", "attributes", "", "", "cleanAttributes", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PublicIdentityKt {
    public static /* synthetic */ void identify$default(Superwall superwall, String str, IdentityOptions identityOptions, int i, Object obj) {
        if ((i & 2) != 0) {
            identityOptions = null;
        }
        identify(superwall, str, identityOptions);
    }

    public static final void identify(Superwall superwall, String userId, IdentityOptions identityOptions) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(userId, "userId");
        superwall.getDependencyContainer$superwall_release().getIdentityManager().identify(userId, identityOptions);
    }

    public static final void setUserAttributes(Superwall superwall, Map<String, ? extends Object> attributes) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        IdentityManager.mergeUserAttributes$default(superwall.getDependencyContainer$superwall_release().getIdentityManager(), cleanAttributes(attributes), false, 2, null);
    }

    public static final Map<String, Object> cleanAttributes(Map<String, ? extends Object> attributes) {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : attributes.keySet()) {
            if (!StringsKt.startsWith$default(str, "$", false, 2, (Object) null)) {
                linkedHashMap.put(str, attributes.get(str));
            }
        }
        return MapsKt.toMap(linkedHashMap);
    }
}
