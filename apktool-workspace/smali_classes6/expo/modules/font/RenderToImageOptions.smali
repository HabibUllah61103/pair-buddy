.class public final Lexpo/modules/font/RenderToImageOptions;
.super Ljava/lang/Object;
.source "FontUtilsRecords.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J8\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020\u0008H\u00d6\u0001J\t\u0010$\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u000c\u001a\u0004\u0008\u0010\u0010\u0011R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0015\u0012\u0004\u0008\u0012\u0010\u000c\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u000c\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006%"
    }
    d2 = {
        "Lexpo/modules/font/RenderToImageOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "fontFamily",
        "",
        "size",
        "",
        "lineHeight",
        "color",
        "",
        "<init>",
        "(Ljava/lang/String;FLjava/lang/Float;I)V",
        "getFontFamily$annotations",
        "()V",
        "getFontFamily",
        "()Ljava/lang/String;",
        "getSize$annotations",
        "getSize",
        "()F",
        "getLineHeight$annotations",
        "getLineHeight",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getColor$annotations",
        "getColor",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/String;FLjava/lang/Float;I)Lexpo/modules/font/RenderToImageOptions;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "expo-font_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final color:I

.field private final fontFamily:Ljava/lang/String;

.field private final lineHeight:Ljava/lang/Float;

.field private final size:F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lexpo/modules/font/RenderToImageOptions;-><init>(Ljava/lang/String;FLjava/lang/Float;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/lang/Float;I)V
    .locals 1

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lexpo/modules/font/RenderToImageOptions;->fontFamily:Ljava/lang/String;

    .line 11
    iput p2, p0, Lexpo/modules/font/RenderToImageOptions;->size:F

    .line 14
    iput-object p3, p0, Lexpo/modules/font/RenderToImageOptions;->lineHeight:Ljava/lang/Float;

    .line 17
    iput p4, p0, Lexpo/modules/font/RenderToImageOptions;->color:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FLjava/lang/Float;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 9
    const-string p1, ""

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/high16 p2, 0x41c00000    # 24.0f

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/high16 p4, -0x1000000

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/font/RenderToImageOptions;-><init>(Ljava/lang/String;FLjava/lang/Float;I)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/font/RenderToImageOptions;Ljava/lang/String;FLjava/lang/Float;IILjava/lang/Object;)Lexpo/modules/font/RenderToImageOptions;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lexpo/modules/font/RenderToImageOptions;->fontFamily:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lexpo/modules/font/RenderToImageOptions;->size:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lexpo/modules/font/RenderToImageOptions;->lineHeight:Ljava/lang/Float;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lexpo/modules/font/RenderToImageOptions;->color:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/font/RenderToImageOptions;->copy(Ljava/lang/String;FLjava/lang/Float;I)Lexpo/modules/font/RenderToImageOptions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getFontFamily$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getLineHeight$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSize$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/font/RenderToImageOptions;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lexpo/modules/font/RenderToImageOptions;->size:F

    return v0
.end method

.method public final component3()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lexpo/modules/font/RenderToImageOptions;->lineHeight:Ljava/lang/Float;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lexpo/modules/font/RenderToImageOptions;->color:I

    return v0
.end method

.method public final copy(Ljava/lang/String;FLjava/lang/Float;I)Lexpo/modules/font/RenderToImageOptions;
    .locals 1

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/font/RenderToImageOptions;

    invoke-direct {v0, p1, p2, p3, p4}, Lexpo/modules/font/RenderToImageOptions;-><init>(Ljava/lang/String;FLjava/lang/Float;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/font/RenderToImageOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/font/RenderToImageOptions;

    iget-object v1, p0, Lexpo/modules/font/RenderToImageOptions;->fontFamily:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/font/RenderToImageOptions;->fontFamily:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lexpo/modules/font/RenderToImageOptions;->size:F

    iget v3, p1, Lexpo/modules/font/RenderToImageOptions;->size:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/font/RenderToImageOptions;->lineHeight:Ljava/lang/Float;

    iget-object v3, p1, Lexpo/modules/font/RenderToImageOptions;->lineHeight:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lexpo/modules/font/RenderToImageOptions;->color:I

    iget p1, p1, Lexpo/modules/font/RenderToImageOptions;->color:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getColor()I
    .locals 1

    .line 17
    iget v0, p0, Lexpo/modules/font/RenderToImageOptions;->color:I

    return v0
.end method

.method public final getFontFamily()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lexpo/modules/font/RenderToImageOptions;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public final getLineHeight()Ljava/lang/Float;
    .locals 1

    .line 14
    iget-object v0, p0, Lexpo/modules/font/RenderToImageOptions;->lineHeight:Ljava/lang/Float;

    return-object v0
.end method

.method public final getSize()F
    .locals 1

    .line 11
    iget v0, p0, Lexpo/modules/font/RenderToImageOptions;->size:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/font/RenderToImageOptions;->fontFamily:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/font/RenderToImageOptions;->size:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/font/RenderToImageOptions;->lineHeight:Ljava/lang/Float;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/font/RenderToImageOptions;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lexpo/modules/font/RenderToImageOptions;->fontFamily:Ljava/lang/String;

    iget v1, p0, Lexpo/modules/font/RenderToImageOptions;->size:F

    iget-object v2, p0, Lexpo/modules/font/RenderToImageOptions;->lineHeight:Ljava/lang/Float;

    iget v3, p0, Lexpo/modules/font/RenderToImageOptions;->color:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RenderToImageOptions(fontFamily="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", size="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lineHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
