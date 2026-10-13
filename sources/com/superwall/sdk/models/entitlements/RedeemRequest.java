package com.superwall.sdk.models.entitlements;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.superwall.sdk.identity.Keys;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;

/* JADX INFO: compiled from: RedeemRequest.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 >2\u00020\u0001:\u0002=>Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010By\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u000f\u0010\u0015J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010+\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\u000f\u0010,\u001a\b\u0012\u0004\u0012\u00020\n0\u0007HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\u0017\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rHÆ\u0003Jm\u0010/\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u00032\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rHÆ\u0001J\u0013\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00103\u001a\u00020\u0012HÖ\u0001J\t\u00104\u001a\u00020\u0003HÖ\u0001J%\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u00002\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0001¢\u0006\u0002\b<R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001a\u0010\u0017\u001a\u0004\b\u001b\u0010\u0019R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u0019R\"\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001e\u0010\u0017\u001a\u0004\b\u001f\u0010 R\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b!\u0010\u0017\u001a\u0004\b\"\u0010 R\u001c\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b#\u0010\u0017\u001a\u0004\b$\u0010\u0019R*\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b%\u0010\u0017\u001a\u0004\b&\u0010'¨\u0006?"}, d2 = {"Lcom/superwall/sdk/models/entitlements/RedeemRequest;", "", "deviceId", "", "userId", Keys.ALIAS_ID, "codes", "", "Lcom/superwall/sdk/models/entitlements/Redeemable;", "receipts", "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;", "externalAccountId", TtmlNode.TAG_METADATA, "", "Lkotlinx/serialization/json/JsonElement;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getDeviceId$annotations", "()V", "getDeviceId", "()Ljava/lang/String;", "getUserId$annotations", "getUserId", "getAliasId$annotations", "getAliasId", "getCodes$annotations", "getCodes", "()Ljava/util/List;", "getReceipts$annotations", "getReceipts", "getExternalAccountId$annotations", "getExternalAccountId", "getMetadata$annotations", "getMetadata", "()Ljava/util/Map;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class RedeemRequest {
    private final String aliasId;
    private final List<Redeemable> codes;
    private final String deviceId;
    private final String externalAccountId;
    private final Map<String, JsonElement> metadata;
    private final List<TransactionReceipt> receipts;
    private final String userId;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, new ArrayListSerializer(Redeemable$$serializer.INSTANCE), new ArrayListSerializer(TransactionReceipt$$serializer.INSTANCE), null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, JsonElementSerializer.INSTANCE)};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RedeemRequest copy$default(RedeemRequest redeemRequest, String str, String str2, String str3, List list, List list2, String str4, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = redeemRequest.deviceId;
        }
        if ((i & 2) != 0) {
            str2 = redeemRequest.userId;
        }
        if ((i & 4) != 0) {
            str3 = redeemRequest.aliasId;
        }
        if ((i & 8) != 0) {
            list = redeemRequest.codes;
        }
        if ((i & 16) != 0) {
            list2 = redeemRequest.receipts;
        }
        if ((i & 32) != 0) {
            str4 = redeemRequest.externalAccountId;
        }
        if ((i & 64) != 0) {
            map = redeemRequest.metadata;
        }
        String str5 = str4;
        Map map2 = map;
        List list3 = list2;
        String str6 = str3;
        return redeemRequest.copy(str, str2, str6, list, list3, str5, map2);
    }

    @SerialName(Keys.ALIAS_ID)
    public static /* synthetic */ void getAliasId$annotations() {
    }

    @SerialName("codes")
    public static /* synthetic */ void getCodes$annotations() {
    }

    @SerialName("deviceId")
    public static /* synthetic */ void getDeviceId$annotations() {
    }

    @SerialName("externalAccountId")
    public static /* synthetic */ void getExternalAccountId$annotations() {
    }

    @SerialName(TtmlNode.TAG_METADATA)
    public static /* synthetic */ void getMetadata$annotations() {
    }

    @SerialName("receipts")
    public static /* synthetic */ void getReceipts$annotations() {
    }

    @SerialName(Keys.APP_USER_ID)
    public static /* synthetic */ void getUserId$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDeviceId() {
        return this.deviceId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAliasId() {
        return this.aliasId;
    }

    public final List<Redeemable> component4() {
        return this.codes;
    }

    public final List<TransactionReceipt> component5() {
        return this.receipts;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getExternalAccountId() {
        return this.externalAccountId;
    }

    public final Map<String, JsonElement> component7() {
        return this.metadata;
    }

    public final RedeemRequest copy(String deviceId, String userId, String aliasId, List<Redeemable> codes, List<TransactionReceipt> receipts, String externalAccountId, Map<String, ? extends JsonElement> metadata) {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(codes, "codes");
        Intrinsics.checkNotNullParameter(receipts, "receipts");
        Intrinsics.checkNotNullParameter(externalAccountId, "externalAccountId");
        return new RedeemRequest(deviceId, userId, aliasId, codes, receipts, externalAccountId, metadata);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RedeemRequest)) {
            return false;
        }
        RedeemRequest redeemRequest = (RedeemRequest) other;
        return Intrinsics.areEqual(this.deviceId, redeemRequest.deviceId) && Intrinsics.areEqual(this.userId, redeemRequest.userId) && Intrinsics.areEqual(this.aliasId, redeemRequest.aliasId) && Intrinsics.areEqual(this.codes, redeemRequest.codes) && Intrinsics.areEqual(this.receipts, redeemRequest.receipts) && Intrinsics.areEqual(this.externalAccountId, redeemRequest.externalAccountId) && Intrinsics.areEqual(this.metadata, redeemRequest.metadata);
    }

    public int hashCode() {
        int iHashCode = this.deviceId.hashCode() * 31;
        String str = this.userId;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.aliasId;
        int iHashCode3 = (((((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.codes.hashCode()) * 31) + this.receipts.hashCode()) * 31) + this.externalAccountId.hashCode()) * 31;
        Map<String, JsonElement> map = this.metadata;
        return iHashCode3 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "RedeemRequest(deviceId=" + this.deviceId + ", userId=" + this.userId + ", aliasId=" + this.aliasId + ", codes=" + this.codes + ", receipts=" + this.receipts + ", externalAccountId=" + this.externalAccountId + ", metadata=" + this.metadata + ")";
    }

    /* JADX INFO: compiled from: RedeemRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/entitlements/RedeemRequest$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/entitlements/RedeemRequest;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<RedeemRequest> serializer() {
            return RedeemRequest$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RedeemRequest(int i, String str, String str2, String str3, List list, List list2, String str4, Map map, SerializationConstructorMarker serializationConstructorMarker) {
        if (59 != (i & 59)) {
            PluginExceptionsKt.throwMissingFieldException(i, 59, RedeemRequest$$serializer.INSTANCE.getDescriptor());
        }
        this.deviceId = str;
        this.userId = str2;
        if ((i & 4) == 0) {
            this.aliasId = null;
        } else {
            this.aliasId = str3;
        }
        this.codes = list;
        this.receipts = list2;
        this.externalAccountId = str4;
        if ((i & 64) == 0) {
            this.metadata = null;
        } else {
            this.metadata = map;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(RedeemRequest self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.deviceId);
        output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.userId);
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.aliasId != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.aliasId);
        }
        output.encodeSerializableElement(serialDesc, 3, kSerializerArr[3], self.codes);
        output.encodeSerializableElement(serialDesc, 4, kSerializerArr[4], self.receipts);
        output.encodeStringElement(serialDesc, 5, self.externalAccountId);
        if (!output.shouldEncodeElementDefault(serialDesc, 6) && self.metadata == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 6, kSerializerArr[6], self.metadata);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RedeemRequest(String deviceId, String str, String str2, List<Redeemable> codes, List<TransactionReceipt> receipts, String externalAccountId, Map<String, ? extends JsonElement> map) {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(codes, "codes");
        Intrinsics.checkNotNullParameter(receipts, "receipts");
        Intrinsics.checkNotNullParameter(externalAccountId, "externalAccountId");
        this.deviceId = deviceId;
        this.userId = str;
        this.aliasId = str2;
        this.codes = codes;
        this.receipts = receipts;
        this.externalAccountId = externalAccountId;
        this.metadata = map;
    }

    public /* synthetic */ RedeemRequest(String str, String str2, String str3, List list, List list2, String str4, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3, list, list2, str4, (i & 64) != 0 ? null : map);
    }

    public final String getDeviceId() {
        return this.deviceId;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final String getAliasId() {
        return this.aliasId;
    }

    public final List<Redeemable> getCodes() {
        return this.codes;
    }

    public final List<TransactionReceipt> getReceipts() {
        return this.receipts;
    }

    public final String getExternalAccountId() {
        return this.externalAccountId;
    }

    public final Map<String, JsonElement> getMetadata() {
        return this.metadata;
    }
}
