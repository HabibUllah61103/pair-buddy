package com.superwall.supercel;

import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CEL.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00040\u0003B\u0005¢\u0006\u0002\u0010\u0005J \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00028\u0000H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\u0012J\u0015\u0010\u0013\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u0004H\u0016¢\u0006\u0002\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00042\u0006\u0010\f\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0016J\u0015\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0019H\u0016¢\u0006\u0002\u0010\u001aJ\u001d\u0010\u001b\u001a\u00020\u00102\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0019H\u0016¢\u0006\u0002\u0010\u001cR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Lcom/superwall/supercel/FfiConverterCallbackInterface;", "CallbackInterface", "", "Lcom/superwall/supercel/FfiConverter;", "", "()V", "handleMap", "Lcom/superwall/supercel/UniffiHandleMap;", "getHandleMap$supercel_release", "()Lcom/superwall/supercel/UniffiHandleMap;", "allocationSize", "Lkotlin/ULong;", RNConstants.ARG_VALUE, "allocationSize-I7RO_PI", "(Ljava/lang/Object;)J", "drop", "", "handle", "drop$supercel_release", "lift", "(J)Ljava/lang/Object;", Constants.CASEFIRST_LOWER, "(Ljava/lang/Object;)Ljava/lang/Long;", "read", "buf", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)Ljava/lang/Object;", "write", "(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class FfiConverterCallbackInterface<CallbackInterface> implements FfiConverter<CallbackInterface, Long> {
    private final UniffiHandleMap<CallbackInterface> handleMap = new UniffiHandleMap<>();

    @Override // com.superwall.supercel.FfiConverter
    /* JADX INFO: renamed from: allocationSize-I7RO_PI */
    public long mo10809allocationSizeI7RO_PI(CallbackInterface value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return 8L;
    }

    @Override // com.superwall.supercel.FfiConverter
    public /* bridge */ /* synthetic */ Object lift(Long l) {
        return lift(l.longValue());
    }

    @Override // com.superwall.supercel.FfiConverter
    public CallbackInterface liftFromRustBuffer(RustBuffer.ByValue byValue) {
        return (CallbackInterface) FfiConverter.DefaultImpls.liftFromRustBuffer(this, byValue);
    }

    @Override // com.superwall.supercel.FfiConverter
    public RustBuffer.ByValue lowerIntoRustBuffer(CallbackInterface callbackinterface) {
        return FfiConverter.DefaultImpls.lowerIntoRustBuffer(this, callbackinterface);
    }

    public final UniffiHandleMap<CallbackInterface> getHandleMap$supercel_release() {
        return this.handleMap;
    }

    public final void drop$supercel_release(long handle) throws InternalException {
        this.handleMap.remove(handle);
    }

    public CallbackInterface lift(long value) {
        return this.handleMap.get(value);
    }

    @Override // com.superwall.supercel.FfiConverter
    public CallbackInterface read(ByteBuffer buf) {
        Intrinsics.checkNotNullParameter(buf, "buf");
        return lift(buf.getLong());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.superwall.supercel.FfiConverter
    public Long lower(CallbackInterface value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return Long.valueOf(this.handleMap.insert(value));
    }

    @Override // com.superwall.supercel.FfiConverter
    public void write(CallbackInterface value, ByteBuffer buf) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(buf, "buf");
        buf.putLong(lower((Object) value).longValue());
    }
}
