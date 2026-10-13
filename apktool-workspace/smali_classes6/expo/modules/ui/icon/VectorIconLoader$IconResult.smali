.class public final Lexpo/modules/ui/icon/VectorIconLoader$IconResult;
.super Ljava/lang/Object;
.source "VectorIconLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/ui/icon/VectorIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/ui/icon/VectorIconLoader$IconResult;",
        "",
        "imageVector",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "<init>",
        "(Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;)V",
        "getImageVector",
        "()Landroidx/compose/ui/graphics/vector/ImageVector;",
        "getDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
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
.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 39
    iput-object p2, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 37
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/icon/VectorIconLoader$IconResult;Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)Lexpo/modules/ui/icon/VectorIconLoader$IconResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->copy(Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;)Lexpo/modules/ui/icon/VectorIconLoader$IconResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method

.method public final component2()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final copy(Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;)Lexpo/modules/ui/icon/VectorIconLoader$IconResult;
    .locals 1

    new-instance v0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;

    invoke-direct {v0, p1, p2}, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;

    iget-object v1, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v3, p1, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 39
    iget-object v0, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getImageVector()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    .line 38
    iget-object v0, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v1, p0, Lexpo/modules/ui/icon/VectorIconLoader$IconResult;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IconResult(imageVector="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", drawable="

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
