.class public final Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;
.super Ljava/lang/Object;
.source "SystemViewBasedPresets.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001a\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\u000c\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u0007J\u0006\u0010\u000e\u001a\u00020\u0007J\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\u0007J\u0006\u0010\u0013\u001a\u00020\u0007J\u0006\u0010\u0014\u001a\u00020\u0007J\u0006\u0010\u0015\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\u0007J\u0006\u0010\u0017\u001a\u00020\u0007J\u0006\u0010\u0018\u001a\u00020\u0007J\u0006\u0010\u0019\u001a\u00020\u0007J\u0006\u0010\u001a\u001a\u00020\u0007J\u0006\u0010\u001b\u001a\u00020\u0007J\u0006\u0010\u001c\u001a\u00020\u0007J\u0006\u0010\u001d\u001a\u00020\u0007J\u0006\u0010\u001e\u001a\u00020\u0007J\u0006\u0010\u001f\u001a\u00020\u0007J\u0010\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\"H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;",
        "",
        "activityProvider",
        "Lcom/swmansion/pulsar/ActivityProvider;",
        "<init>",
        "(Lcom/swmansion/pulsar/ActivityProvider;)V",
        "longPress",
        "",
        "virtualKey",
        "keyboardTap",
        "clockTick",
        "calendarDate",
        "contextClick",
        "keyboardPress",
        "keyboardRelease",
        "virtualKeyRelease",
        "textHandleMove",
        "dragCrossing",
        "gestureStart",
        "gestureEnd",
        "edgeSqueeze",
        "edgeRelease",
        "confirm",
        "release",
        "scrollTick",
        "scrollItemFocus",
        "scrollLimit",
        "toggleOn",
        "toggleOff",
        "dragStart",
        "segmentTick",
        "segmentFrequentTick",
        "playHaptic",
        "preset",
        "",
        "Pulsar_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final activityProvider:Lcom/swmansion/pulsar/ActivityProvider;


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/ActivityProvider;)V
    .locals 1

    const-string v0, "activityProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->activityProvider:Lcom/swmansion/pulsar/ActivityProvider;

    return-void
.end method

.method private final playHaptic(I)Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->activityProvider:Lcom/swmansion/pulsar/ActivityProvider;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public final calendarDate()Z
    .locals 1

    const/4 v0, 0x5

    .line 16
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0
.end method

.method public final clockTick()Z
    .locals 1

    const/4 v0, 0x4

    .line 15
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0
.end method

.method public final confirm()Z
    .locals 2

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/16 v0, 0x10

    .line 52
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final contextClick()Z
    .locals 1

    const/4 v0, 0x6

    .line 17
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0
.end method

.method public final dragCrossing()Z
    .locals 1

    const/16 v0, 0xb

    .line 38
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0
.end method

.method public final dragStart()Z
    .locals 2

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/16 v0, 0x19

    .line 75
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final edgeRelease()Z
    .locals 1

    const/16 v0, 0xf

    .line 50
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0
.end method

.method public final edgeSqueeze()Z
    .locals 1

    const/16 v0, 0xe

    .line 49
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0
.end method

.method public final gestureEnd()Z
    .locals 2

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/16 v0, 0xd

    .line 45
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final gestureStart()Z
    .locals 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/16 v0, 0xc

    .line 40
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keyboardPress()Z
    .locals 2

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    .line 19
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keyboardRelease()Z
    .locals 2

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x7

    .line 24
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keyboardTap()Z
    .locals 1

    const/4 v0, 0x3

    .line 14
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0
.end method

.method public final longPress()Z
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0
.end method

.method public final release()Z
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/16 v0, 0x11

    .line 57
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final scrollItemFocus()Z
    .locals 1

    const/16 v0, 0x13

    .line 62
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0
.end method

.method public final scrollLimit()Z
    .locals 1

    const/16 v0, 0x14

    .line 63
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0
.end method

.method public final scrollTick()Z
    .locals 1

    const/16 v0, 0x12

    .line 61
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0
.end method

.method public final segmentFrequentTick()Z
    .locals 2

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1b

    .line 85
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final segmentTick()Z
    .locals 2

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    .line 80
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final textHandleMove()Z
    .locals 2

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/16 v0, 0x9

    .line 34
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toggleOff()Z
    .locals 2

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/16 v0, 0x16

    .line 70
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toggleOn()Z
    .locals 2

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/16 v0, 0x15

    .line 65
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final virtualKey()Z
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0
.end method

.method public final virtualKeyRelease()Z
    .locals 2

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/16 v0, 0x8

    .line 29
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
