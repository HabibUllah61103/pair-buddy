package com.superwall.sdk.network;

import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.common.internal.ImagesContract;
import java.net.URI;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: compiled from: NetworkRequestData.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001b\u0018\u0000*\r\b\u0000\u0010\u0001*\u00070\u0002¢\u0006\u0002\b\u00032\u00020\u0002:\u0002./B\u009b\u0001\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012R\u0010\u000e\u001aN\b\u0001\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\n\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00130\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000f\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\u0014\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010-\u001a\u00020\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010$\"\u0004\b%\u0010&R_\u0010\u000e\u001aN\b\u0001\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\n\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00130\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000f¢\u0006\n\n\u0002\u0010)\u001a\u0004\b'\u0010(R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+¨\u00060"}, d2 = {"Lcom/superwall/sdk/network/NetworkRequestData;", "Response", "", "Lkotlinx/serialization/Serializable;", "components", "Lcom/superwall/sdk/network/NetworkRequestData$Components;", ImagesContract.URL, "Ljava/net/URI;", "method", "Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;", "requestId", "", "isForDebugging", "", "factory", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "Lkotlin/coroutines/Continuation;", "", "timeout", "Lkotlin/time/Duration;", "<init>", "(Lcom/superwall/sdk/network/NetworkRequestData$Components;Ljava/net/URI;Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/time/Duration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getComponents", "()Lcom/superwall/sdk/network/NetworkRequestData$Components;", "getUrl", "()Ljava/net/URI;", "getMethod", "()Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;", "setMethod", "(Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;)V", "getRequestId", "()Ljava/lang/String;", "setRequestId", "(Ljava/lang/String;)V", "()Z", "setForDebugging", "(Z)V", "getFactory", "()Lkotlin/jvm/functions/Function3;", "Lkotlin/jvm/functions/Function3;", "getTimeout-FghU774", "()Lkotlin/time/Duration;", "copyWithUrl", "newUrl", "HttpMethod", "Components", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NetworkRequestData<Response> {
    private final Components components;
    private final Function3<Boolean, String, Continuation<? super Map<String, String>>, Object> factory;
    private boolean isForDebugging;
    private HttpMethod method;
    private String requestId;
    private final Duration timeout;
    private final URI url;

    public /* synthetic */ NetworkRequestData(Components components, URI uri, HttpMethod httpMethod, String str, boolean z, Function3 function3, Duration duration, DefaultConstructorMarker defaultConstructorMarker) {
        this(components, uri, httpMethod, str, z, function3, duration);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private NetworkRequestData(Components components, URI uri, HttpMethod method, String requestId, boolean z, Function3<? super Boolean, ? super String, ? super Continuation<? super Map<String, String>>, ? extends Object> factory, Duration duration) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.components = components;
        this.url = uri;
        this.method = method;
        this.requestId = requestId;
        this.isForDebugging = z;
        this.factory = factory;
        this.timeout = duration;
    }

    public final Components getComponents() {
        return this.components;
    }

    public final URI getUrl() {
        return this.url;
    }

    public /* synthetic */ NetworkRequestData(Components components, URI uri, HttpMethod httpMethod, String str, boolean z, Function3 function3, Duration duration, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : components, (i & 2) != 0 ? null : uri, (i & 4) != 0 ? HttpMethod.GET : httpMethod, (i & 8) != 0 ? UUID.randomUUID().toString() : str, (i & 16) != 0 ? false : z, function3, duration, null);
    }

    public final HttpMethod getMethod() {
        return this.method;
    }

    public final void setMethod(HttpMethod httpMethod) {
        Intrinsics.checkNotNullParameter(httpMethod, "<set-?>");
        this.method = httpMethod;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final void setRequestId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.requestId = str;
    }

    /* JADX INFO: renamed from: isForDebugging, reason: from getter */
    public final boolean getIsForDebugging() {
        return this.isForDebugging;
    }

    public final void setForDebugging(boolean z) {
        this.isForDebugging = z;
    }

    public final Function3<Boolean, String, Continuation<? super Map<String, String>>, Object> getFactory() {
        return this.factory;
    }

    /* JADX INFO: renamed from: getTimeout-FghU774, reason: not valid java name and from getter */
    public final Duration getTimeout() {
        return this.timeout;
    }

    /* JADX INFO: compiled from: NetworkRequestData.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/network/NetworkRequestData$HttpMethod;", "", "method", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getMethod", "()Ljava/lang/String;", ShareTarget.METHOD_GET, "POST", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public enum HttpMethod {
        GET(ShareTarget.METHOD_GET),
        POST("POST");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final String method;

        public static EnumEntries<HttpMethod> getEntries() {
            return $ENTRIES;
        }

        HttpMethod(String str) {
            this.method = str;
        }

        public final String getMethod() {
            return this.method;
        }
    }

    /* JADX INFO: compiled from: NetworkRequestData.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\nHÆ\u0003JI\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006'"}, d2 = {"Lcom/superwall/sdk/network/NetworkRequestData$Components;", "", "scheme", "", "host", "path", "queryItems", "", "Lcom/superwall/sdk/network/URLQueryItem;", "bodyData", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[B)V", "getScheme", "()Ljava/lang/String;", "setScheme", "(Ljava/lang/String;)V", "getHost", "getPath", "getQueryItems", "()Ljava/util/List;", "setQueryItems", "(Ljava/util/List;)V", "getBodyData", "()[B", "setBodyData", "([B)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Components {
        private byte[] bodyData;
        private final String host;
        private final String path;
        private List<URLQueryItem> queryItems;
        private String scheme;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Components copy$default(Components components, String str, String str2, String str3, List list, byte[] bArr, int i, Object obj) {
            if ((i & 1) != 0) {
                str = components.scheme;
            }
            if ((i & 2) != 0) {
                str2 = components.host;
            }
            if ((i & 4) != 0) {
                str3 = components.path;
            }
            if ((i & 8) != 0) {
                list = components.queryItems;
            }
            if ((i & 16) != 0) {
                bArr = components.bodyData;
            }
            byte[] bArr2 = bArr;
            String str4 = str3;
            return components.copy(str, str2, str4, list, bArr2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getScheme() {
            return this.scheme;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getHost() {
            return this.host;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getPath() {
            return this.path;
        }

        public final List<URLQueryItem> component4() {
            return this.queryItems;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final byte[] getBodyData() {
            return this.bodyData;
        }

        public final Components copy(String scheme, String host, String path, List<URLQueryItem> queryItems, byte[] bodyData) {
            Intrinsics.checkNotNullParameter(path, "path");
            return new Components(scheme, host, path, queryItems, bodyData);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Components)) {
                return false;
            }
            Components components = (Components) other;
            return Intrinsics.areEqual(this.scheme, components.scheme) && Intrinsics.areEqual(this.host, components.host) && Intrinsics.areEqual(this.path, components.path) && Intrinsics.areEqual(this.queryItems, components.queryItems) && Intrinsics.areEqual(this.bodyData, components.bodyData);
        }

        public int hashCode() {
            String str = this.scheme;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.host;
            int iHashCode2 = (((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + this.path.hashCode()) * 31;
            List<URLQueryItem> list = this.queryItems;
            int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
            byte[] bArr = this.bodyData;
            return iHashCode3 + (bArr != null ? Arrays.hashCode(bArr) : 0);
        }

        public String toString() {
            return "Components(scheme=" + this.scheme + ", host=" + this.host + ", path=" + this.path + ", queryItems=" + this.queryItems + ", bodyData=" + Arrays.toString(this.bodyData) + ")";
        }

        public Components(String str, String str2, String path, List<URLQueryItem> list, byte[] bArr) {
            Intrinsics.checkNotNullParameter(path, "path");
            this.scheme = str;
            this.host = str2;
            this.path = path;
            this.queryItems = list;
            this.bodyData = bArr;
        }

        public /* synthetic */ Components(String str, String str2, String str3, List list, byte[] bArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "https" : str, (i & 2) != 0 ? null : str2, str3, (i & 8) != 0 ? null : list, (i & 16) != 0 ? null : bArr);
        }

        public final String getScheme() {
            return this.scheme;
        }

        public final void setScheme(String str) {
            this.scheme = str;
        }

        public final String getHost() {
            return this.host;
        }

        public final String getPath() {
            return this.path;
        }

        public final List<URLQueryItem> getQueryItems() {
            return this.queryItems;
        }

        public final void setQueryItems(List<URLQueryItem> list) {
            this.queryItems = list;
        }

        public final byte[] getBodyData() {
            return this.bodyData;
        }

        public final void setBodyData(byte[] bArr) {
            this.bodyData = bArr;
        }
    }

    public final NetworkRequestData<Response> copyWithUrl(URI newUrl) {
        Components componentsCopy;
        Intrinsics.checkNotNullParameter(newUrl, "newUrl");
        Components components = this.components;
        if (components == null) {
            componentsCopy = null;
        } else {
            String scheme = newUrl.getScheme();
            String host = newUrl.getHost();
            String path = newUrl.getPath();
            Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
            componentsCopy = components.copy(scheme, host, path, this.components.getQueryItems(), this.components.getBodyData());
        }
        return new NetworkRequestData<>(componentsCopy, this.url == null ? null : newUrl, this.method, this.requestId, this.isForDebugging, this.factory, this.timeout, null);
    }
}
