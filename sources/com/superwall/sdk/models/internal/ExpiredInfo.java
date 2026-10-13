package com.superwall.sdk.models.internal;

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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0002#$B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007B-\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00032\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\tHÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0001¢\u0006\u0002\b\"R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013¨\u0006%"}, d2 = {"Lcom/superwall/sdk/models/internal/ExpiredInfo;", "", "resent", "", "obfuscatedEmail", "", "<init>", "(ZLjava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getResent$annotations", "()V", "getResent", "()Z", "getObfuscatedEmail$annotations", "getObfuscatedEmail", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class ExpiredInfo {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String obfuscatedEmail;
    private final boolean resent;

    public static /* synthetic */ ExpiredInfo copy$default(ExpiredInfo expiredInfo, boolean z, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            z = expiredInfo.resent;
        }
        if ((i & 2) != 0) {
            str = expiredInfo.obfuscatedEmail;
        }
        return expiredInfo.copy(z, str);
    }

    @SerialName("obfuscatedEmail")
    public static /* synthetic */ void getObfuscatedEmail$annotations() {
    }

    @SerialName("resent")
    public static /* synthetic */ void getResent$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getResent() {
        return this.resent;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getObfuscatedEmail() {
        return this.obfuscatedEmail;
    }

    public final ExpiredInfo copy(boolean resent, String obfuscatedEmail) {
        return new ExpiredInfo(resent, obfuscatedEmail);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ExpiredInfo)) {
            return false;
        }
        ExpiredInfo expiredInfo = (ExpiredInfo) other;
        return this.resent == expiredInfo.resent && Intrinsics.areEqual(this.obfuscatedEmail, expiredInfo.obfuscatedEmail);
    }

    public int hashCode() {
        int iHashCode = Boolean.hashCode(this.resent) * 31;
        String str = this.obfuscatedEmail;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "ExpiredInfo(resent=" + this.resent + ", obfuscatedEmail=" + this.obfuscatedEmail + ")";
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/ExpiredInfo$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/ExpiredInfo;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<ExpiredInfo> serializer() {
            return ExpiredInfo$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ExpiredInfo(int i, boolean z, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, ExpiredInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.resent = z;
        if ((i & 2) == 0) {
            this.obfuscatedEmail = null;
        } else {
            this.obfuscatedEmail = str;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(ExpiredInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeBooleanElement(serialDesc, 0, self.resent);
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && self.obfuscatedEmail == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.obfuscatedEmail);
    }

    public ExpiredInfo(boolean z, String str) {
        this.resent = z;
        this.obfuscatedEmail = str;
    }

    public /* synthetic */ ExpiredInfo(boolean z, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i & 2) != 0 ? null : str);
    }

    public final boolean getResent() {
        return this.resent;
    }

    public final String getObfuscatedEmail() {
        return this.obfuscatedEmail;
    }
}
