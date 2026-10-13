package com.fourplex.lovio;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: WidgetSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002R&\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00060\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/fourplex/lovio/WidgetLocalization;", "", "<init>", "()V", "strings", "", "", "Lcom/fourplex/lovio/WidgetStringKey;", "text", "context", "Landroid/content/Context;", "key", Constants.LOCALE, "Ljava/util/Locale;", "lowercased", "resolveLanguageTag", "readStoredLocale", "normalizeLanguageTag", RNConstants.ARG_VALUE, "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WidgetLocalization {
    public static final WidgetLocalization INSTANCE = new WidgetLocalization();
    private static final Map<String, Map<WidgetStringKey, String>> strings = MapsKt.mapOf(TuplesKt.to("en", MapsKt.mapOf(TuplesKt.to(WidgetStringKey.Days, "Days"), TuplesKt.to(WidgetStringKey.DaysTogether, "Days Together"), TuplesKt.to(WidgetStringKey.Together, "together"), TuplesKt.to(WidgetStringKey.TogetherFor, "Together for"), TuplesKt.to(WidgetStringKey.HoursShort, "HRS"), TuplesKt.to(WidgetStringKey.MinutesShort, "MIN"), TuplesKt.to(WidgetStringKey.SecondsShort, "SEC"), TuplesKt.to(WidgetStringKey.WaitingForDrawing, "Waiting for drawing..."), TuplesKt.to(WidgetStringKey.NoMemories, "No memories"), TuplesKt.to(WidgetStringKey.Partner, "Partner"), TuplesKt.to(WidgetStringKey.You, "You"), TuplesKt.to(WidgetStringKey.DistanceTogether, "We're together"), TuplesKt.to(WidgetStringKey.DistancePrefix, "Our distance"), TuplesKt.to(WidgetStringKey.DistanceWaiting, "Waiting"), TuplesKt.to(WidgetStringKey.DistanceTrackingOff, "Tracking Off"), TuplesKt.to(WidgetStringKey.DistancePermission, "Permission"))), TuplesKt.to("fr", MapsKt.mapOf(TuplesKt.to(WidgetStringKey.Days, "Jours"), TuplesKt.to(WidgetStringKey.DaysTogether, "Jours ensemble"), TuplesKt.to(WidgetStringKey.Together, "ensemble"), TuplesKt.to(WidgetStringKey.TogetherFor, "Ensemble depuis"), TuplesKt.to(WidgetStringKey.HoursShort, "H"), TuplesKt.to(WidgetStringKey.MinutesShort, "MIN"), TuplesKt.to(WidgetStringKey.SecondsShort, ExifInterface.LATITUDE_SOUTH), TuplesKt.to(WidgetStringKey.WaitingForDrawing, "En attente d’un dessin..."), TuplesKt.to(WidgetStringKey.NoMemories, "Aucun souvenir"), TuplesKt.to(WidgetStringKey.Partner, "Partenaire"), TuplesKt.to(WidgetStringKey.You, "Vous"), TuplesKt.to(WidgetStringKey.DistanceTogether, "On est ensemble"), TuplesKt.to(WidgetStringKey.DistancePrefix, "Distance"), TuplesKt.to(WidgetStringKey.DistanceWaiting, "Attente"), TuplesKt.to(WidgetStringKey.DistanceTrackingOff, "Suivi coupé"), TuplesKt.to(WidgetStringKey.DistancePermission, "Permission"))), TuplesKt.to("ko", MapsKt.mapOf(TuplesKt.to(WidgetStringKey.Days, "일"), TuplesKt.to(WidgetStringKey.DaysTogether, "함께한 날"), TuplesKt.to(WidgetStringKey.Together, "함께"), TuplesKt.to(WidgetStringKey.TogetherFor, "함께한 시간"), TuplesKt.to(WidgetStringKey.HoursShort, "시"), TuplesKt.to(WidgetStringKey.MinutesShort, "분"), TuplesKt.to(WidgetStringKey.SecondsShort, "초"), TuplesKt.to(WidgetStringKey.WaitingForDrawing, "그림을 기다리는 중..."), TuplesKt.to(WidgetStringKey.NoMemories, "추억 없음"), TuplesKt.to(WidgetStringKey.Partner, "파트너"), TuplesKt.to(WidgetStringKey.You, "나"), TuplesKt.to(WidgetStringKey.DistanceTogether, "함께 있어요"), TuplesKt.to(WidgetStringKey.DistancePrefix, "우리 거리"), TuplesKt.to(WidgetStringKey.DistanceWaiting, "대기 중"), TuplesKt.to(WidgetStringKey.DistanceTrackingOff, "추적 꺼짐"), TuplesKt.to(WidgetStringKey.DistancePermission, "권한 필요"))), TuplesKt.to("de", MapsKt.mapOf(TuplesKt.to(WidgetStringKey.Days, "Tage"), TuplesKt.to(WidgetStringKey.DaysTogether, "Tage zusammen"), TuplesKt.to(WidgetStringKey.Together, "zusammen"), TuplesKt.to(WidgetStringKey.TogetherFor, "Zusammen seit"), TuplesKt.to(WidgetStringKey.HoursShort, "STD"), TuplesKt.to(WidgetStringKey.MinutesShort, "MIN"), TuplesKt.to(WidgetStringKey.SecondsShort, "SEK"), TuplesKt.to(WidgetStringKey.WaitingForDrawing, "Warte auf Zeichnung..."), TuplesKt.to(WidgetStringKey.NoMemories, "Keine Erinnerungen"), TuplesKt.to(WidgetStringKey.Partner, "Partner"), TuplesKt.to(WidgetStringKey.You, "Du"), TuplesKt.to(WidgetStringKey.DistanceTogether, "Wir sind zusammen"), TuplesKt.to(WidgetStringKey.DistancePrefix, "Unsere Distanz"), TuplesKt.to(WidgetStringKey.DistanceWaiting, "Warten"), TuplesKt.to(WidgetStringKey.DistanceTrackingOff, "Tracking aus"), TuplesKt.to(WidgetStringKey.DistancePermission, "Berechtigung"))), TuplesKt.to("es", MapsKt.mapOf(TuplesKt.to(WidgetStringKey.Days, "días"), TuplesKt.to(WidgetStringKey.DaysTogether, "Días juntos"), TuplesKt.to(WidgetStringKey.Together, "juntos"), TuplesKt.to(WidgetStringKey.TogetherFor, "Juntos desde"), TuplesKt.to(WidgetStringKey.HoursShort, "H"), TuplesKt.to(WidgetStringKey.MinutesShort, "MIN"), TuplesKt.to(WidgetStringKey.SecondsShort, ExifInterface.LATITUDE_SOUTH), TuplesKt.to(WidgetStringKey.WaitingForDrawing, "Esperando dibujo..."), TuplesKt.to(WidgetStringKey.NoMemories, "Sin recuerdos"), TuplesKt.to(WidgetStringKey.Partner, "Pareja"), TuplesKt.to(WidgetStringKey.You, "Tú"), TuplesKt.to(WidgetStringKey.DistanceTogether, "Estamos juntos"), TuplesKt.to(WidgetStringKey.DistancePrefix, "Nuestra distancia"), TuplesKt.to(WidgetStringKey.DistanceWaiting, "Esperando"), TuplesKt.to(WidgetStringKey.DistanceTrackingOff, "Sin seguimiento"), TuplesKt.to(WidgetStringKey.DistancePermission, "Permiso"))));

    private WidgetLocalization() {
    }

    public final String text(Context context, WidgetStringKey key) {
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(key, "key");
        String strResolveLanguageTag = resolveLanguageTag(context);
        Map<String, Map<WidgetStringKey, String>> map = strings;
        Map<WidgetStringKey, String> map2 = map.get(strResolveLanguageTag);
        if (map2 != null && (str = map2.get(key)) != null) {
            return str;
        }
        Map<WidgetStringKey, String> map3 = map.get("en");
        String str2 = map3 != null ? map3.get(key) : null;
        return str2 == null ? "" : str2;
    }

    public final Locale locale(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String strResolveLanguageTag = resolveLanguageTag(context);
        int iHashCode = strResolveLanguageTag.hashCode();
        if (iHashCode != 3201) {
            if (iHashCode != 3246) {
                if (iHashCode != 3276) {
                    if (iHashCode == 3428 && strResolveLanguageTag.equals("ko")) {
                        Locale KOREAN = Locale.KOREAN;
                        Intrinsics.checkNotNullExpressionValue(KOREAN, "KOREAN");
                        return KOREAN;
                    }
                } else if (strResolveLanguageTag.equals("fr")) {
                    Locale FRENCH = Locale.FRENCH;
                    Intrinsics.checkNotNullExpressionValue(FRENCH, "FRENCH");
                    return FRENCH;
                }
            } else if (strResolveLanguageTag.equals("es")) {
                return new Locale("es");
            }
        } else if (strResolveLanguageTag.equals("de")) {
            Locale GERMAN = Locale.GERMAN;
            Intrinsics.checkNotNullExpressionValue(GERMAN, "GERMAN");
            return GERMAN;
        }
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        return ENGLISH;
    }

    public final String lowercased(Context context, WidgetStringKey key) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(key, "key");
        String lowerCase = text(context, key).toLowerCase(locale(context));
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    private final String resolveLanguageTag(Context context) {
        String strNormalizeLanguageTag;
        String storedLocale = readStoredLocale(context);
        if (storedLocale != null && (strNormalizeLanguageTag = INSTANCE.normalizeLanguageTag(storedLocale)) != null) {
            return strNormalizeLanguageTag;
        }
        String languageTag = Locale.getDefault().toLanguageTag();
        Intrinsics.checkNotNull(languageTag);
        String strNormalizeLanguageTag2 = normalizeLanguageTag(languageTag);
        return strNormalizeLanguageTag2 == null ? "en" : strNormalizeLanguageTag2;
    }

    private final String readStoredLocale(Context context) {
        SharedPreferences sharedPreferencesPreferences = WidgetState.INSTANCE.preferences(context);
        String string = sharedPreferencesPreferences.getString("widget_locale", null);
        if (string != null) {
            return string;
        }
        String string2 = sharedPreferencesPreferences.getString("widget_data", null);
        if (string2 == null) {
            return null;
        }
        try {
            String strOptString = new JSONObject(string2).optString(Constants.LOCALE);
            Intrinsics.checkNotNull(strOptString);
            if (StringsKt.isBlank(strOptString)) {
                return null;
            }
            return strOptString;
        } catch (Exception unused) {
        }
    }

    private final String normalizeLanguageTag(String value) {
        String string = StringsKt.trim((CharSequence) value).toString();
        Locale ROOT = Locale.ROOT;
        Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
        String lowerCase = string.toLowerCase(ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String strTrim = StringsKt.trim(StringsKt.replace$default(lowerCase, "_", "-", false, 4, (Object) null), '\"');
        String str = "fr";
        if (!Intrinsics.areEqual(strTrim, "fr") && !StringsKt.startsWith$default(strTrim, "fr-", false, 2, (Object) null)) {
            str = "ko";
            if (!Intrinsics.areEqual(strTrim, "ko") && !StringsKt.startsWith$default(strTrim, "ko-", false, 2, (Object) null)) {
                str = "de";
                if (!Intrinsics.areEqual(strTrim, "de") && !StringsKt.startsWith$default(strTrim, "de-", false, 2, (Object) null)) {
                    str = "es";
                    if (!Intrinsics.areEqual(strTrim, "es") && !StringsKt.startsWith$default(strTrim, "es-", false, 2, (Object) null)) {
                        str = "en";
                        if (!Intrinsics.areEqual(strTrim, "en") && !StringsKt.startsWith$default(strTrim, "en-", false, 2, (Object) null)) {
                            return null;
                        }
                    }
                }
            }
        }
        return str;
    }
}
