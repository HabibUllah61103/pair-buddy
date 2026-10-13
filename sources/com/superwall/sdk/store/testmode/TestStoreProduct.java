package com.superwall.sdk.store.testmode;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.hermes.intl.Constants;
import com.superwall.sdk.store.abstractions.product.PriceFormatterProvider;
import com.superwall.sdk.store.abstractions.product.StoreProductType;
import com.superwall.sdk.store.abstractions.product.SubscriptionPeriod;
import com.superwall.sdk.store.testmode.models.SuperwallProduct;
import com.superwall.sdk.store.testmode.models.SuperwallProductPrice;
import com.superwall.sdk.store.testmode.models.SuperwallProductSubscription;
import com.superwall.sdk.store.testmode.models.SuperwallSubscriptionPeriod;
import com.superwall.sdk.utilities.DateUtils;
import com.superwall.sdk.utilities.DateUtilsKt;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TestStoreProduct.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b'\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0082\u0001\u001a\u00020\u000f2\b\u0010\u0083\u0001\u001a\u00030\u0084\u0001H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\b\u001a\u0004\u0018\u00010\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0011R\u001b\u0010\u0014\u001a\u00020\u00158VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\r\u001a\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0019\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\r\u001a\u0004\b\u001a\u0010\u0011R\u001d\u0010\u001c\u001a\u0004\u0018\u00010\u001d8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b \u0010\r\u001a\u0004\b\u001e\u0010\u001fR\u001b\u0010!\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\r\u001a\u0004\b\"\u0010\u0011R\u001b\u0010$\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\r\u001a\u0004\b%\u0010\u0011R\u001b\u0010'\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\r\u001a\u0004\b(\u0010\u0011R\u001b\u0010*\u001a\u00020+8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b.\u0010\r\u001a\u0004\b,\u0010-R\u001b\u0010/\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b1\u0010\r\u001a\u0004\b0\u0010\u0011R\u001b\u00102\u001a\u00020+8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b4\u0010\r\u001a\u0004\b3\u0010-R\u001b\u00105\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b7\u0010\r\u001a\u0004\b6\u0010\u0011R\u001b\u00108\u001a\u00020+8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b:\u0010\r\u001a\u0004\b9\u0010-R\u001b\u0010;\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b=\u0010\r\u001a\u0004\b<\u0010\u0011R\u001b\u0010>\u001a\u00020+8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b@\u0010\r\u001a\u0004\b?\u0010-R\u001b\u0010A\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bC\u0010\r\u001a\u0004\bB\u0010\u0011R\u001b\u0010D\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bF\u0010\r\u001a\u0004\bE\u0010\u0011R\u001b\u0010G\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bI\u0010\r\u001a\u0004\bH\u0010\u0011R\u001b\u0010J\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bL\u0010\r\u001a\u0004\bK\u0010\u0011R\u001b\u0010M\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bO\u0010\r\u001a\u0004\bN\u0010\u0011R\u0014\u0010P\u001a\u00020+8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010-R\u001b\u0010R\u001a\u00020S8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bV\u0010\r\u001a\u0004\bT\u0010UR\u001b\u0010W\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bY\u0010\r\u001a\u0004\bX\u0010\u0011R\u0014\u0010Z\u001a\u00020\u0015X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b[\u0010\u0017R\u001d\u0010\\\u001a\u0004\u0018\u00010\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u0010\r\u001a\u0004\b]\u0010\u001fR\u001d\u0010_\u001a\u0004\u0018\u00010`8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bc\u0010\r\u001a\u0004\ba\u0010bR\u001b\u0010d\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bf\u0010\r\u001a\u0004\be\u0010\u0011R\u001b\u0010g\u001a\u00020+8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bi\u0010\r\u001a\u0004\bh\u0010-R\u001b\u0010j\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bl\u0010\r\u001a\u0004\bk\u0010\u0011R\u001b\u0010m\u001a\u00020+8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bo\u0010\r\u001a\u0004\bn\u0010-R\u001b\u0010p\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\br\u0010\r\u001a\u0004\bq\u0010\u0011R\u001b\u0010s\u001a\u00020+8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bu\u0010\r\u001a\u0004\bt\u0010-R\u001b\u0010v\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bx\u0010\r\u001a\u0004\bw\u0010\u0011R\u001b\u0010y\u001a\u00020+8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b{\u0010\r\u001a\u0004\bz\u0010-R\u001b\u0010|\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b~\u0010\r\u001a\u0004\b}\u0010\u0011R\u001d\u0010\u007f\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u0081\u0001\u0010\r\u001a\u0005\b\u0080\u0001\u0010\u0011R\u001e\u0010\u0085\u0001\u001a\u00020\u000f8VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u0087\u0001\u0010\r\u001a\u0005\b\u0086\u0001\u0010\u0011R \u0010\u0088\u0001\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u008a\u0001\u0010\r\u001a\u0005\b\u0089\u0001\u0010\u0011R \u0010\u008b\u0001\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u008d\u0001\u0010\r\u001a\u0005\b\u008c\u0001\u0010\u0011R \u0010\u008e\u0001\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u0090\u0001\u0010\r\u001a\u0005\b\u008f\u0001\u0010\u0011R \u0010\u0091\u0001\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u0093\u0001\u0010\r\u001a\u0005\b\u0092\u0001\u0010\u0011R\u0016\u0010\u0094\u0001\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0095\u0001\u0010\u0011¨\u0006\u0096\u0001"}, d2 = {"Lcom/superwall/sdk/store/testmode/TestStoreProduct;", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "superwallProduct", "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;", "<init>", "(Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;)V", "priceFormatterProvider", "Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;", "priceFormatter", "Ljava/text/NumberFormat;", "getPriceFormatter", "()Ljava/text/NumberFormat;", "priceFormatter$delegate", "Lkotlin/Lazy;", "fullIdentifier", "", "getFullIdentifier", "()Ljava/lang/String;", "productIdentifier", "getProductIdentifier", "price", "Ljava/math/BigDecimal;", "getPrice", "()Ljava/math/BigDecimal;", "price$delegate", "localizedPrice", "getLocalizedPrice", "localizedPrice$delegate", "subscriptionPeriod", "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;", "getSubscriptionPeriod", "()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;", "subscriptionPeriod$delegate", "localizedSubscriptionPeriod", "getLocalizedSubscriptionPeriod", "localizedSubscriptionPeriod$delegate", TypedValues.Cycle.S_WAVE_PERIOD, "getPeriod", "period$delegate", "periodly", "getPeriodly", "periodly$delegate", "periodWeeks", "", "getPeriodWeeks", "()I", "periodWeeks$delegate", "periodWeeksString", "getPeriodWeeksString", "periodWeeksString$delegate", "periodMonths", "getPeriodMonths", "periodMonths$delegate", "periodMonthsString", "getPeriodMonthsString", "periodMonthsString$delegate", "periodYears", "getPeriodYears", "periodYears$delegate", "periodYearsString", "getPeriodYearsString", "periodYearsString$delegate", "periodDays", "getPeriodDays", "periodDays$delegate", "periodDaysString", "getPeriodDaysString", "periodDaysString$delegate", "dailyPrice", "getDailyPrice", "dailyPrice$delegate", "weeklyPrice", "getWeeklyPrice", "weeklyPrice$delegate", "monthlyPrice", "getMonthlyPrice", "monthlyPrice$delegate", "yearlyPrice", "getYearlyPrice", "yearlyPrice$delegate", "trialDays", "getTrialDays", "hasFreeTrial", "", "getHasFreeTrial", "()Z", "hasFreeTrial$delegate", "localizedTrialPeriodPrice", "getLocalizedTrialPeriodPrice", "localizedTrialPeriodPrice$delegate", "trialPeriodPrice", "getTrialPeriodPrice", "trialSubscriptionPeriod", "getTrialSubscriptionPeriod", "trialSubscriptionPeriod$delegate", "trialPeriodEndDate", "Ljava/util/Date;", "getTrialPeriodEndDate", "()Ljava/util/Date;", "trialPeriodEndDate$delegate", "trialPeriodEndDateString", "getTrialPeriodEndDateString", "trialPeriodEndDateString$delegate", "trialPeriodDays", "getTrialPeriodDays", "trialPeriodDays$delegate", "trialPeriodDaysString", "getTrialPeriodDaysString", "trialPeriodDaysString$delegate", "trialPeriodWeeks", "getTrialPeriodWeeks", "trialPeriodWeeks$delegate", "trialPeriodWeeksString", "getTrialPeriodWeeksString", "trialPeriodWeeksString$delegate", "trialPeriodMonths", "getTrialPeriodMonths", "trialPeriodMonths$delegate", "trialPeriodMonthsString", "getTrialPeriodMonthsString", "trialPeriodMonthsString$delegate", "trialPeriodYears", "getTrialPeriodYears", "trialPeriodYears$delegate", "trialPeriodYearsString", "getTrialPeriodYearsString", "trialPeriodYearsString$delegate", "trialPeriodText", "getTrialPeriodText", "trialPeriodText$delegate", "trialPeriodPricePerUnit", "unit", "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;", Constants.LOCALE, "getLocale", "locale$delegate", "languageCode", "getLanguageCode", "languageCode$delegate", "currencyCode", "getCurrencyCode", "currencyCode$delegate", "currencySymbol", "getCurrencySymbol", "currencySymbol$delegate", "regionCode", "getRegionCode", "regionCode$delegate", "productType", "getProductType", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TestStoreProduct implements StoreProductType {

    /* JADX INFO: renamed from: currencyCode$delegate, reason: from kotlin metadata */
    private final Lazy currencyCode;

    /* JADX INFO: renamed from: currencySymbol$delegate, reason: from kotlin metadata */
    private final Lazy currencySymbol;

    /* JADX INFO: renamed from: dailyPrice$delegate, reason: from kotlin metadata */
    private final Lazy dailyPrice;

    /* JADX INFO: renamed from: hasFreeTrial$delegate, reason: from kotlin metadata */
    private final Lazy hasFreeTrial;

    /* JADX INFO: renamed from: languageCode$delegate, reason: from kotlin metadata */
    private final Lazy languageCode;

    /* JADX INFO: renamed from: locale$delegate, reason: from kotlin metadata */
    private final Lazy locale;

    /* JADX INFO: renamed from: localizedPrice$delegate, reason: from kotlin metadata */
    private final Lazy localizedPrice;

    /* JADX INFO: renamed from: localizedSubscriptionPeriod$delegate, reason: from kotlin metadata */
    private final Lazy localizedSubscriptionPeriod;

    /* JADX INFO: renamed from: localizedTrialPeriodPrice$delegate, reason: from kotlin metadata */
    private final Lazy localizedTrialPeriodPrice;

    /* JADX INFO: renamed from: monthlyPrice$delegate, reason: from kotlin metadata */
    private final Lazy monthlyPrice;

    /* JADX INFO: renamed from: period$delegate, reason: from kotlin metadata */
    private final Lazy period;

    /* JADX INFO: renamed from: periodDays$delegate, reason: from kotlin metadata */
    private final Lazy periodDays;

    /* JADX INFO: renamed from: periodDaysString$delegate, reason: from kotlin metadata */
    private final Lazy periodDaysString;

    /* JADX INFO: renamed from: periodMonths$delegate, reason: from kotlin metadata */
    private final Lazy periodMonths;

    /* JADX INFO: renamed from: periodMonthsString$delegate, reason: from kotlin metadata */
    private final Lazy periodMonthsString;

    /* JADX INFO: renamed from: periodWeeks$delegate, reason: from kotlin metadata */
    private final Lazy periodWeeks;

    /* JADX INFO: renamed from: periodWeeksString$delegate, reason: from kotlin metadata */
    private final Lazy periodWeeksString;

    /* JADX INFO: renamed from: periodYears$delegate, reason: from kotlin metadata */
    private final Lazy periodYears;

    /* JADX INFO: renamed from: periodYearsString$delegate, reason: from kotlin metadata */
    private final Lazy periodYearsString;

    /* JADX INFO: renamed from: periodly$delegate, reason: from kotlin metadata */
    private final Lazy periodly;

    /* JADX INFO: renamed from: price$delegate, reason: from kotlin metadata */
    private final Lazy price;

    /* JADX INFO: renamed from: priceFormatter$delegate, reason: from kotlin metadata */
    private final Lazy priceFormatter;
    private final PriceFormatterProvider priceFormatterProvider;

    /* JADX INFO: renamed from: regionCode$delegate, reason: from kotlin metadata */
    private final Lazy regionCode;

    /* JADX INFO: renamed from: subscriptionPeriod$delegate, reason: from kotlin metadata */
    private final Lazy subscriptionPeriod;
    private final SuperwallProduct superwallProduct;

    /* JADX INFO: renamed from: trialPeriodDays$delegate, reason: from kotlin metadata */
    private final Lazy trialPeriodDays;

    /* JADX INFO: renamed from: trialPeriodDaysString$delegate, reason: from kotlin metadata */
    private final Lazy trialPeriodDaysString;

    /* JADX INFO: renamed from: trialPeriodEndDate$delegate, reason: from kotlin metadata */
    private final Lazy trialPeriodEndDate;

    /* JADX INFO: renamed from: trialPeriodEndDateString$delegate, reason: from kotlin metadata */
    private final Lazy trialPeriodEndDateString;

    /* JADX INFO: renamed from: trialPeriodMonths$delegate, reason: from kotlin metadata */
    private final Lazy trialPeriodMonths;

    /* JADX INFO: renamed from: trialPeriodMonthsString$delegate, reason: from kotlin metadata */
    private final Lazy trialPeriodMonthsString;
    private final BigDecimal trialPeriodPrice;

    /* JADX INFO: renamed from: trialPeriodText$delegate, reason: from kotlin metadata */
    private final Lazy trialPeriodText;

    /* JADX INFO: renamed from: trialPeriodWeeks$delegate, reason: from kotlin metadata */
    private final Lazy trialPeriodWeeks;

    /* JADX INFO: renamed from: trialPeriodWeeksString$delegate, reason: from kotlin metadata */
    private final Lazy trialPeriodWeeksString;

    /* JADX INFO: renamed from: trialPeriodYears$delegate, reason: from kotlin metadata */
    private final Lazy trialPeriodYears;

    /* JADX INFO: renamed from: trialPeriodYearsString$delegate, reason: from kotlin metadata */
    private final Lazy trialPeriodYearsString;

    /* JADX INFO: renamed from: trialSubscriptionPeriod$delegate, reason: from kotlin metadata */
    private final Lazy trialSubscriptionPeriod;

    /* JADX INFO: renamed from: weeklyPrice$delegate, reason: from kotlin metadata */
    private final Lazy weeklyPrice;

    /* JADX INFO: renamed from: yearlyPrice$delegate, reason: from kotlin metadata */
    private final Lazy yearlyPrice;

    /* JADX INFO: compiled from: TestStoreProduct.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[SuperwallSubscriptionPeriod.values().length];
            try {
                iArr[SuperwallSubscriptionPeriod.DAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SuperwallSubscriptionPeriod.WEEK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SuperwallSubscriptionPeriod.MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SuperwallSubscriptionPeriod.YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[SubscriptionPeriod.Unit.values().length];
            try {
                iArr2[SubscriptionPeriod.Unit.day.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[SubscriptionPeriod.Unit.week.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[SubscriptionPeriod.Unit.month.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[SubscriptionPeriod.Unit.year.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public TestStoreProduct(SuperwallProduct superwallProduct) {
        Intrinsics.checkNotNullParameter(superwallProduct, "superwallProduct");
        this.superwallProduct = superwallProduct;
        this.priceFormatterProvider = new PriceFormatterProvider();
        this.priceFormatter = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.priceFormatter_delegate$lambda$1(this.f$0);
            }
        });
        this.price = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.price_delegate$lambda$2(this.f$0);
            }
        });
        this.localizedPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.localizedPrice_delegate$lambda$3(this.f$0);
            }
        });
        this.subscriptionPeriod = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.subscriptionPeriod_delegate$lambda$5(this.f$0);
            }
        });
        this.localizedSubscriptionPeriod = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.localizedSubscriptionPeriod_delegate$lambda$7(this.f$0);
            }
        });
        this.period = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.period_delegate$lambda$9(this.f$0);
            }
        });
        this.periodly = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.periodly_delegate$lambda$11(this.f$0);
            }
        });
        this.periodWeeks = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(TestStoreProduct.periodWeeks_delegate$lambda$13(this.f$0));
            }
        });
        this.periodWeeksString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda29
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.periodWeeksString_delegate$lambda$14(this.f$0);
            }
        });
        this.periodMonths = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda30
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(TestStoreProduct.periodMonths_delegate$lambda$16(this.f$0));
            }
        });
        this.periodMonthsString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.periodMonthsString_delegate$lambda$17(this.f$0);
            }
        });
        this.periodYears = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(TestStoreProduct.periodYears_delegate$lambda$19(this.f$0));
            }
        });
        this.periodYearsString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.periodYearsString_delegate$lambda$20(this.f$0);
            }
        });
        this.periodDays = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(TestStoreProduct.periodDays_delegate$lambda$22(this.f$0));
            }
        });
        this.periodDaysString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda33
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.periodDaysString_delegate$lambda$23(this.f$0);
            }
        });
        this.dailyPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda34
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.dailyPrice_delegate$lambda$24(this.f$0);
            }
        });
        this.weeklyPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda35
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.weeklyPrice_delegate$lambda$25(this.f$0);
            }
        });
        this.monthlyPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda36
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.monthlyPrice_delegate$lambda$26(this.f$0);
            }
        });
        this.yearlyPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda37
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.yearlyPrice_delegate$lambda$27(this.f$0);
            }
        });
        this.hasFreeTrial = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(TestStoreProduct.hasFreeTrial_delegate$lambda$28(this.f$0));
            }
        });
        this.localizedTrialPeriodPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.localizedTrialPeriodPrice_delegate$lambda$29(this.f$0);
            }
        });
        BigDecimal ZERO = BigDecimal.ZERO;
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        this.trialPeriodPrice = ZERO;
        this.trialSubscriptionPeriod = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.trialSubscriptionPeriod_delegate$lambda$30(this.f$0);
            }
        });
        this.trialPeriodEndDate = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.trialPeriodEndDate_delegate$lambda$31(this.f$0);
            }
        });
        this.trialPeriodEndDateString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.trialPeriodEndDateString_delegate$lambda$33(this.f$0);
            }
        });
        this.trialPeriodDays = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(TestStoreProduct.trialPeriodDays_delegate$lambda$35(this.f$0));
            }
        });
        this.trialPeriodDaysString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.trialPeriodDaysString_delegate$lambda$36(this.f$0);
            }
        });
        this.trialPeriodWeeks = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(TestStoreProduct.trialPeriodWeeks_delegate$lambda$38(this.f$0));
            }
        });
        this.trialPeriodWeeksString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.trialPeriodWeeksString_delegate$lambda$39(this.f$0);
            }
        });
        this.trialPeriodMonths = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(TestStoreProduct.trialPeriodMonths_delegate$lambda$41(this.f$0));
            }
        });
        this.trialPeriodMonthsString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.trialPeriodMonthsString_delegate$lambda$42(this.f$0);
            }
        });
        this.trialPeriodYears = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(TestStoreProduct.trialPeriodYears_delegate$lambda$44(this.f$0));
            }
        });
        this.trialPeriodYearsString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.trialPeriodYearsString_delegate$lambda$45(this.f$0);
            }
        });
        this.trialPeriodText = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.trialPeriodText_delegate$lambda$46(this.f$0);
            }
        });
        this.locale = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.locale_delegate$lambda$47();
            }
        });
        this.languageCode = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.languageCode_delegate$lambda$48();
            }
        });
        this.currencyCode = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.currencyCode_delegate$lambda$49(this.f$0);
            }
        });
        this.currencySymbol = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.currencySymbol_delegate$lambda$51(this.f$0);
            }
        });
        this.regionCode = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.testmode.TestStoreProduct$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TestStoreProduct.regionCode_delegate$lambda$52();
            }
        });
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public Map<String, String> getAttributes() {
        return StoreProductType.DefaultImpls.getAttributes(this);
    }

    private final NumberFormat getPriceFormatter() {
        return (NumberFormat) this.priceFormatter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NumberFormat priceFormatter_delegate$lambda$1(TestStoreProduct testStoreProduct) {
        String currencyCode = testStoreProduct.getCurrencyCode();
        if (currencyCode != null) {
            return testStoreProduct.priceFormatterProvider.priceFormatter(currencyCode);
        }
        return null;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getFullIdentifier() {
        return this.superwallProduct.getIdentifier();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getProductIdentifier() {
        return this.superwallProduct.getIdentifier();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public BigDecimal getPrice() {
        Object value = this.price.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (BigDecimal) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BigDecimal price_delegate$lambda$2(TestStoreProduct testStoreProduct) {
        SuperwallProductPrice price = testStoreProduct.superwallProduct.getPrice();
        return new BigDecimal(price != null ? price.getAmount() : 0).divide(new BigDecimal(100), 2, RoundingMode.DOWN);
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocalizedPrice() {
        return (String) this.localizedPrice.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String localizedPrice_delegate$lambda$3(TestStoreProduct testStoreProduct) {
        String str;
        NumberFormat priceFormatter = testStoreProduct.getPriceFormatter();
        if (priceFormatter != null && (str = priceFormatter.format(testStoreProduct.getPrice())) != null) {
            return str;
        }
        String currencySymbol = testStoreProduct.getCurrencySymbol();
        if (currencySymbol == null) {
            currencySymbol = "$";
        }
        return currencySymbol + testStoreProduct.getPrice();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public SubscriptionPeriod getSubscriptionPeriod() {
        return (SubscriptionPeriod) this.subscriptionPeriod.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubscriptionPeriod subscriptionPeriod_delegate$lambda$5(TestStoreProduct testStoreProduct) {
        SubscriptionPeriod.Unit unit;
        SuperwallProductSubscription subscription = testStoreProduct.superwallProduct.getSubscription();
        if (subscription == null) {
            return null;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[subscription.getPeriod().ordinal()];
        if (i == 1) {
            unit = SubscriptionPeriod.Unit.day;
        } else if (i == 2) {
            unit = SubscriptionPeriod.Unit.week;
        } else if (i == 3) {
            unit = SubscriptionPeriod.Unit.month;
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            unit = SubscriptionPeriod.Unit.year;
        }
        return new SubscriptionPeriod(subscription.getPeriodCount(), unit);
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocalizedSubscriptionPeriod() {
        return (String) this.localizedSubscriptionPeriod.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String localizedSubscriptionPeriod_delegate$lambda$7(TestStoreProduct testStoreProduct) {
        String str;
        SubscriptionPeriod subscriptionPeriod = testStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod != null) {
            int value = subscriptionPeriod.getValue();
            int i = WhenMappings.$EnumSwitchMapping$1[subscriptionPeriod.getUnit().ordinal()];
            if (i == 1) {
                str = value == 1 ? "1 day" : value + " days";
            } else if (i == 2) {
                str = value == 1 ? "1 week" : value + " weeks";
            } else if (i == 3) {
                str = value == 1 ? "1 month" : value + " months";
            } else {
                if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                str = value == 1 ? "1 year" : value + " years";
            }
            return str == null ? "" : str;
        }
        return "";
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriod() {
        return (String) this.period.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String period_delegate$lambda$9(TestStoreProduct testStoreProduct) {
        SubscriptionPeriod subscriptionPeriod = testStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return "";
        }
        int i = WhenMappings.$EnumSwitchMapping$1[subscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return subscriptionPeriod.getValue() == 7 ? "week" : "day";
        }
        if (i == 2) {
            return "week";
        }
        if (i != 3) {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            return "year";
        }
        int value = subscriptionPeriod.getValue();
        if (value == 2) {
            return "2 months";
        }
        if (value == 3) {
            return "quarter";
        }
        if (value == 6) {
            return "6 months";
        }
        return "month";
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodly() {
        return (String) this.periodly.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String periodly_delegate$lambda$11(TestStoreProduct testStoreProduct) {
        String str;
        SubscriptionPeriod subscriptionPeriod = testStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return "";
        }
        if (WhenMappings.$EnumSwitchMapping$1[subscriptionPeriod.getUnit().ordinal()] != 3) {
            str = testStoreProduct.getPeriod() + "ly";
        } else {
            int value = subscriptionPeriod.getValue();
            if (value == 2 || value == 6) {
                str = "every " + testStoreProduct.getPeriod();
            } else {
                str = testStoreProduct.getPeriod() + "ly";
            }
        }
        return str == null ? "" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodWeeks() {
        return ((Number) this.periodWeeks.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int periodWeeks_delegate$lambda$13(TestStoreProduct testStoreProduct) {
        SubscriptionPeriod subscriptionPeriod = testStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[subscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return subscriptionPeriod.getValue() / 7;
        }
        if (i == 2) {
            return subscriptionPeriod.getValue();
        }
        if (i == 3) {
            return subscriptionPeriod.getValue() * 4;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return subscriptionPeriod.getValue() * 52;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String periodWeeksString_delegate$lambda$14(TestStoreProduct testStoreProduct) {
        return String.valueOf(testStoreProduct.getPeriodWeeks());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodWeeksString() {
        return (String) this.periodWeeksString.getValue();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodMonths() {
        return ((Number) this.periodMonths.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int periodMonths_delegate$lambda$16(TestStoreProduct testStoreProduct) {
        SubscriptionPeriod subscriptionPeriod = testStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[subscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return subscriptionPeriod.getValue() / 30;
        }
        if (i == 2) {
            return subscriptionPeriod.getValue() / 4;
        }
        if (i == 3) {
            return subscriptionPeriod.getValue();
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return subscriptionPeriod.getValue() * 12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String periodMonthsString_delegate$lambda$17(TestStoreProduct testStoreProduct) {
        return String.valueOf(testStoreProduct.getPeriodMonths());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodMonthsString() {
        return (String) this.periodMonthsString.getValue();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodYears() {
        return ((Number) this.periodYears.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int periodYears_delegate$lambda$19(TestStoreProduct testStoreProduct) {
        SubscriptionPeriod subscriptionPeriod = testStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[subscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return subscriptionPeriod.getValue() / 365;
        }
        if (i == 2) {
            return subscriptionPeriod.getValue() / 52;
        }
        if (i == 3) {
            return subscriptionPeriod.getValue() / 12;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return subscriptionPeriod.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String periodYearsString_delegate$lambda$20(TestStoreProduct testStoreProduct) {
        return String.valueOf(testStoreProduct.getPeriodYears());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodYearsString() {
        return (String) this.periodYearsString.getValue();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodDays() {
        return ((Number) this.periodDays.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int periodDays_delegate$lambda$22(TestStoreProduct testStoreProduct) {
        SubscriptionPeriod subscriptionPeriod = testStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[subscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return subscriptionPeriod.getValue();
        }
        if (i == 2) {
            return subscriptionPeriod.getValue() * 7;
        }
        if (i == 3) {
            return subscriptionPeriod.getValue() * 30;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return subscriptionPeriod.getValue() * 365;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String periodDaysString_delegate$lambda$23(TestStoreProduct testStoreProduct) {
        return String.valueOf(testStoreProduct.getPeriodDays());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodDaysString() {
        return (String) this.periodDaysString.getValue();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getDailyPrice() {
        return (String) this.dailyPrice.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String dailyPrice_delegate$lambda$24(TestStoreProduct testStoreProduct) {
        String str;
        String str2;
        SubscriptionPeriod subscriptionPeriod = testStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return "n/a";
        }
        if (testStoreProduct.getPrice().compareTo(BigDecimal.ZERO) == 0) {
            NumberFormat priceFormatter = testStoreProduct.getPriceFormatter();
            return (priceFormatter == null || (str2 = priceFormatter.format(BigDecimal.ZERO)) == null) ? "$0.00" : str2;
        }
        NumberFormat priceFormatter2 = testStoreProduct.getPriceFormatter();
        return (priceFormatter2 == null || (str = priceFormatter2.format(subscriptionPeriod.pricePerDay(testStoreProduct.getPrice()))) == null) ? "n/a" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getWeeklyPrice() {
        return (String) this.weeklyPrice.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String weeklyPrice_delegate$lambda$25(TestStoreProduct testStoreProduct) {
        String str;
        String str2;
        SubscriptionPeriod subscriptionPeriod = testStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return "n/a";
        }
        if (testStoreProduct.getPrice().compareTo(BigDecimal.ZERO) == 0) {
            NumberFormat priceFormatter = testStoreProduct.getPriceFormatter();
            return (priceFormatter == null || (str2 = priceFormatter.format(BigDecimal.ZERO)) == null) ? "$0.00" : str2;
        }
        NumberFormat priceFormatter2 = testStoreProduct.getPriceFormatter();
        return (priceFormatter2 == null || (str = priceFormatter2.format(subscriptionPeriod.pricePerWeek(testStoreProduct.getPrice()))) == null) ? "n/a" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getMonthlyPrice() {
        return (String) this.monthlyPrice.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String monthlyPrice_delegate$lambda$26(TestStoreProduct testStoreProduct) {
        String str;
        String str2;
        SubscriptionPeriod subscriptionPeriod = testStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return "n/a";
        }
        if (testStoreProduct.getPrice().compareTo(BigDecimal.ZERO) == 0) {
            NumberFormat priceFormatter = testStoreProduct.getPriceFormatter();
            return (priceFormatter == null || (str2 = priceFormatter.format(BigDecimal.ZERO)) == null) ? "$0.00" : str2;
        }
        NumberFormat priceFormatter2 = testStoreProduct.getPriceFormatter();
        return (priceFormatter2 == null || (str = priceFormatter2.format(subscriptionPeriod.pricePerMonth(testStoreProduct.getPrice()))) == null) ? "n/a" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getYearlyPrice() {
        return (String) this.yearlyPrice.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String yearlyPrice_delegate$lambda$27(TestStoreProduct testStoreProduct) {
        String str;
        String str2;
        SubscriptionPeriod subscriptionPeriod = testStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return "n/a";
        }
        if (Intrinsics.areEqual(testStoreProduct.getPrice(), BigDecimal.ZERO)) {
            NumberFormat priceFormatter = testStoreProduct.getPriceFormatter();
            return (priceFormatter == null || (str2 = priceFormatter.format(BigDecimal.ZERO)) == null) ? "$0.00" : str2;
        }
        NumberFormat priceFormatter2 = testStoreProduct.getPriceFormatter();
        return (priceFormatter2 == null || (str = priceFormatter2.format(subscriptionPeriod.pricePerYear(testStoreProduct.getPrice()))) == null) ? "n/a" : str;
    }

    private final int getTrialDays() {
        Integer trialPeriodDays;
        SuperwallProductSubscription subscription = this.superwallProduct.getSubscription();
        if (subscription == null || (trialPeriodDays = subscription.getTrialPeriodDays()) == null) {
            return 0;
        }
        return trialPeriodDays.intValue();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public boolean getHasFreeTrial() {
        return ((Boolean) this.hasFreeTrial.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasFreeTrial_delegate$lambda$28(TestStoreProduct testStoreProduct) {
        return testStoreProduct.getTrialDays() > 0;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocalizedTrialPeriodPrice() {
        return (String) this.localizedTrialPeriodPrice.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String localizedTrialPeriodPrice_delegate$lambda$29(TestStoreProduct testStoreProduct) {
        String str;
        NumberFormat priceFormatter = testStoreProduct.getPriceFormatter();
        return (priceFormatter == null || (str = priceFormatter.format(testStoreProduct.getTrialPeriodPrice())) == null) ? "$0.00" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public BigDecimal getTrialPeriodPrice() {
        return this.trialPeriodPrice;
    }

    private final SubscriptionPeriod getTrialSubscriptionPeriod() {
        return (SubscriptionPeriod) this.trialSubscriptionPeriod.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubscriptionPeriod trialSubscriptionPeriod_delegate$lambda$30(TestStoreProduct testStoreProduct) {
        if (testStoreProduct.getTrialDays() <= 0) {
            return null;
        }
        return new SubscriptionPeriod(testStoreProduct.getTrialDays(), SubscriptionPeriod.Unit.day).normalized();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public Date getTrialPeriodEndDate() {
        return (Date) this.trialPeriodEndDate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Date trialPeriodEndDate_delegate$lambda$31(TestStoreProduct testStoreProduct) {
        if (testStoreProduct.getTrialDays() <= 0) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.add(6, testStoreProduct.getTrialDays());
        return calendar.getTime();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodEndDateString() {
        return (String) this.trialPeriodEndDateString.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trialPeriodEndDateString_delegate$lambda$33(TestStoreProduct testStoreProduct) {
        String str;
        Date trialPeriodEndDate = testStoreProduct.getTrialPeriodEndDate();
        return (trialPeriodEndDate == null || (str = DateUtilsKt.localizedDateFormat(DateUtils.INSTANCE.getMMM_dd_yyyy()).format(trialPeriodEndDate)) == null) ? "" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodDays() {
        return ((Number) this.trialPeriodDays.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int trialPeriodDays_delegate$lambda$35(TestStoreProduct testStoreProduct) {
        SubscriptionPeriod trialSubscriptionPeriod = testStoreProduct.getTrialSubscriptionPeriod();
        if (trialSubscriptionPeriod == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[trialSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return trialSubscriptionPeriod.getValue();
        }
        if (i == 2) {
            return trialSubscriptionPeriod.getValue() * 7;
        }
        if (i == 3) {
            return trialSubscriptionPeriod.getValue() * 30;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return trialSubscriptionPeriod.getValue() * 365;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trialPeriodDaysString_delegate$lambda$36(TestStoreProduct testStoreProduct) {
        return String.valueOf(testStoreProduct.getTrialPeriodDays());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodDaysString() {
        return (String) this.trialPeriodDaysString.getValue();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodWeeks() {
        return ((Number) this.trialPeriodWeeks.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int trialPeriodWeeks_delegate$lambda$38(TestStoreProduct testStoreProduct) {
        SubscriptionPeriod trialSubscriptionPeriod = testStoreProduct.getTrialSubscriptionPeriod();
        if (trialSubscriptionPeriod == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[trialSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return trialSubscriptionPeriod.getValue() / 7;
        }
        if (i == 2) {
            return trialSubscriptionPeriod.getValue();
        }
        if (i == 3) {
            return trialSubscriptionPeriod.getValue() * 4;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return trialSubscriptionPeriod.getValue() * 52;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trialPeriodWeeksString_delegate$lambda$39(TestStoreProduct testStoreProduct) {
        return String.valueOf(testStoreProduct.getTrialPeriodWeeks());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodWeeksString() {
        return (String) this.trialPeriodWeeksString.getValue();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodMonths() {
        return ((Number) this.trialPeriodMonths.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int trialPeriodMonths_delegate$lambda$41(TestStoreProduct testStoreProduct) {
        SubscriptionPeriod trialSubscriptionPeriod = testStoreProduct.getTrialSubscriptionPeriod();
        if (trialSubscriptionPeriod == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[trialSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return trialSubscriptionPeriod.getValue() / 30;
        }
        if (i == 2) {
            return trialSubscriptionPeriod.getValue() / 4;
        }
        if (i == 3) {
            return trialSubscriptionPeriod.getValue();
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return trialSubscriptionPeriod.getValue() * 12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trialPeriodMonthsString_delegate$lambda$42(TestStoreProduct testStoreProduct) {
        return String.valueOf(testStoreProduct.getTrialPeriodMonths());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodMonthsString() {
        return (String) this.trialPeriodMonthsString.getValue();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodYears() {
        return ((Number) this.trialPeriodYears.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int trialPeriodYears_delegate$lambda$44(TestStoreProduct testStoreProduct) {
        SubscriptionPeriod trialSubscriptionPeriod = testStoreProduct.getTrialSubscriptionPeriod();
        if (trialSubscriptionPeriod == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[trialSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return trialSubscriptionPeriod.getValue() / 365;
        }
        if (i == 2) {
            return trialSubscriptionPeriod.getValue() / 52;
        }
        if (i == 3) {
            return trialSubscriptionPeriod.getValue() / 12;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return trialSubscriptionPeriod.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trialPeriodYearsString_delegate$lambda$45(TestStoreProduct testStoreProduct) {
        return String.valueOf(testStoreProduct.getTrialPeriodYears());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodYearsString() {
        return (String) this.trialPeriodYearsString.getValue();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodText() {
        return (String) this.trialPeriodText.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trialPeriodText_delegate$lambda$46(TestStoreProduct testStoreProduct) {
        if (testStoreProduct.getTrialDays() <= 0) {
            return "";
        }
        return testStoreProduct.getTrialDays() + "-day";
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String trialPeriodPricePerUnit(SubscriptionPeriod.Unit unit) {
        String str;
        Intrinsics.checkNotNullParameter(unit, "unit");
        NumberFormat priceFormatter = getPriceFormatter();
        return (priceFormatter == null || (str = priceFormatter.format(BigDecimal.ZERO)) == null) ? "$0.00" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String locale_delegate$lambda$47() {
        String string = Locale.getDefault().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocale() {
        return (String) this.locale.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String languageCode_delegate$lambda$48() {
        return Locale.getDefault().getLanguage();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLanguageCode() {
        return (String) this.languageCode.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String currencyCode_delegate$lambda$49(TestStoreProduct testStoreProduct) {
        SuperwallProductPrice price = testStoreProduct.superwallProduct.getPrice();
        if (price != null) {
            return price.getCurrency();
        }
        return null;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getCurrencyCode() {
        return (String) this.currencyCode.getValue();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getCurrencySymbol() {
        return (String) this.currencySymbol.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String currencySymbol_delegate$lambda$51(TestStoreProduct testStoreProduct) {
        String currencyCode = testStoreProduct.getCurrencyCode();
        if (currencyCode == null) {
            return null;
        }
        try {
            return Currency.getInstance(currencyCode).getSymbol();
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String regionCode_delegate$lambda$52() {
        return Locale.getDefault().getCountry();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getRegionCode() {
        return (String) this.regionCode.getValue();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getProductType() {
        return this.superwallProduct.getSubscription() != null ? "subs" : "inapp";
    }
}
