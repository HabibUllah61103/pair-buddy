package com.superwall.sdk.paywall.view.webview.templating.models;

import com.superwall.sdk.models.product.ProductVariable;
import com.superwall.sdk.models.product.ProductVariableSerializer;
import com.superwall.sdk.models.serialization.AnySerializer;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Variables.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 A2\u00020\u0001:\u0002@ABû\u0001\u0012#\u0010\u0002\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003\u0012#\u0010\b\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003\u0012#\u0010\t\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012%\b\u0002\u0010\r\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003\u0012%\b\u0002\u0010\u000e\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003\u0012%\b\u0002\u0010\u000f\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003¢\u0006\u0004\b\u0010\u0010\u0011B_\b\u0016\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0003\u0012\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003\u0012\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0003¢\u0006\u0004\b\u0010\u0010\u0014B»\u0001\b\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0003\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0003\u0012\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0003\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0003\u0012\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0003\u0012\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0003\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u0010\u0010\u0019J\u0006\u0010)\u001a\u00020*J&\u0010+\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003HÆ\u0003J&\u0010,\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003HÆ\u0003J&\u0010-\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003HÆ\u0003J\u000f\u0010.\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J&\u0010/\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003HÆ\u0003J&\u00100\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003HÆ\u0003J&\u00101\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003HÆ\u0003J\u0083\u0002\u00102\u001a\u00020\u00002%\b\u0002\u0010\u0002\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u00032%\b\u0002\u0010\b\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u00032%\b\u0002\u0010\t\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u00032\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2%\b\u0002\u0010\r\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u00032%\b\u0002\u0010\u000e\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u00032%\b\u0002\u0010\u000f\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003HÆ\u0001J\u0013\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00106\u001a\u00020\u0016HÖ\u0001J\t\u00107\u001a\u00020\u0004HÖ\u0001J%\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u00002\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0001¢\u0006\u0002\b?R.\u0010\u0002\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR.\u0010\b\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR.\u0010\t\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001bR \u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R7\u0010\r\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010$R7\u0010\u000e\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001b\"\u0004\b&\u0010$R7\u0010\u000f\u001a\u001f\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\t0\u00070\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u001b\"\u0004\b(\u0010$¨\u0006B"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;", "", "user", "", "", "Lkotlinx/serialization/Serializable;", "with", "Lcom/superwall/sdk/models/serialization/AnySerializer;", "device", "params", "products", "", "Lcom/superwall/sdk/models/product/ProductVariable;", "primary", "secondary", "tertiary", "<init>", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V", "userAttributes", "templateDeviceDictionary", "(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getUser", "()Ljava/util/Map;", "getDevice", "getParams", "getProducts", "()Ljava/util/List;", "setProducts", "(Ljava/util/List;)V", "getPrimary", "setPrimary", "(Ljava/util/Map;)V", "getSecondary", "setSecondary", "getTertiary", "setTertiary", "templated", "Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class Variables {
    private final Map<String, Object> device;
    private final Map<String, Object> params;
    private Map<String, ? extends Object> primary;
    private List<ProductVariable> products;
    private Map<String, ? extends Object> secondary;
    private Map<String, ? extends Object> tertiary;
    private final Map<String, Object> user;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new LinkedHashMapSerializer(StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(AnySerializer.INSTANCE)), new LinkedHashMapSerializer(StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(AnySerializer.INSTANCE)), new LinkedHashMapSerializer(StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(AnySerializer.INSTANCE)), new ArrayListSerializer(ProductVariableSerializer.INSTANCE), new LinkedHashMapSerializer(StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(AnySerializer.INSTANCE)), new LinkedHashMapSerializer(StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(AnySerializer.INSTANCE)), new LinkedHashMapSerializer(StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(AnySerializer.INSTANCE))};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Variables copy$default(Variables variables, Map map, Map map2, Map map3, List list, Map map4, Map map5, Map map6, int i, Object obj) {
        if ((i & 1) != 0) {
            map = variables.user;
        }
        if ((i & 2) != 0) {
            map2 = variables.device;
        }
        if ((i & 4) != 0) {
            map3 = variables.params;
        }
        if ((i & 8) != 0) {
            list = variables.products;
        }
        if ((i & 16) != 0) {
            map4 = variables.primary;
        }
        if ((i & 32) != 0) {
            map5 = variables.secondary;
        }
        if ((i & 64) != 0) {
            map6 = variables.tertiary;
        }
        Map map7 = map5;
        Map map8 = map6;
        Map map9 = map4;
        Map map10 = map3;
        return variables.copy(map, map2, map10, list, map9, map7, map8);
    }

    public final Map<String, Object> component1() {
        return this.user;
    }

    public final Map<String, Object> component2() {
        return this.device;
    }

    public final Map<String, Object> component3() {
        return this.params;
    }

    public final List<ProductVariable> component4() {
        return this.products;
    }

    public final Map<String, Object> component5() {
        return this.primary;
    }

    public final Map<String, Object> component6() {
        return this.secondary;
    }

    public final Map<String, Object> component7() {
        return this.tertiary;
    }

    public final Variables copy(Map<String, ? extends Object> user, Map<String, ? extends Object> device, Map<String, ? extends Object> params, List<ProductVariable> products, Map<String, ? extends Object> primary, Map<String, ? extends Object> secondary, Map<String, ? extends Object> tertiary) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(device, "device");
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(products, "products");
        Intrinsics.checkNotNullParameter(primary, "primary");
        Intrinsics.checkNotNullParameter(secondary, "secondary");
        Intrinsics.checkNotNullParameter(tertiary, "tertiary");
        return new Variables(user, device, params, products, primary, secondary, tertiary);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Variables)) {
            return false;
        }
        Variables variables = (Variables) other;
        return Intrinsics.areEqual(this.user, variables.user) && Intrinsics.areEqual(this.device, variables.device) && Intrinsics.areEqual(this.params, variables.params) && Intrinsics.areEqual(this.products, variables.products) && Intrinsics.areEqual(this.primary, variables.primary) && Intrinsics.areEqual(this.secondary, variables.secondary) && Intrinsics.areEqual(this.tertiary, variables.tertiary);
    }

    public int hashCode() {
        return (((((((((((this.user.hashCode() * 31) + this.device.hashCode()) * 31) + this.params.hashCode()) * 31) + this.products.hashCode()) * 31) + this.primary.hashCode()) * 31) + this.secondary.hashCode()) * 31) + this.tertiary.hashCode();
    }

    public String toString() {
        return "Variables(user=" + this.user + ", device=" + this.device + ", params=" + this.params + ", products=" + this.products + ", primary=" + this.primary + ", secondary=" + this.secondary + ", tertiary=" + this.tertiary + ")";
    }

    /* JADX INFO: compiled from: Variables.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<Variables> serializer() {
            return Variables$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ Variables(int i, Map map, Map map2, Map map3, List list, Map map4, Map map5, Map map6, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, Variables$$serializer.INSTANCE.getDescriptor());
        }
        this.user = map;
        this.device = map2;
        this.params = map3;
        if ((i & 8) == 0) {
            this.products = CollectionsKt.emptyList();
        } else {
            this.products = list;
        }
        if ((i & 16) == 0) {
            this.primary = MapsKt.emptyMap();
        } else {
            this.primary = map4;
        }
        if ((i & 32) == 0) {
            this.secondary = MapsKt.emptyMap();
        } else {
            this.secondary = map5;
        }
        if ((i & 64) == 0) {
            this.tertiary = MapsKt.emptyMap();
        } else {
            this.tertiary = map6;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(Variables self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.user);
        output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.device);
        output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.params);
        if (output.shouldEncodeElementDefault(serialDesc, 3) || !Intrinsics.areEqual(self.products, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 3, kSerializerArr[3], self.products);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || !Intrinsics.areEqual(self.primary, MapsKt.emptyMap())) {
            output.encodeSerializableElement(serialDesc, 4, kSerializerArr[4], self.primary);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || !Intrinsics.areEqual(self.secondary, MapsKt.emptyMap())) {
            output.encodeSerializableElement(serialDesc, 5, kSerializerArr[5], self.secondary);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 6) && Intrinsics.areEqual(self.tertiary, MapsKt.emptyMap())) {
            return;
        }
        output.encodeSerializableElement(serialDesc, 6, kSerializerArr[6], self.tertiary);
    }

    public Variables(Map<String, ? extends Object> user, Map<String, ? extends Object> device, Map<String, ? extends Object> params, List<ProductVariable> products, Map<String, ? extends Object> primary, Map<String, ? extends Object> secondary, Map<String, ? extends Object> tertiary) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(device, "device");
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(products, "products");
        Intrinsics.checkNotNullParameter(primary, "primary");
        Intrinsics.checkNotNullParameter(secondary, "secondary");
        Intrinsics.checkNotNullParameter(tertiary, "tertiary");
        this.user = user;
        this.device = device;
        this.params = params;
        this.products = products;
        this.primary = primary;
        this.secondary = secondary;
        this.tertiary = tertiary;
    }

    public final Map<String, Object> getUser() {
        return this.user;
    }

    public final Map<String, Object> getDevice() {
        return this.device;
    }

    public final Map<String, Object> getParams() {
        return this.params;
    }

    public /* synthetic */ Variables(Map map, Map map2, Map map3, List list, Map map4, Map map5, Map map6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(map, map2, map3, (i & 8) != 0 ? CollectionsKt.emptyList() : list, (i & 16) != 0 ? MapsKt.emptyMap() : map4, (i & 32) != 0 ? MapsKt.emptyMap() : map5, (i & 64) != 0 ? MapsKt.emptyMap() : map6);
    }

    public final List<ProductVariable> getProducts() {
        return this.products;
    }

    public final void setProducts(List<ProductVariable> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.products = list;
    }

    public final Map<String, Object> getPrimary() {
        return this.primary;
    }

    public final void setPrimary(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.primary = map;
    }

    public final Map<String, Object> getSecondary() {
        return this.secondary;
    }

    public final void setSecondary(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.secondary = map;
    }

    public final Map<String, Object> getTertiary() {
        return this.tertiary;
    }

    public final void setTertiary(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.tertiary = map;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Variables(List<ProductVariable> list, Map<String, ? extends Object> map, Map<String, ? extends Object> userAttributes, Map<String, ? extends Object> map2) {
        this(userAttributes, map2 == null ? MapsKt.emptyMap() : map2, map == null ? MapsKt.emptyMap() : map, (List) null, (Map) null, (Map) null, (Map) null, 120, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(userAttributes, "userAttributes");
        if (list != null) {
            for (ProductVariable productVariable : list) {
                String name = productVariable.getName();
                int iHashCode = name.hashCode();
                if (iHashCode != -1174796206) {
                    if (iHashCode != -817598092) {
                        if (iHashCode == -314765822 && name.equals("primary")) {
                            this.primary = productVariable.getAttributes();
                        }
                    } else if (name.equals("secondary")) {
                        this.secondary = productVariable.getAttributes();
                    }
                } else if (name.equals("tertiary")) {
                    this.tertiary = productVariable.getAttributes();
                }
            }
        }
        if (list != null) {
            this.products = list;
        }
    }

    public final JsonVariables templated() {
        return new JsonVariables("template_variables", this);
    }
}
