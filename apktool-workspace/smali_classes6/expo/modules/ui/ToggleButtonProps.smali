.class public final Lexpo/modules/ui/ToggleButtonProps;
.super Ljava/lang/Object;
.source "ToggleButtonView.kt"

# interfaces
.implements Lexpo/modules/kotlin/views/ComposeProps;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BK\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012$\u0008\u0002\u0010\u0007\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\u000c0\u0008j\u0002`\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0006H\u00c6\u0003J%\u0010\u001a\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\u000c0\u0008j\u0002`\rH\u00c6\u0003JM\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062$\u0008\u0002\u0010\u0007\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\u000c0\u0008j\u0002`\rH\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u00032\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020\nH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R-\u0010\u0007\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tj\u0002`\u000c0\u0008j\u0002`\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/ui/ToggleButtonProps;",
        "Lexpo/modules/kotlin/views/ComposeProps;",
        "checked",
        "",
        "enabled",
        "colors",
        "Lexpo/modules/ui/ToggleButtonColors;",
        "modifiers",
        "",
        "",
        "",
        "",
        "Lexpo/modules/ui/ModifierType;",
        "Lexpo/modules/ui/ModifierList;",
        "<init>",
        "(ZZLexpo/modules/ui/ToggleButtonColors;Ljava/util/List;)V",
        "getChecked",
        "()Z",
        "getEnabled",
        "getColors",
        "()Lexpo/modules/ui/ToggleButtonColors;",
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
.field private final checked:Z

.field private final colors:Lexpo/modules/ui/ToggleButtonColors;

.field private final enabled:Z

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

    invoke-direct/range {v0 .. v6}, Lexpo/modules/ui/ToggleButtonProps;-><init>(ZZLexpo/modules/ui/ToggleButtonColors;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLexpo/modules/ui/ToggleButtonColors;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lexpo/modules/ui/ToggleButtonColors;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modifiers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lexpo/modules/ui/ToggleButtonProps;->checked:Z

    .line 31
    iput-boolean p2, p0, Lexpo/modules/ui/ToggleButtonProps;->enabled:Z

    .line 32
    iput-object p3, p0, Lexpo/modules/ui/ToggleButtonProps;->colors:Lexpo/modules/ui/ToggleButtonColors;

    .line 33
    iput-object p4, p0, Lexpo/modules/ui/ToggleButtonProps;->modifiers:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ZZLexpo/modules/ui/ToggleButtonColors;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x1

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 32
    new-instance v0, Lexpo/modules/ui/ToggleButtonColors;

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lexpo/modules/ui/ToggleButtonColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 33
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 29
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/ui/ToggleButtonProps;-><init>(ZZLexpo/modules/ui/ToggleButtonColors;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/ToggleButtonProps;ZZLexpo/modules/ui/ToggleButtonColors;Ljava/util/List;ILjava/lang/Object;)Lexpo/modules/ui/ToggleButtonProps;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lexpo/modules/ui/ToggleButtonProps;->checked:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lexpo/modules/ui/ToggleButtonProps;->enabled:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lexpo/modules/ui/ToggleButtonProps;->colors:Lexpo/modules/ui/ToggleButtonColors;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lexpo/modules/ui/ToggleButtonProps;->modifiers:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/ui/ToggleButtonProps;->copy(ZZLexpo/modules/ui/ToggleButtonColors;Ljava/util/List;)Lexpo/modules/ui/ToggleButtonProps;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/ui/ToggleButtonProps;->checked:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/ui/ToggleButtonProps;->enabled:Z

    return v0
.end method

.method public final component3()Lexpo/modules/ui/ToggleButtonColors;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/ToggleButtonProps;->colors:Lexpo/modules/ui/ToggleButtonColors;

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

    iget-object v0, p0, Lexpo/modules/ui/ToggleButtonProps;->modifiers:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZZLexpo/modules/ui/ToggleButtonColors;Ljava/util/List;)Lexpo/modules/ui/ToggleButtonProps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lexpo/modules/ui/ToggleButtonColors;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lexpo/modules/ui/ToggleButtonProps;"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modifiers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/ui/ToggleButtonProps;

    invoke-direct {v0, p1, p2, p3, p4}, Lexpo/modules/ui/ToggleButtonProps;-><init>(ZZLexpo/modules/ui/ToggleButtonColors;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/ToggleButtonProps;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/ToggleButtonProps;

    iget-boolean v1, p0, Lexpo/modules/ui/ToggleButtonProps;->checked:Z

    iget-boolean v3, p1, Lexpo/modules/ui/ToggleButtonProps;->checked:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lexpo/modules/ui/ToggleButtonProps;->enabled:Z

    iget-boolean v3, p1, Lexpo/modules/ui/ToggleButtonProps;->enabled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/ui/ToggleButtonProps;->colors:Lexpo/modules/ui/ToggleButtonColors;

    iget-object v3, p1, Lexpo/modules/ui/ToggleButtonProps;->colors:Lexpo/modules/ui/ToggleButtonColors;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lexpo/modules/ui/ToggleButtonProps;->modifiers:Ljava/util/List;

    iget-object p1, p1, Lexpo/modules/ui/ToggleButtonProps;->modifiers:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getChecked()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lexpo/modules/ui/ToggleButtonProps;->checked:Z

    return v0
.end method

.method public final getColors()Lexpo/modules/ui/ToggleButtonColors;
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/ui/ToggleButtonProps;->colors:Lexpo/modules/ui/ToggleButtonColors;

    return-object v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lexpo/modules/ui/ToggleButtonProps;->enabled:Z

    return v0
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

    .line 33
    iget-object v0, p0, Lexpo/modules/ui/ToggleButtonProps;->modifiers:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lexpo/modules/ui/ToggleButtonProps;->checked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lexpo/modules/ui/ToggleButtonProps;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/ToggleButtonProps;->colors:Lexpo/modules/ui/ToggleButtonColors;

    invoke-virtual {v1}, Lexpo/modules/ui/ToggleButtonColors;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/ToggleButtonProps;->modifiers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lexpo/modules/ui/ToggleButtonProps;->checked:Z

    iget-boolean v1, p0, Lexpo/modules/ui/ToggleButtonProps;->enabled:Z

    iget-object v2, p0, Lexpo/modules/ui/ToggleButtonProps;->colors:Lexpo/modules/ui/ToggleButtonColors;

    iget-object v3, p0, Lexpo/modules/ui/ToggleButtonProps;->modifiers:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ToggleButtonProps(checked="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", enabled="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colors="

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
