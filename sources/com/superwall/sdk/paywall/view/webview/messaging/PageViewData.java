package com.superwall.sdk.paywall.view.webview.messaging;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PageViewData.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0016J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0016Jd\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u0005HÖ\u0001J\t\u0010(\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0015\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000fR\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0019\u0010\u0016¨\u0006)"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;", "", "pageNodeId", "", "flowPosition", "", "pageName", "navigationNodeId", "previousPageNodeId", "previousFlowPosition", "navigationType", "timeOnPreviousPageMs", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V", "getPageNodeId", "()Ljava/lang/String;", "getFlowPosition", "()I", "getPageName", "getNavigationNodeId", "getPreviousPageNodeId", "getPreviousFlowPosition", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getNavigationType", "getTimeOnPreviousPageMs", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;", "equals", "", "other", "hashCode", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class PageViewData {
    private final int flowPosition;
    private final String navigationNodeId;
    private final String navigationType;
    private final String pageName;
    private final String pageNodeId;
    private final Integer previousFlowPosition;
    private final String previousPageNodeId;
    private final Integer timeOnPreviousPageMs;

    public static /* synthetic */ PageViewData copy$default(PageViewData pageViewData, String str, int i, String str2, String str3, String str4, Integer num, String str5, Integer num2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pageViewData.pageNodeId;
        }
        if ((i2 & 2) != 0) {
            i = pageViewData.flowPosition;
        }
        if ((i2 & 4) != 0) {
            str2 = pageViewData.pageName;
        }
        if ((i2 & 8) != 0) {
            str3 = pageViewData.navigationNodeId;
        }
        if ((i2 & 16) != 0) {
            str4 = pageViewData.previousPageNodeId;
        }
        if ((i2 & 32) != 0) {
            num = pageViewData.previousFlowPosition;
        }
        if ((i2 & 64) != 0) {
            str5 = pageViewData.navigationType;
        }
        if ((i2 & 128) != 0) {
            num2 = pageViewData.timeOnPreviousPageMs;
        }
        String str6 = str5;
        Integer num3 = num2;
        String str7 = str4;
        Integer num4 = num;
        return pageViewData.copy(str, i, str2, str3, str7, num4, str6, num3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPageNodeId() {
        return this.pageNodeId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getFlowPosition() {
        return this.flowPosition;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPageName() {
        return this.pageName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getNavigationNodeId() {
        return this.navigationNodeId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPreviousPageNodeId() {
        return this.previousPageNodeId;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getPreviousFlowPosition() {
        return this.previousFlowPosition;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getNavigationType() {
        return this.navigationType;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getTimeOnPreviousPageMs() {
        return this.timeOnPreviousPageMs;
    }

    public final PageViewData copy(String pageNodeId, int flowPosition, String pageName, String navigationNodeId, String previousPageNodeId, Integer previousFlowPosition, String navigationType, Integer timeOnPreviousPageMs) {
        Intrinsics.checkNotNullParameter(pageNodeId, "pageNodeId");
        Intrinsics.checkNotNullParameter(pageName, "pageName");
        Intrinsics.checkNotNullParameter(navigationNodeId, "navigationNodeId");
        Intrinsics.checkNotNullParameter(navigationType, "navigationType");
        return new PageViewData(pageNodeId, flowPosition, pageName, navigationNodeId, previousPageNodeId, previousFlowPosition, navigationType, timeOnPreviousPageMs);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PageViewData)) {
            return false;
        }
        PageViewData pageViewData = (PageViewData) other;
        return Intrinsics.areEqual(this.pageNodeId, pageViewData.pageNodeId) && this.flowPosition == pageViewData.flowPosition && Intrinsics.areEqual(this.pageName, pageViewData.pageName) && Intrinsics.areEqual(this.navigationNodeId, pageViewData.navigationNodeId) && Intrinsics.areEqual(this.previousPageNodeId, pageViewData.previousPageNodeId) && Intrinsics.areEqual(this.previousFlowPosition, pageViewData.previousFlowPosition) && Intrinsics.areEqual(this.navigationType, pageViewData.navigationType) && Intrinsics.areEqual(this.timeOnPreviousPageMs, pageViewData.timeOnPreviousPageMs);
    }

    public int hashCode() {
        int iHashCode = ((((((this.pageNodeId.hashCode() * 31) + Integer.hashCode(this.flowPosition)) * 31) + this.pageName.hashCode()) * 31) + this.navigationNodeId.hashCode()) * 31;
        String str = this.previousPageNodeId;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.previousFlowPosition;
        int iHashCode3 = (((iHashCode2 + (num == null ? 0 : num.hashCode())) * 31) + this.navigationType.hashCode()) * 31;
        Integer num2 = this.timeOnPreviousPageMs;
        return iHashCode3 + (num2 != null ? num2.hashCode() : 0);
    }

    public String toString() {
        return "PageViewData(pageNodeId=" + this.pageNodeId + ", flowPosition=" + this.flowPosition + ", pageName=" + this.pageName + ", navigationNodeId=" + this.navigationNodeId + ", previousPageNodeId=" + this.previousPageNodeId + ", previousFlowPosition=" + this.previousFlowPosition + ", navigationType=" + this.navigationType + ", timeOnPreviousPageMs=" + this.timeOnPreviousPageMs + ")";
    }

    public PageViewData(String pageNodeId, int i, String pageName, String navigationNodeId, String str, Integer num, String navigationType, Integer num2) {
        Intrinsics.checkNotNullParameter(pageNodeId, "pageNodeId");
        Intrinsics.checkNotNullParameter(pageName, "pageName");
        Intrinsics.checkNotNullParameter(navigationNodeId, "navigationNodeId");
        Intrinsics.checkNotNullParameter(navigationType, "navigationType");
        this.pageNodeId = pageNodeId;
        this.flowPosition = i;
        this.pageName = pageName;
        this.navigationNodeId = navigationNodeId;
        this.previousPageNodeId = str;
        this.previousFlowPosition = num;
        this.navigationType = navigationType;
        this.timeOnPreviousPageMs = num2;
    }

    public final String getPageNodeId() {
        return this.pageNodeId;
    }

    public final int getFlowPosition() {
        return this.flowPosition;
    }

    public final String getPageName() {
        return this.pageName;
    }

    public final String getNavigationNodeId() {
        return this.navigationNodeId;
    }

    public final String getPreviousPageNodeId() {
        return this.previousPageNodeId;
    }

    public final Integer getPreviousFlowPosition() {
        return this.previousFlowPosition;
    }

    public final String getNavigationType() {
        return this.navigationType;
    }

    public final Integer getTimeOnPreviousPageMs() {
        return this.timeOnPreviousPageMs;
    }
}
