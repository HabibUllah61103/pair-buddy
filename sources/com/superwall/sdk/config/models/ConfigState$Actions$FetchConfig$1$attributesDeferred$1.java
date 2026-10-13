package com.superwall.sdk.config.models;

import com.superwall.sdk.config.ConfigContext;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ConfigState.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003`\u0004*\u00020\u0005H\n"}, d2 = {"<anonymous>", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1$attributesDeferred$1", f = "ConfigState.kt", i = {}, l = {151}, m = "invokeSuspend", n = {}, s = {})
final class ConfigState$Actions$FetchConfig$1$attributesDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HashMap<String, Object>>, Object> {
    final /* synthetic */ ConfigContext $$this$exec;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConfigState$Actions$FetchConfig$1$attributesDeferred$1(ConfigContext configContext, Continuation<? super ConfigState$Actions$FetchConfig$1$attributesDeferred$1> continuation) {
        super(2, continuation);
        this.$$this$exec = configContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ConfigState$Actions$FetchConfig$1$attributesDeferred$1(this.$$this$exec, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HashMap<String, Object>> continuation) {
        return ((ConfigState$Actions$FetchConfig$1$attributesDeferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        this.label = 1;
        Object objMakeSessionDeviceAttributes = this.$$this$exec.getFactory().makeSessionDeviceAttributes(this);
        return objMakeSessionDeviceAttributes == coroutine_suspended ? coroutine_suspended : objMakeSessionDeviceAttributes;
    }
}
