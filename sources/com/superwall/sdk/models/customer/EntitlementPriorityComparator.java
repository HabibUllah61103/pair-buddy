package com.superwall.sdk.models.customer;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.store.abstractions.product.receipt.LatestSubscriptionState;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CustomerInfoMerging.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0012\u0010\n\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0002¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/models/customer/EntitlementPriorityComparator;", "Ljava/util/Comparator;", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "Lkotlin/Comparator;", "<init>", "()V", "compare", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "getStateScore", "state", "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class EntitlementPriorityComparator implements Comparator<Entitlement> {
    public static final EntitlementPriorityComparator INSTANCE = new EntitlementPriorityComparator();

    /* JADX INFO: compiled from: CustomerInfoMerging.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LatestSubscriptionState.values().length];
            try {
                iArr[LatestSubscriptionState.SUBSCRIBED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LatestSubscriptionState.GRACE_PERIOD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LatestSubscriptionState.BILLING_RETRY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LatestSubscriptionState.EXPIRED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private EntitlementPriorityComparator() {
    }

    @Override // java.util.Comparator
    public int compare(Entitlement a2, Entitlement b) {
        int stateScore;
        int stateScore2;
        int iCompareTo;
        Intrinsics.checkNotNullParameter(a2, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        if (a2.isActive() != b.isActive()) {
            return a2.isActive() ? 1 : -1;
        }
        boolean z = a2.getStartsAt() != null;
        if (z != (b.getStartsAt() != null)) {
            return z ? 1 : -1;
        }
        if (Intrinsics.areEqual((Object) a2.isLifetime(), (Object) true) && !Intrinsics.areEqual((Object) b.isLifetime(), (Object) true)) {
            return 1;
        }
        if (Intrinsics.areEqual((Object) b.isLifetime(), (Object) true) && !Intrinsics.areEqual((Object) a2.isLifetime(), (Object) true)) {
            return -1;
        }
        if (a2.getExpiresAt() != null && b.getExpiresAt() != null && (iCompareTo = a2.getExpiresAt().compareTo(b.getExpiresAt())) != 0) {
            return iCompareTo;
        }
        if (Intrinsics.areEqual((Object) a2.getWillRenew(), (Object) true) && !Intrinsics.areEqual((Object) b.getWillRenew(), (Object) true)) {
            return 1;
        }
        if (Intrinsics.areEqual((Object) b.getWillRenew(), (Object) true) && !Intrinsics.areEqual((Object) a2.getWillRenew(), (Object) true)) {
            return -1;
        }
        LatestSubscriptionState state = a2.getState();
        LatestSubscriptionState state2 = b.getState();
        if (state == state2 || (stateScore = getStateScore(state)) == (stateScore2 = getStateScore(state2))) {
            return 0;
        }
        return Intrinsics.compare(stateScore, stateScore2);
    }

    private final int getStateScore(LatestSubscriptionState state) {
        int i = state == null ? -1 : WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        if (i == 1) {
            return 4;
        }
        if (i == 2) {
            return 3;
        }
        if (i != 3) {
            return i != 4 ? 0 : 1;
        }
        return 2;
    }
}
