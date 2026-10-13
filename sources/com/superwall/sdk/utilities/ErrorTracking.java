package com.superwall.sdk.utilities;

import com.facebook.react.devsupport.StackTraceHelper;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: ErrorTracking.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/utilities/ErrorTracking;", "", "trackError", "", "throwable", "", "ErrorOccurence", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ErrorTracking {
    void trackError(Throwable throwable);

    /* JADX INFO: compiled from: ErrorTracking.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 12\u00020\u0001:\u000201B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bBI\b\u0010\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\n\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0007HÆ\u0003J\t\u0010\"\u001a\u00020\tHÆ\u0003J;\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010$\u001a\u00020\t2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\rHÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001J%\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0001¢\u0006\u0002\b/R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014R\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0014R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0012\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0012\u001a\u0004\b\b\u0010\u001d¨\u00062"}, d2 = {"Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;", "", "type", "", "message", "stacktrace", "timestamp", "", StackTraceHelper.IS_FATAL_KEY, "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getType$annotations", "()V", "getType", "()Ljava/lang/String;", "getMessage$annotations", "getMessage", "getStacktrace$annotations", "getStacktrace", "getTimestamp$annotations", "getTimestamp", "()J", "isFatal$annotations", "()Z", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ErrorOccurence {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final boolean isFatal;
        private final String message;
        private final String stacktrace;
        private final long timestamp;
        private final String type;

        public static /* synthetic */ ErrorOccurence copy$default(ErrorOccurence errorOccurence, String str, String str2, String str3, long j, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = errorOccurence.type;
            }
            if ((i & 2) != 0) {
                str2 = errorOccurence.message;
            }
            if ((i & 4) != 0) {
                str3 = errorOccurence.stacktrace;
            }
            if ((i & 8) != 0) {
                j = errorOccurence.timestamp;
            }
            if ((i & 16) != 0) {
                z = errorOccurence.isFatal;
            }
            boolean z2 = z;
            String str4 = str3;
            return errorOccurence.copy(str, str2, str4, j, z2);
        }

        @SerialName("message")
        public static /* synthetic */ void getMessage$annotations() {
        }

        @SerialName("stacktrace")
        public static /* synthetic */ void getStacktrace$annotations() {
        }

        @SerialName("timestamp")
        public static /* synthetic */ void getTimestamp$annotations() {
        }

        @SerialName("type")
        public static /* synthetic */ void getType$annotations() {
        }

        @SerialName(StackTraceHelper.IS_FATAL_KEY)
        public static /* synthetic */ void isFatal$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getStacktrace() {
            return this.stacktrace;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final long getTimestamp() {
            return this.timestamp;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getIsFatal() {
            return this.isFatal;
        }

        public final ErrorOccurence copy(String type, String message, String stacktrace, long timestamp, boolean isFatal) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(stacktrace, "stacktrace");
            return new ErrorOccurence(type, message, stacktrace, timestamp, isFatal);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ErrorOccurence)) {
                return false;
            }
            ErrorOccurence errorOccurence = (ErrorOccurence) other;
            return Intrinsics.areEqual(this.type, errorOccurence.type) && Intrinsics.areEqual(this.message, errorOccurence.message) && Intrinsics.areEqual(this.stacktrace, errorOccurence.stacktrace) && this.timestamp == errorOccurence.timestamp && this.isFatal == errorOccurence.isFatal;
        }

        public int hashCode() {
            return (((((((this.type.hashCode() * 31) + this.message.hashCode()) * 31) + this.stacktrace.hashCode()) * 31) + Long.hashCode(this.timestamp)) * 31) + Boolean.hashCode(this.isFatal);
        }

        public String toString() {
            return "ErrorOccurence(type=" + this.type + ", message=" + this.message + ", stacktrace=" + this.stacktrace + ", timestamp=" + this.timestamp + ", isFatal=" + this.isFatal + ")";
        }

        /* JADX INFO: compiled from: ErrorTracking.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<ErrorOccurence> serializer() {
                return ErrorTracking$ErrorOccurence$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ ErrorOccurence(int i, String str, String str2, String str3, long j, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
            if (31 != (i & 31)) {
                PluginExceptionsKt.throwMissingFieldException(i, 31, ErrorTracking$ErrorOccurence$$serializer.INSTANCE.getDescriptor());
            }
            this.type = str;
            this.message = str2;
            this.stacktrace = str3;
            this.timestamp = j;
            this.isFatal = z;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(ErrorOccurence self, CompositeEncoder output, SerialDescriptor serialDesc) {
            output.encodeStringElement(serialDesc, 0, self.type);
            output.encodeStringElement(serialDesc, 1, self.message);
            output.encodeStringElement(serialDesc, 2, self.stacktrace);
            output.encodeLongElement(serialDesc, 3, self.timestamp);
            output.encodeBooleanElement(serialDesc, 4, self.isFatal);
        }

        public ErrorOccurence(String type, String message, String stacktrace, long j, boolean z) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(stacktrace, "stacktrace");
            this.type = type;
            this.message = message;
            this.stacktrace = stacktrace;
            this.timestamp = j;
            this.isFatal = z;
        }

        public final String getType() {
            return this.type;
        }

        public final String getMessage() {
            return this.message;
        }

        public final String getStacktrace() {
            return this.stacktrace;
        }

        public final long getTimestamp() {
            return this.timestamp;
        }

        public final boolean isFatal() {
            return this.isFatal;
        }
    }
}
