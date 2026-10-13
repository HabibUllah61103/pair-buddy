package com.superwall.sdk.models.triggers;

import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TriggerRule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/models/triggers/UnmatchedRule;", "", Constants.ScionAnalytics.PARAM_SOURCE, "Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;", "experimentId", "", "<init>", "(Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;Ljava/lang/String;)V", "getSource", "()Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;", "getExperimentId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Source", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class UnmatchedRule {
    private final String experimentId;
    private final Source source;

    public static /* synthetic */ UnmatchedRule copy$default(UnmatchedRule unmatchedRule, Source source, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            source = unmatchedRule.source;
        }
        if ((i & 2) != 0) {
            str = unmatchedRule.experimentId;
        }
        return unmatchedRule.copy(source, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Source getSource() {
        return this.source;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getExperimentId() {
        return this.experimentId;
    }

    public final UnmatchedRule copy(Source source, String experimentId) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(experimentId, "experimentId");
        return new UnmatchedRule(source, experimentId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UnmatchedRule)) {
            return false;
        }
        UnmatchedRule unmatchedRule = (UnmatchedRule) other;
        return this.source == unmatchedRule.source && Intrinsics.areEqual(this.experimentId, unmatchedRule.experimentId);
    }

    public int hashCode() {
        return (this.source.hashCode() * 31) + this.experimentId.hashCode();
    }

    public String toString() {
        return "UnmatchedRule(source=" + this.source + ", experimentId=" + this.experimentId + ")";
    }

    public UnmatchedRule(Source source, String experimentId) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(experimentId, "experimentId");
        this.source = source;
        this.experimentId = experimentId;
    }

    public final Source getSource() {
        return this.source;
    }

    public final String getExperimentId() {
        return this.experimentId;
    }

    /* JADX INFO: compiled from: TriggerRule.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;", "", "rawValue", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getRawValue", "()Ljava/lang/String;", "EXPRESSION", "OCCURRENCE", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public enum Source {
        EXPRESSION("EXPRESSION"),
        OCCURRENCE("OCCURRENCE");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final String rawValue;

        public static EnumEntries<Source> getEntries() {
            return $ENTRIES;
        }

        Source(String str) {
            this.rawValue = str;
        }

        public final String getRawValue() {
            return this.rawValue;
        }
    }
}
