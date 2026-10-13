package com.superwall.sdk.misc.primitives;

import expo.modules.interfaces.permissions.PermissionsResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: StateActor.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a3\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u00032\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"stateActor", "Lcom/superwall/sdk/misc/primitives/StateActor;", "Context", "State", "initial", PermissionsResponse.SCOPE_KEY, "Lkotlinx/coroutines/CoroutineScope;", "(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)Lcom/superwall/sdk/misc/primitives/StateActor;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class StateActorKt {
    public static final <Context, State> StateActor<Context, State> stateActor(State state, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        return new StateActor<>(state, scope);
    }
}
