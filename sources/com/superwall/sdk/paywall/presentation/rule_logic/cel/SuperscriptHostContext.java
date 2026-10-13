package com.superwall.sdk.paywall.presentation.rule_logic.cel;

import com.sun.jna.Callback;
import com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue;
import com.superwall.sdk.storage.core_data.CoreDataManager;
import com.superwall.supercel.HostContext;
import com.superwall.supercel.ResultCallback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: compiled from: SuperscriptHostContext.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;", "Lcom/superwall/supercel/HostContext;", "json", "Lkotlinx/serialization/json/Json;", "storage", "Lcom/superwall/sdk/storage/core_data/CoreDataManager;", "<init>", "(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/storage/core_data/CoreDataManager;)V", "computedProperty", "", "name", "", "args", Callback.METHOD_NAME, "Lcom/superwall/supercel/ResultCallback;", "deviceProperty", "ComputedProperties", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SuperscriptHostContext implements HostContext {

    /* JADX INFO: renamed from: ComputedProperties, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<String> availableComputedProperties;
    private static final List<String> availableDeviceProperties;
    private final Json json;
    private final CoreDataManager storage;

    public SuperscriptHostContext(Json json, CoreDataManager storage) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(storage, "storage");
        this.json = json;
        this.storage = storage;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.rule_logic.cel.SuperscriptHostContext$ComputedProperties, reason: from kotlin metadata */
    /* JADX INFO: compiled from: SuperscriptHostContext.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$ComputedProperties;", "", "<init>", "()V", "availableComputedProperties", "", "", "getAvailableComputedProperties", "()Ljava/util/List;", "availableDeviceProperties", "getAvailableDeviceProperties", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<String> getAvailableComputedProperties() {
            return SuperscriptHostContext.availableComputedProperties;
        }

        public final List<String> getAvailableDeviceProperties() {
            return SuperscriptHostContext.availableDeviceProperties;
        }
    }

    static {
        EnumEntries<SuperscriptExposedFunction.Names> entries = SuperscriptExposedFunction.Names.getEntries();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(entries, 10));
        Iterator<SuperscriptExposedFunction.Names> it = entries.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getRawName());
        }
        ArrayList arrayList2 = arrayList;
        availableComputedProperties = arrayList2;
        availableDeviceProperties = arrayList2;
    }

    @Override // com.superwall.supercel.HostContext
    public void computedProperty(String name, String args, ResultCallback callback) throws InterruptedException {
        PassableValue passableValue;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Json json = this.json;
        json.getSerializersModule();
        List list = (List) json.decodeFromString(new ArrayListSerializer(PassableValue.INSTANCE.serializer()), args);
        if (availableComputedProperties.contains(name)) {
            Object objRunBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new SuperscriptHostContext$computedProperty$res$1(name, list, this, null), 1, null);
            Json json2 = this.json;
            if (objRunBlocking$default == null || (passableValue = SuperscriptEvaluatorKt.toPassableValue(objRunBlocking$default)) == null) {
                passableValue = PassableValue.NullValue.INSTANCE;
            }
            json2.getSerializersModule();
            callback.onResult(json2.encodeToString(PassableValue.INSTANCE.serializer(), passableValue));
            return;
        }
        Json json3 = this.json;
        PassableValue.BoolValue boolValue = new PassableValue.BoolValue(false);
        json3.getSerializersModule();
        callback.onResult(json3.encodeToString(PassableValue.INSTANCE.serializer(), boolValue));
    }

    @Override // com.superwall.supercel.HostContext
    public void deviceProperty(String name, String args, ResultCallback callback) throws InterruptedException {
        PassableValue passableValue;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Json json = this.json;
        json.getSerializersModule();
        List list = (List) json.decodeFromString(new ArrayListSerializer(PassableValue.INSTANCE.serializer()), args);
        if (availableDeviceProperties.contains(name)) {
            Object objRunBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new SuperscriptHostContext$deviceProperty$res$1(name, list, this, null), 1, null);
            Json json2 = this.json;
            if (objRunBlocking$default == null || (passableValue = SuperscriptEvaluatorKt.toPassableValue(objRunBlocking$default)) == null) {
                passableValue = PassableValue.NullValue.INSTANCE;
            }
            json2.getSerializersModule();
            callback.onResult(json2.encodeToString(PassableValue.INSTANCE.serializer(), passableValue));
            return;
        }
        Json json3 = this.json;
        PassableValue.BoolValue boolValue = new PassableValue.BoolValue(false);
        json3.getSerializersModule();
        callback.onResult(json3.encodeToString(PassableValue.INSTANCE.serializer(), boolValue));
    }
}
