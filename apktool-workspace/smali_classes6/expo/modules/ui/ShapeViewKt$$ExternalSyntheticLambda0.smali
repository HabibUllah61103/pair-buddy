.class public final synthetic Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/graphics/Path;

.field public final synthetic f$1:Lexpo/modules/ui/ShapeProps;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Path;Lexpo/modules/ui/ShapeProps;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/graphics/Path;

    iput-object p2, p0, Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/ui/ShapeProps;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/graphics/Path;

    iget-object v1, p0, Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/ui/ShapeProps;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-static {v0, v1, p1}, Lexpo/modules/ui/ShapeViewKt;->$r8$lambda$yWwAppSr1ahNvYXgcTvJ19GcoZo(Landroidx/compose/ui/graphics/Path;Lexpo/modules/ui/ShapeProps;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
