package com.superwall.supercel;

import com.sun.jna.Structure;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CEL.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0011\u0018\u00002\u00020\u0001:\u0001\u000bB\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0000H\u0000¢\u0006\u0002\b\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u00020\u00038\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/superwall/supercel/UniffiForeignFutureStructU8;", "Lcom/sun/jna/Structure;", "returnValue", "", "callStatus", "Lcom/superwall/supercel/UniffiRustCallStatus$ByValue;", "(BLcom/superwall/supercel/UniffiRustCallStatus$ByValue;)V", "uniffiSetValue", "", "other", "uniffiSetValue$supercel_release", "UniffiByValue", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Structure.FieldOrder({"returnValue", "callStatus"})
public class UniffiForeignFutureStructU8 extends Structure {
    public UniffiRustCallStatus.ByValue callStatus;
    public byte returnValue;

    /* JADX WARN: Multi-variable type inference failed */
    public UniffiForeignFutureStructU8() {
        this((byte) 0, null, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ UniffiForeignFutureStructU8(byte b, UniffiRustCallStatus.ByValue byValue, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? (byte) 0 : b, (i & 2) != 0 ? new UniffiRustCallStatus.ByValue() : byValue);
    }

    public UniffiForeignFutureStructU8(byte b, UniffiRustCallStatus.ByValue callStatus) {
        Intrinsics.checkNotNullParameter(callStatus, "callStatus");
        this.returnValue = b;
        this.callStatus = callStatus;
    }

    /* JADX INFO: compiled from: CEL.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/supercel/UniffiForeignFutureStructU8$UniffiByValue;", "Lcom/superwall/supercel/UniffiForeignFutureStructU8;", "Lcom/sun/jna/Structure$ByValue;", "returnValue", "", "callStatus", "Lcom/superwall/supercel/UniffiRustCallStatus$ByValue;", "(BLcom/superwall/supercel/UniffiRustCallStatus$ByValue;)V", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UniffiByValue extends UniffiForeignFutureStructU8 implements Structure.ByValue {
        /* JADX WARN: Multi-variable type inference failed */
        public UniffiByValue() {
            this((byte) 0, null, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ UniffiByValue(byte b, UniffiRustCallStatus.ByValue byValue, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? (byte) 0 : b, (i & 2) != 0 ? new UniffiRustCallStatus.ByValue() : byValue);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UniffiByValue(byte b, UniffiRustCallStatus.ByValue callStatus) {
            super(b, callStatus);
            Intrinsics.checkNotNullParameter(callStatus, "callStatus");
        }
    }

    public final void uniffiSetValue$supercel_release(UniffiForeignFutureStructU8 other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.returnValue = other.returnValue;
        this.callStatus = other.callStatus;
    }
}
