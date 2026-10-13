.class public final Landroidx/compose/material3/AnalogTimePickerState;
.super Ljava/lang/Object;
.source "TimePicker.kt"

# interfaces
.implements Landroidx/compose/material3/TimePickerState;
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/AnalogTimePickerState\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,2364:1\n113#2:2365\n85#3:2366\n117#3,2:2367\n*S KotlinDebug\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/AnalogTimePickerState\n*L\n814#1:2365\n814#1:2366\n814#1:2367,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001c\u0010\u001b\u001a\u00020\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001eH\u0086@\u00a2\u0006\u0002\u0010\u001fJ\u0008\u0010 \u001a\u00020\u0006H\u0002J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0017H\u0002J\u001c\u0010*\u001a\u00020\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001eH\u0086@\u00a2\u0006\u0002\u0010\u001fJ.\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u00172\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001e2\u0008\u0008\u0002\u0010-\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0002\u0010.J\u000c\u00109\u001a\u00020\u0017*\u00020\u0017H\u0002J\u000c\u0010<\u001a\u000200*\u00020\u0017H\u0002J\u000c\u0010=\u001a\u000200*\u00020\u0017H\u0002J\u0010\u0010>\u001a\u00020\u00172\u0006\u0010,\u001a\u00020\u0017H\u0002J\u0008\u0010?\u001a\u00020\u001cH\u0016J\u0008\u0010@\u001a\u00020\u001cH\u0016J\u0008\u0010A\u001a\u00020\u001cH\u0016R\u0011\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR+\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0011R\u000e\u0010\u0019\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010!\u001a\u00020\"8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u001a\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020)0(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u00101\u001a\u0002002\u0006\u0010/\u001a\u0002008V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R$\u00106\u001a\u0002002\u0006\u0010/\u001a\u0002008V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u00087\u00103\"\u0004\u00088\u00105R\u000e\u0010:\u001a\u00020;X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010B\u001a\u0002008\u0017X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008C\u00103\"\u0004\u0008D\u00105R\u0018\u0010E\u001a\u00020\u0006X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u001a\u0010I\u001a\u0002008\u0017X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008J\u00103\"\u0004\u0008K\u00105R\u0018\u0010L\u001a\u00020MX\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008N\u00103\"\u0004\u0008O\u00105\u00a8\u0006P"
    }
    d2 = {
        "Landroidx/compose/material3/AnalogTimePickerState;",
        "Landroidx/compose/material3/TimePickerState;",
        "Landroidx/compose/runtime/RememberObserver;",
        "state",
        "userOverride",
        "Landroidx/compose/ui/node/Ref;",
        "",
        "<init>",
        "(Landroidx/compose/material3/TimePickerState;Landroidx/compose/ui/node/Ref;)V",
        "getState",
        "()Landroidx/compose/material3/TimePickerState;",
        "getUserOverride",
        "()Landroidx/compose/ui/node/Ref;",
        "<set-?>",
        "Landroidx/compose/ui/unit/Dp;",
        "currentDiameter",
        "getCurrentDiameter-D9Ej5fM",
        "()F",
        "setCurrentDiameter-0680j_4",
        "(F)V",
        "currentDiameter$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "currentAngle",
        "",
        "getCurrentAngle",
        "hourAngle",
        "minuteAngle",
        "animateToCurrent",
        "",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isUpdated",
        "clockFaceValues",
        "Landroidx/collection/IntList;",
        "getClockFaceValues",
        "()Landroidx/collection/IntList;",
        "endValueForAnimation",
        "new",
        "anim",
        "Landroidx/compose/animation/core/Animatable;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "onGestureEnd",
        "rotateTo",
        "angle",
        "animate",
        "(FLandroidx/compose/animation/core/AnimationSpec;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "value",
        "",
        "minuteInput",
        "getMinuteInput",
        "()I",
        "setMinuteInput",
        "(I)V",
        "hourInput",
        "getHourInput",
        "setHourInput",
        "normalize",
        "mutex",
        "Landroidx/compose/foundation/MutatorMutex;",
        "toHour",
        "toMinute",
        "offsetAngle",
        "onRemembered",
        "onForgotten",
        "onAbandoned",
        "hour",
        "getHour",
        "setHour",
        "is24hour",
        "()Z",
        "set24hour",
        "(Z)V",
        "minute",
        "getMinute",
        "setMinute",
        "selection",
        "Landroidx/compose/material3/TimePickerSelectionMode;",
        "getSelection-yecRtBI",
        "setSelection-6_8s6DQ",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private anim:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private final currentDiameter$delegate:Landroidx/compose/runtime/MutableState;

.field private hourAngle:F

.field private minuteAngle:F

.field private final mutex:Landroidx/compose/foundation/MutatorMutex;

.field private final state:Landroidx/compose/material3/TimePickerState;

.field private final userOverride:Landroidx/compose/ui/node/Ref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/Ref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material3/TimePickerState;Landroidx/compose/ui/node/Ref;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/TimePickerState;",
            "Landroidx/compose/ui/node/Ref<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    iput-object p1, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    .line 811
    iput-object p2, p0, Landroidx/compose/material3/AnalogTimePickerState;->userOverride:Landroidx/compose/ui/node/Ref;

    const/4 p2, 0x0

    int-to-float p2, p2

    .line 2365
    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 814
    invoke-static {p2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/AnalogTimePickerState;->currentDiameter$delegate:Landroidx/compose/runtime/MutableState;

    .line 819
    invoke-interface {p1}, Landroidx/compose/material3/TimePickerState;->getHour()I

    move-result p2

    rem-int/lit8 p2, p2, 0xc

    int-to-float p2, p2

    const v2, 0x3f060a92

    mul-float/2addr p2, v2

    const v2, 0x3fc90fdb

    sub-float/2addr p2, v2

    iput p2, p0, Landroidx/compose/material3/AnalogTimePickerState;->hourAngle:F

    .line 820
    invoke-interface {p1}, Landroidx/compose/material3/TimePickerState;->getMinute()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3dd67750

    mul-float/2addr p1, p2

    sub-float/2addr p1, v2

    iput p1, p0, Landroidx/compose/material3/AnalogTimePickerState;->minuteAngle:F

    .line 871
    iget p1, p0, Landroidx/compose/material3/AnalogTimePickerState;->hourAngle:F

    const/4 p2, 0x0

    invoke-static {p1, p2, v1, v0}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/AnalogTimePickerState;->anim:Landroidx/compose/animation/core/Animatable;

    .line 940
    new-instance p1, Landroidx/compose/foundation/MutatorMutex;

    invoke-direct {p1}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/AnalogTimePickerState;->mutex:Landroidx/compose/foundation/MutatorMutex;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/TimePickerState;Landroidx/compose/ui/node/Ref;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 811
    new-instance p2, Landroidx/compose/ui/node/Ref;

    invoke-direct {p2}, Landroidx/compose/ui/node/Ref;-><init>()V

    .line 809
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/AnalogTimePickerState;-><init>(Landroidx/compose/material3/TimePickerState;Landroidx/compose/ui/node/Ref;)V

    return-void
.end method

.method public static final synthetic access$endValueForAnimation(Landroidx/compose/material3/AnalogTimePickerState;F)F
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Landroidx/compose/material3/AnalogTimePickerState;->endValueForAnimation(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAnim$p(Landroidx/compose/material3/AnalogTimePickerState;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 809
    iget-object p0, p0, Landroidx/compose/material3/AnalogTimePickerState;->anim:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public static final synthetic access$getHourAngle$p(Landroidx/compose/material3/AnalogTimePickerState;)F
    .locals 0

    .line 809
    iget p0, p0, Landroidx/compose/material3/AnalogTimePickerState;->hourAngle:F

    return p0
.end method

.method public static final synthetic access$getMinuteAngle$p(Landroidx/compose/material3/AnalogTimePickerState;)F
    .locals 0

    .line 809
    iget p0, p0, Landroidx/compose/material3/AnalogTimePickerState;->minuteAngle:F

    return p0
.end method

.method public static final synthetic access$offsetAngle(Landroidx/compose/material3/AnalogTimePickerState;F)F
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Landroidx/compose/material3/AnalogTimePickerState;->offsetAngle(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$setHourAngle$p(Landroidx/compose/material3/AnalogTimePickerState;F)V
    .locals 0

    .line 809
    iput p1, p0, Landroidx/compose/material3/AnalogTimePickerState;->hourAngle:F

    return-void
.end method

.method public static final synthetic access$setMinuteAngle$p(Landroidx/compose/material3/AnalogTimePickerState;F)V
    .locals 0

    .line 809
    iput p1, p0, Landroidx/compose/material3/AnalogTimePickerState;->minuteAngle:F

    return-void
.end method

.method public static final synthetic access$toHour(Landroidx/compose/material3/AnalogTimePickerState;F)I
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Landroidx/compose/material3/AnalogTimePickerState;->toHour(F)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$toMinute(Landroidx/compose/material3/AnalogTimePickerState;F)I
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Landroidx/compose/material3/AnalogTimePickerState;->toMinute(F)I

    move-result p0

    return p0
.end method

.method private final endValueForAnimation(F)F
    .locals 2

    .line 859
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->anim:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float/2addr v0, p1

    :goto_0
    const p1, 0x40490fdb    # (float)Math.PI

    cmpl-float p1, v0, p1

    const v1, 0x40c90fdb

    if-lez p1, :cond_0

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    :goto_1
    const p1, -0x3fb6f025

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    add-float/2addr v0, v1

    goto :goto_1

    .line 868
    :cond_1
    iget-object p1, p0, Landroidx/compose/material3/AnalogTimePickerState;->anim:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr p1, v0

    return p1
.end method

.method private final isUpdated()Z
    .locals 3

    .line 838
    invoke-virtual {p0}, Landroidx/compose/material3/AnalogTimePickerState;->getSelection-yecRtBI()I

    move-result v0

    sget-object v1, Landroidx/compose/material3/TimePickerSelectionMode;->Companion:Landroidx/compose/material3/TimePickerSelectionMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/TimePickerSelectionMode$Companion;->getHour-yecRtBI()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/material3/TimePickerSelectionMode;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->anim:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getTargetValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/material3/AnalogTimePickerState;->normalize(F)F

    move-result v0

    iget v2, p0, Landroidx/compose/material3/AnalogTimePickerState;->hourAngle:F

    invoke-direct {p0, v2}, Landroidx/compose/material3/AnalogTimePickerState;->normalize(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    return v1

    .line 845
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/AnalogTimePickerState;->getSelection-yecRtBI()I

    move-result v0

    sget-object v2, Landroidx/compose/material3/TimePickerSelectionMode;->Companion:Landroidx/compose/material3/TimePickerSelectionMode$Companion;

    invoke-virtual {v2}, Landroidx/compose/material3/TimePickerSelectionMode$Companion;->getMinute-yecRtBI()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/material3/TimePickerSelectionMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->anim:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getTargetValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/material3/AnalogTimePickerState;->normalize(F)F

    move-result v0

    iget v2, p0, Landroidx/compose/material3/AnalogTimePickerState;->minuteAngle:F

    invoke-direct {p0, v2}, Landroidx/compose/material3/AnalogTimePickerState;->normalize(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final normalize(F)F
    .locals 6

    float-to-double v0, p1

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr v0, v2

    const-wide/16 v4, 0x0

    cmpg-double p1, v0, v4

    if-gez p1, :cond_0

    add-double/2addr v0, v2

    :cond_0
    double-to-float p1, v0

    return p1
.end method

.method private final offsetAngle(F)F
    .locals 1

    const v0, 0x3fc90fdb

    add-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const v0, 0x40c90fdb

    add-float/2addr p1, v0

    :cond_0
    return p1
.end method

.method public static synthetic rotateTo$default(Landroidx/compose/material3/AnalogTimePickerState;FLandroidx/compose/animation/core/AnimationSpec;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 886
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/AnalogTimePickerState;->rotateTo(FLandroidx/compose/animation/core/AnimationSpec;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final toHour(F)I
    .locals 4

    const v0, 0x3e860a92

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v0, v2

    float-to-double v2, p1

    add-double/2addr v2, v0

    const p1, 0x3f060a92

    float-to-double v0, p1

    div-double/2addr v2, v0

    double-to-int p1, v2

    .line 945
    rem-int/lit8 p1, p1, 0xc

    return p1
.end method

.method private final toMinute(F)I
    .locals 4

    const v0, 0x3d567750

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v0, v2

    float-to-double v2, p1

    add-double/2addr v2, v0

    const p1, 0x3dd67750

    float-to-double v0, p1

    div-double/2addr v2, v0

    double-to-int p1, v2

    .line 951
    rem-int/lit8 p1, p1, 0x3c

    return p1
.end method


# virtual methods
.method public final animateToCurrent(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 823
    invoke-direct {p0}, Landroidx/compose/material3/AnalogTimePickerState;->isUpdated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 828
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/AnalogTimePickerState;->getSelection-yecRtBI()I

    move-result v0

    sget-object v1, Landroidx/compose/material3/TimePickerSelectionMode;->Companion:Landroidx/compose/material3/TimePickerSelectionMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/TimePickerSelectionMode$Companion;->getHour-yecRtBI()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/material3/TimePickerSelectionMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    iget v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->hourAngle:F

    invoke-direct {p0, v0}, Landroidx/compose/material3/AnalogTimePickerState;->endValueForAnimation(F)F

    move-result v0

    goto :goto_0

    .line 831
    :cond_1
    iget v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->minuteAngle:F

    invoke-direct {p0, v0}, Landroidx/compose/material3/AnalogTimePickerState;->endValueForAnimation(F)F

    move-result v0

    .line 833
    :goto_0
    iget-object v1, p0, Landroidx/compose/material3/AnalogTimePickerState;->mutex:Landroidx/compose/foundation/MutatorMutex;

    sget-object v2, Landroidx/compose/foundation/MutatePriority;->PreventUserInput:Landroidx/compose/foundation/MutatePriority;

    new-instance v3, Landroidx/compose/material3/AnalogTimePickerState$animateToCurrent$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, p1, v4}, Landroidx/compose/material3/AnalogTimePickerState$animateToCurrent$2;-><init>(Landroidx/compose/material3/AnalogTimePickerState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2, v3, p2}, Landroidx/compose/foundation/MutatorMutex;->mutate(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getClockFaceValues()Landroidx/collection/IntList;
    .locals 2

    .line 855
    invoke-virtual {p0}, Landroidx/compose/material3/AnalogTimePickerState;->getSelection-yecRtBI()I

    move-result v0

    sget-object v1, Landroidx/compose/material3/TimePickerSelectionMode;->Companion:Landroidx/compose/material3/TimePickerSelectionMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/TimePickerSelectionMode$Companion;->getMinute-yecRtBI()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/material3/TimePickerSelectionMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/compose/material3/TimePickerKt;->access$getMinutes$p()Landroidx/collection/IntList;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroidx/compose/material3/TimePickerKt;->access$getHours$p()Landroidx/collection/IntList;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentAngle()F
    .locals 1

    .line 817
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->anim:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getCurrentDiameter-D9Ej5fM()F
    .locals 1

    .line 814
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->currentDiameter$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .line 2366
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0}, Landroidx/compose/material3/TimePickerState;->getHour()I

    move-result v0

    return v0
.end method

.method public getHourInput()I
    .locals 1

    .line 921
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0}, Landroidx/compose/material3/TimePickerState;->getHour()I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0}, Landroidx/compose/material3/TimePickerState;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMinuteInput()I
    .locals 1

    .line 911
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0}, Landroidx/compose/material3/TimePickerState;->getMinute()I

    move-result v0

    return v0
.end method

.method public getSelection-yecRtBI()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0}, Landroidx/compose/material3/TimePickerState;->getSelection-yecRtBI()I

    move-result v0

    return v0
.end method

.method public final getState()Landroidx/compose/material3/TimePickerState;
    .locals 1

    .line 810
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    return-object v0
.end method

.method public final getUserOverride()Landroidx/compose/ui/node/Ref;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/node/Ref<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 811
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->userOverride:Landroidx/compose/ui/node/Ref;

    return-object v0
.end method

.method public is24hour()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0}, Landroidx/compose/material3/TimePickerState;->is24hour()Z

    move-result v0

    return v0
.end method

.method public onAbandoned()V
    .locals 0

    return-void
.end method

.method public onForgotten()V
    .locals 0

    return-void
.end method

.method public final onGestureEnd(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 876
    invoke-virtual {p0}, Landroidx/compose/material3/AnalogTimePickerState;->getSelection-yecRtBI()I

    move-result v0

    sget-object v1, Landroidx/compose/material3/TimePickerSelectionMode;->Companion:Landroidx/compose/material3/TimePickerSelectionMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/TimePickerSelectionMode$Companion;->getHour-yecRtBI()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/material3/TimePickerSelectionMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->hourAngle:F

    goto :goto_0

    .line 879
    :cond_0
    iget v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->minuteAngle:F

    .line 875
    :goto_0
    invoke-direct {p0, v0}, Landroidx/compose/material3/AnalogTimePickerState;->endValueForAnimation(F)F

    move-result v0

    .line 883
    iget-object v1, p0, Landroidx/compose/material3/AnalogTimePickerState;->mutex:Landroidx/compose/foundation/MutatorMutex;

    sget-object v2, Landroidx/compose/foundation/MutatePriority;->PreventUserInput:Landroidx/compose/foundation/MutatePriority;

    new-instance v3, Landroidx/compose/material3/AnalogTimePickerState$onGestureEnd$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, p1, v4}, Landroidx/compose/material3/AnalogTimePickerState$onGestureEnd$2;-><init>(Landroidx/compose/material3/AnalogTimePickerState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2, v3, p2}, Landroidx/compose/foundation/MutatorMutex;->mutate(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public onRemembered()V
    .locals 4

    .line 960
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0}, Landroidx/compose/material3/TimePickerState;->getHour()I

    move-result v0

    rem-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    const v1, 0x3f060a92

    mul-float/2addr v0, v1

    const v1, 0x3fc90fdb

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->hourAngle:F

    .line 961
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0}, Landroidx/compose/material3/TimePickerState;->getMinute()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3dd67750

    mul-float/2addr v0, v2

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->minuteAngle:F

    .line 964
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0}, Landroidx/compose/material3/TimePickerState;->getSelection-yecRtBI()I

    move-result v0

    sget-object v1, Landroidx/compose/material3/TimePickerSelectionMode;->Companion:Landroidx/compose/material3/TimePickerSelectionMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/TimePickerSelectionMode$Companion;->getHour-yecRtBI()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/material3/TimePickerSelectionMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->hourAngle:F

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->minuteAngle:F

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 963
    invoke-static {v0, v3, v1, v2}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    .line 962
    iput-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->anim:Landroidx/compose/animation/core/Animatable;

    return-void
.end method

.method public final rotateTo(FLandroidx/compose/animation/core/AnimationSpec;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->userOverride:Landroidx/compose/ui/node/Ref;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/Ref;->setValue(Ljava/lang/Object;)V

    .line 892
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->mutex:Landroidx/compose/foundation/MutatorMutex;

    sget-object v1, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    new-instance v2, Landroidx/compose/material3/AnalogTimePickerState$rotateTo$2;

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move-object v6, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Landroidx/compose/material3/AnalogTimePickerState$rotateTo$2;-><init>(Landroidx/compose/material3/AnalogTimePickerState;FZLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2, p4}, Landroidx/compose/foundation/MutatorMutex;->mutate(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public set24hour(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0, p1}, Landroidx/compose/material3/TimePickerState;->set24hour(Z)V

    return-void
.end method

.method public final setCurrentDiameter-0680j_4(F)V
    .locals 1

    .line 814
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->currentDiameter$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p1

    .line 2367
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setHour(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0, p1}, Landroidx/compose/material3/TimePickerState;->setHour(I)V

    return-void
.end method

.method public setHourInput(I)V
    .locals 3

    .line 923
    rem-int/lit8 v0, p1, 0xc

    int-to-float v0, v0

    const v1, 0x3f060a92

    mul-float/2addr v0, v1

    const v1, 0x3fc90fdb

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->hourAngle:F

    .line 924
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0, p1}, Landroidx/compose/material3/TimePickerState;->setHour(I)V

    .line 925
    invoke-virtual {p0}, Landroidx/compose/material3/AnalogTimePickerState;->getSelection-yecRtBI()I

    move-result p1

    sget-object v0, Landroidx/compose/material3/TimePickerSelectionMode;->Companion:Landroidx/compose/material3/TimePickerSelectionMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/TimePickerSelectionMode$Companion;->getHour-yecRtBI()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/material3/TimePickerSelectionMode;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 926
    iget p1, p0, Landroidx/compose/material3/AnalogTimePickerState;->hourAngle:F

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/AnalogTimePickerState;->anim:Landroidx/compose/animation/core/Animatable;

    :cond_0
    return-void
.end method

.method public setMinute(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0, p1}, Landroidx/compose/material3/TimePickerState;->setMinute(I)V

    return-void
.end method

.method public setMinuteInput(I)V
    .locals 3

    const v0, 0x3dd67750

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const v0, 0x3fc90fdb

    sub-float/2addr v1, v0

    .line 913
    iput v1, p0, Landroidx/compose/material3/AnalogTimePickerState;->minuteAngle:F

    .line 914
    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0, p1}, Landroidx/compose/material3/TimePickerState;->setMinute(I)V

    .line 915
    invoke-virtual {p0}, Landroidx/compose/material3/AnalogTimePickerState;->getSelection-yecRtBI()I

    move-result p1

    sget-object v0, Landroidx/compose/material3/TimePickerSelectionMode;->Companion:Landroidx/compose/material3/TimePickerSelectionMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/TimePickerSelectionMode$Companion;->getMinute-yecRtBI()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/material3/TimePickerSelectionMode;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 916
    iget p1, p0, Landroidx/compose/material3/AnalogTimePickerState;->minuteAngle:F

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/AnalogTimePickerState;->anim:Landroidx/compose/animation/core/Animatable;

    :cond_0
    return-void
.end method

.method public setSelection-6_8s6DQ(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/AnalogTimePickerState;->state:Landroidx/compose/material3/TimePickerState;

    invoke-interface {v0, p1}, Landroidx/compose/material3/TimePickerState;->setSelection-6_8s6DQ(I)V

    return-void
.end method
