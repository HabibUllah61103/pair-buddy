package com.superwall.supercel;

import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.sun.jna.Pointer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CEL.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H&ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\t\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00028\u0001H&¢\u0006\u0002\u0010\nJ\u0015\u0010\u000b\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\rH\u0016¢\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00028\u0000H&¢\u0006\u0002\u0010\nJ\u0015\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0011J\u0015\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\u0014H&¢\u0006\u0002\u0010\u0015J\u001d\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\u0014H&¢\u0006\u0002\u0010\u0018\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lcom/superwall/supercel/FfiConverter;", "KotlinType", "FfiType", "", "allocationSize", "Lkotlin/ULong;", RNConstants.ARG_VALUE, "allocationSize-I7RO_PI", "(Ljava/lang/Object;)J", "lift", "(Ljava/lang/Object;)Ljava/lang/Object;", "liftFromRustBuffer", "rbuf", "Lcom/superwall/supercel/RustBuffer$ByValue;", "(Lcom/superwall/supercel/RustBuffer$ByValue;)Ljava/lang/Object;", Constants.CASEFIRST_LOWER, "lowerIntoRustBuffer", "(Ljava/lang/Object;)Lcom/superwall/supercel/RustBuffer$ByValue;", "read", "buf", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)Ljava/lang/Object;", "write", "", "(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface FfiConverter<KotlinType, FfiType> {
    /* JADX INFO: renamed from: allocationSize-I7RO_PI, reason: not valid java name */
    long mo10809allocationSizeI7RO_PI(KotlinType value);

    KotlinType lift(FfiType value);

    KotlinType liftFromRustBuffer(RustBuffer.ByValue rbuf);

    FfiType lower(KotlinType value);

    RustBuffer.ByValue lowerIntoRustBuffer(KotlinType value);

    KotlinType read(ByteBuffer buf);

    void write(KotlinType value, ByteBuffer buf);

    /* JADX INFO: compiled from: CEL.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class DefaultImpls {
        /* JADX INFO: Thrown type has an unknown type hierarchy: E */
        public static <KotlinType, FfiType> RustBuffer.ByValue lowerIntoRustBuffer(FfiConverter<KotlinType, FfiType> ffiConverter, KotlinType kotlintype) throws E, InternalException {
            RustBuffer.ByValue byValueM10814allocVKZWuLQ$supercel_release = RustBuffer.INSTANCE.m10814allocVKZWuLQ$supercel_release(ffiConverter.mo10809allocationSizeI7RO_PI(kotlintype));
            try {
                Pointer pointer = byValueM10814allocVKZWuLQ$supercel_release.data;
                Intrinsics.checkNotNull(pointer);
                ByteBuffer byteBuffer = pointer.getByteBuffer(0L, byValueM10814allocVKZWuLQ$supercel_release.capacity);
                byteBuffer.order(ByteOrder.BIG_ENDIAN);
                Intrinsics.checkNotNull(byteBuffer);
                ffiConverter.write(kotlintype, byteBuffer);
                byValueM10814allocVKZWuLQ$supercel_release.writeField("len", Long.valueOf(byteBuffer.position()));
                return byValueM10814allocVKZWuLQ$supercel_release;
            } catch (Throwable th) {
                RustBuffer.INSTANCE.free$supercel_release(byValueM10814allocVKZWuLQ$supercel_release);
                throw th;
            }
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: E */
        public static <KotlinType, FfiType> KotlinType liftFromRustBuffer(FfiConverter<KotlinType, FfiType> ffiConverter, RustBuffer.ByValue rbuf) throws E, InternalException {
            Intrinsics.checkNotNullParameter(rbuf, "rbuf");
            ByteBuffer byteBufferAsByteBuffer = rbuf.asByteBuffer();
            Intrinsics.checkNotNull(byteBufferAsByteBuffer);
            try {
                KotlinType kotlintype = ffiConverter.read(byteBufferAsByteBuffer);
                if (byteBufferAsByteBuffer.hasRemaining()) {
                    throw new RuntimeException("junk remaining in buffer after lifting, something is very wrong!!");
                }
                RustBuffer.INSTANCE.free$supercel_release(rbuf);
                return kotlintype;
            } catch (Throwable th) {
                RustBuffer.INSTANCE.free$supercel_release(rbuf);
                throw th;
            }
        }
    }
}
