.class public final Lexpo/modules/ui/ShapeRecord;
.super Ljava/lang/Object;
.source "ShapeView.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001BO\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0006H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\t\u0010(\u001a\u00020\u000cH\u00c6\u0003JQ\u0010)\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u00c6\u0001J\u0013\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u00d6\u0003J\t\u0010.\u001a\u00020\u0006H\u00d6\u0001J\t\u0010/\u001a\u000200H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0010\u001a\u0004\u0008\u0014\u0010\u0012R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0018\u0010\u0010\u001a\u0004\u0008\u0019\u0010\u0012R\u001c\u0010\u0008\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u0010\u001a\u0004\u0008\u001b\u0010\u0012R\u001e\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0010\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001f\u0010\u0010\u001a\u0004\u0008 \u0010!\u00a8\u00061"
    }
    d2 = {
        "Lexpo/modules/ui/ShapeRecord;",
        "Lexpo/modules/kotlin/records/Record;",
        "cornerRounding",
        "",
        "smoothing",
        "verticesCount",
        "",
        "innerRadius",
        "radius",
        "cornerRadii",
        "Lexpo/modules/ui/CornerRadii;",
        "type",
        "Lexpo/modules/ui/ShapeType;",
        "<init>",
        "(FFIFFLexpo/modules/ui/CornerRadii;Lexpo/modules/ui/ShapeType;)V",
        "getCornerRounding$annotations",
        "()V",
        "getCornerRounding",
        "()F",
        "getSmoothing$annotations",
        "getSmoothing",
        "getVerticesCount$annotations",
        "getVerticesCount",
        "()I",
        "getInnerRadius$annotations",
        "getInnerRadius",
        "getRadius$annotations",
        "getRadius",
        "getCornerRadii$annotations",
        "getCornerRadii",
        "()Lexpo/modules/ui/CornerRadii;",
        "getType$annotations",
        "getType",
        "()Lexpo/modules/ui/ShapeType;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field public static final $stable:I


# instance fields
.field private final cornerRadii:Lexpo/modules/ui/CornerRadii;

.field private final cornerRounding:F

.field private final innerRadius:F

.field private final radius:F

.field private final smoothing:F

.field private final type:Lexpo/modules/ui/ShapeType;

.field private final verticesCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lexpo/modules/ui/ShapeRecord;-><init>(FFIFFLexpo/modules/ui/CornerRadii;Lexpo/modules/ui/ShapeType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFIFFLexpo/modules/ui/CornerRadii;Lexpo/modules/ui/ShapeType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p1, p0, Lexpo/modules/ui/ShapeRecord;->cornerRounding:F

    .line 148
    iput p2, p0, Lexpo/modules/ui/ShapeRecord;->smoothing:F

    .line 150
    iput p3, p0, Lexpo/modules/ui/ShapeRecord;->verticesCount:I

    .line 152
    iput p4, p0, Lexpo/modules/ui/ShapeRecord;->innerRadius:F

    .line 154
    iput p5, p0, Lexpo/modules/ui/ShapeRecord;->radius:F

    .line 156
    iput-object p6, p0, Lexpo/modules/ui/ShapeRecord;->cornerRadii:Lexpo/modules/ui/CornerRadii;

    .line 158
    iput-object p7, p0, Lexpo/modules/ui/ShapeRecord;->type:Lexpo/modules/ui/ShapeType;

    return-void
.end method

.method public synthetic constructor <init>(FFIFFLexpo/modules/ui/CornerRadii;Lexpo/modules/ui/ShapeType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    const/4 p3, 0x6

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    const/4 p6, 0x0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 159
    sget-object p7, Lexpo/modules/ui/ShapeType;->CIRCLE:Lexpo/modules/ui/ShapeType;

    :cond_6
    move-object p8, p7

    move-object p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 145
    invoke-direct/range {p1 .. p8}, Lexpo/modules/ui/ShapeRecord;-><init>(FFIFFLexpo/modules/ui/CornerRadii;Lexpo/modules/ui/ShapeType;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/ShapeRecord;FFIFFLexpo/modules/ui/CornerRadii;Lexpo/modules/ui/ShapeType;ILjava/lang/Object;)Lexpo/modules/ui/ShapeRecord;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lexpo/modules/ui/ShapeRecord;->cornerRounding:F

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lexpo/modules/ui/ShapeRecord;->smoothing:F

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget p3, p0, Lexpo/modules/ui/ShapeRecord;->verticesCount:I

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget p4, p0, Lexpo/modules/ui/ShapeRecord;->innerRadius:F

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget p5, p0, Lexpo/modules/ui/ShapeRecord;->radius:F

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-object p6, p0, Lexpo/modules/ui/ShapeRecord;->cornerRadii:Lexpo/modules/ui/CornerRadii;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-object p7, p0, Lexpo/modules/ui/ShapeRecord;->type:Lexpo/modules/ui/ShapeType;

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p9}, Lexpo/modules/ui/ShapeRecord;->copy(FFIFFLexpo/modules/ui/CornerRadii;Lexpo/modules/ui/ShapeType;)Lexpo/modules/ui/ShapeRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCornerRadii$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getCornerRounding$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getInnerRadius$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getRadius$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSmoothing$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getType$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getVerticesCount$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lexpo/modules/ui/ShapeRecord;->cornerRounding:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lexpo/modules/ui/ShapeRecord;->smoothing:F

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lexpo/modules/ui/ShapeRecord;->verticesCount:I

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lexpo/modules/ui/ShapeRecord;->innerRadius:F

    return v0
.end method

.method public final component5()F
    .locals 1

    iget v0, p0, Lexpo/modules/ui/ShapeRecord;->radius:F

    return v0
.end method

.method public final component6()Lexpo/modules/ui/CornerRadii;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/ShapeRecord;->cornerRadii:Lexpo/modules/ui/CornerRadii;

    return-object v0
.end method

.method public final component7()Lexpo/modules/ui/ShapeType;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/ShapeRecord;->type:Lexpo/modules/ui/ShapeType;

    return-object v0
.end method

.method public final copy(FFIFFLexpo/modules/ui/CornerRadii;Lexpo/modules/ui/ShapeType;)Lexpo/modules/ui/ShapeRecord;
    .locals 9

    const-string v0, "type"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lexpo/modules/ui/ShapeRecord;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lexpo/modules/ui/ShapeRecord;-><init>(FFIFFLexpo/modules/ui/CornerRadii;Lexpo/modules/ui/ShapeType;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/ShapeRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/ShapeRecord;

    iget v1, p0, Lexpo/modules/ui/ShapeRecord;->cornerRounding:F

    iget v3, p1, Lexpo/modules/ui/ShapeRecord;->cornerRounding:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lexpo/modules/ui/ShapeRecord;->smoothing:F

    iget v3, p1, Lexpo/modules/ui/ShapeRecord;->smoothing:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lexpo/modules/ui/ShapeRecord;->verticesCount:I

    iget v3, p1, Lexpo/modules/ui/ShapeRecord;->verticesCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lexpo/modules/ui/ShapeRecord;->innerRadius:F

    iget v3, p1, Lexpo/modules/ui/ShapeRecord;->innerRadius:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lexpo/modules/ui/ShapeRecord;->radius:F

    iget v3, p1, Lexpo/modules/ui/ShapeRecord;->radius:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lexpo/modules/ui/ShapeRecord;->cornerRadii:Lexpo/modules/ui/CornerRadii;

    iget-object v3, p1, Lexpo/modules/ui/ShapeRecord;->cornerRadii:Lexpo/modules/ui/CornerRadii;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lexpo/modules/ui/ShapeRecord;->type:Lexpo/modules/ui/ShapeType;

    iget-object p1, p1, Lexpo/modules/ui/ShapeRecord;->type:Lexpo/modules/ui/ShapeType;

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCornerRadii()Lexpo/modules/ui/CornerRadii;
    .locals 1

    .line 156
    iget-object v0, p0, Lexpo/modules/ui/ShapeRecord;->cornerRadii:Lexpo/modules/ui/CornerRadii;

    return-object v0
.end method

.method public final getCornerRounding()F
    .locals 1

    .line 146
    iget v0, p0, Lexpo/modules/ui/ShapeRecord;->cornerRounding:F

    return v0
.end method

.method public final getInnerRadius()F
    .locals 1

    .line 152
    iget v0, p0, Lexpo/modules/ui/ShapeRecord;->innerRadius:F

    return v0
.end method

.method public final getRadius()F
    .locals 1

    .line 154
    iget v0, p0, Lexpo/modules/ui/ShapeRecord;->radius:F

    return v0
.end method

.method public final getSmoothing()F
    .locals 1

    .line 148
    iget v0, p0, Lexpo/modules/ui/ShapeRecord;->smoothing:F

    return v0
.end method

.method public final getType()Lexpo/modules/ui/ShapeType;
    .locals 1

    .line 158
    iget-object v0, p0, Lexpo/modules/ui/ShapeRecord;->type:Lexpo/modules/ui/ShapeType;

    return-object v0
.end method

.method public final getVerticesCount()I
    .locals 1

    .line 150
    iget v0, p0, Lexpo/modules/ui/ShapeRecord;->verticesCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lexpo/modules/ui/ShapeRecord;->cornerRounding:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/ui/ShapeRecord;->smoothing:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/ui/ShapeRecord;->verticesCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/ui/ShapeRecord;->innerRadius:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/ui/ShapeRecord;->radius:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/ShapeRecord;->cornerRadii:Lexpo/modules/ui/CornerRadii;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lexpo/modules/ui/CornerRadii;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/ShapeRecord;->type:Lexpo/modules/ui/ShapeType;

    invoke-virtual {v1}, Lexpo/modules/ui/ShapeType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lexpo/modules/ui/ShapeRecord;->cornerRounding:F

    iget v1, p0, Lexpo/modules/ui/ShapeRecord;->smoothing:F

    iget v2, p0, Lexpo/modules/ui/ShapeRecord;->verticesCount:I

    iget v3, p0, Lexpo/modules/ui/ShapeRecord;->innerRadius:F

    iget v4, p0, Lexpo/modules/ui/ShapeRecord;->radius:F

    iget-object v5, p0, Lexpo/modules/ui/ShapeRecord;->cornerRadii:Lexpo/modules/ui/CornerRadii;

    iget-object v6, p0, Lexpo/modules/ui/ShapeRecord;->type:Lexpo/modules/ui/ShapeType;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ShapeRecord(cornerRounding="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", smoothing="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verticesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", innerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cornerRadii="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
