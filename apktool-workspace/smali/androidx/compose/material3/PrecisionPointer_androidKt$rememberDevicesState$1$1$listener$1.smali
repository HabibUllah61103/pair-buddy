.class public final Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1;
.super Ljava/lang/Object;
.source "PrecisionPointer.android.kt"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/PrecisionPointer_androidKt;->rememberDevicesState(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "androidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1",
        "Landroid/hardware/input/InputManager$InputDeviceListener;",
        "onInputDeviceAdded",
        "",
        "deviceId",
        "",
        "onInputDeviceRemoved",
        "onInputDeviceChanged",
        "maybeUpdateDevice",
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


# instance fields
.field final synthetic $devicesState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/material3/Devices;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $inputManager:Landroid/hardware/input/InputManager;


# direct methods
.method constructor <init>(Landroid/hardware/input/InputManager;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputManager;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/material3/Devices;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1;->$inputManager:Landroid/hardware/input/InputManager;

    iput-object p2, p0, Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1;->$devicesState:Landroidx/compose/runtime/MutableState;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final maybeUpdateDevice(I)V
    .locals 3

    .line 97
    iget-object v0, p0, Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1;->$inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 99
    iget-object v1, p0, Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1;->$devicesState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/Devices;

    .line 101
    invoke-static {v0}, Landroidx/compose/material3/PrecisionPointer_androidKt;->access$isKeyboard(Landroid/view/InputDevice;)Z

    move-result v2

    .line 102
    invoke-static {v0}, Landroidx/compose/material3/PrecisionPointer_androidKt;->access$isMouse(Landroid/view/InputDevice;)Z

    move-result v0

    .line 99
    invoke-static {v1, p1, v2, v0}, Landroidx/compose/material3/PrecisionPointer_androidKt;->access$withUpdateForDevice(Landroidx/compose/material3/Devices;IZZ)Landroidx/compose/material3/Devices;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1;->$devicesState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1;->maybeUpdateDevice(I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1;->maybeUpdateDevice(I)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Landroidx/compose/material3/PrecisionPointer_androidKt$rememberDevicesState$1$1$listener$1;->maybeUpdateDevice(I)V

    return-void
.end method
