package com.fourplex.lovio;

import android.content.Context;
import com.reactcommunity.rndatetimepicker.RNConstants;
import java.time.Instant;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeParseException;
import java.time.temporal.ChronoUnit;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: WidgetSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J!\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0002\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\rH\u0002J\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00112\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u0015H\u0002¨\u0006\u0016"}, d2 = {"Lcom/fourplex/lovio/WidgetDataParser;", "", "<init>", "()V", "loadRelationshipWidgetData", "Lcom/fourplex/lovio/RelationshipWidgetData;", "context", "Landroid/content/Context;", "preferencesJson", "Lorg/json/JSONObject;", "calculateDaysTogether", "", "anniversaryDate", "", "fallbackDays", "(Ljava/lang/String;Ljava/lang/Integer;)I", "parseAnniversaryDate", "Ljava/time/LocalDate;", RNConstants.ARG_VALUE, "parseWith", "parser", "Lkotlin/Function0;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WidgetDataParser {
    public static final WidgetDataParser INSTANCE = new WidgetDataParser();

    private WidgetDataParser() {
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0054  */
    /* JADX WARN: Code duplicated, block: B:32:0x0072  */
    /* JADX WARN: Code duplicated, block: B:7:0x0023  */
    public final RelationshipWidgetData loadRelationshipWidgetData(Context context) {
        Integer numValueOf;
        String strOptString;
        String strText;
        String strText2;
        String strOptString2;
        Intrinsics.checkNotNullParameter(context, "context");
        JSONObject jSONObjectPreferencesJson = preferencesJson(context);
        if (jSONObjectPreferencesJson != null) {
            numValueOf = Integer.valueOf(jSONObjectPreferencesJson.optInt("daysTogether"));
            numValueOf.intValue();
            if (jSONObjectPreferencesJson.isNull("daysTogether")) {
                numValueOf = null;
            }
        } else {
            numValueOf = null;
        }
        if (jSONObjectPreferencesJson == null || (strOptString = jSONObjectPreferencesJson.optString("anniversaryDate")) == null || StringsKt.isBlank(strOptString)) {
            strOptString = null;
        }
        int iCalculateDaysTogether = calculateDaysTogether(strOptString, numValueOf);
        if (jSONObjectPreferencesJson == null || (strText = jSONObjectPreferencesJson.optString("partnerName")) == null) {
            strText = WidgetLocalization.INSTANCE.text(context, WidgetStringKey.Partner);
        } else {
            if (StringsKt.isBlank(strText)) {
                strText = null;
            }
            if (strText == null) {
                strText = WidgetLocalization.INSTANCE.text(context, WidgetStringKey.Partner);
            }
        }
        if (jSONObjectPreferencesJson == null || (strOptString2 = jSONObjectPreferencesJson.optString("userName")) == null) {
            strText2 = WidgetLocalization.INSTANCE.text(context, WidgetStringKey.You);
        } else {
            strText2 = StringsKt.isBlank(strOptString2) ? null : strOptString2;
            if (strText2 == null) {
                strText2 = WidgetLocalization.INSTANCE.text(context, WidgetStringKey.You);
            }
        }
        return new RelationshipWidgetData(iCalculateDaysTogether, strText, strText2, strOptString != null);
    }

    private final JSONObject preferencesJson(Context context) {
        String string = WidgetState.INSTANCE.preferences(context).getString("widget_data", null);
        if (string == null) {
            return null;
        }
        try {
            return new JSONObject(string);
        } catch (Exception unused) {
            return null;
        }
    }

    private final int calculateDaysTogether(String anniversaryDate, Integer fallbackDays) {
        LocalDate anniversaryDate2 = anniversaryDate != null ? parseAnniversaryDate(anniversaryDate) : null;
        if (anniversaryDate2 != null) {
            return Math.max(0, (int) ChronoUnit.DAYS.between(anniversaryDate2, LocalDate.now()));
        }
        if (fallbackDays != null) {
            return fallbackDays.intValue();
        }
        return 0;
    }

    private final LocalDate parseAnniversaryDate(final String value) {
        LocalDate with = parseWith(new Function0() { // from class: com.fourplex.lovio.WidgetDataParser$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WidgetDataParser.parseAnniversaryDate$lambda$4(value);
            }
        });
        return (with == null && (with = parseWith(new Function0() { // from class: com.fourplex.lovio.WidgetDataParser$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WidgetDataParser.parseAnniversaryDate$lambda$5(value);
            }
        })) == null) ? parseWith(new Function0() { // from class: com.fourplex.lovio.WidgetDataParser$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WidgetDataParser.parseAnniversaryDate$lambda$6(value);
            }
        }) : with;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LocalDate parseAnniversaryDate$lambda$4(String str) {
        LocalDate localDate = Instant.parse(str).atZone(ZoneId.systemDefault()).toLocalDate();
        Intrinsics.checkNotNullExpressionValue(localDate, "toLocalDate(...)");
        return localDate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LocalDate parseAnniversaryDate$lambda$5(String str) {
        LocalDate localDate = OffsetDateTime.parse(str).atZoneSameInstant(ZoneId.systemDefault()).toLocalDate();
        Intrinsics.checkNotNullExpressionValue(localDate, "toLocalDate(...)");
        return localDate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.time.ZonedDateTime] */
    public static final LocalDate parseAnniversaryDate$lambda$6(String str) {
        LocalDate localDate = ZonedDateTime.parse(str).withZoneSameInstant(ZoneId.systemDefault()).toLocalDate();
        Intrinsics.checkNotNullExpressionValue(localDate, "toLocalDate(...)");
        return localDate;
    }

    private final LocalDate parseWith(Function0<LocalDate> parser) {
        try {
            return parser.invoke();
        } catch (DateTimeParseException | Exception unused) {
            return null;
        }
    }
}
