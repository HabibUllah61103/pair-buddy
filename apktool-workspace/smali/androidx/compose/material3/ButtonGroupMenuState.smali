.class public final Landroidx/compose/material3/ButtonGroupMenuState;
.super Ljava/lang/Object;
.source "ButtonGroup.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nButtonGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ButtonGroup.kt\nandroidx/compose/material3/ButtonGroupMenuState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,1485:1\n85#2:1486\n117#2,2:1487\n*S KotlinDebug\n*F\n+ 1 ButtonGroup.kt\nandroidx/compose/material3/ButtonGroupMenuState\n*L\n458#1:1486\n458#1:1487,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011R&\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00038F@BX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0007\u0010\nR+\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00038F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\n\"\u0004\u0008\r\u0010\u0005\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/material3/ButtonGroupMenuState;",
        "",
        "initialIsShowing",
        "",
        "<init>",
        "(Z)V",
        "value",
        "isExpanded",
        "isExpanded$annotations",
        "()V",
        "()Z",
        "<set-?>",
        "isShowing",
        "setShowing",
        "isShowing$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "dismiss",
        "",
        "show",
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
.field private isExpanded:Z

.field private final isShowing$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/material3/ButtonGroupMenuState;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-boolean p1, p0, Landroidx/compose/material3/ButtonGroupMenuState;->isExpanded:Z

    .line 458
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/ButtonGroupMenuState;->isShowing$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 450
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/material3/ButtonGroupMenuState;-><init>(Z)V

    return-void
.end method

.method public static synthetic isExpanded$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Keeping for binary compatibility"
    .end annotation

    return-void
.end method

.method private final setShowing(Z)V
    .locals 1

    .line 458
    iget-object v0, p0, Landroidx/compose/material3/ButtonGroupMenuState;->isShowing$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1487
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 463
    invoke-direct {p0, v0}, Landroidx/compose/material3/ButtonGroupMenuState;->setShowing(Z)V

    return-void
.end method

.method public final synthetic isExpanded()Z
    .locals 1

    .line 454
    invoke-virtual {p0}, Landroidx/compose/material3/ButtonGroupMenuState;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final isShowing()Z
    .locals 1

    .line 458
    iget-object v0, p0, Landroidx/compose/material3/ButtonGroupMenuState;->isShowing$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .line 1486
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final show()V
    .locals 1

    const/4 v0, 0x1

    .line 468
    invoke-direct {p0, v0}, Landroidx/compose/material3/ButtonGroupMenuState;->setShowing(Z)V

    return-void
.end method
