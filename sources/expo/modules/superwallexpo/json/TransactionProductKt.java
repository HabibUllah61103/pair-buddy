package expo.modules.superwallexpo.json;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.os.EnvironmentCompat;
import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.analytics.superwall.TransactionProduct;
import com.superwall.sdk.store.abstractions.product.SubscriptionPeriod;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionProduct.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/analytics/superwall/TransactionProduct;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class TransactionProductKt {

    /* JADX INFO: compiled from: TransactionProduct.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SubscriptionPeriod.Unit.values().length];
            try {
                iArr[SubscriptionPeriod.Unit.day.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SubscriptionPeriod.Unit.week.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SubscriptionPeriod.Unit.month.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SubscriptionPeriod.Unit.year.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Map<String, Object> toJson(TransactionProduct transactionProduct) {
        String str;
        int days;
        Intrinsics.checkNotNullParameter(transactionProduct, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        linkedHashMap.put("id", transactionProduct.getId());
        linkedHashMap.put("productIdentifier", transactionProduct.getId());
        linkedHashMap.put("fullIdentifier", transactionProduct.getId());
        linkedHashMap.put("price", Double.valueOf(transactionProduct.getPrice().getRaw().doubleValue()));
        linkedHashMap.put("localizedPrice", transactionProduct.getPrice().getLocalized());
        linkedHashMap.put("dailyPrice", transactionProduct.getPrice().getDaily());
        linkedHashMap.put("weeklyPrice", transactionProduct.getPrice().getWeekly());
        linkedHashMap.put("monthlyPrice", transactionProduct.getPrice().getMonthly());
        linkedHashMap.put("yearlyPrice", transactionProduct.getPrice().getYearly());
        linkedHashMap.put(Constants.LOCALE, transactionProduct.getLocale());
        linkedHashMap.put("languageCode", transactionProduct.getLanguageCode());
        linkedHashMap.put("currencyCode", transactionProduct.getCurrency().getCode());
        linkedHashMap.put("currencySymbol", transactionProduct.getCurrency().getSymbol());
        linkedHashMap.put("attributes", MapsKt.emptyMap());
        TransactionProduct.Period period = transactionProduct.getPeriod();
        String str2 = "0";
        if (period != null) {
            linkedHashMap.put("localizedSubscriptionPeriod", period.getAlt());
            String lowerCase = period.getUnit().name().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            linkedHashMap.put(TypedValues.Cycle.S_WAVE_PERIOD, lowerCase);
            linkedHashMap.put("periodly", period.getLy());
            linkedHashMap.put("periodDays", Integer.valueOf(period.getDays()));
            linkedHashMap.put("periodDaysString", String.valueOf(period.getDays()));
            linkedHashMap.put("periodWeeks", Integer.valueOf(period.getWeeks()));
            linkedHashMap.put("periodWeeksString", String.valueOf(period.getWeeks()));
            linkedHashMap.put("periodMonths", Integer.valueOf(period.getMonths()));
            linkedHashMap.put("periodMonthsString", String.valueOf(period.getMonths()));
            linkedHashMap.put("periodYears", Integer.valueOf(period.getYears()));
            linkedHashMap.put("periodYearsString", String.valueOf(period.getYears()));
            int i = WhenMappings.$EnumSwitchMapping$0[period.getUnit().ordinal()];
            if (i == 1) {
                str = "day";
            } else if (i == 2) {
                str = "week";
            } else if (i == 3) {
                str = "month";
            } else if (i == 4) {
                str = "year";
            } else {
                str = EnvironmentCompat.MEDIA_UNKNOWN;
            }
            int i2 = WhenMappings.$EnumSwitchMapping$0[period.getUnit().ordinal()];
            if (i2 == 1) {
                days = period.getDays();
            } else if (i2 == 2) {
                days = period.getWeeks();
            } else if (i2 == 3) {
                days = period.getMonths();
            } else {
                days = i2 != 4 ? 1 : period.getYears();
            }
            linkedHashMap.put("subscriptionPeriod", MapsKt.mapOf(TuplesKt.to("unit", str), TuplesKt.to(RNConstants.ARG_VALUE, Integer.valueOf(days))));
            str2 = "0";
        } else {
            linkedHashMap.put("localizedSubscriptionPeriod", "");
            linkedHashMap.put(TypedValues.Cycle.S_WAVE_PERIOD, "");
            linkedHashMap.put("periodly", "");
            linkedHashMap.put("periodDays", 0);
            linkedHashMap.put("periodDaysString", "0");
            linkedHashMap.put("periodWeeks", 0);
            linkedHashMap.put("periodWeeksString", "0");
            linkedHashMap.put("periodMonths", 0);
            linkedHashMap.put("periodMonthsString", "0");
            linkedHashMap.put("periodYears", 0);
            linkedHashMap.put("periodYearsString", "0");
            linkedHashMap.put("subscriptionPeriod", null);
        }
        TransactionProduct.TrialPeriod trialPeriod = transactionProduct.getTrialPeriod();
        if (trialPeriod != null) {
            linkedHashMap.put("hasFreeTrial", true);
            linkedHashMap.put("trialPeriodDays", Integer.valueOf(trialPeriod.getDays()));
            linkedHashMap.put("trialPeriodDaysString", String.valueOf(trialPeriod.getDays()));
            linkedHashMap.put("trialPeriodWeeks", Integer.valueOf(trialPeriod.getWeeks()));
            linkedHashMap.put("trialPeriodWeeksString", String.valueOf(trialPeriod.getWeeks()));
            linkedHashMap.put("trialPeriodMonths", Integer.valueOf(trialPeriod.getMonths()));
            linkedHashMap.put("trialPeriodMonthsString", String.valueOf(trialPeriod.getMonths()));
            linkedHashMap.put("trialPeriodYears", Integer.valueOf(trialPeriod.getYears()));
            linkedHashMap.put("trialPeriodYearsString", String.valueOf(trialPeriod.getYears()));
            linkedHashMap.put("trialPeriodText", trialPeriod.getText());
            Date endAt = trialPeriod.getEndAt();
            if (endAt != null) {
                String str3 = simpleDateFormat.format(endAt);
                linkedHashMap.put("trialPeriodEndDate", str3);
                linkedHashMap.put("trialPeriodEndDateString", str3);
            } else {
                linkedHashMap.put("trialPeriodEndDate", null);
                linkedHashMap.put("trialPeriodEndDateString", "");
            }
            linkedHashMap.put("localizedTrialPeriodPrice", "");
            linkedHashMap.put("trialPeriodPrice", 0);
            return linkedHashMap;
        }
        linkedHashMap.put("hasFreeTrial", false);
        linkedHashMap.put("trialPeriodDays", 0);
        linkedHashMap.put("trialPeriodDaysString", str2);
        linkedHashMap.put("trialPeriodWeeks", 0);
        linkedHashMap.put("trialPeriodWeeksString", str2);
        linkedHashMap.put("trialPeriodMonths", 0);
        linkedHashMap.put("trialPeriodMonthsString", str2);
        linkedHashMap.put("trialPeriodYears", 0);
        linkedHashMap.put("trialPeriodYearsString", str2);
        linkedHashMap.put("trialPeriodText", "");
        linkedHashMap.put("trialPeriodEndDate", null);
        linkedHashMap.put("trialPeriodEndDateString", "");
        linkedHashMap.put("localizedTrialPeriodPrice", "");
        linkedHashMap.put("trialPeriodPrice", 0);
        return linkedHashMap;
    }
}
