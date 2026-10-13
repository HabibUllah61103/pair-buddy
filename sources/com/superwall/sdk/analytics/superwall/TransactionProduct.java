package com.superwall.sdk.analytics.superwall;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.hermes.intl.Constants;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.abstractions.product.SubscriptionPeriod;
import java.math.BigDecimal;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionProduct.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u0004-./0BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fB\u0011\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0004\b\u000e\u0010\u0012J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010%\u001a\u00020\rHÆ\u0003JU\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\f\u001a\u00020\rHÆ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020+HÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0014R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001e¨\u00061"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/TransactionProduct;", "", "id", "", "price", "Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;", "trialPeriod", "Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;", TypedValues.Cycle.S_WAVE_PERIOD, "Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;", Constants.LOCALE, "languageCode", "currency", "Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Currency;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Currency;)V", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V", "getId", "()Ljava/lang/String;", "getPrice", "()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;", "getTrialPeriod", "()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;", "getPeriod", "()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;", "getLocale", "getLanguageCode", "getCurrency", "()Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Currency;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "", "toString", "Price", "TrialPeriod", "Period", "Currency", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class TransactionProduct {
    private final Currency currency;
    private final String id;
    private final String languageCode;
    private final String locale;
    private final Period period;
    private final Price price;
    private final TrialPeriod trialPeriod;

    public static /* synthetic */ TransactionProduct copy$default(TransactionProduct transactionProduct, String str, Price price, TrialPeriod trialPeriod, Period period, String str2, String str3, Currency currency, int i, Object obj) {
        if ((i & 1) != 0) {
            str = transactionProduct.id;
        }
        if ((i & 2) != 0) {
            price = transactionProduct.price;
        }
        if ((i & 4) != 0) {
            trialPeriod = transactionProduct.trialPeriod;
        }
        if ((i & 8) != 0) {
            period = transactionProduct.period;
        }
        if ((i & 16) != 0) {
            str2 = transactionProduct.locale;
        }
        if ((i & 32) != 0) {
            str3 = transactionProduct.languageCode;
        }
        if ((i & 64) != 0) {
            currency = transactionProduct.currency;
        }
        String str4 = str3;
        Currency currency2 = currency;
        String str5 = str2;
        TrialPeriod trialPeriod2 = trialPeriod;
        return transactionProduct.copy(str, price, trialPeriod2, period, str5, str4, currency2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Price getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final TrialPeriod getTrialPeriod() {
        return this.trialPeriod;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Period getPeriod() {
        return this.period;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getLocale() {
        return this.locale;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getLanguageCode() {
        return this.languageCode;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Currency getCurrency() {
        return this.currency;
    }

    public final TransactionProduct copy(String id, Price price, TrialPeriod trialPeriod, Period period, String locale, String languageCode, Currency currency) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(currency, "currency");
        return new TransactionProduct(id, price, trialPeriod, period, locale, languageCode, currency);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TransactionProduct)) {
            return false;
        }
        TransactionProduct transactionProduct = (TransactionProduct) other;
        return Intrinsics.areEqual(this.id, transactionProduct.id) && Intrinsics.areEqual(this.price, transactionProduct.price) && Intrinsics.areEqual(this.trialPeriod, transactionProduct.trialPeriod) && Intrinsics.areEqual(this.period, transactionProduct.period) && Intrinsics.areEqual(this.locale, transactionProduct.locale) && Intrinsics.areEqual(this.languageCode, transactionProduct.languageCode) && Intrinsics.areEqual(this.currency, transactionProduct.currency);
    }

    public int hashCode() {
        int iHashCode = ((this.id.hashCode() * 31) + this.price.hashCode()) * 31;
        TrialPeriod trialPeriod = this.trialPeriod;
        int iHashCode2 = (iHashCode + (trialPeriod == null ? 0 : trialPeriod.hashCode())) * 31;
        Period period = this.period;
        int iHashCode3 = (((iHashCode2 + (period == null ? 0 : period.hashCode())) * 31) + this.locale.hashCode()) * 31;
        String str = this.languageCode;
        return ((iHashCode3 + (str != null ? str.hashCode() : 0)) * 31) + this.currency.hashCode();
    }

    public String toString() {
        return "TransactionProduct(id=" + this.id + ", price=" + this.price + ", trialPeriod=" + this.trialPeriod + ", period=" + this.period + ", locale=" + this.locale + ", languageCode=" + this.languageCode + ", currency=" + this.currency + ")";
    }

    public TransactionProduct(String id, Price price, TrialPeriod trialPeriod, Period period, String locale, String str, Currency currency) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(currency, "currency");
        this.id = id;
        this.price = price;
        this.trialPeriod = trialPeriod;
        this.period = period;
        this.locale = locale;
        this.languageCode = str;
        this.currency = currency;
    }

    public final String getId() {
        return this.id;
    }

    public final Price getPrice() {
        return this.price;
    }

    public final TrialPeriod getTrialPeriod() {
        return this.trialPeriod;
    }

    public final Period getPeriod() {
        return this.period;
    }

    public final String getLocale() {
        return this.locale;
    }

    public final String getLanguageCode() {
        return this.languageCode;
    }

    public final Currency getCurrency() {
        return this.currency;
    }

    /* JADX INFO: compiled from: TransactionProduct.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003JE\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000f¨\u0006!"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Price;", "", "raw", "Ljava/math/BigDecimal;", "localized", "", "daily", "weekly", "monthly", "yearly", "<init>", "(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getRaw", "()Ljava/math/BigDecimal;", "getLocalized", "()Ljava/lang/String;", "getDaily", "getWeekly", "getMonthly", "getYearly", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Price {
        private final String daily;
        private final String localized;
        private final String monthly;
        private final BigDecimal raw;
        private final String weekly;
        private final String yearly;

        public static /* synthetic */ Price copy$default(Price price, BigDecimal bigDecimal, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
            if ((i & 1) != 0) {
                bigDecimal = price.raw;
            }
            if ((i & 2) != 0) {
                str = price.localized;
            }
            if ((i & 4) != 0) {
                str2 = price.daily;
            }
            if ((i & 8) != 0) {
                str3 = price.weekly;
            }
            if ((i & 16) != 0) {
                str4 = price.monthly;
            }
            if ((i & 32) != 0) {
                str5 = price.yearly;
            }
            String str6 = str4;
            String str7 = str5;
            return price.copy(bigDecimal, str, str2, str3, str6, str7);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final BigDecimal getRaw() {
            return this.raw;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getLocalized() {
            return this.localized;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getDaily() {
            return this.daily;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getWeekly() {
            return this.weekly;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getMonthly() {
            return this.monthly;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getYearly() {
            return this.yearly;
        }

        public final Price copy(BigDecimal raw, String localized, String daily, String weekly, String monthly, String yearly) {
            Intrinsics.checkNotNullParameter(raw, "raw");
            Intrinsics.checkNotNullParameter(localized, "localized");
            Intrinsics.checkNotNullParameter(daily, "daily");
            Intrinsics.checkNotNullParameter(weekly, "weekly");
            Intrinsics.checkNotNullParameter(monthly, "monthly");
            Intrinsics.checkNotNullParameter(yearly, "yearly");
            return new Price(raw, localized, daily, weekly, monthly, yearly);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Price)) {
                return false;
            }
            Price price = (Price) other;
            return Intrinsics.areEqual(this.raw, price.raw) && Intrinsics.areEqual(this.localized, price.localized) && Intrinsics.areEqual(this.daily, price.daily) && Intrinsics.areEqual(this.weekly, price.weekly) && Intrinsics.areEqual(this.monthly, price.monthly) && Intrinsics.areEqual(this.yearly, price.yearly);
        }

        public int hashCode() {
            return (((((((((this.raw.hashCode() * 31) + this.localized.hashCode()) * 31) + this.daily.hashCode()) * 31) + this.weekly.hashCode()) * 31) + this.monthly.hashCode()) * 31) + this.yearly.hashCode();
        }

        public String toString() {
            return "Price(raw=" + this.raw + ", localized=" + this.localized + ", daily=" + this.daily + ", weekly=" + this.weekly + ", monthly=" + this.monthly + ", yearly=" + this.yearly + ")";
        }

        public Price(BigDecimal raw, String localized, String daily, String weekly, String monthly, String yearly) {
            Intrinsics.checkNotNullParameter(raw, "raw");
            Intrinsics.checkNotNullParameter(localized, "localized");
            Intrinsics.checkNotNullParameter(daily, "daily");
            Intrinsics.checkNotNullParameter(weekly, "weekly");
            Intrinsics.checkNotNullParameter(monthly, "monthly");
            Intrinsics.checkNotNullParameter(yearly, "yearly");
            this.raw = raw;
            this.localized = localized;
            this.daily = daily;
            this.weekly = weekly;
            this.monthly = monthly;
            this.yearly = yearly;
        }

        public final BigDecimal getRaw() {
            return this.raw;
        }

        public final String getLocalized() {
            return this.localized;
        }

        public final String getDaily() {
            return this.daily;
        }

        public final String getWeekly() {
            return this.weekly;
        }

        public final String getMonthly() {
            return this.monthly;
        }

        public final String getYearly() {
            return this.yearly;
        }
    }

    /* JADX INFO: compiled from: TransactionProduct.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\bHÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\nHÆ\u0003JG\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\""}, d2 = {"Lcom/superwall/sdk/analytics/superwall/TransactionProduct$TrialPeriod;", "", "days", "", "weeks", "months", "years", "text", "", "endAt", "Ljava/util/Date;", "<init>", "(IIIILjava/lang/String;Ljava/util/Date;)V", "getDays", "()I", "getWeeks", "getMonths", "getYears", "getText", "()Ljava/lang/String;", "getEndAt", "()Ljava/util/Date;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TrialPeriod {
        private final int days;
        private final Date endAt;
        private final int months;
        private final String text;
        private final int weeks;
        private final int years;

        public static /* synthetic */ TrialPeriod copy$default(TrialPeriod trialPeriod, int i, int i2, int i3, int i4, String str, Date date, int i5, Object obj) {
            if ((i5 & 1) != 0) {
                i = trialPeriod.days;
            }
            if ((i5 & 2) != 0) {
                i2 = trialPeriod.weeks;
            }
            if ((i5 & 4) != 0) {
                i3 = trialPeriod.months;
            }
            if ((i5 & 8) != 0) {
                i4 = trialPeriod.years;
            }
            if ((i5 & 16) != 0) {
                str = trialPeriod.text;
            }
            if ((i5 & 32) != 0) {
                date = trialPeriod.endAt;
            }
            String str2 = str;
            Date date2 = date;
            return trialPeriod.copy(i, i2, i3, i4, str2, date2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getDays() {
            return this.days;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getWeeks() {
            return this.weeks;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getMonths() {
            return this.months;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final int getYears() {
            return this.years;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getText() {
            return this.text;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final Date getEndAt() {
            return this.endAt;
        }

        public final TrialPeriod copy(int days, int weeks, int months, int years, String text, Date endAt) {
            Intrinsics.checkNotNullParameter(text, "text");
            return new TrialPeriod(days, weeks, months, years, text, endAt);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TrialPeriod)) {
                return false;
            }
            TrialPeriod trialPeriod = (TrialPeriod) other;
            return this.days == trialPeriod.days && this.weeks == trialPeriod.weeks && this.months == trialPeriod.months && this.years == trialPeriod.years && Intrinsics.areEqual(this.text, trialPeriod.text) && Intrinsics.areEqual(this.endAt, trialPeriod.endAt);
        }

        public int hashCode() {
            int iHashCode = ((((((((Integer.hashCode(this.days) * 31) + Integer.hashCode(this.weeks)) * 31) + Integer.hashCode(this.months)) * 31) + Integer.hashCode(this.years)) * 31) + this.text.hashCode()) * 31;
            Date date = this.endAt;
            return iHashCode + (date == null ? 0 : date.hashCode());
        }

        public String toString() {
            return "TrialPeriod(days=" + this.days + ", weeks=" + this.weeks + ", months=" + this.months + ", years=" + this.years + ", text=" + this.text + ", endAt=" + this.endAt + ")";
        }

        public TrialPeriod(int i, int i2, int i3, int i4, String text, Date date) {
            Intrinsics.checkNotNullParameter(text, "text");
            this.days = i;
            this.weeks = i2;
            this.months = i3;
            this.years = i4;
            this.text = text;
            this.endAt = date;
        }

        public final int getDays() {
            return this.days;
        }

        public final int getWeeks() {
            return this.weeks;
        }

        public final int getMonths() {
            return this.months;
        }

        public final int getYears() {
            return this.years;
        }

        public final String getText() {
            return this.text;
        }

        public final Date getEndAt() {
            return this.endAt;
        }
    }

    /* JADX INFO: compiled from: TransactionProduct.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001b\u001a\u00020\bHÆ\u0003J\t\u0010\u001c\u001a\u00020\bHÆ\u0003J\t\u0010\u001d\u001a\u00020\bHÆ\u0003J\t\u0010\u001e\u001a\u00020\bHÆ\u0003JO\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\bHÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\bHÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\n\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014¨\u0006%"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Period;", "", "alt", "", "ly", "unit", "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;", "days", "", "weeks", "months", "years", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;IIII)V", "getAlt", "()Ljava/lang/String;", "getLy", "getUnit", "()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;", "getDays", "()I", "getWeeks", "getMonths", "getYears", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Period {
        private final String alt;
        private final int days;
        private final String ly;
        private final int months;
        private final SubscriptionPeriod.Unit unit;
        private final int weeks;
        private final int years;

        public static /* synthetic */ Period copy$default(Period period, String str, String str2, SubscriptionPeriod.Unit unit, int i, int i2, int i3, int i4, int i5, Object obj) {
            if ((i5 & 1) != 0) {
                str = period.alt;
            }
            if ((i5 & 2) != 0) {
                str2 = period.ly;
            }
            if ((i5 & 4) != 0) {
                unit = period.unit;
            }
            if ((i5 & 8) != 0) {
                i = period.days;
            }
            if ((i5 & 16) != 0) {
                i2 = period.weeks;
            }
            if ((i5 & 32) != 0) {
                i3 = period.months;
            }
            if ((i5 & 64) != 0) {
                i4 = period.years;
            }
            int i6 = i3;
            int i7 = i4;
            int i8 = i2;
            SubscriptionPeriod.Unit unit2 = unit;
            return period.copy(str, str2, unit2, i, i8, i6, i7);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getAlt() {
            return this.alt;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getLy() {
            return this.ly;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final SubscriptionPeriod.Unit getUnit() {
            return this.unit;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final int getDays() {
            return this.days;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final int getWeeks() {
            return this.weeks;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final int getMonths() {
            return this.months;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final int getYears() {
            return this.years;
        }

        public final Period copy(String alt, String ly, SubscriptionPeriod.Unit unit, int days, int weeks, int months, int years) {
            Intrinsics.checkNotNullParameter(alt, "alt");
            Intrinsics.checkNotNullParameter(ly, "ly");
            Intrinsics.checkNotNullParameter(unit, "unit");
            return new Period(alt, ly, unit, days, weeks, months, years);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Period)) {
                return false;
            }
            Period period = (Period) other;
            return Intrinsics.areEqual(this.alt, period.alt) && Intrinsics.areEqual(this.ly, period.ly) && this.unit == period.unit && this.days == period.days && this.weeks == period.weeks && this.months == period.months && this.years == period.years;
        }

        public int hashCode() {
            return (((((((((((this.alt.hashCode() * 31) + this.ly.hashCode()) * 31) + this.unit.hashCode()) * 31) + Integer.hashCode(this.days)) * 31) + Integer.hashCode(this.weeks)) * 31) + Integer.hashCode(this.months)) * 31) + Integer.hashCode(this.years);
        }

        public String toString() {
            return "Period(alt=" + this.alt + ", ly=" + this.ly + ", unit=" + this.unit + ", days=" + this.days + ", weeks=" + this.weeks + ", months=" + this.months + ", years=" + this.years + ")";
        }

        public Period(String alt, String ly, SubscriptionPeriod.Unit unit, int i, int i2, int i3, int i4) {
            Intrinsics.checkNotNullParameter(alt, "alt");
            Intrinsics.checkNotNullParameter(ly, "ly");
            Intrinsics.checkNotNullParameter(unit, "unit");
            this.alt = alt;
            this.ly = ly;
            this.unit = unit;
            this.days = i;
            this.weeks = i2;
            this.months = i3;
            this.years = i4;
        }

        public final String getAlt() {
            return this.alt;
        }

        public final String getLy() {
            return this.ly;
        }

        public final SubscriptionPeriod.Unit getUnit() {
            return this.unit;
        }

        public final int getDays() {
            return this.days;
        }

        public final int getWeeks() {
            return this.weeks;
        }

        public final int getMonths() {
            return this.months;
        }

        public final int getYears() {
            return this.years;
        }
    }

    /* JADX INFO: compiled from: TransactionProduct.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/analytics/superwall/TransactionProduct$Currency;", "", "code", "", "symbol", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getCode", "()Ljava/lang/String;", "getSymbol", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Currency {
        private final String code;
        private final String symbol;

        public static /* synthetic */ Currency copy$default(Currency currency, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = currency.code;
            }
            if ((i & 2) != 0) {
                str2 = currency.symbol;
            }
            return currency.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getCode() {
            return this.code;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getSymbol() {
            return this.symbol;
        }

        public final Currency copy(String code, String symbol) {
            return new Currency(code, symbol);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Currency)) {
                return false;
            }
            Currency currency = (Currency) other;
            return Intrinsics.areEqual(this.code, currency.code) && Intrinsics.areEqual(this.symbol, currency.symbol);
        }

        public int hashCode() {
            String str = this.code;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.symbol;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public String toString() {
            return "Currency(code=" + this.code + ", symbol=" + this.symbol + ")";
        }

        public Currency(String str, String str2) {
            this.code = str;
            this.symbol = str2;
        }

        public final String getCode() {
            return this.code;
        }

        public final String getSymbol() {
            return this.symbol;
        }
    }

    public TransactionProduct(StoreProduct product) {
        Intrinsics.checkNotNullParameter(product, "product");
        String fullIdentifier = product.getFullIdentifier();
        Price price = new Price(product.getPrice(), product.getLocalizedPrice(), product.getDailyPrice(), product.getWeeklyPrice(), product.getMonthlyPrice(), product.getYearlyPrice());
        Date trialPeriodEndDate = product.getTrialPeriodEndDate();
        TrialPeriod trialPeriod = trialPeriodEndDate != null ? new TrialPeriod(product.getTrialPeriodDays(), product.getTrialPeriodWeeks(), product.getTrialPeriodMonths(), product.getTrialPeriodYears(), product.getTrialPeriodText(), trialPeriodEndDate) : null;
        SubscriptionPeriod subscriptionPeriod = product.getSubscriptionPeriod();
        this(fullIdentifier, price, trialPeriod, subscriptionPeriod != null ? new Period(product.getLocalizedSubscriptionPeriod(), product.getPeriod() + "ly", subscriptionPeriod.getUnit(), product.getPeriodDays(), product.getPeriodWeeks(), product.getPeriodMonths(), product.getPeriodYears()) : null, product.getLocale(), product.getLanguageCode(), new Currency(product.getCurrencyCode(), product.getCurrencySymbol()));
    }
}
