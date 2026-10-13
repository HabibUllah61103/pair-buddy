.class public final Lexpo/modules/kotlin/viewevent/ViewEventDelegateKt;
.super Ljava/lang/Object;
.source "ViewEventDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a5\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0008\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0086\n\u001aQ\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\t\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u000f21\u0008\n\u0010\u0010\u001a+\u0012\u0013\u0012\u0011H\u0001\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0002j\n\u0012\u0004\u0012\u0002H\u0001\u0018\u0001`\u0011H\u0086\u0008\u00f8\u0001\u0000\u001an\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000b0\u00120\t*\u00020\u000f2I\u0008\u0002\u0010\u0010\u001aC\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000b0\u0012\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0002j\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000b0\u0012\u0018\u0001`\u0011H\u0007\u00a2\u0006\u0002\u0008\u0014*F\u0010\u0000\u001a\u0004\u0008\u0000\u0010\u0001\"\u001d\u0012\u0013\u0012\u0011H\u0001\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00022\u001d\u0012\u0013\u0012\u0011H\u0001\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0002\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0015"
    }
    d2 = {
        "CoalescingKey",
        "T",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "event",
        "",
        "getValue",
        "Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "Lexpo/modules/kotlin/viewevent/ViewEventDelegate;",
        "thisObj",
        "",
        "property",
        "Lkotlin/reflect/KProperty;",
        "EventDispatcher",
        "Landroid/view/View;",
        "coalescingKey",
        "Lexpo/modules/kotlin/viewevent/CoalescingKey;",
        "",
        "",
        "MapEventDispatcher",
        "expo-modules-core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic EventDispatcher(Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/viewevent/ViewEventDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Short;",
            ">;)",
            "Lexpo/modules/kotlin/viewevent/ViewEventDelegate<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v0, p0, p1}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static synthetic EventDispatcher$default(Landroid/view/View;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lexpo/modules/kotlin/viewevent/ViewEventDelegate;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 34
    :cond_0
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance p2, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {p2, p0, p1}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-object p2
.end method

.method public static final MapEventDispatcher(Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/viewevent/ViewEventDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Short;",
            ">;)",
            "Lexpo/modules/kotlin/viewevent/ViewEventDelegate<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v0, p0, p1}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static synthetic MapEventDispatcher$default(Landroid/view/View;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lexpo/modules/kotlin/viewevent/ViewEventDelegate;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 39
    :cond_0
    invoke-static {p0, p1}, Lexpo/modules/kotlin/viewevent/ViewEventDelegateKt;->MapEventDispatcher(Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static final getValue(Lexpo/modules/kotlin/viewevent/ViewEventDelegate;Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/viewevent/ViewEventDelegate<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "TT;>;"
        }
    .end annotation

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p0

    return-object p0
.end method
