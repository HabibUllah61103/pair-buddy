package com.superwall.sdk.store.abstractions.product.receipt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReceiptManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/InAppPurchase;", "", "productIdentifier", "", "fullIdentifier", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getProductIdentifier", "()Ljava/lang/String;", "setProductIdentifier", "(Ljava/lang/String;)V", "getFullIdentifier", "setFullIdentifier", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class InAppPurchase {
    private String fullIdentifier;
    private String productIdentifier;

    public static /* synthetic */ InAppPurchase copy$default(InAppPurchase inAppPurchase, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = inAppPurchase.productIdentifier;
        }
        if ((i & 2) != 0) {
            str2 = inAppPurchase.fullIdentifier;
        }
        return inAppPurchase.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFullIdentifier() {
        return this.fullIdentifier;
    }

    public final InAppPurchase copy(String productIdentifier, String fullIdentifier) {
        Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
        Intrinsics.checkNotNullParameter(fullIdentifier, "fullIdentifier");
        return new InAppPurchase(productIdentifier, fullIdentifier);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InAppPurchase)) {
            return false;
        }
        InAppPurchase inAppPurchase = (InAppPurchase) other;
        return Intrinsics.areEqual(this.productIdentifier, inAppPurchase.productIdentifier) && Intrinsics.areEqual(this.fullIdentifier, inAppPurchase.fullIdentifier);
    }

    public int hashCode() {
        return (this.productIdentifier.hashCode() * 31) + this.fullIdentifier.hashCode();
    }

    public String toString() {
        return "InAppPurchase(productIdentifier=" + this.productIdentifier + ", fullIdentifier=" + this.fullIdentifier + ")";
    }

    public InAppPurchase(String productIdentifier, String fullIdentifier) {
        Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
        Intrinsics.checkNotNullParameter(fullIdentifier, "fullIdentifier");
        this.productIdentifier = productIdentifier;
        this.fullIdentifier = fullIdentifier;
    }

    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    public final void setProductIdentifier(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.productIdentifier = str;
    }

    public final String getFullIdentifier() {
        return this.fullIdentifier;
    }

    public final void setFullIdentifier(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.fullIdentifier = str;
    }
}
