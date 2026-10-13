.class public final Lexpo/modules/ui/ElevatedCardProps;
.super Ljava/lang/Object;
.source "CardView.kt"

# interfaces
.implements Lexpo/modules/kotlin/views/ComposeProps;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BC\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012$\u0008\u0002\u0010\u0006\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008j\u0002`\u000b0\u0007j\u0002`\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0012J%\u0010\u0018\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008j\u0002`\u000b0\u0007j\u0002`\u000cH\u00c6\u0003JJ\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052$\u0008\u0002\u0010\u0006\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008j\u0002`\u000b0\u0007j\u0002`\u000cH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\nH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020\tH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012R-\u0010\u0006\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008j\u0002`\u000b0\u0007j\u0002`\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/ui/ElevatedCardProps;",
        "Lexpo/modules/kotlin/views/ComposeProps;",
        "colors",
        "Lexpo/modules/ui/CardColors;",
        "elevation",
        "",
        "modifiers",
        "",
        "",
        "",
        "",
        "Lexpo/modules/ui/ModifierType;",
        "Lexpo/modules/ui/ModifierList;",
        "<init>",
        "(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Ljava/util/List;)V",
        "getColors",
        "()Lexpo/modules/ui/CardColors;",
        "getElevation",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getModifiers",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Ljava/util/List;)Lexpo/modules/ui/ElevatedCardProps;",
        "equals",
        "",
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
.field private final colors:Lexpo/modules/ui/CardColors;

.field private final elevation:Ljava/lang/Float;

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
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ui/ElevatedCardProps;-><init>(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/ui/CardColors;",
            "Ljava/lang/Float;",
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modifiers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lexpo/modules/ui/ElevatedCardProps;->colors:Lexpo/modules/ui/CardColors;

    .line 87
    iput-object p2, p0, Lexpo/modules/ui/ElevatedCardProps;->elevation:Ljava/lang/Float;

    .line 88
    iput-object p3, p0, Lexpo/modules/ui/ElevatedCardProps;->modifiers:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 86
    new-instance p1, Lexpo/modules/ui/CardColors;

    const/4 p5, 0x3

    invoke-direct {p1, v0, v0, p5, v0}, Lexpo/modules/ui/CardColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 88
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 85
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/ui/ElevatedCardProps;-><init>(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/ElevatedCardProps;Lexpo/modules/ui/CardColors;Ljava/lang/Float;Ljava/util/List;ILjava/lang/Object;)Lexpo/modules/ui/ElevatedCardProps;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lexpo/modules/ui/ElevatedCardProps;->colors:Lexpo/modules/ui/CardColors;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lexpo/modules/ui/ElevatedCardProps;->elevation:Ljava/lang/Float;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lexpo/modules/ui/ElevatedCardProps;->modifiers:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/ui/ElevatedCardProps;->copy(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Ljava/util/List;)Lexpo/modules/ui/ElevatedCardProps;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lexpo/modules/ui/CardColors;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/ElevatedCardProps;->colors:Lexpo/modules/ui/CardColors;

    return-object v0
.end method

.method public final component2()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/ElevatedCardProps;->elevation:Ljava/lang/Float;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
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

    iget-object v0, p0, Lexpo/modules/ui/ElevatedCardProps;->modifiers:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Ljava/util/List;)Lexpo/modules/ui/ElevatedCardProps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/ui/CardColors;",
            "Ljava/lang/Float;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lexpo/modules/ui/ElevatedCardProps;"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modifiers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/ui/ElevatedCardProps;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/ui/ElevatedCardProps;-><init>(Lexpo/modules/ui/CardColors;Ljava/lang/Float;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/ElevatedCardProps;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/ElevatedCardProps;

    iget-object v1, p0, Lexpo/modules/ui/ElevatedCardProps;->colors:Lexpo/modules/ui/CardColors;

    iget-object v3, p1, Lexpo/modules/ui/ElevatedCardProps;->colors:Lexpo/modules/ui/CardColors;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/ui/ElevatedCardProps;->elevation:Ljava/lang/Float;

    iget-object v3, p1, Lexpo/modules/ui/ElevatedCardProps;->elevation:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/ui/ElevatedCardProps;->modifiers:Ljava/util/List;

    iget-object p1, p1, Lexpo/modules/ui/ElevatedCardProps;->modifiers:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getColors()Lexpo/modules/ui/CardColors;
    .locals 1

    .line 86
    iget-object v0, p0, Lexpo/modules/ui/ElevatedCardProps;->colors:Lexpo/modules/ui/CardColors;

    return-object v0
.end method

.method public final getElevation()Ljava/lang/Float;
    .locals 1

    .line 87
    iget-object v0, p0, Lexpo/modules/ui/ElevatedCardProps;->elevation:Ljava/lang/Float;

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

    .line 88
    iget-object v0, p0, Lexpo/modules/ui/ElevatedCardProps;->modifiers:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/ui/ElevatedCardProps;->colors:Lexpo/modules/ui/CardColors;

    invoke-virtual {v0}, Lexpo/modules/ui/CardColors;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/ElevatedCardProps;->elevation:Ljava/lang/Float;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/ElevatedCardProps;->modifiers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lexpo/modules/ui/ElevatedCardProps;->colors:Lexpo/modules/ui/CardColors;

    iget-object v1, p0, Lexpo/modules/ui/ElevatedCardProps;->elevation:Ljava/lang/Float;

    iget-object v2, p0, Lexpo/modules/ui/ElevatedCardProps;->modifiers:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ElevatedCardProps(colors="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", elevation="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
