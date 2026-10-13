package expo.modules.superwallexpo.json;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.store.abstractions.product.StoreProductType;
import com.superwall.sdk.store.abstractions.product.SubscriptionPeriod;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StoreProduct.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class StoreProductKt {
    public static final Map<String, Object> toJson(StoreProductType storeProductType) {
        Intrinsics.checkNotNullParameter(storeProductType, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        DateTimeFormatter dateTimeFormatterWithLocale = DateTimeFormatter.ISO_DATE_TIME.withLocale(Locale.getDefault());
        linkedHashMap.put("fullIdentifier", storeProductType.getFullIdentifier());
        linkedHashMap.put("productIdentifier", storeProductType.getProductIdentifier());
        linkedHashMap.put("localizedPrice", storeProductType.getLocalizedPrice());
        linkedHashMap.put("localizedSubscriptionPeriod", storeProductType.getLocalizedSubscriptionPeriod());
        linkedHashMap.put(TypedValues.Cycle.S_WAVE_PERIOD, storeProductType.getPeriod());
        linkedHashMap.put("periodly", storeProductType.getPeriodly());
        linkedHashMap.put("periodWeeks", Integer.valueOf(storeProductType.getPeriodWeeks()));
        linkedHashMap.put("periodWeeksString", storeProductType.getPeriodWeeksString());
        linkedHashMap.put("periodMonths", Integer.valueOf(storeProductType.getPeriodMonths()));
        linkedHashMap.put("periodMonthsString", storeProductType.getPeriodMonthsString());
        linkedHashMap.put("periodYears", Integer.valueOf(storeProductType.getPeriodYears()));
        linkedHashMap.put("periodYearsString", storeProductType.getPeriodYearsString());
        linkedHashMap.put("periodDays", Integer.valueOf(storeProductType.getPeriodDays()));
        linkedHashMap.put("periodDaysString", storeProductType.getPeriodDaysString());
        linkedHashMap.put("dailyPrice", storeProductType.getDailyPrice());
        linkedHashMap.put("weeklyPrice", storeProductType.getWeeklyPrice());
        linkedHashMap.put("monthlyPrice", storeProductType.getMonthlyPrice());
        linkedHashMap.put("yearlyPrice", storeProductType.getYearlyPrice());
        linkedHashMap.put("hasFreeTrial", Boolean.valueOf(storeProductType.getHasFreeTrial()));
        linkedHashMap.put("trialPeriodEndDateString", storeProductType.getTrialPeriodEndDateString());
        linkedHashMap.put("localizedTrialPeriodPrice", storeProductType.getLocalizedTrialPeriodPrice());
        linkedHashMap.put("trialPeriodPrice", Double.valueOf(storeProductType.getTrialPeriodPrice().doubleValue()));
        linkedHashMap.put("trialPeriodDays", Integer.valueOf(storeProductType.getTrialPeriodDays()));
        linkedHashMap.put("trialPeriodDaysString", storeProductType.getTrialPeriodDaysString());
        linkedHashMap.put("trialPeriodWeeks", Integer.valueOf(storeProductType.getTrialPeriodWeeks()));
        linkedHashMap.put("trialPeriodWeeksString", storeProductType.getTrialPeriodWeeksString());
        linkedHashMap.put("trialPeriodMonths", Integer.valueOf(storeProductType.getTrialPeriodMonths()));
        linkedHashMap.put("trialPeriodMonthsString", storeProductType.getTrialPeriodMonthsString());
        linkedHashMap.put("trialPeriodYears", Integer.valueOf(storeProductType.getTrialPeriodYears()));
        linkedHashMap.put("trialPeriodYearsString", storeProductType.getTrialPeriodYearsString());
        linkedHashMap.put("trialPeriodText", storeProductType.getTrialPeriodText());
        linkedHashMap.put(Constants.LOCALE, storeProductType.getLocale());
        linkedHashMap.put("languageCode", storeProductType.getLanguageCode());
        linkedHashMap.put("currencyCode", storeProductType.getCurrencyCode());
        linkedHashMap.put("currencySymbol", storeProductType.getCurrencySymbol());
        linkedHashMap.put("regionCode", storeProductType.getRegionCode());
        linkedHashMap.put("price", Double.valueOf(storeProductType.getPrice().doubleValue()));
        SubscriptionPeriod subscriptionPeriod = storeProductType.getSubscriptionPeriod();
        if (subscriptionPeriod != null) {
            linkedHashMap.put("subscriptionPeriod", MapsKt.mapOf(TuplesKt.to(RNConstants.ARG_VALUE, Integer.valueOf(subscriptionPeriod.getValue())), TuplesKt.to("unit", subscriptionPeriod.getUnit().name())));
        } else {
            linkedHashMap.put("subscriptionPeriod", null);
        }
        Date trialPeriodEndDate = storeProductType.getTrialPeriodEndDate();
        if (trialPeriodEndDate != null) {
            linkedHashMap.put("trialPeriodEndDate", trialPeriodEndDate.toInstant().atZone(ZoneId.systemDefault()).format(dateTimeFormatterWithLocale));
            return linkedHashMap;
        }
        linkedHashMap.put("trialPeriodEndDate", null);
        return linkedHashMap;
    }
}
