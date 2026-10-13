package com.superwall.sdk.misc;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: String+Helpers.kt.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u001a\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0002¨\u0006\u0004"}, d2 = {"camelCaseToSnakeCase", "", "processCamelCaseRegex", "pattern", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class String_Helpers_ktKt {
    public static final String camelCaseToSnakeCase(String str) {
        String strProcessCamelCaseRegex;
        String strProcessCamelCaseRegex2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        String strProcessCamelCaseRegex3 = processCamelCaseRegex(str, "([A-Z]+)([A-Z][a-z]|[0-9])");
        if (strProcessCamelCaseRegex3 != null && (strProcessCamelCaseRegex = processCamelCaseRegex(strProcessCamelCaseRegex3, "([a-z])([A-Z]|[0-9])")) != null && (strProcessCamelCaseRegex2 = processCamelCaseRegex(strProcessCamelCaseRegex, "([0-9])([A-Z])")) != null) {
            String lowerCase = strProcessCamelCaseRegex2.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (lowerCase != null) {
                return lowerCase;
            }
        }
        String lowerCase2 = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        return lowerCase2;
    }

    private static final String processCamelCaseRegex(String str, String str2) {
        String strReplace = new Regex(str2).replace(str, new Function1() { // from class: com.superwall.sdk.misc.String_Helpers_ktKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return String_Helpers_ktKt.processCamelCaseRegex$lambda$0((MatchResult) obj);
            }
        });
        if (StringsKt.isBlank(strReplace)) {
            return null;
        }
        return strReplace;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence processCamelCaseRegex$lambda$0(MatchResult matchResult) {
        Intrinsics.checkNotNullParameter(matchResult, "matchResult");
        MatchGroup matchGroup = matchResult.getGroups().get(1);
        String value = matchGroup != null ? matchGroup.getValue() : null;
        MatchGroup matchGroup2 = matchResult.getGroups().get(2);
        return value + "_" + (matchGroup2 != null ? matchGroup2.getValue() : null);
    }
}
