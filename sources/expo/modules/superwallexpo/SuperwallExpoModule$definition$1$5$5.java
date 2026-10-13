package expo.modules.superwallexpo;

import com.sun.jna.Callback;
import com.superwall.sdk.paywall.presentation.CustomCallback;
import com.superwall.sdk.paywall.presentation.CustomCallbackResult;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CompletableFuture;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.future.FutureKt;

/* JADX INFO: compiled from: SuperwallExpoModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;", Callback.METHOD_NAME, "Lcom/superwall/sdk/paywall/presentation/CustomCallback;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "expo.modules.superwallexpo.SuperwallExpoModule$definition$1$5$5", f = "SuperwallExpoModule.kt", i = {}, l = {288}, m = "invokeSuspend", n = {}, s = {})
final class SuperwallExpoModule$definition$1$5$5 extends SuspendLambda implements Function2<CustomCallback, Continuation<? super CustomCallbackResult>, Object> {
    final /* synthetic */ String $handlerId;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SuperwallExpoModule this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SuperwallExpoModule$definition$1$5$5(SuperwallExpoModule superwallExpoModule, String str, Continuation<? super SuperwallExpoModule$definition$1$5$5> continuation) {
        super(2, continuation);
        this.this$0 = superwallExpoModule;
        this.$handlerId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SuperwallExpoModule$definition$1$5$5 superwallExpoModule$definition$1$5$5 = new SuperwallExpoModule$definition$1$5$5(this.this$0, this.$handlerId, continuation);
        superwallExpoModule$definition$1$5$5.L$0 = obj;
        return superwallExpoModule$definition$1$5$5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CustomCallback customCallback, Continuation<? super CustomCallbackResult> continuation) {
        return ((SuperwallExpoModule$definition$1$5$5) create(customCallback, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CustomCallback customCallback = (CustomCallback) this.L$0;
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            CompletableFuture<CustomCallbackResult> completableFuture = new CompletableFuture<>();
            this.this$0.getCustomCallbackFutures().put(string, completableFuture);
            Map<String, ? extends Object> mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("callbackId", string), TuplesKt.to("name", customCallback.getName()), TuplesKt.to("handlerId", this.$handlerId));
            Map<String, Object> variables = customCallback.getVariables();
            if (variables != null) {
                mapMutableMapOf.put("variables", variables);
            }
            SuperwallExpoModule superwallExpoModule = this.this$0;
            superwallExpoModule.sendEvent(superwallExpoModule.onCustomCallback, mapMutableMapOf);
            this.label = 1;
            obj = FutureKt.await(completableFuture, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        Intrinsics.checkNotNullExpressionValue(obj, "await(...)");
        return obj;
    }
}
