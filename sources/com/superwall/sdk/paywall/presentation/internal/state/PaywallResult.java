package com.superwall.sdk.paywall.presentation.internal.state;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaywallState.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "", "<init>", "()V", "Purchased", "Declined", "Restored", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Purchased;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Restored;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class PaywallResult {
    public /* synthetic */ PaywallResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private PaywallResult() {
    }

    /* JADX INFO: compiled from: PaywallState.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Purchased;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "productId", "", "<init>", "(Ljava/lang/String;)V", "getProductId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Purchased extends PaywallResult {
        private final String productId;

        public static /* synthetic */ Purchased copy$default(Purchased purchased, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = purchased.productId;
            }
            return purchased.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getProductId() {
            return this.productId;
        }

        public final Purchased copy(String productId) {
            Intrinsics.checkNotNullParameter(productId, "productId");
            return new Purchased(productId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Purchased) && Intrinsics.areEqual(this.productId, ((Purchased) other).productId);
        }

        public int hashCode() {
            return this.productId.hashCode();
        }

        public String toString() {
            return "Purchased(productId=" + this.productId + ")";
        }

        public final String getProductId() {
            return this.productId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Purchased(String productId) {
            super(null);
            Intrinsics.checkNotNullParameter(productId, "productId");
            this.productId = productId;
        }
    }

    /* JADX INFO: compiled from: PaywallState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Declined extends PaywallResult {
        public Declined() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Restored;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Restored extends PaywallResult {
        public Restored() {
            super(null);
        }
    }
}
