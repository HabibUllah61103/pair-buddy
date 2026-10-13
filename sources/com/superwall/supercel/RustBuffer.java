package com.superwall.supercel;

import com.sun.jna.Pointer;
import com.sun.jna.Structure;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CEL.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0017\u0018\u0000 \u00102\u00020\u0001:\u0003\u000e\u000f\u0010B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0000H\u0000¢\u0006\u0002\b\rR\u0012\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/superwall/supercel/RustBuffer;", "Lcom/sun/jna/Structure;", "()V", "capacity", "", "data", "Lcom/sun/jna/Pointer;", "len", "asByteBuffer", "Ljava/nio/ByteBuffer;", "setValue", "", "other", "setValue$supercel_release", "ByReference", "ByValue", "Companion", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Structure.FieldOrder({"capacity", "len", "data"})
public class RustBuffer extends Structure {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public long capacity;
    public Pointer data;
    public long len;

    /* JADX INFO: compiled from: CEL.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/supercel/RustBuffer$ByReference;", "Lcom/superwall/supercel/RustBuffer;", "Lcom/sun/jna/Structure$ByReference;", "()V", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ByReference extends RustBuffer implements Structure.ByReference {
    }

    /* JADX INFO: compiled from: CEL.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/supercel/RustBuffer$ByValue;", "Lcom/superwall/supercel/RustBuffer;", "Lcom/sun/jna/Structure$ByValue;", "()V", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ByValue extends RustBuffer implements Structure.ByValue {
    }

    public final void setValue$supercel_release(RustBuffer other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.capacity = other.capacity;
        this.len = other.len;
        this.data = other.data;
    }

    /* JADX INFO: compiled from: CEL.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0007\u0010\bJ/\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\u0013\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/superwall/supercel/RustBuffer$Companion;", "", "()V", "alloc", "Lcom/superwall/supercel/RustBuffer$ByValue;", "size", "Lkotlin/ULong;", "alloc-VKZWuLQ$supercel_release", "(J)Lcom/superwall/supercel/RustBuffer$ByValue;", "create", "capacity", "len", "data", "Lcom/sun/jna/Pointer;", "create-twO9MuI$supercel_release", "(JJLcom/sun/jna/Pointer;)Lcom/superwall/supercel/RustBuffer$ByValue;", "free", "", "buf", "free$supercel_release", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: alloc-VKZWuLQ$supercel_release$default, reason: not valid java name */
        public static /* synthetic */ ByValue m10813allocVKZWuLQ$supercel_release$default(Companion companion, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = 0;
            }
            return companion.m10814allocVKZWuLQ$supercel_release(j);
        }

        /* JADX INFO: renamed from: create-twO9MuI$supercel_release, reason: not valid java name */
        public final ByValue m10815createtwO9MuI$supercel_release(long capacity, long len, Pointer data) {
            ByValue byValue = new ByValue();
            byValue.capacity = capacity;
            byValue.len = len;
            byValue.data = data;
            return byValue;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: E */
        /* JADX INFO: renamed from: alloc-VKZWuLQ$supercel_release, reason: not valid java name */
        public final ByValue m10814allocVKZWuLQ$supercel_release(long size) throws E, InternalException {
            UniffiNullRustCallStatusErrorHandler uniffiNullRustCallStatusErrorHandler = UniffiNullRustCallStatusErrorHandler.INSTANCE;
            UniffiRustCallStatus uniffiRustCallStatus = new UniffiRustCallStatus();
            ByValue byValueFfi_cel_eval_rustbuffer_alloc = UniffiLib.INSTANCE.getINSTANCE$supercel_release().ffi_cel_eval_rustbuffer_alloc(size, uniffiRustCallStatus);
            CELKt.uniffiCheckCallStatus(uniffiNullRustCallStatusErrorHandler, uniffiRustCallStatus);
            if (byValueFfi_cel_eval_rustbuffer_alloc.data != null) {
                return byValueFfi_cel_eval_rustbuffer_alloc;
            }
            throw new RuntimeException("RustBuffer.alloc() returned null data pointer (size=" + ((Object) ULong.m11461toStringimpl(size)) + ')');
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: E */
        public final void free$supercel_release(ByValue buf) throws E, InternalException {
            Intrinsics.checkNotNullParameter(buf, "buf");
            UniffiNullRustCallStatusErrorHandler uniffiNullRustCallStatusErrorHandler = UniffiNullRustCallStatusErrorHandler.INSTANCE;
            UniffiRustCallStatus uniffiRustCallStatus = new UniffiRustCallStatus();
            UniffiLib.INSTANCE.getINSTANCE$supercel_release().ffi_cel_eval_rustbuffer_free(buf, uniffiRustCallStatus);
            Unit unit = Unit.INSTANCE;
            CELKt.uniffiCheckCallStatus(uniffiNullRustCallStatusErrorHandler, uniffiRustCallStatus);
        }
    }

    public final ByteBuffer asByteBuffer() {
        ByteBuffer byteBuffer;
        Pointer pointer = this.data;
        if (pointer == null || (byteBuffer = pointer.getByteBuffer(0L, this.len)) == null) {
            return null;
        }
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
        return byteBuffer;
    }
}
