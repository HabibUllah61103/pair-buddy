package com.superwall.sdk.paywall.view;

import android.content.Context;
import android.content.Intent;
import androidx.media3.common.C;
import com.superwall.sdk.misc.Color_HelpersKt;
import com.superwall.sdk.models.paywall.PaywallPresentationStyle;
import com.superwall.sdk.network.JsonFactory;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: SuperwallPaywallActivity.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.view.SuperwallPaywallActivity$Companion$startWithView$1", f = "SuperwallPaywallActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class SuperwallPaywallActivity$Companion$startWithView$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ String $key;
    final /* synthetic */ PaywallPresentationStyle $presentationStyleOverride;
    final /* synthetic */ PaywallView $view;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SuperwallPaywallActivity$Companion$startWithView$1(PaywallView paywallView, String str, Context context, PaywallPresentationStyle paywallPresentationStyle, Continuation<? super SuperwallPaywallActivity$Companion$startWithView$1> continuation) {
        super(2, continuation);
        this.$view = paywallView;
        this.$key = str;
        this.$context = context;
        this.$presentationStyleOverride = paywallPresentationStyle;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SuperwallPaywallActivity$Companion$startWithView$1(this.$view, this.$key, this.$context, this.$presentationStyleOverride, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SuperwallPaywallActivity$Companion$startWithView$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            SuperwallPaywallActivity.INSTANCE.prepareViewForDisplay(this.$view, this.$key);
            Intent intent = new Intent(this.$context, (Class<?>) SuperwallPaywallActivity.class);
            String str = this.$key;
            PaywallPresentationStyle paywallPresentationStyle = this.$presentationStyleOverride;
            PaywallView paywallView = this.$view;
            intent.putExtra("viewKey", str);
            intent.putExtra("presentationStyleKey", paywallPresentationStyle != null ? paywallPresentationStyle.toIntentString(JsonFactory.INSTANCE.getJSON_POLYMORPHIC()) : null);
            intent.putExtra("isLightBackgroundKey", Color_HelpersKt.isLightColor(paywallView.getState().getPaywall().getBackgroundColor()));
            intent.setFlags(C.BUFFER_FLAG_LAST_SAMPLE);
            this.$context.startActivity(intent);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
