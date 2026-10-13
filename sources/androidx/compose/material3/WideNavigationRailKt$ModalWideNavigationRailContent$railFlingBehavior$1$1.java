package androidx.compose.material3;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: WideNavigationRail.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0003H\u0096@¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"androidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1", "Landroidx/compose/foundation/gestures/FlingBehavior;", "performFling", "", "Landroidx/compose/foundation/gestures/ScrollScope;", "initialVelocity", "(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1 implements FlingBehavior {
    final /* synthetic */ TargetedFlingBehavior $anchoredDraggableFlingBehavior;
    final /* synthetic */ Function1<Continuation<? super Unit>, Object> $modalAnimateToDismiss;

    /* JADX WARN: Multi-variable type inference failed */
    WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1(TargetedFlingBehavior targetedFlingBehavior, Function1<? super Continuation<? super Unit>, ? extends Object> function1) {
        this.$anchoredDraggableFlingBehavior = targetedFlingBehavior;
        this.$modalAnimateToDismiss = function1;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
    
        if (r8.invoke(r0) == r1) goto L32;
     */
    @Override // androidx.compose.foundation.gestures.FlingBehavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object performFling(androidx.compose.foundation.gestures.ScrollScope r7, float r8, kotlin.coroutines.Continuation<? super java.lang.Float> r9) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.compose.material3.WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1
            if (r0 == 0) goto L14
            r0 = r9
            androidx.compose.material3.WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1 r0 = (androidx.compose.material3.WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            androidx.compose.material3.WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1 r0 = new androidx.compose.material3.WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1$performFling$1
            r0.<init>(r6, r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L46
            if (r2 == r5) goto L42
            if (r2 == r4) goto L3c
            if (r2 == r3) goto L34
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            java.lang.Object r7 = r0.L$0
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7a
        L3c:
            float r7 = r0.F$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L67
        L42:
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L6c
            goto L54
        L46:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.foundation.gestures.TargetedFlingBehavior r9 = r6.$anchoredDraggableFlingBehavior     // Catch: java.lang.Throwable -> L6c
            r0.label = r5     // Catch: java.lang.Throwable -> L6c
            java.lang.Object r9 = r9.performFling(r7, r8, r0)     // Catch: java.lang.Throwable -> L6c
            if (r9 != r1) goto L54
            goto L79
        L54:
            java.lang.Number r9 = (java.lang.Number) r9     // Catch: java.lang.Throwable -> L6c
            float r7 = r9.floatValue()     // Catch: java.lang.Throwable -> L6c
            kotlin.jvm.functions.Function1<kotlin.coroutines.Continuation<? super kotlin.Unit>, java.lang.Object> r8 = r6.$modalAnimateToDismiss
            r0.F$0 = r7
            r0.label = r4
            java.lang.Object r8 = r8.invoke(r0)
            if (r8 != r1) goto L67
            goto L79
        L67:
            java.lang.Float r7 = kotlin.coroutines.jvm.internal.Boxing.boxFloat(r7)
            return r7
        L6c:
            r7 = move-exception
            kotlin.jvm.functions.Function1<kotlin.coroutines.Continuation<? super kotlin.Unit>, java.lang.Object> r8 = r6.$modalAnimateToDismiss
            r0.L$0 = r7
            r0.label = r3
            java.lang.Object r8 = r8.invoke(r0)
            if (r8 != r1) goto L7a
        L79:
            return r1
        L7a:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.WideNavigationRailKt$ModalWideNavigationRailContent$railFlingBehavior$1$1.performFling(androidx.compose.foundation.gestures.ScrollScope, float, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
