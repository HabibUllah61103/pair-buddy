package kotlin.collections;

import kotlin.Metadata;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UArraySorting.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\n\u0010\u000b\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\r\u0010\u000e\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u000f\u0010\u0010\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0012\u0010\u0013\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0017\u0010\u0018\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0019\u0010\u001a\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001e\u0010\u000b\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001f\u0010\u0010\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b \u0010\u0015\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "quickSort-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "quickSort--nroSd4", "([JII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-Aa5vz7o", "sortArray-oBK06Vg", "sortArray--nroSd4", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class UArraySortingKt {
    /* JADX INFO: renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m11701partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        byte bM11317getw2LRezQ = UByteArray.m11317getw2LRezQ(bArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                i3 = bM11317getw2LRezQ & 255;
                if (Intrinsics.compare(UByteArray.m11317getw2LRezQ(bArr, i) & 255, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UByteArray.m11317getw2LRezQ(bArr, i2) & 255, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                byte bM11317getw2LRezQ2 = UByteArray.m11317getw2LRezQ(bArr, i);
                UByteArray.m11322setVurrAj0(bArr, i, UByteArray.m11317getw2LRezQ(bArr, i2));
                UByteArray.m11322setVurrAj0(bArr, i2, bM11317getw2LRezQ2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m11705quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int iM11701partition4UcCI2c = m11701partition4UcCI2c(bArr, i, i2);
        int i3 = iM11701partition4UcCI2c - 1;
        if (i < i3) {
            m11705quickSort4UcCI2c(bArr, i, i3);
        }
        if (iM11701partition4UcCI2c < i2) {
            m11705quickSort4UcCI2c(bArr, iM11701partition4UcCI2c, i2);
        }
    }

    /* JADX INFO: renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m11702partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        short sM11580getMh2AYeg = UShortArray.m11580getMh2AYeg(sArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int iM11580getMh2AYeg = UShortArray.m11580getMh2AYeg(sArr, i) & UShort.MAX_VALUE;
                i3 = sM11580getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(iM11580getMh2AYeg, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UShortArray.m11580getMh2AYeg(sArr, i2) & UShort.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                short sM11580getMh2AYeg2 = UShortArray.m11580getMh2AYeg(sArr, i);
                UShortArray.m11585set01HTLdE(sArr, i, UShortArray.m11580getMh2AYeg(sArr, i2));
                UShortArray.m11585set01HTLdE(sArr, i2, sM11580getMh2AYeg2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m11706quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int iM11702partitionAa5vz7o = m11702partitionAa5vz7o(sArr, i, i2);
        int i3 = iM11702partitionAa5vz7o - 1;
        if (i < i3) {
            m11706quickSortAa5vz7o(sArr, i, i3);
        }
        if (iM11702partitionAa5vz7o < i2) {
            m11706quickSortAa5vz7o(sArr, iM11702partitionAa5vz7o, i2);
        }
    }

    /* JADX INFO: renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m11703partitionoBK06Vg(int[] iArr, int i, int i2) {
        int iM11396getpVg5ArA = UIntArray.m11396getpVg5ArA(iArr, (i + i2) / 2);
        while (i <= i2) {
            while (Integer.compareUnsigned(UIntArray.m11396getpVg5ArA(iArr, i), iM11396getpVg5ArA) < 0) {
                i++;
            }
            while (Integer.compareUnsigned(UIntArray.m11396getpVg5ArA(iArr, i2), iM11396getpVg5ArA) > 0) {
                i2--;
            }
            if (i <= i2) {
                int iM11396getpVg5ArA2 = UIntArray.m11396getpVg5ArA(iArr, i);
                UIntArray.m11401setVXSXFK8(iArr, i, UIntArray.m11396getpVg5ArA(iArr, i2));
                UIntArray.m11401setVXSXFK8(iArr, i2, iM11396getpVg5ArA2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m11707quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int iM11703partitionoBK06Vg = m11703partitionoBK06Vg(iArr, i, i2);
        int i3 = iM11703partitionoBK06Vg - 1;
        if (i < i3) {
            m11707quickSortoBK06Vg(iArr, i, i3);
        }
        if (iM11703partitionoBK06Vg < i2) {
            m11707quickSortoBK06Vg(iArr, iM11703partitionoBK06Vg, i2);
        }
    }

    /* JADX INFO: renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m11700partitionnroSd4(long[] jArr, int i, int i2) {
        long jM11475getsVKNKU = ULongArray.m11475getsVKNKU(jArr, (i + i2) / 2);
        while (i <= i2) {
            while (Long.compareUnsigned(ULongArray.m11475getsVKNKU(jArr, i), jM11475getsVKNKU) < 0) {
                i++;
            }
            while (Long.compareUnsigned(ULongArray.m11475getsVKNKU(jArr, i2), jM11475getsVKNKU) > 0) {
                i2--;
            }
            if (i <= i2) {
                long jM11475getsVKNKU2 = ULongArray.m11475getsVKNKU(jArr, i);
                ULongArray.m11480setk8EXiF4(jArr, i, ULongArray.m11475getsVKNKU(jArr, i2));
                ULongArray.m11480setk8EXiF4(jArr, i2, jM11475getsVKNKU2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m11704quickSortnroSd4(long[] jArr, int i, int i2) {
        int iM11700partitionnroSd4 = m11700partitionnroSd4(jArr, i, i2);
        int i3 = iM11700partitionnroSd4 - 1;
        if (i < i3) {
            m11704quickSortnroSd4(jArr, i, i3);
        }
        if (iM11700partitionnroSd4 < i2) {
            m11704quickSortnroSd4(jArr, iM11700partitionnroSd4, i2);
        }
    }

    /* JADX INFO: renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m11709sortArray4UcCI2c(byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m11705quickSort4UcCI2c(array, i, i2 - 1);
    }

    /* JADX INFO: renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m11710sortArrayAa5vz7o(short[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m11706quickSortAa5vz7o(array, i, i2 - 1);
    }

    /* JADX INFO: renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m11711sortArrayoBK06Vg(int[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m11707quickSortoBK06Vg(array, i, i2 - 1);
    }

    /* JADX INFO: renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m11708sortArraynroSd4(long[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m11704quickSortnroSd4(array, i, i2 - 1);
    }
}
