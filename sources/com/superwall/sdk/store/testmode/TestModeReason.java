package com.superwall.sdk.store.testmode;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TestModeReason.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\b\t\nB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0003\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/superwall/sdk/store/testmode/TestModeReason;", "", "<init>", "()V", "description", "", "getDescription", "()Ljava/lang/String;", "ConfigMatch", "ApplicationIdMismatch", "TestModeOption", "Lcom/superwall/sdk/store/testmode/TestModeReason$ApplicationIdMismatch;", "Lcom/superwall/sdk/store/testmode/TestModeReason$ConfigMatch;", "Lcom/superwall/sdk/store/testmode/TestModeReason$TestModeOption;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class TestModeReason {
    public /* synthetic */ TestModeReason(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private TestModeReason() {
    }

    /* JADX INFO: compiled from: TestModeReason.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/store/testmode/TestModeReason$ConfigMatch;", "Lcom/superwall/sdk/store/testmode/TestModeReason;", "matchedId", "", "<init>", "(Ljava/lang/String;)V", "getMatchedId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ConfigMatch extends TestModeReason {
        private final String matchedId;

        public static /* synthetic */ ConfigMatch copy$default(ConfigMatch configMatch, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = configMatch.matchedId;
            }
            return configMatch.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMatchedId() {
            return this.matchedId;
        }

        public final ConfigMatch copy(String matchedId) {
            Intrinsics.checkNotNullParameter(matchedId, "matchedId");
            return new ConfigMatch(matchedId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ConfigMatch) && Intrinsics.areEqual(this.matchedId, ((ConfigMatch) other).matchedId);
        }

        public int hashCode() {
            return this.matchedId.hashCode();
        }

        public String toString() {
            return "ConfigMatch(matchedId=" + this.matchedId + ")";
        }

        public final String getMatchedId() {
            return this.matchedId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConfigMatch(String matchedId) {
            super(null);
            Intrinsics.checkNotNullParameter(matchedId, "matchedId");
            this.matchedId = matchedId;
        }
    }

    /* JADX INFO: compiled from: TestModeReason.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/superwall/sdk/store/testmode/TestModeReason$ApplicationIdMismatch;", "Lcom/superwall/sdk/store/testmode/TestModeReason;", "expected", "", "actual", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getExpected", "()Ljava/lang/String;", "getActual", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ApplicationIdMismatch extends TestModeReason {
        private final String actual;
        private final String expected;

        public static /* synthetic */ ApplicationIdMismatch copy$default(ApplicationIdMismatch applicationIdMismatch, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = applicationIdMismatch.expected;
            }
            if ((i & 2) != 0) {
                str2 = applicationIdMismatch.actual;
            }
            return applicationIdMismatch.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getExpected() {
            return this.expected;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getActual() {
            return this.actual;
        }

        public final ApplicationIdMismatch copy(String expected, String actual) {
            Intrinsics.checkNotNullParameter(expected, "expected");
            Intrinsics.checkNotNullParameter(actual, "actual");
            return new ApplicationIdMismatch(expected, actual);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ApplicationIdMismatch)) {
                return false;
            }
            ApplicationIdMismatch applicationIdMismatch = (ApplicationIdMismatch) other;
            return Intrinsics.areEqual(this.expected, applicationIdMismatch.expected) && Intrinsics.areEqual(this.actual, applicationIdMismatch.actual);
        }

        public int hashCode() {
            return (this.expected.hashCode() * 31) + this.actual.hashCode();
        }

        public String toString() {
            return "ApplicationIdMismatch(expected=" + this.expected + ", actual=" + this.actual + ")";
        }

        public final String getExpected() {
            return this.expected;
        }

        public final String getActual() {
            return this.actual;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ApplicationIdMismatch(String expected, String actual) {
            super(null);
            Intrinsics.checkNotNullParameter(expected, "expected");
            Intrinsics.checkNotNullParameter(actual, "actual");
            this.expected = expected;
            this.actual = actual;
        }
    }

    /* JADX INFO: compiled from: TestModeReason.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/store/testmode/TestModeReason$TestModeOption;", "Lcom/superwall/sdk/store/testmode/TestModeReason;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TestModeOption extends TestModeReason {
        public static final TestModeOption INSTANCE = new TestModeOption();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TestModeOption)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1490789315;
        }

        public String toString() {
            return "TestModeOption";
        }

        private TestModeOption() {
            super(null);
        }
    }

    public final String getDescription() {
        if (this instanceof ConfigMatch) {
            return "User ID \"" + ((ConfigMatch) this).getMatchedId() + "\" matched a test mode user in the dashboard config.";
        }
        if (!(this instanceof ApplicationIdMismatch)) {
            if (this instanceof TestModeOption) {
                return "Test mode is always enabled via SuperwallOptions.";
            }
            throw new NoWhenBranchMatchedException();
        }
        ApplicationIdMismatch applicationIdMismatch = (ApplicationIdMismatch) this;
        return "Application ID mismatch: expected \"" + applicationIdMismatch.getExpected() + "\", got \"" + applicationIdMismatch.getActual() + "\".";
    }
}
