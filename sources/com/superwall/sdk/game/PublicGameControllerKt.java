package com.superwall.sdk.game;

import android.view.KeyEvent;
import android.view.MotionEvent;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.misc.MainThreadKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PublicGameController.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"dispatchKeyEvent", "", "Lcom/superwall/sdk/Superwall;", "keyEvent", "Landroid/view/KeyEvent;", "dispatchMotionEvent", "motionEvent", "Landroid/view/MotionEvent;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PublicGameControllerKt {
    public static final void dispatchKeyEvent(Superwall superwall, final KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(keyEvent, "keyEvent");
        MainThreadKt.runOnUiThread(new Function0() { // from class: com.superwall.sdk.game.PublicGameControllerKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PublicGameControllerKt.dispatchKeyEvent$lambda$0(keyEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit dispatchKeyEvent$lambda$0(KeyEvent keyEvent) {
        GameControllerManager.INSTANCE.getShared().dispatchKeyEvent(keyEvent);
        return Unit.INSTANCE;
    }

    public static final void dispatchMotionEvent(Superwall superwall, final MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        MainThreadKt.runOnUiThread(new Function0() { // from class: com.superwall.sdk.game.PublicGameControllerKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PublicGameControllerKt.dispatchMotionEvent$lambda$1(motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit dispatchMotionEvent$lambda$1(MotionEvent motionEvent) {
        GameControllerManager.INSTANCE.getShared().dispatchMotionEvent(motionEvent);
        return Unit.INSTANCE;
    }
}
