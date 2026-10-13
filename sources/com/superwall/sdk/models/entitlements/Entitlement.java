package com.superwall.sdk.models.entitlements;

import com.superwall.sdk.models.product.Store;
import com.superwall.sdk.models.serialization.DateSerializer;
import com.superwall.sdk.store.abstractions.product.receipt.LatestPeriodType;
import com.superwall.sdk.store.abstractions.product.receipt.LatestSubscriptionState;
import expo.modules.notifications.service.NotificationsService;
import java.lang.annotation.Annotation;
import java.util.Date;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.LinkedHashSetSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Entitlement.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b=\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 d2\u00020\u0001:\u0003cdeB\u009f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0017\u0010\u0018B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0017\u0010\u0019B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0017\u0010\u001aB¡\u0001\b\u0010\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b\u0017\u0010\u001fJ\u000e\u0010G\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\u0000J\t\u0010I\u001a\u00020\u0003HÆ\u0003J\t\u0010J\u001a\u00020\u0005HÆ\u0003J\t\u0010K\u001a\u00020\u0007HÆ\u0003J\u000f\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00030\tHÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0010\u0010Q\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u00106J\u0010\u0010R\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u00106J\u000b\u0010S\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0016HÆ\u0003J¨\u0001\u0010V\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÆ\u0001¢\u0006\u0002\u0010WJ\u0013\u0010X\u001a\u00020\u00072\b\u0010H\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010Y\u001a\u00020\u001cHÖ\u0001J\t\u0010Z\u001a\u00020\u0003HÖ\u0001J%\u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020\u00002\u0006\u0010^\u001a\u00020_2\u0006\u0010`\u001a\u00020aH\u0001¢\u0006\u0002\bbR\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b$\u0010!\u001a\u0004\b%\u0010&R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b'\u0010!\u001a\u0004\b\u0006\u0010(R\"\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b)\u0010!\u001a\u0004\b*\u0010+R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b,\u0010!\u001a\u0004\b-\u0010#R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b.\u0010!\u001a\u0004\b/\u00100R\u001e\u0010\r\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b1\u0010!\u001a\u0004\b2\u00100R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b3\u0010!\u001a\u0004\b4\u00100R \u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u00107\u0012\u0004\b5\u0010!\u001a\u0004\b\u000f\u00106R \u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u00107\u0012\u0004\b8\u0010!\u001a\u0004\b9\u00106R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b:\u0010!\u001a\u0004\b;\u0010<R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b=\u0010!\u001a\u0004\b>\u0010?R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b@\u0010!\u001a\u0004\bA\u0010BR\u0013\u0010C\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\bC\u00106R\u0013\u0010D\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bE\u00100R\u0013\u0010F\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\bF\u00106¨\u0006f"}, d2 = {"Lcom/superwall/sdk/models/entitlements/Entitlement;", "", "id", "", "type", "Lcom/superwall/sdk/models/entitlements/Entitlement$Type;", "isActive", "", "productIds", "", "latestProductId", "startsAt", "Ljava/util/Date;", "renewedAt", "expiresAt", "isLifetime", "willRenew", "state", "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;", "offerType", "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;", "store", "Lcom/superwall/sdk/models/product/Store;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;)V", "(Ljava/lang/String;)V", "(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getId$annotations", "()V", "getId", "()Ljava/lang/String;", "getType$annotations", "getType", "()Lcom/superwall/sdk/models/entitlements/Entitlement$Type;", "isActive$annotations", "()Z", "getProductIds$annotations", "getProductIds", "()Ljava/util/Set;", "getLatestProductId$annotations", "getLatestProductId", "getStartsAt$annotations", "getStartsAt", "()Ljava/util/Date;", "getRenewedAt$annotations", "getRenewedAt", "getExpiresAt$annotations", "getExpiresAt", "isLifetime$annotations", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getWillRenew$annotations", "getWillRenew", "getState$annotations", "getState", "()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;", "getOfferType$annotations", "getOfferType", "()Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;", "getStore$annotations", "getStore", "()Lcom/superwall/sdk/models/product/Store;", "isRevoked", "renewsAt", "getRenewsAt", "isInGracePeriod", "isDistinct", "other", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "(Ljava/lang/String;Lcom/superwall/sdk/models/entitlements/Entitlement$Type;ZLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;Lcom/superwall/sdk/models/product/Store;)Lcom/superwall/sdk/models/entitlements/Entitlement;", "equals", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Type", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class Entitlement {
    private final Date expiresAt;
    private final String id;
    private final boolean isActive;
    private final Boolean isLifetime;
    private final String latestProductId;
    private final LatestPeriodType offerType;
    private final Set<String> productIds;
    private final Date renewedAt;
    private final Date startsAt;
    private final LatestSubscriptionState state;
    private final Store store;
    private final Type type;
    private final Boolean willRenew;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, Type.INSTANCE.serializer(), null, new LinkedHashSetSerializer(StringSerializer.INSTANCE), null, null, null, null, null, null, LatestSubscriptionState.INSTANCE.serializer(), LatestPeriodType.INSTANCE.serializer(), Store.INSTANCE.serializer()};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Entitlement copy$default(Entitlement entitlement, String str, Type type, boolean z, Set set, String str2, Date date, Date date2, Date date3, Boolean bool, Boolean bool2, LatestSubscriptionState latestSubscriptionState, LatestPeriodType latestPeriodType, Store store, int i, Object obj) {
        if ((i & 1) != 0) {
            str = entitlement.id;
        }
        return entitlement.copy(str, (i & 2) != 0 ? entitlement.type : type, (i & 4) != 0 ? entitlement.isActive : z, (i & 8) != 0 ? entitlement.productIds : set, (i & 16) != 0 ? entitlement.latestProductId : str2, (i & 32) != 0 ? entitlement.startsAt : date, (i & 64) != 0 ? entitlement.renewedAt : date2, (i & 128) != 0 ? entitlement.expiresAt : date3, (i & 256) != 0 ? entitlement.isLifetime : bool, (i & 512) != 0 ? entitlement.willRenew : bool2, (i & 1024) != 0 ? entitlement.state : latestSubscriptionState, (i & 2048) != 0 ? entitlement.offerType : latestPeriodType, (i & 4096) != 0 ? entitlement.store : store);
    }

    @SerialName("expiresAt")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getExpiresAt$annotations() {
    }

    @SerialName(NotificationsService.IDENTIFIER_KEY)
    public static /* synthetic */ void getId$annotations() {
    }

    @SerialName("latestProductId")
    public static /* synthetic */ void getLatestProductId$annotations() {
    }

    @SerialName("offerType")
    public static /* synthetic */ void getOfferType$annotations() {
    }

    @SerialName("productIds")
    public static /* synthetic */ void getProductIds$annotations() {
    }

    @SerialName("renewedAt")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getRenewedAt$annotations() {
    }

    @SerialName("startsAt")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getStartsAt$annotations() {
    }

    @SerialName("state")
    public static /* synthetic */ void getState$annotations() {
    }

    @SerialName("store")
    public static /* synthetic */ void getStore$annotations() {
    }

    @SerialName("type")
    public static /* synthetic */ void getType$annotations() {
    }

    @SerialName("willRenew")
    public static /* synthetic */ void getWillRenew$annotations() {
    }

    @SerialName("isActive")
    public static /* synthetic */ void isActive$annotations() {
    }

    @SerialName("isLifetime")
    public static /* synthetic */ void isLifetime$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Boolean getWillRenew() {
        return this.willRenew;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final LatestSubscriptionState getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final LatestPeriodType getOfferType() {
        return this.offerType;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Store getStore() {
        return this.store;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Type getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsActive() {
        return this.isActive;
    }

    public final Set<String> component4() {
        return this.productIds;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getLatestProductId() {
        return this.latestProductId;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Date getStartsAt() {
        return this.startsAt;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Date getRenewedAt() {
        return this.renewedAt;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Date getExpiresAt() {
        return this.expiresAt;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Boolean getIsLifetime() {
        return this.isLifetime;
    }

    public final Entitlement copy(String id, Type type, boolean isActive, Set<String> productIds, String latestProductId, Date startsAt, Date renewedAt, Date expiresAt, Boolean isLifetime, Boolean willRenew, LatestSubscriptionState state, LatestPeriodType offerType, Store store) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(productIds, "productIds");
        return new Entitlement(id, type, isActive, productIds, latestProductId, startsAt, renewedAt, expiresAt, isLifetime, willRenew, state, offerType, store);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Entitlement)) {
            return false;
        }
        Entitlement entitlement = (Entitlement) other;
        return Intrinsics.areEqual(this.id, entitlement.id) && this.type == entitlement.type && this.isActive == entitlement.isActive && Intrinsics.areEqual(this.productIds, entitlement.productIds) && Intrinsics.areEqual(this.latestProductId, entitlement.latestProductId) && Intrinsics.areEqual(this.startsAt, entitlement.startsAt) && Intrinsics.areEqual(this.renewedAt, entitlement.renewedAt) && Intrinsics.areEqual(this.expiresAt, entitlement.expiresAt) && Intrinsics.areEqual(this.isLifetime, entitlement.isLifetime) && Intrinsics.areEqual(this.willRenew, entitlement.willRenew) && this.state == entitlement.state && this.offerType == entitlement.offerType && this.store == entitlement.store;
    }

    public int hashCode() {
        int iHashCode = ((((((this.id.hashCode() * 31) + this.type.hashCode()) * 31) + Boolean.hashCode(this.isActive)) * 31) + this.productIds.hashCode()) * 31;
        String str = this.latestProductId;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Date date = this.startsAt;
        int iHashCode3 = (iHashCode2 + (date == null ? 0 : date.hashCode())) * 31;
        Date date2 = this.renewedAt;
        int iHashCode4 = (iHashCode3 + (date2 == null ? 0 : date2.hashCode())) * 31;
        Date date3 = this.expiresAt;
        int iHashCode5 = (iHashCode4 + (date3 == null ? 0 : date3.hashCode())) * 31;
        Boolean bool = this.isLifetime;
        int iHashCode6 = (iHashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.willRenew;
        int iHashCode7 = (iHashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        LatestSubscriptionState latestSubscriptionState = this.state;
        int iHashCode8 = (iHashCode7 + (latestSubscriptionState == null ? 0 : latestSubscriptionState.hashCode())) * 31;
        LatestPeriodType latestPeriodType = this.offerType;
        int iHashCode9 = (iHashCode8 + (latestPeriodType == null ? 0 : latestPeriodType.hashCode())) * 31;
        Store store = this.store;
        return iHashCode9 + (store != null ? store.hashCode() : 0);
    }

    public final Boolean isRevoked() {
        return null;
    }

    public String toString() {
        return "Entitlement(id=" + this.id + ", type=" + this.type + ", isActive=" + this.isActive + ", productIds=" + this.productIds + ", latestProductId=" + this.latestProductId + ", startsAt=" + this.startsAt + ", renewedAt=" + this.renewedAt + ", expiresAt=" + this.expiresAt + ", isLifetime=" + this.isLifetime + ", willRenew=" + this.willRenew + ", state=" + this.state + ", offerType=" + this.offerType + ", store=" + this.store + ")";
    }

    public /* synthetic */ Entitlement(int i, String str, Type type, boolean z, Set set, String str2, Date date, Date date2, Date date3, Boolean bool, Boolean bool2, LatestSubscriptionState latestSubscriptionState, LatestPeriodType latestPeriodType, Store store, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, Entitlement$$serializer.INSTANCE.getDescriptor());
        }
        this.id = str;
        if ((i & 2) == 0) {
            this.type = Type.SERVICE_LEVEL;
        } else {
            this.type = type;
        }
        if ((i & 4) == 0) {
            this.isActive = false;
        } else {
            this.isActive = z;
        }
        if ((i & 8) == 0) {
            this.productIds = SetsKt.emptySet();
        } else {
            this.productIds = set;
        }
        if ((i & 16) == 0) {
            this.latestProductId = null;
        } else {
            this.latestProductId = str2;
        }
        if ((i & 32) == 0) {
            this.startsAt = null;
        } else {
            this.startsAt = date;
        }
        if ((i & 64) == 0) {
            this.renewedAt = null;
        } else {
            this.renewedAt = date2;
        }
        if ((i & 128) == 0) {
            this.expiresAt = null;
        } else {
            this.expiresAt = date3;
        }
        if ((i & 256) == 0) {
            this.isLifetime = null;
        } else {
            this.isLifetime = bool;
        }
        if ((i & 512) == 0) {
            this.willRenew = null;
        } else {
            this.willRenew = bool2;
        }
        if ((i & 1024) == 0) {
            this.state = null;
        } else {
            this.state = latestSubscriptionState;
        }
        if ((i & 2048) == 0) {
            this.offerType = null;
        } else {
            this.offerType = latestPeriodType;
        }
        if ((i & 4096) == 0) {
            this.store = null;
        } else {
            this.store = store;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(Entitlement self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.id);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.type != Type.SERVICE_LEVEL) {
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.type);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.isActive) {
            output.encodeBooleanElement(serialDesc, 2, self.isActive);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || !Intrinsics.areEqual(self.productIds, SetsKt.emptySet())) {
            output.encodeSerializableElement(serialDesc, 3, kSerializerArr[3], self.productIds);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.latestProductId != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.latestProductId);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.startsAt != null) {
            output.encodeNullableSerializableElement(serialDesc, 5, DateSerializer.INSTANCE, self.startsAt);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) || self.renewedAt != null) {
            output.encodeNullableSerializableElement(serialDesc, 6, DateSerializer.INSTANCE, self.renewedAt);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 7) || self.expiresAt != null) {
            output.encodeNullableSerializableElement(serialDesc, 7, DateSerializer.INSTANCE, self.expiresAt);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 8) || self.isLifetime != null) {
            output.encodeNullableSerializableElement(serialDesc, 8, BooleanSerializer.INSTANCE, self.isLifetime);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 9) || self.willRenew != null) {
            output.encodeNullableSerializableElement(serialDesc, 9, BooleanSerializer.INSTANCE, self.willRenew);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 10) || self.state != null) {
            output.encodeNullableSerializableElement(serialDesc, 10, kSerializerArr[10], self.state);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 11) || self.offerType != null) {
            output.encodeNullableSerializableElement(serialDesc, 11, kSerializerArr[11], self.offerType);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 12) && self.store == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 12, kSerializerArr[12], self.store);
    }

    public Entitlement(String id, Type type, boolean z, Set<String> productIds, String str, Date date, Date date2, Date date3, Boolean bool, Boolean bool2, LatestSubscriptionState latestSubscriptionState, LatestPeriodType latestPeriodType, Store store) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(productIds, "productIds");
        this.id = id;
        this.type = type;
        this.isActive = z;
        this.productIds = productIds;
        this.latestProductId = str;
        this.startsAt = date;
        this.renewedAt = date2;
        this.expiresAt = date3;
        this.isLifetime = bool;
        this.willRenew = bool2;
        this.state = latestSubscriptionState;
        this.offerType = latestPeriodType;
        this.store = store;
    }

    public final String getId() {
        return this.id;
    }

    public final Type getType() {
        return this.type;
    }

    public /* synthetic */ Entitlement(String str, Type type, boolean z, Set set, String str2, Date date, Date date2, Date date3, Boolean bool, Boolean bool2, LatestSubscriptionState latestSubscriptionState, LatestPeriodType latestPeriodType, Store store, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? Type.SERVICE_LEVEL : type, (i & 4) != 0 ? false : z, (i & 8) != 0 ? SetsKt.emptySet() : set, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : date, (i & 64) != 0 ? null : date2, (i & 128) != 0 ? null : date3, (i & 256) != 0 ? null : bool, (i & 512) != 0 ? null : bool2, (i & 1024) != 0 ? null : latestSubscriptionState, (i & 2048) != 0 ? null : latestPeriodType, (i & 4096) != 0 ? null : store);
    }

    public final boolean isActive() {
        return this.isActive;
    }

    public final Set<String> getProductIds() {
        return this.productIds;
    }

    public final String getLatestProductId() {
        return this.latestProductId;
    }

    public final Date getStartsAt() {
        return this.startsAt;
    }

    public final Date getRenewedAt() {
        return this.renewedAt;
    }

    public final Date getExpiresAt() {
        return this.expiresAt;
    }

    public final Boolean isLifetime() {
        return this.isLifetime;
    }

    public final Boolean getWillRenew() {
        return this.willRenew;
    }

    public final LatestSubscriptionState getState() {
        return this.state;
    }

    public final LatestPeriodType getOfferType() {
        return this.offerType;
    }

    public final Store getStore() {
        return this.store;
    }

    /* JADX INFO: compiled from: Entitlement.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\b¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/models/entitlements/Entitlement$Type;", "", "raw", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getRaw", "()Ljava/lang/String;", "SERVICE_LEVEL", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public enum Type {
        SERVICE_LEVEL("SERVICE_LEVEL");

        private final String raw;
        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.entitlements.Entitlement$Type$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Entitlement.Type._init_$_anonymous_();
            }
        });

        public static EnumEntries<Type> getEntries() {
            return $ENTRIES;
        }

        /* JADX INFO: compiled from: Entitlement.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/entitlements/Entitlement$Type$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/entitlements/Entitlement$Type;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private final /* synthetic */ KSerializer get$cachedSerializer() {
                return (KSerializer) Type.$cachedSerializer$delegate.getValue();
            }

            public final KSerializer<Type> serializer() {
                return get$cachedSerializer();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return EnumsKt.createAnnotatedEnumSerializer("com.superwall.sdk.models.entitlements.Entitlement.Type", values(), new String[]{"SERVICE_LEVEL"}, new Annotation[][]{null}, null);
        }

        Type(String str) {
            this.raw = str;
        }

        public final String getRaw() {
            return this.raw;
        }
    }

    public final Date getRenewsAt() {
        if (this.isActive && Intrinsics.areEqual((Object) this.willRenew, (Object) true)) {
            return this.expiresAt;
        }
        return null;
    }

    public final Boolean isInGracePeriod() {
        LatestSubscriptionState latestSubscriptionState = this.state;
        if (latestSubscriptionState != null) {
            return Boolean.valueOf(latestSubscriptionState == LatestSubscriptionState.GRACE_PERIOD);
        }
        return null;
    }

    public final boolean isDistinct(Entitlement other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return (Intrinsics.areEqual(this.id, other.id) && this.type == other.type && this.isActive == other.isActive && Intrinsics.areEqual(this.startsAt, other.startsAt) && Intrinsics.areEqual(this.renewedAt, other.renewedAt) && Intrinsics.areEqual(this.expiresAt, other.expiresAt) && Intrinsics.areEqual(this.isLifetime, other.isLifetime) && Intrinsics.areEqual(this.willRenew, other.willRenew) && this.state == other.state && this.offerType == other.offerType && this.store == other.store) ? false : true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Entitlement(String id) {
        this(id, Type.SERVICE_LEVEL, true, (Set) null, (String) null, (Date) null, (Date) null, (Date) null, (Boolean) null, (Boolean) null, (LatestSubscriptionState) null, (LatestPeriodType) null, (Store) null, 8184, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(id, "id");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Entitlement(String id, Type type) {
        this(id, type, true, (Set) null, (String) null, (Date) null, (Date) null, (Date) null, (Boolean) null, (Boolean) null, (LatestSubscriptionState) null, (LatestPeriodType) null, (Store) null, 8184, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(type, "type");
    }

    /* JADX INFO: compiled from: Entitlement.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/entitlements/Entitlement$Companion;", "", "<init>", "()V", "stub", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Entitlement> serializer() {
            return Entitlement$$serializer.INSTANCE;
        }

        public final Entitlement stub() {
            return new Entitlement("test", Type.SERVICE_LEVEL);
        }
    }
}
