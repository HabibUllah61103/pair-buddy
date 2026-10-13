package com.superwall.supercel;

import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.sun.jna.Pointer;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CEL.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0016\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/superwall/supercel/FfiConverterTypeResultCallback;", "Lcom/superwall/supercel/FfiConverter;", "Lcom/superwall/supercel/ResultCallback;", "Lcom/sun/jna/Pointer;", "()V", "allocationSize", "Lkotlin/ULong;", RNConstants.ARG_VALUE, "allocationSize-I7RO_PI", "(Lcom/superwall/supercel/ResultCallback;)J", "lift", Constants.CASEFIRST_LOWER, "read", "buf", "Ljava/nio/ByteBuffer;", "write", "", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FfiConverterTypeResultCallback implements FfiConverter<ResultCallback, Pointer> {
    public static final FfiConverterTypeResultCallback INSTANCE = new FfiConverterTypeResultCallback();

    @Override // com.superwall.supercel.FfiConverter
    /* JADX INFO: renamed from: allocationSize-I7RO_PI, reason: avoid collision after fix types in other method and not valid java name and merged with bridge method [inline-methods] */
    public long mo10809allocationSizeI7RO_PI(ResultCallback value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return 8L;
    }

    private FfiConverterTypeResultCallback() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.superwall.supercel.FfiConverter
    public ResultCallback liftFromRustBuffer(RustBuffer.ByValue byValue) {
        return (ResultCallback) FfiConverter.DefaultImpls.liftFromRustBuffer(this, byValue);
    }

    @Override // com.superwall.supercel.FfiConverter
    public RustBuffer.ByValue lowerIntoRustBuffer(ResultCallback resultCallback) {
        return FfiConverter.DefaultImpls.lowerIntoRustBuffer(this, resultCallback);
    }

    @Override // com.superwall.supercel.FfiConverter
    public Pointer lower(ResultCallback value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value.uniffiClonePointer();
    }

    @Override // com.superwall.supercel.FfiConverter
    public ResultCallback lift(Pointer value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return new ResultCallback(value);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.superwall.supercel.FfiConverter
    public ResultCallback read(ByteBuffer buf) {
        Intrinsics.checkNotNullParameter(buf, "buf");
        return lift(new Pointer(buf.getLong()));
    }

    @Override // com.superwall.supercel.FfiConverter
    public void write(ResultCallback value, ByteBuffer buf) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(buf, "buf");
        buf.putLong(Pointer.nativeValue(lower(value)));
    }
}
