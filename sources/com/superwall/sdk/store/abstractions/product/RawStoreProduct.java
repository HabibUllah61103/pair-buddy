package com.superwall.sdk.store.abstractions.product;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.billingclient.api.ProductDetails;
import com.facebook.hermes.intl.Constants;
import com.superwall.sdk.billing.DecomposedProductIds;
import com.superwall.sdk.contrib.threeteen.AmountFormats;
import com.superwall.sdk.utilities.DateUtils;
import com.superwall.sdk.utilities.DateUtilsKt;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.Transient;
import org.threeten.bp.Period;

/* JADX INFO: compiled from: RawStoreProduct.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\b\n\u0002\b%\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b1\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 Á\u00012\u00020\u0001:\u0004Á\u0001Â\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\n\u0010v\u001a\u0004\u0018\u00010\"H\u0002J\n\u0010w\u001a\u0004\u0018\u00010xH\u0002J\u0018\u0010y\u001a\u0004\u0018\u00010z2\f\u0010{\u001a\b\u0012\u0004\u0012\u00020z0|H\u0002J\u0018\u0010}\u001a\u0004\u0018\u00010z2\f\u0010{\u001a\b\u0012\u0004\u0012\u00020z0|H\u0002J\u0013\u0010µ\u0001\u001a\u00020\u00052\b\u0010¶\u0001\u001a\u00030·\u0001H\u0016J\u001c\u0010¸\u0001\u001a\u00020'2\b\u0010¶\u0001\u001a\u00030·\u00012\u0007\u0010¹\u0001\u001a\u00020-H\u0002J\u0013\u0010º\u0001\u001a\u00020'2\b\u0010¶\u0001\u001a\u00030·\u0001H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00058F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00158\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0016\u0010\u0017R\u001d\u0010\u0018\u001a\u0004\u0018\u00010\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001a\u0010\u001bR\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u00058@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u001d\u001a\u0004\b\u001f\u0010\u000fR\u001d\u0010!\u001a\u0004\u0018\u00010\"8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u001d\u001a\u0004\b#\u0010$R#\u0010&\u001a\n (*\u0004\u0018\u00010'0'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010\u001d\u001a\u0004\b)\u0010*R\u001d\u0010,\u001a\u0004\u0018\u00010-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010\u001d\u001a\u0004\b.\u0010/R\u001b\u00101\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b3\u0010\u001d\u001a\u0004\b2\u0010\u000fR\u0014\u00104\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u0010\u000fR#\u00106\u001a\n (*\u0004\u0018\u00010'0'8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b8\u0010\u001d\u001a\u0004\b7\u0010*R\u001b\u00109\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b;\u0010\u001d\u001a\u0004\b:\u0010\u000fR\u001b\u0010<\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b>\u0010\u001d\u001a\u0004\b=\u0010\u000fR\u001b\u0010?\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bA\u0010\u001d\u001a\u0004\b@\u0010\u000fR\u001b\u0010B\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bD\u0010\u001d\u001a\u0004\bC\u0010\u000fR\u001b\u0010E\u001a\u00020F8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bI\u0010\u001d\u001a\u0004\bG\u0010HR\u001b\u0010J\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bL\u0010\u001d\u001a\u0004\bK\u0010\u000fR\u001b\u0010M\u001a\u00020F8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bO\u0010\u001d\u001a\u0004\bN\u0010HR\u001b\u0010P\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bR\u0010\u001d\u001a\u0004\bQ\u0010\u000fR\u001b\u0010S\u001a\u00020F8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bU\u0010\u001d\u001a\u0004\bT\u0010HR\u001b\u0010V\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bX\u0010\u001d\u001a\u0004\bW\u0010\u000fR\u001b\u0010Y\u001a\u00020F8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b[\u0010\u001d\u001a\u0004\bZ\u0010HR\u001b\u0010\\\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b^\u0010\u001d\u001a\u0004\b]\u0010\u000fR\u001b\u0010_\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\ba\u0010\u001d\u001a\u0004\b`\u0010\u000fR\u001b\u0010b\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bd\u0010\u001d\u001a\u0004\bc\u0010\u000fR\u001b\u0010e\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bg\u0010\u001d\u001a\u0004\bf\u0010\u000fR\u001b\u0010h\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bj\u0010\u001d\u001a\u0004\bi\u0010\u000fR\u001b\u0010k\u001a\u00020l8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bo\u0010\u001d\u001a\u0004\bm\u0010nR\u001b\u0010p\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\br\u0010\u001d\u001a\u0004\bq\u0010\u000fR\u001b\u0010s\u001a\u00020'8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bu\u0010\u001d\u001a\u0004\bt\u0010*R \u0010~\u001a\u0004\u0018\u00010\u007f8VX\u0096\u0084\u0002¢\u0006\u000f\n\u0005\b\u0082\u0001\u0010\u001d\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001R\u001e\u0010\u0083\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u0085\u0001\u0010\u001d\u001a\u0005\b\u0084\u0001\u0010\u000fR\u001e\u0010\u0086\u0001\u001a\u00020F8VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u0088\u0001\u0010\u001d\u001a\u0005\b\u0087\u0001\u0010HR\u001e\u0010\u0089\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u008b\u0001\u0010\u001d\u001a\u0005\b\u008a\u0001\u0010\u000fR\u001e\u0010\u008c\u0001\u001a\u00020F8VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u008e\u0001\u0010\u001d\u001a\u0005\b\u008d\u0001\u0010HR\u001e\u0010\u008f\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u0091\u0001\u0010\u001d\u001a\u0005\b\u0090\u0001\u0010\u000fR\u001e\u0010\u0092\u0001\u001a\u00020F8VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u0094\u0001\u0010\u001d\u001a\u0005\b\u0093\u0001\u0010HR\u001e\u0010\u0095\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u0097\u0001\u0010\u001d\u001a\u0005\b\u0096\u0001\u0010\u000fR\u001e\u0010\u0098\u0001\u001a\u00020F8VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u009a\u0001\u0010\u001d\u001a\u0005\b\u0099\u0001\u0010HR\u001e\u0010\u009b\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b\u009d\u0001\u0010\u001d\u001a\u0005\b\u009c\u0001\u0010\u000fR\u001e\u0010\u009e\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b \u0001\u0010\u001d\u001a\u0005\b\u009f\u0001\u0010\u000fR\u001e\u0010¡\u0001\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b£\u0001\u0010\u001d\u001a\u0005\b¢\u0001\u0010\u000fR \u0010¤\u0001\u001a\u0004\u0018\u00010\u00058VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b¦\u0001\u0010\u001d\u001a\u0005\b¥\u0001\u0010\u000fR \u0010§\u0001\u001a\u0004\u0018\u00010\u00058VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b©\u0001\u0010\u001d\u001a\u0005\b¨\u0001\u0010\u000fR \u0010ª\u0001\u001a\u0004\u0018\u00010\u00058VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b¬\u0001\u0010\u001d\u001a\u0005\b«\u0001\u0010\u000fR \u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u00058VX\u0096\u0084\u0002¢\u0006\u000e\n\u0005\b¯\u0001\u0010\u001d\u001a\u0005\b®\u0001\u0010\u000fR\"\u0010°\u0001\u001a\u0005\u0018\u00010±\u00018VX\u0096\u0084\u0002¢\u0006\u000f\n\u0005\b´\u0001\u0010\u001d\u001a\u0006\b²\u0001\u0010³\u0001R\"\u0010»\u0001\u001a\u0005\u0018\u00010±\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b½\u0001\u0010\u001d\u001a\u0006\b¼\u0001\u0010³\u0001R\u001e\u0010¾\u0001\u001a\u00020l8@X\u0080\u0084\u0002¢\u0006\u000e\n\u0005\bÀ\u0001\u0010\u001d\u001a\u0005\b¿\u0001\u0010n¨\u0006Ã\u0001"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "underlyingProductDetails", "Lcom/android/billingclient/api/ProductDetails;", "fullIdentifier", "", "basePlanType", "Lcom/superwall/sdk/store/abstractions/product/BasePlanType;", "offerType", "Lcom/superwall/sdk/store/abstractions/product/OfferType;", "<init>", "(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;)V", "getUnderlyingProductDetails", "()Lcom/android/billingclient/api/ProductDetails;", "getFullIdentifier", "()Ljava/lang/String;", "getBasePlanType", "()Lcom/superwall/sdk/store/abstractions/product/BasePlanType;", "basePlanId", "getBasePlanId", "priceFormatterProvider", "Lcom/superwall/sdk/store/abstractions/product/PriceFormatterProvider;", "getPriceFormatterProvider$annotations", "()V", "priceFormatter", "Ljava/text/NumberFormat;", "getPriceFormatter", "()Ljava/text/NumberFormat;", "priceFormatter$delegate", "Lkotlin/Lazy;", "offerId", "getOfferId$superwall_release", "offerId$delegate", "selectedOffer", "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;", "getSelectedOffer", "()Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;", "selectedOffer$delegate", "basePriceForSelectedOffer", "Ljava/math/BigDecimal;", "kotlin.jvm.PlatformType", "getBasePriceForSelectedOffer", "()Ljava/math/BigDecimal;", "basePriceForSelectedOffer$delegate", "selectedOfferPricingPhase", "Lcom/android/billingclient/api/ProductDetails$PricingPhase;", "getSelectedOfferPricingPhase", "()Lcom/android/billingclient/api/ProductDetails$PricingPhase;", "selectedOfferPricingPhase$delegate", "productIdentifier", "getProductIdentifier", "productIdentifier$delegate", "productType", "getProductType", "price", "getPrice", "price$delegate", "localizedPrice", "getLocalizedPrice", "localizedPrice$delegate", "localizedSubscriptionPeriod", "getLocalizedSubscriptionPeriod", "localizedSubscriptionPeriod$delegate", TypedValues.Cycle.S_WAVE_PERIOD, "getPeriod", "period$delegate", "periodly", "getPeriodly", "periodly$delegate", "periodWeeks", "", "getPeriodWeeks", "()I", "periodWeeks$delegate", "periodWeeksString", "getPeriodWeeksString", "periodWeeksString$delegate", "periodMonths", "getPeriodMonths", "periodMonths$delegate", "periodMonthsString", "getPeriodMonthsString", "periodMonthsString$delegate", "periodYears", "getPeriodYears", "periodYears$delegate", "periodYearsString", "getPeriodYearsString", "periodYearsString$delegate", "periodDays", "getPeriodDays", "periodDays$delegate", "periodDaysString", "getPeriodDaysString", "periodDaysString$delegate", "dailyPrice", "getDailyPrice", "dailyPrice$delegate", "weeklyPrice", "getWeeklyPrice", "weeklyPrice$delegate", "monthlyPrice", "getMonthlyPrice", "monthlyPrice$delegate", "yearlyPrice", "getYearlyPrice", "yearlyPrice$delegate", "hasFreeTrial", "", "getHasFreeTrial", "()Z", "hasFreeTrial$delegate", "localizedTrialPeriodPrice", "getLocalizedTrialPeriodPrice", "localizedTrialPeriodPrice$delegate", "trialPeriodPrice", "getTrialPeriodPrice", "trialPeriodPrice$delegate", "getSelectedOfferDetails", "automaticallySelectSubscriptionOffer", "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;", "findLongestFreeTrial", "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;", "offers", "", "findLowestNonFreeOffer", "trialPeriodEndDate", "Ljava/util/Date;", "getTrialPeriodEndDate", "()Ljava/util/Date;", "trialPeriodEndDate$delegate", "trialPeriodEndDateString", "getTrialPeriodEndDateString", "trialPeriodEndDateString$delegate", "trialPeriodDays", "getTrialPeriodDays", "trialPeriodDays$delegate", "trialPeriodDaysString", "getTrialPeriodDaysString", "trialPeriodDaysString$delegate", "trialPeriodWeeks", "getTrialPeriodWeeks", "trialPeriodWeeks$delegate", "trialPeriodWeeksString", "getTrialPeriodWeeksString", "trialPeriodWeeksString$delegate", "trialPeriodMonths", "getTrialPeriodMonths", "trialPeriodMonths$delegate", "trialPeriodMonthsString", "getTrialPeriodMonthsString", "trialPeriodMonthsString$delegate", "trialPeriodYears", "getTrialPeriodYears", "trialPeriodYears$delegate", "trialPeriodYearsString", "getTrialPeriodYearsString", "trialPeriodYearsString$delegate", "trialPeriodText", "getTrialPeriodText", "trialPeriodText$delegate", Constants.LOCALE, "getLocale", "locale$delegate", "languageCode", "getLanguageCode", "languageCode$delegate", "currencyCode", "getCurrencyCode", "currencyCode$delegate", "currencySymbol", "getCurrencySymbol", "currencySymbol$delegate", "regionCode", "getRegionCode", "regionCode$delegate", "subscriptionPeriod", "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;", "getSubscriptionPeriod", "()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;", "subscriptionPeriod$delegate", "trialPeriodPricePerUnit", "unit", "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;", "pricePerUnit", "pricingPhase", "periodsPerUnit", "trialSubscriptionPeriod", "getTrialSubscriptionPeriod", "trialSubscriptionPeriod$delegate", "isSubscription", "isSubscription$superwall_release", "isSubscription$delegate", "Companion", "SelectedOfferDetails", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RawStoreProduct implements StoreProductType {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final BasePlanType basePlanType;

    /* JADX INFO: renamed from: basePriceForSelectedOffer$delegate, reason: from kotlin metadata */
    private final Lazy basePriceForSelectedOffer;

    /* JADX INFO: renamed from: currencyCode$delegate, reason: from kotlin metadata */
    private final Lazy currencyCode;

    /* JADX INFO: renamed from: currencySymbol$delegate, reason: from kotlin metadata */
    private final Lazy currencySymbol;

    /* JADX INFO: renamed from: dailyPrice$delegate, reason: from kotlin metadata */
    private final Lazy dailyPrice;
    private final String fullIdentifier;

    /* JADX INFO: renamed from: hasFreeTrial$delegate, reason: from kotlin metadata */
    private final Lazy hasFreeTrial;

    /* JADX INFO: renamed from: isSubscription$delegate, reason: from kotlin metadata */
    private final Lazy isSubscription;

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

    /* JADX INFO: renamed from: offerId$delegate, reason: from kotlin metadata */
    private final Lazy offerId;
    private final OfferType offerType;

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

    /* JADX INFO: renamed from: productIdentifier$delegate, reason: from kotlin metadata */
    private final Lazy productIdentifier;

    /* JADX INFO: renamed from: regionCode$delegate, reason: from kotlin metadata */
    private final Lazy regionCode;

    /* JADX INFO: renamed from: selectedOffer$delegate, reason: from kotlin metadata */
    private final Lazy selectedOffer;

    /* JADX INFO: renamed from: selectedOfferPricingPhase$delegate, reason: from kotlin metadata */
    private final Lazy selectedOfferPricingPhase;

    /* JADX INFO: renamed from: subscriptionPeriod$delegate, reason: from kotlin metadata */
    private final Lazy subscriptionPeriod;

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

    /* JADX INFO: renamed from: trialPeriodPrice$delegate, reason: from kotlin metadata */
    private final Lazy trialPeriodPrice;

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
    private final ProductDetails underlyingProductDetails;

    /* JADX INFO: renamed from: weeklyPrice$delegate, reason: from kotlin metadata */
    private final Lazy weeklyPrice;

    /* JADX INFO: renamed from: yearlyPrice$delegate, reason: from kotlin metadata */
    private final Lazy yearlyPrice;

    /* JADX INFO: compiled from: RawStoreProduct.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
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

    @Transient
    private static /* synthetic */ void getPriceFormatterProvider$annotations() {
    }

    public RawStoreProduct(ProductDetails underlyingProductDetails, String fullIdentifier, BasePlanType basePlanType, OfferType offerType) {
        Intrinsics.checkNotNullParameter(underlyingProductDetails, "underlyingProductDetails");
        Intrinsics.checkNotNullParameter(fullIdentifier, "fullIdentifier");
        Intrinsics.checkNotNullParameter(basePlanType, "basePlanType");
        Intrinsics.checkNotNullParameter(offerType, "offerType");
        this.underlyingProductDetails = underlyingProductDetails;
        this.fullIdentifier = fullIdentifier;
        this.basePlanType = basePlanType;
        this.offerType = offerType;
        this.priceFormatterProvider = new PriceFormatterProvider();
        this.priceFormatter = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.priceFormatter_delegate$lambda$1(this.f$0);
            }
        });
        this.offerId = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.offerId_delegate$lambda$2(this.f$0);
            }
        });
        this.selectedOffer = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.getSelectedOfferDetails();
            }
        });
        this.basePriceForSelectedOffer = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.basePriceForSelectedOffer_delegate$lambda$4(this.f$0);
            }
        });
        this.selectedOfferPricingPhase = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.selectedOfferPricingPhase_delegate$lambda$7(this.f$0);
            }
        });
        this.productIdentifier = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda34
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.productIdentifier_delegate$lambda$8(this.f$0);
            }
        });
        this.price = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda35
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.price_delegate$lambda$10(this.f$0);
            }
        });
        this.localizedPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda36
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.localizedPrice_delegate$lambda$11(this.f$0);
            }
        });
        this.localizedSubscriptionPeriod = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda37
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.localizedSubscriptionPeriod_delegate$lambda$13(this.f$0);
            }
        });
        this.period = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda38
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.period_delegate$lambda$15(this.f$0);
            }
        });
        this.periodly = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.periodly_delegate$lambda$17(this.f$0);
            }
        });
        this.periodWeeks = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(RawStoreProduct.periodWeeks_delegate$lambda$19(this.f$0));
            }
        });
        this.periodWeeksString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda33
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.periodWeeksString_delegate$lambda$20(this.f$0);
            }
        });
        this.periodMonths = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda39
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(RawStoreProduct.periodMonths_delegate$lambda$22(this.f$0));
            }
        });
        this.periodMonthsString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda40
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.periodMonthsString_delegate$lambda$23(this.f$0);
            }
        });
        this.periodYears = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda41
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(RawStoreProduct.periodYears_delegate$lambda$25(this.f$0));
            }
        });
        this.periodYearsString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda42
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.periodYearsString_delegate$lambda$26(this.f$0);
            }
        });
        this.periodDays = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda43
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(RawStoreProduct.periodDays_delegate$lambda$28(this.f$0));
            }
        });
        this.periodDaysString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda44
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.periodDaysString_delegate$lambda$29(this.f$0);
            }
        });
        this.dailyPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.dailyPrice_delegate$lambda$30(this.f$0);
            }
        });
        this.weeklyPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.weeklyPrice_delegate$lambda$31(this.f$0);
            }
        });
        this.monthlyPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.monthlyPrice_delegate$lambda$32(this.f$0);
            }
        });
        this.yearlyPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.yearlyPrice_delegate$lambda$33(this.f$0);
            }
        });
        this.hasFreeTrial = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(RawStoreProduct.hasFreeTrial_delegate$lambda$34(this.f$0));
            }
        });
        this.localizedTrialPeriodPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.localizedTrialPeriodPrice_delegate$lambda$35(this.f$0);
            }
        });
        this.trialPeriodPrice = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.trialPeriodPrice_delegate$lambda$39(this.f$0);
            }
        });
        this.trialPeriodEndDate = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.trialPeriodEndDate_delegate$lambda$74(this.f$0);
            }
        });
        this.trialPeriodEndDateString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.trialPeriodEndDateString_delegate$lambda$76(this.f$0);
            }
        });
        this.trialPeriodDays = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(RawStoreProduct.trialPeriodDays_delegate$lambda$78(this.f$0));
            }
        });
        this.trialPeriodDaysString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.trialPeriodDaysString_delegate$lambda$79(this.f$0);
            }
        });
        this.trialPeriodWeeks = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(RawStoreProduct.trialPeriodWeeks_delegate$lambda$80(this.f$0));
            }
        });
        this.trialPeriodWeeksString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.trialPeriodWeeksString_delegate$lambda$81(this.f$0);
            }
        });
        this.trialPeriodMonths = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(RawStoreProduct.trialPeriodMonths_delegate$lambda$83(this.f$0));
            }
        });
        this.trialPeriodMonthsString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.trialPeriodMonthsString_delegate$lambda$84(this.f$0);
            }
        });
        this.trialPeriodYears = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(RawStoreProduct.trialPeriodYears_delegate$lambda$86(this.f$0));
            }
        });
        this.trialPeriodYearsString = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.trialPeriodYearsString_delegate$lambda$87(this.f$0);
            }
        });
        this.trialPeriodText = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.trialPeriodText_delegate$lambda$88(this.f$0);
            }
        });
        this.locale = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.locale_delegate$lambda$89();
            }
        });
        this.languageCode = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.languageCode_delegate$lambda$90();
            }
        });
        this.currencyCode = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.currencyCode_delegate$lambda$91(this.f$0);
            }
        });
        this.currencySymbol = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.currencySymbol_delegate$lambda$93(this.f$0);
            }
        });
        this.regionCode = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.regionCode_delegate$lambda$94();
            }
        });
        this.subscriptionPeriod = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda29
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.subscriptionPeriod_delegate$lambda$95(this.f$0);
            }
        });
        this.trialSubscriptionPeriod = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda30
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawStoreProduct.trialSubscriptionPeriod_delegate$lambda$98(this.f$0);
            }
        });
        this.isSubscription = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.store.abstractions.product.RawStoreProduct$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(RawStoreProduct.isSubscription_delegate$lambda$99(this.f$0));
            }
        });
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public Map<String, String> getAttributes() {
        return StoreProductType.DefaultImpls.getAttributes(this);
    }

    public final ProductDetails getUnderlyingProductDetails() {
        return this.underlyingProductDetails;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getFullIdentifier() {
        return this.fullIdentifier;
    }

    public final BasePlanType getBasePlanType() {
        return this.basePlanType;
    }

    public final String getBasePlanId() {
        return this.basePlanType.getSpecificId();
    }

    /* JADX INFO: compiled from: RawStoreProduct.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;", "", "<init>", "()V", com.google.firebase.messaging.Constants.MessagePayloadKeys.FROM, "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;", "details", "Lcom/android/billingclient/api/ProductDetails;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final RawStoreProduct from(ProductDetails details) {
            Intrinsics.checkNotNullParameter(details, "details");
            DecomposedProductIds.Companion companion = DecomposedProductIds.INSTANCE;
            String productId = details.getProductId();
            Intrinsics.checkNotNullExpressionValue(productId, "getProductId(...)");
            DecomposedProductIds decomposedProductIdsFrom = companion.from(productId);
            String productId2 = details.getProductId();
            Intrinsics.checkNotNullExpressionValue(productId2, "getProductId(...)");
            return new RawStoreProduct(details, productId2, decomposedProductIdsFrom.getBasePlanType(), decomposedProductIdsFrom.getOfferType());
        }
    }

    private final NumberFormat getPriceFormatter() {
        return (NumberFormat) this.priceFormatter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NumberFormat priceFormatter_delegate$lambda$1(RawStoreProduct rawStoreProduct) {
        String currencyCode = rawStoreProduct.getCurrencyCode();
        if (currencyCode != null) {
            return rawStoreProduct.priceFormatterProvider.priceFormatter(currencyCode);
        }
        return null;
    }

    public final String getOfferId$superwall_release() {
        return (String) this.offerId.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String offerId_delegate$lambda$2(RawStoreProduct rawStoreProduct) {
        SelectedOfferDetails selectedOffer = rawStoreProduct.getSelectedOffer();
        if (selectedOffer instanceof SelectedOfferDetails.Subscription) {
            return ((SelectedOfferDetails.Subscription) selectedOffer).getUnderlying().getOfferId();
        }
        if (selectedOffer instanceof SelectedOfferDetails.OneTime) {
            return ((SelectedOfferDetails.OneTime) selectedOffer).getOfferId();
        }
        if (selectedOffer == null) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final SelectedOfferDetails getSelectedOffer() {
        return (SelectedOfferDetails) this.selectedOffer.getValue();
    }

    private final BigDecimal getBasePriceForSelectedOffer() {
        return (BigDecimal) this.basePriceForSelectedOffer.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BigDecimal basePriceForSelectedOffer_delegate$lambda$4(RawStoreProduct rawStoreProduct) {
        SelectedOfferDetails selectedOffer = rawStoreProduct.getSelectedOffer();
        if (selectedOffer instanceof SelectedOfferDetails.Subscription) {
            List<ProductDetails.PricingPhase> pricingPhaseList = ((SelectedOfferDetails.Subscription) selectedOffer).getUnderlying().getPricingPhases().getPricingPhaseList();
            Intrinsics.checkNotNullExpressionValue(pricingPhaseList, "getPricingPhaseList(...)");
            return new BigDecimal(((ProductDetails.PricingPhase) CollectionsKt.last((List) pricingPhaseList)).getPriceAmountMicros()).divide(new BigDecimal(1000000), 2, RoundingMode.DOWN);
        }
        if (selectedOffer instanceof SelectedOfferDetails.OneTime) {
            return new BigDecimal(((SelectedOfferDetails.OneTime) selectedOffer).getUnderlying().getPriceAmountMicros()).divide(new BigDecimal(1000000), 2, RoundingMode.DOWN);
        }
        if (selectedOffer != null) {
            throw new NoWhenBranchMatchedException();
        }
        return BigDecimal.ZERO;
    }

    private final ProductDetails.PricingPhase getSelectedOfferPricingPhase() {
        return (ProductDetails.PricingPhase) this.selectedOfferPricingPhase.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProductDetails.PricingPhase selectedOfferPricingPhase_delegate$lambda$7(RawStoreProduct rawStoreProduct) {
        Object next;
        SelectedOfferDetails selectedOffer = rawStoreProduct.getSelectedOffer();
        Object obj = null;
        if (selectedOffer instanceof SelectedOfferDetails.Subscription) {
            SelectedOfferDetails.Subscription subscription = (SelectedOfferDetails.Subscription) selectedOffer;
            List<ProductDetails.PricingPhase> pricingPhaseList = subscription.getUnderlying().getPricingPhases().getPricingPhaseList();
            Intrinsics.checkNotNullExpressionValue(pricingPhaseList, "getPricingPhaseList(...)");
            Iterator<T> it = pricingPhaseList.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((ProductDetails.PricingPhase) next).getPriceAmountMicros() != 0);
            ProductDetails.PricingPhase pricingPhase = (ProductDetails.PricingPhase) next;
            if (pricingPhase != null) {
                return pricingPhase;
            }
            List<ProductDetails.PricingPhase> pricingPhaseList2 = subscription.getUnderlying().getPricingPhases().getPricingPhaseList();
            Intrinsics.checkNotNullExpressionValue(pricingPhaseList2, "getPricingPhaseList(...)");
            for (Object obj2 : CollectionsKt.dropLast(pricingPhaseList2, 1)) {
                if (((ProductDetails.PricingPhase) obj2).getPriceAmountMicros() != 0) {
                    obj = obj2;
                    break;
                }
            }
            return (ProductDetails.PricingPhase) obj;
        }
        if ((selectedOffer instanceof SelectedOfferDetails.OneTime) || selectedOffer == null) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getProductIdentifier() {
        return (String) this.productIdentifier.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String productIdentifier_delegate$lambda$8(RawStoreProduct rawStoreProduct) {
        return rawStoreProduct.underlyingProductDetails.getProductId();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getProductType() {
        String productType = this.underlyingProductDetails.getProductType();
        Intrinsics.checkNotNullExpressionValue(productType, "getProductType(...)");
        return productType;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public BigDecimal getPrice() {
        return (BigDecimal) this.price.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BigDecimal price_delegate$lambda$10(RawStoreProduct rawStoreProduct) {
        BigDecimal bigDecimalDivide;
        if (rawStoreProduct.getSelectedOffer() != null) {
            return rawStoreProduct.getBasePriceForSelectedOffer();
        }
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = rawStoreProduct.underlyingProductDetails.getOneTimePurchaseOfferDetails();
        return (oneTimePurchaseOfferDetails == null || (bigDecimalDivide = new BigDecimal(oneTimePurchaseOfferDetails.getPriceAmountMicros()).divide(new BigDecimal(1000000), 2, RoundingMode.DOWN)) == null) ? BigDecimal.ZERO : bigDecimalDivide;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocalizedPrice() {
        return (String) this.localizedPrice.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String localizedPrice_delegate$lambda$11(RawStoreProduct rawStoreProduct) {
        String str;
        NumberFormat priceFormatter = rawStoreProduct.getPriceFormatter();
        return (priceFormatter == null || (str = priceFormatter.format(rawStoreProduct.getPrice())) == null) ? "" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocalizedSubscriptionPeriod() {
        return (String) this.localizedSubscriptionPeriod.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String localizedSubscriptionPeriod_delegate$lambda$13(RawStoreProduct rawStoreProduct) {
        SubscriptionPeriod subscriptionPeriod = rawStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod != null) {
            AmountFormats amountFormats = AmountFormats.INSTANCE;
            Period period = subscriptionPeriod.toPeriod();
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            String strWordBased = amountFormats.wordBased(period, locale);
            return strWordBased == null ? "" : strWordBased;
        }
        return "";
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriod() {
        return (String) this.period.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String period_delegate$lambda$15(RawStoreProduct rawStoreProduct) {
        SubscriptionPeriod subscriptionPeriod = rawStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return "";
        }
        int i = WhenMappings.$EnumSwitchMapping$0[subscriptionPeriod.getUnit().ordinal()];
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
    public static final String periodly_delegate$lambda$17(RawStoreProduct rawStoreProduct) {
        String str;
        SubscriptionPeriod subscriptionPeriod = rawStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return "";
        }
        if (WhenMappings.$EnumSwitchMapping$0[subscriptionPeriod.getUnit().ordinal()] != 3) {
            str = rawStoreProduct.getPeriod() + "ly";
        } else {
            int value = subscriptionPeriod.getValue();
            if (value == 2 || value == 6) {
                str = "every " + rawStoreProduct.getPeriod();
            } else {
                str = rawStoreProduct.getPeriod() + "ly";
            }
        }
        return str == null ? "" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodWeeks() {
        return ((Number) this.periodWeeks.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int periodWeeks_delegate$lambda$19(RawStoreProduct rawStoreProduct) {
        SubscriptionPeriod subscriptionPeriod = rawStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return 0;
        }
        int value = subscriptionPeriod.getValue();
        int i = WhenMappings.$EnumSwitchMapping$0[subscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return value / 7;
        }
        if (i == 2) {
            return value;
        }
        if (i == 3) {
            return value * 4;
        }
        if (i == 4) {
            return value * 52;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodWeeksString() {
        return (String) this.periodWeeksString.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String periodWeeksString_delegate$lambda$20(RawStoreProduct rawStoreProduct) {
        return String.valueOf(rawStoreProduct.getPeriodWeeks());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodMonths() {
        return ((Number) this.periodMonths.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int periodMonths_delegate$lambda$22(RawStoreProduct rawStoreProduct) {
        SubscriptionPeriod subscriptionPeriod = rawStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return 0;
        }
        int value = subscriptionPeriod.getValue();
        int i = WhenMappings.$EnumSwitchMapping$0[subscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return value / 30;
        }
        if (i == 2) {
            return value / 4;
        }
        if (i == 3) {
            return value;
        }
        if (i == 4) {
            return value * 12;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodMonthsString() {
        return (String) this.periodMonthsString.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String periodMonthsString_delegate$lambda$23(RawStoreProduct rawStoreProduct) {
        return String.valueOf(rawStoreProduct.getPeriodMonths());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodYears() {
        return ((Number) this.periodYears.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int periodYears_delegate$lambda$25(RawStoreProduct rawStoreProduct) {
        SubscriptionPeriod subscriptionPeriod = rawStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return 0;
        }
        int value = subscriptionPeriod.getValue();
        int i = WhenMappings.$EnumSwitchMapping$0[subscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return value / 365;
        }
        if (i == 2) {
            return value / 52;
        }
        if (i == 3) {
            return value / 12;
        }
        if (i == 4) {
            return value;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodYearsString() {
        return (String) this.periodYearsString.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String periodYearsString_delegate$lambda$26(RawStoreProduct rawStoreProduct) {
        return String.valueOf(rawStoreProduct.getPeriodYears());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodDays() {
        return ((Number) this.periodDays.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int periodDays_delegate$lambda$28(RawStoreProduct rawStoreProduct) {
        SubscriptionPeriod subscriptionPeriod = rawStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return 0;
        }
        int value = subscriptionPeriod.getValue();
        int i = WhenMappings.$EnumSwitchMapping$0[subscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return value;
        }
        if (i == 2) {
            return value * 7;
        }
        if (i == 3) {
            return value * 30;
        }
        if (i == 4) {
            return value * 365;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodDaysString() {
        return (String) this.periodDaysString.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String periodDaysString_delegate$lambda$29(RawStoreProduct rawStoreProduct) {
        return String.valueOf(rawStoreProduct.getPeriodDays());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getDailyPrice() {
        return (String) this.dailyPrice.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String dailyPrice_delegate$lambda$30(RawStoreProduct rawStoreProduct) {
        String str;
        String str2;
        if (rawStoreProduct.getSelectedOffer() instanceof SelectedOfferDetails.OneTime) {
            return "n/a";
        }
        BigDecimal basePriceForSelectedOffer = rawStoreProduct.getBasePriceForSelectedOffer();
        if (Intrinsics.areEqual(basePriceForSelectedOffer, BigDecimal.ZERO)) {
            NumberFormat priceFormatter = rawStoreProduct.getPriceFormatter();
            return (priceFormatter == null || (str2 = priceFormatter.format(BigDecimal.ZERO)) == null) ? "$0.00" : str2;
        }
        SubscriptionPeriod subscriptionPeriod = rawStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return "n/a";
        }
        Intrinsics.checkNotNull(basePriceForSelectedOffer);
        BigDecimal bigDecimalPricePerDay = subscriptionPeriod.pricePerDay(basePriceForSelectedOffer);
        NumberFormat priceFormatter2 = rawStoreProduct.getPriceFormatter();
        return (priceFormatter2 == null || (str = priceFormatter2.format(bigDecimalPricePerDay)) == null) ? "n/a" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getWeeklyPrice() {
        return (String) this.weeklyPrice.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String weeklyPrice_delegate$lambda$31(RawStoreProduct rawStoreProduct) {
        String str;
        String str2;
        if (rawStoreProduct.getSelectedOffer() instanceof SelectedOfferDetails.OneTime) {
            return "n/a";
        }
        BigDecimal basePriceForSelectedOffer = rawStoreProduct.getBasePriceForSelectedOffer();
        if (Intrinsics.areEqual(basePriceForSelectedOffer, BigDecimal.ZERO)) {
            NumberFormat priceFormatter = rawStoreProduct.getPriceFormatter();
            return (priceFormatter == null || (str2 = priceFormatter.format(BigDecimal.ZERO)) == null) ? "$0.00" : str2;
        }
        SubscriptionPeriod subscriptionPeriod = rawStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return "n/a";
        }
        Intrinsics.checkNotNull(basePriceForSelectedOffer);
        BigDecimal bigDecimalPricePerWeek = subscriptionPeriod.pricePerWeek(basePriceForSelectedOffer);
        NumberFormat priceFormatter2 = rawStoreProduct.getPriceFormatter();
        return (priceFormatter2 == null || (str = priceFormatter2.format(bigDecimalPricePerWeek)) == null) ? "n/a" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getMonthlyPrice() {
        return (String) this.monthlyPrice.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String monthlyPrice_delegate$lambda$32(RawStoreProduct rawStoreProduct) {
        String str;
        String str2;
        if (rawStoreProduct.getSelectedOffer() instanceof SelectedOfferDetails.OneTime) {
            return "n/a";
        }
        BigDecimal basePriceForSelectedOffer = rawStoreProduct.getBasePriceForSelectedOffer();
        if (Intrinsics.areEqual(basePriceForSelectedOffer, BigDecimal.ZERO)) {
            NumberFormat priceFormatter = rawStoreProduct.getPriceFormatter();
            return (priceFormatter == null || (str2 = priceFormatter.format(BigDecimal.ZERO)) == null) ? "$0.00" : str2;
        }
        SubscriptionPeriod subscriptionPeriod = rawStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return "n/a";
        }
        Intrinsics.checkNotNull(basePriceForSelectedOffer);
        BigDecimal bigDecimalPricePerMonth = subscriptionPeriod.pricePerMonth(basePriceForSelectedOffer);
        NumberFormat priceFormatter2 = rawStoreProduct.getPriceFormatter();
        return (priceFormatter2 == null || (str = priceFormatter2.format(bigDecimalPricePerMonth)) == null) ? "n/a" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getYearlyPrice() {
        return (String) this.yearlyPrice.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String yearlyPrice_delegate$lambda$33(RawStoreProduct rawStoreProduct) {
        String str;
        String str2;
        if (rawStoreProduct.getSelectedOffer() instanceof SelectedOfferDetails.OneTime) {
            return "n/a";
        }
        BigDecimal basePriceForSelectedOffer = rawStoreProduct.getBasePriceForSelectedOffer();
        if (Intrinsics.areEqual(basePriceForSelectedOffer, BigDecimal.ZERO)) {
            NumberFormat priceFormatter = rawStoreProduct.getPriceFormatter();
            return (priceFormatter == null || (str2 = priceFormatter.format(BigDecimal.ZERO)) == null) ? "$0.00" : str2;
        }
        SubscriptionPeriod subscriptionPeriod = rawStoreProduct.getSubscriptionPeriod();
        if (subscriptionPeriod == null) {
            return "n/a";
        }
        Intrinsics.checkNotNull(basePriceForSelectedOffer);
        BigDecimal bigDecimalPricePerYear = subscriptionPeriod.pricePerYear(basePriceForSelectedOffer);
        NumberFormat priceFormatter2 = rawStoreProduct.getPriceFormatter();
        return (priceFormatter2 == null || (str = priceFormatter2.format(bigDecimalPricePerYear)) == null) ? "n/a" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public boolean getHasFreeTrial() {
        return ((Boolean) this.hasFreeTrial.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasFreeTrial_delegate$lambda$34(RawStoreProduct rawStoreProduct) {
        SelectedOfferDetails selectedOffer = rawStoreProduct.getSelectedOffer();
        if (selectedOffer instanceof SelectedOfferDetails.Subscription) {
            List<ProductDetails.PricingPhase> pricingPhaseList = ((SelectedOfferDetails.Subscription) selectedOffer).getUnderlying().getPricingPhases().getPricingPhaseList();
            Intrinsics.checkNotNullExpressionValue(pricingPhaseList, "getPricingPhaseList(...)");
            return !CollectionsKt.dropLast(pricingPhaseList, 1).isEmpty();
        }
        if ((selectedOffer instanceof SelectedOfferDetails.OneTime) || selectedOffer == null) {
            return false;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocalizedTrialPeriodPrice() {
        return (String) this.localizedTrialPeriodPrice.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String localizedTrialPeriodPrice_delegate$lambda$35(RawStoreProduct rawStoreProduct) {
        String str;
        NumberFormat priceFormatter = rawStoreProduct.getPriceFormatter();
        return (priceFormatter == null || (str = priceFormatter.format(rawStoreProduct.getTrialPeriodPrice())) == null) ? "$0.00" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public BigDecimal getTrialPeriodPrice() {
        Object value = this.trialPeriodPrice.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (BigDecimal) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BigDecimal trialPeriodPrice_delegate$lambda$39(RawStoreProduct rawStoreProduct) {
        Object obj;
        Object next;
        BigDecimal bigDecimalDivide;
        SelectedOfferDetails selectedOffer = rawStoreProduct.getSelectedOffer();
        if (selectedOffer instanceof SelectedOfferDetails.Subscription) {
            List<ProductDetails.PricingPhase> pricingPhaseList = ((SelectedOfferDetails.Subscription) selectedOffer).getUnderlying().getPricingPhases().getPricingPhaseList();
            Intrinsics.checkNotNullExpressionValue(pricingPhaseList, "getPricingPhaseList(...)");
            List listDropLast = CollectionsKt.dropLast(pricingPhaseList, 1);
            if (listDropLast.isEmpty()) {
                return BigDecimal.ZERO;
            }
            List list = listDropLast;
            Iterator it = list.iterator();
            do {
                obj = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((ProductDetails.PricingPhase) next).getPriceAmountMicros() != 0);
            if (((ProductDetails.PricingPhase) next) != null) {
                return BigDecimal.ZERO;
            }
            for (Object obj2 : list) {
                if (((ProductDetails.PricingPhase) obj2).getPriceAmountMicros() > 0) {
                    obj = obj2;
                    break;
                }
            }
            ProductDetails.PricingPhase pricingPhase = (ProductDetails.PricingPhase) obj;
            return (pricingPhase == null || (bigDecimalDivide = new BigDecimal(pricingPhase.getPriceAmountMicros()).divide(new BigDecimal(1000000), 2, RoundingMode.DOWN)) == null) ? BigDecimal.ZERO : bigDecimalDivide;
        }
        if (selectedOffer instanceof SelectedOfferDetails.OneTime) {
            return BigDecimal.ZERO;
        }
        if (selectedOffer != null) {
            throw new NoWhenBranchMatchedException();
        }
        return BigDecimal.ZERO;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:67:0x0135 A[PHI: r2
      0x0135: PHI (r2v45 com.android.billingclient.api.ProductDetails$OneTimePurchaseOfferDetails) = 
      (r2v23 com.android.billingclient.api.ProductDetails$OneTimePurchaseOfferDetails)
      (r2v48 com.android.billingclient.api.ProductDetails$OneTimePurchaseOfferDetails)
     binds: [B:136:0x0284, B:58:0x010d] A[DONT_GENERATE, DONT_INLINE]] */
    public final SelectedOfferDetails getSelectedOfferDetails() {
        Object next;
        Object next2;
        ProductDetails.SubscriptionOfferDetails underlying;
        Object next3;
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails;
        Object next4;
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails2;
        String offerId;
        Object next5;
        Object next6;
        Object next7;
        Object next8;
        ArrayList arrayList;
        Object next9;
        String offerId2;
        List<ProductDetails.OneTimePurchaseOfferDetails> oneTimePurchaseOfferDetailsList = this.underlyingProductDetails.getOneTimePurchaseOfferDetailsList();
        Object obj = null;
        if (oneTimePurchaseOfferDetailsList == null || oneTimePurchaseOfferDetailsList.isEmpty()) {
            ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails3 = this.underlyingProductDetails.getOneTimePurchaseOfferDetails();
            if (oneTimePurchaseOfferDetails3 != null) {
                return new SelectedOfferDetails.OneTime(oneTimePurchaseOfferDetails3, oneTimePurchaseOfferDetails3.getPurchaseOptionId(), oneTimePurchaseOfferDetails3.getOfferId());
            }
            List<ProductDetails.SubscriptionOfferDetails> subscriptionOfferDetails = this.underlyingProductDetails.getSubscriptionOfferDetails();
            if (subscriptionOfferDetails == null) {
                return null;
            }
            String basePlanId = getBasePlanId();
            if (basePlanId == null || basePlanId.length() == 0) {
                Iterator<T> it = subscriptionOfferDetails.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (((ProductDetails.SubscriptionOfferDetails) next).getPricingPhases().getPricingPhaseList().size() != 1);
                ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails2 = (ProductDetails.SubscriptionOfferDetails) next;
                return (SelectedOfferDetails) (subscriptionOfferDetails2 != null ? new SelectedOfferDetails.Subscription(subscriptionOfferDetails2) : null);
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : subscriptionOfferDetails) {
                if (Intrinsics.areEqual(((ProductDetails.SubscriptionOfferDetails) obj2).getBasePlanId(), getBasePlanId())) {
                    arrayList2.add(obj2);
                }
            }
            ArrayList arrayList3 = arrayList2;
            Iterator it2 = arrayList3.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
            } while (((ProductDetails.SubscriptionOfferDetails) next2).getPricingPhases().getPricingPhaseList().size() != 1);
            ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails3 = (ProductDetails.SubscriptionOfferDetails) next2;
            if (subscriptionOfferDetails3 == null) {
                return null;
            }
            OfferType offerType = this.offerType;
            if (offerType instanceof OfferType.Auto) {
                SelectedOfferDetails.Subscription subscriptionAutomaticallySelectSubscriptionOffer = automaticallySelectSubscriptionOffer();
                if (subscriptionAutomaticallySelectSubscriptionOffer != null && (underlying = subscriptionAutomaticallySelectSubscriptionOffer.getUnderlying()) != null) {
                    subscriptionOfferDetails3 = underlying;
                }
            } else if (!(offerType instanceof OfferType.None)) {
                if (!(offerType instanceof OfferType.Specific)) {
                    throw new NoWhenBranchMatchedException();
                }
                for (Object obj3 : arrayList3) {
                    if (Intrinsics.areEqual(((ProductDetails.SubscriptionOfferDetails) obj3).getOfferId(), ((OfferType.Specific) this.offerType).getId())) {
                        obj = obj3;
                        break;
                    }
                }
                ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails4 = (ProductDetails.SubscriptionOfferDetails) obj;
                if (subscriptionOfferDetails4 != null) {
                    subscriptionOfferDetails3 = subscriptionOfferDetails4;
                }
            }
            return new SelectedOfferDetails.Subscription(subscriptionOfferDetails3);
        }
        List<ProductDetails.OneTimePurchaseOfferDetails> oneTimePurchaseOfferDetailsList2 = this.underlyingProductDetails.getOneTimePurchaseOfferDetailsList();
        if (oneTimePurchaseOfferDetailsList2 == null) {
            oneTimePurchaseOfferDetailsList2 = CollectionsKt.emptyList();
        }
        boolean z = this.basePlanType instanceof BasePlanType.Specific;
        String specificId = this.offerType.getSpecificId();
        OfferType offerType2 = this.offerType;
        boolean z2 = offerType2 instanceof OfferType.Specific;
        boolean z3 = offerType2 instanceof OfferType.None;
        if (z3) {
            if (z) {
                ArrayList arrayList4 = new ArrayList();
                for (Object obj4 : oneTimePurchaseOfferDetailsList2) {
                    ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails4 = (ProductDetails.OneTimePurchaseOfferDetails) obj4;
                    if (Intrinsics.areEqual(oneTimePurchaseOfferDetails4.getPurchaseOptionId(), getBasePlanId()) && ((offerId2 = oneTimePurchaseOfferDetails4.getOfferId()) == null || offerId2.length() == 0)) {
                        arrayList4.add(obj4);
                    }
                }
                arrayList = arrayList4;
            } else {
                ArrayList arrayList5 = new ArrayList();
                for (Object obj5 : oneTimePurchaseOfferDetailsList2) {
                    String offerId3 = ((ProductDetails.OneTimePurchaseOfferDetails) obj5).getOfferId();
                    if (offerId3 == null || offerId3.length() == 0) {
                        arrayList5.add(obj5);
                    }
                }
                arrayList = arrayList5;
            }
            Iterator it3 = arrayList.iterator();
            if (it3.hasNext()) {
                next9 = it3.next();
                if (it3.hasNext()) {
                    long priceAmountMicros = ((ProductDetails.OneTimePurchaseOfferDetails) next9).getPriceAmountMicros();
                    do {
                        Object next10 = it3.next();
                        long priceAmountMicros2 = ((ProductDetails.OneTimePurchaseOfferDetails) next10).getPriceAmountMicros();
                        if (priceAmountMicros > priceAmountMicros2) {
                            next9 = next10;
                            priceAmountMicros = priceAmountMicros2;
                        }
                    } while (it3.hasNext());
                }
            } else {
                next9 = null;
            }
            oneTimePurchaseOfferDetails2 = (ProductDetails.OneTimePurchaseOfferDetails) next9;
        } else if (z && z2) {
            List<ProductDetails.OneTimePurchaseOfferDetails> list = oneTimePurchaseOfferDetailsList2;
            Iterator<T> it4 = list.iterator();
            while (true) {
                if (!it4.hasNext()) {
                    next7 = null;
                    break;
                }
                next7 = it4.next();
                ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails5 = (ProductDetails.OneTimePurchaseOfferDetails) next7;
                if (Intrinsics.areEqual(oneTimePurchaseOfferDetails5.getPurchaseOptionId(), getBasePlanId()) && Intrinsics.areEqual(oneTimePurchaseOfferDetails5.getOfferId(), specificId)) {
                    break;
                }
            }
            oneTimePurchaseOfferDetails = (ProductDetails.OneTimePurchaseOfferDetails) next7;
            if (oneTimePurchaseOfferDetails == null) {
                Iterator<T> it5 = list.iterator();
                do {
                    if (!it5.hasNext()) {
                        next8 = null;
                        break;
                    }
                    next8 = it5.next();
                } while (!Intrinsics.areEqual(((ProductDetails.OneTimePurchaseOfferDetails) next8).getPurchaseOptionId(), getBasePlanId()));
                oneTimePurchaseOfferDetails2 = (ProductDetails.OneTimePurchaseOfferDetails) next8;
            } else {
                oneTimePurchaseOfferDetails2 = oneTimePurchaseOfferDetails;
            }
        } else if (!z && z2) {
            ArrayList arrayList6 = new ArrayList();
            for (Object obj6 : oneTimePurchaseOfferDetailsList2) {
                if (Intrinsics.areEqual(((ProductDetails.OneTimePurchaseOfferDetails) obj6).getOfferId(), specificId)) {
                    arrayList6.add(obj6);
                }
            }
            Iterator it6 = arrayList6.iterator();
            if (it6.hasNext()) {
                next6 = it6.next();
                if (it6.hasNext()) {
                    long priceAmountMicros3 = ((ProductDetails.OneTimePurchaseOfferDetails) next6).getPriceAmountMicros();
                    do {
                        Object next11 = it6.next();
                        long priceAmountMicros4 = ((ProductDetails.OneTimePurchaseOfferDetails) next11).getPriceAmountMicros();
                        if (priceAmountMicros3 > priceAmountMicros4) {
                            next6 = next11;
                            priceAmountMicros3 = priceAmountMicros4;
                        }
                    } while (it6.hasNext());
                }
            } else {
                next6 = null;
            }
            oneTimePurchaseOfferDetails2 = (ProductDetails.OneTimePurchaseOfferDetails) next6;
        } else if (z) {
            ArrayList arrayList7 = new ArrayList();
            for (Object obj7 : oneTimePurchaseOfferDetailsList2) {
                if (Intrinsics.areEqual(((ProductDetails.OneTimePurchaseOfferDetails) obj7).getPurchaseOptionId(), getBasePlanId())) {
                    arrayList7.add(obj7);
                }
            }
            Iterator it7 = arrayList7.iterator();
            if (it7.hasNext()) {
                next5 = it7.next();
                if (it7.hasNext()) {
                    long priceAmountMicros5 = ((ProductDetails.OneTimePurchaseOfferDetails) next5).getPriceAmountMicros();
                    do {
                        Object next12 = it7.next();
                        long priceAmountMicros6 = ((ProductDetails.OneTimePurchaseOfferDetails) next12).getPriceAmountMicros();
                        if (priceAmountMicros5 > priceAmountMicros6) {
                            next5 = next12;
                            priceAmountMicros5 = priceAmountMicros6;
                        }
                    } while (it7.hasNext());
                }
            } else {
                next5 = null;
            }
            oneTimePurchaseOfferDetails2 = (ProductDetails.OneTimePurchaseOfferDetails) next5;
        } else {
            List<ProductDetails.OneTimePurchaseOfferDetails> list2 = oneTimePurchaseOfferDetailsList2;
            ArrayList arrayList8 = new ArrayList();
            for (Object obj8 : list2) {
                ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails6 = (ProductDetails.OneTimePurchaseOfferDetails) obj8;
                String purchaseOptionId = oneTimePurchaseOfferDetails6.getPurchaseOptionId();
                if (purchaseOptionId != null && purchaseOptionId.length() != 0 && (offerId = oneTimePurchaseOfferDetails6.getOfferId()) != null && offerId.length() != 0) {
                    arrayList8.add(obj8);
                }
            }
            Iterator it8 = arrayList8.iterator();
            if (it8.hasNext()) {
                next3 = it8.next();
                if (it8.hasNext()) {
                    long priceAmountMicros7 = ((ProductDetails.OneTimePurchaseOfferDetails) next3).getPriceAmountMicros();
                    do {
                        Object next13 = it8.next();
                        long priceAmountMicros8 = ((ProductDetails.OneTimePurchaseOfferDetails) next13).getPriceAmountMicros();
                        if (priceAmountMicros7 > priceAmountMicros8) {
                            next3 = next13;
                            priceAmountMicros7 = priceAmountMicros8;
                        }
                    } while (it8.hasNext());
                }
            } else {
                next3 = null;
            }
            oneTimePurchaseOfferDetails = (ProductDetails.OneTimePurchaseOfferDetails) next3;
            if (oneTimePurchaseOfferDetails == null) {
                Iterator<T> it9 = list2.iterator();
                if (it9.hasNext()) {
                    next4 = it9.next();
                    if (it9.hasNext()) {
                        long priceAmountMicros9 = ((ProductDetails.OneTimePurchaseOfferDetails) next4).getPriceAmountMicros();
                        do {
                            Object next14 = it9.next();
                            long priceAmountMicros10 = ((ProductDetails.OneTimePurchaseOfferDetails) next14).getPriceAmountMicros();
                            if (priceAmountMicros9 > priceAmountMicros10) {
                                next4 = next14;
                                priceAmountMicros9 = priceAmountMicros10;
                            }
                        } while (it9.hasNext());
                    }
                } else {
                    next4 = null;
                }
                oneTimePurchaseOfferDetails2 = (ProductDetails.OneTimePurchaseOfferDetails) next4;
            } else {
                oneTimePurchaseOfferDetails2 = oneTimePurchaseOfferDetails;
            }
        }
        if (oneTimePurchaseOfferDetails2 == null && !z3) {
            oneTimePurchaseOfferDetails2 = this.underlyingProductDetails.getOneTimePurchaseOfferDetails();
        }
        return (SelectedOfferDetails) (oneTimePurchaseOfferDetails2 != null ? new SelectedOfferDetails.OneTime(oneTimePurchaseOfferDetails2, oneTimePurchaseOfferDetails2.getPurchaseOptionId(), oneTimePurchaseOfferDetails2.getOfferId()) : null);
    }

    private final SelectedOfferDetails.Subscription automaticallySelectSubscriptionOffer() {
        List<ProductDetails.SubscriptionOfferDetails> subscriptionOfferDetails = this.underlyingProductDetails.getSubscriptionOfferDetails();
        if (subscriptionOfferDetails == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : subscriptionOfferDetails) {
            if (Intrinsics.areEqual(((ProductDetails.SubscriptionOfferDetails) obj).getBasePlanId(), getBasePlanId())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (((ProductDetails.SubscriptionOfferDetails) obj2).getPricingPhases().getPricingPhaseList().size() != 1) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : arrayList2) {
            List<String> offerTags = ((ProductDetails.SubscriptionOfferDetails) obj3).getOfferTags();
            Intrinsics.checkNotNullExpressionValue(offerTags, "getOfferTags(...)");
            List<String> list = offerTags;
            boolean z = false;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (String str : list) {
                    Intrinsics.checkNotNull(str);
                    if (StringsKt.contains$default((CharSequence) str, (CharSequence) "-ignore-offer", false, 2, (Object) null)) {
                        z = true;
                        break;
                    }
                }
            }
            if (!z) {
                arrayList3.add(obj3);
            }
        }
        ArrayList arrayList4 = arrayList3;
        ProductDetails.SubscriptionOfferDetails subscriptionOfferDetailsFindLongestFreeTrial = findLongestFreeTrial(arrayList4);
        ProductDetails.SubscriptionOfferDetails subscriptionOfferDetailsFindLowestNonFreeOffer = findLowestNonFreeOffer(arrayList4);
        if (subscriptionOfferDetailsFindLongestFreeTrial == null) {
            subscriptionOfferDetailsFindLongestFreeTrial = subscriptionOfferDetailsFindLowestNonFreeOffer;
        }
        if (subscriptionOfferDetailsFindLongestFreeTrial != null) {
            return new SelectedOfferDetails.Subscription(subscriptionOfferDetailsFindLongestFreeTrial);
        }
        return null;
    }

    private final ProductDetails.SubscriptionOfferDetails findLongestFreeTrial(List<ProductDetails.SubscriptionOfferDetails> offers) {
        Object next;
        Object next2;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = offers.iterator();
        while (true) {
            Pair pair = null;
            if (!it.hasNext()) {
                break;
            }
            ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails = (ProductDetails.SubscriptionOfferDetails) it.next();
            List<ProductDetails.PricingPhase> pricingPhaseList = subscriptionOfferDetails.getPricingPhases().getPricingPhaseList();
            Intrinsics.checkNotNullExpressionValue(pricingPhaseList, "getPricingPhaseList(...)");
            Iterator it2 = CollectionsKt.dropLast(pricingPhaseList, 1).iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
            } while (((ProductDetails.PricingPhase) next2).getPriceAmountMicros() != 0);
            ProductDetails.PricingPhase pricingPhase = (ProductDetails.PricingPhase) next2;
            if (pricingPhase != null) {
                Period period = Period.parse(pricingPhase.getBillingPeriod());
                pair = new Pair(subscriptionOfferDetails, Long.valueOf((period.toTotalMonths() * ((long) 30)) + ((long) period.getDays())));
            }
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        Iterator it3 = arrayList.iterator();
        if (it3.hasNext()) {
            next = it3.next();
            if (it3.hasNext()) {
                long jLongValue = ((Number) ((Pair) next).getSecond()).longValue();
                do {
                    Object next3 = it3.next();
                    long jLongValue2 = ((Number) ((Pair) next3).getSecond()).longValue();
                    if (jLongValue < jLongValue2) {
                        next = next3;
                        jLongValue = jLongValue2;
                    }
                } while (it3.hasNext());
            }
        } else {
            next = null;
        }
        Pair pair2 = (Pair) next;
        if (pair2 != null) {
            return (ProductDetails.SubscriptionOfferDetails) pair2.getFirst();
        }
        return null;
    }

    private final ProductDetails.SubscriptionOfferDetails findLowestNonFreeOffer(List<ProductDetails.SubscriptionOfferDetails> offers) {
        Object next;
        Object next2;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = offers.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails = (ProductDetails.SubscriptionOfferDetails) it.next();
            List<ProductDetails.PricingPhase> pricingPhaseList = subscriptionOfferDetails.getPricingPhases().getPricingPhaseList();
            Intrinsics.checkNotNullExpressionValue(pricingPhaseList, "getPricingPhaseList(...)");
            Iterator it2 = CollectionsKt.dropLast(pricingPhaseList, 1).iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
            } while (((ProductDetails.PricingPhase) next2).getPriceAmountMicros() <= 0);
            ProductDetails.PricingPhase pricingPhase = (ProductDetails.PricingPhase) next2;
            Pair pair = pricingPhase != null ? new Pair(subscriptionOfferDetails, Long.valueOf(pricingPhase.getPriceAmountMicros())) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        Iterator it3 = arrayList.iterator();
        if (it3.hasNext()) {
            next = it3.next();
            if (it3.hasNext()) {
                long jLongValue = ((Number) ((Pair) next).getSecond()).longValue();
                do {
                    Object next3 = it3.next();
                    long jLongValue2 = ((Number) ((Pair) next3).getSecond()).longValue();
                    if (jLongValue > jLongValue2) {
                        next = next3;
                        jLongValue = jLongValue2;
                    }
                } while (it3.hasNext());
            }
        } else {
            next = null;
        }
        Pair pair2 = (Pair) next;
        if (pair2 != null) {
            return (ProductDetails.SubscriptionOfferDetails) pair2.getFirst();
        }
        return null;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public Date getTrialPeriodEndDate() {
        return (Date) this.trialPeriodEndDate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Date trialPeriodEndDate_delegate$lambda$74(RawStoreProduct rawStoreProduct) {
        SubscriptionPeriod trialSubscriptionPeriod = rawStoreProduct.getTrialSubscriptionPeriod();
        if (trialSubscriptionPeriod == null) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        int i = WhenMappings.$EnumSwitchMapping$0[trialSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            calendar.add(6, trialSubscriptionPeriod.getValue());
        } else if (i == 2) {
            calendar.add(3, trialSubscriptionPeriod.getValue());
        } else if (i == 3) {
            calendar.add(2, trialSubscriptionPeriod.getValue());
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            calendar.add(1, trialSubscriptionPeriod.getValue());
        }
        return calendar.getTime();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodEndDateString() {
        return (String) this.trialPeriodEndDateString.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trialPeriodEndDateString_delegate$lambda$76(RawStoreProduct rawStoreProduct) {
        String str;
        Date trialPeriodEndDate = rawStoreProduct.getTrialPeriodEndDate();
        return (trialPeriodEndDate == null || (str = DateUtilsKt.localizedDateFormat(DateUtils.INSTANCE.getMMM_dd_yyyy()).format(trialPeriodEndDate)) == null) ? "" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodDays() {
        return ((Number) this.trialPeriodDays.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int trialPeriodDays_delegate$lambda$78(RawStoreProduct rawStoreProduct) {
        SubscriptionPeriod trialSubscriptionPeriod = rawStoreProduct.getTrialSubscriptionPeriod();
        if (trialSubscriptionPeriod == null) {
            return 0;
        }
        int value = trialSubscriptionPeriod.getValue();
        int i = WhenMappings.$EnumSwitchMapping$0[trialSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return value;
        }
        if (i == 2) {
            return value * 7;
        }
        if (i == 3) {
            return value * 30;
        }
        if (i == 4) {
            return value * 365;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodDaysString() {
        return (String) this.trialPeriodDaysString.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trialPeriodDaysString_delegate$lambda$79(RawStoreProduct rawStoreProduct) {
        return String.valueOf(rawStoreProduct.getTrialPeriodDays());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodWeeks() {
        return ((Number) this.trialPeriodWeeks.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int trialPeriodWeeks_delegate$lambda$80(RawStoreProduct rawStoreProduct) {
        SubscriptionPeriod trialSubscriptionPeriod = rawStoreProduct.getTrialSubscriptionPeriod();
        if (trialSubscriptionPeriod == null) {
            return 0;
        }
        int value = trialSubscriptionPeriod.getValue();
        int i = WhenMappings.$EnumSwitchMapping$0[trialSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return value / 7;
        }
        if (i == 2) {
            return value;
        }
        if (i == 3) {
            return value * 4;
        }
        if (i == 4) {
            return value * 52;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodWeeksString() {
        return (String) this.trialPeriodWeeksString.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trialPeriodWeeksString_delegate$lambda$81(RawStoreProduct rawStoreProduct) {
        return String.valueOf(rawStoreProduct.getTrialPeriodWeeks());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodMonths() {
        return ((Number) this.trialPeriodMonths.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int trialPeriodMonths_delegate$lambda$83(RawStoreProduct rawStoreProduct) {
        SubscriptionPeriod trialSubscriptionPeriod = rawStoreProduct.getTrialSubscriptionPeriod();
        if (trialSubscriptionPeriod == null) {
            return 0;
        }
        int value = trialSubscriptionPeriod.getValue();
        int i = WhenMappings.$EnumSwitchMapping$0[trialSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return value / 30;
        }
        if (i == 2) {
            return value / 4;
        }
        if (i == 3) {
            return value;
        }
        if (i == 4) {
            return value * 12;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodMonthsString() {
        return (String) this.trialPeriodMonthsString.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trialPeriodMonthsString_delegate$lambda$84(RawStoreProduct rawStoreProduct) {
        return String.valueOf(rawStoreProduct.getTrialPeriodMonths());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodYears() {
        return ((Number) this.trialPeriodYears.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int trialPeriodYears_delegate$lambda$86(RawStoreProduct rawStoreProduct) {
        SubscriptionPeriod trialSubscriptionPeriod = rawStoreProduct.getTrialSubscriptionPeriod();
        if (trialSubscriptionPeriod == null) {
            return 0;
        }
        int value = trialSubscriptionPeriod.getValue();
        int i = WhenMappings.$EnumSwitchMapping$0[trialSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return value / 365;
        }
        if (i == 2) {
            return value / 52;
        }
        if (i == 3) {
            return value / 12;
        }
        if (i == 4) {
            return value;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodYearsString() {
        return (String) this.trialPeriodYearsString.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trialPeriodYearsString_delegate$lambda$87(RawStoreProduct rawStoreProduct) {
        return String.valueOf(rawStoreProduct.getTrialPeriodYears());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodText() {
        return (String) this.trialPeriodText.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trialPeriodText_delegate$lambda$88(RawStoreProduct rawStoreProduct) {
        SubscriptionPeriod trialSubscriptionPeriod = rawStoreProduct.getTrialSubscriptionPeriod();
        if (trialSubscriptionPeriod == null) {
            return "";
        }
        int value = trialSubscriptionPeriod.getValue();
        int i = WhenMappings.$EnumSwitchMapping$0[trialSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return value + "-day";
        }
        if (i == 2) {
            return (value * 7) + "-day";
        }
        if (i == 3) {
            return (value * 30) + "-day";
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return (value * 365) + "-day";
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocale() {
        return (String) this.locale.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String locale_delegate$lambda$89() {
        return Locale.getDefault().toString();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLanguageCode() {
        return (String) this.languageCode.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String languageCode_delegate$lambda$90() {
        return Locale.getDefault().getLanguage();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getCurrencyCode() {
        return (String) this.currencyCode.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String currencyCode_delegate$lambda$91(RawStoreProduct rawStoreProduct) {
        SelectedOfferDetails selectedOffer = rawStoreProduct.getSelectedOffer();
        if (selectedOffer instanceof SelectedOfferDetails.Subscription) {
            List<ProductDetails.PricingPhase> pricingPhaseList = ((SelectedOfferDetails.Subscription) selectedOffer).getUnderlying().getPricingPhases().getPricingPhaseList();
            Intrinsics.checkNotNullExpressionValue(pricingPhaseList, "getPricingPhaseList(...)");
            return ((ProductDetails.PricingPhase) CollectionsKt.last((List) pricingPhaseList)).getPriceCurrencyCode();
        }
        if (selectedOffer instanceof SelectedOfferDetails.OneTime) {
            return ((SelectedOfferDetails.OneTime) selectedOffer).getUnderlying().getPriceCurrencyCode();
        }
        if (selectedOffer == null) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getCurrencySymbol() {
        return (String) this.currencySymbol.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String currencySymbol_delegate$lambda$93(RawStoreProduct rawStoreProduct) {
        String currencyCode = rawStoreProduct.getCurrencyCode();
        if (currencyCode != null) {
            return Currency.getInstance(currencyCode).getSymbol();
        }
        return null;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getRegionCode() {
        return (String) this.regionCode.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String regionCode_delegate$lambda$94() {
        return Locale.getDefault().getCountry();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public SubscriptionPeriod getSubscriptionPeriod() {
        return (SubscriptionPeriod) this.subscriptionPeriod.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubscriptionPeriod subscriptionPeriod_delegate$lambda$95(RawStoreProduct rawStoreProduct) {
        SelectedOfferDetails selectedOffer = rawStoreProduct.getSelectedOffer();
        if (selectedOffer instanceof SelectedOfferDetails.Subscription) {
            List<ProductDetails.PricingPhase> pricingPhaseList = ((SelectedOfferDetails.Subscription) selectedOffer).getUnderlying().getPricingPhases().getPricingPhaseList();
            Intrinsics.checkNotNullExpressionValue(pricingPhaseList, "getPricingPhaseList(...)");
            String billingPeriod = ((ProductDetails.PricingPhase) CollectionsKt.last((List) pricingPhaseList)).getBillingPeriod();
            Intrinsics.checkNotNullExpressionValue(billingPeriod, "getBillingPeriod(...)");
            try {
                return SubscriptionPeriod.INSTANCE.from(billingPeriod);
            } catch (Throwable unused) {
                return null;
            }
        }
        if ((selectedOffer instanceof SelectedOfferDetails.OneTime) || selectedOffer == null) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String trialPeriodPricePerUnit(SubscriptionPeriod.Unit unit) {
        String str;
        String str2;
        String str3;
        Intrinsics.checkNotNullParameter(unit, "unit");
        ProductDetails.PricingPhase selectedOfferPricingPhase = getSelectedOfferPricingPhase();
        if (selectedOfferPricingPhase == null) {
            NumberFormat priceFormatter = getPriceFormatter();
            return (priceFormatter == null || (str3 = priceFormatter.format(0L)) == null) ? "$0.00" : str3;
        }
        if (selectedOfferPricingPhase.getPriceAmountMicros() == 0) {
            NumberFormat priceFormatter2 = getPriceFormatter();
            return (priceFormatter2 == null || (str2 = priceFormatter2.format(0L)) == null) ? "$0.00" : str2;
        }
        BigDecimal bigDecimalPricePerUnit = pricePerUnit(unit, selectedOfferPricingPhase);
        NumberFormat priceFormatter3 = getPriceFormatter();
        return (priceFormatter3 == null || (str = priceFormatter3.format(bigDecimalPricePerUnit)) == null) ? "$0.00" : str;
    }

    private final BigDecimal pricePerUnit(SubscriptionPeriod.Unit unit, ProductDetails.PricingPhase pricingPhase) {
        if (pricingPhase.getPriceAmountMicros() == 0) {
            BigDecimal ZERO = BigDecimal.ZERO;
            Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
            return ZERO;
        }
        BigDecimal bigDecimalMultiply = new BigDecimal(pricingPhase.getPriceAmountMicros()).divide(new BigDecimal(1000000), 6, RoundingMode.DOWN).multiply(new BigDecimal(pricingPhase.getBillingCycleCount()));
        ProductDetails.PricingPhase selectedOfferPricingPhase = getSelectedOfferPricingPhase();
        SubscriptionPeriod subscriptionPeriodFrom = null;
        String billingPeriod = selectedOfferPricingPhase != null ? selectedOfferPricingPhase.getBillingPeriod() : null;
        if (billingPeriod != null) {
            try {
                subscriptionPeriodFrom = SubscriptionPeriod.INSTANCE.from(billingPeriod);
            } catch (Throwable unused) {
            }
        }
        BigDecimal bigDecimalMultiply2 = periodsPerUnit(unit).multiply(new BigDecimal(pricingPhase.getBillingCycleCount())).multiply(new BigDecimal(subscriptionPeriodFrom != null ? subscriptionPeriodFrom.getValue() : 0));
        if (bigDecimalMultiply2.compareTo(BigDecimal.ONE) < 0) {
            Intrinsics.checkNotNull(bigDecimalMultiply);
            return bigDecimalMultiply;
        }
        BigDecimal bigDecimalDivide = bigDecimalMultiply.divide(bigDecimalMultiply2, 2, RoundingMode.DOWN);
        Intrinsics.checkNotNull(bigDecimalDivide);
        return bigDecimalDivide;
    }

    private final BigDecimal periodsPerUnit(SubscriptionPeriod.Unit unit) {
        SubscriptionPeriod.Unit unit2;
        int i;
        BigDecimal bigDecimalDivide;
        int i2 = WhenMappings.$EnumSwitchMapping$0[unit.ordinal()];
        if (i2 == 1) {
            SubscriptionPeriod trialSubscriptionPeriod = getTrialSubscriptionPeriod();
            unit2 = trialSubscriptionPeriod != null ? trialSubscriptionPeriod.getUnit() : null;
            i = unit2 != null ? WhenMappings.$EnumSwitchMapping$0[unit2.ordinal()] : -1;
            if (i == 1) {
                return new BigDecimal(1);
            }
            if (i == 2) {
                return new BigDecimal(7);
            }
            if (i == 3) {
                BigDecimal bigDecimalDivide2 = new BigDecimal(365).divide(new BigDecimal(12), 6, RoundingMode.DOWN);
                Intrinsics.checkNotNullExpressionValue(bigDecimalDivide2, "divide(...)");
                return bigDecimalDivide2;
            }
            if (i == 4) {
                return new BigDecimal(365);
            }
            BigDecimal ZERO = BigDecimal.ZERO;
            Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
            return ZERO;
        }
        if (i2 == 2) {
            SubscriptionPeriod trialSubscriptionPeriod2 = getTrialSubscriptionPeriod();
            unit2 = trialSubscriptionPeriod2 != null ? trialSubscriptionPeriod2.getUnit() : null;
            i = unit2 != null ? WhenMappings.$EnumSwitchMapping$0[unit2.ordinal()] : -1;
            if (i == 1) {
                BigDecimal bigDecimalDivide3 = BigDecimal.ONE.divide(new BigDecimal(7), 6, RoundingMode.DOWN);
                Intrinsics.checkNotNullExpressionValue(bigDecimalDivide3, "divide(...)");
                return bigDecimalDivide3;
            }
            if (i == 2) {
                return new BigDecimal(1);
            }
            if (i == 3) {
                BigDecimal bigDecimalDivide4 = new BigDecimal(52).divide(new BigDecimal(12), 6, RoundingMode.DOWN);
                Intrinsics.checkNotNullExpressionValue(bigDecimalDivide4, "divide(...)");
                return bigDecimalDivide4;
            }
            if (i == 4) {
                return new BigDecimal(52);
            }
            BigDecimal ZERO2 = BigDecimal.ZERO;
            Intrinsics.checkNotNullExpressionValue(ZERO2, "ZERO");
            return ZERO2;
        }
        if (i2 != 3) {
            if (i2 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            SubscriptionPeriod trialSubscriptionPeriod3 = getTrialSubscriptionPeriod();
            unit2 = trialSubscriptionPeriod3 != null ? trialSubscriptionPeriod3.getUnit() : null;
            i = unit2 != null ? WhenMappings.$EnumSwitchMapping$0[unit2.ordinal()] : -1;
            if (i == 1) {
                bigDecimalDivide = new BigDecimal(1).divide(new BigDecimal(365), 6, RoundingMode.DOWN);
            } else if (i == 2) {
                bigDecimalDivide = new BigDecimal(1).divide(new BigDecimal(52), 6, RoundingMode.DOWN);
            } else if (i == 3) {
                bigDecimalDivide = new BigDecimal(1).divide(new BigDecimal(12), 6, RoundingMode.DOWN);
            } else if (i == 4) {
                bigDecimalDivide = BigDecimal.ONE;
            } else {
                bigDecimalDivide = BigDecimal.ZERO;
            }
            Intrinsics.checkNotNull(bigDecimalDivide);
            return bigDecimalDivide;
        }
        SubscriptionPeriod trialSubscriptionPeriod4 = getTrialSubscriptionPeriod();
        unit2 = trialSubscriptionPeriod4 != null ? trialSubscriptionPeriod4.getUnit() : null;
        i = unit2 != null ? WhenMappings.$EnumSwitchMapping$0[unit2.ordinal()] : -1;
        if (i == 1) {
            BigDecimal bigDecimalDivide5 = new BigDecimal(12).divide(new BigDecimal(365), 6, RoundingMode.DOWN);
            Intrinsics.checkNotNullExpressionValue(bigDecimalDivide5, "divide(...)");
            return bigDecimalDivide5;
        }
        if (i == 2) {
            BigDecimal bigDecimalDivide6 = new BigDecimal(12).divide(new BigDecimal(52), 6, RoundingMode.DOWN);
            Intrinsics.checkNotNullExpressionValue(bigDecimalDivide6, "divide(...)");
            return bigDecimalDivide6;
        }
        if (i == 3) {
            return new BigDecimal(1);
        }
        if (i == 4) {
            return new BigDecimal(12);
        }
        BigDecimal ZERO3 = BigDecimal.ZERO;
        Intrinsics.checkNotNullExpressionValue(ZERO3, "ZERO");
        return ZERO3;
    }

    private final SubscriptionPeriod getTrialSubscriptionPeriod() {
        return (SubscriptionPeriod) this.trialSubscriptionPeriod.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubscriptionPeriod trialSubscriptionPeriod_delegate$lambda$98(RawStoreProduct rawStoreProduct) {
        if (rawStoreProduct.underlyingProductDetails.getOneTimePurchaseOfferDetails() != null) {
            return null;
        }
        ProductDetails.PricingPhase selectedOfferPricingPhase = rawStoreProduct.getSelectedOfferPricingPhase();
        String billingPeriod = selectedOfferPricingPhase != null ? selectedOfferPricingPhase.getBillingPeriod() : null;
        if (billingPeriod != null) {
            try {
                return SubscriptionPeriod.INSTANCE.from(billingPeriod);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public final boolean isSubscription$superwall_release() {
        return ((Boolean) this.isSubscription.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isSubscription_delegate$lambda$99(RawStoreProduct rawStoreProduct) {
        List<ProductDetails.SubscriptionOfferDetails> subscriptionOfferDetails = rawStoreProduct.underlyingProductDetails.getSubscriptionOfferDetails();
        if (subscriptionOfferDetails != null) {
            return !subscriptionOfferDetails.isEmpty();
        }
        return false;
    }

    /* JADX INFO: compiled from: RawStoreProduct.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;", "", "<init>", "()V", "Subscription", "OneTime", "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;", "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class SelectedOfferDetails {
        public /* synthetic */ SelectedOfferDetails(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private SelectedOfferDetails() {
        }

        /* JADX INFO: compiled from: RawStoreProduct.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$Subscription;", "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;", "underlying", "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;", "<init>", "(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)V", "getUnderlying", "()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Subscription extends SelectedOfferDetails {
            private final ProductDetails.SubscriptionOfferDetails underlying;

            public static /* synthetic */ Subscription copy$default(Subscription subscription, ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails, int i, Object obj) {
                if ((i & 1) != 0) {
                    subscriptionOfferDetails = subscription.underlying;
                }
                return subscription.copy(subscriptionOfferDetails);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final ProductDetails.SubscriptionOfferDetails getUnderlying() {
                return this.underlying;
            }

            public final Subscription copy(ProductDetails.SubscriptionOfferDetails underlying) {
                Intrinsics.checkNotNullParameter(underlying, "underlying");
                return new Subscription(underlying);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Subscription) && Intrinsics.areEqual(this.underlying, ((Subscription) other).underlying);
            }

            public int hashCode() {
                return this.underlying.hashCode();
            }

            public String toString() {
                return "Subscription(underlying=" + this.underlying + ")";
            }

            public final ProductDetails.SubscriptionOfferDetails getUnderlying() {
                return this.underlying;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Subscription(ProductDetails.SubscriptionOfferDetails underlying) {
                super(null);
                Intrinsics.checkNotNullParameter(underlying, "underlying");
                this.underlying = underlying;
            }
        }

        /* JADX INFO: compiled from: RawStoreProduct.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J+\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails$OneTime;", "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$SelectedOfferDetails;", "underlying", "Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;", "purchaseOptionId", "", "offerId", "<init>", "(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Ljava/lang/String;Ljava/lang/String;)V", "getUnderlying", "()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;", "getPurchaseOptionId", "()Ljava/lang/String;", "getOfferId", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class OneTime extends SelectedOfferDetails {
            private final String offerId;
            private final String purchaseOptionId;
            private final ProductDetails.OneTimePurchaseOfferDetails underlying;

            public static /* synthetic */ OneTime copy$default(OneTime oneTime, ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails, String str, String str2, int i, Object obj) {
                if ((i & 1) != 0) {
                    oneTimePurchaseOfferDetails = oneTime.underlying;
                }
                if ((i & 2) != 0) {
                    str = oneTime.purchaseOptionId;
                }
                if ((i & 4) != 0) {
                    str2 = oneTime.offerId;
                }
                return oneTime.copy(oneTimePurchaseOfferDetails, str, str2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final ProductDetails.OneTimePurchaseOfferDetails getUnderlying() {
                return this.underlying;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getPurchaseOptionId() {
                return this.purchaseOptionId;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final String getOfferId() {
                return this.offerId;
            }

            public final OneTime copy(ProductDetails.OneTimePurchaseOfferDetails underlying, String purchaseOptionId, String offerId) {
                Intrinsics.checkNotNullParameter(underlying, "underlying");
                return new OneTime(underlying, purchaseOptionId, offerId);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof OneTime)) {
                    return false;
                }
                OneTime oneTime = (OneTime) other;
                return Intrinsics.areEqual(this.underlying, oneTime.underlying) && Intrinsics.areEqual(this.purchaseOptionId, oneTime.purchaseOptionId) && Intrinsics.areEqual(this.offerId, oneTime.offerId);
            }

            public int hashCode() {
                int iHashCode = this.underlying.hashCode() * 31;
                String str = this.purchaseOptionId;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.offerId;
                return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
            }

            public String toString() {
                return "OneTime(underlying=" + this.underlying + ", purchaseOptionId=" + this.purchaseOptionId + ", offerId=" + this.offerId + ")";
            }

            public final ProductDetails.OneTimePurchaseOfferDetails getUnderlying() {
                return this.underlying;
            }

            public final String getPurchaseOptionId() {
                return this.purchaseOptionId;
            }

            public final String getOfferId() {
                return this.offerId;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public OneTime(ProductDetails.OneTimePurchaseOfferDetails underlying, String str, String str2) {
                super(null);
                Intrinsics.checkNotNullParameter(underlying, "underlying");
                this.underlying = underlying;
                this.purchaseOptionId = str;
                this.offerId = str2;
            }
        }
    }
}
