package com.superwall.sdk.network.device;

import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DeviceHelper.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0000¨\u0006\u0002"}, d2 = {"asPadded", "", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class DeviceHelperKt {
    public static final String asPadded(String str) {
        String str2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        List listSplit$default = StringsKt.split$default((CharSequence) str, new String[]{"-"}, false, 0, 6, (Object) null);
        String str3 = "";
        if (listSplit$default.isEmpty()) {
            return "";
        }
        String str4 = (String) listSplit$default.get(0);
        if (listSplit$default.size() > 1) {
            List listSplit$default2 = StringsKt.split$default((CharSequence) listSplit$default.get(1), new String[]{"."}, false, 0, 6, (Object) null);
            str2 = "-" + listSplit$default2.get(0);
            if (listSplit$default2.size() > 1) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                Locale locale = Locale.US;
                Integer intOrNull = StringsKt.toIntOrNull((String) listSplit$default2.get(1));
                String str5 = String.format(locale, "%03d", Arrays.copyOf(new Object[]{Integer.valueOf(intOrNull != null ? intOrNull.intValue() : 0)}, 1));
                Intrinsics.checkNotNullExpressionValue(str5, "format(...)");
                str2 = str2 + "." + str5;
            }
        } else {
            str2 = "";
        }
        List listSplit$default3 = StringsKt.split$default((CharSequence) str4, new String[]{"."}, false, 0, 6, (Object) null);
        if (!listSplit$default3.isEmpty()) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            Locale locale2 = Locale.US;
            Integer intOrNull2 = StringsKt.toIntOrNull((String) listSplit$default3.get(0));
            String str6 = String.format(locale2, "%03d", Arrays.copyOf(new Object[]{Integer.valueOf(intOrNull2 != null ? intOrNull2.intValue() : 0)}, 1));
            Intrinsics.checkNotNullExpressionValue(str6, "format(...)");
            str3 = "" + str6;
        }
        if (listSplit$default3.size() > 1) {
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
            Locale locale3 = Locale.US;
            Integer intOrNull3 = StringsKt.toIntOrNull((String) listSplit$default3.get(1));
            String str7 = String.format(locale3, "%03d", Arrays.copyOf(new Object[]{Integer.valueOf(intOrNull3 != null ? intOrNull3.intValue() : 0)}, 1));
            Intrinsics.checkNotNullExpressionValue(str7, "format(...)");
            str3 = str3 + "." + str7;
        }
        if (listSplit$default3.size() > 2) {
            StringCompanionObject stringCompanionObject4 = StringCompanionObject.INSTANCE;
            Locale locale4 = Locale.US;
            Integer intOrNull4 = StringsKt.toIntOrNull((String) listSplit$default3.get(2));
            String str8 = String.format(locale4, "%03d", Arrays.copyOf(new Object[]{Integer.valueOf(intOrNull4 != null ? intOrNull4.intValue() : 0)}, 1));
            Intrinsics.checkNotNullExpressionValue(str8, "format(...)");
            str3 = str3 + "." + str8;
        }
        return str3 + str2;
    }
}
