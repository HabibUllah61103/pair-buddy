package com.superwall.sdk.paywall.presentation.rule_logic.cel.models;

import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: PassableValues.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 12\u00020\u0001:\u000201BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007\u0012\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007¢\u0006\u0004\b\u000b\u0010\fBg\b\u0010\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u001a\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0018\u00010\u0007\u0012\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0018\u00010\u0007\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u000b\u0010\u0011J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\u001b\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007HÆ\u0003J\u001b\u0010!\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007HÆ\u0003JU\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u001a\b\u0002\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00072\u001a\b\u0002\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007HÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u000eHÖ\u0001J\t\u0010'\u001a\u00020\u0005HÖ\u0001J%\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0001¢\u0006\u0002\b/R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\u0018R.\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u001bR.\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0013\u001a\u0004\b\u001d\u0010\u001b¨\u00062"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ExecutionContext;", "", "variables", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableMap;", "expression", "", "computed", "", "", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;", "device", "<init>", "(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableMap;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableMap;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getVariables$annotations", "()V", "getVariables", "()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableMap;", "getExpression$annotations", "getExpression", "()Ljava/lang/String;", "getComputed$annotations", "getComputed", "()Ljava/util/Map;", "getDevice$annotations", "getDevice", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class ExecutionContext {
    private final Map<String, List<PassableValue>> computed;
    private final Map<String, List<PassableValue>> device;
    private final String expression;
    private final PassableMap variables;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, new ArrayListSerializer(new SealedClassSerializer("com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue", Reflection.getOrCreateKotlinClass(PassableValue.class), new KClass[]{Reflection.getOrCreateKotlinClass(PassableValue.BoolValue.class), Reflection.getOrCreateKotlinClass(PassableValue.BytesValue.class), Reflection.getOrCreateKotlinClass(PassableValue.FloatValue.class), Reflection.getOrCreateKotlinClass(PassableValue.FunctionValue.class), Reflection.getOrCreateKotlinClass(PassableValue.IntValue.class), Reflection.getOrCreateKotlinClass(PassableValue.ListValue.class), Reflection.getOrCreateKotlinClass(PassableValue.MapValue.class), Reflection.getOrCreateKotlinClass(PassableValue.NullValue.class), Reflection.getOrCreateKotlinClass(PassableValue.StringValue.class), Reflection.getOrCreateKotlinClass(PassableValue.TimestampValue.class), Reflection.getOrCreateKotlinClass(PassableValue.UIntValue.class)}, new KSerializer[]{PassableValue$BoolValue$$serializer.INSTANCE, PassableValue$BytesValue$$serializer.INSTANCE, PassableValue$FloatValue$$serializer.INSTANCE, PassableValue$FunctionValue$$serializer.INSTANCE, PassableValue$IntValue$$serializer.INSTANCE, PassableValue$ListValue$$serializer.INSTANCE, PassableValue$MapValue$$serializer.INSTANCE, new ObjectSerializer("Null", PassableValue.NullValue.INSTANCE, new Annotation[0]), PassableValue$StringValue$$serializer.INSTANCE, PassableValue$TimestampValue$$serializer.INSTANCE, PassableValue$UIntValue$$serializer.INSTANCE}, new Annotation[0]))), new LinkedHashMapSerializer(StringSerializer.INSTANCE, new ArrayListSerializer(new SealedClassSerializer("com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue", Reflection.getOrCreateKotlinClass(PassableValue.class), new KClass[]{Reflection.getOrCreateKotlinClass(PassableValue.BoolValue.class), Reflection.getOrCreateKotlinClass(PassableValue.BytesValue.class), Reflection.getOrCreateKotlinClass(PassableValue.FloatValue.class), Reflection.getOrCreateKotlinClass(PassableValue.FunctionValue.class), Reflection.getOrCreateKotlinClass(PassableValue.IntValue.class), Reflection.getOrCreateKotlinClass(PassableValue.ListValue.class), Reflection.getOrCreateKotlinClass(PassableValue.MapValue.class), Reflection.getOrCreateKotlinClass(PassableValue.NullValue.class), Reflection.getOrCreateKotlinClass(PassableValue.StringValue.class), Reflection.getOrCreateKotlinClass(PassableValue.TimestampValue.class), Reflection.getOrCreateKotlinClass(PassableValue.UIntValue.class)}, new KSerializer[]{PassableValue$BoolValue$$serializer.INSTANCE, PassableValue$BytesValue$$serializer.INSTANCE, PassableValue$FloatValue$$serializer.INSTANCE, PassableValue$FunctionValue$$serializer.INSTANCE, PassableValue$IntValue$$serializer.INSTANCE, PassableValue$ListValue$$serializer.INSTANCE, PassableValue$MapValue$$serializer.INSTANCE, new ObjectSerializer("Null", PassableValue.NullValue.INSTANCE, new Annotation[0]), PassableValue$StringValue$$serializer.INSTANCE, PassableValue$TimestampValue$$serializer.INSTANCE, PassableValue$UIntValue$$serializer.INSTANCE}, new Annotation[0])))};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ExecutionContext copy$default(ExecutionContext executionContext, PassableMap passableMap, String str, Map map, Map map2, int i, Object obj) {
        if ((i & 1) != 0) {
            passableMap = executionContext.variables;
        }
        if ((i & 2) != 0) {
            str = executionContext.expression;
        }
        if ((i & 4) != 0) {
            map = executionContext.computed;
        }
        if ((i & 8) != 0) {
            map2 = executionContext.device;
        }
        return executionContext.copy(passableMap, str, map, map2);
    }

    @SerialName("computed")
    public static /* synthetic */ void getComputed$annotations() {
    }

    @SerialName("device")
    public static /* synthetic */ void getDevice$annotations() {
    }

    @SerialName("expression")
    public static /* synthetic */ void getExpression$annotations() {
    }

    @SerialName("variables")
    public static /* synthetic */ void getVariables$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PassableMap getVariables() {
        return this.variables;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getExpression() {
        return this.expression;
    }

    public final Map<String, List<PassableValue>> component3() {
        return this.computed;
    }

    public final Map<String, List<PassableValue>> component4() {
        return this.device;
    }

    public final ExecutionContext copy(PassableMap variables, String expression, Map<String, ? extends List<? extends PassableValue>> computed, Map<String, ? extends List<? extends PassableValue>> device) {
        Intrinsics.checkNotNullParameter(variables, "variables");
        Intrinsics.checkNotNullParameter(expression, "expression");
        Intrinsics.checkNotNullParameter(computed, "computed");
        Intrinsics.checkNotNullParameter(device, "device");
        return new ExecutionContext(variables, expression, computed, device);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ExecutionContext)) {
            return false;
        }
        ExecutionContext executionContext = (ExecutionContext) other;
        return Intrinsics.areEqual(this.variables, executionContext.variables) && Intrinsics.areEqual(this.expression, executionContext.expression) && Intrinsics.areEqual(this.computed, executionContext.computed) && Intrinsics.areEqual(this.device, executionContext.device);
    }

    public int hashCode() {
        return (((((this.variables.hashCode() * 31) + this.expression.hashCode()) * 31) + this.computed.hashCode()) * 31) + this.device.hashCode();
    }

    public String toString() {
        return "ExecutionContext(variables=" + this.variables + ", expression=" + this.expression + ", computed=" + this.computed + ", device=" + this.device + ")";
    }

    /* JADX INFO: compiled from: PassableValues.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ExecutionContext$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ExecutionContext;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<ExecutionContext> serializer() {
            return ExecutionContext$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ExecutionContext(int i, PassableMap passableMap, String str, Map map, Map map2, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, ExecutionContext$$serializer.INSTANCE.getDescriptor());
        }
        this.variables = passableMap;
        this.expression = str;
        this.computed = map;
        this.device = map2;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(ExecutionContext self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeSerializableElement(serialDesc, 0, PassableMap$$serializer.INSTANCE, self.variables);
        output.encodeStringElement(serialDesc, 1, self.expression);
        output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.computed);
        output.encodeSerializableElement(serialDesc, 3, kSerializerArr[3], self.device);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ExecutionContext(PassableMap variables, String expression, Map<String, ? extends List<? extends PassableValue>> computed, Map<String, ? extends List<? extends PassableValue>> device) {
        Intrinsics.checkNotNullParameter(variables, "variables");
        Intrinsics.checkNotNullParameter(expression, "expression");
        Intrinsics.checkNotNullParameter(computed, "computed");
        Intrinsics.checkNotNullParameter(device, "device");
        this.variables = variables;
        this.expression = expression;
        this.computed = computed;
        this.device = device;
    }

    public final PassableMap getVariables() {
        return this.variables;
    }

    public final String getExpression() {
        return this.expression;
    }

    public final Map<String, List<PassableValue>> getComputed() {
        return this.computed;
    }

    public final Map<String, List<PassableValue>> getDevice() {
        return this.device;
    }
}
