package com.superwall.sdk.misc;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* JADX INFO: compiled from: String+SHA256.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a\f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u001a\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0002¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"sha256", "", "", "sha256MappedToRange", "", "(Ljava/lang/String;)Ljava/lang/Integer;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class String_SHA256Kt {
    public static final byte[] sha256(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256);
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            messageDigest.update(bytes);
            return messageDigest.digest();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final Integer sha256MappedToRange(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bArrSha256 = sha256(str);
        if (bArrSha256 == null) {
            return null;
        }
        List listWindowed$default = CollectionsKt.windowed$default(ArraysKt.toList(bArrSha256), 8, 8, false, 4, null);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listWindowed$default, 10));
        Iterator it = listWindowed$default.iterator();
        while (it.hasNext()) {
            arrayList.add(CollectionsKt.toByteArray((List) it.next()));
        }
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            bigIntegerAdd = bigIntegerAdd.add(new BigInteger((byte[]) it2.next()));
        }
        return Integer.valueOf(bigIntegerAdd.mod(new BigInteger("100")).intValue());
    }
}
