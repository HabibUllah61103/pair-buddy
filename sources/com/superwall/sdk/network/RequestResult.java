package com.superwall.sdk.network;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RequestResult.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010$\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J\u0015\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\nHÆ\u0003JG\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\nHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006!"}, d2 = {"Lcom/superwall/sdk/network/RequestResult;", "", "requestId", "", "responseCode", "", "responseMessage", "duration", "", "headers", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;DLjava/util/Map;)V", "getRequestId", "()Ljava/lang/String;", "getResponseCode", "()I", "getResponseMessage", "getDuration", "()D", "getHeaders", "()Ljava/util/Map;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class RequestResult {
    private final double duration;
    private final Map<String, String> headers;
    private final String requestId;
    private final int responseCode;
    private final String responseMessage;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RequestResult copy$default(RequestResult requestResult, String str, int i, String str2, double d, Map map, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = requestResult.requestId;
        }
        if ((i2 & 2) != 0) {
            i = requestResult.responseCode;
        }
        if ((i2 & 4) != 0) {
            str2 = requestResult.responseMessage;
        }
        if ((i2 & 8) != 0) {
            d = requestResult.duration;
        }
        if ((i2 & 16) != 0) {
            map = requestResult.headers;
        }
        Map map2 = map;
        String str3 = str2;
        return requestResult.copy(str, i, str3, d, map2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getRequestId() {
        return this.requestId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getResponseCode() {
        return this.responseCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getResponseMessage() {
        return this.responseMessage;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final double getDuration() {
        return this.duration;
    }

    public final Map<String, String> component5() {
        return this.headers;
    }

    public final RequestResult copy(String requestId, int responseCode, String responseMessage, double duration, Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(responseMessage, "responseMessage");
        Intrinsics.checkNotNullParameter(headers, "headers");
        return new RequestResult(requestId, responseCode, responseMessage, duration, headers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RequestResult)) {
            return false;
        }
        RequestResult requestResult = (RequestResult) other;
        return Intrinsics.areEqual(this.requestId, requestResult.requestId) && this.responseCode == requestResult.responseCode && Intrinsics.areEqual(this.responseMessage, requestResult.responseMessage) && Double.compare(this.duration, requestResult.duration) == 0 && Intrinsics.areEqual(this.headers, requestResult.headers);
    }

    public int hashCode() {
        return (((((((this.requestId.hashCode() * 31) + Integer.hashCode(this.responseCode)) * 31) + this.responseMessage.hashCode()) * 31) + Double.hashCode(this.duration)) * 31) + this.headers.hashCode();
    }

    public String toString() {
        return "RequestResult(requestId=" + this.requestId + ", responseCode=" + this.responseCode + ", responseMessage=" + this.responseMessage + ", duration=" + this.duration + ", headers=" + this.headers + ")";
    }

    public RequestResult(String requestId, int i, String responseMessage, double d, Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(responseMessage, "responseMessage");
        Intrinsics.checkNotNullParameter(headers, "headers");
        this.requestId = requestId;
        this.responseCode = i;
        this.responseMessage = responseMessage;
        this.duration = d;
        this.headers = headers;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    public final String getResponseMessage() {
        return this.responseMessage;
    }

    public final double getDuration() {
        return this.duration;
    }

    public final Map<String, String> getHeaders() {
        return this.headers;
    }
}
