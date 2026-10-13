.class public final Landroidx/compose/material3/PrecisionPointer_androidKt;
.super Ljava/lang/Object;
.source "PrecisionPointer.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrecisionPointer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrecisionPointer.android.kt\nandroidx/compose/material3/PrecisionPointer_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Context.kt\nandroidx/core/content/ContextKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 IntSet.kt\nandroidx/collection/IntSet\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 7 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,187:1\n75#2:188\n75#2:189\n31#3:190\n1282#4,6:191\n1282#4,6:197\n1282#4,6:203\n255#5,4:209\n225#5,7:213\n236#5,3:221\n239#5,9:225\n259#5:234\n1399#6:220\n1270#6:224\n66#7,5:235\n*S KotlinDebug\n*F\n+ 1 PrecisionPointer.android.kt\nandroidx/compose/material3/PrecisionPointer_androidKt\n*L\n41#1:188\n58#1:189\n61#1:190\n62#1:191,6\n65#1:197,6\n81#1:203,6\n158#1:209,4\n158#1:213,7\n158#1:221,3\n158#1:225,9\n158#1:234\n158#1:220\n158#1:224\n110#1:235,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a \u0010\u0000\u001a\u00020\u00012\u0011\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0004H\u0001\u00a2\u0006\u0002\u0010\u0005\u001a\u0015\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u0003\u00a2\u0006\u0002\u0010\t\u001a&\u0010\r\u001a\u0004\u0018\u00010\u0008*\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000cH\u0002\u001a\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0013*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000cH\u0002\u001a\u000e\u0010\u0010\u001a\u00020\u000c*\u0004\u0018\u00010\u0016H\u0002\u001a\u000e\u0010\u0011\u001a\u00020\u000c*\u0004\u0018\u00010\u0016H\u0002\u001a\u0014\u0010\u0017\u001a\u00020\u000c*\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000fH\u0002\"\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "EnsurePrecisionPointerListenersRegistered",
        "",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "rememberDevicesState",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/material3/Devices;",
        "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;",
        "LocalIsPrecisionPointerListenerRegistered",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "",
        "withUpdateForDevice",
        "deviceId",
        "",
        "isKeyboard",
        "isMouse",
        "withUpdatedValuePresence",
        "Landroidx/collection/IntSet;",
        "value",
        "shouldBePresent",
        "Landroid/view/InputDevice;",
        "hasSource",
        "source",
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final LocalIsPrecisionPointerListenerRegistered:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bFj8QLV-3xvF_b_6BW2u08jMS2s(Landroid/hardware/input/InputManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/PrecisionPointer_androidKt;->rememberDevicesState$lambda$2$0(Landroid/hardware/input/InputManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u-VgpINqR0rQG0w1pv7kxLpuuIM()Z
    .locals 1

    invoke-static {}, Landroidx/compose/material3/PrecisionPointer_androidKt;->LocalIsPrecisionPointerListenerRegistered$lambda$0()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$zYrSjQ4sbnI1mjXahjd6D8LvFHQ(Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/PrecisionPointer_androidKt;->EnsurePrecisionPointerListenersRegistered$lambda$0(Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Landroidx/compose/material3/PrecisionPointer_androidKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/material3/PrecisionPointer_androidKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/PrecisionPointer_androidKt;->LocalIsPrecisionPointerListenerRegistered:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final EnsurePrecisionPointerListenersRegistered(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const v0, 0x1a6045ae

    .line 38
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(EnsurePrecisionPointerListenersRegistered)N(content):PrecisionPointer.android.kt#uh7d8r"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p2, 0x6

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v3, v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v2, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    and-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.EnsurePrecisionPointerListenersRegistered (PrecisionPointer.android.kt:37)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 40
    :cond_3
    sget-boolean v0, Landroidx/compose/material3/ComposeMaterial3Flags;->isPrecisionPointerComponentSizingEnabled:Z

    if-eqz v0, :cond_4

    const v0, 0x365abc0

    .line 41
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "40@1673L7"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material3/PrecisionPointer_androidKt;->LocalIsPrecisionPointerListenerRegistered:Landroidx/compose/runtime/ProvidableCompositionLocal;

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v2, 0x789c5f52

    const-string v3, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    .line 188
    invoke-static {p1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 41
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_3

    :cond_4
    const v0, 0x694fd115

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move v0, v4

    :goto_3
    if-eqz v0, :cond_6

    const v0, 0x69514422

    .line 42
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "44@1899L22,47@2084L90"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 45
    invoke-static {p1, v4}, Landroidx/compose/material3/PrecisionPointer_androidKt;->rememberDevicesState(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/Devices;

    .line 46
    invoke-static {}, Landroidx/compose/material3/PrecisionPointerKt;->getShouldUsePrecisionPointerComponentSizing()Landroidx/compose/runtime/MutableState;

    move-result-object v2

    if-eqz v0, :cond_5

    .line 47
    invoke-virtual {v0}, Landroidx/compose/material3/Devices;->getKeyboards()Landroidx/collection/IntSet;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/collection/IntSet;->isNotEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroidx/compose/material3/Devices;->getMice()Landroidx/collection/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/IntSet;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move v4, v5

    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 46
    invoke-interface {v2, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 48
    sget-object v0, Landroidx/compose/material3/PrecisionPointer_androidKt;->LocalIsPrecisionPointerListenerRegistered:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    sget v2, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    shl-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v2

    invoke-static {v0, p0, p1, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 42
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_4

    :cond_6
    const v0, 0x69584604

    .line 49
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "51@2347L9"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v1, 0xe

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_5

    .line 38
    :cond_7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 54
    :cond_8
    :goto_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance v0, Landroidx/compose/material3/PrecisionPointer_androidKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Landroidx/compose/material3/PrecisionPointer_androidKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_9
    return-void
.end method

.method private static final EnsurePrecisionPointerListenersRegistered$lambda$0(Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p1

    invoke-static {p0, p2, p1}, Landroidx/compose/material3/PrecisionPointer_androidKt;->EnsurePrecisionPointerListenersRegistered(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final LocalIsPrecisionPointerListenerRegistered$lambda$0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final synthetic access$isKeyboard(Landroid/view/InputDevice;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/PrecisionPointer_androidKt;->isKeyboard(Landroid/view/InputDevice;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isMouse(Landroid/view/InputDevice;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/PrecisionPointer_androidKt;->isMouse(Landroid/view/InputDevice;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$withUpdateForDevice(Landroidx/compose/material3/Devices;IZZ)Landroidx/compose/material3/Devices;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/PrecisionPointer_androidKt;->withUpdateForDevice(Landroidx/compose/material3/Devices;IZZ)Landroidx/compose/material3/Devices;

    move-result-object p0

    return-object p0
.end method

.method private static final hasSource(Landroid/view/InputDevice;I)Z
    .locals 0

    .line 186
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final isKeyboard(Landroid/view/InputDevice;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x101

    .line 175
    invoke-static {p0, v0}, Landroidx/compose/material3/PrecisionPointer_androidKt;->hasSource(Landroid/view/InputDevice;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final isMouse(Landroid/view/InputDevice;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2002

    .line 181
    invoke-static {p0, v0}, Landroidx/compose/material3/PrecisionPointer_androidKt;->hasSource(Landroid/view/InputDevice;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4002

    .line 184
    invoke-static {p0, v0}, Landroidx/compose/material3/PrecisionPointer_androidKt;->hasSource(Landroid/view/InputDevice;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final rememberDevicesState(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material3/Devices;",
            ">;"
        }
    .end annotation

    const v0, 0x37361bb

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "C(rememberDevicesState)57@2463L7,64@2664L613,80@3309L1225,80@3283L1251:PrecisionPointer.android.kt#uh7d8r"

    invoke-static {p0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.rememberDevicesState (PrecisionPointer.android.kt:56)"

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 58
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    const v0, 0x789c5f52

    const-string v1, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    .line 189
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 58
    check-cast p1, Landroid/content/Context;

    .line 190
    const-class v0, Landroid/hardware/input/InputManager;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    check-cast v0, Landroid/hardware/input/InputManager;

    const/4 v1, 0x2

    const-string v2, "CC(remember):PrecisionPointer.android.kt#9igjgp"

    const/4 v3, 0x0

    if-nez v0, :cond_4

    const v0, -0x6fe35b4a

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "61@2566L42"

    invoke-static {p0, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v0, -0xbde0a5b

    .line 62
    invoke-static {p0, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p1

    .line 191
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_1

    .line 192
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_2

    .line 62
    :cond_1
    invoke-static {v3, v3, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 194
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 62
    :cond_2
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    check-cast v0, Landroidx/compose/runtime/State;

    return-object v0

    :cond_4
    const v4, -0xbde11fc

    .line 61
    invoke-interface {p0, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v4, -0xbddfbe0

    .line 65
    invoke-static {p0, v4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 197
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v4, :cond_5

    .line 198
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_9

    .line 67
    :cond_5
    new-instance v4, Landroidx/collection/MutableIntSet;

    const/4 v5, 0x1

    invoke-direct {v4, v6, v5, v3}, Landroidx/collection/MutableIntSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    new-instance v7, Landroidx/collection/MutableIntSet;

    invoke-direct {v7, v6, v5, v3}, Landroidx/collection/MutableIntSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v5

    array-length v8, v5

    move v9, v6

    :goto_0
    if-ge v9, v8, :cond_8

    aget v10, v5, v9

    .line 70
    invoke-virtual {v0, v10}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v11

    .line 71
    invoke-static {v11}, Landroidx/compose/material3/PrecisionPointer_androidKt;->isKeyboard(Landroid/view/InputDevice;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 72
    invoke-virtual {v4, v10}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 74
    :cond_6
    invoke-static {v11}, Landroidx/compose/material3/PrecisionPointer_androidKt;->isMouse(Landroid/view/InputDevice;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 75
    invoke-virtual {v7, v10}, Landroidx/collection/MutableIntSet;->add(I)Z

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 78
    :cond_8
    new-instance v5, Landroidx/compose/material3/Devices;

    check-cast v4, Landroidx/collection/IntSet;

    check-cast v7, Landroidx/collection/IntSet;

    invoke-direct {v5, v4, v7}, Landroidx/compose/material3/Devices;-><init>(Landroidx/collection/IntSet;Landroidx/collection/IntSet;)V

    invoke-static {v5, v3, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 200
    invoke-interface {p0, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 65
    :cond_9
    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v1, -0xbdda8dc

    .line 81
    invoke-static {p0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 203
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_a

    .line 204
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_b

    .line 81
    :cond_a
    new-instance v2, Landroidx/compose/material3/PrecisionPointer_androidKt$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v5}, Landroidx/compose/material3/PrecisionPointer_androidKt$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/input/InputManager;Landroidx/compose/runtime/MutableState;)V

    .line 206
    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 81
    :cond_b
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {p1, v2, p0, v6}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    check-cast v5, Landroidx/compose/runtime/State;

    return-object v5
.end method

.method private static final rememberDevicesState$lambda$2$0(Landroid/hardware/input/InputManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    .line 83
    new-instance p2, Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1;

    invoke-direct {p2, p0, p1}, Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1;-><init>(Landroid/hardware/input/InputManager;Landroidx/compose/runtime/MutableState;)V

    .line 109
    move-object p1, p2

    check-cast p1, Landroid/hardware/input/InputManager$InputDeviceListener;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 235
    new-instance p1, Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$lambda$2$0$$inlined$onDispose$1;

    invoke-direct {p1, p0, p2}, Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$lambda$2$0$$inlined$onDispose$1;-><init>(Landroid/hardware/input/InputManager;Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1;)V

    check-cast p1, Landroidx/compose/runtime/DisposableEffectResult;

    return-object p1
.end method

.method private static final withUpdateForDevice(Landroidx/compose/material3/Devices;IZZ)Landroidx/compose/material3/Devices;
    .locals 1

    .line 133
    invoke-virtual {p0}, Landroidx/compose/material3/Devices;->getKeyboards()Landroidx/collection/IntSet;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidx/compose/material3/PrecisionPointer_androidKt;->withUpdatedValuePresence(Landroidx/collection/IntSet;IZ)Landroidx/collection/IntSet;

    move-result-object p2

    .line 134
    invoke-virtual {p0}, Landroidx/compose/material3/Devices;->getMice()Landroidx/collection/IntSet;

    move-result-object v0

    invoke-static {v0, p1, p3}, Landroidx/compose/material3/PrecisionPointer_androidKt;->withUpdatedValuePresence(Landroidx/collection/IntSet;IZ)Landroidx/collection/IntSet;

    move-result-object p1

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 141
    invoke-virtual {p0}, Landroidx/compose/material3/Devices;->getKeyboards()Landroidx/collection/IntSet;

    move-result-object p2

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/material3/Devices;->getMice()Landroidx/collection/IntSet;

    move-result-object p1

    :cond_2
    invoke-virtual {p0, p2, p1}, Landroidx/compose/material3/Devices;->copy(Landroidx/collection/IntSet;Landroidx/collection/IntSet;)Landroidx/compose/material3/Devices;

    move-result-object p0

    return-object p0
.end method

.method private static final withUpdatedValuePresence(Landroidx/collection/IntSet;IZ)Landroidx/collection/IntSet;
    .locals 13

    .line 154
    invoke-virtual {p0, p1}, Landroidx/collection/IntSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 157
    new-instance p2, Landroidx/collection/MutableIntSet;

    invoke-virtual {p0}, Landroidx/collection/IntSet;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p2, v0}, Landroidx/collection/MutableIntSet;-><init>(I)V

    .line 210
    iget-object v0, p0, Landroidx/collection/IntSet;->elements:[I

    .line 214
    iget-object p0, p0, Landroidx/collection/IntSet;->metadata:[J

    .line 215
    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 218
    :goto_0
    aget-wide v4, p0, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_1

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    .line 212
    aget v9, v0, v9

    if-eq v9, p1, :cond_0

    .line 158
    invoke-virtual {p2, p1}, Landroidx/collection/MutableIntSet;->add(I)Z

    :cond_0
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v7, :cond_3

    :cond_2
    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_3
    check-cast p2, Landroidx/collection/IntSet;

    return-object p2

    :cond_4
    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 162
    new-instance p2, Landroidx/collection/MutableIntSet;

    invoke-virtual {p0}, Landroidx/collection/IntSet;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p2, v0}, Landroidx/collection/MutableIntSet;-><init>(I)V

    .line 163
    invoke-virtual {p2, p0}, Landroidx/collection/MutableIntSet;->addAll(Landroidx/collection/IntSet;)Z

    .line 164
    invoke-virtual {p2, p1}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 165
    check-cast p2, Landroidx/collection/IntSet;

    return-object p2

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method
