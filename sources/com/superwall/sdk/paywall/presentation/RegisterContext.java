package com.superwall.sdk.paywall.presentation;

import com.superwall.sdk.misc.SerialTaskManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PublicPresentation.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u00128\b\u0002\u0010\n\u001a2\u0012\u0004\u0012\u00020\f\u0012 \u0012\u001e\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b\u0012\u0016\b\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0007HÆ\u0003J\t\u0010$\u001a\u00020\tHÆ\u0003J9\u0010%\u001a2\u0012\u0004\u0012\u00020\f\u0012 \u0012\u001e\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bHÆ\u0003J\u0017\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0012HÆ\u0003J\u0083\u0001\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t28\b\u0002\u0010\n\u001a2\u0012\u0004\u0012\u00020\f\u0012 \u0012\u001e\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b2\u0016\b\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0012HÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020,HÖ\u0001J\t\u0010-\u001a\u00020\fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cRA\u0010\n\u001a2\u0012\u0004\u0012\u00020\f\u0012 \u0012\u001e\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001f\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 ¨\u0006."}, d2 = {"Lcom/superwall/sdk/paywall/presentation/RegisterContext;", "", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "collectionScope", "Lkotlinx/coroutines/CoroutineScope;", "serialTaskManager", "Lcom/superwall/sdk/misc/SerialTaskManager;", "trackAndPresentContext", "Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;", "registerCustomCallback", "Lkotlin/Function2;", "", "Lcom/superwall/sdk/paywall/presentation/CustomCallback;", "Lkotlin/coroutines/Continuation;", "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;", "", "unregisterCustomCallback", "Lkotlin/Function1;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/misc/SerialTaskManager;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V", "getDispatcher", "()Lkotlinx/coroutines/CoroutineDispatcher;", "getCollectionScope", "()Lkotlinx/coroutines/CoroutineScope;", "getSerialTaskManager", "()Lcom/superwall/sdk/misc/SerialTaskManager;", "getTrackAndPresentContext", "()Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;", "getRegisterCustomCallback", "()Lkotlin/jvm/functions/Function2;", "getUnregisterCustomCallback", "()Lkotlin/jvm/functions/Function1;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class RegisterContext {
    private final CoroutineScope collectionScope;
    private final CoroutineDispatcher dispatcher;
    private final Function2<String, Function2<? super CustomCallback, ? super Continuation<? super CustomCallbackResult>, ? extends Object>, Unit> registerCustomCallback;
    private final SerialTaskManager serialTaskManager;
    private final TrackAndPresentContext trackAndPresentContext;
    private final Function1<String, Unit> unregisterCustomCallback;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RegisterContext copy$default(RegisterContext registerContext, CoroutineDispatcher coroutineDispatcher, CoroutineScope coroutineScope, SerialTaskManager serialTaskManager, TrackAndPresentContext trackAndPresentContext, Function2 function2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineDispatcher = registerContext.dispatcher;
        }
        if ((i & 2) != 0) {
            coroutineScope = registerContext.collectionScope;
        }
        if ((i & 4) != 0) {
            serialTaskManager = registerContext.serialTaskManager;
        }
        if ((i & 8) != 0) {
            trackAndPresentContext = registerContext.trackAndPresentContext;
        }
        if ((i & 16) != 0) {
            function2 = registerContext.registerCustomCallback;
        }
        if ((i & 32) != 0) {
            function1 = registerContext.unregisterCustomCallback;
        }
        Function2 function3 = function2;
        Function1 function4 = function1;
        return registerContext.copy(coroutineDispatcher, coroutineScope, serialTaskManager, trackAndPresentContext, function3, function4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CoroutineDispatcher getDispatcher() {
        return this.dispatcher;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final CoroutineScope getCollectionScope() {
        return this.collectionScope;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final SerialTaskManager getSerialTaskManager() {
        return this.serialTaskManager;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final TrackAndPresentContext getTrackAndPresentContext() {
        return this.trackAndPresentContext;
    }

    public final Function2<String, Function2<? super CustomCallback, ? super Continuation<? super CustomCallbackResult>, ? extends Object>, Unit> component5() {
        return this.registerCustomCallback;
    }

    public final Function1<String, Unit> component6() {
        return this.unregisterCustomCallback;
    }

    public final RegisterContext copy(CoroutineDispatcher dispatcher, CoroutineScope collectionScope, SerialTaskManager serialTaskManager, TrackAndPresentContext trackAndPresentContext, Function2<? super String, ? super Function2<? super CustomCallback, ? super Continuation<? super CustomCallbackResult>, ? extends Object>, Unit> registerCustomCallback, Function1<? super String, Unit> unregisterCustomCallback) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(collectionScope, "collectionScope");
        Intrinsics.checkNotNullParameter(serialTaskManager, "serialTaskManager");
        Intrinsics.checkNotNullParameter(trackAndPresentContext, "trackAndPresentContext");
        return new RegisterContext(dispatcher, collectionScope, serialTaskManager, trackAndPresentContext, registerCustomCallback, unregisterCustomCallback);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RegisterContext)) {
            return false;
        }
        RegisterContext registerContext = (RegisterContext) other;
        return Intrinsics.areEqual(this.dispatcher, registerContext.dispatcher) && Intrinsics.areEqual(this.collectionScope, registerContext.collectionScope) && Intrinsics.areEqual(this.serialTaskManager, registerContext.serialTaskManager) && Intrinsics.areEqual(this.trackAndPresentContext, registerContext.trackAndPresentContext) && Intrinsics.areEqual(this.registerCustomCallback, registerContext.registerCustomCallback) && Intrinsics.areEqual(this.unregisterCustomCallback, registerContext.unregisterCustomCallback);
    }

    public int hashCode() {
        int iHashCode = ((((((this.dispatcher.hashCode() * 31) + this.collectionScope.hashCode()) * 31) + this.serialTaskManager.hashCode()) * 31) + this.trackAndPresentContext.hashCode()) * 31;
        Function2<String, Function2<? super CustomCallback, ? super Continuation<? super CustomCallbackResult>, ? extends Object>, Unit> function2 = this.registerCustomCallback;
        int iHashCode2 = (iHashCode + (function2 == null ? 0 : function2.hashCode())) * 31;
        Function1<String, Unit> function1 = this.unregisterCustomCallback;
        return iHashCode2 + (function1 != null ? function1.hashCode() : 0);
    }

    public String toString() {
        return "RegisterContext(dispatcher=" + this.dispatcher + ", collectionScope=" + this.collectionScope + ", serialTaskManager=" + this.serialTaskManager + ", trackAndPresentContext=" + this.trackAndPresentContext + ", registerCustomCallback=" + this.registerCustomCallback + ", unregisterCustomCallback=" + this.unregisterCustomCallback + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RegisterContext(CoroutineDispatcher dispatcher, CoroutineScope collectionScope, SerialTaskManager serialTaskManager, TrackAndPresentContext trackAndPresentContext, Function2<? super String, ? super Function2<? super CustomCallback, ? super Continuation<? super CustomCallbackResult>, ? extends Object>, Unit> function2, Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(collectionScope, "collectionScope");
        Intrinsics.checkNotNullParameter(serialTaskManager, "serialTaskManager");
        Intrinsics.checkNotNullParameter(trackAndPresentContext, "trackAndPresentContext");
        this.dispatcher = dispatcher;
        this.collectionScope = collectionScope;
        this.serialTaskManager = serialTaskManager;
        this.trackAndPresentContext = trackAndPresentContext;
        this.registerCustomCallback = function2;
        this.unregisterCustomCallback = function1;
    }

    public /* synthetic */ RegisterContext(CoroutineDispatcher coroutineDispatcher, CoroutineScope coroutineScope, SerialTaskManager serialTaskManager, TrackAndPresentContext trackAndPresentContext, Function2 function2, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(coroutineDispatcher, coroutineScope, serialTaskManager, trackAndPresentContext, (i & 16) != 0 ? null : function2, (i & 32) != 0 ? null : function1);
    }

    public final CoroutineDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public final CoroutineScope getCollectionScope() {
        return this.collectionScope;
    }

    public final SerialTaskManager getSerialTaskManager() {
        return this.serialTaskManager;
    }

    public final TrackAndPresentContext getTrackAndPresentContext() {
        return this.trackAndPresentContext;
    }

    public final Function2<String, Function2<? super CustomCallback, ? super Continuation<? super CustomCallbackResult>, ? extends Object>, Unit> getRegisterCustomCallback() {
        return this.registerCustomCallback;
    }

    public final Function1<String, Unit> getUnregisterCustomCallback() {
        return this.unregisterCustomCallback;
    }
}
