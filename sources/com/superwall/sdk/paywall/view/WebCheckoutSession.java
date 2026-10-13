package com.superwall.sdk.paywall.view;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebCheckoutSession.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003JE\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\r¨\u0006 "}, d2 = {"Lcom/superwall/sdk/paywall/view/WebCheckoutSession;", "", "checkoutId", "", "productIdentifier", "paywallIdentifier", "experimentVariantId", "", "presentedByEventName", "store", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getCheckoutId", "()Ljava/lang/String;", "getProductIdentifier", "getPaywallIdentifier", "getExperimentVariantId", "()I", "getPresentedByEventName", "getStore", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class WebCheckoutSession {
    private final String checkoutId;
    private final int experimentVariantId;
    private final String paywallIdentifier;
    private final String presentedByEventName;
    private final String productIdentifier;
    private final String store;

    public static /* synthetic */ WebCheckoutSession copy$default(WebCheckoutSession webCheckoutSession, String str, String str2, String str3, int i, String str4, String str5, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = webCheckoutSession.checkoutId;
        }
        if ((i2 & 2) != 0) {
            str2 = webCheckoutSession.productIdentifier;
        }
        if ((i2 & 4) != 0) {
            str3 = webCheckoutSession.paywallIdentifier;
        }
        if ((i2 & 8) != 0) {
            i = webCheckoutSession.experimentVariantId;
        }
        if ((i2 & 16) != 0) {
            str4 = webCheckoutSession.presentedByEventName;
        }
        if ((i2 & 32) != 0) {
            str5 = webCheckoutSession.store;
        }
        String str6 = str4;
        String str7 = str5;
        return webCheckoutSession.copy(str, str2, str3, i, str6, str7);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCheckoutId() {
        return this.checkoutId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPaywallIdentifier() {
        return this.paywallIdentifier;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getExperimentVariantId() {
        return this.experimentVariantId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPresentedByEventName() {
        return this.presentedByEventName;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getStore() {
        return this.store;
    }

    public final WebCheckoutSession copy(String checkoutId, String productIdentifier, String paywallIdentifier, int experimentVariantId, String presentedByEventName, String store) {
        Intrinsics.checkNotNullParameter(checkoutId, "checkoutId");
        Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
        Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
        Intrinsics.checkNotNullParameter(presentedByEventName, "presentedByEventName");
        Intrinsics.checkNotNullParameter(store, "store");
        return new WebCheckoutSession(checkoutId, productIdentifier, paywallIdentifier, experimentVariantId, presentedByEventName, store);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WebCheckoutSession)) {
            return false;
        }
        WebCheckoutSession webCheckoutSession = (WebCheckoutSession) other;
        return Intrinsics.areEqual(this.checkoutId, webCheckoutSession.checkoutId) && Intrinsics.areEqual(this.productIdentifier, webCheckoutSession.productIdentifier) && Intrinsics.areEqual(this.paywallIdentifier, webCheckoutSession.paywallIdentifier) && this.experimentVariantId == webCheckoutSession.experimentVariantId && Intrinsics.areEqual(this.presentedByEventName, webCheckoutSession.presentedByEventName) && Intrinsics.areEqual(this.store, webCheckoutSession.store);
    }

    public int hashCode() {
        return (((((((((this.checkoutId.hashCode() * 31) + this.productIdentifier.hashCode()) * 31) + this.paywallIdentifier.hashCode()) * 31) + Integer.hashCode(this.experimentVariantId)) * 31) + this.presentedByEventName.hashCode()) * 31) + this.store.hashCode();
    }

    public String toString() {
        return "WebCheckoutSession(checkoutId=" + this.checkoutId + ", productIdentifier=" + this.productIdentifier + ", paywallIdentifier=" + this.paywallIdentifier + ", experimentVariantId=" + this.experimentVariantId + ", presentedByEventName=" + this.presentedByEventName + ", store=" + this.store + ")";
    }

    public WebCheckoutSession(String checkoutId, String productIdentifier, String paywallIdentifier, int i, String presentedByEventName, String store) {
        Intrinsics.checkNotNullParameter(checkoutId, "checkoutId");
        Intrinsics.checkNotNullParameter(productIdentifier, "productIdentifier");
        Intrinsics.checkNotNullParameter(paywallIdentifier, "paywallIdentifier");
        Intrinsics.checkNotNullParameter(presentedByEventName, "presentedByEventName");
        Intrinsics.checkNotNullParameter(store, "store");
        this.checkoutId = checkoutId;
        this.productIdentifier = productIdentifier;
        this.paywallIdentifier = paywallIdentifier;
        this.experimentVariantId = i;
        this.presentedByEventName = presentedByEventName;
        this.store = store;
    }

    public final String getCheckoutId() {
        return this.checkoutId;
    }

    public final String getProductIdentifier() {
        return this.productIdentifier;
    }

    public final String getPaywallIdentifier() {
        return this.paywallIdentifier;
    }

    public final int getExperimentVariantId() {
        return this.experimentVariantId;
    }

    public final String getPresentedByEventName() {
        return this.presentedByEventName;
    }

    public final String getStore() {
        return this.store;
    }
}
