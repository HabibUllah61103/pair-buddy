package com.superwall.sdk.store.testmode.ui;

import com.superwall.sdk.store.abstractions.product.receipt.LatestSubscriptionState;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.EnumsKt;

/* JADX INFO: compiled from: EntitlementSelection.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0081\u0002\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u000e\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0010j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u0014"}, d2 = {"Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;", "", "displayName", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getDisplayName", "()Ljava/lang/String;", "Inactive", "Subscribed", "InGracePeriod", "BillingRetry", "Expired", "Revoked", "isActive", "", "()Z", "toSubscriptionState", "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public enum EntitlementStateOption {
    Inactive("Inactive"),
    Subscribed("Subscribed"),
    InGracePeriod("In Grace Period"),
    BillingRetry("Billing Retry"),
    Expired("Expired"),
    Revoked("Revoked");

    private final String displayName;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.store.testmode.ui.EntitlementStateOption$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return EntitlementStateOption._init_$_anonymous_();
        }
    });

    /* JADX INFO: compiled from: EntitlementSelection.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EntitlementStateOption.values().length];
            try {
                iArr[EntitlementStateOption.Inactive.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EntitlementStateOption.Subscribed.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EntitlementStateOption.InGracePeriod.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EntitlementStateOption.BillingRetry.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EntitlementStateOption.Expired.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[EntitlementStateOption.Revoked.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static EnumEntries<EntitlementStateOption> getEntries() {
        return $ENTRIES;
    }

    /* JADX INFO: compiled from: EntitlementSelection.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) EntitlementStateOption.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<EntitlementStateOption> serializer() {
            return get$cachedSerializer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ KSerializer _init_$_anonymous_() {
        return EnumsKt.createSimpleEnumSerializer("com.superwall.sdk.store.testmode.ui.EntitlementStateOption", values());
    }

    EntitlementStateOption(String str) {
        this.displayName = str;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final boolean isActive() {
        return this == Subscribed || this == InGracePeriod || this == BillingRetry;
    }

    public final LatestSubscriptionState toSubscriptionState() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                return null;
            case 2:
                return LatestSubscriptionState.SUBSCRIBED;
            case 3:
                return LatestSubscriptionState.GRACE_PERIOD;
            case 4:
                return LatestSubscriptionState.BILLING_RETRY;
            case 5:
                return LatestSubscriptionState.EXPIRED;
            case 6:
                return LatestSubscriptionState.REVOKED;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
