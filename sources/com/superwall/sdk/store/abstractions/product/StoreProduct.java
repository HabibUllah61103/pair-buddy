package com.superwall.sdk.store.abstractions.product;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.hermes.intl.Constants;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StoreProduct.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0019\u0018\u00002\u00020\u0001B\u001b\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\tJ\u0011\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00118VX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0016R\u0012\u0010\u0019\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0016R\u0012\u0010\u001b\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0016R\u0012\u0010\u001d\u001a\u00020\u001eX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0014\u0010!\u001a\u0004\u0018\u00010\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\"\u0010\u0016R\u0012\u0010#\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b$\u0010\u0016R\u0012\u0010%\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b&\u0010\u0016R\u0012\u0010'\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b(\u0010\u0016R\u0012\u0010)\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b*\u0010\u0016R\u0012\u0010+\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b,\u0010\u0016R\u0012\u0010-\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b.\u0010\u0016R\u0012\u0010/\u001a\u000200X\u0096\u0005¢\u0006\u0006\u001a\u0004\b1\u00102R\u0012\u00103\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b4\u0010\u0016R\u0012\u00105\u001a\u000200X\u0096\u0005¢\u0006\u0006\u001a\u0004\b6\u00102R\u0012\u00107\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b8\u0010\u0016R\u0012\u00109\u001a\u000200X\u0096\u0005¢\u0006\u0006\u001a\u0004\b:\u00102R\u0012\u0010;\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b<\u0010\u0016R\u0012\u0010=\u001a\u000200X\u0096\u0005¢\u0006\u0006\u001a\u0004\b>\u00102R\u0012\u0010?\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b@\u0010\u0016R\u0012\u0010A\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\bB\u0010\u0016R\u0012\u0010C\u001a\u00020DX\u0096\u0005¢\u0006\u0006\u001a\u0004\bE\u0010FR\u0012\u0010G\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\bH\u0010\u0016R\u0012\u0010I\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\bJ\u0010\u0016R\u0014\u0010K\u001a\u0004\u0018\u00010\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\bL\u0010\u0016R\u0014\u0010M\u001a\u0004\u0018\u00010NX\u0096\u0005¢\u0006\u0006\u001a\u0004\bO\u0010PR\u0012\u0010Q\u001a\u000200X\u0096\u0005¢\u0006\u0006\u001a\u0004\bR\u00102R\u0012\u0010S\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\bT\u0010\u0016R\u0014\u0010U\u001a\u0004\u0018\u00010VX\u0096\u0005¢\u0006\u0006\u001a\u0004\bW\u0010XR\u0012\u0010Y\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\bZ\u0010\u0016R\u0012\u0010[\u001a\u000200X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\\\u00102R\u0012\u0010]\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b^\u0010\u0016R\u0012\u0010_\u001a\u00020DX\u0096\u0005¢\u0006\u0006\u001a\u0004\b`\u0010FR\u0012\u0010a\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\bb\u0010\u0016R\u0012\u0010c\u001a\u000200X\u0096\u0005¢\u0006\u0006\u001a\u0004\bd\u00102R\u0012\u0010e\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\bf\u0010\u0016R\u0012\u0010g\u001a\u000200X\u0096\u0005¢\u0006\u0006\u001a\u0004\bh\u00102R\u0012\u0010i\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\bj\u0010\u0016R\u0012\u0010k\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\bl\u0010\u0016R\u0012\u0010m\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\bn\u0010\u0016¨\u0006o"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "rawStoreProduct", "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;", "backingProduct", "<init>", "(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)V", "(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V", "storeProductType", "(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;)V", "getRawStoreProduct", "()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;", "trialPeriodPricePerUnit", "", "unit", "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;", "attributes", "", "getAttributes", "()Ljava/util/Map;", "currencyCode", "getCurrencyCode", "()Ljava/lang/String;", "currencySymbol", "getCurrencySymbol", "dailyPrice", "getDailyPrice", "fullIdentifier", "getFullIdentifier", "hasFreeTrial", "", "getHasFreeTrial", "()Z", "languageCode", "getLanguageCode", Constants.LOCALE, "getLocale", "localizedPrice", "getLocalizedPrice", "localizedSubscriptionPeriod", "getLocalizedSubscriptionPeriod", "localizedTrialPeriodPrice", "getLocalizedTrialPeriodPrice", "monthlyPrice", "getMonthlyPrice", TypedValues.Cycle.S_WAVE_PERIOD, "getPeriod", "periodDays", "", "getPeriodDays", "()I", "periodDaysString", "getPeriodDaysString", "periodMonths", "getPeriodMonths", "periodMonthsString", "getPeriodMonthsString", "periodWeeks", "getPeriodWeeks", "periodWeeksString", "getPeriodWeeksString", "periodYears", "getPeriodYears", "periodYearsString", "getPeriodYearsString", "periodly", "getPeriodly", "price", "Ljava/math/BigDecimal;", "getPrice", "()Ljava/math/BigDecimal;", "productIdentifier", "getProductIdentifier", "productType", "getProductType", "regionCode", "getRegionCode", "subscriptionPeriod", "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;", "getSubscriptionPeriod", "()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;", "trialPeriodDays", "getTrialPeriodDays", "trialPeriodDaysString", "getTrialPeriodDaysString", "trialPeriodEndDate", "Ljava/util/Date;", "getTrialPeriodEndDate", "()Ljava/util/Date;", "trialPeriodEndDateString", "getTrialPeriodEndDateString", "trialPeriodMonths", "getTrialPeriodMonths", "trialPeriodMonthsString", "getTrialPeriodMonthsString", "trialPeriodPrice", "getTrialPeriodPrice", "trialPeriodText", "getTrialPeriodText", "trialPeriodWeeks", "getTrialPeriodWeeks", "trialPeriodWeeksString", "getTrialPeriodWeeksString", "trialPeriodYears", "getTrialPeriodYears", "trialPeriodYearsString", "getTrialPeriodYearsString", "weeklyPrice", "getWeeklyPrice", "yearlyPrice", "getYearlyPrice", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StoreProduct implements StoreProductType {
    private final StoreProductType backingProduct;
    private final RawStoreProduct rawStoreProduct;

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public Map<String, String> getAttributes() {
        return this.backingProduct.getAttributes();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getCurrencyCode() {
        return this.backingProduct.getCurrencyCode();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getCurrencySymbol() {
        return this.backingProduct.getCurrencySymbol();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getDailyPrice() {
        return this.backingProduct.getDailyPrice();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getFullIdentifier() {
        return this.backingProduct.getFullIdentifier();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public boolean getHasFreeTrial() {
        return this.backingProduct.getHasFreeTrial();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLanguageCode() {
        return this.backingProduct.getLanguageCode();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocale() {
        return this.backingProduct.getLocale();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocalizedPrice() {
        return this.backingProduct.getLocalizedPrice();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocalizedSubscriptionPeriod() {
        return this.backingProduct.getLocalizedSubscriptionPeriod();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocalizedTrialPeriodPrice() {
        return this.backingProduct.getLocalizedTrialPeriodPrice();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getMonthlyPrice() {
        return this.backingProduct.getMonthlyPrice();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriod() {
        return this.backingProduct.getPeriod();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodDays() {
        return this.backingProduct.getPeriodDays();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodDaysString() {
        return this.backingProduct.getPeriodDaysString();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodMonths() {
        return this.backingProduct.getPeriodMonths();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodMonthsString() {
        return this.backingProduct.getPeriodMonthsString();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodWeeks() {
        return this.backingProduct.getPeriodWeeks();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodWeeksString() {
        return this.backingProduct.getPeriodWeeksString();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodYears() {
        return this.backingProduct.getPeriodYears();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodYearsString() {
        return this.backingProduct.getPeriodYearsString();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodly() {
        return this.backingProduct.getPeriodly();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public BigDecimal getPrice() {
        return this.backingProduct.getPrice();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getProductIdentifier() {
        return this.backingProduct.getProductIdentifier();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getProductType() {
        return this.backingProduct.getProductType();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getRegionCode() {
        return this.backingProduct.getRegionCode();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public SubscriptionPeriod getSubscriptionPeriod() {
        return this.backingProduct.getSubscriptionPeriod();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodDays() {
        return this.backingProduct.getTrialPeriodDays();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodDaysString() {
        return this.backingProduct.getTrialPeriodDaysString();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public Date getTrialPeriodEndDate() {
        return this.backingProduct.getTrialPeriodEndDate();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodEndDateString() {
        return this.backingProduct.getTrialPeriodEndDateString();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodMonths() {
        return this.backingProduct.getTrialPeriodMonths();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodMonthsString() {
        return this.backingProduct.getTrialPeriodMonthsString();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public BigDecimal getTrialPeriodPrice() {
        return this.backingProduct.getTrialPeriodPrice();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodText() {
        return this.backingProduct.getTrialPeriodText();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodWeeks() {
        return this.backingProduct.getTrialPeriodWeeks();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodWeeksString() {
        return this.backingProduct.getTrialPeriodWeeksString();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodYears() {
        return this.backingProduct.getTrialPeriodYears();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodYearsString() {
        return this.backingProduct.getTrialPeriodYearsString();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getWeeklyPrice() {
        return this.backingProduct.getWeeklyPrice();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getYearlyPrice() {
        return this.backingProduct.getYearlyPrice();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String trialPeriodPricePerUnit(SubscriptionPeriod.Unit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return this.backingProduct.trialPeriodPricePerUnit(unit);
    }

    private StoreProduct(RawStoreProduct rawStoreProduct, StoreProductType storeProductType) {
        this.rawStoreProduct = rawStoreProduct;
        this.backingProduct = storeProductType;
    }

    public final RawStoreProduct getRawStoreProduct() {
        return this.rawStoreProduct;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StoreProduct(RawStoreProduct rawStoreProduct) {
        this(rawStoreProduct, rawStoreProduct);
        Intrinsics.checkNotNullParameter(rawStoreProduct, "rawStoreProduct");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StoreProduct(StoreProductType storeProductType) {
        this(null, storeProductType);
        Intrinsics.checkNotNullParameter(storeProductType, "storeProductType");
    }
}
