package com.superwall.supercel;

import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: CEL.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0002J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0016\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lcom/superwall/supercel/FfiConverterString;", "Lcom/superwall/supercel/FfiConverter;", "", "Lcom/superwall/supercel/RustBuffer$ByValue;", "()V", "allocationSize", "Lkotlin/ULong;", RNConstants.ARG_VALUE, "allocationSize-I7RO_PI", "(Ljava/lang/String;)J", "lift", Constants.CASEFIRST_LOWER, "read", "buf", "Ljava/nio/ByteBuffer;", "toUtf8", "write", "", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FfiConverterString implements FfiConverter<String, RustBuffer.ByValue> {
    public static final FfiConverterString INSTANCE = new FfiConverterString();

    private FfiConverterString() {
    }

    @Override // com.superwall.supercel.FfiConverter
    public String liftFromRustBuffer(RustBuffer.ByValue byValue) {
        return (String) FfiConverter.DefaultImpls.liftFromRustBuffer(this, byValue);
    }

    @Override // com.superwall.supercel.FfiConverter
    public RustBuffer.ByValue lowerIntoRustBuffer(String str) {
        return FfiConverter.DefaultImpls.lowerIntoRustBuffer(this, str);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E */
    @Override // com.superwall.supercel.FfiConverter
    public String lift(RustBuffer.ByValue value) throws E, InternalException {
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            byte[] bArr = new byte[(int) value.len];
            ByteBuffer byteBufferAsByteBuffer = value.asByteBuffer();
            Intrinsics.checkNotNull(byteBufferAsByteBuffer);
            byteBufferAsByteBuffer.get(bArr);
            return new String(bArr, Charsets.UTF_8);
        } finally {
            RustBuffer.INSTANCE.free$supercel_release(value);
        }
    }

    @Override // com.superwall.supercel.FfiConverter
    public String read(ByteBuffer buf) {
        Intrinsics.checkNotNullParameter(buf, "buf");
        byte[] bArr = new byte[buf.getInt()];
        buf.get(bArr);
        return new String(bArr, Charsets.UTF_8);
    }

    public final ByteBuffer toUtf8(String value) throws CharacterCodingException {
        Intrinsics.checkNotNullParameter(value, "value");
        CharsetEncoder charsetEncoderNewEncoder = Charsets.UTF_8.newEncoder();
        charsetEncoderNewEncoder.onMalformedInput(CodingErrorAction.REPORT);
        ByteBuffer byteBufferEncode = charsetEncoderNewEncoder.encode(CharBuffer.wrap(value));
        Intrinsics.checkNotNullExpressionValue(byteBufferEncode, "run(...)");
        return byteBufferEncode;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E */
    @Override // com.superwall.supercel.FfiConverter
    public RustBuffer.ByValue lower(String value) throws CharacterCodingException, E, InternalException {
        Intrinsics.checkNotNullParameter(value, "value");
        ByteBuffer utf8 = toUtf8(value);
        RustBuffer.ByValue byValueM10814allocVKZWuLQ$supercel_release = RustBuffer.INSTANCE.m10814allocVKZWuLQ$supercel_release(ULong.m11415constructorimpl(utf8.limit()));
        ByteBuffer byteBufferAsByteBuffer = byValueM10814allocVKZWuLQ$supercel_release.asByteBuffer();
        Intrinsics.checkNotNull(byteBufferAsByteBuffer);
        byteBufferAsByteBuffer.put(utf8);
        return byValueM10814allocVKZWuLQ$supercel_release;
    }

    @Override // com.superwall.supercel.FfiConverter
    /* JADX INFO: renamed from: allocationSize-I7RO_PI, reason: avoid collision after fix types in other method and not valid java name and merged with bridge method [inline-methods] */
    public long mo10809allocationSizeI7RO_PI(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return ULong.m11415constructorimpl(ULong.m11415constructorimpl(ULong.m11415constructorimpl(value.length()) * 3) + 4);
    }

    @Override // com.superwall.supercel.FfiConverter
    public void write(String value, ByteBuffer buf) throws CharacterCodingException {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(buf, "buf");
        ByteBuffer utf8 = toUtf8(value);
        buf.putInt(utf8.limit());
        buf.put(utf8);
    }
}
