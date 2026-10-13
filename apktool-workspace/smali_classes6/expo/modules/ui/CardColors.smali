.class public final Lexpo/modules/ui/CardColors;
.super Ljava/lang/Object;
.source "CardView.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J!\u0010\u000f\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/ui/CardColors;",
        "Lexpo/modules/kotlin/records/Record;",
        "containerColor",
        "Landroid/graphics/Color;",
        "contentColor",
        "<init>",
        "(Landroid/graphics/Color;Landroid/graphics/Color;)V",
        "getContainerColor$annotations",
        "()V",
        "getContainerColor",
        "()Landroid/graphics/Color;",
        "getContentColor$annotations",
        "getContentColor",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final containerColor:Landroid/graphics/Color;

.field private final contentColor:Landroid/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lexpo/modules/ui/CardColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Color;Landroid/graphics/Color;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lexpo/modules/ui/CardColors;->containerColor:Landroid/graphics/Color;

    .line 21
    iput-object p2, p0, Lexpo/modules/ui/CardColors;->contentColor:Landroid/graphics/Color;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Color;Landroid/graphics/Color;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/ui/CardColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/CardColors;Landroid/graphics/Color;Landroid/graphics/Color;ILjava/lang/Object;)Lexpo/modules/ui/CardColors;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/ui/CardColors;->containerColor:Landroid/graphics/Color;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/ui/CardColors;->contentColor:Landroid/graphics/Color;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/CardColors;->copy(Landroid/graphics/Color;Landroid/graphics/Color;)Lexpo/modules/ui/CardColors;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getContainerColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getContentColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Landroid/graphics/Color;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/CardColors;->containerColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final component2()Landroid/graphics/Color;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/CardColors;->contentColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final copy(Landroid/graphics/Color;Landroid/graphics/Color;)Lexpo/modules/ui/CardColors;
    .locals 1

    new-instance v0, Lexpo/modules/ui/CardColors;

    invoke-direct {v0, p1, p2}, Lexpo/modules/ui/CardColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/CardColors;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/CardColors;

    iget-object v1, p0, Lexpo/modules/ui/CardColors;->containerColor:Landroid/graphics/Color;

    iget-object v3, p1, Lexpo/modules/ui/CardColors;->containerColor:Landroid/graphics/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/ui/CardColors;->contentColor:Landroid/graphics/Color;

    iget-object p1, p1, Lexpo/modules/ui/CardColors;->contentColor:Landroid/graphics/Color;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getContainerColor()Landroid/graphics/Color;
    .locals 1

    .line 20
    iget-object v0, p0, Lexpo/modules/ui/CardColors;->containerColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getContentColor()Landroid/graphics/Color;
    .locals 1

    .line 21
    iget-object v0, p0, Lexpo/modules/ui/CardColors;->contentColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/ui/CardColors;->containerColor:Landroid/graphics/Color;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Color;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/ui/CardColors;->contentColor:Landroid/graphics/Color;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Color;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/ui/CardColors;->containerColor:Landroid/graphics/Color;

    iget-object v1, p0, Lexpo/modules/ui/CardColors;->contentColor:Landroid/graphics/Color;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CardColors(containerColor="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", contentColor="

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
