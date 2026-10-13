package com.superwall.sdk.paywall.presentation.rule_logic.cel;

import com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: SuperscriptHostContext.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.presentation.rule_logic.cel.SuperscriptHostContext$computedProperty$res$1", f = "SuperscriptHostContext.kt", i = {}, l = {43, 44, 45, 46}, m = "invokeSuspend", n = {}, s = {})
final class SuperscriptHostContext$computedProperty$res$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
    final /* synthetic */ List<PassableValue> $_args;
    final /* synthetic */ String $name;
    int label;
    final /* synthetic */ SuperscriptHostContext this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SuperscriptHostContext$computedProperty$res$1(String str, List<? extends PassableValue> list, SuperscriptHostContext superscriptHostContext, Continuation<? super SuperscriptHostContext$computedProperty$res$1> continuation) {
        super(2, continuation);
        this.$name = str;
        this.$_args = list;
        this.this$0 = superscriptHostContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SuperscriptHostContext$computedProperty$res$1(this.$name, this.$_args, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
        return invoke2(coroutineScope, (Continuation<Object>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<Object> continuation) {
        return ((SuperscriptHostContext$computedProperty$res$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            if (i == 2) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            if (i == 3) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            if (i != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        Object objFrom = SuperscriptExposedFunction.INSTANCE.from(this.$name, this.$_args);
        if (objFrom == null) {
            return null;
        }
        if (objFrom instanceof TimeSince) {
            this.label = 1;
            Object objInvoke = ((TimeSince) objFrom).invoke(this.this$0.storage, this);
            if (objInvoke != coroutine_suspended) {
                return objInvoke;
            }
        } else if (objFrom instanceof SuperscriptExposedFunction.PlacementCount) {
            this.label = 2;
            Object objInvoke2 = ((SuperscriptExposedFunction.PlacementCount) objFrom).invoke(this.this$0.storage, this);
            if (objInvoke2 != coroutine_suspended) {
                return objInvoke2;
            }
        } else if (objFrom instanceof SuperscriptExposedFunction.ReviewRequestCount) {
            this.label = 3;
            Object objInvoke3 = ((SuperscriptExposedFunction.ReviewRequestCount) objFrom).invoke(this.this$0.storage, this);
            if (objInvoke3 != coroutine_suspended) {
                return objInvoke3;
            }
        } else if (objFrom instanceof SuperscriptExposedFunction.RequestReview) {
            this.label = 4;
            Object objInvoke4 = ((SuperscriptExposedFunction.RequestReview) objFrom).invoke(this.this$0.storage, this);
            if (objInvoke4 != coroutine_suspended) {
                return objInvoke4;
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return coroutine_suspended;
    }
}
