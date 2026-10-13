package com.superwall.supercel;

import com.sun.jna.Structure;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CEL.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0011\u0018\u00002\u00020\u0001:\u0001\tB\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0000H\u0000¢\u0006\u0002\b\bR\u0012\u0010\u0002\u001a\u00020\u00038\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/superwall/supercel/UniffiForeignFutureStructVoid;", "Lcom/sun/jna/Structure;", "callStatus", "Lcom/superwall/supercel/UniffiRustCallStatus$ByValue;", "(Lcom/superwall/supercel/UniffiRustCallStatus$ByValue;)V", "uniffiSetValue", "", "other", "uniffiSetValue$supercel_release", "UniffiByValue", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Structure.FieldOrder({"callStatus"})
public class UniffiForeignFutureStructVoid extends Structure {
    public UniffiRustCallStatus.ByValue callStatus;

    /* JADX WARN: Multi-variable type inference failed */
    public UniffiForeignFutureStructVoid() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ UniffiForeignFutureStructVoid(UniffiRustCallStatus.ByValue byValue, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new UniffiRustCallStatus.ByValue() : byValue);
    }

    public UniffiForeignFutureStructVoid(UniffiRustCallStatus.ByValue callStatus) {
        Intrinsics.checkNotNullParameter(callStatus, "callStatus");
        this.callStatus = callStatus;
    }

    /* JADX INFO: compiled from: CEL.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/supercel/UniffiForeignFutureStructVoid$UniffiByValue;", "Lcom/superwall/supercel/UniffiForeignFutureStructVoid;", "Lcom/sun/jna/Structure$ByValue;", "callStatus", "Lcom/superwall/supercel/UniffiRustCallStatus$ByValue;", "(Lcom/superwall/supercel/UniffiRustCallStatus$ByValue;)V", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UniffiByValue extends UniffiForeignFutureStructVoid implements Structure.ByValue {
        /* JADX WARN: Multi-variable type inference failed */
        public UniffiByValue() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ UniffiByValue(UniffiRustCallStatus.ByValue byValue, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new UniffiRustCallStatus.ByValue() : byValue);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UniffiByValue(UniffiRustCallStatus.ByValue callStatus) {
            super(callStatus);
            Intrinsics.checkNotNullParameter(callStatus, "callStatus");
        }
    }

    public final void uniffiSetValue$supercel_release(UniffiForeignFutureStructVoid other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.callStatus = other.callStatus;
    }
}
