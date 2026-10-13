.class public final Lcom/superwall/sdk/game/PublicGameControllerKt;
.super Ljava/lang/Object;
.source "PublicGameController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "dispatchKeyEvent",
        "",
        "Lcom/superwall/sdk/Superwall;",
        "keyEvent",
        "Landroid/view/KeyEvent;",
        "dispatchMotionEvent",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$AcTz_gd8jegg3opSwLMhDBhv3Q4(Landroid/view/MotionEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/game/PublicGameControllerKt;->dispatchMotionEvent$lambda$1(Landroid/view/MotionEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G04vJ2p-lSu1Q17Upua6LJFomfQ(Landroid/view/KeyEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/game/PublicGameControllerKt;->dispatchKeyEvent$lambda$0(Landroid/view/KeyEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final dispatchKeyEvent(Lcom/superwall/sdk/Superwall;Landroid/view/KeyEvent;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "keyEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance p0, Lcom/superwall/sdk/game/PublicGameControllerKt$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/superwall/sdk/game/PublicGameControllerKt$$ExternalSyntheticLambda1;-><init>(Landroid/view/KeyEvent;)V

    invoke-static {p0}, Lcom/superwall/sdk/misc/MainThreadKt;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final dispatchKeyEvent$lambda$0(Landroid/view/KeyEvent;)Lkotlin/Unit;
    .locals 1

    .line 25
    sget-object v0, Lcom/superwall/sdk/game/GameControllerManager;->Companion:Lcom/superwall/sdk/game/GameControllerManager$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/game/GameControllerManager$Companion;->getShared()Lcom/superwall/sdk/game/GameControllerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/superwall/sdk/game/GameControllerManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final dispatchMotionEvent(Lcom/superwall/sdk/Superwall;Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "motionEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance p0, Lcom/superwall/sdk/game/PublicGameControllerKt$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/superwall/sdk/game/PublicGameControllerKt$$ExternalSyntheticLambda0;-><init>(Landroid/view/MotionEvent;)V

    invoke-static {p0}, Lcom/superwall/sdk/misc/MainThreadKt;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final dispatchMotionEvent$lambda$1(Landroid/view/MotionEvent;)Lkotlin/Unit;
    .locals 1

    .line 39
    sget-object v0, Lcom/superwall/sdk/game/GameControllerManager;->Companion:Lcom/superwall/sdk/game/GameControllerManager$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/game/GameControllerManager$Companion;->getShared()Lcom/superwall/sdk/game/GameControllerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/superwall/sdk/game/GameControllerManager;->dispatchMotionEvent(Landroid/view/MotionEvent;)Z

    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
