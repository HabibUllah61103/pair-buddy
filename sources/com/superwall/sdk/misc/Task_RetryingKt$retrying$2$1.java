package com.superwall.sdk.misc;

import androidx.exifinterface.media.ExifInterface;
import com.superwall.sdk.network.NetworkError;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: Task+Retrying.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either$Success;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/superwall/sdk/network/NetworkError;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.misc.Task_RetryingKt$retrying$2$1", f = "Task+Retrying.kt", i = {}, l = {35}, m = "invokeSuspend", n = {}, s = {})
final class Task_RetryingKt$retrying$2$1<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Either.Success<T, NetworkError>>, Object> {
    final /* synthetic */ Function1<Continuation<? super Either<? extends T, NetworkError>>, Object> $operation;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    Task_RetryingKt$retrying$2$1(Function1<? super Continuation<? super Either<? extends T, NetworkError>>, ? extends Object> function1, Continuation<? super Task_RetryingKt$retrying$2$1> continuation) {
        super(2, continuation);
        this.$operation = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Task_RetryingKt$retrying$2$1(this.$operation, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Either.Success<T, NetworkError>> continuation) {
        return ((Task_RetryingKt$retrying$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Function1<Continuation<? super Either<? extends T, NetworkError>>, Object> function1 = this.$operation;
            this.label = 1;
            obj = function1.invoke(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        Either either = (Either) obj;
        if (either instanceof Either.Success) {
            return either;
        }
        if (either instanceof Either.Failure) {
            throw ((Either.Failure) either).getError();
        }
        throw new NoWhenBranchMatchedException();
    }
}
