package com.superwall.sdk.store.abstractions.product;

import com.canhub.cropper.CropImageOptionsKt;
import com.google.firebase.messaging.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import java.math.BigDecimal;
import java.math.RoundingMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.threeten.bp.Period;

/* JADX INFO: compiled from: SubscriptionPeriod.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\b\u0018\u0000 +2\u00020\u0001:\u0002*+B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0000J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\u001d\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020)HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0003X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0003X\u0082D¢\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006,"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;", "", RNConstants.ARG_VALUE, "", "unit", "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;", "<init>", "(ILcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;)V", "getValue", "()I", "getUnit", "()Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;", "daysPerUnit", "", "getDaysPerUnit", "()D", "toMillis", "", "normalized", "toPeriod", "Lorg/threeten/bp/Period;", "roundingMode", "Ljava/math/RoundingMode;", "calculationScale", "outputScale", "getToMillis", "()J", "pricePerDay", "Ljava/math/BigDecimal;", "price", "pricePerWeek", "pricePerMonth", "pricePerYear", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "Unit", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class SubscriptionPeriod {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int calculationScale;
    private final int outputScale;
    private final RoundingMode roundingMode;
    private final Unit unit;
    private final int value;

    /* JADX INFO: compiled from: SubscriptionPeriod.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Unit;", "", "<init>", "(Ljava/lang/String;I)V", "day", "week", "month", "year", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public enum Unit {
        day,
        week,
        month,
        year;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<Unit> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: SubscriptionPeriod.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Unit.values().length];
            try {
                iArr[Unit.day.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Unit.week.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Unit.month.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Unit.year.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static /* synthetic */ SubscriptionPeriod copy$default(SubscriptionPeriod subscriptionPeriod, int i, Unit unit, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = subscriptionPeriod.value;
        }
        if ((i2 & 2) != 0) {
            unit = subscriptionPeriod.unit;
        }
        return subscriptionPeriod.copy(i, unit);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getValue() {
        return this.value;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Unit getUnit() {
        return this.unit;
    }

    public final SubscriptionPeriod copy(int value, Unit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return new SubscriptionPeriod(value, unit);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubscriptionPeriod)) {
            return false;
        }
        SubscriptionPeriod subscriptionPeriod = (SubscriptionPeriod) other;
        return this.value == subscriptionPeriod.value && this.unit == subscriptionPeriod.unit;
    }

    public int hashCode() {
        return (Integer.hashCode(this.value) * 31) + this.unit.hashCode();
    }

    public String toString() {
        return "SubscriptionPeriod(value=" + this.value + ", unit=" + this.unit + ")";
    }

    public SubscriptionPeriod(int i, Unit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        this.value = i;
        this.unit = unit;
        this.roundingMode = RoundingMode.DOWN;
        this.calculationScale = 7;
        this.outputScale = 2;
    }

    public final int getValue() {
        return this.value;
    }

    public final Unit getUnit() {
        return this.unit;
    }

    public final double getDaysPerUnit() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.unit.ordinal()];
        if (i == 1) {
            return 1.0d;
        }
        if (i == 2) {
            return 7.0d;
        }
        if (i == 3) {
            return 30.0d;
        }
        if (i == 4) {
            return 365.0d;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final long toMillis() {
        int i;
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.unit.ordinal()];
        if (i2 == 1) {
            i = this.value;
        } else if (i2 == 2) {
            i = this.value * 7;
        } else if (i2 == 3) {
            i = this.value * 30;
        } else {
            if (i2 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            i = this.value * 365;
        }
        long j = 60;
        return ((long) i) * 24 * j * j * ((long) 1000);
    }

    public final SubscriptionPeriod normalized() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.unit.ordinal()];
        if (i == 1) {
            int i2 = this.value;
            if (i2 % 30 == 0) {
                return copy(i2 / 30, Unit.month).normalized();
            }
            if (i2 % 7 == 0) {
                return copy(i2 / 7, Unit.week).normalized();
            }
            if (i2 % CropImageOptionsKt.DEGREES_360 == 0) {
                return copy(i2 / CropImageOptionsKt.DEGREES_360, Unit.year);
            }
        } else if (i == 3) {
            int i3 = this.value;
            if (i3 % 12 == 0) {
                return copy(i3 / 12, Unit.year);
            }
        }
        return this;
    }

    public final Period toPeriod() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.unit.ordinal()];
        if (i == 1) {
            Period periodOfDays = Period.ofDays(this.value);
            Intrinsics.checkNotNullExpressionValue(periodOfDays, "ofDays(...)");
            return periodOfDays;
        }
        if (i == 2) {
            Period periodOfWeeks = Period.ofWeeks(this.value);
            Intrinsics.checkNotNullExpressionValue(periodOfWeeks, "ofWeeks(...)");
            return periodOfWeeks;
        }
        if (i == 3) {
            Period periodOfMonths = Period.ofMonths(this.value);
            Intrinsics.checkNotNullExpressionValue(periodOfMonths, "ofMonths(...)");
            return periodOfMonths;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        Period periodOfYears = Period.ofYears(this.value);
        Intrinsics.checkNotNullExpressionValue(periodOfYears, "ofYears(...)");
        return periodOfYears;
    }

    /* JADX INFO: compiled from: SubscriptionPeriod.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod$Companion;", "", "<init>", "()V", Constants.MessagePayloadKeys.FROM, "Lcom/superwall/sdk/store/abstractions/product/SubscriptionPeriod;", "subscriptionPeriodString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SubscriptionPeriod from(String subscriptionPeriodString) {
            SubscriptionPeriod subscriptionPeriod;
            SubscriptionPeriod subscriptionPeriod2;
            Intrinsics.checkNotNullParameter(subscriptionPeriodString, "subscriptionPeriodString");
            try {
                Period period = Period.parse(subscriptionPeriodString);
                int totalMonths = (((int) period.toTotalMonths()) * 30) + period.getDays();
                int i = totalMonths / 7;
                if (totalMonths % 7 > 0) {
                    subscriptionPeriod = new SubscriptionPeriod(totalMonths, Unit.day);
                } else if (i > 0) {
                    subscriptionPeriod = new SubscriptionPeriod(i, Unit.week);
                } else {
                    if (period.toTotalMonths() > 0) {
                        subscriptionPeriod2 = new SubscriptionPeriod((int) period.toTotalMonths(), Unit.month);
                    } else if (period.getYears() > 0) {
                        subscriptionPeriod2 = new SubscriptionPeriod(period.getYears(), Unit.year);
                    } else {
                        subscriptionPeriod = null;
                    }
                    subscriptionPeriod = subscriptionPeriod2;
                }
                if (subscriptionPeriod != null) {
                    return subscriptionPeriod.normalized();
                }
            } catch (Throwable unused) {
            }
            return null;
        }
    }

    public final long getToMillis() {
        long j = 60;
        return ((long) (((double) this.value) * getDaysPerUnit())) * ((long) 24) * j * j * ((long) 1000);
    }

    public final BigDecimal pricePerDay(BigDecimal price) {
        BigDecimal bigDecimal;
        Intrinsics.checkNotNullParameter(price, "price");
        int i = WhenMappings.$EnumSwitchMapping$0[this.unit.ordinal()];
        if (i == 1) {
            bigDecimal = BigDecimal.ONE;
        } else if (i == 2) {
            bigDecimal = new BigDecimal(7);
        } else if (i == 3) {
            bigDecimal = new BigDecimal(365).divide(new BigDecimal(12), this.calculationScale, this.roundingMode);
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            bigDecimal = new BigDecimal(365);
        }
        Intrinsics.checkNotNull(bigDecimal);
        BigDecimal bigDecimalMultiply = bigDecimal.multiply(new BigDecimal(this.value));
        Intrinsics.checkNotNullExpressionValue(bigDecimalMultiply, "multiply(...)");
        BigDecimal bigDecimalDivide = price.divide(bigDecimalMultiply, this.outputScale, this.roundingMode);
        Intrinsics.checkNotNullExpressionValue(bigDecimalDivide, "divide(...)");
        return bigDecimalDivide;
    }

    public final BigDecimal pricePerWeek(BigDecimal price) {
        BigDecimal bigDecimalDivide;
        Intrinsics.checkNotNullParameter(price, "price");
        int i = WhenMappings.$EnumSwitchMapping$0[this.unit.ordinal()];
        if (i == 1) {
            bigDecimalDivide = BigDecimal.ONE.divide(new BigDecimal(7), this.calculationScale, this.roundingMode);
        } else if (i == 2) {
            bigDecimalDivide = BigDecimal.ONE;
        } else if (i == 3) {
            bigDecimalDivide = new BigDecimal(52).divide(new BigDecimal(12), this.calculationScale, this.roundingMode);
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            bigDecimalDivide = new BigDecimal(52);
        }
        Intrinsics.checkNotNull(bigDecimalDivide);
        BigDecimal bigDecimalMultiply = bigDecimalDivide.multiply(new BigDecimal(this.value));
        Intrinsics.checkNotNullExpressionValue(bigDecimalMultiply, "multiply(...)");
        BigDecimal bigDecimalDivide2 = price.divide(bigDecimalMultiply, this.outputScale, this.roundingMode);
        Intrinsics.checkNotNullExpressionValue(bigDecimalDivide2, "divide(...)");
        return bigDecimalDivide2;
    }

    public final BigDecimal pricePerMonth(BigDecimal price) {
        BigDecimal bigDecimalDivide;
        Intrinsics.checkNotNullParameter(price, "price");
        int i = WhenMappings.$EnumSwitchMapping$0[this.unit.ordinal()];
        if (i == 1) {
            bigDecimalDivide = new BigDecimal(12).divide(new BigDecimal(365), this.calculationScale, this.roundingMode);
        } else if (i == 2) {
            bigDecimalDivide = new BigDecimal(12).divide(new BigDecimal(52), this.calculationScale, this.roundingMode);
        } else if (i == 3) {
            bigDecimalDivide = BigDecimal.ONE;
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            bigDecimalDivide = new BigDecimal(12);
        }
        Intrinsics.checkNotNull(bigDecimalDivide);
        BigDecimal bigDecimalMultiply = bigDecimalDivide.multiply(new BigDecimal(this.value));
        Intrinsics.checkNotNullExpressionValue(bigDecimalMultiply, "multiply(...)");
        BigDecimal bigDecimalDivide2 = price.divide(bigDecimalMultiply, this.outputScale, this.roundingMode);
        Intrinsics.checkNotNullExpressionValue(bigDecimalDivide2, "divide(...)");
        return bigDecimalDivide2;
    }

    public final BigDecimal pricePerYear(BigDecimal price) {
        BigDecimal bigDecimalDivide;
        Intrinsics.checkNotNullParameter(price, "price");
        int i = WhenMappings.$EnumSwitchMapping$0[this.unit.ordinal()];
        if (i == 1) {
            bigDecimalDivide = BigDecimal.ONE.divide(new BigDecimal(365), this.calculationScale, this.roundingMode);
        } else if (i == 2) {
            bigDecimalDivide = BigDecimal.ONE.divide(new BigDecimal(52), this.calculationScale, this.roundingMode);
        } else if (i == 3) {
            bigDecimalDivide = BigDecimal.ONE.divide(new BigDecimal(12), this.calculationScale, this.roundingMode);
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            bigDecimalDivide = BigDecimal.ONE;
        }
        BigDecimal bigDecimalMultiply = bigDecimalDivide.multiply(new BigDecimal(this.value));
        Intrinsics.checkNotNullExpressionValue(bigDecimalMultiply, "multiply(...)");
        BigDecimal bigDecimalDivide2 = price.divide(bigDecimalMultiply, this.outputScale, this.roundingMode);
        Intrinsics.checkNotNullExpressionValue(bigDecimalDivide2, "divide(...)");
        return bigDecimalDivide2;
    }
}
