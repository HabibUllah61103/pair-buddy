package com.superwall.sdk.debug.localizations;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LocalizationManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u0006R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\b¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/debug/localizations/LocalizationManager;", "", "<init>", "()V", "popularLocales", "", "", "getPopularLocales", "()Ljava/util/List;", "localizationGroupings", "Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;", "getLocalizationGroupings", "searchTerm", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LocalizationManager {
    private final List<LocalizationGrouping> localizationGroupings;
    private final List<String> popularLocales = CollectionsKt.listOf((Object[]) new String[]{"de_DE", "es_US"});

    public LocalizationManager() {
        Locale[] availableLocales = Locale.getAvailableLocales();
        Intrinsics.checkNotNullExpressionValue(availableLocales, "getAvailableLocales(...)");
        Locale[] localeArr = availableLocales;
        ArrayList arrayList = new ArrayList(localeArr.length);
        for (Locale locale : localeArr) {
            arrayList.add(locale.toString());
        }
        this.localizationGroupings = LocalizationLogic.INSTANCE.getGroupings(LocalizationLogic.INSTANCE.getSortedLocalizations(arrayList, this.popularLocales));
    }

    public final List<String> getPopularLocales() {
        return this.popularLocales;
    }

    public final List<LocalizationGrouping> getLocalizationGroupings() {
        return this.localizationGroupings;
    }

    /* JADX WARN: Code duplicated, block: B:5:0x000f  */
    public final List<LocalizationGrouping> localizationGroupings(String searchTerm) {
        String lowerCase;
        if (searchTerm != null) {
            lowerCase = searchTerm.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (lowerCase == null) {
                lowerCase = "";
            }
        } else {
            lowerCase = "";
        }
        if (lowerCase.length() == 0) {
            return this.localizationGroupings;
        }
        List<LocalizationGrouping> list = this.localizationGroupings;
        ArrayList arrayList = new ArrayList();
        for (LocalizationGrouping localizationGrouping : list) {
            List<LocalizationOption> localizations = localizationGrouping.getLocalizations();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : localizations) {
                if (((LocalizationOption) obj).included(lowerCase)) {
                    arrayList2.add(obj);
                }
            }
            List mutableList = CollectionsKt.toMutableList((Collection) arrayList2);
            LocalizationGrouping localizationGrouping2 = !mutableList.isEmpty() ? new LocalizationGrouping(mutableList, localizationGrouping.getTitle()) : null;
            if (localizationGrouping2 != null) {
                arrayList.add(localizationGrouping2);
            }
        }
        return arrayList;
    }
}
