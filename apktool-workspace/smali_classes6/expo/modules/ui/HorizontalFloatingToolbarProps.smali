.class public final Lexpo/modules/ui/HorizontalFloatingToolbarProps;
.super Ljava/lang/Object;
.source "HorizontalFloatingToolbarView.kt"

# interfaces
.implements Lexpo/modules/kotlin/views/ComposeProps;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012$\u0008\u0002\u0010\u0004\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0006j\u0002`\t0\u0005j\u0002`\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J%\u0010\u0012\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0006j\u0002`\t0\u0005j\u0002`\nH\u00c6\u0003J;\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032$\u0008\u0002\u0010\u0004\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0006j\u0002`\t0\u0005j\u0002`\nH\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0007H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR-\u0010\u0004\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0006j\u0002`\t0\u0005j\u0002`\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lexpo/modules/ui/HorizontalFloatingToolbarProps;",
        "Lexpo/modules/kotlin/views/ComposeProps;",
        "variant",
        "Lexpo/modules/ui/HorizontalFloatingToolbarVariant;",
        "modifiers",
        "",
        "",
        "",
        "",
        "Lexpo/modules/ui/ModifierType;",
        "Lexpo/modules/ui/ModifierList;",
        "<init>",
        "(Lexpo/modules/ui/HorizontalFloatingToolbarVariant;Ljava/util/List;)V",
        "getVariant",
        "()Lexpo/modules/ui/HorizontalFloatingToolbarVariant;",
        "getModifiers",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "copy",
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

.field private final variant:Lexpo/modules/ui/HorizontalFloatingToolbarVariant;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lexpo/modules/ui/HorizontalFloatingToolbarProps;-><init>(Lexpo/modules/ui/HorizontalFloatingToolbarVariant;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lexpo/modules/ui/HorizontalFloatingToolbarVariant;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/ui/HorizontalFloatingToolbarVariant;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "modifiers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->variant:Lexpo/modules/ui/HorizontalFloatingToolbarVariant;

    .line 23
    iput-object p2, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->modifiers:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/ui/HorizontalFloatingToolbarVariant;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 22
    sget-object p1, Lexpo/modules/ui/HorizontalFloatingToolbarVariant;->STANDARD:Lexpo/modules/ui/HorizontalFloatingToolbarVariant;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 20
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/ui/HorizontalFloatingToolbarProps;-><init>(Lexpo/modules/ui/HorizontalFloatingToolbarVariant;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/HorizontalFloatingToolbarProps;Lexpo/modules/ui/HorizontalFloatingToolbarVariant;Ljava/util/List;ILjava/lang/Object;)Lexpo/modules/ui/HorizontalFloatingToolbarProps;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->variant:Lexpo/modules/ui/HorizontalFloatingToolbarVariant;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->modifiers:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->copy(Lexpo/modules/ui/HorizontalFloatingToolbarVariant;Ljava/util/List;)Lexpo/modules/ui/HorizontalFloatingToolbarProps;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lexpo/modules/ui/HorizontalFloatingToolbarVariant;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->variant:Lexpo/modules/ui/HorizontalFloatingToolbarVariant;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
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

    iget-object v0, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->modifiers:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lexpo/modules/ui/HorizontalFloatingToolbarVariant;Ljava/util/List;)Lexpo/modules/ui/HorizontalFloatingToolbarProps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/ui/HorizontalFloatingToolbarVariant;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lexpo/modules/ui/HorizontalFloatingToolbarProps;"
        }
    .end annotation

    const-string v0, "modifiers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;

    invoke-direct {v0, p1, p2}, Lexpo/modules/ui/HorizontalFloatingToolbarProps;-><init>(Lexpo/modules/ui/HorizontalFloatingToolbarVariant;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/HorizontalFloatingToolbarProps;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/HorizontalFloatingToolbarProps;

    iget-object v1, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->variant:Lexpo/modules/ui/HorizontalFloatingToolbarVariant;

    iget-object v3, p1, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->variant:Lexpo/modules/ui/HorizontalFloatingToolbarVariant;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->modifiers:Ljava/util/List;

    iget-object p1, p1, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->modifiers:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
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

    .line 23
    iget-object v0, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->modifiers:Ljava/util/List;

    return-object v0
.end method

.method public final getVariant()Lexpo/modules/ui/HorizontalFloatingToolbarVariant;
    .locals 1

    .line 21
    iget-object v0, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->variant:Lexpo/modules/ui/HorizontalFloatingToolbarVariant;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->variant:Lexpo/modules/ui/HorizontalFloatingToolbarVariant;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lexpo/modules/ui/HorizontalFloatingToolbarVariant;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->modifiers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->variant:Lexpo/modules/ui/HorizontalFloatingToolbarVariant;

    iget-object v1, p0, Lexpo/modules/ui/HorizontalFloatingToolbarProps;->modifiers:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HorizontalFloatingToolbarProps(variant="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", modifiers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
