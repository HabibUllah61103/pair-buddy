package com.superwall.sdk.config.models;

import com.superwall.sdk.config.ConfigContext;
import com.superwall.sdk.models.assignment.Assignment;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: ConfigState.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", "it", "", "Lcom/superwall/sdk/models/assignment/Assignment;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$GetAssignments$1$2$1", f = "ConfigState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class ConfigState$Actions$GetAssignments$1$2$1 extends SuspendLambda implements Function2<List<? extends Assignment>, Continuation<? super Unit>, Object> {
    final /* synthetic */ ConfigContext $$this$exec;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConfigState$Actions$GetAssignments$1$2$1(ConfigContext configContext, Continuation<? super ConfigState$Actions$GetAssignments$1$2$1> continuation) {
        super(2, continuation);
        this.$$this$exec = configContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ConfigState$Actions$GetAssignments$1$2$1(this.$$this$exec, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(List<? extends Assignment> list, Continuation<? super Unit> continuation) {
        return invoke2((List<Assignment>) list, continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(List<Assignment> list, Continuation<? super Unit> continuation) {
        return ((ConfigState$Actions$GetAssignments$1$2$1) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        this.$$this$exec.effect(ConfigState.Actions.PreloadIfEnabled.INSTANCE);
        return Unit.INSTANCE;
    }
}
