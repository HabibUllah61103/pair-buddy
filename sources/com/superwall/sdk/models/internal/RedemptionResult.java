package com.superwall.sdk.models.internal;

import com.google.firebase.messaging.Constants;
import expo.modules.notifications.service.NotificationsService;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
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
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonClassDiscriminator;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;

/* JADX INFO: compiled from: WebRedemption.kt */
/* JADX INFO: loaded from: classes6.dex */
@JsonClassDiscriminator(discriminator = "status")
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \"2\u00020\u0001:\u0007\u001c\u001d\u001e\u001f !\"B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0002\u0010\bJ \u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0007R\u0012\u0010\t\u001a\u00020\nX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u000e8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010R\u0019\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u000e8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0010\u0082\u0001\u0005#$%&'¨\u0006("}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult;", "", "<init>", "()V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "code", "", "getCode", "()Ljava/lang/String;", "stripeSubscriptionId", "", "getStripeSubscriptionId", "()Ljava/util/List;", "paddleSubscriptionIds", "getPaddleSubscriptionIds", "subscriptionIds", "getSubscriptionIds", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Success", "Error", "Expired", "InvalidCode", "ExpiredSubscription", "PaywallInfo", "Companion", "Lcom/superwall/sdk/models/internal/RedemptionResult$Error;", "Lcom/superwall/sdk/models/internal/RedemptionResult$Expired;", "Lcom/superwall/sdk/models/internal/RedemptionResult$ExpiredSubscription;", "Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;", "Lcom/superwall/sdk/models/internal/RedemptionResult$Success;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public abstract class RedemptionResult {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.internal.RedemptionResult$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RedemptionResult._init_$_anonymous_();
        }
    });

    public /* synthetic */ RedemptionResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self(RedemptionResult self, CompositeEncoder output, SerialDescriptor serialDesc) {
    }

    public abstract String getCode();

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/RedemptionResult;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) RedemptionResult.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<RedemptionResult> serializer() {
            return get$cachedSerializer();
        }
    }

    private RedemptionResult() {
    }

    public /* synthetic */ RedemptionResult(int i, SerializationConstructorMarker serializationConstructorMarker) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ KSerializer _init_$_anonymous_() {
        return new SealedClassSerializer("com.superwall.sdk.models.internal.RedemptionResult", Reflection.getOrCreateKotlinClass(RedemptionResult.class), new KClass[]{Reflection.getOrCreateKotlinClass(Error.class), Reflection.getOrCreateKotlinClass(Expired.class), Reflection.getOrCreateKotlinClass(ExpiredSubscription.class), Reflection.getOrCreateKotlinClass(InvalidCode.class), Reflection.getOrCreateKotlinClass(Success.class)}, new KSerializer[]{RedemptionResult$Error$$serializer.INSTANCE, RedemptionResult$Expired$$serializer.INSTANCE, RedemptionResult$ExpiredSubscription$$serializer.INSTANCE, RedemptionResult$InvalidCode$$serializer.INSTANCE, DirectSuccessSerializer.INSTANCE}, new Annotation[]{new RedemptionResult$Error$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0("status")});
    }

    public final List<String> getStripeSubscriptionId() {
        StoreIdentifiers.Stripe stripe;
        List<String> subscriptionIds;
        if (this instanceof Success) {
            Success success = (Success) this;
            PurchaserInfo purchaserInfo = success.getRedemptionInfo().getPurchaserInfo();
            if ((purchaserInfo != null ? purchaserInfo.getStoreIdentifiers() : null) instanceof StoreIdentifiers.Stripe) {
                PurchaserInfo purchaserInfo2 = success.getRedemptionInfo().getPurchaserInfo();
                return (purchaserInfo2 == null || (stripe = (StoreIdentifiers.Stripe) purchaserInfo2.getStoreIdentifiers()) == null || (subscriptionIds = stripe.getSubscriptionIds()) == null) ? CollectionsKt.emptyList() : subscriptionIds;
            }
            return CollectionsKt.emptyList();
        }
        return CollectionsKt.emptyList();
    }

    public final List<String> getPaddleSubscriptionIds() {
        StoreIdentifiers.Paddle paddle;
        List<String> paddleSubscriptionIds;
        if (this instanceof Success) {
            Success success = (Success) this;
            PurchaserInfo purchaserInfo = success.getRedemptionInfo().getPurchaserInfo();
            if ((purchaserInfo != null ? purchaserInfo.getStoreIdentifiers() : null) instanceof StoreIdentifiers.Paddle) {
                PurchaserInfo purchaserInfo2 = success.getRedemptionInfo().getPurchaserInfo();
                return (purchaserInfo2 == null || (paddle = (StoreIdentifiers.Paddle) purchaserInfo2.getStoreIdentifiers()) == null || (paddleSubscriptionIds = paddle.getPaddleSubscriptionIds()) == null) ? CollectionsKt.emptyList() : paddleSubscriptionIds;
            }
            return CollectionsKt.emptyList();
        }
        return CollectionsKt.emptyList();
    }

    public final List<String> getSubscriptionIds() {
        return CollectionsKt.plus((Collection) getStripeSubscriptionId(), (Iterable) getPaddleSubscriptionIds());
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$Success;", "Lcom/superwall/sdk/models/internal/RedemptionResult;", "code", "", "redemptionInfo", "Lcom/superwall/sdk/models/internal/RedemptionInfo;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/models/internal/RedemptionInfo;)V", "getCode$annotations", "()V", "getCode", "()Ljava/lang/String;", "getRedemptionInfo$annotations", "getRedemptionInfo", "()Lcom/superwall/sdk/models/internal/RedemptionInfo;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable(with = DirectSuccessSerializer.class)
    @SerialName("SUCCESS")
    public static final /* data */ class Success extends RedemptionResult {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String code;
        private final RedemptionInfo redemptionInfo;

        public static /* synthetic */ Success copy$default(Success success, String str, RedemptionInfo redemptionInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                str = success.code;
            }
            if ((i & 2) != 0) {
                redemptionInfo = success.redemptionInfo;
            }
            return success.copy(str, redemptionInfo);
        }

        @SerialName("code")
        public static /* synthetic */ void getCode$annotations() {
        }

        @SerialName("redemption_info")
        public static /* synthetic */ void getRedemptionInfo$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getCode() {
            return this.code;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final RedemptionInfo getRedemptionInfo() {
            return this.redemptionInfo;
        }

        public final Success copy(String code, RedemptionInfo redemptionInfo) {
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(redemptionInfo, "redemptionInfo");
            return new Success(code, redemptionInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Success)) {
                return false;
            }
            Success success = (Success) other;
            return Intrinsics.areEqual(this.code, success.code) && Intrinsics.areEqual(this.redemptionInfo, success.redemptionInfo);
        }

        public int hashCode() {
            return (this.code.hashCode() * 31) + this.redemptionInfo.hashCode();
        }

        public String toString() {
            return "Success(code=" + this.code + ", redemptionInfo=" + this.redemptionInfo + ")";
        }

        /* JADX INFO: compiled from: WebRedemption.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$Success$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/RedemptionResult$Success;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Success> serializer() {
                return DirectSuccessSerializer.INSTANCE;
            }
        }

        @Override // com.superwall.sdk.models.internal.RedemptionResult
        public String getCode() {
            return this.code;
        }

        public final RedemptionInfo getRedemptionInfo() {
            return this.redemptionInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(String code, RedemptionInfo redemptionInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(redemptionInfo, "redemptionInfo");
            this.code = code;
            this.redemptionInfo = redemptionInfo;
        }
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 '2\u00020\u0001:\u0002&'B\u001b\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bB/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\r\u0010\u0015\u001a\u00060\u0003j\u0002`\u0004HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J!\u0010\u0017\u001a\u00020\u00002\f\b\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\nHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0001¢\u0006\u0002\b%R \u0010\u0002\u001a\u00060\u0003j\u0002`\u00048\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0014¨\u0006("}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$Error;", "Lcom/superwall/sdk/models/internal/RedemptionResult;", "code", "", "Lcom/superwall/sdk/models/internal/RedemptionCode;", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Lcom/superwall/sdk/models/internal/ErrorInfo;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/models/internal/ErrorInfo;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/superwall/sdk/models/internal/ErrorInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getCode$annotations", "()V", "getCode", "()Ljava/lang/String;", "getError$annotations", "getError", "()Lcom/superwall/sdk/models/internal/ErrorInfo;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("ERROR")
    public static final /* data */ class Error extends RedemptionResult {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String code;
        private final ErrorInfo error;

        public static /* synthetic */ Error copy$default(Error error, String str, ErrorInfo errorInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                str = error.code;
            }
            if ((i & 2) != 0) {
                errorInfo = error.error;
            }
            return error.copy(str, errorInfo);
        }

        @SerialName("code")
        public static /* synthetic */ void getCode$annotations() {
        }

        @SerialName(Constants.IPC_BUNDLE_KEY_SEND_ERROR)
        public static /* synthetic */ void getError$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getCode() {
            return this.code;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final ErrorInfo getError() {
            return this.error;
        }

        public final Error copy(String code, ErrorInfo error) {
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(error, "error");
            return new Error(code, error);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Error)) {
                return false;
            }
            Error error = (Error) other;
            return Intrinsics.areEqual(this.code, error.code) && Intrinsics.areEqual(this.error, error.error);
        }

        public int hashCode() {
            return (this.code.hashCode() * 31) + this.error.hashCode();
        }

        public String toString() {
            return "Error(code=" + this.code + ", error=" + this.error + ")";
        }

        /* JADX INFO: compiled from: WebRedemption.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$Error$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/RedemptionResult$Error;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Error> serializer() {
                return RedemptionResult$Error$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Error(int i, String str, ErrorInfo errorInfo, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, RedemptionResult$Error$$serializer.INSTANCE.getDescriptor());
            }
            this.code = str;
            this.error = errorInfo;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Error self, CompositeEncoder output, SerialDescriptor serialDesc) {
            RedemptionResult.write$Self(self, output, serialDesc);
            output.encodeStringElement(serialDesc, 0, self.getCode());
            output.encodeSerializableElement(serialDesc, 1, ErrorInfo$$serializer.INSTANCE, self.error);
        }

        @Override // com.superwall.sdk.models.internal.RedemptionResult
        public String getCode() {
            return this.code;
        }

        public final ErrorInfo getError() {
            return this.error;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(String code, ErrorInfo error) {
            super(null);
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(error, "error");
            this.code = code;
            this.error = error;
        }
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 '2\u00020\u0001:\u0002&'B\u001b\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bB/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\r\u0010\u0015\u001a\u00060\u0003j\u0002`\u0004HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J!\u0010\u0017\u001a\u00020\u00002\f\b\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\nHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0001¢\u0006\u0002\b%R \u0010\u0002\u001a\u00060\u0003j\u0002`\u00048\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0014¨\u0006("}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$Expired;", "Lcom/superwall/sdk/models/internal/RedemptionResult;", "code", "", "Lcom/superwall/sdk/models/internal/RedemptionCode;", "expired", "Lcom/superwall/sdk/models/internal/ExpiredInfo;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/models/internal/ExpiredInfo;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/superwall/sdk/models/internal/ExpiredInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getCode$annotations", "()V", "getCode", "()Ljava/lang/String;", "getExpired$annotations", "getExpired", "()Lcom/superwall/sdk/models/internal/ExpiredInfo;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("CODE_EXPIRED")
    public static final /* data */ class Expired extends RedemptionResult {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String code;
        private final ExpiredInfo expired;

        public static /* synthetic */ Expired copy$default(Expired expired, String str, ExpiredInfo expiredInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                str = expired.code;
            }
            if ((i & 2) != 0) {
                expiredInfo = expired.expired;
            }
            return expired.copy(str, expiredInfo);
        }

        @SerialName("code")
        public static /* synthetic */ void getCode$annotations() {
        }

        @SerialName("expired")
        public static /* synthetic */ void getExpired$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getCode() {
            return this.code;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final ExpiredInfo getExpired() {
            return this.expired;
        }

        public final Expired copy(String code, ExpiredInfo expired) {
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(expired, "expired");
            return new Expired(code, expired);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Expired)) {
                return false;
            }
            Expired expired = (Expired) other;
            return Intrinsics.areEqual(this.code, expired.code) && Intrinsics.areEqual(this.expired, expired.expired);
        }

        public int hashCode() {
            return (this.code.hashCode() * 31) + this.expired.hashCode();
        }

        public String toString() {
            return "Expired(code=" + this.code + ", expired=" + this.expired + ")";
        }

        /* JADX INFO: compiled from: WebRedemption.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$Expired$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/RedemptionResult$Expired;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Expired> serializer() {
                return RedemptionResult$Expired$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Expired(int i, String str, ExpiredInfo expiredInfo, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, RedemptionResult$Expired$$serializer.INSTANCE.getDescriptor());
            }
            this.code = str;
            this.expired = expiredInfo;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Expired self, CompositeEncoder output, SerialDescriptor serialDesc) {
            RedemptionResult.write$Self(self, output, serialDesc);
            output.encodeStringElement(serialDesc, 0, self.getCode());
            output.encodeSerializableElement(serialDesc, 1, ExpiredInfo$$serializer.INSTANCE, self.expired);
        }

        @Override // com.superwall.sdk.models.internal.RedemptionResult
        public String getCode() {
            return this.code;
        }

        public final ExpiredInfo getExpired() {
            return this.expired;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Expired(String code, ExpiredInfo expired) {
            super(null);
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(expired, "expired");
            this.code = code;
            this.expired = expired;
        }
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 !2\u00020\u0001:\u0002 !B\u0013\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b\u0005\u0010\u0006B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\u000bJ\r\u0010\u0010\u001a\u00060\u0003j\u0002`\u0004HÆ\u0003J\u0017\u0010\u0011\u001a\u00020\u00002\f\b\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\bHÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J%\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0001¢\u0006\u0002\b\u001fR \u0010\u0002\u001a\u00060\u0003j\u0002`\u00048\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\""}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;", "Lcom/superwall/sdk/models/internal/RedemptionResult;", "code", "", "Lcom/superwall/sdk/models/internal/RedemptionCode;", "<init>", "(Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getCode$annotations", "()V", "getCode", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("INVALID_CODE")
    public static final /* data */ class InvalidCode extends RedemptionResult {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String code;

        public static /* synthetic */ InvalidCode copy$default(InvalidCode invalidCode, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = invalidCode.code;
            }
            return invalidCode.copy(str);
        }

        @SerialName("code")
        public static /* synthetic */ void getCode$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getCode() {
            return this.code;
        }

        public final InvalidCode copy(String code) {
            Intrinsics.checkNotNullParameter(code, "code");
            return new InvalidCode(code);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof InvalidCode) && Intrinsics.areEqual(this.code, ((InvalidCode) other).code);
        }

        public int hashCode() {
            return this.code.hashCode();
        }

        public String toString() {
            return "InvalidCode(code=" + this.code + ")";
        }

        /* JADX INFO: compiled from: WebRedemption.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<InvalidCode> serializer() {
                return RedemptionResult$InvalidCode$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ InvalidCode(int i, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, RedemptionResult$InvalidCode$$serializer.INSTANCE.getDescriptor());
            }
            this.code = str;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(InvalidCode self, CompositeEncoder output, SerialDescriptor serialDesc) {
            RedemptionResult.write$Self(self, output, serialDesc);
            output.encodeStringElement(serialDesc, 0, self.getCode());
        }

        @Override // com.superwall.sdk.models.internal.RedemptionResult
        public String getCode() {
            return this.code;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InvalidCode(String code) {
            super(null);
            Intrinsics.checkNotNullParameter(code, "code");
            this.code = code;
        }
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 '2\u00020\u0001:\u0002&'B\u001b\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bB/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\r\u0010\u0015\u001a\u00060\u0003j\u0002`\u0004HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J!\u0010\u0017\u001a\u00020\u00002\f\b\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\nHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0001¢\u0006\u0002\b%R \u0010\u0002\u001a\u00060\u0003j\u0002`\u00048\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0014¨\u0006("}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$ExpiredSubscription;", "Lcom/superwall/sdk/models/internal/RedemptionResult;", "code", "", "Lcom/superwall/sdk/models/internal/RedemptionCode;", "redemptionInfo", "Lcom/superwall/sdk/models/internal/RedemptionInfo;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/models/internal/RedemptionInfo;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/superwall/sdk/models/internal/RedemptionInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getCode$annotations", "()V", "getCode", "()Ljava/lang/String;", "getRedemptionInfo$annotations", "getRedemptionInfo", "()Lcom/superwall/sdk/models/internal/RedemptionInfo;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("EXPIRED_SUBSCRIPTION")
    public static final /* data */ class ExpiredSubscription extends RedemptionResult {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String code;
        private final RedemptionInfo redemptionInfo;

        public static /* synthetic */ ExpiredSubscription copy$default(ExpiredSubscription expiredSubscription, String str, RedemptionInfo redemptionInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                str = expiredSubscription.code;
            }
            if ((i & 2) != 0) {
                redemptionInfo = expiredSubscription.redemptionInfo;
            }
            return expiredSubscription.copy(str, redemptionInfo);
        }

        @SerialName("code")
        public static /* synthetic */ void getCode$annotations() {
        }

        @SerialName("redemptionInfo")
        public static /* synthetic */ void getRedemptionInfo$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getCode() {
            return this.code;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final RedemptionInfo getRedemptionInfo() {
            return this.redemptionInfo;
        }

        public final ExpiredSubscription copy(String code, RedemptionInfo redemptionInfo) {
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(redemptionInfo, "redemptionInfo");
            return new ExpiredSubscription(code, redemptionInfo);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ExpiredSubscription)) {
                return false;
            }
            ExpiredSubscription expiredSubscription = (ExpiredSubscription) other;
            return Intrinsics.areEqual(this.code, expiredSubscription.code) && Intrinsics.areEqual(this.redemptionInfo, expiredSubscription.redemptionInfo);
        }

        public int hashCode() {
            return (this.code.hashCode() * 31) + this.redemptionInfo.hashCode();
        }

        public String toString() {
            return "ExpiredSubscription(code=" + this.code + ", redemptionInfo=" + this.redemptionInfo + ")";
        }

        /* JADX INFO: compiled from: WebRedemption.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$ExpiredSubscription$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/RedemptionResult$ExpiredSubscription;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<ExpiredSubscription> serializer() {
                return RedemptionResult$ExpiredSubscription$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ExpiredSubscription(int i, String str, RedemptionInfo redemptionInfo, SerializationConstructorMarker serializationConstructorMarker) {
            super(i, serializationConstructorMarker);
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, RedemptionResult$ExpiredSubscription$$serializer.INSTANCE.getDescriptor());
            }
            this.code = str;
            this.redemptionInfo = redemptionInfo;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(ExpiredSubscription self, CompositeEncoder output, SerialDescriptor serialDesc) {
            RedemptionResult.write$Self(self, output, serialDesc);
            output.encodeStringElement(serialDesc, 0, self.getCode());
            output.encodeSerializableElement(serialDesc, 1, RedemptionInfo$$serializer.INSTANCE, self.redemptionInfo);
        }

        @Override // com.superwall.sdk.models.internal.RedemptionResult
        public String getCode() {
            return this.code;
        }

        public final RedemptionInfo getRedemptionInfo() {
            return this.redemptionInfo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ExpiredSubscription(String code, RedemptionInfo redemptionInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(redemptionInfo, "redemptionInfo");
            this.code = code;
            this.redemptionInfo = redemptionInfo;
        }
    }

    /* JADX INFO: compiled from: WebRedemption.kt */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 92\u00020\u0001:\u000289BS\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007\u0012\n\u0010\t\u001a\u00060\u0003j\u0002`\n\u0012\n\u0010\u000b\u001a\u00060\u0003j\u0002`\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u000fBc\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u000e\u0010\u0014J\r\u0010$\u001a\u00060\u0003j\u0002`\u0004HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\u0015\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\r\u0010'\u001a\u00060\u0003j\u0002`\nHÆ\u0003J\r\u0010(\u001a\u00060\u0003j\u0002`\fHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J_\u0010*\u001a\u00020\u00002\f\b\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u00072\f\b\u0002\u0010\t\u001a\u00060\u0003j\u0002`\n2\f\b\u0002\u0010\u000b\u001a\u00060\u0003j\u0002`\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\u0011HÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001J%\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u00002\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u000206H\u0001¢\u0006\u0002\b7R \u0010\u0002\u001a\u00060\u0003j\u0002`\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R(\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u001dR \u0010\t\u001a\u00060\u0003j\u0002`\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001e\u0010\u0016\u001a\u0004\b\u001f\u0010\u0018R \u0010\u000b\u001a\u00060\u0003j\u0002`\f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b \u0010\u0016\u001a\u0004\b!\u0010\u0018R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\"\u0010\u0016\u001a\u0004\b#\u0010\u0018¨\u0006:"}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;", "", NotificationsService.IDENTIFIER_KEY, "", "Lcom/superwall/sdk/models/paywall/PaywallIdentifier;", "placementName", "placementParams", "", "Lkotlinx/serialization/json/JsonElement;", "variantId", "Lcom/superwall/sdk/models/internal/VariantId;", "experimentId", "Lcom/superwall/sdk/models/internal/ExperimentId;", "productIdentifier", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getIdentifier$annotations", "()V", "getIdentifier", "()Ljava/lang/String;", "getPlacementName$annotations", "getPlacementName", "getPlacementParams$annotations", "getPlacementParams", "()Ljava/util/Map;", "getVariantId$annotations", "getVariantId", "getExperimentId$annotations", "getExperimentId", "getProductIdentifier$annotations", "getProductIdentifier", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final /* data */ class PaywallInfo {
        private final String experimentId;
        private final String identifier;
        private final String placementName;
        private final Map<String, JsonElement> placementParams;
        private final String productIdentifier;
        private final String variantId;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, JsonElementSerializer.INSTANCE), null, null, null};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ PaywallInfo copy$default(PaywallInfo paywallInfo, String str, String str2, Map map, String str3, String str4, String str5, int i, Object obj) {
            if ((i & 1) != 0) {
                str = paywallInfo.identifier;
            }
            if ((i & 2) != 0) {
                str2 = paywallInfo.placementName;
            }
            if ((i & 4) != 0) {
                map = paywallInfo.placementParams;
            }
            if ((i & 8) != 0) {
                str3 = paywallInfo.variantId;
            }
            if ((i & 16) != 0) {
                str4 = paywallInfo.experimentId;
            }
            if ((i & 32) != 0) {
                str5 = paywallInfo.productIdentifier;
            }
            String str6 = str4;
            String str7 = str5;
            return paywallInfo.copy(str, str2, map, str3, str6, str7);
        }

        @SerialName("experimentId")
        public static /* synthetic */ void getExperimentId$annotations() {
        }

        @SerialName(NotificationsService.IDENTIFIER_KEY)
        public static /* synthetic */ void getIdentifier$annotations() {
        }

        @SerialName("placementName")
        public static /* synthetic */ void getPlacementName$annotations() {
        }

        @SerialName("placementParams")
        public static /* synthetic */ void getPlacementParams$annotations() {
        }

        @SerialName("productIdentifier")
        public static /* synthetic */ void getProductIdentifier$annotations() {
        }

        @SerialName("variantId")
        public static /* synthetic */ void getVariantId$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getIdentifier() {
            return this.identifier;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getPlacementName() {
            return this.placementName;
        }

        public final Map<String, JsonElement> component3() {
            return this.placementParams;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getVariantId() {
            return this.variantId;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getExperimentId() {
            return this.experimentId;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getProductIdentifier() {
            return this.productIdentifier;
        }

        public final PaywallInfo copy(String identifier, String placementName, Map<String, ? extends JsonElement> placementParams, String variantId, String experimentId, String productIdentifier) {
            Intrinsics.checkNotNullParameter(identifier, "identifier");
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            Intrinsics.checkNotNullParameter(placementParams, "placementParams");
            Intrinsics.checkNotNullParameter(variantId, "variantId");
            Intrinsics.checkNotNullParameter(experimentId, "experimentId");
            return new PaywallInfo(identifier, placementName, placementParams, variantId, experimentId, productIdentifier);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PaywallInfo)) {
                return false;
            }
            PaywallInfo paywallInfo = (PaywallInfo) other;
            return Intrinsics.areEqual(this.identifier, paywallInfo.identifier) && Intrinsics.areEqual(this.placementName, paywallInfo.placementName) && Intrinsics.areEqual(this.placementParams, paywallInfo.placementParams) && Intrinsics.areEqual(this.variantId, paywallInfo.variantId) && Intrinsics.areEqual(this.experimentId, paywallInfo.experimentId) && Intrinsics.areEqual(this.productIdentifier, paywallInfo.productIdentifier);
        }

        public int hashCode() {
            int iHashCode = ((((((((this.identifier.hashCode() * 31) + this.placementName.hashCode()) * 31) + this.placementParams.hashCode()) * 31) + this.variantId.hashCode()) * 31) + this.experimentId.hashCode()) * 31;
            String str = this.productIdentifier;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "PaywallInfo(identifier=" + this.identifier + ", placementName=" + this.placementName + ", placementParams=" + this.placementParams + ", variantId=" + this.variantId + ", experimentId=" + this.experimentId + ", productIdentifier=" + this.productIdentifier + ")";
        }

        /* JADX INFO: compiled from: WebRedemption.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<PaywallInfo> serializer() {
                return RedemptionResult$PaywallInfo$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ PaywallInfo(int i, String str, String str2, Map map, String str3, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
            if (31 != (i & 31)) {
                PluginExceptionsKt.throwMissingFieldException(i, 31, RedemptionResult$PaywallInfo$$serializer.INSTANCE.getDescriptor());
            }
            this.identifier = str;
            this.placementName = str2;
            this.placementParams = map;
            this.variantId = str3;
            this.experimentId = str4;
            if ((i & 32) == 0) {
                this.productIdentifier = null;
            } else {
                this.productIdentifier = str5;
            }
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(PaywallInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeStringElement(serialDesc, 0, self.identifier);
            output.encodeStringElement(serialDesc, 1, self.placementName);
            output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.placementParams);
            output.encodeStringElement(serialDesc, 3, self.variantId);
            output.encodeStringElement(serialDesc, 4, self.experimentId);
            if (!output.shouldEncodeElementDefault(serialDesc, 5) && self.productIdentifier == null) {
                return;
            }
            output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.productIdentifier);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public PaywallInfo(String identifier, String placementName, Map<String, ? extends JsonElement> placementParams, String variantId, String experimentId, String str) {
            Intrinsics.checkNotNullParameter(identifier, "identifier");
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            Intrinsics.checkNotNullParameter(placementParams, "placementParams");
            Intrinsics.checkNotNullParameter(variantId, "variantId");
            Intrinsics.checkNotNullParameter(experimentId, "experimentId");
            this.identifier = identifier;
            this.placementName = placementName;
            this.placementParams = placementParams;
            this.variantId = variantId;
            this.experimentId = experimentId;
            this.productIdentifier = str;
        }

        public /* synthetic */ PaywallInfo(String str, String str2, Map map, String str3, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, map, str3, str4, (i & 32) != 0 ? null : str5);
        }

        public final String getIdentifier() {
            return this.identifier;
        }

        public final String getPlacementName() {
            return this.placementName;
        }

        public final Map<String, JsonElement> getPlacementParams() {
            return this.placementParams;
        }

        public final String getVariantId() {
            return this.variantId;
        }

        public final String getExperimentId() {
            return this.experimentId;
        }

        public final String getProductIdentifier() {
            return this.productIdentifier;
        }
    }
}
