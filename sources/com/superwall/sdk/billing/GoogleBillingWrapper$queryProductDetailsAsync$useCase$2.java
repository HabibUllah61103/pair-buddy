package com.superwall.sdk.billing;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GoogleBillingWrapper.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* synthetic */ class GoogleBillingWrapper$queryProductDetailsAsync$useCase$2 extends FunctionReferenceImpl implements Function2<Long, Function1<? super BillingError, ? extends Unit>, Unit> {
    GoogleBillingWrapper$queryProductDetailsAsync$useCase$2(Object obj) {
        super(2, obj, GoogleBillingWrapper.class, "executeRequestOnUIThread", "executeRequestOnUIThread(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, Function1<? super BillingError, ? extends Unit> function1) {
        invoke2(l, (Function1<? super BillingError, Unit>) function1);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Long l, Function1<? super BillingError, Unit> p1) {
        Intrinsics.checkNotNullParameter(p1, "p1");
        ((GoogleBillingWrapper) this.receiver).executeRequestOnUIThread(l, p1);
    }
}
