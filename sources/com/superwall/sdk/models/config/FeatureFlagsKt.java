package com.superwall.sdk.models.config;

import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FeatureFlags.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a \u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0001¨\u0006\u0007"}, d2 = {RNConstants.ARG_VALUE, "", "", "Lcom/superwall/sdk/models/config/RawFeatureFlag;", "key", "", Constants.COLLATION_DEFAULT, "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class FeatureFlagsKt {
    public static final boolean value(List<RawFeatureFlag> list, String key, boolean z) {
        Object next;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual(((RawFeatureFlag) next).getKey(), key));
        RawFeatureFlag rawFeatureFlag = (RawFeatureFlag) next;
        return rawFeatureFlag != null ? rawFeatureFlag.getEnabled() : z;
    }
}
