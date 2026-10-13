package com.superwall.sdk.debug.localizations;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: LocalizationLogic.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0005J\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/debug/localizations/LocalizationLogic;", "", "<init>", "()V", "getSortedLocalizations", "", "Lcom/superwall/sdk/debug/localizations/LocalizationOption;", "localeIds", "", "popularLocales", "getGroupings", "Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;", "localizationOptions", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LocalizationLogic {
    public static final LocalizationLogic INSTANCE = new LocalizationLogic();

    private LocalizationLogic() {
    }

    public final List<LocalizationOption> getSortedLocalizations(List<String> localeIds, List<String> popularLocales) {
        String displayLanguage;
        String displayCountry;
        Intrinsics.checkNotNullParameter(localeIds, "localeIds");
        Intrinsics.checkNotNullParameter(popularLocales, "popularLocales");
        ArrayList arrayList = new ArrayList();
        for (String str : localeIds) {
            Locale locale = new Locale(str);
            List listSplit$default = StringsKt.split$default((CharSequence) str, new String[]{"_"}, false, 0, 6, (Object) null);
            String displayLanguage2 = locale.getDisplayLanguage();
            Intrinsics.checkNotNullExpressionValue(displayLanguage2, "getDisplayLanguage(...)");
            if (displayLanguage2.length() > 0) {
                displayLanguage = locale.getDisplayLanguage();
            } else {
                displayLanguage = listSplit$default.size() > 1 ? new Locale("", (String) CollectionsKt.first(listSplit$default)).getDisplayLanguage() : "";
            }
            String displayCountry2 = locale.getDisplayCountry();
            Intrinsics.checkNotNullExpressionValue(displayCountry2, "getDisplayCountry(...)");
            if (displayCountry2.length() > 0) {
                displayCountry = locale.getDisplayCountry();
            } else {
                displayCountry = listSplit$default.size() > 1 ? new Locale("", (String) CollectionsKt.last(listSplit$default)).getDisplayCountry() : null;
            }
            arrayList.add(new LocalizationOption(displayLanguage, displayCountry, str, popularLocales));
        }
        if (arrayList.size() > 1) {
            CollectionsKt.sortWith(arrayList, new Comparator() { // from class: com.superwall.sdk.debug.localizations.LocalizationLogic$getSortedLocalizations$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(((LocalizationOption) t).getSortDescription(), ((LocalizationOption) t2).getSortDescription());
                }
            });
        }
        return arrayList;
    }

    public final List<LocalizationGrouping> getGroupings(List<LocalizationOption> localizationOptions) {
        Intrinsics.checkNotNullParameter(localizationOptions, "localizationOptions");
        ArrayList arrayList = new ArrayList();
        for (LocalizationOption localizationOption : localizationOptions) {
            String sectionTitle = localizationOption.getSectionTitle();
            LocalizationGrouping localizationGrouping = (LocalizationGrouping) CollectionsKt.lastOrNull((List) arrayList);
            if (!Intrinsics.areEqual(localizationGrouping != null ? localizationGrouping.getTitle() : null, sectionTitle)) {
                arrayList.add(new LocalizationGrouping(new ArrayList(), sectionTitle));
            }
            ((LocalizationGrouping) CollectionsKt.last((List) arrayList)).getLocalizations().add(localizationOption);
        }
        return arrayList;
    }
}
