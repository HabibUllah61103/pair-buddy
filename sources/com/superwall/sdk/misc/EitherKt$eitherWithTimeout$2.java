package com.superwall.sdk.misc;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Add missing generic type declarations: [T, E] */
/* JADX INFO: compiled from: Either.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0003*\u00020\u0004*\u00020\u0005H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.LONGITUDE_EAST, "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.misc.EitherKt$eitherWithTimeout$2", f = "Either.kt", i = {}, l = {106}, m = "invokeSuspend", n = {}, s = {})
final class EitherKt$eitherWithTimeout$2<E, T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Either<? extends T, E>>, Object> {
    final /* synthetic */ Function1<Continuation<? super Either<? extends T, E>>, Object> $run;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    EitherKt$eitherWithTimeout$2(Function1<? super Continuation<? super Either<? extends T, E>>, ? extends Object> function1, Continuation<? super EitherKt$eitherWithTimeout$2> continuation) {
        super(2, continuation);
        this.$run = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new EitherKt$eitherWithTimeout$2(this.$run, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Either<? extends T, E>> continuation) {
        return ((EitherKt$eitherWithTimeout$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Function1<Continuation<? super Either<? extends T, E>>, Object> function1 = this.$run;
        this.label = 1;
        Object objInvoke = function1.invoke(this);
        return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
    }
}
