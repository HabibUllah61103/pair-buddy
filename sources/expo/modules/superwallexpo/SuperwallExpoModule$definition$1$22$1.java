package expo.modules.superwallexpo;

import com.superwall.sdk.Superwall;
import com.superwall.sdk.paywall.presentation.get_presentation_result.PublicGetPresentationResultKt;
import com.superwall.sdk.paywall.presentation.result.PresentationResult;
import expo.modules.kotlin.Promise;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: SuperwallExpoModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "expo.modules.superwallexpo.SuperwallExpoModule$definition$1$22$1", f = "SuperwallExpoModule.kt", i = {}, l = {471}, m = "invokeSuspend", n = {}, s = {})
final class SuperwallExpoModule$definition$1$22$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Map<String, Object> $params;
    final /* synthetic */ String $placement;
    final /* synthetic */ Promise $promise;
    int label;
    final /* synthetic */ SuperwallExpoModule this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SuperwallExpoModule$definition$1$22$1(String str, Map<String, ? extends Object> map, SuperwallExpoModule superwallExpoModule, Promise promise, Continuation<? super SuperwallExpoModule$definition$1$22$1> continuation) {
        super(2, continuation);
        this.$placement = str;
        this.$params = map;
        this.this$0 = superwallExpoModule;
        this.$promise = promise;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SuperwallExpoModule$definition$1$22$1(this.$placement, this.$params, this.this$0, this.$promise, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SuperwallExpoModule$definition$1$22$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            Object presentationResult = PublicGetPresentationResultKt.getPresentationResult(Superwall.INSTANCE.getInstance(), this.$placement, this.$params, this);
            if (presentationResult == coroutine_suspended) {
                return coroutine_suspended;
            }
            value = presentationResult;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            value = ((Result) obj).getValue();
        }
        SuperwallExpoModule superwallExpoModule = this.this$0;
        Promise promise = this.$promise;
        Throwable thM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(value);
        if (thM11244exceptionOrNullimpl == null) {
            BuildersKt__Builders_commonKt.launch$default(superwallExpoModule.getScope(), null, null, new SuperwallExpoModule$definition$1$22$1$1$1(promise, (PresentationResult) value, null), 3, null);
        } else {
            BuildersKt__Builders_commonKt.launch$default(superwallExpoModule.getScope(), null, null, new SuperwallExpoModule$definition$1$22$1$2$1(promise, thM11244exceptionOrNullimpl, null), 3, null);
        }
        return Unit.INSTANCE;
    }
}
