package com.superwall.sdk.store.abstractions.product;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.hermes.intl.Constants;
import expo.modules.notifications.service.NotificationsService;
import java.math.BigDecimal;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: compiled from: StoreProductType.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010^\u001a\u00020\u00032\u0006\u0010_\u001a\u00020`H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0012\u0010\b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0012\u0010\f\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u0005R\u0012\u0010\u000e\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0005R\u0012\u0010\u0010\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0005R\u0012\u0010\u0012\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0005R\u0012\u0010\u0014\u001a\u00020\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0005R\u0012\u0010\u001a\u001a\u00020\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0017R\u0012\u0010\u001c\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0005R\u0012\u0010\u001e\u001a\u00020\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0017R\u0012\u0010 \u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u0005R\u0012\u0010\"\u001a\u00020\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\u0017R\u0012\u0010$\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b%\u0010\u0005R\u0012\u0010&\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b'\u0010\u0005R\u0012\u0010(\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b)\u0010\u0005R\u0012\u0010*\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b+\u0010\u0005R\u0012\u0010,\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b-\u0010\u0005R\u0012\u0010.\u001a\u00020/X¦\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u0012\u00102\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b3\u0010\u0005R\u0012\u00104\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b5\u0010\u000bR\u0014\u00106\u001a\u0004\u0018\u000107X¦\u0004¢\u0006\u0006\u001a\u0004\b8\u00109R\u0012\u0010:\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b;\u0010\u0005R\u0012\u0010<\u001a\u00020\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b=\u0010\u0017R\u0012\u0010>\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b?\u0010\u0005R\u0012\u0010@\u001a\u00020\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\bA\u0010\u0017R\u0012\u0010B\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\bC\u0010\u0005R\u0012\u0010D\u001a\u00020\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\bE\u0010\u0017R\u0012\u0010F\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\bG\u0010\u0005R\u0012\u0010H\u001a\u00020\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\bI\u0010\u0017R\u0012\u0010J\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\bK\u0010\u0005R\u0012\u0010L\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\bM\u0010\u0005R\u0012\u0010N\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\bO\u0010\u0005R\u0014\u0010P\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010\u0005R\u0014\u0010R\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\bS\u0010\u0005R\u0014\u0010T\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\bU\u0010\u0005R\u0014\u0010V\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\bW\u0010\u0005R\u0014\u0010X\u001a\u0004\u0018\u00010YX¦\u0004¢\u0006\u0006\u001a\u0004\bZ\u0010[R\u0012\u0010\\\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b]\u0010\u0005R \u0010a\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bc\u0010d¨\u0006e"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "", "fullIdentifier", "", "getFullIdentifier", "()Ljava/lang/String;", "productIdentifier", "getProductIdentifier", "price", "Ljava/math/BigDecimal;", "getPrice", "()Ljava/math/BigDecimal;", "localizedPrice", "getLocalizedPrice", "localizedSubscriptionPeriod", "getLocalizedSubscriptionPeriod", TypedValues.Cycle.S_WAVE_PERIOD, "getPeriod", "periodly", "getPeriodly", "periodWeeks", "", "getPeriodWeeks", "()I", "periodWeeksString", "getPeriodWeeksString", "periodMonths", "getPeriodMonths", "periodMonthsString", "getPeriodMonthsString", "periodYears", "getPeriodYears", "periodYearsString", "getPeriodYearsString", "periodDays", "getPeriodDays", "periodDaysString", "getPeriodDaysString", "dailyPrice", "getDailyPrice", "weeklyPrice", "getWeeklyPrice", "monthlyPrice", "getMonthlyPrice", "yearlyPrice", "getYearlyPrice", "hasFreeTrial", "", "getHasFreeTrial", "()Z", "localizedTrialPeriodPrice", "getLocalizedTrialPeriodPrice", "trialPeriodPrice", "getTrialPeriodPrice", "trialPeriodEndDate", "Ljava/util/Date;", "getTrialPeriodEndDate", "()Ljava/util/Date;", "trialPeriodEndDateString", "getTrialPeriodEndDateString", "trialPeriodDays", "getTrialPeriodDays", "trialPeriodDaysString", "getTrialPeriodDaysString", "trialPeriodWeeks", "getTrialPeriodWeeks", "trialPeriodWeeksString", "getTrialPeriodWeeksString", "trialPeriodMonths", "getTrialPeriodMonths", "trialPeriodMonthsString", "getTrialPeriodMonthsString", "trialPeriodYears", "getTrialPeriodYears", "trialPeriodYearsString", "getTrialPeriodYearsString", "trialPeriodText", "getTrialPeriodText", Constants.LOCALE, "getLocale", "languageCode", "getLanguageCode", "currencyCode", "getCurrencyCode", "currencySymbol", "getCurrencySymbol", "regionCode", "getRegionCode", "subscriptionPeriod", "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;", "getSubscriptionPeriod", "()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;", "productType", "getProductType", "trialPeriodPricePerUnit", "unit", "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;", "attributes", "", "getAttributes", "()Ljava/util/Map;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface StoreProductType {
    Map<String, String> getAttributes();

    String getCurrencyCode();

    String getCurrencySymbol();

    String getDailyPrice();

    String getFullIdentifier();

    boolean getHasFreeTrial();

    String getLanguageCode();

    String getLocale();

    String getLocalizedPrice();

    String getLocalizedSubscriptionPeriod();

    String getLocalizedTrialPeriodPrice();

    String getMonthlyPrice();

    String getPeriod();

    int getPeriodDays();

    String getPeriodDaysString();

    int getPeriodMonths();

    String getPeriodMonthsString();

    int getPeriodWeeks();

    String getPeriodWeeksString();

    int getPeriodYears();

    String getPeriodYearsString();

    String getPeriodly();

    BigDecimal getPrice();

    String getProductIdentifier();

    String getProductType();

    String getRegionCode();

    SubscriptionPeriod getSubscriptionPeriod();

    int getTrialPeriodDays();

    String getTrialPeriodDaysString();

    Date getTrialPeriodEndDate();

    String getTrialPeriodEndDateString();

    int getTrialPeriodMonths();

    String getTrialPeriodMonthsString();

    BigDecimal getTrialPeriodPrice();

    String getTrialPeriodText();

    int getTrialPeriodWeeks();

    String getTrialPeriodWeeksString();

    int getTrialPeriodYears();

    String getTrialPeriodYearsString();

    String getWeeklyPrice();

    String getYearlyPrice();

    String trialPeriodPricePerUnit(SubscriptionPeriod.Unit unit);

    /* JADX INFO: compiled from: StoreProductType.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static Map<String, String> getAttributes(StoreProductType storeProductType) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("rawPrice", storeProductType.getPrice().toString());
            linkedHashMap.put("price", storeProductType.getLocalizedPrice());
            linkedHashMap.put("periodAlt", storeProductType.getLocalizedSubscriptionPeriod());
            linkedHashMap.put("localizedPeriod", storeProductType.getLocalizedSubscriptionPeriod());
            linkedHashMap.put(TypedValues.Cycle.S_WAVE_PERIOD, storeProductType.getPeriod());
            linkedHashMap.put("periodly", storeProductType.getPeriodly());
            linkedHashMap.put("weeklyPrice", storeProductType.getWeeklyPrice());
            linkedHashMap.put("dailyPrice", storeProductType.getDailyPrice());
            linkedHashMap.put("monthlyPrice", storeProductType.getMonthlyPrice());
            linkedHashMap.put("yearlyPrice", storeProductType.getYearlyPrice());
            linkedHashMap.put("rawTrialPeriodPrice", storeProductType.getTrialPeriodPrice().toString());
            linkedHashMap.put("trialPeriodPrice", storeProductType.getLocalizedTrialPeriodPrice());
            linkedHashMap.put("trialPeriodDailyPrice", storeProductType.trialPeriodPricePerUnit(SubscriptionPeriod.Unit.day));
            linkedHashMap.put("trialPeriodWeeklyPrice", storeProductType.trialPeriodPricePerUnit(SubscriptionPeriod.Unit.week));
            linkedHashMap.put("trialPeriodMonthlyPrice", storeProductType.trialPeriodPricePerUnit(SubscriptionPeriod.Unit.month));
            linkedHashMap.put("trialPeriodYearlyPrice", storeProductType.trialPeriodPricePerUnit(SubscriptionPeriod.Unit.year));
            linkedHashMap.put("trialPeriodDays", storeProductType.getTrialPeriodDaysString());
            linkedHashMap.put("trialPeriodWeeks", storeProductType.getTrialPeriodWeeksString());
            linkedHashMap.put("trialPeriodMonths", storeProductType.getTrialPeriodMonthsString());
            linkedHashMap.put("trialPeriodYears", storeProductType.getTrialPeriodYearsString());
            linkedHashMap.put("trialPeriodText", storeProductType.getTrialPeriodText());
            linkedHashMap.put("trialPeriodEndDate", storeProductType.getTrialPeriodEndDateString());
            linkedHashMap.put("periodDays", storeProductType.getPeriodDaysString());
            linkedHashMap.put("periodWeeks", storeProductType.getPeriodWeeksString());
            linkedHashMap.put("periodMonths", storeProductType.getPeriodMonthsString());
            linkedHashMap.put("periodYears", storeProductType.getPeriodYearsString());
            linkedHashMap.put(Constants.LOCALE, storeProductType.getLocale());
            String languageCode = storeProductType.getLanguageCode();
            if (languageCode == null) {
                languageCode = "n/a";
            }
            linkedHashMap.put("languageCode", languageCode);
            String currencyCode = storeProductType.getCurrencyCode();
            if (currencyCode == null) {
                currencyCode = "n/a";
            }
            linkedHashMap.put("currencyCode", currencyCode);
            String currencySymbol = storeProductType.getCurrencySymbol();
            linkedHashMap.put("currencySymbol", currencySymbol != null ? currencySymbol : "n/a");
            linkedHashMap.put(NotificationsService.IDENTIFIER_KEY, storeProductType.getFullIdentifier());
            linkedHashMap.put("productIdentifier", storeProductType.getProductIdentifier());
            return linkedHashMap;
        }
    }
}
