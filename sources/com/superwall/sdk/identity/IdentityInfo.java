package com.superwall.sdk.identity;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdentityInfo.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001f\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/identity/IdentityInfo;", "", Keys.ALIAS_ID, "", Keys.APP_USER_ID, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getAliasId", "()Ljava/lang/String;", "getAppUserId", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class IdentityInfo {
    private final String aliasId;
    private final String appUserId;

    public static /* synthetic */ IdentityInfo copy$default(IdentityInfo identityInfo, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = identityInfo.aliasId;
        }
        if ((i & 2) != 0) {
            str2 = identityInfo.appUserId;
        }
        return identityInfo.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAliasId() {
        return this.aliasId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAppUserId() {
        return this.appUserId;
    }

    public final IdentityInfo copy(String aliasId, String appUserId) {
        Intrinsics.checkNotNullParameter(aliasId, "aliasId");
        return new IdentityInfo(aliasId, appUserId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IdentityInfo)) {
            return false;
        }
        IdentityInfo identityInfo = (IdentityInfo) other;
        return Intrinsics.areEqual(this.aliasId, identityInfo.aliasId) && Intrinsics.areEqual(this.appUserId, identityInfo.appUserId);
    }

    public int hashCode() {
        int iHashCode = this.aliasId.hashCode() * 31;
        String str = this.appUserId;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "IdentityInfo(aliasId=" + this.aliasId + ", appUserId=" + this.appUserId + ")";
    }

    public IdentityInfo(String aliasId, String str) {
        Intrinsics.checkNotNullParameter(aliasId, "aliasId");
        this.aliasId = aliasId;
        this.appUserId = str;
    }

    public final String getAliasId() {
        return this.aliasId;
    }

    public final String getAppUserId() {
        return this.appUserId;
    }
}
