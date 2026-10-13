package com.superwall.sdk.paywall.view.webview.messaging;

import android.net.Uri;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.internal.ImagesContract;
import com.superwall.sdk.models.paywall.LocalNotification;
import com.superwall.sdk.paywall.presentation.CustomCallbackBehavior;
import com.superwall.sdk.permissions.PermissionType;
import java.lang.annotation.Annotation;
import java.net.URI;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: compiled from: PaywallWebEvent.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u001c2\u00020\u0001:\r\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001cB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0002\u0010\bJ \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u0082\u0001\f\u001d\u001e\u001f !\"#$%&'(¨\u0006)"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "", "<init>", "()V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Closed", "InitiatePurchase", "InitiateRestore", "Custom", "OpenedURL", "OpenedUrlInChrome", "OpenedDeepLink", "CustomPlacement", "ScheduleNotification", "RequestReview", "RequestPermission", "RequestCallback", "Companion", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Closed;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Custom;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$CustomPlacement;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiatePurchase;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiateRestore;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedDeepLink;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedURL;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedUrlInChrome;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestCallback;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestPermission;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$ScheduleNotification;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public abstract class PaywallWebEvent {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.view.webview.messaging.PaywallWebEvent$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PaywallWebEvent._init_$_anonymous_();
        }
    });

    public /* synthetic */ PaywallWebEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self(PaywallWebEvent self, CompositeEncoder output, SerialDescriptor serialDesc) {
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) PaywallWebEvent.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<PaywallWebEvent> serializer() {
            return get$cachedSerializer();
        }
    }

    private PaywallWebEvent() {
    }

    public /* synthetic */ PaywallWebEvent(int i, SerializationConstructorMarker serializationConstructorMarker) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ KSerializer _init_$_anonymous_() {
        return new SealedClassSerializer("com.superwall.sdk.paywall.view.webview.messaging.PaywallWebEvent", Reflection.getOrCreateKotlinClass(PaywallWebEvent.class), new KClass[0], new KSerializer[0], new Annotation[0]);
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Closed;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Closed extends PaywallWebEvent {
        public static final Closed INSTANCE = new Closed();

        private Closed() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @SerialName("initiate_purchase")
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiatePurchase;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "productId", "", "shouldDismiss", "", "<init>", "(Ljava/lang/String;Z)V", "getProductId", "()Ljava/lang/String;", "getShouldDismiss", "()Z", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class InitiatePurchase extends PaywallWebEvent {
        private final String productId;
        private final boolean shouldDismiss;

        public static /* synthetic */ InitiatePurchase copy$default(InitiatePurchase initiatePurchase, String str, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = initiatePurchase.productId;
            }
            if ((i & 2) != 0) {
                z = initiatePurchase.shouldDismiss;
            }
            return initiatePurchase.copy(str, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getProductId() {
            return this.productId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getShouldDismiss() {
            return this.shouldDismiss;
        }

        public final InitiatePurchase copy(String productId, boolean shouldDismiss) {
            Intrinsics.checkNotNullParameter(productId, "productId");
            return new InitiatePurchase(productId, shouldDismiss);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof InitiatePurchase)) {
                return false;
            }
            InitiatePurchase initiatePurchase = (InitiatePurchase) other;
            return Intrinsics.areEqual(this.productId, initiatePurchase.productId) && this.shouldDismiss == initiatePurchase.shouldDismiss;
        }

        public int hashCode() {
            return (this.productId.hashCode() * 31) + Boolean.hashCode(this.shouldDismiss);
        }

        public String toString() {
            return "InitiatePurchase(productId=" + this.productId + ", shouldDismiss=" + this.shouldDismiss + ")";
        }

        public final String getProductId() {
            return this.productId;
        }

        public final boolean getShouldDismiss() {
            return this.shouldDismiss;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InitiatePurchase(String productId, boolean z) {
            super(null);
            Intrinsics.checkNotNullParameter(productId, "productId");
            this.productId = productId;
            this.shouldDismiss = z;
        }
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$InitiateRestore;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class InitiateRestore extends PaywallWebEvent {
        public static final InitiateRestore INSTANCE = new InitiateRestore();

        private InitiateRestore() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @SerialName("custom")
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$Custom;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", TypedValues.Custom.S_STRING, "", "<init>", "(Ljava/lang/String;)V", "getString", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Custom extends PaywallWebEvent {
        private final String string;

        public static /* synthetic */ Custom copy$default(Custom custom, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = custom.string;
            }
            return custom.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getString() {
            return this.string;
        }

        public final Custom copy(String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            return new Custom(string);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Custom) && Intrinsics.areEqual(this.string, ((Custom) other).string);
        }

        public int hashCode() {
            return this.string.hashCode();
        }

        public String toString() {
            return "Custom(string=" + this.string + ")";
        }

        public final String getString() {
            return this.string;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Custom(String string) {
            super(null);
            Intrinsics.checkNotNullParameter(string, "string");
            this.string = string;
        }
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @SerialName("opened_url")
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedURL;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", ImagesContract.URL, "Ljava/net/URI;", "<init>", "(Ljava/net/URI;)V", "getUrl", "()Ljava/net/URI;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class OpenedURL extends PaywallWebEvent {
        private final URI url;

        public static /* synthetic */ OpenedURL copy$default(OpenedURL openedURL, URI uri, int i, Object obj) {
            if ((i & 1) != 0) {
                uri = openedURL.url;
            }
            return openedURL.copy(uri);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final URI getUrl() {
            return this.url;
        }

        public final OpenedURL copy(URI url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return new OpenedURL(url);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OpenedURL) && Intrinsics.areEqual(this.url, ((OpenedURL) other).url);
        }

        public int hashCode() {
            return this.url.hashCode();
        }

        public String toString() {
            return "OpenedURL(url=" + this.url + ")";
        }

        public final URI getUrl() {
            return this.url;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenedURL(URI url) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
        }
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @SerialName("opened_url_in_safari")
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedUrlInChrome;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", ImagesContract.URL, "Ljava/net/URI;", "<init>", "(Ljava/net/URI;)V", "getUrl", "()Ljava/net/URI;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class OpenedUrlInChrome extends PaywallWebEvent {
        private final URI url;

        public static /* synthetic */ OpenedUrlInChrome copy$default(OpenedUrlInChrome openedUrlInChrome, URI uri, int i, Object obj) {
            if ((i & 1) != 0) {
                uri = openedUrlInChrome.url;
            }
            return openedUrlInChrome.copy(uri);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final URI getUrl() {
            return this.url;
        }

        public final OpenedUrlInChrome copy(URI url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return new OpenedUrlInChrome(url);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OpenedUrlInChrome) && Intrinsics.areEqual(this.url, ((OpenedUrlInChrome) other).url);
        }

        public int hashCode() {
            return this.url.hashCode();
        }

        public String toString() {
            return "OpenedUrlInChrome(url=" + this.url + ")";
        }

        public final URI getUrl() {
            return this.url;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenedUrlInChrome(URI url) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
        }
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @SerialName("opened_deep_link")
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$OpenedDeepLink;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", ImagesContract.URL, "Landroid/net/Uri;", "<init>", "(Landroid/net/Uri;)V", "getUrl", "()Landroid/net/Uri;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class OpenedDeepLink extends PaywallWebEvent {
        private final Uri url;

        public static /* synthetic */ OpenedDeepLink copy$default(OpenedDeepLink openedDeepLink, Uri uri, int i, Object obj) {
            if ((i & 1) != 0) {
                uri = openedDeepLink.url;
            }
            return openedDeepLink.copy(uri);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Uri getUrl() {
            return this.url;
        }

        public final OpenedDeepLink copy(Uri url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return new OpenedDeepLink(url);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OpenedDeepLink) && Intrinsics.areEqual(this.url, ((OpenedDeepLink) other).url);
        }

        public int hashCode() {
            return this.url.hashCode();
        }

        public String toString() {
            return "OpenedDeepLink(url=" + this.url + ")";
        }

        public final Uri getUrl() {
            return this.url;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenedDeepLink(Uri url) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
        }
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @SerialName("custom_placement")
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$CustomPlacement;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "name", "", "params", "Lkotlinx/serialization/json/JsonObject;", "<init>", "(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V", "getName", "()Ljava/lang/String;", "getParams", "()Lkotlinx/serialization/json/JsonObject;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class CustomPlacement extends PaywallWebEvent {
        private final String name;
        private final JsonObject params;

        public static /* synthetic */ CustomPlacement copy$default(CustomPlacement customPlacement, String str, JsonObject jsonObject, int i, Object obj) {
            if ((i & 1) != 0) {
                str = customPlacement.name;
            }
            if ((i & 2) != 0) {
                jsonObject = customPlacement.params;
            }
            return customPlacement.copy(str, jsonObject);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final JsonObject getParams() {
            return this.params;
        }

        public final CustomPlacement copy(String name, JsonObject params) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(params, "params");
            return new CustomPlacement(name, params);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CustomPlacement)) {
                return false;
            }
            CustomPlacement customPlacement = (CustomPlacement) other;
            return Intrinsics.areEqual(this.name, customPlacement.name) && Intrinsics.areEqual(this.params, customPlacement.params);
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + this.params.hashCode();
        }

        public String toString() {
            return "CustomPlacement(name=" + this.name + ", params=" + this.params + ")";
        }

        public final String getName() {
            return this.name;
        }

        public final JsonObject getParams() {
            return this.params;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CustomPlacement(String name, JsonObject params) {
            super(null);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(params, "params");
            this.name = name;
            this.params = params;
        }
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @SerialName("schedule_notification")
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$ScheduleNotification;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "localNotification", "Lcom/superwall/sdk/models/paywall/LocalNotification;", "<init>", "(Lcom/superwall/sdk/models/paywall/LocalNotification;)V", "getLocalNotification", "()Lcom/superwall/sdk/models/paywall/LocalNotification;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ScheduleNotification extends PaywallWebEvent {
        private final LocalNotification localNotification;

        public static /* synthetic */ ScheduleNotification copy$default(ScheduleNotification scheduleNotification, LocalNotification localNotification, int i, Object obj) {
            if ((i & 1) != 0) {
                localNotification = scheduleNotification.localNotification;
            }
            return scheduleNotification.copy(localNotification);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final LocalNotification getLocalNotification() {
            return this.localNotification;
        }

        public final ScheduleNotification copy(LocalNotification localNotification) {
            Intrinsics.checkNotNullParameter(localNotification, "localNotification");
            return new ScheduleNotification(localNotification);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ScheduleNotification) && Intrinsics.areEqual(this.localNotification, ((ScheduleNotification) other).localNotification);
        }

        public int hashCode() {
            return this.localNotification.hashCode();
        }

        public String toString() {
            return "ScheduleNotification(localNotification=" + this.localNotification + ")";
        }

        public final LocalNotification getLocalNotification() {
            return this.localNotification;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ScheduleNotification(LocalNotification localNotification) {
            super(null);
            Intrinsics.checkNotNullParameter(localNotification, "localNotification");
            this.localNotification = localNotification;
        }
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "type", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;", "<init>", "(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;)V", "getType", "()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Type", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @SerialName("request_review")
    public static final /* data */ class RequestReview extends PaywallWebEvent {
        private final Type type;

        public static /* synthetic */ RequestReview copy$default(RequestReview requestReview, Type type, int i, Object obj) {
            if ((i & 1) != 0) {
                type = requestReview.type;
            }
            return requestReview.copy(type);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Type getType() {
            return this.type;
        }

        public final RequestReview copy(Type type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return new RequestReview(type);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof RequestReview) && this.type == ((RequestReview) other).type;
        }

        public int hashCode() {
            return this.type.hashCode();
        }

        public String toString() {
            return "RequestReview(type=" + this.type + ")";
        }

        public final Type getType() {
            return this.type;
        }

        /* JADX INFO: compiled from: PaywallWebEvent.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;", "", "rawValue", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getRawValue", "()Ljava/lang/String;", "INAPP", "EXTERNAL", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public enum Type {
            INAPP("in-app"),
            EXTERNAL("external");

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
            private final String rawValue;

            public static EnumEntries<Type> getEntries() {
                return $ENTRIES;
            }

            Type(String str) {
                this.rawValue = str;
            }

            public final String getRawValue() {
                return this.rawValue;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestReview(Type type) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
        }
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @SerialName("request_permission")
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestPermission;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "permissionType", "Lcom/superwall/sdk/permissions/PermissionType;", "requestId", "", "<init>", "(Lcom/superwall/sdk/permissions/PermissionType;Ljava/lang/String;)V", "getPermissionType", "()Lcom/superwall/sdk/permissions/PermissionType;", "getRequestId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class RequestPermission extends PaywallWebEvent {
        private final PermissionType permissionType;
        private final String requestId;

        public static /* synthetic */ RequestPermission copy$default(RequestPermission requestPermission, PermissionType permissionType, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                permissionType = requestPermission.permissionType;
            }
            if ((i & 2) != 0) {
                str = requestPermission.requestId;
            }
            return requestPermission.copy(permissionType, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PermissionType getPermissionType() {
            return this.permissionType;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getRequestId() {
            return this.requestId;
        }

        public final RequestPermission copy(PermissionType permissionType, String requestId) {
            Intrinsics.checkNotNullParameter(permissionType, "permissionType");
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            return new RequestPermission(permissionType, requestId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RequestPermission)) {
                return false;
            }
            RequestPermission requestPermission = (RequestPermission) other;
            return this.permissionType == requestPermission.permissionType && Intrinsics.areEqual(this.requestId, requestPermission.requestId);
        }

        public int hashCode() {
            return (this.permissionType.hashCode() * 31) + this.requestId.hashCode();
        }

        public String toString() {
            return "RequestPermission(permissionType=" + this.permissionType + ", requestId=" + this.requestId + ")";
        }

        public final PermissionType getPermissionType() {
            return this.permissionType;
        }

        public final String getRequestId() {
            return this.requestId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestPermission(PermissionType permissionType, String requestId) {
            super(null);
            Intrinsics.checkNotNullParameter(permissionType, "permissionType");
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            this.permissionType = permissionType;
            this.requestId = requestId;
        }
    }

    /* JADX INFO: compiled from: PaywallWebEvent.kt */
    @SerialName("request_callback")
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u0017\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J?\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\tHÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u001f\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestCallback;", "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;", "name", "", "behavior", "Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior;", "requestId", "variables", "", "", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior;Ljava/lang/String;Ljava/util/Map;)V", "getName", "()Ljava/lang/String;", "getBehavior", "()Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior;", "getRequestId", "getVariables", "()Ljava/util/Map;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class RequestCallback extends PaywallWebEvent {
        private final CustomCallbackBehavior behavior;
        private final String name;
        private final String requestId;
        private final Map<String, Object> variables;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ RequestCallback copy$default(RequestCallback requestCallback, String str, CustomCallbackBehavior customCallbackBehavior, String str2, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                str = requestCallback.name;
            }
            if ((i & 2) != 0) {
                customCallbackBehavior = requestCallback.behavior;
            }
            if ((i & 4) != 0) {
                str2 = requestCallback.requestId;
            }
            if ((i & 8) != 0) {
                map = requestCallback.variables;
            }
            return requestCallback.copy(str, customCallbackBehavior, str2, map);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final CustomCallbackBehavior getBehavior() {
            return this.behavior;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getRequestId() {
            return this.requestId;
        }

        public final Map<String, Object> component4() {
            return this.variables;
        }

        public final RequestCallback copy(String name, CustomCallbackBehavior behavior, String requestId, Map<String, ? extends Object> variables) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(behavior, "behavior");
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            return new RequestCallback(name, behavior, requestId, variables);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RequestCallback)) {
                return false;
            }
            RequestCallback requestCallback = (RequestCallback) other;
            return Intrinsics.areEqual(this.name, requestCallback.name) && this.behavior == requestCallback.behavior && Intrinsics.areEqual(this.requestId, requestCallback.requestId) && Intrinsics.areEqual(this.variables, requestCallback.variables);
        }

        public int hashCode() {
            int iHashCode = ((((this.name.hashCode() * 31) + this.behavior.hashCode()) * 31) + this.requestId.hashCode()) * 31;
            Map<String, Object> map = this.variables;
            return iHashCode + (map == null ? 0 : map.hashCode());
        }

        public String toString() {
            return "RequestCallback(name=" + this.name + ", behavior=" + this.behavior + ", requestId=" + this.requestId + ", variables=" + this.variables + ")";
        }

        public final String getName() {
            return this.name;
        }

        public final CustomCallbackBehavior getBehavior() {
            return this.behavior;
        }

        public final String getRequestId() {
            return this.requestId;
        }

        public final Map<String, Object> getVariables() {
            return this.variables;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestCallback(String name, CustomCallbackBehavior behavior, String requestId, Map<String, ? extends Object> map) {
            super(null);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(behavior, "behavior");
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            this.name = name;
            this.behavior = behavior;
            this.requestId = requestId;
            this.variables = map;
        }
    }
}
