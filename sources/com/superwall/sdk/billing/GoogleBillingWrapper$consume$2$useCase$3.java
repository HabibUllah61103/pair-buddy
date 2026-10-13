package com.superwall.sdk.billing;

import com.android.billingclient.api.BillingClient;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GoogleBillingWrapper.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* synthetic */ class GoogleBillingWrapper$consume$2$useCase$3 extends FunctionReferenceImpl implements Function1<Function1<? super BillingClient, ? extends Unit>, Unit> {
    GoogleBillingWrapper$consume$2$useCase$3(Object obj) {
        super(1, obj, GoogleBillingWrapper.class, "withConnectedClient", "withConnectedClient(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Function1<? super BillingClient, ? extends Unit> function1) {
        return invoke2((Function1<? super BillingClient, Unit>) function1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Unit invoke2(Function1<? super BillingClient, Unit> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return ((GoogleBillingWrapper) this.receiver).withConnectedClient(p0);
    }
}
