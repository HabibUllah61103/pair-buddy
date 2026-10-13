package com.superwall.sdk.paywall.presentation.rule_logic.cel;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.google.firebase.messaging.Constants;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue;
import com.superwall.sdk.storage.core_data.CoreDataManager;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \f2\u00020\u0001:\t\u0004\u0005\u0006\u0007\b\t\n\u000b\fB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0007\r\u000e\u000f\u0010\u0011\u0012\u0013¨\u0006\u0014"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;", "", "<init>", "()V", "Names", "MinutesSince", "HoursSince", "DaysSince", "MonthsSince", "PlacementCount", "ReviewRequestCount", "RequestReview", "Companion", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$DaysSince;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$HoursSince;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$MinutesSince;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$MonthsSince;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$RequestReview;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class SuperscriptExposedFunction {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public /* synthetic */ SuperscriptExposedFunction(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Names;", "", "rawName", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getRawName", "()Ljava/lang/String;", "MINUTES_SINCE", "HOURS_SINCE", "DAYS_SINCE", "MONTHS_SINCE", "PLACEMENTS_IN_HOUR", "PLACEMENTS_IN_DAY", "PLACEMENTS_IN_WEEK", "PLACEMENTS_IN_MONTH", "PLACEMENTS_SINCE_INSTALL", "REVIEW_REQUESTS_IN_HOUR", "REVIEW_REQUESTS_IN_DAY", "REVIEW_REQUESTS_IN_WEEK", "REVIEW_REQUESTS_IN_MONTH", "REVIEW_REQUESTS_IN_YEAR", "REVIEW_REQUESTS_TOTAL", "REQUEST_REVIEW", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public enum Names {
        MINUTES_SINCE("minutesSince"),
        HOURS_SINCE("hoursSince"),
        DAYS_SINCE("daysSince"),
        MONTHS_SINCE("monthsSince"),
        PLACEMENTS_IN_HOUR("placementsInHour"),
        PLACEMENTS_IN_DAY("placementsInDay"),
        PLACEMENTS_IN_WEEK("placementsInWeek"),
        PLACEMENTS_IN_MONTH("placementsInMonth"),
        PLACEMENTS_SINCE_INSTALL("placementsSinceInstall"),
        REVIEW_REQUESTS_IN_HOUR("reviewRequestsInHour"),
        REVIEW_REQUESTS_IN_DAY("reviewRequestsInDay"),
        REVIEW_REQUESTS_IN_WEEK("reviewRequestsInWeek"),
        REVIEW_REQUESTS_IN_MONTH("reviewRequestsInMonth"),
        REVIEW_REQUESTS_IN_YEAR("reviewRequestsInYear"),
        REVIEW_REQUESTS_TOTAL("reviewRequestsSinceInstall"),
        REQUEST_REVIEW("requestReview");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final String rawName;

        public static EnumEntries<Names> getEntries() {
            return $ENTRIES;
        }

        Names(String str) {
            this.rawName = str;
        }

        public final String getRawName() {
            return this.rawName;
        }
    }

    private SuperscriptExposedFunction() {
    }

    /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$MinutesSince;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince;", NotificationCompat.CATEGORY_EVENT, "", "<init>", "(Ljava/lang/String;)V", "getEvent", "()Ljava/lang/String;", "propertyRequest", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "getPropertyRequest", "()Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class MinutesSince extends SuperscriptExposedFunction implements TimeSince {
        private final String event;
        private final ComputedPropertyRequest.ComputedPropertyRequestType propertyRequest;

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince
        public Object invoke(CoreDataManager coreDataManager, Continuation<? super Integer> continuation) {
            return TimeSince.DefaultImpls.invoke(this, coreDataManager, continuation);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince
        public String getEvent() {
            return this.event;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MinutesSince(String event) {
            super(null);
            Intrinsics.checkNotNullParameter(event, "event");
            this.event = event;
            this.propertyRequest = ComputedPropertyRequest.ComputedPropertyRequestType.MINUTES_SINCE;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince
        public ComputedPropertyRequest.ComputedPropertyRequestType getPropertyRequest() {
            return this.propertyRequest;
        }
    }

    /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$HoursSince;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince;", NotificationCompat.CATEGORY_EVENT, "", "<init>", "(Ljava/lang/String;)V", "getEvent", "()Ljava/lang/String;", "propertyRequest", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "getPropertyRequest", "()Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class HoursSince extends SuperscriptExposedFunction implements TimeSince {
        private final String event;
        private final ComputedPropertyRequest.ComputedPropertyRequestType propertyRequest;

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince
        public Object invoke(CoreDataManager coreDataManager, Continuation<? super Integer> continuation) {
            return TimeSince.DefaultImpls.invoke(this, coreDataManager, continuation);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince
        public String getEvent() {
            return this.event;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HoursSince(String event) {
            super(null);
            Intrinsics.checkNotNullParameter(event, "event");
            this.event = event;
            this.propertyRequest = ComputedPropertyRequest.ComputedPropertyRequestType.HOURS_SINCE;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince
        public ComputedPropertyRequest.ComputedPropertyRequestType getPropertyRequest() {
            return this.propertyRequest;
        }
    }

    /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$DaysSince;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince;", NotificationCompat.CATEGORY_EVENT, "", "<init>", "(Ljava/lang/String;)V", "getEvent", "()Ljava/lang/String;", "propertyRequest", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "getPropertyRequest", "()Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class DaysSince extends SuperscriptExposedFunction implements TimeSince {
        private final String event;
        private final ComputedPropertyRequest.ComputedPropertyRequestType propertyRequest;

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince
        public Object invoke(CoreDataManager coreDataManager, Continuation<? super Integer> continuation) {
            return TimeSince.DefaultImpls.invoke(this, coreDataManager, continuation);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince
        public String getEvent() {
            return this.event;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DaysSince(String event) {
            super(null);
            Intrinsics.checkNotNullParameter(event, "event");
            this.event = event;
            this.propertyRequest = ComputedPropertyRequest.ComputedPropertyRequestType.DAYS_SINCE;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince
        public ComputedPropertyRequest.ComputedPropertyRequestType getPropertyRequest() {
            return this.propertyRequest;
        }
    }

    /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$MonthsSince;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince;", NotificationCompat.CATEGORY_EVENT, "", "<init>", "(Ljava/lang/String;)V", "getEvent", "()Ljava/lang/String;", "propertyRequest", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "getPropertyRequest", "()Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class MonthsSince extends SuperscriptExposedFunction implements TimeSince {
        private final String event;
        private final ComputedPropertyRequest.ComputedPropertyRequestType propertyRequest;

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince
        public Object invoke(CoreDataManager coreDataManager, Continuation<? super Integer> continuation) {
            return TimeSince.DefaultImpls.invoke(this, coreDataManager, continuation);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince
        public String getEvent() {
            return this.event;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MonthsSince(String event) {
            super(null);
            Intrinsics.checkNotNullParameter(event, "event");
            this.event = event;
            this.propertyRequest = ComputedPropertyRequest.ComputedPropertyRequestType.MONTHS_SINCE;
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince
        public ComputedPropertyRequest.ComputedPropertyRequestType getPropertyRequest() {
            return this.propertyRequest;
        }
    }

    /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086B¢\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$PlacementCount;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;", NotificationCompat.CATEGORY_EVENT, "", TypedValues.Cycle.S_WAVE_PERIOD, "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V", "getEvent", "()Ljava/lang/String;", "getPeriod", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;", "invoke", "", "storage", "Lcom/superwall/sdk/storage/core_data/CoreDataManager;", "(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PlacementCount extends SuperscriptExposedFunction {
        private final String event;
        private final InPeriod.Period period;

        /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[InPeriod.Period.values().length];
                try {
                    iArr[InPeriod.Period.HOUR.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[InPeriod.Period.DAY.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[InPeriod.Period.WEEK.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[InPeriod.Period.MONTH.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[InPeriod.Period.INSTALL.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public final String getEvent() {
            return this.event;
        }

        public final InPeriod.Period getPeriod() {
            return this.period;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PlacementCount(String event, InPeriod.Period period) {
            super(null);
            Intrinsics.checkNotNullParameter(event, "event");
            Intrinsics.checkNotNullParameter(period, "period");
            this.event = event;
            this.period = period;
        }

        public final Object invoke(CoreDataManager coreDataManager, Continuation<? super Integer> continuation) {
            Date time;
            Date date = new Date();
            if (WhenMappings.$EnumSwitchMapping$0[this.period.ordinal()] == 5) {
                time = new Date(0L);
            } else {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                int i = WhenMappings.$EnumSwitchMapping$0[this.period.ordinal()];
                if (i == 1) {
                    calendar.add(10, -1);
                } else if (i == 2) {
                    calendar.add(6, -1);
                } else if (i == 3) {
                    calendar.add(3, -1);
                } else {
                    if (i != 4) {
                        return null;
                    }
                    calendar.add(2, -1);
                }
                time = calendar.getTime();
            }
            String str = this.event;
            Intrinsics.checkNotNull(time);
            return coreDataManager.countEventsByNameInPeriod(str, time, date, continuation);
        }
    }

    /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0086B¢\u0006\u0002\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$ReviewRequestCount;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;", TypedValues.Cycle.S_WAVE_PERIOD, "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;)V", "getPeriod", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/InPeriod$Period;", "invoke", "", "storage", "Lcom/superwall/sdk/storage/core_data/CoreDataManager;", "(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ReviewRequestCount extends SuperscriptExposedFunction {
        private final InPeriod.Period period;

        /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[InPeriod.Period.values().length];
                try {
                    iArr[InPeriod.Period.HOUR.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[InPeriod.Period.DAY.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[InPeriod.Period.WEEK.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[InPeriod.Period.MONTH.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[InPeriod.Period.YEAR.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[InPeriod.Period.INSTALL.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public final InPeriod.Period getPeriod() {
            return this.period;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReviewRequestCount(InPeriod.Period period) {
            super(null);
            Intrinsics.checkNotNullParameter(period, "period");
            this.period = period;
        }

        public final Object invoke(CoreDataManager coreDataManager, Continuation<? super Integer> continuation) {
            Date time;
            Date date = new Date();
            if (WhenMappings.$EnumSwitchMapping$0[this.period.ordinal()] == 6) {
                time = new Date(0L);
            } else {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                int i = WhenMappings.$EnumSwitchMapping$0[this.period.ordinal()];
                if (i == 1) {
                    calendar.add(10, -1);
                } else if (i == 2) {
                    calendar.add(6, -1);
                } else if (i == 3) {
                    calendar.add(3, -1);
                } else if (i == 4) {
                    calendar.add(2, -1);
                } else {
                    if (i != 5) {
                        return null;
                    }
                    calendar.add(1, -1);
                }
                time = calendar.getTime();
            }
            Intrinsics.checkNotNull(time);
            return coreDataManager.countEventsByNameInPeriod("review_requested", time, date, continuation);
        }
    }

    /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086B¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$RequestReview;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;", "<init>", "()V", "invoke", "", "storage", "Lcom/superwall/sdk/storage/core_data/CoreDataManager;", "(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class RequestReview extends SuperscriptExposedFunction {
        public static final RequestReview INSTANCE = new RequestReview();

        private RequestReview() {
            super(null);
        }

        public final Object invoke(CoreDataManager coreDataManager, Continuation<? super Boolean> continuation) {
            return Boxing.boxBoolean(true);
        }
    }

    /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$Companion;", "", "<init>", "()V", Constants.MessagePayloadKeys.FROM, "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction;", "name", "", "args", "", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SuperscriptExposedFunction from(String name, List<? extends PassableValue> args) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(args, "args");
            if (Intrinsics.areEqual(name, Names.MINUTES_SINCE.getRawName())) {
                Object objFirst = CollectionsKt.first((List<? extends Object>) args);
                Intrinsics.checkNotNull(objFirst, "null cannot be cast to non-null type com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue.StringValue");
                return new MinutesSince(((PassableValue.StringValue) objFirst).getValue());
            }
            if (Intrinsics.areEqual(name, Names.HOURS_SINCE.getRawName())) {
                Object objFirst2 = CollectionsKt.first((List<? extends Object>) args);
                Intrinsics.checkNotNull(objFirst2, "null cannot be cast to non-null type com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue.StringValue");
                return new HoursSince(((PassableValue.StringValue) objFirst2).getValue());
            }
            if (Intrinsics.areEqual(name, Names.DAYS_SINCE.getRawName())) {
                Object objFirst3 = CollectionsKt.first((List<? extends Object>) args);
                Intrinsics.checkNotNull(objFirst3, "null cannot be cast to non-null type com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue.StringValue");
                return new DaysSince(((PassableValue.StringValue) objFirst3).getValue());
            }
            if (Intrinsics.areEqual(name, Names.MONTHS_SINCE.getRawName())) {
                Object objFirst4 = CollectionsKt.first((List<? extends Object>) args);
                Intrinsics.checkNotNull(objFirst4, "null cannot be cast to non-null type com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue.StringValue");
                return new MonthsSince(((PassableValue.StringValue) objFirst4).getValue());
            }
            if (Intrinsics.areEqual(name, Names.PLACEMENTS_IN_HOUR.getRawName())) {
                Object objFirst5 = CollectionsKt.first((List<? extends Object>) args);
                Intrinsics.checkNotNull(objFirst5, "null cannot be cast to non-null type com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue.StringValue");
                return new PlacementCount(((PassableValue.StringValue) objFirst5).getValue(), InPeriod.Period.HOUR);
            }
            if (Intrinsics.areEqual(name, Names.PLACEMENTS_IN_DAY.getRawName())) {
                Object objFirst6 = CollectionsKt.first((List<? extends Object>) args);
                Intrinsics.checkNotNull(objFirst6, "null cannot be cast to non-null type com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue.StringValue");
                return new PlacementCount(((PassableValue.StringValue) objFirst6).getValue(), InPeriod.Period.DAY);
            }
            if (Intrinsics.areEqual(name, Names.PLACEMENTS_IN_WEEK.getRawName())) {
                Object objFirst7 = CollectionsKt.first((List<? extends Object>) args);
                Intrinsics.checkNotNull(objFirst7, "null cannot be cast to non-null type com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue.StringValue");
                return new PlacementCount(((PassableValue.StringValue) objFirst7).getValue(), InPeriod.Period.WEEK);
            }
            if (Intrinsics.areEqual(name, Names.PLACEMENTS_IN_MONTH.getRawName())) {
                Object objFirst8 = CollectionsKt.first((List<? extends Object>) args);
                Intrinsics.checkNotNull(objFirst8, "null cannot be cast to non-null type com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue.StringValue");
                return new PlacementCount(((PassableValue.StringValue) objFirst8).getValue(), InPeriod.Period.MONTH);
            }
            if (Intrinsics.areEqual(name, Names.PLACEMENTS_SINCE_INSTALL.getRawName())) {
                Object objFirst9 = CollectionsKt.first((List<? extends Object>) args);
                Intrinsics.checkNotNull(objFirst9, "null cannot be cast to non-null type com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue.StringValue");
                return new PlacementCount(((PassableValue.StringValue) objFirst9).getValue(), InPeriod.Period.INSTALL);
            }
            if (Intrinsics.areEqual(name, Names.REVIEW_REQUESTS_IN_HOUR.getRawName())) {
                return new ReviewRequestCount(InPeriod.Period.HOUR);
            }
            if (Intrinsics.areEqual(name, Names.REVIEW_REQUESTS_IN_DAY.getRawName())) {
                return new ReviewRequestCount(InPeriod.Period.DAY);
            }
            if (Intrinsics.areEqual(name, Names.REVIEW_REQUESTS_IN_WEEK.getRawName())) {
                return new ReviewRequestCount(InPeriod.Period.WEEK);
            }
            if (Intrinsics.areEqual(name, Names.REVIEW_REQUESTS_IN_MONTH.getRawName())) {
                return new ReviewRequestCount(InPeriod.Period.MONTH);
            }
            if (Intrinsics.areEqual(name, Names.REVIEW_REQUESTS_IN_YEAR.getRawName())) {
                return new ReviewRequestCount(InPeriod.Period.YEAR);
            }
            if (Intrinsics.areEqual(name, Names.REVIEW_REQUESTS_TOTAL.getRawName())) {
                return new ReviewRequestCount(InPeriod.Period.INSTALL);
            }
            if (Intrinsics.areEqual(name, Names.REQUEST_REVIEW.getRawName())) {
                return RequestReview.INSTANCE;
            }
            return null;
        }
    }
}
