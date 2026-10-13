package com.superwall.sdk.misc;

import android.Manifest;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.ts.TsExtractor;
import com.facebook.react.uimanager.ViewProps;
import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: Either.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a^\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0003*\u00020\u0004*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00012\"\u0010\u0000\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0086@¢\u0006\u0002\u0010\t\u001af\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0003*\u00020\u0004*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00012\u0006\u0010\u000b\u001a\u00020\f2\"\u0010\u0000\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0086@¢\u0006\u0002\u0010\r\u001aL\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u000f\"\b\b\u0002\u0010\u0003*\u00020\u0004*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u000f0\u0011\u001ad\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u000f\"\b\b\u0002\u0010\u0003*\u00020\u0004*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00012\"\u0010\u0010\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000f0\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0086@¢\u0006\u0002\u0010\t\u001aN\u0010\u0013\u001a\f\u0012\u0004\u0012\u0002H\u0014\u0012\u0002\b\u00030\u0001\"\u0004\b\u0000\u0010\u0014\"\b\b\u0001\u0010\u0003*\u00020\u0004\"\b\b\u0002\u0010\u0015*\u00020\u0004*\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00150\u0011\u001aF\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0014\"\b\b\u0001\u0010\u0003*\u00020\u0004*\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u00012\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u00070\u0011\u001a^\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0014\"\b\b\u0001\u0010\u0003*\u00020\u0004*\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u00012\"\u0010\u0016\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0086@¢\u0006\u0002\u0010\t\u001al\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0014\"\b\b\u0001\u0010\u0003*\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00030\u001c2(\u0010\u001d\u001a$\b\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0011H\u0086@¢\u0006\u0004\b\u001e\u0010\u001f\u001aX\u0010 \u001a\u000e\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0014\"\u0004\b\u0001\u0010\u000f\"\b\b\u0002\u0010\u0003*\u00020\u0004*\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u00012\u001e\u0010\u0010\u001a\u001a\u0012\u0004\u0012\u0002H\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u0002H\u00030\u00010\u0011\u001a#\u0010!\u001a\u0002H\u0014\"\u0004\b\u0000\u0010\u0014*\u0010\u0012\u0004\u0012\u0002H\u0014\u0012\u0006\b\u0001\u0012\u00020\u00040\u0001¢\u0006\u0002\u0010\"\u001az\u0010#\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0014\"\b\b\u0001\u0010\u0003*\u00020\u0004*\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u00012$\b\u0004\u0010$\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00052$\b\u0004\u0010%\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0086H¢\u0006\u0002\u0010&\u001a>\u0010'\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u00020\u00040\u0001\"\u0004\b\u0000\u0010\u00142\u001c\u0010(\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0011H\u0086H¢\u0006\u0002\u0010)\u001a4\u0010*\u001a\b\u0012\u0004\u0012\u0002H\u00140+\"\u0004\b\u0000\u0010\u0014\"\b\b\u0001\u0010\u0003*\u00020\u0004*\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u0001H\u0086\b¢\u0006\u0002\u0010\"\u001ax\u0010,\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0014\"\b\b\u0001\u0010\u0003*\u00020\u0004*\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u00012<\b\u0004\u0010\u000e\u001a6\b\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00030\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0086H¢\u0006\u0002\u0010\t¨\u0006-"}, d2 = {"then", "Lcom/superwall/sdk/misc/Either;", "In", ExifInterface.LONGITUDE_EAST, "", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "thenIf", TypedValues.Custom.S_BOOLEAN, "", "(Lcom/superwall/sdk/misc/Either;ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "map", "Out", ViewProps.TRANSFORM, "Lkotlin/Function1;", "mapAsync", "mapError", ExifInterface.GPS_DIRECTION_TRUE, "F", "onError", "onErrorAsync", "eitherWithTimeout", "duration", "Lkotlin/time/Duration;", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Lkotlin/Function0;", "run", "eitherWithTimeout-rnQQ1Ag", "(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "flatMap", "unwrap", "(Lcom/superwall/sdk/misc/Either;)Ljava/lang/Object;", "fold", "onSuccess", "onFailure", "(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "asEither", "block", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toResult", "Lkotlin/Result;", "into", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class EitherKt {

    /* JADX INFO: renamed from: com.superwall.sdk.misc.EitherKt$asEither$1, reason: invalid class name */
    /* JADX INFO: compiled from: Either.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 176)
    @DebugMetadata(c = "com.superwall.sdk.misc.EitherKt", f = "Either.kt", i = {}, l = {137}, m = "asEither", n = {}, s = {})
    static final class AnonymousClass1<T> extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EitherKt.asEither(null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.EitherKt$mapAsync$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Either.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.EitherKt", f = "Either.kt", i = {}, l = {TsExtractor.TS_SYNC_BYTE}, m = "mapAsync", n = {}, s = {})
    static final class C04871<In, Out, E extends Throwable> extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C04871(Continuation<? super C04871> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EitherKt.mapAsync(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.EitherKt$onErrorAsync$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Either.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.EitherKt", f = "Either.kt", i = {0}, l = {94}, m = "onErrorAsync", n = {"$this$onErrorAsync"}, s = {"L$0"})
    static final class C04881<T, E extends Throwable> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04881(Continuation<? super C04881> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EitherKt.onErrorAsync(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.EitherKt$then$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Either.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.EitherKt", f = "Either.kt", i = {0}, l = {31}, m = "then", n = {"$this$then"}, s = {"L$0"})
    static final class C04891<In, E extends Throwable> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04891(Continuation<? super C04891> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EitherKt.then(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.EitherKt$thenIf$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Either.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.EitherKt", f = "Either.kt", i = {0}, l = {50}, m = "thenIf", n = {"$this$thenIf"}, s = {"L$0"})
    static final class C04901<In, E extends Throwable> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04901(Continuation<? super C04901> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EitherKt.thenIf(null, false, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <In, E extends Throwable> Object then(Either<? extends In, E> either, Function2<? super In, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Either<? extends In, E>> continuation) {
        C04891 c04891;
        if (continuation instanceof C04891) {
            c04891 = (C04891) continuation;
            if ((c04891.label & Integer.MIN_VALUE) != 0) {
                c04891.label -= Integer.MIN_VALUE;
            } else {
                c04891 = new C04891(continuation);
            }
        } else {
            c04891 = new C04891(continuation);
        }
        Object obj = c04891.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04891.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (either instanceof Either.Success) {
                    Manifest.permission_group permission_groupVar = (Object) ((Either.Success) either).getValue();
                    c04891.L$0 = either;
                    c04891.label = 1;
                    if (function2.invoke(permission_groupVar, c04891) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (either instanceof Either.Failure) {
                        return either;
                    }
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                either = (Either) c04891.L$0;
                ResultKt.throwOnFailure(obj);
            }
            return either;
        } catch (Throwable th) {
            Throwable th2 = th instanceof Throwable ? th : null;
            return th2 != null ? new Either.Failure(th2) : new Either.Failure(new IllegalStateException("Error in then block", th));
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <In, E extends Throwable> Object thenIf(Either<? extends In, E> either, boolean z, Function2<? super In, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Either<? extends In, E>> continuation) {
        C04901 c04901;
        if (continuation instanceof C04901) {
            c04901 = (C04901) continuation;
            if ((c04901.label & Integer.MIN_VALUE) != 0) {
                c04901.label -= Integer.MIN_VALUE;
            } else {
                c04901 = new C04901(continuation);
            }
        } else {
            c04901 = new C04901(continuation);
        }
        Object obj = c04901.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04901.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (!(either instanceof Either.Success)) {
                    if (either instanceof Either.Failure) {
                        return either;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                if (!z) {
                    return either;
                }
                Manifest.permission_group permission_groupVar = (Object) ((Either.Success) either).getValue();
                c04901.L$0 = either;
                c04901.label = 1;
                if (function2.invoke(permission_groupVar, c04901) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                either = (Either) c04901.L$0;
                ResultKt.throwOnFailure(obj);
            }
            return either;
        } catch (Throwable th) {
            Throwable th2 = th instanceof Throwable ? th : null;
            return th2 != null ? new Either.Failure(th2) : new Either.Failure(new IllegalStateException("Error in then block", th));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <In, Out, E extends Throwable> Either<Out, E> map(Either<? extends In, E> either, Function1<? super In, ? extends Out> transform) {
        Intrinsics.checkNotNullParameter(either, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        if (either instanceof Either.Success) {
            return new Either.Success(transform.invoke((Object) ((Either.Success) either).getValue()));
        }
        if (either instanceof Either.Failure) {
            return either;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <In, Out, E extends Throwable> Object mapAsync(Either<? extends In, E> either, Function2<? super In, ? super Continuation<? super Out>, ? extends Object> function2, Continuation<? super Either<? extends Out, E>> continuation) {
        C04871 c04871;
        if (continuation instanceof C04871) {
            c04871 = (C04871) continuation;
            if ((c04871.label & Integer.MIN_VALUE) != 0) {
                c04871.label -= Integer.MIN_VALUE;
            } else {
                c04871 = new C04871(continuation);
            }
        } else {
            c04871 = new C04871(continuation);
        }
        Object objInvoke = c04871.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04871.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objInvoke);
            if (!(either instanceof Either.Success)) {
                if (either instanceof Either.Failure) {
                    return either;
                }
                throw new NoWhenBranchMatchedException();
            }
            Manifest.permission_group permission_groupVar = (Object) ((Either.Success) either).getValue();
            c04871.label = 1;
            objInvoke = function2.invoke(permission_groupVar, c04871);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objInvoke);
        }
        return new Either.Success(objInvoke);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, E extends Throwable, F extends Throwable> Either<T, ?> mapError(Either<? extends T, E> either, Function1<? super E, ? extends F> transform) {
        Intrinsics.checkNotNullParameter(either, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        if (either instanceof Either.Success) {
            return either;
        }
        if (either instanceof Either.Failure) {
            return new Either.Failure(transform.invoke(((Either.Failure) either).getError()));
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, E extends Throwable> Either<T, E> onError(Either<? extends T, E> either, Function1<? super E, Unit> onError) {
        Intrinsics.checkNotNullParameter(either, "<this>");
        Intrinsics.checkNotNullParameter(onError, "onError");
        if (either instanceof Either.Success) {
            return either;
        }
        if (!(either instanceof Either.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        onError.invoke(((Either.Failure) either).getError());
        return either;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T, E extends Throwable> Object onErrorAsync(Either<? extends T, E> either, Function2<? super E, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Either<? extends T, E>> continuation) {
        C04881 c04881;
        if (continuation instanceof C04881) {
            c04881 = (C04881) continuation;
            if ((c04881.label & Integer.MIN_VALUE) != 0) {
                c04881.label -= Integer.MIN_VALUE;
            } else {
                c04881 = new C04881(continuation);
            }
        } else {
            c04881 = new C04881(continuation);
        }
        Object obj = c04881.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04881.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Either either2 = (Either) c04881.L$0;
            ResultKt.throwOnFailure(obj);
            return either2;
        }
        ResultKt.throwOnFailure(obj);
        if (!(either instanceof Either.Success)) {
            if (!(either instanceof Either.Failure)) {
                throw new NoWhenBranchMatchedException();
            }
            Throwable error = ((Either.Failure) either).getError();
            c04881.L$0 = either;
            c04881.label = 1;
            if (function2.invoke(error, c04881) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return either;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX INFO: renamed from: eitherWithTimeout-rnQQ1Ag, reason: not valid java name */
    public static final <T, E extends Throwable> Object m10628eitherWithTimeoutrnQQ1Ag(long j, Function0<? extends E> function0, Function1<? super Continuation<? super Either<? extends T, E>>, ? extends Object> function1, Continuation<? super Either<? extends T, E>> continuation) {
        EitherKt$eitherWithTimeout$1 eitherKt$eitherWithTimeout$1;
        if (continuation instanceof EitherKt$eitherWithTimeout$1) {
            eitherKt$eitherWithTimeout$1 = (EitherKt$eitherWithTimeout$1) continuation;
            if ((eitherKt$eitherWithTimeout$1.label & Integer.MIN_VALUE) != 0) {
                eitherKt$eitherWithTimeout$1.label -= Integer.MIN_VALUE;
            } else {
                eitherKt$eitherWithTimeout$1 = new EitherKt$eitherWithTimeout$1(continuation);
            }
        } else {
            eitherKt$eitherWithTimeout$1 = new EitherKt$eitherWithTimeout$1(continuation);
        }
        Object objM12756withTimeoutKLykuaI = eitherKt$eitherWithTimeout$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = eitherKt$eitherWithTimeout$1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objM12756withTimeoutKLykuaI);
                EitherKt$eitherWithTimeout$2 eitherKt$eitherWithTimeout$2 = new EitherKt$eitherWithTimeout$2(function1, null);
                eitherKt$eitherWithTimeout$1.L$0 = function0;
                eitherKt$eitherWithTimeout$1.label = 1;
                objM12756withTimeoutKLykuaI = TimeoutKt.m12756withTimeoutKLykuaI(j, eitherKt$eitherWithTimeout$2, eitherKt$eitherWithTimeout$1);
                if (objM12756withTimeoutKLykuaI == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function0 = (Function0) eitherKt$eitherWithTimeout$1.L$0;
                ResultKt.throwOnFailure(objM12756withTimeoutKLykuaI);
            }
            return (Either) objM12756withTimeoutKLykuaI;
        } catch (Throwable unused) {
            return new Either.Failure(function0.invoke());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, Out, E extends Throwable> Either<Out, E> flatMap(Either<? extends T, E> either, Function1<? super T, ? extends Either<? extends Out, E>> transform) {
        Intrinsics.checkNotNullParameter(either, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        if (either instanceof Either.Success) {
            return transform.invoke((Object) ((Either.Success) either).getValue());
        }
        if (either instanceof Either.Failure) {
            return either;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final <T> T unwrap(Either<? extends T, ? extends Throwable> either) throws Throwable {
        Intrinsics.checkNotNullParameter(either, "<this>");
        if (either instanceof Either.Success) {
            return (T) ((Either.Success) either).getValue();
        }
        if (either instanceof Either.Failure) {
            throw ((Either.Failure) either).getError();
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final <T, E extends Throwable> Object fold(Either<? extends T, E> either, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, Function2<? super E, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super Unit> continuation) {
        if (either instanceof Either.Success) {
            Object objInvoke = function2.invoke((Object) ((Either.Success) either).getValue(), continuation);
            return objInvoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
        }
        if (!(either instanceof Either.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        Object objInvoke2 = function3.invoke(((Either.Failure) either).getError(), continuation);
        return objInvoke2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke2 : Unit.INSTANCE;
    }

    private static final <T, E extends Throwable> Object fold$$forInline(Either<? extends T, E> either, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, Function2<? super E, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super Unit> continuation) {
        if (either instanceof Either.Success) {
            function2.invoke((Object) ((Either.Success) either).getValue(), continuation);
            return Unit.INSTANCE;
        }
        if (!(either instanceof Either.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        function3.invoke(((Either.Failure) either).getError(), continuation);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T> Object asEither(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super Either<? extends T, Throwable>> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objInvoke = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objInvoke);
                anonymousClass1.label = 1;
                objInvoke = function1.invoke(anonymousClass1);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objInvoke);
            }
            return new Either.Success(objInvoke);
        } catch (Throwable th) {
            return new Either.Failure(th);
        }
    }

    private static final <T> Object asEither$$forInline(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super Either<? extends T, Throwable>> continuation) {
        try {
            return new Either.Success(function1.invoke(continuation));
        } catch (Throwable th) {
            return new Either.Failure(th);
        }
    }

    public static final <T, E extends Throwable> Object toResult(Either<? extends T, E> either) {
        Intrinsics.checkNotNullParameter(either, "<this>");
        if (either instanceof Either.Success) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m11241constructorimpl(((Either.Success) either).getValue());
        }
        if (!(either instanceof Either.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        Result.Companion companion2 = Result.INSTANCE;
        return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) either).getError()));
    }

    public static final <T, E extends Throwable> Object into(Either<? extends T, E> either, Function2<? super Either<? extends T, E>, ? super Continuation<? super Either<? extends T, E>>, ? extends Object> function2, Continuation<? super Either<? extends T, E>> continuation) {
        return function2.invoke(either, continuation);
    }
}
