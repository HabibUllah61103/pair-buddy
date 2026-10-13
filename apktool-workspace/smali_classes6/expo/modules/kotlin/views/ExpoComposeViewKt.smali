.class public final Lexpo/modules/kotlin/views/ExpoComposeViewKt;
.super Ljava/lang/Object;
.source "ExpoComposeView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a1\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\u001a\u0014\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u001a\u0014\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u001a\u0014\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u001a\u0014\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0010"
    }
    d2 = {
        "withIf",
        "Lexpo/modules/kotlin/views/ComposableScope;",
        "condition",
        "",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "with",
        "rowScope",
        "Landroidx/compose/foundation/layout/RowScope;",
        "columnScope",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "boxScope",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "nestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
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
.method public static final with(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/foundation/layout/BoxScope;)Lexpo/modules/kotlin/views/ComposableScope;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xb

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 48
    invoke-static/range {v1 .. v7}, Lexpo/modules/kotlin/views/ComposableScope;->copy$default(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;ILjava/lang/Object;)Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object p0

    return-object p0
.end method

.method public static final with(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/foundation/layout/ColumnScope;)Lexpo/modules/kotlin/views/ComposableScope;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 44
    invoke-static/range {v1 .. v7}, Lexpo/modules/kotlin/views/ComposableScope;->copy$default(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;ILjava/lang/Object;)Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object p0

    return-object p0
.end method

.method public static final with(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/foundation/layout/RowScope;)Lexpo/modules/kotlin/views/ComposableScope;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 40
    invoke-static/range {v1 .. v7}, Lexpo/modules/kotlin/views/ComposableScope;->copy$default(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;ILjava/lang/Object;)Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object p0

    return-object p0
.end method

.method public static final with(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)Lexpo/modules/kotlin/views/ComposableScope;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    .line 52
    invoke-static/range {v1 .. v7}, Lexpo/modules/kotlin/views/ComposableScope;->copy$default(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;ILjava/lang/Object;)Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object p0

    return-object p0
.end method

.method public static final withIf(Lexpo/modules/kotlin/views/ComposableScope;ZLkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/views/ComposableScope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/views/ComposableScope;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/kotlin/views/ComposableScope;",
            "Lexpo/modules/kotlin/views/ComposableScope;",
            ">;)",
            "Lexpo/modules/kotlin/views/ComposableScope;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lexpo/modules/kotlin/views/ComposableScope;

    :cond_0
    return-object p0
.end method
