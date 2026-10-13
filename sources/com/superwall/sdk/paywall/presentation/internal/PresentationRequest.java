package com.superwall.sdk.paywall.presentation.internal;

import android.app.Activity;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.paywall.presentation.internal.request.PaywallOverrides;
import com.superwall.sdk.paywall.presentation.internal.request.PresentationInfo;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: PresentationRequest.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001*B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u0011\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010\"\u001a\u00020\nHÆ\u0003J;\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020(HÖ\u0001J\t\u0010)\u001a\u00020\u001cHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u001c8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006+"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "", "presentationInfo", "Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;", "presenter", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "paywallOverrides", "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;", "flags", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Ljava/lang/ref/WeakReference;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;)V", "getPresentationInfo", "()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;", "getPresenter", "()Ljava/lang/ref/WeakReference;", "setPresenter", "(Ljava/lang/ref/WeakReference;)V", "getPaywallOverrides", "()Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;", "setPaywallOverrides", "(Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;)V", "getFlags", "()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;", "setFlags", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;)V", "presentationSourceType", "", "getPresentationSourceType", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "Flags", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class PresentationRequest {
    private Flags flags;
    private PaywallOverrides paywallOverrides;
    private final PresentationInfo presentationInfo;
    private WeakReference<Activity> presenter;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PresentationRequest copy$default(PresentationRequest presentationRequest, PresentationInfo presentationInfo, WeakReference weakReference, PaywallOverrides paywallOverrides, Flags flags, int i, Object obj) {
        if ((i & 1) != 0) {
            presentationInfo = presentationRequest.presentationInfo;
        }
        if ((i & 2) != 0) {
            weakReference = presentationRequest.presenter;
        }
        if ((i & 4) != 0) {
            paywallOverrides = presentationRequest.paywallOverrides;
        }
        if ((i & 8) != 0) {
            flags = presentationRequest.flags;
        }
        return presentationRequest.copy(presentationInfo, weakReference, paywallOverrides, flags);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PresentationInfo getPresentationInfo() {
        return this.presentationInfo;
    }

    public final WeakReference<Activity> component2() {
        return this.presenter;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final PaywallOverrides getPaywallOverrides() {
        return this.paywallOverrides;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Flags getFlags() {
        return this.flags;
    }

    public final PresentationRequest copy(PresentationInfo presentationInfo, WeakReference<Activity> presenter, PaywallOverrides paywallOverrides, Flags flags) {
        Intrinsics.checkNotNullParameter(presentationInfo, "presentationInfo");
        Intrinsics.checkNotNullParameter(flags, "flags");
        return new PresentationRequest(presentationInfo, presenter, paywallOverrides, flags);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PresentationRequest)) {
            return false;
        }
        PresentationRequest presentationRequest = (PresentationRequest) other;
        return Intrinsics.areEqual(this.presentationInfo, presentationRequest.presentationInfo) && Intrinsics.areEqual(this.presenter, presentationRequest.presenter) && Intrinsics.areEqual(this.paywallOverrides, presentationRequest.paywallOverrides) && Intrinsics.areEqual(this.flags, presentationRequest.flags);
    }

    public int hashCode() {
        int iHashCode = this.presentationInfo.hashCode() * 31;
        WeakReference<Activity> weakReference = this.presenter;
        int iHashCode2 = (iHashCode + (weakReference == null ? 0 : weakReference.hashCode())) * 31;
        PaywallOverrides paywallOverrides = this.paywallOverrides;
        return ((iHashCode2 + (paywallOverrides != null ? paywallOverrides.hashCode() : 0)) * 31) + this.flags.hashCode();
    }

    public String toString() {
        return "PresentationRequest(presentationInfo=" + this.presentationInfo + ", presenter=" + this.presenter + ", paywallOverrides=" + this.paywallOverrides + ", flags=" + this.flags + ")";
    }

    public PresentationRequest(PresentationInfo presentationInfo, WeakReference<Activity> weakReference, PaywallOverrides paywallOverrides, Flags flags) {
        Intrinsics.checkNotNullParameter(presentationInfo, "presentationInfo");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.presentationInfo = presentationInfo;
        this.presenter = weakReference;
        this.paywallOverrides = paywallOverrides;
        this.flags = flags;
    }

    public /* synthetic */ PresentationRequest(PresentationInfo presentationInfo, WeakReference weakReference, PaywallOverrides paywallOverrides, Flags flags, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(presentationInfo, (i & 2) != 0 ? null : weakReference, (i & 4) != 0 ? null : paywallOverrides, flags);
    }

    public final PresentationInfo getPresentationInfo() {
        return this.presentationInfo;
    }

    public final WeakReference<Activity> getPresenter() {
        return this.presenter;
    }

    public final void setPresenter(WeakReference<Activity> weakReference) {
        this.presenter = weakReference;
    }

    public final PaywallOverrides getPaywallOverrides() {
        return this.paywallOverrides;
    }

    public final void setPaywallOverrides(PaywallOverrides paywallOverrides) {
        this.paywallOverrides = paywallOverrides;
    }

    public final Flags getFlags() {
        return this.flags;
    }

    public final void setFlags(Flags flags) {
        Intrinsics.checkNotNullParameter(flags, "<set-?>");
        this.flags = flags;
    }

    /* JADX INFO: compiled from: PresentationRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\tHÆ\u0003J9\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u00032\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\f\"\u0004\b\u0013\u0010\u000eR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006#"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;", "", "isDebuggerLaunched", "", "entitlements", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "isPaywallPresented", "type", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;", "<init>", "(ZLkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)V", "()Z", "setDebuggerLaunched", "(Z)V", "getEntitlements", "()Lkotlinx/coroutines/flow/StateFlow;", "setEntitlements", "(Lkotlinx/coroutines/flow/StateFlow;)V", "setPaywallPresented", "getType", "()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;", "setType", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)V", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Flags {
        private StateFlow<? extends SubscriptionStatus> entitlements;
        private boolean isDebuggerLaunched;
        private boolean isPaywallPresented;
        private PresentationRequestType type;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Flags copy$default(Flags flags, boolean z, StateFlow stateFlow, boolean z2, PresentationRequestType presentationRequestType, int i, Object obj) {
            if ((i & 1) != 0) {
                z = flags.isDebuggerLaunched;
            }
            if ((i & 2) != 0) {
                stateFlow = flags.entitlements;
            }
            if ((i & 4) != 0) {
                z2 = flags.isPaywallPresented;
            }
            if ((i & 8) != 0) {
                presentationRequestType = flags.type;
            }
            return flags.copy(z, stateFlow, z2, presentationRequestType);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsDebuggerLaunched() {
            return this.isDebuggerLaunched;
        }

        public final StateFlow<SubscriptionStatus> component2() {
            return this.entitlements;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getIsPaywallPresented() {
            return this.isPaywallPresented;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final PresentationRequestType getType() {
            return this.type;
        }

        public final Flags copy(boolean isDebuggerLaunched, StateFlow<? extends SubscriptionStatus> entitlements, boolean isPaywallPresented, PresentationRequestType type) {
            Intrinsics.checkNotNullParameter(entitlements, "entitlements");
            Intrinsics.checkNotNullParameter(type, "type");
            return new Flags(isDebuggerLaunched, entitlements, isPaywallPresented, type);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Flags)) {
                return false;
            }
            Flags flags = (Flags) other;
            return this.isDebuggerLaunched == flags.isDebuggerLaunched && Intrinsics.areEqual(this.entitlements, flags.entitlements) && this.isPaywallPresented == flags.isPaywallPresented && Intrinsics.areEqual(this.type, flags.type);
        }

        public int hashCode() {
            return (((((Boolean.hashCode(this.isDebuggerLaunched) * 31) + this.entitlements.hashCode()) * 31) + Boolean.hashCode(this.isPaywallPresented)) * 31) + this.type.hashCode();
        }

        public String toString() {
            return "Flags(isDebuggerLaunched=" + this.isDebuggerLaunched + ", entitlements=" + this.entitlements + ", isPaywallPresented=" + this.isPaywallPresented + ", type=" + this.type + ")";
        }

        public Flags(boolean z, StateFlow<? extends SubscriptionStatus> entitlements, boolean z2, PresentationRequestType type) {
            Intrinsics.checkNotNullParameter(entitlements, "entitlements");
            Intrinsics.checkNotNullParameter(type, "type");
            this.isDebuggerLaunched = z;
            this.entitlements = entitlements;
            this.isPaywallPresented = z2;
            this.type = type;
        }

        public final boolean isDebuggerLaunched() {
            return this.isDebuggerLaunched;
        }

        public final void setDebuggerLaunched(boolean z) {
            this.isDebuggerLaunched = z;
        }

        public final StateFlow<SubscriptionStatus> getEntitlements() {
            return this.entitlements;
        }

        public final void setEntitlements(StateFlow<? extends SubscriptionStatus> stateFlow) {
            Intrinsics.checkNotNullParameter(stateFlow, "<set-?>");
            this.entitlements = stateFlow;
        }

        public final boolean isPaywallPresented() {
            return this.isPaywallPresented;
        }

        public final void setPaywallPresented(boolean z) {
            this.isPaywallPresented = z;
        }

        public final PresentationRequestType getType() {
            return this.type;
        }

        public final void setType(PresentationRequestType presentationRequestType) {
            Intrinsics.checkNotNullParameter(presentationRequestType, "<set-?>");
            this.type = presentationRequestType;
        }
    }

    public final String getPresentationSourceType() {
        PresentationInfo presentationInfo = this.presentationInfo;
        if (presentationInfo instanceof PresentationInfo.ImplicitTrigger) {
            return "implicit";
        }
        if (!(presentationInfo instanceof PresentationInfo.ExplicitTrigger) && !(presentationInfo instanceof PresentationInfo.FromIdentifier)) {
            throw new NoWhenBranchMatchedException();
        }
        PresentationRequestType type = this.flags.getType();
        if (type instanceof PresentationRequestType.GetPaywall) {
            return "getPaywall";
        }
        if (type instanceof PresentationRequestType.Presentation) {
            return "register";
        }
        if ((type instanceof PresentationRequestType.GetPresentationResult) || (type instanceof PresentationRequestType.GetImplicitPresentationResult)) {
            return null;
        }
        boolean z = type instanceof PresentationRequestType.ConfirmAllAssignments;
        return null;
    }
}
