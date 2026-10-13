.class public final Lexpo/modules/ui/SlotView;
.super Lexpo/modules/kotlin/views/ExpoComposeView;
.source "SlotView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/views/ExpoComposeView<",
        "Lexpo/modules/ui/SlotProps;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotView.kt\nexpo/modules/ui/SlotView\n+ 2 ViewEventDelegate.kt\nexpo/modules/kotlin/viewevent/ViewEventDelegateKt\n*L\n1#1,70:1\n34#2,3:71\n*S KotlinDebug\n*F\n+ 1 SlotView.kt\nexpo/modules/ui/SlotView\n*L\n29#1:71,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\u0013\u001a\u00020\u000e*\u00020\u0014H\u0017\u00a2\u0006\u0002\u0010\u0015R\u0014\u0010\t\u001a\u00020\u0002X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR!\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/ui/SlotView;",
        "Lexpo/modules/kotlin/views/ExpoComposeView;",
        "Lexpo/modules/ui/SlotProps;",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V",
        "props",
        "getProps",
        "()Lexpo/modules/ui/SlotProps;",
        "onSlotEvent",
        "Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "",
        "getOnSlotEvent$expo_ui_release",
        "()Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "onSlotEvent$delegate",
        "Lexpo/modules/kotlin/viewevent/ViewEventDelegate;",
        "Content",
        "Lexpo/modules/kotlin/views/ComposableScope;",
        "(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V",
        "expo-ui_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final $stable:I


# instance fields
.field private final onSlotEvent$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final props:Lexpo/modules/ui/SlotProps;


# direct methods
.method public static synthetic $r8$lambda$vWR8YdyIovOp33s7FngXZlDsBnk(Lexpo/modules/ui/SlotView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/ui/SlotView;->Content$lambda$0(Lexpo/modules/ui/SlotView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 29
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onSlotEvent"

    const-string v3, "getOnSlotEvent$expo_ui_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    const-class v4, Lexpo/modules/ui/SlotView;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lexpo/modules/ui/SlotView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget v0, Lexpo/modules/kotlin/views/ExpoComposeView;->$stable:I

    sget v1, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->$stable:I

    or-int/2addr v0, v1

    sput v0, Lexpo/modules/ui/SlotView;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 27
    invoke-direct/range {v1 .. v6}, Lexpo/modules/kotlin/views/ExpoComposeView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    new-instance p1, Lexpo/modules/ui/SlotProps;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Lexpo/modules/ui/SlotProps;-><init>(Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, v1, Lexpo/modules/ui/SlotView;->props:Lexpo/modules/ui/SlotProps;

    .line 29
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    .line 73
    new-instance p2, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {p2, p1, v0}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 29
    iput-object p2, v1, Lexpo/modules/ui/SlotView;->onSlotEvent$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    return-void
.end method

.method private static final Content$lambda$0(Lexpo/modules/ui/SlotView;Lexpo/modules/kotlin/views/ComposableScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Lexpo/modules/ui/SlotView;->Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public Content(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x3abdd0f3

    .line 32
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(Content)32@1145L14:SlotView.kt#v15e7d"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0x6

    if-nez v1, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_0

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    or-int/2addr v1, p3

    goto :goto_2

    :cond_2
    move v1, p3

    :goto_2
    and-int/lit8 v2, p3, 0x30

    if-nez v2, :cond_5

    and-int/lit8 v2, p3, 0x40

    if-nez v2, :cond_3

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_3

    :cond_3
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_4

    :cond_4
    const/16 v2, 0x10

    :goto_4
    or-int/2addr v1, v2

    :cond_5
    and-int/lit8 v2, v1, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_7

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    .line 33
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_6

    .line 32
    :cond_7
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    const-string v3, "expo.modules.ui.SlotView.Content (SlotView.kt:31)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 33
    :cond_8
    sget v0, Lexpo/modules/kotlin/views/ComposableScope;->$stable:I

    and-int/lit8 v2, v1, 0xe

    or-int/2addr v0, v2

    sget v2, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->$stable:I

    sget v3, Lexpo/modules/kotlin/views/ExpoComposeView;->$stable:I

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x3

    or-int/2addr v0, v2

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lexpo/modules/ui/SlotView;->Children(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    :goto_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-eqz p2, :cond_a

    new-instance v0, Lexpo/modules/ui/SlotView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lexpo/modules/ui/SlotView$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/ui/SlotView;Lexpo/modules/kotlin/views/ComposableScope;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_a
    return-void
.end method

.method public final getOnSlotEvent$expo_ui_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lexpo/modules/ui/SlotView;->onSlotEvent$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/ui/SlotView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProps()Lexpo/modules/kotlin/views/ComposeProps;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lexpo/modules/ui/SlotView;->getProps()Lexpo/modules/ui/SlotProps;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/views/ComposeProps;

    return-object v0
.end method

.method public getProps()Lexpo/modules/ui/SlotProps;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/ui/SlotView;->props:Lexpo/modules/ui/SlotProps;

    return-object v0
.end method
