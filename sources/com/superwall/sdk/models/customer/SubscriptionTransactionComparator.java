package com.superwall.sdk.models.customer;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CustomerInfoMerging.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/models/customer/SubscriptionTransactionComparator;", "Ljava/util/Comparator;", "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;", "Lkotlin/Comparator;", "<init>", "()V", "compare", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class SubscriptionTransactionComparator implements Comparator<SubscriptionTransaction> {
    public static final SubscriptionTransactionComparator INSTANCE = new SubscriptionTransactionComparator();

    private SubscriptionTransactionComparator() {
    }

    @Override // java.util.Comparator
    public int compare(SubscriptionTransaction a2, SubscriptionTransaction b) {
        Intrinsics.checkNotNullParameter(a2, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        if (a2.isActive() != b.isActive()) {
            return a2.isActive() ? 1 : -1;
        }
        if (a2.isRevoked() != b.isRevoked()) {
            return a2.isRevoked() ? -1 : 1;
        }
        if (a2.getWillRenew() != b.getWillRenew()) {
            return a2.getWillRenew() ? 1 : -1;
        }
        if (a2.isInGracePeriod() != b.isInGracePeriod()) {
            return a2.isInGracePeriod() ? 1 : -1;
        }
        return a2.getPurchaseDate().compareTo(b.getPurchaseDate());
    }
}
