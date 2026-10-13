package com.superwall.sdk.web;

import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.ReferrerDetails;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DeepLinkReferrer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.web.DeepLinkReferrer$checkForReferral$2", f = "DeepLinkReferrer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DeepLinkReferrer$checkForReferral$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    int label;
    final /* synthetic */ DeepLinkReferrer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeepLinkReferrer$checkForReferral$2(DeepLinkReferrer deepLinkReferrer, Continuation<? super DeepLinkReferrer$checkForReferral$2> continuation) {
        super(2, continuation);
        this.this$0 = deepLinkReferrer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DeepLinkReferrer$checkForReferral$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((DeepLinkReferrer$checkForReferral$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ReferrerDetails installReferrer;
        String installReferrer2;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            while (true) {
                InstallReferrerClient referrerClient = this.this$0.getReferrerClient();
                if (referrerClient != null && referrerClient.isReady()) {
                    break;
                }
            }
            InstallReferrerClient referrerClient2 = this.this$0.getReferrerClient();
            if (referrerClient2 == null || (installReferrer = referrerClient2.getInstallReferrer()) == null || (installReferrer2 = installReferrer.getInstallReferrer()) == null) {
                return null;
            }
            return installReferrer2.toString();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
