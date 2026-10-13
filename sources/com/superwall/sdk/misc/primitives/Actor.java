package com.superwall.sdk.misc.primitives;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: Actor.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003J)\u0010\u0004\u001a\u00020\u0005\"\u0004\b\u0002\u0010\u00012\u0006\u0010\u0006\u001a\u0002H\u00012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00010\bH&¢\u0006\u0002\u0010\tJ*\u0010\n\u001a\u00020\u0005\"\u0004\b\u0002\u0010\u00012\u0006\u0010\u0006\u001a\u0002H\u00012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00010\bH¦@¢\u0006\u0002\u0010\u000bJ>\u0010\f\u001a\u00028\u0001\"\u0004\b\u0002\u0010\u00012\u0006\u0010\u0006\u001a\u0002H\u00012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00010\b2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000f0\u000eH¦@¢\u0006\u0002\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/misc/primitives/Actor;", "Ctx", ExifInterface.LATITUDE_SOUTH, "", "effect", "", "ctx", "action", "Lcom/superwall/sdk/misc/primitives/TypedAction;", "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)V", "immediate", "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "immediateUntil", "until", "Lkotlin/Function1;", "", "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface Actor<Ctx, S> {
    <Ctx> void effect(Ctx ctx, TypedAction<Ctx> action);

    <Ctx> Object immediate(Ctx ctx, TypedAction<Ctx> typedAction, Continuation<? super Unit> continuation);

    <Ctx> Object immediateUntil(Ctx ctx, TypedAction<Ctx> typedAction, Function1<? super S, Boolean> function1, Continuation<? super S> continuation);
}
