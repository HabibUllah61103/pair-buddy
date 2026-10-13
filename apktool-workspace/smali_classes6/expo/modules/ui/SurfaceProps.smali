.class public final Lexpo/modules/ui/SurfaceProps;
.super Ljava/lang/Object;
.source "SurfaceView.kt"

# interfaces
.implements Lexpo/modules/kotlin/views/ComposeProps;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008&\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00a1\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r\u0012$\u0008\u0002\u0010\u0011\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013j\u0002`\u00160\u0012j\u0002`\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u00100\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001eJ\u0010\u00101\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001eJ\u000b\u00102\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\t\u00104\u001a\u00020\rH\u00c6\u0003J\t\u00105\u001a\u00020\rH\u00c6\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010)J\u0010\u00107\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010)J%\u00108\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013j\u0002`\u00160\u0012j\u0002`\u0017H\u00c6\u0003J\u00a8\u0001\u00109\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r2$\u0008\u0002\u0010\u0011\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013j\u0002`\u00160\u0012j\u0002`\u0017H\u00c6\u0001\u00a2\u0006\u0002\u0010:J\u0013\u0010;\u001a\u00020\r2\u0008\u0010<\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010=\u001a\u00020>H\u00d6\u0001J\t\u0010?\u001a\u00020\u0014H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001bR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008\u001d\u0010\u001eR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008 \u0010\u001eR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010&R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010*\u001a\u0004\u0008(\u0010)R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010*\u001a\u0004\u0008+\u0010)R-\u0010\u0011\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013j\u0002`\u00160\u0012j\u0002`\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-\u00a8\u0006@"
    }
    d2 = {
        "Lexpo/modules/ui/SurfaceProps;",
        "Lexpo/modules/kotlin/views/ComposeProps;",
        "color",
        "Landroid/graphics/Color;",
        "contentColor",
        "tonalElevation",
        "",
        "shadowElevation",
        "shape",
        "Lexpo/modules/ui/ShapeRecord;",
        "border",
        "Lexpo/modules/ui/SurfaceBorder;",
        "clickable",
        "",
        "enabled",
        "selected",
        "checked",
        "modifiers",
        "",
        "",
        "",
        "",
        "Lexpo/modules/ui/ModifierType;",
        "Lexpo/modules/ui/ModifierList;",
        "<init>",
        "(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ShapeRecord;Lexpo/modules/ui/SurfaceBorder;ZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V",
        "getColor",
        "()Landroid/graphics/Color;",
        "getContentColor",
        "getTonalElevation",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getShadowElevation",
        "getShape",
        "()Lexpo/modules/ui/ShapeRecord;",
        "getBorder",
        "()Lexpo/modules/ui/SurfaceBorder;",
        "getClickable",
        "()Z",
        "getEnabled",
        "getSelected",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getChecked",
        "getModifiers",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "copy",
        "(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ShapeRecord;Lexpo/modules/ui/SurfaceBorder;ZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)Lexpo/modules/ui/SurfaceProps;",
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
.field private final border:Lexpo/modules/ui/SurfaceBorder;

.field private final checked:Ljava/lang/Boolean;

.field private final clickable:Z

.field private final color:Landroid/graphics/Color;

.field private final contentColor:Landroid/graphics/Color;

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

.field private final selected:Ljava/lang/Boolean;

.field private final shadowElevation:Ljava/lang/Float;

.field private final shape:Lexpo/modules/ui/ShapeRecord;

.field private final tonalElevation:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lexpo/modules/ui/SurfaceProps;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ShapeRecord;Lexpo/modules/ui/SurfaceBorder;ZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ShapeRecord;Lexpo/modules/ui/SurfaceBorder;ZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Color;",
            "Landroid/graphics/Color;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Lexpo/modules/ui/ShapeRecord;",
            "Lexpo/modules/ui/SurfaceBorder;",
            "ZZ",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
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

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lexpo/modules/ui/SurfaceProps;->color:Landroid/graphics/Color;

    .line 25
    iput-object p2, p0, Lexpo/modules/ui/SurfaceProps;->contentColor:Landroid/graphics/Color;

    .line 26
    iput-object p3, p0, Lexpo/modules/ui/SurfaceProps;->tonalElevation:Ljava/lang/Float;

    .line 27
    iput-object p4, p0, Lexpo/modules/ui/SurfaceProps;->shadowElevation:Ljava/lang/Float;

    .line 28
    iput-object p5, p0, Lexpo/modules/ui/SurfaceProps;->shape:Lexpo/modules/ui/ShapeRecord;

    .line 29
    iput-object p6, p0, Lexpo/modules/ui/SurfaceProps;->border:Lexpo/modules/ui/SurfaceBorder;

    .line 30
    iput-boolean p7, p0, Lexpo/modules/ui/SurfaceProps;->clickable:Z

    .line 31
    iput-boolean p8, p0, Lexpo/modules/ui/SurfaceProps;->enabled:Z

    .line 32
    iput-object p9, p0, Lexpo/modules/ui/SurfaceProps;->selected:Ljava/lang/Boolean;

    .line 33
    iput-object p10, p0, Lexpo/modules/ui/SurfaceProps;->checked:Ljava/lang/Boolean;

    .line 34
    iput-object p11, p0, Lexpo/modules/ui/SurfaceProps;->modifiers:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ShapeRecord;Lexpo/modules/ui/SurfaceBorder;ZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    const/4 p7, 0x0

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    const/4 p8, 0x1

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    move-object p10, v0

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p11

    :cond_a
    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move p9, p8

    move p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 23
    invoke-direct/range {p1 .. p12}, Lexpo/modules/ui/SurfaceProps;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ShapeRecord;Lexpo/modules/ui/SurfaceBorder;ZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/SurfaceProps;Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ShapeRecord;Lexpo/modules/ui/SurfaceBorder;ZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lexpo/modules/ui/SurfaceProps;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    iget-object p1, p0, Lexpo/modules/ui/SurfaceProps;->color:Landroid/graphics/Color;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    iget-object p2, p0, Lexpo/modules/ui/SurfaceProps;->contentColor:Landroid/graphics/Color;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    iget-object p3, p0, Lexpo/modules/ui/SurfaceProps;->tonalElevation:Ljava/lang/Float;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    iget-object p4, p0, Lexpo/modules/ui/SurfaceProps;->shadowElevation:Ljava/lang/Float;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    iget-object p5, p0, Lexpo/modules/ui/SurfaceProps;->shape:Lexpo/modules/ui/ShapeRecord;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    iget-object p6, p0, Lexpo/modules/ui/SurfaceProps;->border:Lexpo/modules/ui/SurfaceBorder;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    iget-boolean p7, p0, Lexpo/modules/ui/SurfaceProps;->clickable:Z

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    iget-boolean p8, p0, Lexpo/modules/ui/SurfaceProps;->enabled:Z

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    iget-object p9, p0, Lexpo/modules/ui/SurfaceProps;->selected:Ljava/lang/Boolean;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    iget-object p10, p0, Lexpo/modules/ui/SurfaceProps;->checked:Ljava/lang/Boolean;

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    iget-object p11, p0, Lexpo/modules/ui/SurfaceProps;->modifiers:Ljava/util/List;

    :cond_a
    move-object p12, p10

    move-object p13, p11

    move p10, p8

    move-object p11, p9

    move-object p8, p6

    move p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p13}, Lexpo/modules/ui/SurfaceProps;->copy(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ShapeRecord;Lexpo/modules/ui/SurfaceBorder;ZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)Lexpo/modules/ui/SurfaceProps;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/Color;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->color:Landroid/graphics/Color;

    return-object v0
.end method

.method public final component10()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->checked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component11()Ljava/util/List;
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

    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->modifiers:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Landroid/graphics/Color;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->contentColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final component3()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->tonalElevation:Ljava/lang/Float;

    return-object v0
.end method

.method public final component4()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->shadowElevation:Ljava/lang/Float;

    return-object v0
.end method

.method public final component5()Lexpo/modules/ui/ShapeRecord;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->shape:Lexpo/modules/ui/ShapeRecord;

    return-object v0
.end method

.method public final component6()Lexpo/modules/ui/SurfaceBorder;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->border:Lexpo/modules/ui/SurfaceBorder;

    return-object v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/ui/SurfaceProps;->clickable:Z

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/ui/SurfaceProps;->enabled:Z

    return v0
.end method

.method public final component9()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->selected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ShapeRecord;Lexpo/modules/ui/SurfaceBorder;ZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)Lexpo/modules/ui/SurfaceProps;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Color;",
            "Landroid/graphics/Color;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Lexpo/modules/ui/ShapeRecord;",
            "Lexpo/modules/ui/SurfaceBorder;",
            "ZZ",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lexpo/modules/ui/SurfaceProps;"
        }
    .end annotation

    const-string v0, "modifiers"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lexpo/modules/ui/SurfaceProps;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lexpo/modules/ui/SurfaceProps;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ShapeRecord;Lexpo/modules/ui/SurfaceBorder;ZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/SurfaceProps;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/SurfaceProps;

    iget-object v1, p0, Lexpo/modules/ui/SurfaceProps;->color:Landroid/graphics/Color;

    iget-object v3, p1, Lexpo/modules/ui/SurfaceProps;->color:Landroid/graphics/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/ui/SurfaceProps;->contentColor:Landroid/graphics/Color;

    iget-object v3, p1, Lexpo/modules/ui/SurfaceProps;->contentColor:Landroid/graphics/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/ui/SurfaceProps;->tonalElevation:Ljava/lang/Float;

    iget-object v3, p1, Lexpo/modules/ui/SurfaceProps;->tonalElevation:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lexpo/modules/ui/SurfaceProps;->shadowElevation:Ljava/lang/Float;

    iget-object v3, p1, Lexpo/modules/ui/SurfaceProps;->shadowElevation:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lexpo/modules/ui/SurfaceProps;->shape:Lexpo/modules/ui/ShapeRecord;

    iget-object v3, p1, Lexpo/modules/ui/SurfaceProps;->shape:Lexpo/modules/ui/ShapeRecord;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lexpo/modules/ui/SurfaceProps;->border:Lexpo/modules/ui/SurfaceBorder;

    iget-object v3, p1, Lexpo/modules/ui/SurfaceProps;->border:Lexpo/modules/ui/SurfaceBorder;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lexpo/modules/ui/SurfaceProps;->clickable:Z

    iget-boolean v3, p1, Lexpo/modules/ui/SurfaceProps;->clickable:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lexpo/modules/ui/SurfaceProps;->enabled:Z

    iget-boolean v3, p1, Lexpo/modules/ui/SurfaceProps;->enabled:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lexpo/modules/ui/SurfaceProps;->selected:Ljava/lang/Boolean;

    iget-object v3, p1, Lexpo/modules/ui/SurfaceProps;->selected:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lexpo/modules/ui/SurfaceProps;->checked:Ljava/lang/Boolean;

    iget-object v3, p1, Lexpo/modules/ui/SurfaceProps;->checked:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lexpo/modules/ui/SurfaceProps;->modifiers:Ljava/util/List;

    iget-object p1, p1, Lexpo/modules/ui/SurfaceProps;->modifiers:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getBorder()Lexpo/modules/ui/SurfaceBorder;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->border:Lexpo/modules/ui/SurfaceBorder;

    return-object v0
.end method

.method public final getChecked()Ljava/lang/Boolean;
    .locals 1

    .line 33
    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->checked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getClickable()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lexpo/modules/ui/SurfaceProps;->clickable:Z

    return v0
.end method

.method public final getColor()Landroid/graphics/Color;
    .locals 1

    .line 24
    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->color:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getContentColor()Landroid/graphics/Color;
    .locals 1

    .line 25
    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->contentColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lexpo/modules/ui/SurfaceProps;->enabled:Z

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

    .line 34
    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->modifiers:Ljava/util/List;

    return-object v0
.end method

.method public final getSelected()Ljava/lang/Boolean;
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->selected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getShadowElevation()Ljava/lang/Float;
    .locals 1

    .line 27
    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->shadowElevation:Ljava/lang/Float;

    return-object v0
.end method

.method public final getShape()Lexpo/modules/ui/ShapeRecord;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->shape:Lexpo/modules/ui/ShapeRecord;

    return-object v0
.end method

.method public final getTonalElevation()Ljava/lang/Float;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->tonalElevation:Ljava/lang/Float;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->color:Landroid/graphics/Color;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Color;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/ui/SurfaceProps;->contentColor:Landroid/graphics/Color;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Color;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/ui/SurfaceProps;->tonalElevation:Ljava/lang/Float;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/ui/SurfaceProps;->shadowElevation:Ljava/lang/Float;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/ui/SurfaceProps;->shape:Lexpo/modules/ui/ShapeRecord;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lexpo/modules/ui/ShapeRecord;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/ui/SurfaceProps;->border:Lexpo/modules/ui/SurfaceBorder;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lexpo/modules/ui/SurfaceBorder;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lexpo/modules/ui/SurfaceProps;->clickable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lexpo/modules/ui/SurfaceProps;->enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/ui/SurfaceProps;->selected:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/ui/SurfaceProps;->checked:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/SurfaceProps;->modifiers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lexpo/modules/ui/SurfaceProps;->color:Landroid/graphics/Color;

    iget-object v1, p0, Lexpo/modules/ui/SurfaceProps;->contentColor:Landroid/graphics/Color;

    iget-object v2, p0, Lexpo/modules/ui/SurfaceProps;->tonalElevation:Ljava/lang/Float;

    iget-object v3, p0, Lexpo/modules/ui/SurfaceProps;->shadowElevation:Ljava/lang/Float;

    iget-object v4, p0, Lexpo/modules/ui/SurfaceProps;->shape:Lexpo/modules/ui/ShapeRecord;

    iget-object v5, p0, Lexpo/modules/ui/SurfaceProps;->border:Lexpo/modules/ui/SurfaceBorder;

    iget-boolean v6, p0, Lexpo/modules/ui/SurfaceProps;->clickable:Z

    iget-boolean v7, p0, Lexpo/modules/ui/SurfaceProps;->enabled:Z

    iget-object v8, p0, Lexpo/modules/ui/SurfaceProps;->selected:Ljava/lang/Boolean;

    iget-object v9, p0, Lexpo/modules/ui/SurfaceProps;->checked:Ljava/lang/Boolean;

    iget-object v10, p0, Lexpo/modules/ui/SurfaceProps;->modifiers:Ljava/util/List;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "SurfaceProps(color="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", contentColor="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tonalElevation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shadowElevation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", border="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
