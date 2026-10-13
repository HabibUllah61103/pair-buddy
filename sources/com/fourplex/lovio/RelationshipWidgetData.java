package com.fourplex.lovio;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WidgetSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\bHÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001b"}, d2 = {"Lcom/fourplex/lovio/RelationshipWidgetData;", "", "daysTogether", "", "partnerName", "", "userName", "hasAnniversaryDate", "", "<init>", "(ILjava/lang/String;Ljava/lang/String;Z)V", "getDaysTogether", "()I", "getPartnerName", "()Ljava/lang/String;", "getUserName", "getHasAnniversaryDate", "()Z", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class RelationshipWidgetData {
    private final int daysTogether;
    private final boolean hasAnniversaryDate;
    private final String partnerName;
    private final String userName;

    public static /* synthetic */ RelationshipWidgetData copy$default(RelationshipWidgetData relationshipWidgetData, int i, String str, String str2, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = relationshipWidgetData.daysTogether;
        }
        if ((i2 & 2) != 0) {
            str = relationshipWidgetData.partnerName;
        }
        if ((i2 & 4) != 0) {
            str2 = relationshipWidgetData.userName;
        }
        if ((i2 & 8) != 0) {
            z = relationshipWidgetData.hasAnniversaryDate;
        }
        return relationshipWidgetData.copy(i, str, str2, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getDaysTogether() {
        return this.daysTogether;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPartnerName() {
        return this.partnerName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getUserName() {
        return this.userName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getHasAnniversaryDate() {
        return this.hasAnniversaryDate;
    }

    public final RelationshipWidgetData copy(int daysTogether, String partnerName, String userName, boolean hasAnniversaryDate) {
        Intrinsics.checkNotNullParameter(partnerName, "partnerName");
        Intrinsics.checkNotNullParameter(userName, "userName");
        return new RelationshipWidgetData(daysTogether, partnerName, userName, hasAnniversaryDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RelationshipWidgetData)) {
            return false;
        }
        RelationshipWidgetData relationshipWidgetData = (RelationshipWidgetData) other;
        return this.daysTogether == relationshipWidgetData.daysTogether && Intrinsics.areEqual(this.partnerName, relationshipWidgetData.partnerName) && Intrinsics.areEqual(this.userName, relationshipWidgetData.userName) && this.hasAnniversaryDate == relationshipWidgetData.hasAnniversaryDate;
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.daysTogether) * 31) + this.partnerName.hashCode()) * 31) + this.userName.hashCode()) * 31) + Boolean.hashCode(this.hasAnniversaryDate);
    }

    public String toString() {
        return "RelationshipWidgetData(daysTogether=" + this.daysTogether + ", partnerName=" + this.partnerName + ", userName=" + this.userName + ", hasAnniversaryDate=" + this.hasAnniversaryDate + ")";
    }

    public RelationshipWidgetData(int i, String partnerName, String userName, boolean z) {
        Intrinsics.checkNotNullParameter(partnerName, "partnerName");
        Intrinsics.checkNotNullParameter(userName, "userName");
        this.daysTogether = i;
        this.partnerName = partnerName;
        this.userName = userName;
        this.hasAnniversaryDate = z;
    }

    public final int getDaysTogether() {
        return this.daysTogether;
    }

    public final String getPartnerName() {
        return this.partnerName;
    }

    public final String getUserName() {
        return this.userName;
    }

    public final boolean getHasAnniversaryDate() {
        return this.hasAnniversaryDate;
    }
}
