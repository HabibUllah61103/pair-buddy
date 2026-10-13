package com.superwall.sdk.models.internal;

import com.superwall.sdk.identity.Keys;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: WebRedemption.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 )2\u00020\u0001:\u0002()B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J)\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\nHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J%\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0001¢\u0006\u0002\b'R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0016¨\u0006*"}, d2 = {"Lcom/superwall/sdk/models/internal/PurchaserInfo;", "", Keys.APP_USER_ID, "", "email", "storeIdentifiers", "Lcom/superwall/sdk/models/internal/StoreIdentifiers;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/StoreIdentifiers;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/internal/StoreIdentifiers;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getAppUserId$annotations", "()V", "getAppUserId", "()Ljava/lang/String;", "getEmail$annotations", "getEmail", "getStoreIdentifiers$annotations", "getStoreIdentifiers", "()Lcom/superwall/sdk/models/internal/StoreIdentifiers;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class PurchaserInfo {
    private final String appUserId;
    private final String email;
    private final StoreIdentifiers storeIdentifiers;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, StoreIdentifiers.INSTANCE.serializer()};

    public static /* synthetic */ PurchaserInfo copy$default(PurchaserInfo purchaserInfo, String str, String str2, StoreIdentifiers storeIdentifiers, int i, Object obj) {
        if ((i & 1) != 0) {
            str = purchaserInfo.appUserId;
        }
        if ((i & 2) != 0) {
            str2 = purchaserInfo.email;
        }
        if ((i & 4) != 0) {
            storeIdentifiers = purchaserInfo.storeIdentifiers;
        }
        return purchaserInfo.copy(str, str2, storeIdentifiers);
    }

    @SerialName(Keys.APP_USER_ID)
    public static /* synthetic */ void getAppUserId$annotations() {
    }

    @SerialName("email")
    public static /* synthetic */ void getEmail$annotations() {
    }

    @SerialName("storeIdentifiers")
    public static /* synthetic */ void getStoreIdentifiers$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppUserId() {
        return this.appUserId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final StoreIdentifiers getStoreIdentifiers() {
        return this.storeIdentifiers;
    }

    public final PurchaserInfo copy(String appUserId, String email, StoreIdentifiers storeIdentifiers) {
        Intrinsics.checkNotNullParameter(appUserId, "appUserId");
        Intrinsics.checkNotNullParameter(storeIdentifiers, "storeIdentifiers");
        return new PurchaserInfo(appUserId, email, storeIdentifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PurchaserInfo)) {
            return false;
        }
        PurchaserInfo purchaserInfo = (PurchaserInfo) other;
        return Intrinsics.areEqual(this.appUserId, purchaserInfo.appUserId) && Intrinsics.areEqual(this.email, purchaserInfo.email) && Intrinsics.areEqual(this.storeIdentifiers, purchaserInfo.storeIdentifiers);
    }

    public int hashCode() {
        int iHashCode = this.appUserId.hashCode() * 31;
        String str = this.email;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.storeIdentifiers.hashCode();
    }

    public String toString() {
        return "PurchaserInfo(appUserId=" + this.appUserId + ", email=" + this.email + ", storeIdentifiers=" + this.storeIdentifiers + ")";
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/PurchaserInfo$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/PurchaserInfo;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<PurchaserInfo> serializer() {
            return PurchaserInfo$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ PurchaserInfo(int i, String str, String str2, StoreIdentifiers storeIdentifiers, SerializationConstructorMarker serializationConstructorMarker) {
        if (5 != (i & 5)) {
            PluginExceptionsKt.throwMissingFieldException(i, 5, PurchaserInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.appUserId = str;
        if ((i & 2) == 0) {
            this.email = null;
        } else {
            this.email = str2;
        }
        this.storeIdentifiers = storeIdentifiers;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(PurchaserInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.appUserId);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.email != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.email);
        }
        output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.storeIdentifiers);
    }

    public PurchaserInfo(String appUserId, String str, StoreIdentifiers storeIdentifiers) {
        Intrinsics.checkNotNullParameter(appUserId, "appUserId");
        Intrinsics.checkNotNullParameter(storeIdentifiers, "storeIdentifiers");
        this.appUserId = appUserId;
        this.email = str;
        this.storeIdentifiers = storeIdentifiers;
    }

    public /* synthetic */ PurchaserInfo(String str, String str2, StoreIdentifiers storeIdentifiers, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, storeIdentifiers);
    }

    public final String getAppUserId() {
        return this.appUserId;
    }

    public final String getEmail() {
        return this.email;
    }

    public final StoreIdentifiers getStoreIdentifiers() {
        return this.storeIdentifiers;
    }
}
