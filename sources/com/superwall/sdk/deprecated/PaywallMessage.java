package com.superwall.sdk.deprecated;

import android.net.Uri;
import com.google.android.gms.common.internal.ImagesContract;
import java.net.URI;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaywallMessages.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\t\u0004\u0005\u0006\u0007\b\t\n\u000b\fB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\t\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/deprecated/PaywallMessage;", "", "<init>", "()V", "OnReady", "TemplateParamsAndUserAttributes", "Close", "Restore", "OpenUrl", "OpenUrlInBrowser", "OpenDeepLink", "Purchase", "Custom", "Lcom/superwall/sdk/deprecated/PaywallMessage$Close;", "Lcom/superwall/sdk/deprecated/PaywallMessage$Custom;", "Lcom/superwall/sdk/deprecated/PaywallMessage$OnReady;", "Lcom/superwall/sdk/deprecated/PaywallMessage$OpenDeepLink;", "Lcom/superwall/sdk/deprecated/PaywallMessage$OpenUrl;", "Lcom/superwall/sdk/deprecated/PaywallMessage$OpenUrlInBrowser;", "Lcom/superwall/sdk/deprecated/PaywallMessage$Purchase;", "Lcom/superwall/sdk/deprecated/PaywallMessage$Restore;", "Lcom/superwall/sdk/deprecated/PaywallMessage$TemplateParamsAndUserAttributes;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class PaywallMessage {
    public /* synthetic */ PaywallMessage(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private PaywallMessage() {
    }

    /* JADX INFO: compiled from: PaywallMessages.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/deprecated/PaywallMessage$OnReady;", "Lcom/superwall/sdk/deprecated/PaywallMessage;", "paywallJsVersion", "", "<init>", "(Ljava/lang/String;)V", "getPaywallJsVersion", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class OnReady extends PaywallMessage {
        private final String paywallJsVersion;

        public static /* synthetic */ OnReady copy$default(OnReady onReady, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = onReady.paywallJsVersion;
            }
            return onReady.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPaywallJsVersion() {
            return this.paywallJsVersion;
        }

        public final OnReady copy(String paywallJsVersion) {
            Intrinsics.checkNotNullParameter(paywallJsVersion, "paywallJsVersion");
            return new OnReady(paywallJsVersion);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OnReady) && Intrinsics.areEqual(this.paywallJsVersion, ((OnReady) other).paywallJsVersion);
        }

        public int hashCode() {
            return this.paywallJsVersion.hashCode();
        }

        public String toString() {
            return "OnReady(paywallJsVersion=" + this.paywallJsVersion + ")";
        }

        public final String getPaywallJsVersion() {
            return this.paywallJsVersion;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnReady(String paywallJsVersion) {
            super(null);
            Intrinsics.checkNotNullParameter(paywallJsVersion, "paywallJsVersion");
            this.paywallJsVersion = paywallJsVersion;
        }
    }

    /* JADX INFO: compiled from: PaywallMessages.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/deprecated/PaywallMessage$TemplateParamsAndUserAttributes;", "Lcom/superwall/sdk/deprecated/PaywallMessage;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class TemplateParamsAndUserAttributes extends PaywallMessage {
        public static final TemplateParamsAndUserAttributes INSTANCE = new TemplateParamsAndUserAttributes();

        private TemplateParamsAndUserAttributes() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallMessages.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/deprecated/PaywallMessage$Close;", "Lcom/superwall/sdk/deprecated/PaywallMessage;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Close extends PaywallMessage {
        public static final Close INSTANCE = new Close();

        private Close() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallMessages.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/deprecated/PaywallMessage$Restore;", "Lcom/superwall/sdk/deprecated/PaywallMessage;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Restore extends PaywallMessage {
        public static final Restore INSTANCE = new Restore();

        private Restore() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallMessages.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/deprecated/PaywallMessage$OpenUrl;", "Lcom/superwall/sdk/deprecated/PaywallMessage;", ImagesContract.URL, "Ljava/net/URI;", "<init>", "(Ljava/net/URI;)V", "getUrl", "()Ljava/net/URI;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class OpenUrl extends PaywallMessage {
        private final URI url;

        public static /* synthetic */ OpenUrl copy$default(OpenUrl openUrl, URI uri, int i, Object obj) {
            if ((i & 1) != 0) {
                uri = openUrl.url;
            }
            return openUrl.copy(uri);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final URI getUrl() {
            return this.url;
        }

        public final OpenUrl copy(URI url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return new OpenUrl(url);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OpenUrl) && Intrinsics.areEqual(this.url, ((OpenUrl) other).url);
        }

        public int hashCode() {
            return this.url.hashCode();
        }

        public String toString() {
            return "OpenUrl(url=" + this.url + ")";
        }

        public final URI getUrl() {
            return this.url;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenUrl(URI url) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
        }
    }

    /* JADX INFO: compiled from: PaywallMessages.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/deprecated/PaywallMessage$OpenUrlInBrowser;", "Lcom/superwall/sdk/deprecated/PaywallMessage;", ImagesContract.URL, "Ljava/net/URI;", "<init>", "(Ljava/net/URI;)V", "getUrl", "()Ljava/net/URI;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class OpenUrlInBrowser extends PaywallMessage {
        private final URI url;

        public static /* synthetic */ OpenUrlInBrowser copy$default(OpenUrlInBrowser openUrlInBrowser, URI uri, int i, Object obj) {
            if ((i & 1) != 0) {
                uri = openUrlInBrowser.url;
            }
            return openUrlInBrowser.copy(uri);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final URI getUrl() {
            return this.url;
        }

        public final OpenUrlInBrowser copy(URI url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return new OpenUrlInBrowser(url);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OpenUrlInBrowser) && Intrinsics.areEqual(this.url, ((OpenUrlInBrowser) other).url);
        }

        public int hashCode() {
            return this.url.hashCode();
        }

        public String toString() {
            return "OpenUrlInBrowser(url=" + this.url + ")";
        }

        public final URI getUrl() {
            return this.url;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenUrlInBrowser(URI url) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
        }
    }

    /* JADX INFO: compiled from: PaywallMessages.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/deprecated/PaywallMessage$OpenDeepLink;", "Lcom/superwall/sdk/deprecated/PaywallMessage;", ImagesContract.URL, "Landroid/net/Uri;", "<init>", "(Landroid/net/Uri;)V", "getUrl", "()Landroid/net/Uri;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class OpenDeepLink extends PaywallMessage {
        private final Uri url;

        public static /* synthetic */ OpenDeepLink copy$default(OpenDeepLink openDeepLink, Uri uri, int i, Object obj) {
            if ((i & 1) != 0) {
                uri = openDeepLink.url;
            }
            return openDeepLink.copy(uri);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Uri getUrl() {
            return this.url;
        }

        public final OpenDeepLink copy(Uri url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return new OpenDeepLink(url);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OpenDeepLink) && Intrinsics.areEqual(this.url, ((OpenDeepLink) other).url);
        }

        public int hashCode() {
            return this.url.hashCode();
        }

        public String toString() {
            return "OpenDeepLink(url=" + this.url + ")";
        }

        public final Uri getUrl() {
            return this.url;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenDeepLink(Uri url) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
        }
    }

    /* JADX INFO: compiled from: PaywallMessages.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/deprecated/PaywallMessage$Purchase;", "Lcom/superwall/sdk/deprecated/PaywallMessage;", "product", "", "<init>", "(Ljava/lang/String;)V", "getProduct", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Purchase extends PaywallMessage {
        private final String product;

        public static /* synthetic */ Purchase copy$default(Purchase purchase, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = purchase.product;
            }
            return purchase.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getProduct() {
            return this.product;
        }

        public final Purchase copy(String product) {
            Intrinsics.checkNotNullParameter(product, "product");
            return new Purchase(product);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Purchase) && Intrinsics.areEqual(this.product, ((Purchase) other).product);
        }

        public int hashCode() {
            return this.product.hashCode();
        }

        public String toString() {
            return "Purchase(product=" + this.product + ")";
        }

        public final String getProduct() {
            return this.product;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Purchase(String product) {
            super(null);
            Intrinsics.checkNotNullParameter(product, "product");
            this.product = product;
        }
    }

    /* JADX INFO: compiled from: PaywallMessages.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/deprecated/PaywallMessage$Custom;", "Lcom/superwall/sdk/deprecated/PaywallMessage;", "data", "", "<init>", "(Ljava/lang/String;)V", "getData", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Custom extends PaywallMessage {
        private final String data;

        public static /* synthetic */ Custom copy$default(Custom custom, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = custom.data;
            }
            return custom.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getData() {
            return this.data;
        }

        public final Custom copy(String data) {
            Intrinsics.checkNotNullParameter(data, "data");
            return new Custom(data);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Custom) && Intrinsics.areEqual(this.data, ((Custom) other).data);
        }

        public int hashCode() {
            return this.data.hashCode();
        }

        public String toString() {
            return "Custom(data=" + this.data + ")";
        }

        public final String getData() {
            return this.data;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Custom(String data) {
            super(null);
            Intrinsics.checkNotNullParameter(data, "data");
            this.data = data;
        }
    }
}
