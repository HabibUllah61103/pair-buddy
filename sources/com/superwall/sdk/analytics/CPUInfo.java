package com.superwall.sdk.analytics;

import android.os.Build;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: CPUInfo.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00162\u00020\u0001:\u0002\u0015\u0016B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rJ\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00142\u0006\u0010\u0012\u001a\u00020\rR\u0011\u0010\u0004\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0017"}, d2 = {"Lcom/superwall/sdk/analytics/CPUInfo;", "", "<init>", "()V", "cpuData", "Lcom/superwall/sdk/analytics/CPUInfo$Data;", "getCpuData", "()Lcom/superwall/sdk/analytics/CPUInfo$Data;", "abi", "", "getAbi", "()Ljava/lang/String;", "getNumberOfCores", "", "getGetNumberOfCores", "()I", "frequencyForCore", "", "coreNumber", "minMaxFrequencyForCore", "Lkotlin/Pair;", "Data", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CPUInfo {
    private static final String CPU_INFO_DIR = "/sys/devices/system/cpu/";

    /* JADX INFO: compiled from: CPUInfo.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000  2\u00020\u0001:\u0003\u001e\u001f B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006B+\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\u000bJ\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\u0011\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\bHÖ\u0001J%\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0001¢\u0006\u0002\b\u001dR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006!"}, d2 = {"Lcom/superwall/sdk/analytics/CPUInfo$Data;", "", "cores", "", "Lcom/superwall/sdk/analytics/CPUInfo$Data$Core;", "<init>", "(Ljava/util/List;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getCores", "()Ljava/util/List;", "toString", "", "component1", "copy", "equals", "", "other", "hashCode", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Core", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Data {
        private final List<Core> cores;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new ArrayListSerializer(CPUInfo$Data$Core$$serializer.INSTANCE)};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Data copy$default(Data data, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = data.cores;
            }
            return data.copy(list);
        }

        public final List<Core> component1() {
            return this.cores;
        }

        public final Data copy(List<Core> cores) {
            Intrinsics.checkNotNullParameter(cores, "cores");
            return new Data(cores);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Data) && Intrinsics.areEqual(this.cores, ((Data) other).cores);
        }

        public int hashCode() {
            return this.cores.hashCode();
        }

        /* JADX INFO: compiled from: CPUInfo.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/analytics/CPUInfo$Data$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/analytics/CPUInfo$Data;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Data> serializer() {
                return CPUInfo$Data$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Data(int i, List list, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, CPUInfo$Data$$serializer.INSTANCE.getDescriptor());
            }
            this.cores = list;
        }

        public Data(List<Core> cores) {
            Intrinsics.checkNotNullParameter(cores, "cores");
            this.cores = cores;
        }

        /* JADX INFO: compiled from: CPUInfo.kt */
        @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 (2\u00020\u0001:\u0002'(B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tB;\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\rJ\b\u0010\u0014\u001a\u00020\u0015H\u0016J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J1\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J%\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0001¢\u0006\u0002\b&R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011¨\u0006)"}, d2 = {"Lcom/superwall/sdk/analytics/CPUInfo$Data$Core;", "", "number", "", "currentFreq", "", "maxFreq", "minFreq", "<init>", "(IJJJ)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IIJJJLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getNumber", "()I", "getCurrentFreq", "()J", "getMaxFreq", "getMinFreq", "toString", "", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Serializable
        public static final /* data */ class Core {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final long currentFreq;
            private final long maxFreq;
            private final long minFreq;
            private final int number;

            public static /* synthetic */ Core copy$default(Core core, int i, long j, long j2, long j3, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = core.number;
                }
                if ((i2 & 2) != 0) {
                    j = core.currentFreq;
                }
                if ((i2 & 4) != 0) {
                    j2 = core.maxFreq;
                }
                if ((i2 & 8) != 0) {
                    j3 = core.minFreq;
                }
                long j4 = j3;
                return core.copy(i, j, j2, j4);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getNumber() {
                return this.number;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final long getCurrentFreq() {
                return this.currentFreq;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final long getMaxFreq() {
                return this.maxFreq;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final long getMinFreq() {
                return this.minFreq;
            }

            public final Core copy(int number, long currentFreq, long maxFreq, long minFreq) {
                return new Core(number, currentFreq, maxFreq, minFreq);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Core)) {
                    return false;
                }
                Core core = (Core) other;
                return this.number == core.number && this.currentFreq == core.currentFreq && this.maxFreq == core.maxFreq && this.minFreq == core.minFreq;
            }

            public int hashCode() {
                return (((((Integer.hashCode(this.number) * 31) + Long.hashCode(this.currentFreq)) * 31) + Long.hashCode(this.maxFreq)) * 31) + Long.hashCode(this.minFreq);
            }

            /* JADX INFO: compiled from: CPUInfo.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/analytics/CPUInfo$Data$Core$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/analytics/CPUInfo$Data$Core;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final KSerializer<Core> serializer() {
                    return CPUInfo$Data$Core$$serializer.INSTANCE;
                }
            }

            public /* synthetic */ Core(int i, int i2, long j, long j2, long j3, SerializationConstructorMarker serializationConstructorMarker) {
                if (15 != (i & 15)) {
                    PluginExceptionsKt.throwMissingFieldException(i, 15, CPUInfo$Data$Core$$serializer.INSTANCE.getDescriptor());
                }
                this.number = i2;
                this.currentFreq = j;
                this.maxFreq = j2;
                this.minFreq = j3;
            }

            @JvmStatic
            public static final /* synthetic */ void write$Self$superwall_release(Core self, CompositeEncoder output, SerialDescriptor serialDesc) {
                output.encodeIntElement(serialDesc, 0, self.number);
                output.encodeLongElement(serialDesc, 1, self.currentFreq);
                output.encodeLongElement(serialDesc, 2, self.maxFreq);
                output.encodeLongElement(serialDesc, 3, self.minFreq);
            }

            public Core(int i, long j, long j2, long j3) {
                this.number = i;
                this.currentFreq = j;
                this.maxFreq = j2;
                this.minFreq = j3;
            }

            public final int getNumber() {
                return this.number;
            }

            public final long getCurrentFreq() {
                return this.currentFreq;
            }

            public final long getMaxFreq() {
                return this.maxFreq;
            }

            public final long getMinFreq() {
                return this.minFreq;
            }

            public String toString() {
                return "#" + this.number + ", current: " + this.currentFreq + ", max: " + this.maxFreq + ", min: " + this.minFreq;
            }
        }

        public final List<Core> getCores() {
            return this.cores;
        }

        public String toString() {
            return "Cores: " + this.cores.size() + ": [" + CollectionsKt.joinToString$default(this.cores, null, null, null, 0, null, null, 63, null);
        }
    }

    public final Data getCpuData() {
        getGetNumberOfCores();
        IntRange intRangeUntil = RangesKt.until(0, getGetNumberOfCores());
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            Pair<Long, Long> pairMinMaxFrequencyForCore = minMaxFrequencyForCore(iNextInt);
            arrayList.add(new Data.Core(iNextInt, frequencyForCore(iNextInt), pairMinMaxFrequencyForCore.getSecond().longValue(), pairMinMaxFrequencyForCore.getFirst().longValue()));
        }
        return new Data(arrayList);
    }

    public final String getAbi() {
        String str = Build.SUPPORTED_ABIS[0];
        Intrinsics.checkNotNull(str);
        return str;
    }

    public final int getGetNumberOfCores() {
        return Runtime.getRuntime().availableProcessors();
    }

    public final long frequencyForCore(int coreNumber) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile("/sys/devices/system/cpu/cpu" + coreNumber + "/cpufreq/scaling_cur_freq", "r");
            try {
                String line = randomAccessFile.readLine();
                Intrinsics.checkNotNullExpressionValue(line, "readLine(...)");
                long j = Long.parseLong(line) / ((long) 1000);
                CloseableKt.closeFinally(randomAccessFile, null);
                return j;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(randomAccessFile, th);
                    throw th2;
                }
            }
        } catch (Exception unused) {
            return -1L;
        }
    }

    public final Pair<Long, Long> minMaxFrequencyForCore(int coreNumber) {
        String str = "/sys/devices/system/cpu/cpu" + coreNumber + "/cpufreq/cpuinfo_min_freq";
        String str2 = "/sys/devices/system/cpu/cpu" + coreNumber + "/cpufreq/cpuinfo_max_freq";
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
            try {
                String line = randomAccessFile.readLine();
                Intrinsics.checkNotNullExpressionValue(line, "readLine(...)");
                long j = 1000;
                long j2 = Long.parseLong(line) / j;
                CloseableKt.closeFinally(randomAccessFile, null);
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(str2, "r");
                try {
                    String line2 = randomAccessFile2.readLine();
                    Intrinsics.checkNotNullExpressionValue(line2, "readLine(...)");
                    long j3 = Long.parseLong(line2) / j;
                    CloseableKt.closeFinally(randomAccessFile2, null);
                    return new Pair<>(Long.valueOf(j2), Long.valueOf(j3));
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(randomAccessFile2, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(randomAccessFile, th3);
                    throw th4;
                }
            }
        } catch (Exception unused) {
            return new Pair<>(-1L, -1L);
        }
    }
}
