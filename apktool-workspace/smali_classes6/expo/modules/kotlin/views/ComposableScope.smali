.class public final Lexpo/modules/kotlin/views/ComposableScope;
.super Ljava/lang/Object;
.source "ExpoComposeView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u00c6\u0003J9\u0010\u0018\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lexpo/modules/kotlin/views/ComposableScope;",
        "",
        "rowScope",
        "Landroidx/compose/foundation/layout/RowScope;",
        "columnScope",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "boxScope",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "nestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "<init>",
        "(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V",
        "getRowScope",
        "()Landroidx/compose/foundation/layout/RowScope;",
        "getColumnScope",
        "()Landroidx/compose/foundation/layout/ColumnScope;",
        "getBoxScope",
        "()Landroidx/compose/foundation/layout/BoxScope;",
        "getNestedScrollConnection",
        "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "expo-modules-core_release"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final boxScope:Landroidx/compose/foundation/layout/BoxScope;

.field private final columnScope:Landroidx/compose/foundation/layout/ColumnScope;

.field private final nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field private final rowScope:Landroidx/compose/foundation/layout/RowScope;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lexpo/modules/kotlin/views/ComposableScope;-><init>(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lexpo/modules/kotlin/views/ComposableScope;->rowScope:Landroidx/compose/foundation/layout/RowScope;

    .line 27
    iput-object p2, p0, Lexpo/modules/kotlin/views/ComposableScope;->columnScope:Landroidx/compose/foundation/layout/ColumnScope;

    .line 28
    iput-object p3, p0, Lexpo/modules/kotlin/views/ComposableScope;->boxScope:Landroidx/compose/foundation/layout/BoxScope;

    .line 29
    iput-object p4, p0, Lexpo/modules/kotlin/views/ComposableScope;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 25
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/kotlin/views/ComposableScope;-><init>(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;ILjava/lang/Object;)Lexpo/modules/kotlin/views/ComposableScope;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lexpo/modules/kotlin/views/ComposableScope;->rowScope:Landroidx/compose/foundation/layout/RowScope;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lexpo/modules/kotlin/views/ComposableScope;->columnScope:Landroidx/compose/foundation/layout/ColumnScope;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lexpo/modules/kotlin/views/ComposableScope;->boxScope:Landroidx/compose/foundation/layout/BoxScope;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lexpo/modules/kotlin/views/ComposableScope;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/kotlin/views/ComposableScope;->copy(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)Lexpo/modules/kotlin/views/ComposableScope;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/compose/foundation/layout/RowScope;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/views/ComposableScope;->rowScope:Landroidx/compose/foundation/layout/RowScope;

    return-object v0
.end method

.method public final component2()Landroidx/compose/foundation/layout/ColumnScope;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/views/ComposableScope;->columnScope:Landroidx/compose/foundation/layout/ColumnScope;

    return-object v0
.end method

.method public final component3()Landroidx/compose/foundation/layout/BoxScope;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/views/ComposableScope;->boxScope:Landroidx/compose/foundation/layout/BoxScope;

    return-object v0
.end method

.method public final component4()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/views/ComposableScope;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object v0
.end method

.method public final copy(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)Lexpo/modules/kotlin/views/ComposableScope;
    .locals 1

    new-instance v0, Lexpo/modules/kotlin/views/ComposableScope;

    invoke-direct {v0, p1, p2, p3, p4}, Lexpo/modules/kotlin/views/ComposableScope;-><init>(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/kotlin/views/ComposableScope;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/kotlin/views/ComposableScope;

    iget-object v1, p0, Lexpo/modules/kotlin/views/ComposableScope;->rowScope:Landroidx/compose/foundation/layout/RowScope;

    iget-object v3, p1, Lexpo/modules/kotlin/views/ComposableScope;->rowScope:Landroidx/compose/foundation/layout/RowScope;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/kotlin/views/ComposableScope;->columnScope:Landroidx/compose/foundation/layout/ColumnScope;

    iget-object v3, p1, Lexpo/modules/kotlin/views/ComposableScope;->columnScope:Landroidx/compose/foundation/layout/ColumnScope;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/kotlin/views/ComposableScope;->boxScope:Landroidx/compose/foundation/layout/BoxScope;

    iget-object v3, p1, Lexpo/modules/kotlin/views/ComposableScope;->boxScope:Landroidx/compose/foundation/layout/BoxScope;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lexpo/modules/kotlin/views/ComposableScope;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object p1, p1, Lexpo/modules/kotlin/views/ComposableScope;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBoxScope()Landroidx/compose/foundation/layout/BoxScope;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/kotlin/views/ComposableScope;->boxScope:Landroidx/compose/foundation/layout/BoxScope;

    return-object v0
.end method

.method public final getColumnScope()Landroidx/compose/foundation/layout/ColumnScope;
    .locals 1

    .line 27
    iget-object v0, p0, Lexpo/modules/kotlin/views/ComposableScope;->columnScope:Landroidx/compose/foundation/layout/ColumnScope;

    return-object v0
.end method

.method public final getNestedScrollConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/kotlin/views/ComposableScope;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object v0
.end method

.method public final getRowScope()Landroidx/compose/foundation/layout/RowScope;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/kotlin/views/ComposableScope;->rowScope:Landroidx/compose/foundation/layout/RowScope;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/kotlin/views/ComposableScope;->rowScope:Landroidx/compose/foundation/layout/RowScope;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/kotlin/views/ComposableScope;->columnScope:Landroidx/compose/foundation/layout/ColumnScope;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/kotlin/views/ComposableScope;->boxScope:Landroidx/compose/foundation/layout/BoxScope;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/kotlin/views/ComposableScope;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lexpo/modules/kotlin/views/ComposableScope;->rowScope:Landroidx/compose/foundation/layout/RowScope;

    iget-object v1, p0, Lexpo/modules/kotlin/views/ComposableScope;->columnScope:Landroidx/compose/foundation/layout/ColumnScope;

    iget-object v2, p0, Lexpo/modules/kotlin/views/ComposableScope;->boxScope:Landroidx/compose/foundation/layout/BoxScope;

    iget-object v3, p0, Lexpo/modules/kotlin/views/ComposableScope;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ComposableScope(rowScope="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", columnScope="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boxScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nestedScrollConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
