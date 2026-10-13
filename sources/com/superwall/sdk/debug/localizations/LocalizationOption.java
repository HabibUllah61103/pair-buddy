package com.superwall.sdk.debug.localizations;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.facebook.hermes.intl.Constants;
import com.google.android.gms.actions.SearchIntents;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: LocalizationOption.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007HÂ\u0003J9\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u00112\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000bR\u0011\u0010\u0015\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u000b¨\u0006#"}, d2 = {"Lcom/superwall/sdk/debug/localizations/LocalizationOption;", "", "language", "", "country", Constants.LOCALE, "popularLocales", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getLanguage", "()Ljava/lang/String;", "getCountry", "getLocale", "description", "getDescription", "isPopular", "", "()Z", "sectionTitle", "getSectionTitle", "sortDescription", "getSortDescription", "included", SearchIntents.EXTRA_QUERY, "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class LocalizationOption {
    private final String country;
    private final String description;
    private final String language;
    private final String locale;
    private final List<String> popularLocales;

    private final List<String> component4() {
        return this.popularLocales;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LocalizationOption copy$default(LocalizationOption localizationOption, String str, String str2, String str3, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = localizationOption.language;
        }
        if ((i & 2) != 0) {
            str2 = localizationOption.country;
        }
        if ((i & 4) != 0) {
            str3 = localizationOption.locale;
        }
        if ((i & 8) != 0) {
            list = localizationOption.popularLocales;
        }
        return localizationOption.copy(str, str2, str3, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLanguage() {
        return this.language;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCountry() {
        return this.country;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getLocale() {
        return this.locale;
    }

    public final LocalizationOption copy(String language, String country, String locale, List<String> popularLocales) {
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(popularLocales, "popularLocales");
        return new LocalizationOption(language, country, locale, popularLocales);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocalizationOption)) {
            return false;
        }
        LocalizationOption localizationOption = (LocalizationOption) other;
        return Intrinsics.areEqual(this.language, localizationOption.language) && Intrinsics.areEqual(this.country, localizationOption.country) && Intrinsics.areEqual(this.locale, localizationOption.locale) && Intrinsics.areEqual(this.popularLocales, localizationOption.popularLocales);
    }

    public int hashCode() {
        int iHashCode = this.language.hashCode() * 31;
        String str = this.country;
        return ((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.locale.hashCode()) * 31) + this.popularLocales.hashCode();
    }

    public String toString() {
        return "LocalizationOption(language=" + this.language + ", country=" + this.country + ", locale=" + this.locale + ", popularLocales=" + this.popularLocales + ")";
    }

    public LocalizationOption(String language, String str, String locale, List<String> popularLocales) {
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(popularLocales, "popularLocales");
        this.language = language;
        this.country = str;
        this.locale = locale;
        this.popularLocales = popularLocales;
        this.description = str != null ? language + " (" + str + ")" : language;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getCountry() {
        return this.country;
    }

    public final String getLocale() {
        return this.locale;
    }

    public final String getDescription() {
        return this.description;
    }

    public final boolean isPopular() {
        return Intrinsics.areEqual(this.locale, "en") || this.popularLocales.contains(this.locale);
    }

    public final String getSectionTitle() {
        if (isPopular()) {
            return "Localized";
        }
        return this.language.length() > 0 ? String.valueOf(Character.toUpperCase(StringsKt.first(this.language))) : "Unknown";
    }

    public final String getSortDescription() {
        return (isPopular() ? CmcdData.OBJECT_TYPE_AUDIO_ONLY : "b") + " " + this.description;
    }

    public final boolean included(String query) {
        Intrinsics.checkNotNullParameter(query, "query");
        String lowerCase = query.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String lowerCase2 = this.description.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        String str = lowerCase;
        if (StringsKt.contains$default((CharSequence) lowerCase2, (CharSequence) str, false, 2, (Object) null)) {
            return true;
        }
        String lowerCase3 = this.locale.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
        return StringsKt.contains$default((CharSequence) lowerCase3, (CharSequence) str, false, 2, (Object) null);
    }
}
