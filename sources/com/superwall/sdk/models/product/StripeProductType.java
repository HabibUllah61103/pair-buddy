package com.superwall.sdk.models.product;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.models.serialization.BigDecimalSerializer;
import com.superwall.sdk.store.abstractions.product.StoreProductType;
import com.superwall.sdk.store.abstractions.product.SubscriptionPeriod;
import com.superwall.sdk.utilities.DateUtils;
import com.superwall.sdk.utilities.DateUtilsKt;
import expo.modules.notifications.service.NotificationsService;
import java.lang.annotation.Annotation;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: StripeProductType.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b@\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u0000 ¡\u00012\u00020\u0001:\n\u009d\u0001\u009e\u0001\u009f\u0001 \u0001¡\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0010¢\u0006\u0004\b\u0011\u0010\u0012B{\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0011\u0010\u0017J\u0013\u0010\u0080\u0001\u001a\u00020\u00032\b\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u0016J\u0012\u0010\u0083\u0001\u001a\u00020\u00032\u0007\u0010\u0084\u0001\u001a\u00020\u0014H\u0002J\u0011\u0010\u0085\u0001\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\n\u0010\u0086\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0089\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008a\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008b\u0001\u001a\u00020\nHÆ\u0003J\f\u0010\u008c\u0001\u001a\u0004\u0018\u00010\fHÆ\u0003J\f\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u0010\u0010\u008e\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030\u0010HÆ\u0003Jn\u0010\u008f\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0010HÆ\u0001J\u0016\u0010\u0090\u0001\u001a\u00020W2\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0092\u0001HÖ\u0003J\n\u0010\u0093\u0001\u001a\u00020\u0014HÖ\u0001J\n\u0010\u0094\u0001\u001a\u00020\u0003HÖ\u0001J-\u0010\u0095\u0001\u001a\u00030\u0096\u00012\u0007\u0010\u0097\u0001\u001a\u00020\u00002\b\u0010\u0098\u0001\u001a\u00030\u0099\u00012\b\u0010\u009a\u0001\u001a\u00030\u009b\u0001H\u0001¢\u0006\u0003\b\u009c\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0019\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010\u0006\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0019\u001a\u0004\b \u0010\u001bR\u001c\u0010\u0007\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b!\u0010\u0019\u001a\u0004\b\"\u0010\u001bR\u001c\u0010\b\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b#\u0010\u0019\u001a\u0004\b$\u0010\u001bR\u001c\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b%\u0010\u0019\u001a\u0004\b&\u0010'R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b(\u0010\u0019\u001a\u0004\b)\u0010*R\u001e\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b+\u0010\u0019\u001a\u0004\b,\u0010-R\"\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00108\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b.\u0010\u0019\u001a\u0004\b/\u00100R\u0014\u00101\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u0010\u001bR\u0014\u00103\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u0010\u001bR\u0014\u00105\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u0010\u001bR\u0014\u00107\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b8\u0010\u001bR\u0014\u00109\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b:\u0010\u001bR\u0014\u0010;\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b<\u0010\u001bR\u0014\u0010=\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?R\u0014\u0010@\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bA\u0010\u001bR\u0014\u0010B\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bC\u0010?R\u0014\u0010D\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bE\u0010\u001bR\u0014\u0010F\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010?R\u0014\u0010H\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bI\u0010\u001bR\u0014\u0010J\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bK\u0010?R\u0014\u0010L\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bM\u0010\u001bR\u0014\u0010N\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bO\u0010\u001bR\u0014\u0010P\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010\u001bR\u0014\u0010R\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bS\u0010\u001bR\u0014\u0010T\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bU\u0010\u001bR\u0014\u0010V\u001a\u00020W8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bX\u0010YR\u0014\u0010Z\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b[\u0010\u001bR\u0014\u0010\\\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b]\u0010\u001eR\u0016\u0010^\u001a\u0004\u0018\u00010_8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b`\u0010aR\u0014\u0010b\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bc\u0010\u001bR\u0014\u0010d\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\be\u0010?R\u0014\u0010f\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bg\u0010\u001bR\u0014\u0010h\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bi\u0010?R\u0014\u0010j\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bk\u0010\u001bR\u0014\u0010l\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bm\u0010?R\u0014\u0010n\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bo\u0010\u001bR\u0014\u0010p\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bq\u0010?R\u0014\u0010r\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bs\u0010\u001bR\u0014\u0010t\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bu\u0010\u001bR\u0014\u0010v\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bw\u0010\u001bR\u0016\u0010x\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\by\u0010\u001bR\u0016\u0010z\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b{\u0010\u001bR\u0016\u0010|\u001a\u0004\u0018\u00010}8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b~\u0010\u007f¨\u0006¢\u0001"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProductType;", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "id", "", "price", "Ljava/math/BigDecimal;", "localizedPrice", "currencyCode", "currencySymbol", "priceLocale", "Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;", "stripeSubscriptionPeriod", "Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;", "subscriptionIntroOffer", "Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;", "entitlements", "", "<init>", "(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;Ljava/util/List;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getId$annotations", "()V", "getId", "()Ljava/lang/String;", "getPrice$annotations", "getPrice", "()Ljava/math/BigDecimal;", "getLocalizedPrice$annotations", "getLocalizedPrice", "getCurrencyCode$annotations", "getCurrencyCode", "getCurrencySymbol$annotations", "getCurrencySymbol", "getPriceLocale$annotations", "getPriceLocale", "()Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;", "getStripeSubscriptionPeriod$annotations", "getStripeSubscriptionPeriod", "()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;", "getSubscriptionIntroOffer$annotations", "getSubscriptionIntroOffer", "()Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;", "getEntitlements$annotations", "getEntitlements", "()Ljava/util/List;", "productType", "getProductType", "fullIdentifier", "getFullIdentifier", "productIdentifier", "getProductIdentifier", "localizedSubscriptionPeriod", "getLocalizedSubscriptionPeriod", TypedValues.Cycle.S_WAVE_PERIOD, "getPeriod", "periodly", "getPeriodly", "periodWeeks", "getPeriodWeeks", "()I", "periodWeeksString", "getPeriodWeeksString", "periodMonths", "getPeriodMonths", "periodMonthsString", "getPeriodMonthsString", "periodYears", "getPeriodYears", "periodYearsString", "getPeriodYearsString", "periodDays", "getPeriodDays", "periodDaysString", "getPeriodDaysString", "dailyPrice", "getDailyPrice", "weeklyPrice", "getWeeklyPrice", "monthlyPrice", "getMonthlyPrice", "yearlyPrice", "getYearlyPrice", "hasFreeTrial", "", "getHasFreeTrial", "()Z", "localizedTrialPeriodPrice", "getLocalizedTrialPeriodPrice", "trialPeriodPrice", "getTrialPeriodPrice", "trialPeriodEndDate", "Ljava/util/Date;", "getTrialPeriodEndDate", "()Ljava/util/Date;", "trialPeriodEndDateString", "getTrialPeriodEndDateString", "trialPeriodDays", "getTrialPeriodDays", "trialPeriodDaysString", "getTrialPeriodDaysString", "trialPeriodWeeks", "getTrialPeriodWeeks", "trialPeriodWeeksString", "getTrialPeriodWeeksString", "trialPeriodMonths", "getTrialPeriodMonths", "trialPeriodMonthsString", "getTrialPeriodMonthsString", "trialPeriodYears", "getTrialPeriodYears", "trialPeriodYearsString", "getTrialPeriodYearsString", "trialPeriodText", "getTrialPeriodText", Constants.LOCALE, "getLocale", "languageCode", "getLanguageCode", "regionCode", "getRegionCode", "subscriptionPeriod", "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;", "getSubscriptionPeriod", "()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;", "trialPeriodPricePerUnit", "unit", "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;", "calculateAnnualizedPrice", "targetUnitsPerYear", "formatPrice", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "PriceLocale", "StripeSubscriptionPeriod", "SubscriptionIntroductoryOffer", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class StripeProductType implements StoreProductType {
    private final String currencyCode;
    private final String currencySymbol;
    private final List<String> entitlements;
    private final String id;
    private final String localizedPrice;
    private final BigDecimal price;
    private final PriceLocale priceLocale;
    private final StripeSubscriptionPeriod stripeSubscriptionPeriod;
    private final SubscriptionIntroductoryOffer subscriptionIntroOffer;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, null, new ArrayListSerializer(StringSerializer.INSTANCE)};

    /* JADX INFO: compiled from: StripeProductType.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[StripeSubscriptionPeriod.Unit.values().length];
            try {
                iArr[StripeSubscriptionPeriod.Unit.day.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StripeSubscriptionPeriod.Unit.week.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StripeSubscriptionPeriod.Unit.month.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[StripeSubscriptionPeriod.Unit.year.ordinal()] = 4;
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

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StripeProductType copy$default(StripeProductType stripeProductType, String str, BigDecimal bigDecimal, String str2, String str3, String str4, PriceLocale priceLocale, StripeSubscriptionPeriod stripeSubscriptionPeriod, SubscriptionIntroductoryOffer subscriptionIntroductoryOffer, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stripeProductType.id;
        }
        if ((i & 2) != 0) {
            bigDecimal = stripeProductType.price;
        }
        if ((i & 4) != 0) {
            str2 = stripeProductType.localizedPrice;
        }
        if ((i & 8) != 0) {
            str3 = stripeProductType.currencyCode;
        }
        if ((i & 16) != 0) {
            str4 = stripeProductType.currencySymbol;
        }
        if ((i & 32) != 0) {
            priceLocale = stripeProductType.priceLocale;
        }
        if ((i & 64) != 0) {
            stripeSubscriptionPeriod = stripeProductType.stripeSubscriptionPeriod;
        }
        if ((i & 128) != 0) {
            subscriptionIntroductoryOffer = stripeProductType.subscriptionIntroOffer;
        }
        if ((i & 256) != 0) {
            list = stripeProductType.entitlements;
        }
        SubscriptionIntroductoryOffer subscriptionIntroductoryOffer2 = subscriptionIntroductoryOffer;
        List list2 = list;
        PriceLocale priceLocale2 = priceLocale;
        StripeSubscriptionPeriod stripeSubscriptionPeriod2 = stripeSubscriptionPeriod;
        String str5 = str4;
        String str6 = str2;
        return stripeProductType.copy(str, bigDecimal, str6, str3, str5, priceLocale2, stripeSubscriptionPeriod2, subscriptionIntroductoryOffer2, list2);
    }

    @SerialName("currency_code")
    public static /* synthetic */ void getCurrencyCode$annotations() {
    }

    @SerialName("currency_symbol")
    public static /* synthetic */ void getCurrencySymbol$annotations() {
    }

    @SerialName("entitlements")
    public static /* synthetic */ void getEntitlements$annotations() {
    }

    @SerialName("product_id")
    public static /* synthetic */ void getId$annotations() {
    }

    @SerialName("price")
    public static /* synthetic */ void getLocalizedPrice$annotations() {
    }

    @SerialName("raw_price")
    @Serializable(with = BigDecimalSerializer.class)
    public static /* synthetic */ void getPrice$annotations() {
    }

    @SerialName("price_locale")
    public static /* synthetic */ void getPriceLocale$annotations() {
    }

    @SerialName("subscription_period")
    public static /* synthetic */ void getStripeSubscriptionPeriod$annotations() {
    }

    @SerialName("subscription_introductory_offer")
    public static /* synthetic */ void getSubscriptionIntroOffer$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final BigDecimal getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getLocalizedPrice() {
        return this.localizedPrice;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCurrencyCode() {
        return this.currencyCode;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCurrencySymbol() {
        return this.currencySymbol;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final PriceLocale getPriceLocale() {
        return this.priceLocale;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final StripeSubscriptionPeriod getStripeSubscriptionPeriod() {
        return this.stripeSubscriptionPeriod;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final SubscriptionIntroductoryOffer getSubscriptionIntroOffer() {
        return this.subscriptionIntroOffer;
    }

    public final List<String> component9() {
        return this.entitlements;
    }

    public final StripeProductType copy(String id, BigDecimal price, String localizedPrice, String currencyCode, String currencySymbol, PriceLocale priceLocale, StripeSubscriptionPeriod stripeSubscriptionPeriod, SubscriptionIntroductoryOffer subscriptionIntroOffer, List<String> entitlements) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(localizedPrice, "localizedPrice");
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        Intrinsics.checkNotNullParameter(currencySymbol, "currencySymbol");
        Intrinsics.checkNotNullParameter(priceLocale, "priceLocale");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        return new StripeProductType(id, price, localizedPrice, currencyCode, currencySymbol, priceLocale, stripeSubscriptionPeriod, subscriptionIntroOffer, entitlements);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StripeProductType)) {
            return false;
        }
        StripeProductType stripeProductType = (StripeProductType) other;
        return Intrinsics.areEqual(this.id, stripeProductType.id) && Intrinsics.areEqual(this.price, stripeProductType.price) && Intrinsics.areEqual(this.localizedPrice, stripeProductType.localizedPrice) && Intrinsics.areEqual(this.currencyCode, stripeProductType.currencyCode) && Intrinsics.areEqual(this.currencySymbol, stripeProductType.currencySymbol) && Intrinsics.areEqual(this.priceLocale, stripeProductType.priceLocale) && Intrinsics.areEqual(this.stripeSubscriptionPeriod, stripeProductType.stripeSubscriptionPeriod) && Intrinsics.areEqual(this.subscriptionIntroOffer, stripeProductType.subscriptionIntroOffer) && Intrinsics.areEqual(this.entitlements, stripeProductType.entitlements);
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.id.hashCode() * 31) + this.price.hashCode()) * 31) + this.localizedPrice.hashCode()) * 31) + this.currencyCode.hashCode()) * 31) + this.currencySymbol.hashCode()) * 31) + this.priceLocale.hashCode()) * 31;
        StripeSubscriptionPeriod stripeSubscriptionPeriod = this.stripeSubscriptionPeriod;
        int iHashCode2 = (iHashCode + (stripeSubscriptionPeriod == null ? 0 : stripeSubscriptionPeriod.hashCode())) * 31;
        SubscriptionIntroductoryOffer subscriptionIntroductoryOffer = this.subscriptionIntroOffer;
        return ((iHashCode2 + (subscriptionIntroductoryOffer != null ? subscriptionIntroductoryOffer.hashCode() : 0)) * 31) + this.entitlements.hashCode();
    }

    public String toString() {
        return "StripeProductType(id=" + this.id + ", price=" + this.price + ", localizedPrice=" + this.localizedPrice + ", currencyCode=" + this.currencyCode + ", currencySymbol=" + this.currencySymbol + ", priceLocale=" + this.priceLocale + ", stripeSubscriptionPeriod=" + this.stripeSubscriptionPeriod + ", subscriptionIntroOffer=" + this.subscriptionIntroOffer + ", entitlements=" + this.entitlements + ")";
    }

    /* JADX INFO: compiled from: StripeProductType.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProductType$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/StripeProductType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<StripeProductType> serializer() {
            return StripeProductType$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ StripeProductType(int i, String str, BigDecimal bigDecimal, String str2, String str3, String str4, PriceLocale priceLocale, StripeSubscriptionPeriod stripeSubscriptionPeriod, SubscriptionIntroductoryOffer subscriptionIntroductoryOffer, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (511 != (i & FrameMetricsAggregator.EVERY_DURATION)) {
            PluginExceptionsKt.throwMissingFieldException(i, FrameMetricsAggregator.EVERY_DURATION, StripeProductType$$serializer.INSTANCE.getDescriptor());
        }
        this.id = str;
        this.price = bigDecimal;
        this.localizedPrice = str2;
        this.currencyCode = str3;
        this.currencySymbol = str4;
        this.priceLocale = priceLocale;
        this.stripeSubscriptionPeriod = stripeSubscriptionPeriod;
        this.subscriptionIntroOffer = subscriptionIntroductoryOffer;
        this.entitlements = list;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(StripeProductType self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.id);
        output.encodeSerializableElement(serialDesc, 1, BigDecimalSerializer.INSTANCE, self.getPrice());
        output.encodeStringElement(serialDesc, 2, self.getLocalizedPrice());
        output.encodeStringElement(serialDesc, 3, self.getCurrencyCode());
        output.encodeStringElement(serialDesc, 4, self.getCurrencySymbol());
        output.encodeSerializableElement(serialDesc, 5, StripeProductType$PriceLocale$$serializer.INSTANCE, self.priceLocale);
        output.encodeNullableSerializableElement(serialDesc, 6, StripeProductType$StripeSubscriptionPeriod$$serializer.INSTANCE, self.stripeSubscriptionPeriod);
        output.encodeNullableSerializableElement(serialDesc, 7, StripeProductType$SubscriptionIntroductoryOffer$$serializer.INSTANCE, self.subscriptionIntroOffer);
        output.encodeSerializableElement(serialDesc, 8, kSerializerArr[8], self.entitlements);
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public Map<String, String> getAttributes() {
        return StoreProductType.DefaultImpls.getAttributes(this);
    }

    public StripeProductType(String id, BigDecimal price, String localizedPrice, String currencyCode, String currencySymbol, PriceLocale priceLocale, StripeSubscriptionPeriod stripeSubscriptionPeriod, SubscriptionIntroductoryOffer subscriptionIntroductoryOffer, List<String> entitlements) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(localizedPrice, "localizedPrice");
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        Intrinsics.checkNotNullParameter(currencySymbol, "currencySymbol");
        Intrinsics.checkNotNullParameter(priceLocale, "priceLocale");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        this.id = id;
        this.price = price;
        this.localizedPrice = localizedPrice;
        this.currencyCode = currencyCode;
        this.currencySymbol = currencySymbol;
        this.priceLocale = priceLocale;
        this.stripeSubscriptionPeriod = stripeSubscriptionPeriod;
        this.subscriptionIntroOffer = subscriptionIntroductoryOffer;
        this.entitlements = entitlements;
    }

    public final String getId() {
        return this.id;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public BigDecimal getPrice() {
        return this.price;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocalizedPrice() {
        return this.localizedPrice;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getCurrencyCode() {
        return this.currencyCode;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getCurrencySymbol() {
        return this.currencySymbol;
    }

    public final PriceLocale getPriceLocale() {
        return this.priceLocale;
    }

    public final StripeSubscriptionPeriod getStripeSubscriptionPeriod() {
        return this.stripeSubscriptionPeriod;
    }

    public final SubscriptionIntroductoryOffer getSubscriptionIntroOffer() {
        return this.subscriptionIntroOffer;
    }

    public final List<String> getEntitlements() {
        return this.entitlements;
    }

    /* JADX INFO: compiled from: StripeProductType.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 +2\u00020\u0001:\u0002*+B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bBC\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J1\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\nHÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001J%\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0001¢\u0006\u0002\b)R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011R\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u000f\u001a\u0004\b\u0017\u0010\u0011¨\u0006,"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;", "", NotificationsService.IDENTIFIER_KEY, "", "languageCode", "currencyCode", "currencySymbol", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getIdentifier$annotations", "()V", "getIdentifier", "()Ljava/lang/String;", "getLanguageCode$annotations", "getLanguageCode", "getCurrencyCode$annotations", "getCurrencyCode", "getCurrencySymbol$annotations", "getCurrencySymbol", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final /* data */ class PriceLocale {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String currencyCode;
        private final String currencySymbol;
        private final String identifier;
        private final String languageCode;

        public static /* synthetic */ PriceLocale copy$default(PriceLocale priceLocale, String str, String str2, String str3, String str4, int i, Object obj) {
            if ((i & 1) != 0) {
                str = priceLocale.identifier;
            }
            if ((i & 2) != 0) {
                str2 = priceLocale.languageCode;
            }
            if ((i & 4) != 0) {
                str3 = priceLocale.currencyCode;
            }
            if ((i & 8) != 0) {
                str4 = priceLocale.currencySymbol;
            }
            return priceLocale.copy(str, str2, str3, str4);
        }

        @SerialName("currency_code")
        public static /* synthetic */ void getCurrencyCode$annotations() {
        }

        @SerialName("currency_symbol")
        public static /* synthetic */ void getCurrencySymbol$annotations() {
        }

        @SerialName(NotificationsService.IDENTIFIER_KEY)
        public static /* synthetic */ void getIdentifier$annotations() {
        }

        @SerialName("language_code")
        public static /* synthetic */ void getLanguageCode$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getIdentifier() {
            return this.identifier;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getLanguageCode() {
            return this.languageCode;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getCurrencyCode() {
            return this.currencyCode;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getCurrencySymbol() {
            return this.currencySymbol;
        }

        public final PriceLocale copy(String identifier, String languageCode, String currencyCode, String currencySymbol) {
            Intrinsics.checkNotNullParameter(identifier, "identifier");
            Intrinsics.checkNotNullParameter(languageCode, "languageCode");
            Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
            Intrinsics.checkNotNullParameter(currencySymbol, "currencySymbol");
            return new PriceLocale(identifier, languageCode, currencyCode, currencySymbol);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PriceLocale)) {
                return false;
            }
            PriceLocale priceLocale = (PriceLocale) other;
            return Intrinsics.areEqual(this.identifier, priceLocale.identifier) && Intrinsics.areEqual(this.languageCode, priceLocale.languageCode) && Intrinsics.areEqual(this.currencyCode, priceLocale.currencyCode) && Intrinsics.areEqual(this.currencySymbol, priceLocale.currencySymbol);
        }

        public int hashCode() {
            return (((((this.identifier.hashCode() * 31) + this.languageCode.hashCode()) * 31) + this.currencyCode.hashCode()) * 31) + this.currencySymbol.hashCode();
        }

        public String toString() {
            return "PriceLocale(identifier=" + this.identifier + ", languageCode=" + this.languageCode + ", currencyCode=" + this.currencyCode + ", currencySymbol=" + this.currencySymbol + ")";
        }

        /* JADX INFO: compiled from: StripeProductType.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/StripeProductType$PriceLocale;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<PriceLocale> serializer() {
                return StripeProductType$PriceLocale$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ PriceLocale(int i, String str, String str2, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker) {
            if (15 != (i & 15)) {
                PluginExceptionsKt.throwMissingFieldException(i, 15, StripeProductType$PriceLocale$$serializer.INSTANCE.getDescriptor());
            }
            this.identifier = str;
            this.languageCode = str2;
            this.currencyCode = str3;
            this.currencySymbol = str4;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(PriceLocale self, CompositeEncoder output, SerialDescriptor serialDesc) {
            output.encodeStringElement(serialDesc, 0, self.identifier);
            output.encodeStringElement(serialDesc, 1, self.languageCode);
            output.encodeStringElement(serialDesc, 2, self.currencyCode);
            output.encodeStringElement(serialDesc, 3, self.currencySymbol);
        }

        public PriceLocale(String identifier, String languageCode, String currencyCode, String currencySymbol) {
            Intrinsics.checkNotNullParameter(identifier, "identifier");
            Intrinsics.checkNotNullParameter(languageCode, "languageCode");
            Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
            Intrinsics.checkNotNullParameter(currencySymbol, "currencySymbol");
            this.identifier = identifier;
            this.languageCode = languageCode;
            this.currencyCode = currencyCode;
            this.currencySymbol = currencySymbol;
        }

        public final String getIdentifier() {
            return this.identifier;
        }

        public final String getLanguageCode() {
            return this.languageCode;
        }

        public final String getCurrencyCode() {
            return this.currencyCode;
        }

        public final String getCurrencySymbol() {
            return this.currencySymbol;
        }
    }

    /* JADX INFO: compiled from: StripeProductType.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0003$%&B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B-\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J%\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0001¢\u0006\u0002\b#R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012¨\u0006'"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;", "", "unit", "Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;", RNConstants.ARG_VALUE, "", "<init>", "(Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;I)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getUnit$annotations", "()V", "getUnit", "()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;", "getValue$annotations", "getValue", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Unit", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final /* data */ class StripeSubscriptionPeriod {
        private final Unit unit;
        private final int value;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {Unit.INSTANCE.serializer(), null};

        public static /* synthetic */ StripeSubscriptionPeriod copy$default(StripeSubscriptionPeriod stripeSubscriptionPeriod, Unit unit, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                unit = stripeSubscriptionPeriod.unit;
            }
            if ((i2 & 2) != 0) {
                i = stripeSubscriptionPeriod.value;
            }
            return stripeSubscriptionPeriod.copy(unit, i);
        }

        @SerialName("unit")
        public static /* synthetic */ void getUnit$annotations() {
        }

        @SerialName(RNConstants.ARG_VALUE)
        public static /* synthetic */ void getValue$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Unit getUnit() {
            return this.unit;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getValue() {
            return this.value;
        }

        public final StripeSubscriptionPeriod copy(Unit unit, int value) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            return new StripeSubscriptionPeriod(unit, value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof StripeSubscriptionPeriod)) {
                return false;
            }
            StripeSubscriptionPeriod stripeSubscriptionPeriod = (StripeSubscriptionPeriod) other;
            return this.unit == stripeSubscriptionPeriod.unit && this.value == stripeSubscriptionPeriod.value;
        }

        public int hashCode() {
            return (this.unit.hashCode() * 31) + Integer.hashCode(this.value);
        }

        public String toString() {
            return "StripeSubscriptionPeriod(unit=" + this.unit + ", value=" + this.value + ")";
        }

        /* JADX INFO: compiled from: StripeProductType.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<StripeSubscriptionPeriod> serializer() {
                return StripeProductType$StripeSubscriptionPeriod$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ StripeSubscriptionPeriod(int i, Unit unit, int i2, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, StripeProductType$StripeSubscriptionPeriod$$serializer.INSTANCE.getDescriptor());
            }
            this.unit = unit;
            this.value = i2;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(StripeSubscriptionPeriod self, CompositeEncoder output, SerialDescriptor serialDesc) {
            output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.unit);
            output.encodeIntElement(serialDesc, 1, self.value);
        }

        public StripeSubscriptionPeriod(Unit unit, int i) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            this.unit = unit;
            this.value = i;
        }

        public final Unit getUnit() {
            return this.unit;
        }

        public final int getValue() {
            return this.value;
        }

        /* JADX INFO: compiled from: StripeProductType.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0087\u0081\u0002\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;", "", "<init>", "(Ljava/lang/String;I)V", "day", "week", "month", "year", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable
        public enum Unit {
            day,
            week,
            month,
            year;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.product.StripeProductType$StripeSubscriptionPeriod$Unit$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return StripeProductType.StripeSubscriptionPeriod.Unit._init_$_anonymous_();
                }
            });

            public static EnumEntries<Unit> getEntries() {
                return $ENTRIES;
            }

            /* JADX INFO: compiled from: StripeProductType.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$Unit;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private final /* synthetic */ KSerializer get$cachedSerializer() {
                    return (KSerializer) Unit.$cachedSerializer$delegate.getValue();
                }

                public final KSerializer<Unit> serializer() {
                    return get$cachedSerializer();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final /* synthetic */ KSerializer _init_$_anonymous_() {
                return EnumsKt.createAnnotatedEnumSerializer("com.superwall.sdk.models.product.StripeProductType.StripeSubscriptionPeriod.Unit", values(), new String[]{"day", "week", "month", "year"}, new Annotation[][]{null, null, null, null}, null);
            }
        }
    }

    /* JADX INFO: compiled from: StripeProductType.kt */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 72\u00020\u0001:\u0003567B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rBK\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0011J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0007HÆ\u0003J\t\u0010%\u001a\u00020\tHÆ\u0003J\t\u0010&\u001a\u00020\u000bHÆ\u0003J;\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\tHÖ\u0001J\t\u0010,\u001a\u00020\u0005HÖ\u0001J%\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0001¢\u0006\u0002\b4R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0013\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0013\u001a\u0004\b \u0010!¨\u00068"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;", "", TypedValues.Cycle.S_WAVE_PERIOD, "Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;", "localizedPrice", "", "price", "Ljava/math/BigDecimal;", "periodCount", "", "paymentMethod", "Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;", "<init>", "(Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getPeriod$annotations", "()V", "getPeriod", "()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;", "getLocalizedPrice$annotations", "getLocalizedPrice", "()Ljava/lang/String;", "getPrice$annotations", "getPrice", "()Ljava/math/BigDecimal;", "getPeriodCount$annotations", "getPeriodCount", "()I", "getPaymentMethod$annotations", "getPaymentMethod", "()Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "PaymentMethod", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final /* data */ class SubscriptionIntroductoryOffer {
        private final String localizedPrice;
        private final PaymentMethod paymentMethod;
        private final StripeSubscriptionPeriod period;
        private final int periodCount;
        private final BigDecimal price;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, PaymentMethod.INSTANCE.serializer()};

        public static /* synthetic */ SubscriptionIntroductoryOffer copy$default(SubscriptionIntroductoryOffer subscriptionIntroductoryOffer, StripeSubscriptionPeriod stripeSubscriptionPeriod, String str, BigDecimal bigDecimal, int i, PaymentMethod paymentMethod, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                stripeSubscriptionPeriod = subscriptionIntroductoryOffer.period;
            }
            if ((i2 & 2) != 0) {
                str = subscriptionIntroductoryOffer.localizedPrice;
            }
            if ((i2 & 4) != 0) {
                bigDecimal = subscriptionIntroductoryOffer.price;
            }
            if ((i2 & 8) != 0) {
                i = subscriptionIntroductoryOffer.periodCount;
            }
            if ((i2 & 16) != 0) {
                paymentMethod = subscriptionIntroductoryOffer.paymentMethod;
            }
            PaymentMethod paymentMethod2 = paymentMethod;
            BigDecimal bigDecimal2 = bigDecimal;
            return subscriptionIntroductoryOffer.copy(stripeSubscriptionPeriod, str, bigDecimal2, i, paymentMethod2);
        }

        @SerialName("price")
        public static /* synthetic */ void getLocalizedPrice$annotations() {
        }

        @SerialName("payment_method")
        public static /* synthetic */ void getPaymentMethod$annotations() {
        }

        @SerialName(TypedValues.Cycle.S_WAVE_PERIOD)
        public static /* synthetic */ void getPeriod$annotations() {
        }

        @SerialName("period_count")
        public static /* synthetic */ void getPeriodCount$annotations() {
        }

        @SerialName("raw_price")
        @Serializable(with = BigDecimalSerializer.class)
        public static /* synthetic */ void getPrice$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final StripeSubscriptionPeriod getPeriod() {
            return this.period;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getLocalizedPrice() {
            return this.localizedPrice;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final BigDecimal getPrice() {
            return this.price;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final int getPeriodCount() {
            return this.periodCount;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final PaymentMethod getPaymentMethod() {
            return this.paymentMethod;
        }

        public final SubscriptionIntroductoryOffer copy(StripeSubscriptionPeriod period, String localizedPrice, BigDecimal price, int periodCount, PaymentMethod paymentMethod) {
            Intrinsics.checkNotNullParameter(period, "period");
            Intrinsics.checkNotNullParameter(localizedPrice, "localizedPrice");
            Intrinsics.checkNotNullParameter(price, "price");
            Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
            return new SubscriptionIntroductoryOffer(period, localizedPrice, price, periodCount, paymentMethod);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SubscriptionIntroductoryOffer)) {
                return false;
            }
            SubscriptionIntroductoryOffer subscriptionIntroductoryOffer = (SubscriptionIntroductoryOffer) other;
            return Intrinsics.areEqual(this.period, subscriptionIntroductoryOffer.period) && Intrinsics.areEqual(this.localizedPrice, subscriptionIntroductoryOffer.localizedPrice) && Intrinsics.areEqual(this.price, subscriptionIntroductoryOffer.price) && this.periodCount == subscriptionIntroductoryOffer.periodCount && this.paymentMethod == subscriptionIntroductoryOffer.paymentMethod;
        }

        public int hashCode() {
            return (((((((this.period.hashCode() * 31) + this.localizedPrice.hashCode()) * 31) + this.price.hashCode()) * 31) + Integer.hashCode(this.periodCount)) * 31) + this.paymentMethod.hashCode();
        }

        public String toString() {
            return "SubscriptionIntroductoryOffer(period=" + this.period + ", localizedPrice=" + this.localizedPrice + ", price=" + this.price + ", periodCount=" + this.periodCount + ", paymentMethod=" + this.paymentMethod + ")";
        }

        /* JADX INFO: compiled from: StripeProductType.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<SubscriptionIntroductoryOffer> serializer() {
                return StripeProductType$SubscriptionIntroductoryOffer$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ SubscriptionIntroductoryOffer(int i, StripeSubscriptionPeriod stripeSubscriptionPeriod, String str, BigDecimal bigDecimal, int i2, PaymentMethod paymentMethod, SerializationConstructorMarker serializationConstructorMarker) {
            if (31 != (i & 31)) {
                PluginExceptionsKt.throwMissingFieldException(i, 31, StripeProductType$SubscriptionIntroductoryOffer$$serializer.INSTANCE.getDescriptor());
            }
            this.period = stripeSubscriptionPeriod;
            this.localizedPrice = str;
            this.price = bigDecimal;
            this.periodCount = i2;
            this.paymentMethod = paymentMethod;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(SubscriptionIntroductoryOffer self, CompositeEncoder output, SerialDescriptor serialDesc) {
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeSerializableElement(serialDesc, 0, StripeProductType$StripeSubscriptionPeriod$$serializer.INSTANCE, self.period);
            output.encodeStringElement(serialDesc, 1, self.localizedPrice);
            output.encodeSerializableElement(serialDesc, 2, BigDecimalSerializer.INSTANCE, self.price);
            output.encodeIntElement(serialDesc, 3, self.periodCount);
            output.encodeSerializableElement(serialDesc, 4, kSerializerArr[4], self.paymentMethod);
        }

        public SubscriptionIntroductoryOffer(StripeSubscriptionPeriod period, String localizedPrice, BigDecimal price, int i, PaymentMethod paymentMethod) {
            Intrinsics.checkNotNullParameter(period, "period");
            Intrinsics.checkNotNullParameter(localizedPrice, "localizedPrice");
            Intrinsics.checkNotNullParameter(price, "price");
            Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
            this.period = period;
            this.localizedPrice = localizedPrice;
            this.price = price;
            this.periodCount = i;
            this.paymentMethod = paymentMethod;
        }

        public final StripeSubscriptionPeriod getPeriod() {
            return this.period;
        }

        public final String getLocalizedPrice() {
            return this.localizedPrice;
        }

        public final BigDecimal getPrice() {
            return this.price;
        }

        public final int getPeriodCount() {
            return this.periodCount;
        }

        public final PaymentMethod getPaymentMethod() {
            return this.paymentMethod;
        }

        /* JADX INFO: compiled from: StripeProductType.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0087\u0081\u0002\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;", "", "<init>", "(Ljava/lang/String;I)V", "freeTrial", "payAsYouGo", "payUpFront", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable
        public enum PaymentMethod {
            freeTrial,
            payAsYouGo,
            payUpFront;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.product.StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return StripeProductType.SubscriptionIntroductoryOffer.PaymentMethod._init_$_anonymous_();
                }
            });

            public static EnumEntries<PaymentMethod> getEntries() {
                return $ENTRIES;
            }

            /* JADX INFO: compiled from: StripeProductType.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private final /* synthetic */ KSerializer get$cachedSerializer() {
                    return (KSerializer) PaymentMethod.$cachedSerializer$delegate.getValue();
                }

                public final KSerializer<PaymentMethod> serializer() {
                    return get$cachedSerializer();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final /* synthetic */ KSerializer _init_$_anonymous_() {
                return EnumsKt.createAnnotatedEnumSerializer("com.superwall.sdk.models.product.StripeProductType.SubscriptionIntroductoryOffer.PaymentMethod", values(), new String[]{"free_trial", "pay_as_you_go", "pay_up_front"}, new Annotation[][]{null, null, null}, null);
            }
        }
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getProductType() {
        return "stripe";
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getFullIdentifier() {
        return this.id;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getProductIdentifier() {
        return this.id;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocalizedSubscriptionPeriod() {
        String str;
        StripeSubscriptionPeriod stripeSubscriptionPeriod = this.stripeSubscriptionPeriod;
        if (stripeSubscriptionPeriod == null) {
            return "";
        }
        int i = WhenMappings.$EnumSwitchMapping$0[stripeSubscriptionPeriod.getUnit().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        throw new NoWhenBranchMatchedException();
                    }
                    if (stripeSubscriptionPeriod.getValue() == 1) {
                        str = "Yearly";
                    } else {
                        str = stripeSubscriptionPeriod.getValue() + " years";
                    }
                } else if (stripeSubscriptionPeriod.getValue() == 1) {
                    str = "Monthly";
                } else {
                    str = stripeSubscriptionPeriod.getValue() + " months";
                }
            } else if (stripeSubscriptionPeriod.getValue() == 1) {
                str = "Weekly";
            } else {
                str = stripeSubscriptionPeriod.getValue() + " weeks";
            }
        } else if (stripeSubscriptionPeriod.getValue() == 1) {
            str = "Daily";
        } else {
            str = stripeSubscriptionPeriod.getValue() + " days";
        }
        return str == null ? "" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriod() {
        StripeSubscriptionPeriod stripeSubscriptionPeriod = this.stripeSubscriptionPeriod;
        if (stripeSubscriptionPeriod == null) {
            return "";
        }
        int value = stripeSubscriptionPeriod.getValue();
        String upperCase = stripeSubscriptionPeriod.getUnit().name().toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        String str = "P" + value + upperCase;
        return str == null ? "" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodly() {
        StripeSubscriptionPeriod stripeSubscriptionPeriod = this.stripeSubscriptionPeriod;
        if (stripeSubscriptionPeriod != null) {
            int i = WhenMappings.$EnumSwitchMapping$0[stripeSubscriptionPeriod.getUnit().ordinal()];
            if (i == 1) {
                return "daily";
            }
            if (i == 2) {
                return "weekly";
            }
            if (i == 3) {
                return "monthly";
            }
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            return "yearly";
        }
        return "";
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodWeeks() {
        StripeSubscriptionPeriod stripeSubscriptionPeriod = this.stripeSubscriptionPeriod;
        if (stripeSubscriptionPeriod == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[stripeSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return stripeSubscriptionPeriod.getValue() / 7;
        }
        if (i == 2) {
            return stripeSubscriptionPeriod.getValue();
        }
        if (i == 3) {
            return stripeSubscriptionPeriod.getValue() * 4;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return stripeSubscriptionPeriod.getValue() * 52;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodWeeksString() {
        return String.valueOf(getPeriodWeeks());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodMonths() {
        StripeSubscriptionPeriod stripeSubscriptionPeriod = this.stripeSubscriptionPeriod;
        if (stripeSubscriptionPeriod == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[stripeSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return stripeSubscriptionPeriod.getValue() / 30;
        }
        if (i == 2) {
            return stripeSubscriptionPeriod.getValue() / 4;
        }
        if (i == 3) {
            return stripeSubscriptionPeriod.getValue();
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return stripeSubscriptionPeriod.getValue() * 12;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodMonthsString() {
        return String.valueOf(getPeriodMonths());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodYears() {
        StripeSubscriptionPeriod stripeSubscriptionPeriod = this.stripeSubscriptionPeriod;
        if (stripeSubscriptionPeriod == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[stripeSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return stripeSubscriptionPeriod.getValue() / 365;
        }
        if (i == 2) {
            return stripeSubscriptionPeriod.getValue() / 52;
        }
        if (i == 3) {
            return stripeSubscriptionPeriod.getValue() / 12;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return stripeSubscriptionPeriod.getValue();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodYearsString() {
        return String.valueOf(getPeriodYears());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getPeriodDays() {
        StripeSubscriptionPeriod stripeSubscriptionPeriod = this.stripeSubscriptionPeriod;
        if (stripeSubscriptionPeriod == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[stripeSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            return stripeSubscriptionPeriod.getValue();
        }
        if (i == 2) {
            return stripeSubscriptionPeriod.getValue() * 7;
        }
        if (i == 3) {
            return stripeSubscriptionPeriod.getValue() * 30;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return stripeSubscriptionPeriod.getValue() * 365;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getPeriodDaysString() {
        return String.valueOf(getPeriodDays());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getDailyPrice() {
        return calculateAnnualizedPrice(365);
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getWeeklyPrice() {
        return calculateAnnualizedPrice(52);
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getMonthlyPrice() {
        return calculateAnnualizedPrice(12);
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getYearlyPrice() {
        return calculateAnnualizedPrice(1);
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public boolean getHasFreeTrial() {
        SubscriptionIntroductoryOffer subscriptionIntroductoryOffer = this.subscriptionIntroOffer;
        return (subscriptionIntroductoryOffer != null ? subscriptionIntroductoryOffer.getPaymentMethod() : null) == SubscriptionIntroductoryOffer.PaymentMethod.freeTrial;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocalizedTrialPeriodPrice() {
        String localizedPrice;
        SubscriptionIntroductoryOffer subscriptionIntroductoryOffer = this.subscriptionIntroOffer;
        return (subscriptionIntroductoryOffer == null || (localizedPrice = subscriptionIntroductoryOffer.getLocalizedPrice()) == null) ? "" : localizedPrice;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public BigDecimal getTrialPeriodPrice() {
        BigDecimal price;
        SubscriptionIntroductoryOffer subscriptionIntroductoryOffer = this.subscriptionIntroOffer;
        if (subscriptionIntroductoryOffer != null && (price = subscriptionIntroductoryOffer.getPrice()) != null) {
            return price;
        }
        BigDecimal ZERO = BigDecimal.ZERO;
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        return ZERO;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public Date getTrialPeriodEndDate() {
        if (!getHasFreeTrial()) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        SubscriptionIntroductoryOffer subscriptionIntroductoryOffer = this.subscriptionIntroOffer;
        if (subscriptionIntroductoryOffer != null) {
            int i = WhenMappings.$EnumSwitchMapping$0[subscriptionIntroductoryOffer.getPeriod().getUnit().ordinal()];
            if (i == 1) {
                calendar.add(5, subscriptionIntroductoryOffer.getPeriod().getValue() * subscriptionIntroductoryOffer.getPeriodCount());
            } else if (i == 2) {
                calendar.add(3, subscriptionIntroductoryOffer.getPeriod().getValue() * subscriptionIntroductoryOffer.getPeriodCount());
            } else if (i == 3) {
                calendar.add(2, subscriptionIntroductoryOffer.getPeriod().getValue() * subscriptionIntroductoryOffer.getPeriodCount());
            } else {
                if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                calendar.add(1, subscriptionIntroductoryOffer.getPeriod().getValue() * subscriptionIntroductoryOffer.getPeriodCount());
            }
        }
        return calendar.getTime();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodEndDateString() {
        String str;
        Date trialPeriodEndDate = getTrialPeriodEndDate();
        return (trialPeriodEndDate == null || (str = DateUtilsKt.localizedDateFormat(DateUtils.INSTANCE.getMMM_dd_yyyy()).format(trialPeriodEndDate)) == null) ? "" : str;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodDays() {
        SubscriptionIntroductoryOffer subscriptionIntroductoryOffer = this.subscriptionIntroOffer;
        if (subscriptionIntroductoryOffer == null) {
            return 0;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[subscriptionIntroductoryOffer.getPeriod().getUnit().ordinal()];
        if (i == 1) {
            return subscriptionIntroductoryOffer.getPeriod().getValue() * subscriptionIntroductoryOffer.getPeriodCount();
        }
        if (i == 2) {
            return subscriptionIntroductoryOffer.getPeriod().getValue() * subscriptionIntroductoryOffer.getPeriodCount() * 7;
        }
        if (i == 3) {
            return subscriptionIntroductoryOffer.getPeriod().getValue() * subscriptionIntroductoryOffer.getPeriodCount() * 30;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        return subscriptionIntroductoryOffer.getPeriod().getValue() * subscriptionIntroductoryOffer.getPeriodCount() * 365;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodDaysString() {
        return String.valueOf(getTrialPeriodDays());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodWeeks() {
        return getTrialPeriodDays() / 7;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodWeeksString() {
        return String.valueOf(getTrialPeriodWeeks());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodMonths() {
        return getTrialPeriodDays() / 30;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodMonthsString() {
        return String.valueOf(getTrialPeriodMonths());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public int getTrialPeriodYears() {
        return getTrialPeriodDays() / 365;
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodYearsString() {
        return String.valueOf(getTrialPeriodYears());
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getTrialPeriodText() {
        String str;
        SubscriptionIntroductoryOffer subscriptionIntroductoryOffer = this.subscriptionIntroOffer;
        if (subscriptionIntroductoryOffer != null) {
            int periodCount = subscriptionIntroductoryOffer.getPeriodCount();
            int i = WhenMappings.$EnumSwitchMapping$0[subscriptionIntroductoryOffer.getPeriod().getUnit().ordinal()];
            if (i == 1) {
                str = periodCount == 1 ? "1 day free trial" : periodCount + " days free trial";
            } else if (i == 2) {
                str = periodCount == 1 ? "1 week free trial" : periodCount + " weeks free trial";
            } else if (i == 3) {
                str = periodCount == 1 ? "1 month free trial" : periodCount + " months free trial";
            } else {
                if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                str = periodCount == 1 ? "1 year free trial" : periodCount + " years free trial";
            }
            return str == null ? "" : str;
        }
        return "";
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLocale() {
        return this.priceLocale.getIdentifier();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getLanguageCode() {
        return this.priceLocale.getLanguageCode();
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String getRegionCode() {
        return (String) CollectionsKt.getOrNull(StringsKt.split$default((CharSequence) this.priceLocale.getIdentifier(), new String[]{"_"}, false, 0, 6, (Object) null), 1);
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public SubscriptionPeriod getSubscriptionPeriod() {
        SubscriptionPeriod.Unit unit;
        StripeSubscriptionPeriod stripeSubscriptionPeriod = this.stripeSubscriptionPeriod;
        if (stripeSubscriptionPeriod == null) {
            return null;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[stripeSubscriptionPeriod.getUnit().ordinal()];
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
        return new SubscriptionPeriod(stripeSubscriptionPeriod.getValue(), unit);
    }

    @Override // com.superwall.sdk.store.abstractions.product.StoreProductType
    public String trialPeriodPricePerUnit(SubscriptionPeriod.Unit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        int trialPeriodDays = getTrialPeriodDays();
        if (trialPeriodDays == 0) {
            return "";
        }
        int i = WhenMappings.$EnumSwitchMapping$1[unit.ordinal()];
        int i2 = 1;
        if (i == 1) {
            i2 = 365;
        } else if (i == 2) {
            i2 = 52;
        } else if (i == 3) {
            i2 = 12;
        } else if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        BigDecimal bigDecimalDivide = getTrialPeriodPrice().multiply(new BigDecimal(365)).divide(new BigDecimal(trialPeriodDays), 6, RoundingMode.DOWN).divide(new BigDecimal(i2), 2, RoundingMode.DOWN);
        Intrinsics.checkNotNull(bigDecimalDivide);
        return formatPrice(bigDecimalDivide);
    }

    private final String calculateAnnualizedPrice(int targetUnitsPerYear) {
        BigDecimal bigDecimal;
        StripeSubscriptionPeriod stripeSubscriptionPeriod = this.stripeSubscriptionPeriod;
        if (stripeSubscriptionPeriod == null) {
            return "";
        }
        if (Intrinsics.areEqual(getPrice(), BigDecimal.ZERO)) {
            BigDecimal ZERO = BigDecimal.ZERO;
            Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
            return formatPrice(ZERO);
        }
        int i = WhenMappings.$EnumSwitchMapping$0[stripeSubscriptionPeriod.getUnit().ordinal()];
        if (i == 1) {
            bigDecimal = new BigDecimal(365);
        } else if (i == 2) {
            bigDecimal = new BigDecimal(52);
        } else if (i == 3) {
            bigDecimal = new BigDecimal(12);
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            bigDecimal = BigDecimal.ONE;
        }
        BigDecimal bigDecimalDivide = getPrice().multiply(bigDecimal).divide(new BigDecimal(stripeSubscriptionPeriod.getValue()), 6, RoundingMode.DOWN).divide(new BigDecimal(targetUnitsPerYear), 2, RoundingMode.DOWN);
        Intrinsics.checkNotNull(bigDecimalDivide);
        return formatPrice(bigDecimalDivide);
    }

    private final String formatPrice(BigDecimal price) {
        NumberFormat currencyInstance = NumberFormat.getCurrencyInstance(Locale.forLanguageTag(getLocale()));
        try {
            currencyInstance.setCurrency(Currency.getInstance(getCurrencyCode()));
        } catch (Exception unused) {
        }
        String str = currencyInstance.format(price.doubleValue());
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }
}
