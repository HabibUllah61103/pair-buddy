package com.superwall.sdk.models.config;

import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LinkedHashSetSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: PreloadingDisabled.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0002$%B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bB3\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\nHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0006HÖ\u0001J%\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0001¢\u0006\u0002\b#R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\"\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0014¨\u0006&"}, d2 = {"Lcom/superwall/sdk/models/config/PreloadingDisabled;", "", "all", "", "triggers", "", "", "<init>", "(ZLjava/util/Set;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZLjava/util/Set;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getAll$annotations", "()V", "getAll", "()Z", "getTriggers$annotations", "getTriggers", "()Ljava/util/Set;", "component1", "component2", "copy", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class PreloadingDisabled {
    private final boolean all;
    private final Set<String> triggers;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new LinkedHashSetSerializer(StringSerializer.INSTANCE)};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PreloadingDisabled copy$default(PreloadingDisabled preloadingDisabled, boolean z, Set set, int i, Object obj) {
        if ((i & 1) != 0) {
            z = preloadingDisabled.all;
        }
        if ((i & 2) != 0) {
            set = preloadingDisabled.triggers;
        }
        return preloadingDisabled.copy(z, set);
    }

    @SerialName("all")
    public static /* synthetic */ void getAll$annotations() {
    }

    @SerialName("triggers")
    public static /* synthetic */ void getTriggers$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getAll() {
        return this.all;
    }

    public final Set<String> component2() {
        return this.triggers;
    }

    public final PreloadingDisabled copy(boolean all, Set<String> triggers) {
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        return new PreloadingDisabled(all, triggers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PreloadingDisabled)) {
            return false;
        }
        PreloadingDisabled preloadingDisabled = (PreloadingDisabled) other;
        return this.all == preloadingDisabled.all && Intrinsics.areEqual(this.triggers, preloadingDisabled.triggers);
    }

    public int hashCode() {
        return (Boolean.hashCode(this.all) * 31) + this.triggers.hashCode();
    }

    public String toString() {
        return "PreloadingDisabled(all=" + this.all + ", triggers=" + this.triggers + ")";
    }

    public /* synthetic */ PreloadingDisabled(int i, boolean z, Set set, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, PreloadingDisabled$$serializer.INSTANCE.getDescriptor());
        }
        this.all = z;
        this.triggers = set;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(PreloadingDisabled self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeBooleanElement(serialDesc, 0, self.all);
        output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.triggers);
    }

    public PreloadingDisabled(boolean z, Set<String> triggers) {
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        this.all = z;
        this.triggers = triggers;
    }

    public final boolean getAll() {
        return this.all;
    }

    public final Set<String> getTriggers() {
        return this.triggers;
    }

    /* JADX INFO: compiled from: PreloadingDisabled.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/config/PreloadingDisabled$Companion;", "", "<init>", "()V", "stub", "Lcom/superwall/sdk/models/config/PreloadingDisabled;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<PreloadingDisabled> serializer() {
            return PreloadingDisabled$$serializer.INSTANCE;
        }

        public final PreloadingDisabled stub() {
            return new PreloadingDisabled(false, SetsKt.emptySet());
        }
    }
}
