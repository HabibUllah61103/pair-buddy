.class public interface abstract Landroidx/compose/material3/ButtonGroupScope;
.super Ljava/lang/Object;
.source "ButtonGroup.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u0003*\u00020\u00032\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\'J\u0016\u0010\u0002\u001a\u00020\u0003*\u00020\u00032\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0004H&J\u0014\u0010\u0007\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u0014\u0010\n\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\'JN\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0015\u0008\u0002\u0010\u0013\u001a\u000f\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0010\u00a2\u0006\u0002\u0008\u00142\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0006H&\u00a2\u0006\u0002\u0010\u0016J\\\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000e0\u001a2\u0015\u0008\u0002\u0010\u0013\u001a\u000f\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0010\u00a2\u0006\u0002\u0008\u00142\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0006H&\u00a2\u0006\u0002\u0010\u001bJ9\u0010\u001c\u001a\u00020\u000e2\u0011\u0010\u001d\u001a\r\u0012\u0004\u0012\u00020\u000e0\u0010\u00a2\u0006\u0002\u0008\u00142\u0017\u0010\u001e\u001a\u0013\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u000e0\u001a\u00a2\u0006\u0002\u0008\u0014H&\u00a2\u0006\u0002\u0010 \u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006!\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/material3/ButtonGroupScope;",
        "",
        "weight",
        "Landroidx/compose/ui/Modifier;",
        "",
        "fill",
        "",
        "animateWidth",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "align",
        "alignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "clickableItem",
        "",
        "onClick",
        "Lkotlin/Function0;",
        "label",
        "",
        "icon",
        "Landroidx/compose/runtime/Composable;",
        "enabled",
        "(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function2;FZ)V",
        "toggleableItem",
        "checked",
        "onCheckedChange",
        "Lkotlin/Function1;",
        "(ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;FZ)V",
        "customItem",
        "buttonGroupContent",
        "menuContent",
        "Landroidx/compose/material3/ButtonGroupMenuState;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V",
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


# direct methods
.method public static synthetic clickableItem$default(Landroidx/compose/material3/ButtonGroupScope;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function2;FZILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/high16 p4, 0x7fc00000    # Float.NaN

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x1

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    .line 973
    invoke-interface/range {v0 .. v5}, Landroidx/compose/material3/ButtonGroupScope;->clickableItem(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function2;FZ)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: clickableItem"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic toggleableItem$default(Landroidx/compose/material3/ButtonGroupScope;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;FZILjava/lang/Object;)V
    .locals 7

    if-nez p8, :cond_3

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const/high16 p5, 0x7fc00000    # Float.NaN

    :cond_1
    move v5, p5

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    const/4 p6, 0x1

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    .line 991
    invoke-interface/range {v0 .. v6}, Landroidx/compose/material3/ButtonGroupScope;->toggleableItem(ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;FZ)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toggleableItem"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic weight$default(Landroidx/compose/material3/ButtonGroupScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 933
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/material3/ButtonGroupScope;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: weight"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;
.end method

.method public abstract animateWidth(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;)Landroidx/compose/ui/Modifier;
.end method

.method public abstract clickableItem(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function2;FZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;FZ)V"
        }
    .end annotation
.end method

.method public abstract customItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V
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
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/ButtonGroupMenuState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract toggleableItem(ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;FZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;FZ)V"
        }
    .end annotation
.end method

.method public abstract weight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
.end method

.method public abstract synthetic weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "For binary compatibility"
    .end annotation
.end method
