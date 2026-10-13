.class public final Lexpo/modules/ui/PullToRefreshBoxProps;
.super Ljava/lang/Object;
.source "PullToRefreshBoxView.kt"

# interfaces
.implements Lexpo/modules/kotlin/views/ComposeProps;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BM\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012$\u0008\u0002\u0010\u0008\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\nj\u0002`\r0\tj\u0002`\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J%\u0010\u001b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\nj\u0002`\r0\tj\u0002`\u000eH\u00c6\u0003JO\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072$\u0008\u0002\u0010\u0008\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\nj\u0002`\r0\tj\u0002`\u000eH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u00032\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\u000bH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0011R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R-\u0010\u0008\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\nj\u0002`\r0\tj\u0002`\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\""
    }
    d2 = {
        "Lexpo/modules/ui/PullToRefreshBoxProps;",
        "Lexpo/modules/kotlin/views/ComposeProps;",
        "isRefreshing",
        "",
        "contentAlignment",
        "Lexpo/modules/ui/convertibles/ContentAlignment;",
        "indicator",
        "Lexpo/modules/ui/PullToRefreshIndicatorProps;",
        "modifiers",
        "",
        "",
        "",
        "",
        "Lexpo/modules/ui/ModifierType;",
        "Lexpo/modules/ui/ModifierList;",
        "<init>",
        "(ZLexpo/modules/ui/convertibles/ContentAlignment;Lexpo/modules/ui/PullToRefreshIndicatorProps;Ljava/util/List;)V",
        "()Z",
        "getContentAlignment",
        "()Lexpo/modules/ui/convertibles/ContentAlignment;",
        "getIndicator",
        "()Lexpo/modules/ui/PullToRefreshIndicatorProps;",
        "getModifiers",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final contentAlignment:Lexpo/modules/ui/convertibles/ContentAlignment;

.field private final indicator:Lexpo/modules/ui/PullToRefreshIndicatorProps;

.field private final isRefreshing:Z

.field private final modifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


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

    invoke-direct/range {v0 .. v6}, Lexpo/modules/ui/PullToRefreshBoxProps;-><init>(ZLexpo/modules/ui/convertibles/ContentAlignment;Lexpo/modules/ui/PullToRefreshIndicatorProps;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLexpo/modules/ui/convertibles/ContentAlignment;Lexpo/modules/ui/PullToRefreshIndicatorProps;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lexpo/modules/ui/convertibles/ContentAlignment;",
            "Lexpo/modules/ui/PullToRefreshIndicatorProps;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "indicator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modifiers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->isRefreshing:Z

    .line 29
    iput-object p2, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->contentAlignment:Lexpo/modules/ui/convertibles/ContentAlignment;

    .line 30
    iput-object p3, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->indicator:Lexpo/modules/ui/PullToRefreshIndicatorProps;

    .line 31
    iput-object p4, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->modifiers:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ZLexpo/modules/ui/convertibles/ContentAlignment;Lexpo/modules/ui/PullToRefreshIndicatorProps;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 30
    new-instance v0, Lexpo/modules/ui/PullToRefreshIndicatorProps;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ui/PullToRefreshIndicatorProps;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 31
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 27
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/ui/PullToRefreshBoxProps;-><init>(ZLexpo/modules/ui/convertibles/ContentAlignment;Lexpo/modules/ui/PullToRefreshIndicatorProps;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/PullToRefreshBoxProps;ZLexpo/modules/ui/convertibles/ContentAlignment;Lexpo/modules/ui/PullToRefreshIndicatorProps;Ljava/util/List;ILjava/lang/Object;)Lexpo/modules/ui/PullToRefreshBoxProps;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->isRefreshing:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->contentAlignment:Lexpo/modules/ui/convertibles/ContentAlignment;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->indicator:Lexpo/modules/ui/PullToRefreshIndicatorProps;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->modifiers:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/ui/PullToRefreshBoxProps;->copy(ZLexpo/modules/ui/convertibles/ContentAlignment;Lexpo/modules/ui/PullToRefreshIndicatorProps;Ljava/util/List;)Lexpo/modules/ui/PullToRefreshBoxProps;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->isRefreshing:Z

    return v0
.end method

.method public final component2()Lexpo/modules/ui/convertibles/ContentAlignment;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->contentAlignment:Lexpo/modules/ui/convertibles/ContentAlignment;

    return-object v0
.end method

.method public final component3()Lexpo/modules/ui/PullToRefreshIndicatorProps;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->indicator:Lexpo/modules/ui/PullToRefreshIndicatorProps;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->modifiers:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZLexpo/modules/ui/convertibles/ContentAlignment;Lexpo/modules/ui/PullToRefreshIndicatorProps;Ljava/util/List;)Lexpo/modules/ui/PullToRefreshBoxProps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lexpo/modules/ui/convertibles/ContentAlignment;",
            "Lexpo/modules/ui/PullToRefreshIndicatorProps;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lexpo/modules/ui/PullToRefreshBoxProps;"
        }
    .end annotation

    const-string v0, "indicator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modifiers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/ui/PullToRefreshBoxProps;

    invoke-direct {v0, p1, p2, p3, p4}, Lexpo/modules/ui/PullToRefreshBoxProps;-><init>(ZLexpo/modules/ui/convertibles/ContentAlignment;Lexpo/modules/ui/PullToRefreshIndicatorProps;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/PullToRefreshBoxProps;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/PullToRefreshBoxProps;

    iget-boolean v1, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->isRefreshing:Z

    iget-boolean v3, p1, Lexpo/modules/ui/PullToRefreshBoxProps;->isRefreshing:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->contentAlignment:Lexpo/modules/ui/convertibles/ContentAlignment;

    iget-object v3, p1, Lexpo/modules/ui/PullToRefreshBoxProps;->contentAlignment:Lexpo/modules/ui/convertibles/ContentAlignment;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->indicator:Lexpo/modules/ui/PullToRefreshIndicatorProps;

    iget-object v3, p1, Lexpo/modules/ui/PullToRefreshBoxProps;->indicator:Lexpo/modules/ui/PullToRefreshIndicatorProps;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->modifiers:Ljava/util/List;

    iget-object p1, p1, Lexpo/modules/ui/PullToRefreshBoxProps;->modifiers:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getContentAlignment()Lexpo/modules/ui/convertibles/ContentAlignment;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->contentAlignment:Lexpo/modules/ui/convertibles/ContentAlignment;

    return-object v0
.end method

.method public final getIndicator()Lexpo/modules/ui/PullToRefreshIndicatorProps;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->indicator:Lexpo/modules/ui/PullToRefreshIndicatorProps;

    return-object v0
.end method

.method public final getModifiers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->modifiers:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->isRefreshing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->contentAlignment:Lexpo/modules/ui/convertibles/ContentAlignment;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lexpo/modules/ui/convertibles/ContentAlignment;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->indicator:Lexpo/modules/ui/PullToRefreshIndicatorProps;

    invoke-virtual {v1}, Lexpo/modules/ui/PullToRefreshIndicatorProps;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->modifiers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRefreshing()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->isRefreshing:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->isRefreshing:Z

    iget-object v1, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->contentAlignment:Lexpo/modules/ui/convertibles/ContentAlignment;

    iget-object v2, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->indicator:Lexpo/modules/ui/PullToRefreshIndicatorProps;

    iget-object v3, p0, Lexpo/modules/ui/PullToRefreshBoxProps;->modifiers:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PullToRefreshBoxProps(isRefreshing="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", contentAlignment="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifiers="

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
