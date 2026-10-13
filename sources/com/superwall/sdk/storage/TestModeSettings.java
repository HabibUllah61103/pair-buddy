package com.superwall.sdk.storage;

import com.superwall.sdk.store.testmode.FreeTrialOverride;
import com.superwall.sdk.store.testmode.ui.EntitlementSelection;
import com.superwall.sdk.store.testmode.ui.EntitlementSelection$$serializer;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: CacheKeys.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0002#$B!\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J#\u0010\u0014\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\nHÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0001¢\u0006\u0002\b\"R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006%"}, d2 = {"Lcom/superwall/sdk/storage/TestModeSettings;", "", "entitlementSelections", "", "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;", "freeTrialOverride", "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;", "<init>", "(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getEntitlementSelections", "()Ljava/util/List;", "getFreeTrialOverride", "()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class TestModeSettings {
    private final List<EntitlementSelection> entitlementSelections;
    private final FreeTrialOverride freeTrialOverride;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new ArrayListSerializer(EntitlementSelection$$serializer.INSTANCE), FreeTrialOverride.INSTANCE.serializer()};

    /* JADX WARN: Multi-variable type inference failed */
    public TestModeSettings() {
        this((List) null, (FreeTrialOverride) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TestModeSettings copy$default(TestModeSettings testModeSettings, List list, FreeTrialOverride freeTrialOverride, int i, Object obj) {
        if ((i & 1) != 0) {
            list = testModeSettings.entitlementSelections;
        }
        if ((i & 2) != 0) {
            freeTrialOverride = testModeSettings.freeTrialOverride;
        }
        return testModeSettings.copy(list, freeTrialOverride);
    }

    public final List<EntitlementSelection> component1() {
        return this.entitlementSelections;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final FreeTrialOverride getFreeTrialOverride() {
        return this.freeTrialOverride;
    }

    public final TestModeSettings copy(List<EntitlementSelection> entitlementSelections, FreeTrialOverride freeTrialOverride) {
        Intrinsics.checkNotNullParameter(entitlementSelections, "entitlementSelections");
        Intrinsics.checkNotNullParameter(freeTrialOverride, "freeTrialOverride");
        return new TestModeSettings(entitlementSelections, freeTrialOverride);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TestModeSettings)) {
            return false;
        }
        TestModeSettings testModeSettings = (TestModeSettings) other;
        return Intrinsics.areEqual(this.entitlementSelections, testModeSettings.entitlementSelections) && this.freeTrialOverride == testModeSettings.freeTrialOverride;
    }

    public int hashCode() {
        return (this.entitlementSelections.hashCode() * 31) + this.freeTrialOverride.hashCode();
    }

    public String toString() {
        return "TestModeSettings(entitlementSelections=" + this.entitlementSelections + ", freeTrialOverride=" + this.freeTrialOverride + ")";
    }

    /* JADX INFO: compiled from: CacheKeys.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/storage/TestModeSettings$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/storage/TestModeSettings;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<TestModeSettings> serializer() {
            return TestModeSettings$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ TestModeSettings(int i, List list, FreeTrialOverride freeTrialOverride, SerializationConstructorMarker serializationConstructorMarker) {
        this.entitlementSelections = (i & 1) == 0 ? CollectionsKt.emptyList() : list;
        if ((i & 2) == 0) {
            this.freeTrialOverride = FreeTrialOverride.UseDefault;
        } else {
            this.freeTrialOverride = freeTrialOverride;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(TestModeSettings self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.entitlementSelections, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.entitlementSelections);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && self.freeTrialOverride == FreeTrialOverride.UseDefault) {
            return;
        }
        output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.freeTrialOverride);
    }

    public TestModeSettings(List<EntitlementSelection> entitlementSelections, FreeTrialOverride freeTrialOverride) {
        Intrinsics.checkNotNullParameter(entitlementSelections, "entitlementSelections");
        Intrinsics.checkNotNullParameter(freeTrialOverride, "freeTrialOverride");
        this.entitlementSelections = entitlementSelections;
        this.freeTrialOverride = freeTrialOverride;
    }

    public /* synthetic */ TestModeSettings(List list, FreeTrialOverride freeTrialOverride, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? FreeTrialOverride.UseDefault : freeTrialOverride);
    }

    public final List<EntitlementSelection> getEntitlementSelections() {
        return this.entitlementSelections;
    }

    public final FreeTrialOverride getFreeTrialOverride() {
        return this.freeTrialOverride;
    }
}
