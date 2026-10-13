package com.superwall.supercel;

import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.sun.jna.Pointer;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CEL.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Lcom/superwall/supercel/FfiConverterTypeHostContext;", "Lcom/superwall/supercel/FfiConverter;", "Lcom/superwall/supercel/HostContext;", "Lcom/sun/jna/Pointer;", "()V", "handleMap", "Lcom/superwall/supercel/UniffiHandleMap;", "getHandleMap$supercel_release", "()Lcom/superwall/supercel/UniffiHandleMap;", "allocationSize", "Lkotlin/ULong;", RNConstants.ARG_VALUE, "allocationSize-I7RO_PI", "(Lcom/superwall/supercel/HostContext;)J", "lift", Constants.CASEFIRST_LOWER, "read", "buf", "Ljava/nio/ByteBuffer;", "write", "", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FfiConverterTypeHostContext implements FfiConverter<HostContext, Pointer> {
    public static final FfiConverterTypeHostContext INSTANCE = new FfiConverterTypeHostContext();
    private static final UniffiHandleMap<HostContext> handleMap = new UniffiHandleMap<>();

    @Override // com.superwall.supercel.FfiConverter
    /* JADX INFO: renamed from: allocationSize-I7RO_PI, reason: avoid collision after fix types in other method and not valid java name and merged with bridge method [inline-methods] */
    public long mo10809allocationSizeI7RO_PI(HostContext value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return 8L;
    }

    private FfiConverterTypeHostContext() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.superwall.supercel.FfiConverter
    public HostContext liftFromRustBuffer(RustBuffer.ByValue byValue) {
        return (HostContext) FfiConverter.DefaultImpls.liftFromRustBuffer(this, byValue);
    }

    @Override // com.superwall.supercel.FfiConverter
    public RustBuffer.ByValue lowerIntoRustBuffer(HostContext hostContext) {
        return FfiConverter.DefaultImpls.lowerIntoRustBuffer(this, hostContext);
    }

    public final UniffiHandleMap<HostContext> getHandleMap$supercel_release() {
        return handleMap;
    }

    @Override // com.superwall.supercel.FfiConverter
    public Pointer lower(HostContext value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return new Pointer(handleMap.insert(value));
    }

    @Override // com.superwall.supercel.FfiConverter
    public HostContext lift(Pointer value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return new HostContextImpl(value);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.superwall.supercel.FfiConverter
    public HostContext read(ByteBuffer buf) {
        Intrinsics.checkNotNullParameter(buf, "buf");
        return lift(new Pointer(buf.getLong()));
    }

    @Override // com.superwall.supercel.FfiConverter
    public void write(HostContext value, ByteBuffer buf) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(buf, "buf");
        buf.putLong(Pointer.nativeValue(lower(value)));
    }
}
