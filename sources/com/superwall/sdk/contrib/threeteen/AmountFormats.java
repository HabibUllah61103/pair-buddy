package com.superwall.sdk.contrib.threeteen;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.Objects;
import java.util.ResourceBundle;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.io.FilenameUtils;
import org.threeten.bp.Duration;
import org.threeten.bp.Period;
import org.threeten.bp.format.DateTimeParseException;

/* JADX INFO: compiled from: AmountFormats.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\f\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001:\nCDEFGHIJKLB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010#\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J\u000e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+J\u0016\u0010,\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%2\u0006\u0010*\u001a\u00020+J\u0016\u0010,\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020'2\u0006\u0010*\u001a\u00020+J\u001e\u0010,\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010*\u001a\u00020+J\u0018\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u0005H\u0002J\u000e\u00101\u001a\u00020'2\u0006\u00102\u001a\u000203J \u00104\u001a\u0002052\u0006\u00106\u001a\u0002032\u0006\u00107\u001a\u0002032\u0006\u00108\u001a\u00020\u0005H\u0002J \u00109\u001a\u0002052\u0006\u00106\u001a\u0002032\u0006\u00107\u001a\u0002032\u0006\u00108\u001a\u00020\u0005H\u0002J\u001d\u0010:\u001a\b\u0012\u0004\u0012\u00020 0;2\u0006\u00106\u001a\u000203H\u0002¢\u0006\u0004\b<\u0010=J%\u0010>\u001a\b\u0012\u0004\u0012\u0002030;2\u0006\u00106\u001a\u0002032\u0006\u0010?\u001a\u00020@H\u0002¢\u0006\u0004\bA\u0010BR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u0018\u0010\f\u001a\n \u000e*\u0004\u0018\u00010\r0\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006M"}, d2 = {"Lcom/superwall/sdk/contrib/threeteen/AmountFormats;", "", "<init>", "()V", "DAYS_PER_WEEK", "", "HOURS_PER_DAY", "MINUTES_PER_HOUR", "SECONDS_PER_MINUTE", "NANOS_PER_MILLIS", "BUNDLE_NAME", "", "SPLITTER", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "Ljava/util/regex/Pattern;", "WORDBASED_COMMASPACE", "WORDBASED_SPACEANDSPACE", "WORDBASED_YEAR", "WORDBASED_MONTH", "WORDBASED_WEEK", "WORDBASED_DAY", "WORDBASED_HOUR", "WORDBASED_MINUTE", "WORDBASED_SECOND", "WORDBASED_MILLISECOND", "PREDICATE_1", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;", "PREDICATE_END1_NOT11", "PREDICATE_END234_NOTTEENS", "DURATION_UNITS", "", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;", "EMPTY_FRACTION", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;", "iso8601", TypedValues.Cycle.S_WAVE_PERIOD, "Lorg/threeten/bp/Period;", "duration", "Lorg/threeten/bp/Duration;", "getResourceBundle", "Ljava/util/ResourceBundle;", Constants.LOCALE, "Ljava/util/Locale;", "wordBased", "oppositeSigns", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "parseUnitBasedDuration", "durationText", "", "consumeDurationLeadingInt", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;", "text", "original", TypedValues.Cycle.S_WAVE_OFFSET, "consumeDurationFraction", "findUnit", "Lkotlin/Result;", "findUnit-IoAF18A", "(Ljava/lang/CharSequence;)Ljava/lang/Object;", "consumePrefix", "prefix", "", "consumePrefix-gIAlu-s", "(Ljava/lang/CharSequence;C)Ljava/lang/Object;", "IntPredicate", "WordBased", "UnitFormat", "SinglePluralFormat", "PredicateFormat", "DurationUnit", "DurationScalar", "ParsedUnitPart", "IntegerScalarPart", "FractionScalarPart", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AmountFormats {
    private static final String BUNDLE_NAME = "com.superwall.extra.wordbased";
    private static final int DAYS_PER_WEEK = 7;
    private static final List<DurationUnit> DURATION_UNITS;
    private static final FractionScalarPart EMPTY_FRACTION;
    private static final int HOURS_PER_DAY = 24;
    private static final int MINUTES_PER_HOUR = 60;
    private static final int NANOS_PER_MILLIS = 1000000;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final String WORDBASED_COMMASPACE = "WordBased.commaspace";
    private static final String WORDBASED_DAY = "WordBased.day";
    private static final String WORDBASED_HOUR = "WordBased.hour";
    private static final String WORDBASED_MILLISECOND = "WordBased.millisecond";
    private static final String WORDBASED_MINUTE = "WordBased.minute";
    private static final String WORDBASED_MONTH = "WordBased.month";
    private static final String WORDBASED_SECOND = "WordBased.second";
    private static final String WORDBASED_SPACEANDSPACE = "WordBased.spaceandspace";
    private static final String WORDBASED_WEEK = "WordBased.week";
    private static final String WORDBASED_YEAR = "WordBased.year";
    public static final AmountFormats INSTANCE = new AmountFormats();
    private static final Pattern SPLITTER = Pattern.compile("[|][|][|]");
    private static final IntPredicate PREDICATE_1 = new IntPredicate() { // from class: com.superwall.sdk.contrib.threeteen.AmountFormats$$ExternalSyntheticLambda0
        @Override // com.superwall.sdk.contrib.threeteen.AmountFormats.IntPredicate
        public final boolean test(int i) {
            return AmountFormats.PREDICATE_1$lambda$0(i);
        }
    };
    private static final IntPredicate PREDICATE_END1_NOT11 = new IntPredicate() { // from class: com.superwall.sdk.contrib.threeteen.AmountFormats$$ExternalSyntheticLambda1
        @Override // com.superwall.sdk.contrib.threeteen.AmountFormats.IntPredicate
        public final boolean test(int i) {
            return AmountFormats.PREDICATE_END1_NOT11$lambda$1(i);
        }
    };
    private static final IntPredicate PREDICATE_END234_NOTTEENS = new IntPredicate() { // from class: com.superwall.sdk.contrib.threeteen.AmountFormats$$ExternalSyntheticLambda2
        @Override // com.superwall.sdk.contrib.threeteen.AmountFormats.IntPredicate
        public final boolean test(int i) {
            return AmountFormats.PREDICATE_END234_NOTTEENS$lambda$2(i);
        }
    };

    /* JADX INFO: compiled from: AmountFormats.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;", "", "applyTo", "Lorg/threeten/bp/Duration;", "unit", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface DurationScalar {
        Duration applyTo(DurationUnit unit);
    }

    /* JADX INFO: compiled from: AmountFormats.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;", "", "test", "", RNConstants.ARG_VALUE, "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface IntPredicate {
        boolean test(int value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean PREDICATE_1$lambda$0(int i) {
        return i == 1 || i == -1;
    }

    private final boolean oppositeSigns(int a2, int b) {
        if (a2 < 0) {
            return b >= 0;
        }
        return b < 0;
    }

    private AmountFormats() {
    }

    static {
        Duration durationOfNanos = Duration.ofNanos(1L);
        Intrinsics.checkNotNullExpressionValue(durationOfNanos, "ofNanos(...)");
        Duration durationOfNanos2 = Duration.ofNanos(1000L);
        Intrinsics.checkNotNullExpressionValue(durationOfNanos2, "ofNanos(...)");
        Duration durationOfNanos3 = Duration.ofNanos(1000L);
        Intrinsics.checkNotNullExpressionValue(durationOfNanos3, "ofNanos(...)");
        Duration durationOfNanos4 = Duration.ofNanos(1000L);
        Intrinsics.checkNotNullExpressionValue(durationOfNanos4, "ofNanos(...)");
        Duration durationOfMillis = Duration.ofMillis(1L);
        Intrinsics.checkNotNullExpressionValue(durationOfMillis, "ofMillis(...)");
        Duration durationOfSeconds = Duration.ofSeconds(1L);
        Intrinsics.checkNotNullExpressionValue(durationOfSeconds, "ofSeconds(...)");
        Duration durationOfMinutes = Duration.ofMinutes(1L);
        Intrinsics.checkNotNullExpressionValue(durationOfMinutes, "ofMinutes(...)");
        Duration durationOfHours = Duration.ofHours(1L);
        Intrinsics.checkNotNullExpressionValue(durationOfHours, "ofHours(...)");
        DURATION_UNITS = CollectionsKt.listOf((Object[]) new DurationUnit[]{new DurationUnit("ns", durationOfNanos), new DurationUnit("µs", durationOfNanos2), new DurationUnit("μs", durationOfNanos3), new DurationUnit("us", durationOfNanos4), new DurationUnit("ms", durationOfMillis), new DurationUnit(CmcdData.STREAMING_FORMAT_SS, durationOfSeconds), new DurationUnit(CmcdData.OBJECT_TYPE_MANIFEST, durationOfMinutes), new DurationUnit(CmcdData.STREAMING_FORMAT_HLS, durationOfHours)});
        EMPTY_FRACTION = new FractionScalarPart(0L, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean PREDICATE_END1_NOT11$lambda$1(int i) {
        int iAbs = Math.abs(i);
        return iAbs % 10 == 1 && (iAbs % 100) / 10 != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean PREDICATE_END234_NOTTEENS$lambda$2(int i) {
        int iAbs = Math.abs(i);
        int i2 = iAbs % 10;
        return i2 >= 2 && i2 <= 4 && (iAbs % 100) / 10 != 1;
    }

    public final String iso8601(Period period, Duration duration) {
        Intrinsics.checkNotNullParameter(period, "period");
        Intrinsics.checkNotNullParameter(duration, "duration");
        Objects.requireNonNull(period, "period must not be null");
        Objects.requireNonNull(duration, "duration must not be null");
        if (period.isZero()) {
            String string = duration.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }
        if (duration.isZero()) {
            String string2 = period.toString();
            Intrinsics.checkNotNull(string2);
            return string2;
        }
        String string3 = duration.toString();
        Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
        String strSubstring = string3.substring(1);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return period + strSubstring;
    }

    public final ResourceBundle getResourceBundle(Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        try {
            return ResourceBundle.getBundle(BUNDLE_NAME, locale);
        } catch (MissingResourceException e) {
            Logger.INSTANCE.debug(LogLevel.error, LogScope.localizationManager, "Resource not found: com.superwall.extra.wordbased", MapsKt.mapOf(TuplesKt.to(Constants.LOCALE, locale)), e);
            return ResourceBundle.getBundle(BUNDLE_NAME, Locale.ENGLISH);
        }
    }

    public final String wordBased(Period period, Locale locale) {
        int days;
        Intrinsics.checkNotNullParameter(period, "period");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Objects.requireNonNull(period, "period must not be null");
        Objects.requireNonNull(locale, "locale must not be null");
        ResourceBundle resourceBundle = getResourceBundle(locale);
        int days2 = 0;
        UnitFormat[] unitFormatArr = {UnitFormat.INSTANCE.of(resourceBundle, WORDBASED_YEAR), UnitFormat.INSTANCE.of(resourceBundle, WORDBASED_MONTH), UnitFormat.INSTANCE.of(resourceBundle, WORDBASED_WEEK), UnitFormat.INSTANCE.of(resourceBundle, WORDBASED_DAY)};
        String string = resourceBundle.getString(WORDBASED_COMMASPACE);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = resourceBundle.getString(WORDBASED_SPACEANDSPACE);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        WordBased wordBased = new WordBased(unitFormatArr, string, string2);
        if (oppositeSigns(period.getMonths(), period.getYears())) {
            period = period.normalized();
        }
        if (period.getDays() % 7 == 0) {
            days2 = period.getDays() / 7;
            days = 0;
        } else {
            days = period.getDays();
        }
        return wordBased.format(new int[]{period.getYears(), period.getMonths(), days2, days});
    }

    public final String wordBased(Duration duration, Locale locale) {
        Intrinsics.checkNotNullParameter(duration, "duration");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Objects.requireNonNull(duration, "duration must not be null");
        Objects.requireNonNull(locale, "locale must not be null");
        ResourceBundle bundle = ResourceBundle.getBundle(BUNDLE_NAME, locale);
        UnitFormat.Companion companion = UnitFormat.INSTANCE;
        Intrinsics.checkNotNull(bundle);
        UnitFormat[] unitFormatArr = {companion.of(bundle, WORDBASED_HOUR), UnitFormat.INSTANCE.of(bundle, WORDBASED_MINUTE), UnitFormat.INSTANCE.of(bundle, WORDBASED_SECOND), UnitFormat.INSTANCE.of(bundle, WORDBASED_MILLISECOND)};
        String string = bundle.getString(WORDBASED_COMMASPACE);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = bundle.getString(WORDBASED_SPACEANDSPACE);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        long j = 60;
        return new WordBased(unitFormatArr, string, string2).format(new int[]{(int) duration.toHours(), (int) (duration.toMinutes() % j), (int) (duration.getSeconds() % j), duration.getNano() / 1000000});
    }

    public final String wordBased(Period period, Duration duration, Locale locale) {
        int days;
        Intrinsics.checkNotNullParameter(period, "period");
        Intrinsics.checkNotNullParameter(duration, "duration");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Objects.requireNonNull(period, "period must not be null");
        Objects.requireNonNull(duration, "duration must not be null");
        Objects.requireNonNull(locale, "locale must not be null");
        ResourceBundle bundle = ResourceBundle.getBundle(BUNDLE_NAME, locale);
        UnitFormat.Companion companion = UnitFormat.INSTANCE;
        Intrinsics.checkNotNull(bundle);
        int days2 = 0;
        UnitFormat[] unitFormatArr = {companion.of(bundle, WORDBASED_YEAR), UnitFormat.INSTANCE.of(bundle, WORDBASED_MONTH), UnitFormat.INSTANCE.of(bundle, WORDBASED_WEEK), UnitFormat.INSTANCE.of(bundle, WORDBASED_DAY), UnitFormat.INSTANCE.of(bundle, WORDBASED_HOUR), UnitFormat.INSTANCE.of(bundle, WORDBASED_MINUTE), UnitFormat.INSTANCE.of(bundle, WORDBASED_SECOND), UnitFormat.INSTANCE.of(bundle, WORDBASED_MILLISECOND)};
        String string = bundle.getString(WORDBASED_COMMASPACE);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = bundle.getString(WORDBASED_SPACEANDSPACE);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        WordBased wordBased = new WordBased(unitFormatArr, string, string2);
        if (oppositeSigns(period.getMonths(), period.getYears())) {
            period = period.normalized();
        }
        if (period.getDays() % 7 == 0) {
            days = period.getDays() / 7;
        } else {
            days = 0;
            days2 = period.getDays();
        }
        long hours = duration.toHours();
        long j = 24;
        long j2 = 60;
        return wordBased.format(new int[]{period.getYears(), period.getMonths(), days, days2 + ((int) (hours / j)), (int) (hours % j), (int) (duration.toMinutes() % j2), (int) (duration.getSeconds() % j2), duration.getNano() / 1000000});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Duration parseUnitBasedDuration(CharSequence durationText) {
        CharSequence charSequence;
        byte b;
        int i;
        Intrinsics.checkNotNullParameter(durationText, "durationText");
        Objects.requireNonNull(durationText, "durationText must not be null");
        Object objM10591consumePrefixgIAlus = m10591consumePrefixgIAlus(durationText, '-');
        boolean z = true;
        if (Result.m11248isSuccessimpl(objM10591consumePrefixgIAlus)) {
            if (Result.m11247isFailureimpl(objM10591consumePrefixgIAlus)) {
                objM10591consumePrefixgIAlus = null;
            }
            Intrinsics.checkNotNull(objM10591consumePrefixgIAlus);
            charSequence = (CharSequence) objM10591consumePrefixgIAlus;
            b = -1;
        } else {
            Object objM10591consumePrefixgIAlus2 = m10591consumePrefixgIAlus(durationText, '+');
            boolean zM11248isSuccessimpl = Result.m11248isSuccessimpl(objM10591consumePrefixgIAlus2);
            if (Result.m11247isFailureimpl(objM10591consumePrefixgIAlus2)) {
                objM10591consumePrefixgIAlus2 = null;
            }
            charSequence = (CharSequence) objM10591consumePrefixgIAlus2;
            if (charSequence == null) {
                charSequence = durationText;
            }
            z = zM11248isSuccessimpl;
            b = 1;
        }
        if (Intrinsics.areEqual(charSequence, "0")) {
            Duration ZERO = Duration.ZERO;
            Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
            return ZERO;
        }
        if (charSequence.length() == 0) {
            throw new DateTimeParseException("Not a numeric value", durationText, 0);
        }
        Duration durationPlus = Duration.ZERO;
        int length = charSequence.length();
        while (length > 0) {
            ParsedUnitPart parsedUnitPartConsumeDurationLeadingInt = consumeDurationLeadingInt(charSequence, durationText, i);
            int length2 = i + (charSequence.length() - parsedUnitPartConsumeDurationLeadingInt.getRemainingText().length());
            CharSequence remainingText = parsedUnitPartConsumeDurationLeadingInt.getRemainingText();
            ParsedUnitPart parsedUnitPart = parsedUnitPartConsumeDurationLeadingInt;
            FractionScalarPart fractionScalarPart = EMPTY_FRACTION;
            Object objM10591consumePrefixgIAlus3 = m10591consumePrefixgIAlus(remainingText, FilenameUtils.EXTENSION_SEPARATOR);
            if (Result.m11248isSuccessimpl(objM10591consumePrefixgIAlus3)) {
                int i2 = length2 + 1;
                if (Result.m11247isFailureimpl(objM10591consumePrefixgIAlus3)) {
                    i = z;
                    objM10591consumePrefixgIAlus3 = null;
                }
                i = z;
                Intrinsics.checkNotNull(objM10591consumePrefixgIAlus3);
                CharSequence charSequence2 = (CharSequence) objM10591consumePrefixgIAlus3;
                ParsedUnitPart parsedUnitPartConsumeDurationFraction = consumeDurationFraction(charSequence2, durationText, i2);
                length2 = i2 + (charSequence2.length() - parsedUnitPartConsumeDurationFraction.getRemainingText().length());
                fractionScalarPart = parsedUnitPartConsumeDurationFraction;
                remainingText = parsedUnitPartConsumeDurationFraction.getRemainingText();
            }
            i = z;
            Object objM10592findUnitIoAF18A = m10592findUnitIoAF18A(remainingText);
            if (Result.m11247isFailureimpl(objM10592findUnitIoAF18A)) {
                throw new DateTimeParseException("Invalid duration unit", durationText, length2);
            }
            if (Result.m11247isFailureimpl(objM10592findUnitIoAF18A)) {
                objM10592findUnitIoAF18A = null;
            }
            Intrinsics.checkNotNull(objM10592findUnitIoAF18A);
            DurationUnit durationUnit = (DurationUnit) objM10592findUnitIoAF18A;
            try {
                durationPlus = durationPlus.plus(parsedUnitPart.applyTo(durationUnit).plus(fractionScalarPart.applyTo(durationUnit)));
                CharSequence charSequenceConsumeDurationUnit = durationUnit.consumeDurationUnit(remainingText);
                int length3 = length2 + (remainingText.length() - charSequenceConsumeDurationUnit.length());
                length = charSequenceConsumeDurationUnit.length();
                charSequence = charSequenceConsumeDurationUnit;
                i = length3;
            } catch (ArithmeticException e) {
                throw new DateTimeParseException("Duration string exceeds valid numeric range", durationText, length2, e);
            }
        }
        if (b >= 0) {
            i = z;
            Intrinsics.checkNotNull(durationPlus);
            return durationPlus;
        }
        i = z;
        Duration durationNegated = durationPlus.negated();
        Intrinsics.checkNotNullExpressionValue(durationNegated, "negated(...)");
        return durationNegated;
    }

    private final ParsedUnitPart consumeDurationLeadingInt(CharSequence text, CharSequence original, int offset) {
        int length = text.length();
        int i = 0;
        long j = 0;
        while (i < length) {
            char cCharAt = text.charAt(i);
            if (Intrinsics.compare((int) cCharAt, 48) < 0 || Intrinsics.compare((int) cCharAt, 57) > 0) {
                break;
            }
            if (j > 922337203685477580L) {
                throw new DateTimeParseException("Duration string exceeds valid numeric range", original, i + offset);
            }
            j = (j * ((long) 10)) + ((long) (cCharAt - '0'));
            if (j < 0) {
                throw new DateTimeParseException("Duration string exceeds valid numeric range", original, i + offset);
            }
            i++;
        }
        if (i == 0) {
            throw new DateTimeParseException("Missing leading integer", original, offset);
        }
        return new ParsedUnitPart(text.subSequence(i, text.length()), new IntegerScalarPart(j));
    }

    private final ParsedUnitPart consumeDurationFraction(CharSequence text, CharSequence original, int offset) {
        int i = 0;
        long j = 0;
        long j2 = 1;
        boolean z = false;
        while (i < text.length()) {
            char cCharAt = text.charAt(i);
            if (Intrinsics.compare((int) cCharAt, 48) < 0 || Intrinsics.compare((int) cCharAt, 57) > 0) {
                break;
            }
            if (z || j > 922337203685477580L) {
                i++;
            } else {
                long j3 = 10;
                long j4 = (j * j3) + ((long) (cCharAt - '0'));
                if (j4 < 0) {
                    i++;
                    z = true;
                } else {
                    j2 *= j3;
                    i++;
                    j = j4;
                }
            }
        }
        if (i == 0) {
            throw new DateTimeParseException("Missing numeric fraction after '.'", original, offset);
        }
        return new ParsedUnitPart(text.subSequence(i, text.length()), new FractionScalarPart(j, j2));
    }

    /* JADX INFO: renamed from: findUnit-IoAF18A, reason: not valid java name */
    private final Object m10592findUnitIoAF18A(CharSequence text) {
        Object next;
        Iterator<T> it = DURATION_UNITS.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((DurationUnit) next).prefixMatchesUnit(text));
        DurationUnit durationUnit = (DurationUnit) next;
        Result.Companion companion = Result.INSTANCE;
        return durationUnit != null ? Result.m11241constructorimpl(durationUnit) : Result.m11241constructorimpl(ResultKt.createFailure(new Exception("No matching duration unit found")));
    }

    /* JADX INFO: renamed from: consumePrefix-gIAlu-s, reason: not valid java name */
    private final Object m10591consumePrefixgIAlus(CharSequence text, char prefix) {
        if (text.length() > 0 && text.charAt(0) == prefix) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m11241constructorimpl(text.subSequence(1, text.length()));
        }
        Result.Companion companion2 = Result.INSTANCE;
        return Result.m11241constructorimpl(ResultKt.createFailure(new Exception("Prefix not found")));
    }

    /* JADX INFO: compiled from: AmountFormats.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0000\b\u0000\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rR\u0016\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/contrib/threeteen/AmountFormats$WordBased;", "", "units", "", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;", "separator", "", "lastSeparator", "<init>", "([Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;Ljava/lang/String;Ljava/lang/String;)V", "[Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;", "format", "values", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class WordBased {
        private final String lastSeparator;
        private final String separator;
        private final UnitFormat[] units;

        public WordBased(UnitFormat[] units, String separator, String lastSeparator) {
            Intrinsics.checkNotNullParameter(units, "units");
            Intrinsics.checkNotNullParameter(separator, "separator");
            Intrinsics.checkNotNullParameter(lastSeparator, "lastSeparator");
            this.units = units;
            this.separator = separator;
            this.lastSeparator = lastSeparator;
        }

        public final String format(int[] values) {
            Intrinsics.checkNotNullParameter(values, "values");
            StringBuilder sb = new StringBuilder(32);
            int i = 0;
            for (int i2 : values) {
                if (i2 != 0) {
                    i++;
                }
            }
            int length = values.length;
            int i3 = 0;
            for (int i4 = 0; i4 < length; i4++) {
                int i5 = values[i4];
                if (i5 != 0 || (i3 == 0 && i4 == values.length - 1)) {
                    this.units[i4].formatTo(i5, sb);
                    int i6 = i - 2;
                    if (i3 < i6) {
                        sb.append(this.separator);
                    } else if (i3 == i6) {
                        sb.append(this.lastSeparator);
                    }
                    i3++;
                }
            }
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }
    }

    /* JADX INFO: compiled from: AmountFormats.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b`\u0018\u0000 \t2\u00020\u0001:\u0001\tJ\u001c\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0010\u0006\u001a\u00060\u0007j\u0002`\bH\u0016¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;", "", "formatTo", "", RNConstants.ARG_VALUE, "", "buf", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface UnitFormat {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;

        /* JADX INFO: compiled from: AmountFormats.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public static final class DefaultImpls {
            public static void formatTo(UnitFormat unitFormat, int i, StringBuilder buf) {
                Intrinsics.checkNotNullParameter(buf, "buf");
            }
        }

        void formatTo(int value, StringBuilder buf);

        /* JADX INFO: compiled from: AmountFormats.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat$Companion;", "", "<init>", "()V", "of", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;", "bundle", "Ljava/util/ResourceBundle;", "keyStem", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            public final UnitFormat of(ResourceBundle bundle, String keyStem) {
                Intrinsics.checkNotNullParameter(bundle, "bundle");
                Intrinsics.checkNotNullParameter(keyStem, "keyStem");
                if (bundle.containsKey(keyStem + "s.predicates")) {
                    String string = bundle.getString(keyStem + "s.predicates");
                    String string2 = bundle.getString(keyStem + "s.list");
                    String[] strArrSplit = AmountFormats.SPLITTER.split(string);
                    String[] strArrSplit2 = AmountFormats.SPLITTER.split(string2);
                    Intrinsics.checkNotNull(strArrSplit);
                    Intrinsics.checkNotNull(strArrSplit2);
                    return new PredicateFormat(strArrSplit, strArrSplit2);
                }
                String string3 = bundle.getString(keyStem);
                String string4 = bundle.getString(keyStem + CmcdData.STREAMING_FORMAT_SS);
                Intrinsics.checkNotNull(string3);
                Intrinsics.checkNotNull(string4);
                return new SinglePluralFormat(string3, string4);
            }
        }
    }

    /* JADX INFO: compiled from: AmountFormats.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u00060\fj\u0002`\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/contrib/threeteen/AmountFormats$SinglePluralFormat;", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;", "single", "", "plural", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "formatTo", "", RNConstants.ARG_VALUE, "", "buf", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SinglePluralFormat implements UnitFormat {
        private final String plural;
        private final String single;

        public SinglePluralFormat(String single, String plural) {
            Intrinsics.checkNotNullParameter(single, "single");
            Intrinsics.checkNotNullParameter(plural, "plural");
            this.single = single;
            this.plural = plural;
        }

        @Override // com.superwall.sdk.contrib.threeteen.AmountFormats.UnitFormat
        public void formatTo(int value, StringBuilder buf) {
            Intrinsics.checkNotNullParameter(buf, "buf");
            buf.append(value).append((value == -1 || value == 1) ? this.single : this.plural);
        }
    }

    /* JADX INFO: compiled from: AmountFormats.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u001c\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\n\u0010\u0012\u001a\u00060\u0013j\u0002`\u0014H\u0016R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0018\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat;", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;", "predicateStrs", "", "", "text", "<init>", "([Ljava/lang/String;[Ljava/lang/String;)V", "predicates", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;", "[Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;", "[Ljava/lang/String;", "findPredicate", "predicateStr", "formatTo", "", RNConstants.ARG_VALUE, "", "buf", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PredicateFormat implements UnitFormat {
        private final IntPredicate[] predicates;
        private final String[] text;

        public PredicateFormat(String[] predicateStrs, String[] text) {
            Intrinsics.checkNotNullParameter(predicateStrs, "predicateStrs");
            Intrinsics.checkNotNullParameter(text, "text");
            if (predicateStrs.length + 1 != text.length) {
                throw new IllegalStateException("Invalid word-based resource".toString());
            }
            ArrayList arrayList = new ArrayList(predicateStrs.length);
            for (String str : predicateStrs) {
                Intrinsics.checkNotNull(str);
                arrayList.add(findPredicate(str));
            }
            this.predicates = (IntPredicate[]) arrayList.toArray(new IntPredicate[0]);
            this.text = text;
        }

        private final IntPredicate findPredicate(String predicateStr) {
            int iHashCode = predicateStr.hashCode();
            if (iHashCode != -1690360067) {
                if (iHashCode != -1663276706) {
                    if (iHashCode == 79430 && predicateStr.equals("One")) {
                        return AmountFormats.PREDICATE_1;
                    }
                } else if (predicateStr.equals("End234NotTeens")) {
                    return AmountFormats.PREDICATE_END234_NOTTEENS;
                }
            } else if (predicateStr.equals("End1Not11")) {
                return AmountFormats.PREDICATE_END1_NOT11;
            }
            throw new IllegalStateException("Invalid word-based resource");
        }

        @Override // com.superwall.sdk.contrib.threeteen.AmountFormats.UnitFormat
        public void formatTo(int value, StringBuilder buf) {
            Intrinsics.checkNotNullParameter(buf, "buf");
            int length = this.predicates.length;
            for (int i = 0; i < length; i++) {
                if (this.predicates[i].test(value)) {
                    buf.append(value).append(this.text[i]);
                    return;
                }
            }
            buf.append(value).append(this.text[this.predicates.length]);
        }
    }

    /* JADX INFO: compiled from: AmountFormats.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\r\u001a\u0004\u0018\u00010\u00052\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;", "", "abbrev", "", RNConstants.ARG_VALUE, "Lorg/threeten/bp/Duration;", "<init>", "(Ljava/lang/String;Lorg/threeten/bp/Duration;)V", "prefixMatchesUnit", "", "text", "", "consumeDurationUnit", "scaleBy", "scaleFunc", "Lkotlin/Function1;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class DurationUnit {
        private final String abbrev;
        private final Duration value;

        public DurationUnit(String abbrev, Duration value) {
            Intrinsics.checkNotNullParameter(abbrev, "abbrev");
            Intrinsics.checkNotNullParameter(value, "value");
            this.abbrev = abbrev;
            this.value = value;
        }

        public final boolean prefixMatchesUnit(CharSequence text) {
            Intrinsics.checkNotNullParameter(text, "text");
            if (text.length() >= this.abbrev.length()) {
                String str = this.abbrev;
                if (Intrinsics.areEqual(str, text.subSequence(0, str.length()))) {
                    return true;
                }
            }
            return false;
        }

        public final CharSequence consumeDurationUnit(CharSequence text) {
            Intrinsics.checkNotNullParameter(text, "text");
            return text.subSequence(this.abbrev.length(), text.length());
        }

        public final Duration scaleBy(Function1<? super Duration, Duration> scaleFunc) {
            Intrinsics.checkNotNullParameter(scaleFunc, "scaleFunc");
            return scaleFunc.invoke(this.value);
        }
    }

    /* JADX INFO: compiled from: AmountFormats.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/contrib/threeteen/AmountFormats$ParsedUnitPart;", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;", "remainingText", "", "scalar", "<init>", "(Ljava/lang/CharSequence;Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;)V", "applyTo", "Lorg/threeten/bp/Duration;", "unit", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ParsedUnitPart implements DurationScalar {
        private final CharSequence remainingText;
        private final DurationScalar scalar;

        public ParsedUnitPart(CharSequence remainingText, DurationScalar scalar) {
            Intrinsics.checkNotNullParameter(remainingText, "remainingText");
            Intrinsics.checkNotNullParameter(scalar, "scalar");
            this.remainingText = remainingText;
            this.scalar = scalar;
        }

        @Override // com.superwall.sdk.contrib.threeteen.AmountFormats.DurationScalar
        public Duration applyTo(DurationUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            return this.scalar.applyTo(unit);
        }

        /* JADX INFO: renamed from: remainingText, reason: from getter */
        public final CharSequence getRemainingText() {
            return this.remainingText;
        }
    }

    /* JADX INFO: compiled from: AmountFormats.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntegerScalarPart;", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;", RNConstants.ARG_VALUE, "", "<init>", "(J)V", "applyTo", "Lorg/threeten/bp/Duration;", "unit", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class IntegerScalarPart implements DurationScalar {
        private final long value;

        public IntegerScalarPart(long j) {
            this.value = j;
        }

        @Override // com.superwall.sdk.contrib.threeteen.AmountFormats.DurationScalar
        public Duration applyTo(DurationUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            Duration durationScaleBy = unit.scaleBy(new Function1() { // from class: com.superwall.sdk.contrib.threeteen.AmountFormats$IntegerScalarPart$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AmountFormats.IntegerScalarPart.applyTo$lambda$0(this.f$0, (Duration) obj);
                }
            });
            Intrinsics.checkNotNull(durationScaleBy, "null cannot be cast to non-null type org.threeten.bp.Duration");
            return durationScaleBy;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Duration applyTo$lambda$0(IntegerScalarPart integerScalarPart, Duration d) {
            Intrinsics.checkNotNullParameter(d, "d");
            return d.multipliedBy(integerScalarPart.value);
        }
    }

    /* JADX INFO: compiled from: AmountFormats.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/contrib/threeteen/AmountFormats$FractionScalarPart;", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationScalar;", RNConstants.ARG_VALUE, "", "scale", "<init>", "(JJ)V", "applyTo", "Lorg/threeten/bp/Duration;", "unit", "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$DurationUnit;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class FractionScalarPart implements DurationScalar {
        private final long scale;
        private final long value;

        public FractionScalarPart(long j, long j2) {
            this.value = j;
            this.scale = j2;
        }

        @Override // com.superwall.sdk.contrib.threeteen.AmountFormats.DurationScalar
        public Duration applyTo(DurationUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            if (this.value == 0) {
                Duration duration = Duration.ZERO;
                Intrinsics.checkNotNull(duration);
                return duration;
            }
            Duration durationScaleBy = unit.scaleBy(new Function1() { // from class: com.superwall.sdk.contrib.threeteen.AmountFormats$FractionScalarPart$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AmountFormats.FractionScalarPart.applyTo$lambda$0(this.f$0, (Duration) obj);
                }
            });
            Intrinsics.checkNotNull(durationScaleBy);
            return durationScaleBy;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Duration applyTo$lambda$0(FractionScalarPart fractionScalarPart, Duration d) {
            Intrinsics.checkNotNullParameter(d, "d");
            Duration durationDividedBy = d.multipliedBy(fractionScalarPart.value).dividedBy(fractionScalarPart.scale);
            Intrinsics.checkNotNull(durationDividedBy, "null cannot be cast to non-null type org.threeten.bp.Duration");
            return durationDividedBy;
        }
    }
}
